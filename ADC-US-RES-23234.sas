/*EDC \\wf00168p.oneabbott.com\data1\CDM\ADC-US-RES-23234\OpenClinica\Current*/

/*UUU M:\ADC-US-RES-23234\UploadData\UUU\UUU_DataFiles*/

/*Study Protocol \\oneabbott.com\dept\ADC\Technical_OPS\Clinical_Affairs\Clinical Study Files\Apollo\ADC-US-RES-23234_IDE Pump Suspension Study\Protocol*/

/*CRF \\oneabbott.com\dept\ADC\Technical_OPS\Clinical_Affairs\Clinical Study Files\Apollo\ADC-US-RES-23234_IDE Pump Suspension Study\Case Report Forms\Version B\Approved\pdf*/

/*DMP \\oneabbott.com\dept\ADC\Technical_OPS\Clinical_Affairs\Clinical Study Files\Apollo\ADC-US-RES-23234_IDE Pump Suspension Study\CDM\Study_Binder\Data_Management_Plan\Version_1.0\Final*/

libname edc "M:\ADC-US-RES-23234\OpenClinica\Current";

/*IV SAMPLE COLLECTION*/
data iv1;
set edc.iv1(where = (IVYN01 ^= "Check Here if no data recorded"));
keep Subject ivdtc01;
run;

data iv2;
set edc.iv2 (where = (^missing(IVID01)));
IVID01_C = put(IVID01, 5.);
keep Subject IVID01_C IVTM01 IVVAL01;
run;

/*Sort IV1 and IV2*/
proc sort data = iv1;
by Subject;
run;

proc sort data = iv2;
by Subject IVID01_C;
run;

/*Left Join iv1 and iv2*/
data iv12;
merge iv1 iv2;
by Subject;
run;

/*Ketone Glucose Results*/
data kgr1;
set edc.kgr1;
keep Subject KRDTC01;
run;

data kgr2;
set edc.kgr2;
KRSEQ02_C = put(KRSEQ02,$5.-L);
keep Subject KRSEQ01--KRDTC03 KRSEQ02_C;
run;

/*Sort KGR1 and KGR2*/
proc sort data = kgr1;
by Subject;
run;

proc sort data = kgr2;
by Subject;
run;

/*KGR2 left join KGR1*/
data kgr12;
merge kgr2 kgr1;
by Subject;
/*Manually Change Sample ID*/
if Subject = 1330001 and length(KRSEQ02_C) = 1 then KRSEQ02_C = cats("1010",KRSEQ02_C);
if Subject = 1330001 and length(KRSEQ02_C) = 2 then KRSEQ02_C = cats("101",KRSEQ02_C);
if Subject = 1330002 and length(KRSEQ02_C) = 1 then KRSEQ02_C = cats("1020",KRSEQ02_C);
if Subject = 1330002 and length(KRSEQ02_C) = 2 then KRSEQ02_C = cats("102",KRSEQ02_C);
if Subject = 1330004 and KRSEQ02_C = "10730" then KRSEQ02_C = "10430";
rename KRDTC01 = IVDTC01 KRSEQ02_C = IVID01_C;
run;

/*Sort KGR12*/
proc sort data = kgr12;
by Subject IVDTC01 IVID01_C;
run;

/*Clinic Visit 3*/
data cad3;
set edc.cad3(where = (DSYN01 ^= "Check Here if no data recorded"));
Visit = "Visit 3";
keep Subject dsdtc01 Visit;
run;

/*Sort CAD3*/
proc sort data = cad3;
by Subject dsdtc01;
run;

/*Diabetes History*/
data mh1;
set edc.mh1(where = (MHYN01 ^= "Check Here if no data recorded"));
if MHORES01 = "Type 1" or "Type 2" then Diabetes = "Yes";
keep Subject MHORES01 Diabetes;
run;

/*Sort MH1*/
proc sort data = mh1;
by Subject;
run;

