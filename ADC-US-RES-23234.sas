/*EDC \\wf00168p.oneabbott.com\data1\CDM\ADC-US-RES-23234\OpenClinica\Current*/

/*UUU M:\ADC-US-RES-23234\UploadData\UUU\UUU_DataFiles*/

/*Study Protocol \\oneabbott.com\dept\ADC\Technical_OPS\Clinical_Affairs\Clinical Study Files\Apollo\ADC-US-RES-23234_IDE Pump Suspension Study\Protocol*/

/*CRF \\oneabbott.com\dept\ADC\Technical_OPS\Clinical_Affairs\Clinical Study Files\Apollo\ADC-US-RES-23234_IDE Pump Suspension Study\Case Report Forms\Version B\Approved\pdf*/

/*DMP \\oneabbott.com\dept\ADC\Technical_OPS\Clinical_Affairs\Clinical Study Files\Apollo\ADC-US-RES-23234_IDE Pump Suspension Study\CDM\Study_Binder\Data_Management_Plan\Version_1.0\Final*/

libname edc 'M:\ADC-US-RES-23234\OpenClinica\Current';
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
drop iv_tm;
run;

options papersize=a3 orientation=portrait;
ods rtf file="C:\Project\ADC-US-RES-23234\Report_%trim(%sysfunc(today(),yymmddn8.)).rtf" startpage=no;

/*Summary Statistics on Ketone Result*/
Proc means data = ivkd12 maxdec=2 nonobs;
title;
var kdores02;
class Subject;
where IVVAL01 = "Valid";
run;

/*Profile Plot*/
goptions device=png target=png rotate=landscape hpos=90 vpos=40 gwait=0 aspect=0.5
ftext='arial' htext=9pt hby=16pt gsfname=exfile gsfmode=replace xmax=16in ymax=11in vsize=6in;

symbol1 c=blue v=V h=0.35 f=marker i=none;     *blue;	    *BG;
/*symbol2 c=cx008000 v=dot h=0.25 f=, i=none;    *green;  	*HT;*/
/*symbol3 c=cx000000 v=dot h=0.35 f=, i=none;    *black;  	*RT;*/
/*symbol4 c=cxff0000 v=V h=0.35 f=marker i=none; *red;	    *YSI;*/

proc gplot data = ivkd12;
 where IVVAL01 = "Valid";
 by Subject;
 title1 "Subject #byval(Subject)";
 plot (kdores02)*dtm / overlay vaxis=axis1 haxis=axis2 wvref=2 legend=legend1 name='PLOT';
 axis1 order=(0 to 3 by 0.5) label=(a=90 "Ketone Test Result (mmol/L)");
 axis2 value=(a=60 h=.8) label=('IV Draw Date') offset=(3,3);
 legend1 repeat=1 label=none
 value=(tick=1 justify=l 'Ketone Test Result (mmol/L)');
run;

ODS RTF CLOSE;