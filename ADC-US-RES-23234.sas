/*EDC \\wf00168p.oneabbott.com\data1\CDM\ADC-US-RES-23234\OpenClinica\Current*/

/*UUU M:\ADC-US-RES-23234\UploadData\UUU\UUU_DataFiles*/

/*Study Protocol \\oneabbott.com\dept\ADC\Technical_OPS\Clinical_Affairs\Clinical Study Files\Apollo\ADC-US-RES-23234_IDE Pump Suspension Study\Protocol*/

/*CRF \\oneabbott.com\dept\ADC\Technical_OPS\Clinical_Affairs\Clinical Study Files\Apollo\ADC-US-RES-23234_IDE Pump Suspension Study\Case Report Forms\Version B\Approved\pdf*/

/*DMP \\oneabbott.com\dept\ADC\Technical_OPS\Clinical_Affairs\Clinical Study Files\Apollo\ADC-US-RES-23234_IDE Pump Suspension Study\CDM\Study_Binder\Data_Management_Plan\Version_1.0\Final*/

libname edc "M:\ADC-US-RES-23234\OpenClinica\Current";
libname out "\\oneabbott.com\dept\ADC\Technical_OPS\Clinical_Affairs\Clinical Study Files\Apollo\ADC-US-RES-23234_IDE Pump Suspension Study\Statistics\Programs\Datasets\AL";
/*libname mydir "C:\Project\ADC-US-RES-23234";*/

/*IV SAMPLE COLLECTION*/
data iv1;
set edc.iv1(where = (IVYN01 ^= "Check Here if no data recorded"));
keep Subject ivdtc01;
run;

data iv2;
set edc.iv2 (where = (^missing(IVID01)));
keep Subject IVID01 IVTM01 IVVAL01;
run;

/*Sort IV1 and IV2*/
proc sort data = iv1;
by Subject;
run;

proc sort data = iv2;
by Subject IVID01;
run;

/*Full Join iv1 and iv2*/
data iv12;
merge iv1 iv2;
by Subject;
run;

/*Import Randox.csv*/
data randox;
infile "\\oneabbott.com\dept\ADC\Technical_OPS\Clinical_Affairs\Clinical Study Files\Apollo\ADC-US-RES-23234_IDE Pump Suspension Study\Statistics\Programs\Datasets\AL\randox.csv"
 delimiter = ','
 missover
 firstobs = 2
 DSD;
input ID uL8 uL2;
run;

/*Calculate randox average for 2uL*/
proc sql;
create table randox_mean as 
select ID, mean(uL2)*4 as KRSEQ01
from randox 
group by ID;
quit;

/*Left join to get IV draw time*/
Proc sql;
create table randox_time as
select * from IV12 as x left join randox_mean as y
on x.IVID01 = y.ID;
quit;

data randox_time;
set randox_time (drop=ID);
ref_type = "Randox";
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

/*KGR2 full join KGR1*/
data kgr12;
merge kgr2 kgr1;
by Subject;
rename KRDTC01 = IVDTC01 KRSEQ02 = IVID01;
run;

/*Sort KGR12*/
proc sort data = kgr12;
by Subject IVDTC01 IVID01;
run;

/*KGR12 left join IV12*/
data kgriv12;
merge kgr12 iv12;
by Subject IVDTC01 IVID01;
ref_type = "Venous strip";
run;

/*Bind rows with randox*/
data kgriv;
format dtm datetime14.;
set kgriv12 randox_time;
dtm = dhms(IVDTC01,0,0,input(IVTM01,time5.));
subject_C = strip(put(Subject,7.));
rename subject_C = subject;
drop subject;
run;

/*Valid sample only*/
proc sort data = kgriv;
by ref_type subject dtm;
where ^missing(dtm) and IVVAL01 = "Valid" and ^missing(KRSEQ01);
run;

/*Get First Ketone Date and Time*/
data first_ketone;
set kgriv;
by ref_type subject ;
if first.subject;
keep subject dtm ref_type;
rename dtm = first_test_dtm;
run;

/*Get Peak Ketone Date and Time*/
proc sort data = kgriv out = kgriv1;
by ref_type subject descending KRSEQ01;
run;

data peak_ketone;
set kgriv1;
by ref_type subject;
if first.subject;
keep subject dtm KRSEQ01 ref_type;
rename dtm = peak_test_dtm KRSEQ01 = Peak;
run;

/*Get Date and Time once Ketone <1 mmol*/
data last_ketone;
merge kgriv peak_ketone;
by ref_type subject;
if KRSEQ01 < 1 and dtm > peak_test_dtm and Peak >= 1;
run;

proc sort data = last_ketone;
by ref_type subject dtm;
run;

data last_ketone1;
set last_ketone;
by ref_type subject;
if first.subject;
keep subject dtm KRSEQ01 ref_type;
rename dtm = time_below1_dtm KRSEQ01 = first_below;
run;

/*Left Join first_keton with kgriv*/
data ketone;
merge kgriv first_ketone last_ketone1 peak_ketone;
by ref_type subject;
time_diff = (dtm - first_test_dtm)/3600;
time_diff1 = (dtm - peak_test_dtm)/3600;
duration_to_peak = (peak_test_dtm - first_test_dtm)/3600;
duration_to_below1 = (time_below1_dtm - peak_test_dtm)/3600;
run;