/*KGR12 left join IV12*/
data kgriv12;
format dtm datetime14.;
merge kgr12 iv12;
by Subject IVDTC01 IVID01_C;
dtm = dhms(IVDTC01,0,0,input(KRDTC02,time5.));
run;

/*KGR12 left join mh1 and cad3*/
data kgrivmhcad;
merge kgriv12 mh1 cad3;
by Subject;
subjid = strip(put(Subject,8.));
drop Subject;
rename subjid = subject;
run;

proc sort data = kgrivmhcad;
by subject dtm;
where ^missing(dtm) and IVVAL01 = "Valid";
run;

/*Get First Ketone Date and Time*/
data first_ketone;
set kgrivmhcad;
by subject;
if first.subject;
keep subject dtm;
rename dtm = first_test_dtm;
run;

/*Get Peak Ketone Date and Time*/
proc sort data = kgrivmhcad out = kgrivmhcad1;
by subject descending KRSEQ01;
run;

data peak_ketone;
set kgrivmhcad1;
by subject;
if first.subject;
keep subject dtm KRSEQ01;
rename dtm = peak_test_dtm KRSEQ01 = Peak;
run;

/*Get Date and Time once Ketone <1 mmol*/
data last_ketone;
merge kgrivmhcad peak_ketone;
by subject;
if KRSEQ01 < 1 and dtm > peak_test_dtm and Peak >= 1;
run;

proc sort data = last_ketone;
by subject dtm;
run;

data last_ketone1;
set last_ketone;
by subject;
if first.subject;
keep subject dtm KRSEQ01;
rename dtm = last_test_dtm KRSEQ01 = first_below;
run;

/*Left Join first_keton with kgrivmhcad*/
data ketone;
merge kgrivmhcad first_ketone last_ketone1 peak_ketone;
by subject;
time_diff = (dtm - first_test_dtm)/3600;
time_diif1 = (dtm - peak_test_dtm)/3600;
duration_to_peak = (peak_test_dtm - first_test_dtm)/3600;
duration_to_last = (last_test_dtm - peak_test_dtm)/3600;
run;

/*Lag by Subject*/
data ketone_lag;
set ketone;
by subject;
KRSEQ01_lag = lag(KRSEQ01);
if first.subject then KRSEQ01_lag = .;
KRSEQ01_diff = KRSEQ01 - KRSEQ01_lag;
run;

/*Filter the peak ketone results*/
proc sort data = ketone out = ketone1;
by subject descending KRSEQ01;
run;

data analysis_ketone;
set ketone1;
by subject;
if first.subject;
run;

