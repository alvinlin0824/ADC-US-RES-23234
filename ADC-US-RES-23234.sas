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
set edc.iv2;
keep Subject IVID01--IVVAL01;
run;

/*sort data*/
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

/*SAFETY PARAMETER LOG*/
data kd1;
set edc.kd1(where = (KDYN01 ^= "Check Here if no data recorded"));
keep Subject kddtc01;
run;

data kd2;
set edc.kd2;
keep Subject KDID01--KDORES10;
run;

/*sort data*/
proc sort data = kd1;
by Subject;
run;

proc sort data = kd2;
by Subject KDID01;
run;

/*Left Join kd1 and kd2*/
data kd12;
merge kd1 kd2;
by Subject;
rename KDDTC01 = IVDTC01 KDID01 = IVID01;
run;

/*Left join IV12 and KD12*/
data ivkd12;
format dtm datetime14. iv_tm hhmm5.;
merge iv12 kd12;
by Subject IVDTC01 IVID01;
iv_tm = input(IVTM01,time5.);
dtm = dhms(IVDTC01,0,0,iv_tm);
subjid = put(Subject,8.);
keep subjid dtm kdores02;
rename subjid = Subject;
where Subject = 90001;
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

data ivkd12;
format dtm datetime14. iv_tm hhmm5.;
merge iv12 kd12;
by Subject IVDTC01 IVID01;
iv_tm = input(IVTM01,time5.);
dtm = dhms(IVDTC01,0,0,iv_tm);
subjid = strip(put(Subject,8.));
keep subjid dtm kdores02 IVVAL01;
rename subjid = subject;
/*where Subject = 90001;*/
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
create table ketone as
select * from ivkd12 as x left join sensor as y
on x.subject = y.subject;
quit;

data profile_data;
set auu_906 ketone;
run;

/*sort dtm*/
proc sort data = profile_data;
by subject condition_id dtm;
run;

/*options papersize=a3 orientation=portrait;*/
/*ods rtf file="C:\Project\ADC-US-RES-23234\Report_%trim(%sysfunc(today(),yymmddn8.)).rtf" startpage=no;*/

/*Summary Statistics on Ketone Result*/
Proc means data = ivkd12 maxdec=2 nonobs;
title;
var kdores02;
class Subject;
where IVVAL01 = "Valid";
run;

/*Profile Plot*/
goptions device=png target=png rotate=landscape hpos=90 vpos=40 gwait=0 aspect=0.5
ftext='arial' htext=9pt hby=16pt gsfname=exfile gsfmode=replace xmax=16in hsize=10in ymax=11in vsize=6in;

ods graphics on / reset attrpriority=color width=8in height=5in;
proc sgplot data=profile_data noautolegend cycleattrs;
by subject;
title1 "Subject #byval(subject) - All Sensors";
styleattrs datacontrastcolors=(magenta green blue orange);
	scatter x = dtm y = kdores02 / markerattrs = (symbol = StarFilled color = black size=5) name= "Ketone";
	series x = dtm y = ana_100 / group=condition_id groupdisplay=overlay markers markerattrs=(size=3 symbol=dot) name="REAL";
/*	reg x=dtm y=fs_bg / lineattrs=(color=black thickness=1) markerattrs=(color=black symbol=StarFilled size=5);*/
	yaxis label="Ketone Test Result (mmol/L)" values=(0 to 150 by 50);
	xaxis label="Date" INTERVAL=HOUR VALUESROTATE=DIAGONAL2;
	keylegend / title="Condition ID" ;
run;


/*goptions device=png target=png rotate=landscape hpos=90 vpos=40 gwait=0 aspect=0.5*/
/*ftext='arial' htext=9pt hby=16pt gsfname=exfile gsfmode=replace xmax=16in ymax=11in vsize=6in;*/
/**/
/*symbol1 c=blue v=V h=0.35 f=marker i=none;     *blue;	    *Ketone Reference;*/
/*symbol2 c=cx008000 v=dot h=0.25 f=, i=none;    *green;  	*Ketone Sensor;*/
/*symbol3 c=cx000000 v=dot h=0.35 f=, i=none;    *black;  	*Ketone Sensor;*/
/*symbol4 c=cxff0000 v=V h=0.35 f=marker i=none; *red;	    *Ketone Sensor;*/
/*symbol5 c=magenta v=V h=0.35 f=marker i=none; *red;	    *Ketone Sensor;*/
/**/
/*proc gplot data = profile_data;*/
/* where IVVAL01 = "Valid";*/
/* by subject;*/
/* title1 "Subject #byval(Subject)";*/
/*/* plot (kdores02)*dtm / vaxis=axis1 haxis=axis2 wvref=2 legend=legend1 name='PLOT';*/*/
/* plot (kdores02 ana_100)*dtm = condition_id / overlay vaxis=axis1 haxis=axis2 wvref=2 legend=legend1 name='PLOT';*/
/* axis1 order=(0 to 60 by 5) label=(a=90 "Ketone Test Result (mmol/L)");*/
/* axis2 value=(a=60 h=.8) label=('IV Draw Date') offset=(3,3);*/
/* legend1 repeat=1 label=none*/
/* value=(tick=1 justify=l 'Ketone Test Result (mmol/L)');*/
/*run;*/

/*ODS RTF CLOSE;*/