/*Lag by Subject*/
data ketone_lag;
set ketone;
by ref_type subject;
KRSEQ01_lag = lag(KRSEQ01);
if first.subject then KRSEQ01_lag = .;
KRSEQ01_diff = KRSEQ01 - KRSEQ01_lag;
run;

/*Filter the peak ketone results*/
proc sort data = ketone out = ketone1;
by ref_type subject descending KRSEQ01;
run;

data analysis_ketone;
set ketone1;
by ref_type subject;
if first.subject;
run;

/*Upload Data*/
/*filename dir pipe "dir /b/l/s  ""C:\UDP\OutputFiles\Output_2023-12-20-08-11\outputs\*.csv""";*/
/*/**/*/
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

/*data events_list anaplus_list;*/
/*	set list;*/
/*	if find(path,"events.csv","i") then output events_list;*/
/*    if find(path,"anaPlus.csv","i")  then output anaplus_list;*/
/*run;*/

/*Loop events.csv Data*/
/*data events;*/
/*	set events_list;*/
/*	infile dummy filevar = path length = reclen end = done missover dlm='2C'x dsd firstobs=4;*/
/*	do while(not done);*/
/*	    filename = substr(path,find(path,"Mobi","i"),35);*/
/*		input uid: $char256. date: yymmdd10. time:time8. type: $char56. col_4: $char3. col_5: $char11. col_6: $char4. col_7: best8. col_8: $char9. */
/* snr: $char11.;*/
/*        format date date9. time time8.;*/
/*		drop uid col_4-col_8;*/
/*        output;*/
/*	end;*/
/*run;*/

/*Multiple Sensor Start*/
/*proc sort data = events;*/
/*by filename subject condition_id date time;*/
/*run;*/
/*data events_start;*/
/*	set events (where = (type ="SENSOR_STARTED (58)"));*/
/*	by filename subject condition_id;*/
/*    if last.condition_id;*/
/*run;*/

/*Loop anaplus.csv Data*/
/*data anaplus;*/
/*	set anaplus_list;*/
/*	infile dummy filevar = path length = reclen end = done missover dlm='2C'x dsd firstobs=4;*/
/*	do while(not done);*/
/*	    filename = substr(path,find(path,"Mobi","i"),35);*/
/*		input uid: $char16. date: yymmdd10. time: time8. type: $char56. ANA: best8. st: best8. tr: best1. nonact: best1.;*/
/*        format date date9. time time8.;*/
/*		drop uid st--nonact;*/
/*        output;*/
/*	end;*/
/*run;*/

/*Left join to get sensor serial number*/
/*proc sql;*/
/*	create table auu_snr as*/
/*	select * from anaplus as x left join events_start as y*/
/*	on x.filename = y.filename;*/
/*quit;*/

/*stack*/
/*data auu;*/
/*set events_start auu_snr;*/
/*format dtm datetime16.;*/
/*dtm = dhms(date,0,0,time);*/
/*/*Manually adjust date time*/*/
/*if snr = "089CR2FAX" then dtm = dtm + 2*60*60;*/
/*if snr = "089CR2ELD" then dtm = dtm - 1*60*60;*/
/*if snr = "089CR2CRA" and Type = "SENSOR_STARTED (58)" then dtm = dtm - 12*60*60;*/
/*if snr = "089CR2EAN" then delete;*/
/*drop date time filename;*/
/*run;*/

/*Remove Duplicated uploads*/
/*proc sort data = auu NODUP out = out.AUU; */
/*by subject condition_id dtm;*/
/*run;

/*Handle Date Time is earlier than sensor start time*/
data auu;
set out.auu;
run;

data events(rename = (dtm = start_time) keep = snr dtm);
set auu;
where Type = "SENSOR_STARTED (58)";
run;

/*Left join to get the start_time*/
proc sql;
create table auu_start_time as 
select * from auu as x left join events as y
on x.snr = y.snr
where x.dtm >= y.start_time
order by x.subject, x.condition_id, x.dtm;
quit;

/*Paired Data Point*/
/*Filter Type = 906 for sensor data*/
data auu_906;
format dtm_sec datetime16.;
set auu_start_time;
ana_100 = (ANA/100)*1.25;
/*Get Duration Day*/
nday = floor((dtm-start_time)/86400) + 1;
dtm_sec = dtm;
dtm = round(dtm,'0:01:00'T);
if type = "906";
drop ANA start_time;
run;

/*Wrangle Reference ketone*/
data ketone_reference;
set ketone;
keep subject dtm IVID01 KRSEQ01 ref_type;
rename dtm = dtm_ref;
run;

/*Pair Reference Ketone and Ketone Sensor Data*/
proc sql;
 create table paired_ketone as
 select a.*, b.*
 from auu_906 a, ketone_reference b
 where a.subject = b.Subject and a.dtm-300 <= b.dtm_ref <= a.dtm+300
 group by b.Subject, dtm_ref,b.ref_type
 order by b.Subject, dtm_ref;
quit;

data paired_ketone1;
 set paired_ketone;
 abstimediff = abs(dtm - dtm_ref);
run;

proc sort data = paired_ketone1; 
by ref_type subject condition_id dtm_ref abstimediff KRSEQ01 descending dtm_sec; 
run;

data paired_ketone2;
 set paired_ketone1;
 by ref_type subject condition_id dtm_ref abstimediff KRSEQ01 descending dtm_sec;
 if first.dtm_ref; *Choose pair that is closest in time when Ketone paired with multiple GM;