/*Upload Data*/
/*filename dir pipe "dir /b/l/s  ""C:\UDP\OutputFiles\Output_2023-11-02-13-54\outputs\*.csv""";*/
/**/
/*data list;*/
/*	infile dir truncover;*/
/*	input path $256.;*/
/*/*	Extract Subject ID*/*/
/*/*    009*/*/
/*    if find(path,"Mobi00","i") then subject = substr(path,find(path,"Mobi","i")+6,5);*/
/*/*    133*/*/
/*    if find(path,"Mobi133","i") then subject = substr(path,find(path,"Mobi","i")+4,7);*/
/*/*	Extract Condition ID*/*/
/*	if find(path,"Mobi","i") then condition_id = upcase(substr(path,find(path,"Mobi","i")+18,3));*/
/*run;*/
/**/
/*data events_list anaplus_list;*/
/*	set list;*/
/*	if find(path,"events.csv","i") then output events_list;*/
/*    if find(path,"anaPlus.csv","i")  then output anaplus_list;*/
/*run;*/
/**/
/*/*Loop events.csv Data*/*/
/*data events;*/
/*	set events_list;*/
/*	infile dummy filevar = path length = reclen end = done missover dlm='2C'x dsd firstobs=4;*/
/*	do while(not done);*/
/*		input uid: $char256. date: yymmdd10. time:time8. type: $char56. col_4: $char3. col_5: $char11. col_6: $char4. col_7: best8. col_8: $char9. */
/* snr: $char11.;*/
/*        format date date9. time time8.;*/
/*		drop uid col_4-col_8;*/
/*        output;*/
/*	end;*/
/*run;*/
/**/
/*/*Multiple Sensor Start*/*/
/*proc sort data = events;*/
/*by subject condition_id date time;*/
/*run;*/
/*data events_start;*/
/*	set events (where = (type ="SENSOR_STARTED (58)"));*/
/*	by subject condition_id;*/
/*    if last.condition_id;*/
/*run;*/
/**/
/*/*Loop anaplus.csv Data*/*/
/*data anaplus;*/
/*	set anaplus_list;*/
/*	infile dummy filevar = path length = reclen end = done missover dlm='2C'x dsd firstobs=4;*/
/*	do while(not done);*/
/*		input uid: $char16. date: yymmdd10. time: time8. type: $char56. ANA: best8. st: best8. tr: best1. nonact: best1.;*/
/*        format date date9. time time8.;*/
/*		drop uid st--nonact;*/
/*        output;*/
/*	end;*/
/*run;*/
/**/
/*/*Left join to get sensor serial number*/*/
/*proc sort data = anaplus;*/
/*by subject condition_id;*/
/*run;*/
/**/
/*data auu;*/
/*format dtm datetime16.;*/
/*merge anaplus events_start;*/
/*by subject condition_id;*/
/*dtm = dhms(date,0,0,time);*/
/*drop date time;*/
/*run;

/*stack*/
libname out "\\oneabbott.com\dept\ADC\Technical_OPS\Clinical_Affairs\Clinical Study Files\Apollo\ADC-US-RES-23234_IDE Pump Suspension Study\Statistics\Programs\Datasets\AL";

/*Remove Duplicated uploads*/
/*proc sort data = auu NODUP out = out.AUU; */
/*by subject condition_id dtm;*/
/*run;*/

/*options papersize=a3 orientation=portrait;*/
/*ods rtf file="C:\Project\ADC-US-RES-23234\ADC-US-RES-23234-Report-%trim(%sysfunc(today(),yymmddn8.)).rtf" startpage=no;*/

/*Summary Statistics on Ketone Result*/
Proc means data = ketone maxdec=2 nonobs;
title;
var KRSEQ01;
class Subject;
run;

proc print data = analysis_ketone(rename = (subject = Subject first_test_dtm = 'Start Time'n peak_test_dtm = 'Peak Time'n Peak = 'Max Ketone Reference(mmol/L)'n last_test_dtm = 'Time once < 1 mmol/L'n duration_to_peak = 'Time to Peak(Hours)'n duration_to_last = 'Time to < 1 mmol/L(Hours)'n)) noobs;
format 'Time to Peak(Hours)'n 'Time to < 1 mmol/L(Hours)'n 8.2;
where ^missing('Max Ketone Reference(mmol/L)'n);
var Subject 'Start Time'n 'Peak Time'n 'Max Ketone Reference(mmol/L)'n 'Time once < 1 mmol/L'n 'Time to Peak(Hours)'n 'Time to < 1 mmol/L(Hours)'n;
run;

proc tabulate data = analysis_ketone;
where ^missing(first_below);
class Visit;
var KRSEQ01 duration_to_peak duration_to_last;
table  Visit, KRSEQ01 = "Maximum Ketone Level Achieved"*(n mean stddev) duration_to_peak = "Time(Hours) To Peak Ketone Level From First Test"*(n mean stddev)
duration_to_last = "Time(Hours) From Peak Ketone Level to Ketone Level < 1 mmol/L"*(n mean stddev);
run;

goptions device=png target=png rotate=landscape hpos=90 vpos=40 gwait=0 aspect=0.5
ftext='arial' htext=9pt hby=16pt gsfname=exfile gsfmode=replace xmax=16in hsize=10in ymax=11in vsize=6in;

