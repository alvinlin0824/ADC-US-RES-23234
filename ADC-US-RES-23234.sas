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
keep Subject IVID01--IVVAL01;
run;

/*Sort IV1 and IV2*/
proc sort data = iv1;
by Subject;
run;

proc sort data = iv2;
by Subject IVID01;
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
keep Subject KRSEQ02--KRDTC03;
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
if KRSEQ02 = 3020930 then KRSEQ02 = 20930;
rename KRDTC01 = IVDTC01 KRSEQ02 = IVID01;
run;

/*Sort KGR12*/
proc sort data = kgr12;
by Subject IVDTC01 IVID01;
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
by Subject IVDTC01 IVID01;
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
run;

/*Get First Ketone Date and Time*/
data first_ketone;
set kgrivmhcad;
by subject;
if first.subject;
keep subject dtm;
rename dtm = first_test_dtm;
run;

/*Left Join first_keton with kgrivmhcad*/
data ketone;
merge kgrivmhcad first_ketone;
by subject;
time_diff = (dtm - first_test_dtm)/3600;
run;

/*/*Upload Data*/*/
/*filename dir pipe "dir /b/l/s  ""C:\UDP\OutputFiles\Output_2023-09-06-15-21\outputs\*.csv""";*/
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
run;

/*stack*/
libname out "\\oneabbott.com\dept\ADC\Technical_OPS\Clinical_Affairs\Clinical Study Files\Apollo\ADC-US-RES-23234_IDE Pump Suspension Study\Statistics\Programs\Datasets\AL";
/*data auu;*/
/*	set events_start anaplus;*/
/*run;*/
/*/*Remove Duplicated uploads*/*/
/*proc sort data = auu NODUP out = out.AUU; */
/*by subject condition_id date time;*/
/*run;*/

/*data out.auu;*/
/*set auu;*/
run;

data auu;
set out.auu;
run;

/*Profile Plot Data*/
data auu_906;
format dtm datetime16.;
set auu;
dtm = dhms(date,0,0,time);
ana_100 = ANA/100;
where type = "906" and year(date) = 2023;
drop date time;
run;

/*uniqle sensor*/
proc sort data = auu_906 NODUPKEY out = sensor(keep = subject condition_id);
by subject condition_id;
run; 

/*left join to ketone reference*/
proc sql;
create table reference as
select * from kgrivmhcad as x left join sensor as y
on x.subject = y.subject;
quit;

data profile_data;
set auu_906 reference;
if ^find(IVVAL01,"Invalid","i");
run;

/*sort dtm*/
proc sort data = profile_data;
by subject condition_id dtm;
run;

options papersize=a3 orientation=portrait;
ods rtf file="C:\Project\ADC-US-RES-23234\ADC-US-RES-23234-Report-%trim(%sysfunc(today(),yymmddn8.)).rtf" startpage=no;

/*Summary Statistics on Ketone Result*/
Proc means data = ketone maxdec=2 nonobs;
title;
var KRSEQ01;
class Subject;
where IVVAL01 = "Valid";
run;

goptions device=png target=png rotate=landscape hpos=90 vpos=40 gwait=0 aspect=0.5
ftext='arial' htext=9pt hby=16pt gsfname=exfile gsfmode=replace xmax=16in hsize=10in ymax=11in vsize=6in;

ods graphics on / reset attrpriority=color width=8in height=5in;
/*Reference Plot*/
proc sgplot data = ketone noautolegend cycleattrs;
where dtm is not missing;
title1 "Ketone Reference";
styleattrs datacontrastcolors = (magenta green blue orange);
	series x = time_diff y = krseq01 / group = subject groupdisplay = overlay markers markerattrs = (size = 3 symbol = dot) name = "REAL";
	yaxis label = "Ketone Test Result (mmol/L)" values=(0 to 5 by 0.5);
	xaxis label = "Time(Hrs)" INTERVAL = HOUR VALUESROTATE=DIAGONAL2;
	keylegend / title = "Subject ID";
run;


/*Profile Plot*/
/*proc sgplot data=profile_data noautolegend cycleattrs;*/
/*by Subject;*/
/*where Subject = "90008";*/
/*/*title1 "Subject #byval(subject) - All Sensors";*/*/
/*styleattrs datacontrastcolors=(magenta green blue orange);*/
/*	scatter x = dtm y = krseq01 / markerattrs = (symbol = StarFilled color = black size=5) name= "Ketone";*/
/*	series x = dtm y = ana_100 / group=condition_id groupdisplay=overlay markers markerattrs=(size=3 symbol=dot) name="REAL";*/
/*	yaxis label="Ketone Test Result (mmol/L)" values=(0 to 150 by 50);*/
/*	xaxis label="Date" INTERVAL=HOUR VALUESROTATE=DIAGONAL2;*/
/*	keylegend / title="Condition ID" ;*/
/*run;*/

ODS RTF CLOSE;