run;

proc sort data = paired_ketone2; 
by ref_type subject condition_id dtm_sec abstimediff dtm_ref; 
run;

data Ap;
 set paired_ketone2;
 by ref_type subject condition_id dtm_sec abstimediff dtm_ref;
 if first.dtm_sec; *Choose pair that is closest in time when GM paired with multiple Ketone;
 drop abstimediff dtm;
run;

/*Rate Deviation*/
proc sort data = Ap;
by ref_type subject snr;
run;

data Ap_rate;
set Ap (where = (ana_100 >= 0.6 and ana_100 <= 3));
length level level1 level2 $25.;
format lag_dtm datetime16. lag_dtm_ref datetime14;
/*Consider individual sensor*/
by ref_type subject snr;
lag_dtm = lag(dtm_sec); lag_dtm_ref = lag(dtm_ref);
lag_ana_100 = lag(ana_100); lag_KRSEQ01 = lag(KRSEQ01);
if first.snr then do;
lag_dtm = .; lag_dtm_ref = .; lag_ana_100 = .;
lag_dtm_ref = .;
end;
/*Calculate the rate*/
if first.snr then ketone_ref_rate = .;
else ketone_ref_rate = (KRSEQ01 - lag_KRSEQ01) / ((dtm_ref - lag_dtm_ref)/3600);
if first.snr then ketone_sensor_rate = .;
else ketone_sensor_rate = (ana_100 - lag_ana_100) / ((dtm_sec - lag_dtm)/3600);
/*Calculate rate deviation*/
rd = round(ketone_ref_rate-ketone_sensor_rate,0.1);
ard=abs(rd);
/*Assign category for rd*/
 if rd lt -3 and ^missing(rd) then level = '1: <-3';
 if rd ge -3 and rd lt -2 then level = '2: [-3, -2)';
 if rd ge -2 and rd lt -1 then level = '3: [-2, -1)';
 if rd ge -1 and rd lt 0 then level = '4: [-1, 0)';
 if rd ge 0 and rd le 1 then level = '5: [0, 1]';
 if rd gt 1 and rd le 2 then level = '6: (1, 2]';
 if rd gt 2 and rd le 3 then level = '7: (2, 3]';
 if rd gt 3 then level = '8: >3';
/*Assign category for ard*/
 if ard ge 0 and ard le 1 then level1 = '1: [0, 1]';
 if ard gt 1 and ard le 2 then level1 = '2: (1, 2]';
 if ard gt 2 and ard le 3 then level1 = '3: (2, 3]';
 if ard gt 3 then level1 = '4: >3';
/*Assign category for ketone_ref_rate*/
 if ketone_ref_rate lt -3 and ^missing(ketone_ref_rate) then level2 = '1: <-3';
 if ketone_ref_rate ge -3 and ketone_ref_rate lt -2 then level2 = '2: [-3, -2)';
 if ketone_ref_rate ge -2 and ketone_ref_rate lt -1 then level2 = '3: [-2, -1)';
 if ketone_ref_rate ge -1 and ketone_ref_rate lt 0 then level2 = '4: [-1, 0)';
 if ketone_ref_rate ge 0 and ketone_ref_rate le 1 then level2 = '5: [0, 1]';
 if ketone_ref_rate gt 1 and ketone_ref_rate le 2 then level2 = '6: (1, 2]';
 if ketone_ref_rate gt 2 and ketone_ref_rate le 3 then level2 = '7: (2, 3]';
 if ketone_ref_rate gt 3 then level2 = '8: >3';
/* Remove missing rd*/
 if missing(rd) then delete;
/*Drop useless columns*/
drop lag_dtm--lag_KRSEQ01;
run;
/*(with 1.25 adj)*/
options papersize=a3 orientation=portrait;
ods rtf file="C:\Project\ADC-US-RES-23234\ADC-US-RES-23234-Safety-Report(with 1.25 adj)-%trim(%sysfunc(today(),yymmddn8.)).rtf" startpage=no;

/*Summary Statistics on Ketone Result*/
Proc means data = ketone maxdec=2 nonobs;
title;
var KRSEQ01;
class Subject ref_type;
run;

proc print data = analysis_ketone(rename = (ref_type = "Ref Type"n subject = Subject first_test_dtm = 'Start Time'n peak_test_dtm = 'Peak Time'n Peak = 'Max Ketone Reference(mmol/L)'n time_below1_dtm = 'Time once < 1 mmol/L'n duration_to_peak = 'Time to Peak(Hours)'n duration_to_below1 = 'Time to < 1 mmol/L(Hours)'n)) noobs;
format 'Max Ketone Reference(mmol/L)'n 'Time to Peak(Hours)'n 'Time to < 1 mmol/L(Hours)'n 8.2;
where ^missing('Max Ketone Reference(mmol/L)'n);
var "Ref Type"n Subject 'Start Time'n 'Peak Time'n 'Max Ketone Reference(mmol/L)'n 'Time once < 1 mmol/L'n 'Time to Peak(Hours)'n 'Time to < 1 mmol/L(Hours)'n;
run;

proc tabulate data = analysis_ketone;
where ^missing(first_below);
class ref_type;
var KRSEQ01 duration_to_peak duration_to_below1;
table  ref_type = "Ref Type", KRSEQ01 = "Maximum Ketone Level Achieved"*(n mean stddev) duration_to_peak = "Time(Hours) To Peak Ketone Level From First Test"*(n mean stddev)
duration_to_below1 = "Time(Hours) From Peak Ketone Level to Ketone Level < 1 mmol/L"*(n mean stddev);
run;