ods graphics on / reset attrpriority=color width=8in height=5in;
/*Reference Plot*/
proc sgplot data = ketone noautolegend cycleattrs;
where dtm is not missing;
title1 "Ketone Reference";
styleattrs datacontrastcolors = (magenta green blue orange lilac lime marron olive steel violet yellow);
	series x = time_diff y = krseq01 / group = subject groupdisplay = overlay markers markerattrs = (size = 3 symbol = dot) name = "REAL";
	yaxis label = "Ketone Test Result (mmol/L)" values=(0 to 5 by 0.5);
	xaxis label = "Time(Hours)" values=(0 to 8 by 1) INTERVAL = HOUR VALUESROTATE=DIAGONAL2;
	keylegend / title = "Subject ID";
run;

/*Delta*/
proc sgplot data = ketone_lag noautolegend cycleattrs;
where ^missing(dtm);
title1 "Ketone Vary Over Time";
styleattrs datacontrastcolors = (magenta green blue orange lilac lime marron olive steel violet yellow);
	series x = time_diff y = krseq01_diff / group = subject groupdisplay = overlay markers markerattrs = (size = 3 symbol = dot) name = "REAL";
	yaxis label = "Ketone Test Result (mmol/L)" values=(-1 to 1 by 0.1);
	xaxis label = "Time(Hours)" values=(0 to 8 by 1) INTERVAL = HOUR VALUESROTATE=DIAGONAL2;
	keylegend / title = "Subject ID";
run;


/*Time from baseline to peak*/
proc sgplot data = ketone noautolegend cycleattrs;
where ^missing(dtm) and dtm <= peak_test_dtm;
title1 "Time From Baseline To Peak";
styleattrs datacontrastcolors = (magenta green blue orange lilac lime marron olive steel violet yellow);
	series x = time_diff y = krseq01 / group = subject groupdisplay = overlay markers markerattrs = (size = 3 symbol = dot) name = "REAL";
	yaxis label = "Ketone Test Result (mmol/L)" values=(0 to 5 by 0.5);
	xaxis label = "Time(Hours)" values=(0 to 8 by 1) INTERVAL = HOUR VALUESROTATE=DIAGONAL2;
	keylegend / title = "Subject ID";
run;

/*Time from peak to 1 mmol*/
proc sgplot data = ketone noautolegend cycleattrs;
where ^missing(dtm) and ^missing(duration_to_last);
title1 "Time From Peak To < 1 mmol/L";
styleattrs datacontrastcolors = (magenta green blue orange lilac lime marron olive steel violet yellow);
	series x = time_diif1 y = krseq01 / group = subject groupdisplay = overlay markers markerattrs = (size = 3 symbol = dot) name = "REAL";
	yaxis label = "Ketone Test Result (mmol/L)" values=(0 to 5 by 0.5);
	xaxis label = "Time(Hours)" values=(0 to 8 by 1) INTERVAL = HOUR VALUESROTATE=DIAGONAL2;
	keylegend / title = "Subject ID";
run;
/*ODS RTF CLOSE;*/
/*Profile Plot*/

/*Profile Plot Data*/
/*data auu_906;*/
/*format dtm datetime16.;*/
/*set out.auu;*/
/*dtm = dhms(date,0,0,time);*/
/*ana_100 = ANA/100;*/
/*where type = "906" and year(date) = 2023;*/
/*drop date time;*/
/*run;*/

/*uniqle sensor*/
/*proc sort data = auu_906 NODUPKEY out = sensor(keep = subject condition_id);*/
/*by subject condition_id;*/
/*run; */

/*left join to ketone reference*/
/*proc sql;*/
/*create table reference as*/
/*select * from kgrivmhcad as x left join sensor as y*/
/*on x.subject = y.subject*/
/*order by subject, condition_id, dtm;*/
/*quit;*/

/*data profile_data;*/
/*set auu_906 reference;*/
/*if ^find(IVVAL01,"Invalid","i");*/
/*run;*/