proc tabulate data = analysis_ketone;
/*where ^missing(first_below);*/
class ref_type;
var KRSEQ01 duration_to_peak duration_to_below1;
table  ref_type = "Ref Type", KRSEQ01 = "Maximum Ketone Level Achieved"*(n mean stddev) duration_to_peak = "Time(Hours) To Peak Ketone Level From First Test"*(n mean stddev)
duration_to_below1 = "Time(Hours) From Peak Ketone Level to Ketone Level < 1 mmol/L"*(n mean stddev);
run;

goptions device=png target=png rotate=landscape hpos=90 vpos=40 gwait=0 aspect=0.5
ftext='arial' htext=9pt hby=16pt gsfname=exfile gsfmode=replace xmax=16in hsize=10in ymax=11in vsize=6in;

ods graphics on / reset attrpriority=color width=8in height=5in;
/*Reference Plot*/
proc sgpanel data = ketone;
where ^missing(dtm);
title1 "Ketone Reference";
panelby ref_type / spacing=5 novarname;
series x = time_diff y = krseq01 / group = subject groupdisplay = overlay markers markerattrs = (size = 3 symbol = dot);
colaxis label = "Time(Hours)"
	values=(0 to 8 by 1) INTERVAL = HOUR VALUESROTATE=DIAGONAL2;
rowaxis label = "Ketone Test Result (mmol/L)"
    values=(0 to 5 by 0.5);
keylegend / title = "Subject ID";
run;

/*proc sgplot data = ketone noautolegend cycleattrs;*/
/*where ^missing(dtm);*/
/*title1 "Ketone Reference";*/
/*styleattrs datacontrastcolors = (magenta green blue orange lilac lime marron olive steel violet yellow);*/
/*	series x = time_diff y = krseq01 / group = subject groupdisplay = overlay markers markerattrs = (size = 3 symbol = dot) name = "REAL";*/
/*	yaxis label = "Ketone Test Result (mmol/L)" values=(0 to 5 by 0.5);*/
/*	xaxis label = "Time(Hours)" values=(0 to 8 by 1) INTERVAL = HOUR VALUESROTATE=DIAGONAL2;*/
/*	keylegend / title = "Subject ID";*/
/*run;*/

/*Delta*/
proc sgpanel data = ketone_lag;
where ^missing(dtm);
title1 "Ketone Vary Over Time";
panelby ref_type / spacing=5 novarname;
series x = time_diff y = krseq01_diff / group = subject groupdisplay = overlay markers markerattrs = (size = 3 symbol = dot);
colaxis label = "Time(Hours)"
	values=(0 to 8 by 1) INTERVAL = HOUR VALUESROTATE=DIAGONAL2;
rowaxis label = "Ketone Test Result (mmol/L)"
    values=(-2 to 2 by 0.5);
keylegend / title = "Subject ID";
run;

/*proc sgplot data = ketone_lag noautolegend cycleattrs;*/
/*where ^missing(dtm);*/
/*title1 "Ketone Vary Over Time";*/
/*styleattrs datacontrastcolors = (magenta green blue orange lilac lime marron olive steel violet yellow);*/
/*	series x = time_diff y = krseq01_diff / group = subject groupdisplay = overlay markers markerattrs = (size = 3 symbol = dot) name = "REAL";*/
/*	yaxis label = "Ketone Test Result (mmol/L)" values=(-1 to 1 by 0.1);*/
/*	xaxis label = "Time(Hours)" values=(0 to 8 by 1) INTERVAL = HOUR VALUESROTATE=DIAGONAL2;*/
/*	keylegend / title = "Subject ID";*/
/*run;*/

/*Time from baseline to peak*/
proc sgpanel data = ketone;
where ^missing(dtm) and dtm <= peak_test_dtm;
title1 "Time From Baseline To Peak";
panelby ref_type / spacing=5 novarname;
series x = time_diff y = krseq01 / group = subject groupdisplay = overlay markers markerattrs = (size = 3 symbol = dot);
colaxis label = "Time(Hours)"
	values=(0 to 7 by 1) INTERVAL = HOUR VALUESROTATE=DIAGONAL2;
rowaxis label = "Ketone Test Result (mmol/L)"
    values=(0 to 5 by 0.5);
keylegend / title = "Subject ID";
run;

/*proc sgplot data = ketone noautolegend cycleattrs;*/
/*where ^missing(dtm) and dtm <= peak_test_dtm;*/
/*title1 "Time From Baseline To Peak";*/
/*styleattrs datacontrastcolors = (magenta green blue orange lilac lime marron olive steel violet yellow);*/
/*	series x = time_diff y = krseq01 / group = subject groupdisplay = overlay markers markerattrs = (size = 3 symbol = dot) name = "REAL";*/
/*	yaxis label = "Ketone Test Result (mmol/L)" values=(0 to 5 by 0.5);*/
/*	xaxis label = "Time(Hours)" values=(0 to 8 by 1) INTERVAL = HOUR VALUESROTATE=DIAGONAL2;*/
/*	keylegend / title = "Subject ID";*/
/*run;*/

/*Time from peak to 1 mmol*/
proc sgpanel data = ketone;
where ^missing(dtm) and ^missing(duration_to_below1);
title1 "Time From Peak To < 1 mmol/L";
panelby ref_type / spacing=5 novarname;
series x = time_diff1 y = krseq01 / group = subject groupdisplay = overlay markers markerattrs = (size = 3 symbol = dot);
colaxis label = "Time(Hours)"
	values=(0 to 3 by 1) INTERVAL = HOUR VALUESROTATE=DIAGONAL2;
rowaxis label = "Ketone Test Result (mmol/L)"
    values=(0 to 5 by 0.5);
keylegend / title = "Subject ID";
run;

/*proc sgplot data = ketone noautolegend cycleattrs;*/
/*where ^missing(dtm) and ^missing(duration_to_below1);*/
/*title1 "Time From Peak To < 1 mmol/L";*/
/*styleattrs datacontrastcolors = (magenta green blue orange lilac lime marron olive steel violet yellow);*/
/*	series x = time_diff1 y = krseq01 / group = subject groupdisplay = overlay markers markerattrs = (size = 3 symbol = dot) name = "REAL";*/
/*	yaxis label = "Ketone Test Result (mmol/L)" values=(0 to 4 by 0.5);*/
/*	xaxis label = "Time(Hours)" values=(0 to 3 by 1) INTERVAL = HOUR VALUESROTATE=DIAGONAL2;*/
/*	keylegend / title = "Subject ID";*/
/*run;*/

/*Ketone Reference Rate*/
proc tabulate data = Ap_rate format=8.1 style=[cellwidth=2.0cm just=c];
 title1 "Ketone Reference Rate";
 class ref_type level2;
 table ref_type = "Ref Type",level2 = 'Ketone Ref Rate (mmol/L/hour)', n pctn='%' / rts=25;
run;

/*Plot distribution of ketone_ref_rate*/
proc sgpanel data = Ap_rate;
title1 "Distribution of Ketone Ref Rate";
panelby ref_type / spacing=5 novarname;
histogram ketone_ref_rate / binwidth = 0.5;
colaxis label = "Ketone Ref Rate (mmol/L/hour)"
	values=(-10 to 10 by 1) INTERVAL = HOUR VALUESROTATE=DIAGONAL2;
run;

/*proc sgplot data = Ap_rate;*/
/*title "Distribution of Ketone Ref Rate";*/
/*histogram ketone_ref_rate / binwidth = 0.5;*/
/*xaxis label = 'Ketone Ref Rate (mmol/L/hour)' values = (-10 to 10 by 1);*/
/*run;*/

/*Rate Deviation*/
proc tabulate data = Ap_rate format=8.1 style=[cellwidth=2.0cm just=c];
 title1 "Rate Deviation";
 class ref_type level;
 table ref_type = "Ref Type", level = 'Rate Deviation (mmol/L/hour)', n pctn='%' / rts=25;
run;

/*Absoulte Rate Deviation*/
proc tabulate data = Ap_rate format=8.1 style=[cellwidth=2.0cm just=c];
 title1 " ";
 class ref_type level1;
 table ref_type = "Ref Type", level1 = 'Absoulte Rate Deviation (mmol/L/hour)', n pctn='%' / rts=25;
run;

/*Summary on Rate deviation and absolute rate deviation ketone_ref_rate*/
proc means data = Ap_rate maxdec=2 nonobs;
 title1 " "; 
 by ref_type;
 var rd ard ketone_ref_rate;
 output out=_null_ mean= std= min= max= n= / autoname;
run;

/*Plot distribution of rd*/
proc sgpanel data = Ap_rate;
title1 "Distribution of Rate Deviation";
panelby ref_type / spacing=5 novarname;
histogram rd / binwidth = 0.5;
colaxis label = "Rate Deviation (mmol/L/hour)"
	values=(-10 to 10 by 1) INTERVAL = HOUR VALUESROTATE=DIAGONAL2;
run;
/*proc sgplot data = Ap_rate;*/
/*title "Distribution of Rate Deviation";*/
/*histogram rd / binwidth = 0.5;*/
/*xaxis label = 'Rate Deviation (mmol/L/hour)' values = (-10 to 10 by 1);*/
/*run;*/
ODS RTF CLOSE;