/*sort dtm*/
/*proc sort data = profile_data;*/
/*by subject condition_id dtm;*/
/*run;*/
/**/
/*proc sgplot data=profile_data noautolegend cycleattrs;*/
/*by Subject;*/
/*/*where Subject = "90004" and dtm between '21aug23:05:30:00'dt and '21aug23:15:20:00'dt;*/*/
/*title1 "Subject #byval(subject) - All Sensors";*/
/*styleattrs datacontrastcolors=(magenta green blue orange);*/
/*	series x = dtm y = ana_100 / group=condition_id groupdisplay=overlay markers markerattrs=(size=3 symbol=dot) name="REAL";*/
/*    scatter x = dtm y = krseq01 / markerattrs = (symbol = StarFilled color = black size=5) name= "Ketone";*/
/*	scatter x = dtm y = krseq03 /y2axis markerattrs = (symbol = trianglefilled color = lilac size=5) name= "Glucose";*/
/*    yaxis label="Ketone Test Result (mmol/L)";*/
/*	y2axis label="Glucose Test Result(mg/dL)" values=(0 to 500 by 100);*/
/*	xaxis label="Date";*/
/*	keylegend / title="Condition ID" ;*/
/*run;*/
/**/



/*Paired Data Point*/
/*Filter Type = 905 for sensor data*/
/*data auu_905;*/
/*set out.auu;*/
/*ana_100 = ANA/100;*/
/*where type = "905" and year(date) = 2023;*/
/*drop ANA;*/
/*run;*/

/*Wrangle Reference ketone*/
/*data ketone_reference;*/
/*set ketone;*/
/*where IVVAL01 = "Valid" and ^missing(dtm);*/
/*keep subject dtm IVID01 KRSEQ01;*/
/*rename dtm = dtm_ref;*/
/*run;*/

/*Pair Reference Ketone and Ketone Sensor Data*/
/*proc sql;*/
/* create table paired_ketone as*/
/* select a.*, b.**/
/* from auu_905 a, ketone_reference b*/
/* where a.subject=b.subject and a.dtm-300<=b.dtm_ref<=a.dtm+300*/
/* group by b.subject, dtm_ref*/
/* order by b.subject, dtm_ref;*/
/*quit;*/
/**/
/*data paired_ketone1;*/
/* set paired_ketone;*/
/* abstimediff=abs(dtm-dtm_ref);*/
/*run;*/

/*proc sort data=paired_ketone1; 
/*by subject condition_id dtm_ref abstimediff KRSEQ01 descending dtm; */
/*run;*/*/
/**/
/*data paired_ketone2;*/
/* set paired_ketone1;*/
/* by subject condition_id dtm_ref abstimediff KRSEQ01 descending dtm;*/
/* if first.dtm_ref; *Choose pair that is closest in time when BG paired with multiple GM;*/
/*run;*/
/**/
/*proc sort data=paired_ketone2; 
/*by subject condition_id dtm abstimediff dtm_ref; */
/*run;*/*/
/**/
/*data Ap;*/
/* set paired_ketone2;*/
/* by subject condition_id dtm abstimediff dtm_ref;*/
/* if first.dtm; *Choose pair that is closest in time when GM paired with multiple BG;*/
/* drop abstimediff;*/
/*run;*/

/*proc sgplot data = Ap noautolegend cycleattrs;*/
/*title1 "Ketone Sensor vs Reference";*/
/*styleattrs datacontrastcolors = (magenta green blue orange lilac lime marron olive steel violet yellow);*/
/*	scatter x = KRSEQ01 y = ana_100 / markerattrs = (symbol = StarFilled color = black size=5) name= "Ketone";;*/
/*	yaxis label = "Sensor Ketone Value(mmol/L)" values=(0 to 11 by 1);*/
/*	xaxis label = "Reference (mmol/L)" values=(0 to 8 by 1) VALUESROTATE=DIAGONAL2;*/
/*run;*/