data Ap_accuracy(where=(subject ^= "1330004"));
set Ap;
format Level Group concur_ref_group concur_upload_group $35.;
bias = ana_100 - KRSEQ01; 
abs_bias = abs(bias); 
pbias = 100*(bias)/KRSEQ01; 
abs_pbias = abs(pbias);
/*Categorize Bias Group*/
/*Reference < 1*/
if KRSEQ01 < 1 then do;
if round(abs_bias,0.1) >= 0 and round(abs_bias,0.1) <= 0.1 then Group = "Within +- 10%/ +- 0.1 mmol/L"; 
if round(abs_bias,0.1) > 0.1 and round(abs_bias,0.1) <= 0.2 then Group = "Within +- 20%/ +- 0.2 mmol/L"; 
if round(abs_bias,0.1) > 0.2 and round(abs_bias,0.1) <= 0.3 then Group = "Within +- 30%/ +- 0.3 mmol/L"; 
if round(abs_bias,0.1) > 0.3 and round(abs_bias,0.1) <= 0.4 then Group = "Within +- 40%/ +- 0.4 mmol/L"; 
if round(abs_bias,0.1) > 0.4 then Group = "Outside +- 40%/ +- 0.4 mmol/L";
/*Assign a Level based on reference*/
Level = "<1 mmol/L";
end;
/*Reference >= 1*/
if KRSEQ01 >= 1 then do;
if round(abs_pbias) >= 0 and round(abs_pbias) <= 10 then Group = "Within +- 10%/ +- 0.1 mmol/L"; 
if round(abs_pbias) > 10 and round(abs_pbias) <= 20 then Group = "Within +- 20%/ +- 0.2 mmol/L"; 
if round(abs_pbias) > 20 and round(abs_pbias) <= 30 then Group = "Within +- 30%/ +- 0.3 mmol/L"; 
if round(abs_pbias) > 30 and round(abs_pbias) <= 40 then Group = "Within +- 40%/ +- 0.4 mmol/L";
if round(abs_pbias) > 40 then Group = "Outside +- 40%/ +- 0.4 mmol/L";
/*Assign a Level based on reference*/
Level = ">=1 mmol/L";
end;
/*Ketone Reference Category*/
if KRSEQ01 < 0.6 then concur_ref_group = "1: <0.6";
if KRSEQ01 >= 0.6 and KRSEQ01 < 1.0 then concur_ref_group = "2: [0.6-1.0)";
if KRSEQ01 >= 1.0 and KRSEQ01 <= 1.5 then concur_ref_group = "3: [1.0-1.5]";
if KRSEQ01 > 1.5 and KRSEQ01 <= 3 then concur_ref_group = "4: (1.5-3]";
if KRSEQ01 > 3.0 then concur_ref_group = "5: >3.0";
/*Ketone Upload Category*/
if ana_100 < 0.6 then concur_upload_group = "1: <0.6";
if ana_100 >= 0.6 and ana_100 < 1.0 then concur_upload_group = "2: [0.6-1.0)";
if ana_100 >= 1.0 and ana_100 <= 1.5 then concur_upload_group = "3: [1.0-1.5]";
if ana_100 > 1.5 and ana_100 <= 3 then concur_upload_group = "4: (1.5-3]";
if ana_100 > 3.0 then concur_upload_group = "5: >3.0";
/*Site*/
if find(subject,"133") then Site = "Yale    ";
if find(subject,"900") then Site = "RCR     ";
run;

/*/*System Agreement*/
data overall_level;
set Ap_accuracy;
Level = "Overall";
run;

data Ap_overall;
set Ap_accuracy overall_level;
run;

data overall_site;
set Ap_overall;
Site = "Overall";
run;

data Ap_overall;
set Ap_overall overall_site;
run;

/*Group by Site,ref_type,Level*/
/*Count Each Group*/
proc freq data = Ap_overall(where = (ana_100 between 0.6 and 3.0)) noprint;
tables Site*ref_type*Level*Group/ out = freq sparse;
run;

/*Global Sum*/
proc sql;
create table sql_freq as 
select Site,ref_type,Level,Group,COUNT, sum(COUNT) as global_sum
from freq 
group by Site,ref_type,Level;
quit;

/*Cumulative Sum per Group*/
proc sort data = sql_freq;
by Site ref_type Level Group;
run;

data sys_freq;
set sql_freq;
by Site ref_type Level;
if first.Level then local_sum = .;
else local_sum + COUNT;
run;

/*Percent*/
data sys_freq;
set sys_freq;
if local_sum = . then local_sum = COUNT;
percent = (local_sum/global_sum)*100;
N = put(local_sum,5.)||' / '||strip(put(global_sum,5.))||' ('||strip(put(percent,5.1))||'%)';
run;

/*Transpose*/
proc transpose data = sys_freq out = sys_trans(drop=_name_);
by Site ref_type Level;
ID Group;
VAR N;
run;

data sys_trans;
retain Site ref_type Level "Within +- 10%/ +- 0.1 mmol/L"n
"Within +- 20%/ +- 0.2 mmol/L"n "Within +- 30%/ +- 0.3 mmol/L"n
"Within +- 40%/ +- 0.4 mmol/L"n "Outside +- 40%/ +- 0.4 mmol/L"n;
set sys_trans;
run;
/*Group by Site,ref_type,Level*/


/*System Agreement*/

/*Difference Measure*/
proc means data = Ap_overall(where = (ana_100 between 0.6 and 3.0)) noprint;
class Site ref_type Level;
var abs_pbias pbias abs_bias bias;
output out = bias_mean(drop = _TYPE_ _FREQ_) mean =  median =  n = / autoname ;
run;

/*Change Column names and order*/
data bias_table;
retain Site ref_type Level abs_pbias_Mean abs_pbias_Median
pbias_Mean pbias_Median abs_bias_Mean abs_bias_Median bias_Mean bias_Median;
set bias_mean(drop = abs_pbias_N pbias_N abs_bias_N);
where ^missing(Site) and ^missing(ref_type) and ^missing(Level) ;
run;
/*Difference Measure*/

/*Concurrence*/
/*Randox (where = (ref_type = "Randox"))*/
ods select none;
proc tabulate data=Ap_accuracy format=8.1 style=[cellwidth=1.0cm just=c] out = upload_count;
 title1 ' ';
 class ref_type concur_upload_group concur_ref_group;
 table ref_type, concur_upload_group, (concur_ref_group='' all='Total')*(N*f=8.0)  / box='Zone';
run;
ods select all;

data upload_count;
 set upload_count;
 if missing(concur_ref_group) then concur_ref_group='Total';
run;

proc sort data=upload_count; by ref_type concur_upload_group; run;

proc transpose data=upload_count out=upload_count_tran(drop=_name_) prefix=n;
 by ref_type concur_upload_group;
 var n;
 id concur_ref_group;
run;

ods select none;
proc tabulate data=Ap_accuracy format=8.1 style=[cellwidth=1.0cm just=c] out = upload_percent;
 title1 ' ';
 class ref_type concur_upload_group concur_ref_group;
 table ref_type, concur_upload_group, (concur_ref_group='' all='Total')*(rowpctn='%')  / box='Zone';
run;
ods select all;

data upload_percent;
 set upload_percent;
 if missing(concur_ref_group) then concur_ref_group='Total';
run; 

proc sort data=upload_percent; by ref_type concur_upload_group; run;

proc transpose data=upload_percent out=upload_percent_tran(drop=_name_) prefix=p;
 by ref_type concur_upload_group;
 var pctn_110;
 id concur_ref_group;
run;

data concur_km_vs_ref;
 merge upload_count_tran upload_percent_tran;
 by ref_type concur_upload_group;
 if concur_upload_group = '1: <0.6' then ref_nam = '<0.6      '; 
 else if concur_upload_group ='2: [0.6-1.0)' then ref_nam = '[0.6-1.0)'; 
 else if concur_upload_group ='3: [1.0-1.5]' then ref_nam = '[1.0-1.5]';
 else if concur_upload_group ='4: (1.5-3]' then ref_nam='(1.5-3]'; 
 else if concur_upload_group ='5: >3.0' then ref_nam='>3.0'; 
run;
/*Randox*/
/*KM vs Ref*/

/*Ref vs KM*/
ods select none;
proc tabulate data=Ap_accuracy format=8.1 style=[cellwidth=1.0cm just=c] out = ref_count;
 title1 ' ';
 class ref_type concur_upload_group concur_ref_group;
 table ref_type, concur_ref_group, (concur_upload_group='' all='Total')*(N*f=8.0)  / box='Zone';
run;
ods select all;

data ref_count;
 set ref_count;
 if missing(concur_upload_group) then concur_upload_group='Total';
run;

proc sort data=ref_count; by ref_type concur_ref_group; run;

proc transpose data=ref_count out=ref_count_tran(drop=_name_) prefix=n;
 by ref_type concur_ref_group;
 var n;
 id concur_upload_group;
run;

ods select none;
proc tabulate data=Ap_accuracy format=8.1 style=[cellwidth=1.0cm just=c] out = ref_percent;
 title1 ' ';
 class ref_type concur_upload_group concur_ref_group;
 table ref_type, concur_ref_group, (concur_upload_group='' all='Total')*(rowpctn='%')  / box='Zone';
run;
ods select all;

data ref_percent;
 set ref_percent;
 if missing(concur_upload_group) then concur_upload_group='Total';
run; 

proc sort data=ref_percent; by ref_type concur_ref_group; run;

proc transpose data=ref_percent out=ref_percent_tran(drop=_name_) prefix=p;
 by ref_type concur_ref_group;
 var pctn_101;
 id concur_upload_group;
run;

data concur_ref_vs_km;
 merge ref_count_tran ref_percent_tran;
 by ref_type concur_ref_group;
 if concur_ref_group = '1: <0.6' then ref_nam = '<0.6      '; 
 else if concur_ref_group ='2: [0.6-1.0)' then ref_nam = '[0.6-1.0)'; 
 else if concur_ref_group ='3: [1.0-1.5]' then ref_nam = '[1.0-1.5]';
 else if concur_ref_group ='4: (1.5-3]' then ref_nam='(1.5-3]'; 
 else if concur_ref_group ='5: >3.0' then ref_nam='>3.0'; 
run;
/*Ref vs KM*/
/*/*Concurrence (with 1.25 adj)*/

options papersize=a3 orientation=portrait;
ods rtf file="C:\Project\ADC-US-RES-23234\ADC-US-RES-23234-Accuracy-Report(with 1.25 adj)-%trim(%sysfunc(today(),yymmddn8.)).rtf" startpage=no;

/*System Agreement plot of Difference between CGM and Reference*/
proc sgpanel data = Ap_accuracy;
title1 "System Agreement plot of Difference between CGM and Reference";
where ana_100 between 0.6 and 3.0;
panelby ref_type / spacing=5 novarname;
scatter x =  KRSEQ01 y = bias / group = Site groupdisplay = overlay markerattrs=(symbol=CircleFilled);
refline 0 / axis=y lineattrs=(color=black thickness=1px pattern=ShortDashDot);
colaxis label = "Reference (mmol/L)";
rowaxis label = "Bias (mmol/L)";
keylegend / title = "Site";
run;

/*Group by Site and ref type*/
proc report data=sys_trans nofs split='$'
 style(column)=[just=l font=(arial, 10pt)]
 style(header)=[font_weight=bold just=c font=(arial, 10pt)]
 style(lines)=[font_weight=bold just=l];
 title1 ' ';
 columns ("System Agreement Results Split at 1 mmol/L(with 1.25 adj) by Site and Reference Type" Site ref_type Level "Within +- 10%/ +- 0.1 mmol/L"n
"Within +- 20%/ +- 0.2 mmol/L"n "Within +- 30%/ +- 0.3 mmol/L"n
"Within +- 40%/ +- 0.4 mmol/L"n "Outside +- 40%/ +- 0.4 mmol/L"n);
 define Site / Group order order=internal descending width=5; 
 define ref_type / Group "Ref Type" width=5; 
 define Level /"Ketone Ref Level" order=data width=5; 
run;

/*Bias(%) by day*/
proc sgpanel data = Ap_accuracy;
title1 "Mean Bias(%) by Day";
where ana_100 between 0.6 and 3.0;
panelby ref_type / spacing=5 novarname;
vline nday / response = pbias stat=mean group = Site groupdisplay = overlay markers markerattrs = (symbol=CircleFilled);
colaxis label = "Day"
	values=(1 to 9 by 1);
rowaxis label = "Mean Bias(%)";
keylegend / title = "Site";
run;

proc report data=bias_table nofs split='$'
 style(column)=[just=l font=(arial, 10pt)] style(header)=[font_weight=bold just=c font=(arial, 10pt)] style(lines)=[font_weight=bold just=l];
 title1 ' ';
 columns ("Bias Measures(with 1.25 adj)" Site ref_type Level ("MARD (%)" abs_pbias_Mean abs_pbias_Median) ("% Bias" pbias_Mean pbias_Median) ("Abs. Bias (mmol/L)" abs_bias_Mean abs_bias_Median) ("Bias (mmol/L)" bias_Mean bias_Median) bias_N);
 define Site / Group order order=internal descending width=5; 
 define ref_type / Group "Ref Type" width=5;
 define abs_pbias_Mean /"Mean" display f=8.1 width=5; 
 define abs_pbias_Median /"Median" display f=8.1 width=5;
 define pbias_Mean /"Mean" display f=8.1 width=5; 
 define pbias_Median /"Median" display f=8.1 width=5; 
 define abs_bias_Mean /"Mean" display f=8.1 width=5; 
 define abs_bias_Median /"Median" display f=8.1 width=5; 
 define bias_Mean /"Mean" display f=8.1 width=5;
 define bias_Median /"Median" display f=8.1 width=5; 
 define bias_N /"N" display width=5;
 define Level /"Ketone Ref Level" order=data width=5; 
run;

proc report data=concur_km_vs_ref nofs split='$'
 style(column)=[just=l font=(arial, 10pt)]
 style(header)=[font_weight=bold just=c font=(arial, 10pt)]
 style(lines)=[font_weight=bold just=l];
 title1 " "; 
 columns ("Concurrence Analysis by Ketone Level (KM vs. Ref)(with 1.25 adj)" ref_type ref_nam ("Ref (mmol/L)" 'p1: <0.6'n 'p2: [0.6-1.0)'n 'p3: [1.0-1.5]'n 'p4: (1.5-3]'n 'p5: >3.0'n) nTotal);
 define ref_type /"Ref Type" Group width=5;
 define ref_nam /"KM (mmol/L)" display;
 define 'p1: <0.6'n /"<0.6" display f=8.1 width=5; 
 define 'p2: [0.6-1.0)'n /"[0.6-1.0)" display f=8.1 width=5;
 define 'p3: [1.0-1.5]'n /"[1.0-1.5]" display f=8.1 width=5; 
 define 'p4: (1.5-3]'n /"(1.5-3]" display f=8.1 width=5; 
 define 'p5: >3.0'n /">3.0" display f=8.1 width=5;
 define ntotal /"N" display f=8.0 width=5;
run;

proc report data=concur_ref_vs_km nofs split='$'
 style(column)=[just=l font=(arial, 10pt)]
 style(header)=[font_weight=bold just=c font=(arial, 10pt)]
 style(lines)=[font_weight=bold just=l];
 title1 " "; 
 columns ("Concurrence Analysis by Ketone Level (Ref vs. KM)(with 1.25 adj)" ref_type ref_nam ("KM (mmol/L)" 'p1: <0.6'n 'p2: [0.6-1.0)'n 'p3: [1.0-1.5]'n 'p4: (1.5-3]'n 'p5: >3.0'n) nTotal);
 define ref_type /"Ref Type" Group width=5;
 define ref_nam /"Ref (mmol/L)" display;
 define 'p1: <0.6'n /"<0.6" display f=8.1 width=5; 
 define 'p2: [0.6-1.0)'n /"[0.6-1.0)" display f=8.1 width=5;
 define 'p3: [1.0-1.5]'n /"[1.0-1.5]" display f=8.1 width=5; 
 define 'p4: (1.5-3]'n /"(1.5-3]" display f=8.1 width=5; 
 define 'p5: >3.0'n /">3.0" display f=8.1 width=5;
 define ntotal /"N" display f=8.0 width=5;
run;
ODS RTF CLOSE;


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

/*proc sgplot data = Ap noautolegend cycleattrs;*/
/*title1 "Ketone Sensor vs Reference";*/
/*styleattrs datacontrastcolors = (magenta green blue orange lilac lime marron olive steel violet yellow);*/
/*	scatter x = KRSEQ01 y = ana_100 / markerattrs = (symbol = StarFilled color = black size=5) name= "Ketone";;*/
/*	yaxis label = "Sensor Ketone Value(mmol/L)" values=(0 to 11 by 1);*/
/*	xaxis label = "Reference (mmol/L)" values=(0 to 8 by 1) VALUESROTATE=DIAGONAL2;*/
/*run;*/