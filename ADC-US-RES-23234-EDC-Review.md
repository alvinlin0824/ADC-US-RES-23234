---
title: "ADC-US-RES-23234 EDC Review"
author: "Alvin, Lin"
date: "2024-01-09"
format:
   html:
     theme: flatly
     self-contained: true
toc: true
toc-depth: 3
toc-location: left
execute:
  echo: false
  warning: false 
  keep-md: true
column: screen
---     



<!-- EDC \\wf00168p.oneabbott.com\data1\CDM\ADC-US-RES-23234\OpenClinica\Current -->

<!-- UUU \\wf00168p.oneabbott.com\data1\CDM\ADC-US-RES-23234\UploadData\UUU\UUU_DataFiles -->

<!-- Study Protocol \\oneabbott.com\dept\ADC\Technical_OPS\Clinical_Affairs\Clinical Study Files\Apollo\ADC-US-RES-23234_IDE Pump Suspension Study\Protocol -->

<!-- CRF \\oneabbott.com\dept\ADC\Technical_OPS\Clinical_Affairs\Clinical Study Files\Apollo\ADC-US-RES-23234_IDE Pump Suspension Study\Case Report Forms\Version B\Approved\pdf -->


::: {.cell}

:::

::: {.cell}

:::


[Statistics Data Queries](https://abbott.sharepoint.com/teams/adc-rnd/Clinical_Affairs/Shared%20Documents/Forms/AllItems.aspx?originalPath=aHR0cHM6Ly9hYmJvdHQuc2hhcmVwb2ludC5jb20vOmY6L3QvYWRjLXJuZC9DbGluaWNhbF9BZmZhaXJzL0VxQVVMSVZNWmoxRWdFUHppbFYyXy1zQjlwcnpnWk5mY0xTbE9UcWVIT3JfNVE%5FcnRpbWU9dHNNSHg3RjUxMGc&id=%2Fteams%2Fadc%2Drnd%2FClinical%5FAffairs%2FShared%20Documents%2F09%20Data%20Management%2FStatistics%20Data%20Queries%2FADC%2DUS%2DRES%2D23234&viewid=314c97dd%2D7a24%2D48d8%2Dbb69%2D24b617321996)

# **CAD2 Review**

`<a href="//oneabbott.com/dept/ADC/Technical_OPS/Clinical_Affairs/Clinical Study Files/Apollo/ADC-US-RES-23234_IDE Pump Suspension Study/Case Report Forms/Version B/Approved/pdf/Clinic Visit 2_Admission_Discharge.pdf">Clinic Visit 2 Admission and Discharge</a>`{=html}


::: {.cell}

:::

::: {.cell}
::: {.cell-output-display}

```{=html}
<button onclick="Reactable.downloadDataCSV(&#39;cad2&#39;, &#39;cad2.csv&#39;)">
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:currentColor;overflow:visible;position:relative;"><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V274.7l-73.4-73.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l128 128c12.5 12.5 32.8 12.5 45.3 0l128-128c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L288 274.7V32zM64 352c-35.3 0-64 28.7-64 64v32c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V416c0-35.3-28.7-64-64-64H346.5l-45.3 45.3c-25 25-65.5 25-90.5 0L165.5 352H64zm368 56a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"/></svg>
Download as CSV
</button>
<div class="reactable html-widget html-fill-item" id="cad2" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="cad2">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":[],"__STUDYEVENTREPEATKEY":[],"DSDTC01":[],"DSDTC02":[],"DSTM01":[],"DSYN04":[],"DSORES01":[],"DSORES02":[],"DSYN05":[]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"__STUDYEVENTREPEATKEY","name":"__STUDYEVENTREPEATKEY","type":"character","minWidth":115,"align":"center"},{"id":"DSDTC01","name":"DSDTC01","type":"Date","minWidth":115,"align":"center"},{"id":"DSDTC02","name":"DSDTC02","type":"Date","minWidth":115,"align":"center"},{"id":"DSTM01","name":"DSTM01","type":"character","minWidth":115,"align":"center"},{"id":"DSYN04","name":"DSYN04","type":"character","minWidth":115,"align":"center"},{"id":"DSORES01","name":"DSORES01","type":"character","minWidth":115,"align":"center"},{"id":"DSORES02","name":"DSORES02","type":"character","minWidth":115,"align":"center"},{"id":"DSYN05","name":"DSYN05","type":"character","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"elementId":"cad2","dataKey":"b95a669cbf95d1d3e9700858714661d1"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::




DSDTC01(Visit Date) should not be blank 

DSDTC02(Date eligibility was confirmed) should not be blank 

If Date confirmed is prior to this Visit Date, DSYN04 should be Not required if Date confirmed is prior to this Visit Date 

If Date confirmed is not prior to this Visit Date, DSTM01(Time eligibility was confirmed) should not be blank 

DSORES01(Urine Pregnancy Test Result:) should be either Positive result, Negative result or Not Applicable 

If DSORES01(Urine Pregnancy Test Result:) is Not Applicable, DSORES02(Please check one of the reasons:) should be either Subject was born male, Subject is post-menopausal or Subject has had a hysterectomy 

DSYN05(Was at least one sensor confirmed to be working properly?) should be either Yes or No 


# **CAD3 Review**

`<a href="//oneabbott.com/dept/ADC/Technical_OPS/Clinical_Affairs/Clinical Study Files/Apollo/ADC-US-RES-23234_IDE Pump Suspension Study/Case Report Forms/Version B/Approved/pdf/Clinic Visit 3_Admission_Discharge.pdf">Clinic Visit 3 Admission and Discharge</a>`{=html}


::: {.cell}

:::

::: {.cell}
::: {.cell-output-display}

```{=html}
<button onclick="Reactable.downloadDataCSV(&#39;cad3&#39;, &#39;cad3.csv&#39;)">
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:currentColor;overflow:visible;position:relative;"><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V274.7l-73.4-73.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l128 128c12.5 12.5 32.8 12.5 45.3 0l128-128c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L288 274.7V32zM64 352c-35.3 0-64 28.7-64 64v32c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V416c0-35.3-28.7-64-64-64H346.5l-45.3 45.3c-25 25-65.5 25-90.5 0L165.5 352H64zm368 56a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"/></svg>
Download as CSV
</button>
<div class="reactable html-widget html-fill-item" id="cad3" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="cad3">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":["1330008","1330009","90010"],"__STUDYEVENTREPEATKEY":["1","1","1"],"DSDTC01":["2023-10-09","2023-10-20","2023-08-31"],"DSORES01":["Not Applicable","Negative result","Not Applicable"],"DSORES02":["Subject was born male","","Subject has had a hysterectomy"],"DSYN02":["Yes","Yes","Yes"],"DSTM01":["08:28","07:52","06:01"],"DSYN03":["Yes","Yes","Yes"],"DSTM02":["09:35","09:20","12:53"],"TIME01":["508","472","361"],"TIME02":["575","560","773"],"DSORES10":["Blood glucose less than or equal to 250 mg_dL","Blood glucose less than or equal to 250 mg_dL","Blood glucose less than or equal to 250 mg_dL"],"DSORES11":["Blood ketone less than 1.0 mmol_L","Blood ketone less than 1.0 mmol_L","Blood ketone less than 1.0 mmol_L"],"DSORES12":["","","Blood potassium level no less than 3.5 mmol_L and no more than 5.2 mmol_L"],"DSORES13":["Blood pH no less than 7.31 and no more than 7.41","Blood pH no less than 7.31 and no more than 7.41",""],"DSORES14":["Both the subject and site staff visually confirmed that the subject's insulin pump has been activated and is delivering basal insulin","Both the subject and site staff visually confirmed that the subject's insulin pump has been activated and is delivering basal insulin","Both the subject and site staff visually confirmed that the subject's insulin pump has been activated and is delivering basal insulin"],"DSORES15":["Investigator felt that the subject is stable and that it is safe to discharge","Investigator felt that the subject is stable and that it is safe to discharge","Investigator felt that the subject is stable and that it is safe to discharge"],"DSYN04":["Yes","Yes","Yes"]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"__STUDYEVENTREPEATKEY","name":"__STUDYEVENTREPEATKEY","type":"character","minWidth":115,"align":"center"},{"id":"DSDTC01","name":"DSDTC01","type":"Date","minWidth":115,"align":"center"},{"id":"DSORES01","name":"DSORES01","type":"character","minWidth":115,"align":"center"},{"id":"DSORES02","name":"DSORES02","type":"character","minWidth":115,"align":"center"},{"id":"DSYN02","name":"DSYN02","type":"character","minWidth":115,"align":"center"},{"id":"DSTM01","name":"DSTM01","type":"character","minWidth":115,"align":"center"},{"id":"DSYN03","name":"DSYN03","type":"character","minWidth":115,"align":"center"},{"id":"DSTM02","name":"DSTM02","type":"character","minWidth":115,"align":"center"},{"id":"TIME01","name":"TIME01","type":"character","minWidth":115,"align":"center"},{"id":"TIME02","name":"TIME02","type":"character","minWidth":115,"align":"center"},{"id":"DSORES10","name":"DSORES10","type":"character","minWidth":115,"align":"center"},{"id":"DSORES11","name":"DSORES11","type":"character","minWidth":115,"align":"center"},{"id":"DSORES12","name":"DSORES12","type":"character","minWidth":115,"align":"center"},{"id":"DSORES13","name":"DSORES13","type":"character","minWidth":115,"align":"center"},{"id":"DSORES14","name":"DSORES14","type":"character","minWidth":115,"align":"center"},{"id":"DSORES15","name":"DSORES15","type":"character","minWidth":115,"align":"center"},{"id":"DSYN04","name":"DSYN04","type":"character","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"elementId":"cad3","dataKey":"66696c5f810a444348be157a10dccfed"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::




DSDTC01(Visit Date) should not be blank 

DSORES01(Urine Pregnancy Test Result:) should be either Positive result, Negative result or Not Applicable 

If DSORES01(Urine Pregnancy Test Result:) is Not Applicable, DSORES02(Please check one of the reasons:) should be either Subject was born male, Subject is post-menopausal or Subject has had a hysterectomy 

DSYN02(Venous Access Successful?) should be either Yes or No 

If DSYN02(Venous Access Successful?) is Yes, DSTM01(Time IV port established:) should not be blank 

DSYN03(Venous Access Removal Time) should be either Yes or NA 

If DSYN03(Venous Access Removal Time) is Yes, DSTM02(Venous Access Removal Time) should not be blank 

DSORES10(Blood glucose less than or equal to 250 mg/dL) should be Blood glucose less than or equal to 250 mg/dL 

DSORES11(Blood ketone less than 1.0 mmol/L) should be Blood ketone less than 1.0 mmol/L 

DSORES12(Blood potassium level no less than 3.5 mmol/L and no more than 5.2 mmol/L) should be Blood potassium level no less than 3.5 mmol/L and no more than 5.2 mmol/L <span style='color: red;'>1330008</span>, <span style='color: red;'>1330009</span>

DSORES13(Blood pH no less than 7.31 and no more than 7.41) should be Blood pH no less than 7.31 and no more than 7.41 <span style='color: red;'>90010</span>

DSORES14(Both the subject and site staff visually confirmed that the subject's insulin pump has been activated and is delivering basal insulin) should be Both the subject and site staff visually confirmed that the subject's insulin pump has been activated and is delivering basal insulin 

DSORES15(Investigator felt that the subject is stable and that it is safe to discharge) should be Investigator felt that the subject is stable and that it is safe to discharge 

DSYN03(Were the reading devices and meters uploaded?) should be either Yes or No 

# **CM2 Review**

`<a href="//oneabbott.com/dept/ADC/Technical_OPS/Clinical_Affairs/Clinical Study Files/Apollo/ADC-US-RES-23234_IDE Pump Suspension Study/Case Report Forms/Version B/Approved/pdf/Medications.pdf">Medications</a>`{=html}


::: {.cell}

:::

::: {.cell}
::: {.cell-output-display}

```{=html}
<button onclick="Reactable.downloadDataCSV(&#39;cm2&#39;, &#39;cm2.csv&#39;)">
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:currentColor;overflow:visible;position:relative;"><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V274.7l-73.4-73.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l128 128c12.5 12.5 32.8 12.5 45.3 0l128-128c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L288 274.7V32zM64 352c-35.3 0-64 28.7-64 64v32c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V416c0-35.3-28.7-64-64-64H346.5l-45.3 45.3c-25 25-65.5 25-90.5 0L165.5 352H64zm368 56a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"/></svg>
Download as CSV
</button>
<div class="reactable html-widget html-fill-item" id="cm2" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="cm2">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":["1330005","1330006","1330006","90013","90013","90013","90013","90013","90013"],"__STUDYEVENTREPEATKEY":["1","2","2","1","1","1","1","1","1"],"CMTRT":["","","","","","","","",""],"CMDOS":["","","","","","","","",""],"CMDOSU":["","","","","","","","",""],"CMROUTE":["","","","","","","","",""],"CMOTH01":["","","","","","","","",""],"CMDOSFRQ":["","","","","","","","",""],"CMOTH02":["","","","","","","","",""],"CMSTDTC":[null,null,null,null,null,null,null,null,null],"CMENDTC":[null,null,null,null,null,null,null,null,null],"CMONGO":["","","","","","","","",""]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"__STUDYEVENTREPEATKEY","name":"__STUDYEVENTREPEATKEY","type":"character","minWidth":115,"align":"center"},{"id":"CMTRT","name":"CMTRT","type":"character","minWidth":115,"align":"center"},{"id":"CMDOS","name":"CMDOS","type":"character","minWidth":115,"align":"center"},{"id":"CMDOSU","name":"CMDOSU","type":"character","minWidth":115,"align":"center"},{"id":"CMROUTE","name":"CMROUTE","type":"character","minWidth":115,"align":"center"},{"id":"CMOTH01","name":"CMOTH01","type":"character","minWidth":115,"align":"center"},{"id":"CMDOSFRQ","name":"CMDOSFRQ","type":"character","minWidth":115,"align":"center"},{"id":"CMOTH02","name":"CMOTH02","type":"character","minWidth":115,"align":"center"},{"id":"CMSTDTC","name":"CMSTDTC","type":"Date","minWidth":115,"align":"center"},{"id":"CMENDTC","name":"CMENDTC","type":"Date","minWidth":115,"align":"center"},{"id":"CMONGO","name":"CMONGO","type":"character","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"elementId":"cm2","dataKey":"c3449e6a25e4845277b10e6903742bb8"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::




CMTRT(Medication) should not be blank <span style='color: red;'>1330005</span>, <span style='color: red;'>1330006</span>, <span style='color: red;'>1330006</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>

CMDOS(Dosage) should not be blank <span style='color: red;'>1330005</span>, <span style='color: red;'>1330006</span>, <span style='color: red;'>1330006</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>

CMDOSU(Units) should not be blank and should be character <span style='color: red;'>1330005</span>, <span style='color: red;'>1330006</span>, <span style='color: red;'>1330006</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>

CMROUTE(Route) should not be blank <span style='color: red;'>1330005</span>, <span style='color: red;'>1330006</span>, <span style='color: red;'>1330006</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>

If CMROUTE(Route) is other, CMOTH01 should not be blank 

CMDOSFRQ(Frequency) should be qd,bid,tid,qid,prn,bw, and other <span style='color: red;'>1330005</span>, <span style='color: red;'>1330006</span>, <span style='color: red;'>1330006</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>

If CMDOSFRQ(Frequency) is other, CMOTH02 should not be blank 

CMSTDTC(Start Date) should not be blank <span style='color: red;'>1330005</span>, <span style='color: red;'>1330006</span>, <span style='color: red;'>1330006</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>

Length of CMSTDTC(Start Date) should be <span style='color: red;'>10</span>,so <span style='color: red;'>1330005</span>, <span style='color: red;'>1330006</span>, <span style='color: red;'>1330006</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>

CMENDTC(Stop Date) and CMONGO(Ongoing) should not be blank at the same time <span style='color: red;'>1330005</span>, <span style='color: red;'>1330006</span>, <span style='color: red;'>1330006</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>, <span style='color: red;'>90013</span>

CMONGO(Ongoing) should be Ongoing or Blank 

# **CO Review**

`<a href="//oneabbott.com/dept/ADC/Technical_OPS/Clinical_Affairs/Clinical Study Files/Apollo/ADC-US-RES-23234_IDE Pump Suspension Study/Case Report Forms/Version B/Approved/pdf/Comments.pdf">Comments</a>`{=html}


::: {.cell}

:::

::: {.cell}
::: {.cell-output-display}

```{=html}
<button onclick="Reactable.downloadDataCSV(&#39;co&#39;, &#39;co.csv&#39;)">
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:currentColor;overflow:visible;position:relative;"><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V274.7l-73.4-73.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l128 128c12.5 12.5 32.8 12.5 45.3 0l128-128c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L288 274.7V32zM64 352c-35.3 0-64 28.7-64 64v32c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V416c0-35.3-28.7-64-64-64H346.5l-45.3 45.3c-25 25-65.5 25-90.5 0L165.5 352H64zm368 56a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"/></svg>
Download as CSV
</button>
<div class="reactable html-widget html-fill-item" id="co" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="co">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":[],"__STUDYEVENTREPEATKEY":[],"CODTC1":[],"COVAL1":[],"COVAL2":[],"COVAL3":[],"COVAL4":[],"COVAL5":[]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"__STUDYEVENTREPEATKEY","name":"__STUDYEVENTREPEATKEY","type":"character","minWidth":115,"align":"center"},{"id":"CODTC1","name":"CODTC1","type":"Date","minWidth":115,"align":"center"},{"id":"COVAL1","name":"COVAL1","type":"character","minWidth":115,"align":"center"},{"id":"COVAL2","name":"COVAL2","type":"character","minWidth":115,"align":"center"},{"id":"COVAL3","name":"COVAL3","type":"character","minWidth":115,"align":"center"},{"id":"COVAL4","name":"COVAL4","type":"character","minWidth":115,"align":"center"},{"id":"COVAL5","name":"COVAL5","type":"character","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"elementId":"co","dataKey":"978f65c95d09354c963b14a408f17008"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::




CODTC1(Visit Date) should not be blank 


# **DE Review**

`<a href="//oneabbott.com/dept/ADC/Technical_OPS/Clinical_Affairs/Clinical Study Files/Apollo/ADC-US-RES-23234_IDE Pump Suspension Study/Case Report Forms/Version B/Approved/pdf/Device_Incident_Report.pdf">Device Incident Report</a>`{=html}


::: {.cell}

:::

::: {.cell}
::: {.cell-output-display}

```{=html}
<button onclick="Reactable.downloadDataCSV(&#39;de&#39;, &#39;de.csv&#39;)">
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:currentColor;overflow:visible;position:relative;"><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V274.7l-73.4-73.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l128 128c12.5 12.5 32.8 12.5 45.3 0l128-128c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L288 274.7V32zM64 352c-35.3 0-64 28.7-64 64v32c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V416c0-35.3-28.7-64-64-64H346.5l-45.3 45.3c-25 25-65.5 25-90.5 0L165.5 352H64zm368 56a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"/></svg>
Download as CSV
</button>
<div class="reactable html-widget html-fill-item" id="de" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="de">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":[],"__STUDYEVENTREPEATKEY":[],"DEDTC02":[],"DETM01":[],"DESPID13":[],"DESPID07":[],"DESPID01":[],"DESPID08":[],"DESPID02":[],"DESPID09":[],"DESPID10":[],"DESPID04":[],"DESPID11":[],"DESPID05":[],"DESPID12":[],"DESPID06":[],"DEORES01":[],"DETXT02":[],"DEORES02":[],"DEORES03":[],"DEORES04":[],"DETXT03":[],"DEORES05":[],"DEORES06":[],"DEORES07":[],"DEORES08":[],"DEORES09":[],"DETXT04":[],"DEORES10":[],"DEORES11":[],"DEORES12":[],"DEORES13":[],"DEORES14":[],"DEORES15":[],"DEORES16":[],"DEORES17":[],"DEORES18":[],"DEORES19":[],"DEORES20":[]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"__STUDYEVENTREPEATKEY","name":"__STUDYEVENTREPEATKEY","type":"character","minWidth":115,"align":"center"},{"id":"DEDTC02","name":"DEDTC02","type":"Date","minWidth":115,"align":"center"},{"id":"DETM01","name":"DETM01","type":"character","minWidth":115,"align":"center"},{"id":"DESPID13","name":"DESPID13","type":"character","minWidth":115,"align":"center"},{"id":"DESPID07","name":"DESPID07","type":"character","minWidth":115,"align":"center"},{"id":"DESPID01","name":"DESPID01","type":"character","minWidth":115,"align":"center"},{"id":"DESPID08","name":"DESPID08","type":"character","minWidth":115,"align":"center"},{"id":"DESPID02","name":"DESPID02","type":"numeric","minWidth":115,"align":"center"},{"id":"DESPID09","name":"DESPID09","type":"character","minWidth":115,"align":"center"},{"id":"DESPID10","name":"DESPID10","type":"character","minWidth":115,"align":"center"},{"id":"DESPID04","name":"DESPID04","type":"character","minWidth":115,"align":"center"},{"id":"DESPID11","name":"DESPID11","type":"character","minWidth":115,"align":"center"},{"id":"DESPID05","name":"DESPID05","type":"character","minWidth":115,"align":"center"},{"id":"DESPID12","name":"DESPID12","type":"character","minWidth":115,"align":"center"},{"id":"DESPID06","name":"DESPID06","type":"character","minWidth":115,"align":"center"},{"id":"DEORES01","name":"DEORES01","type":"character","minWidth":115,"align":"center"},{"id":"DETXT02","name":"DETXT02","type":"character","minWidth":115,"align":"center"},{"id":"DEORES02","name":"DEORES02","type":"character","minWidth":115,"align":"center"},{"id":"DEORES03","name":"DEORES03","type":"character","minWidth":115,"align":"center"},{"id":"DEORES04","name":"DEORES04","type":"character","minWidth":115,"align":"center"},{"id":"DETXT03","name":"DETXT03","type":"numeric","minWidth":115,"align":"center"},{"id":"DEORES05","name":"DEORES05","type":"character","minWidth":115,"align":"center"},{"id":"DEORES06","name":"DEORES06","type":"character","minWidth":115,"align":"center"},{"id":"DEORES07","name":"DEORES07","type":"character","minWidth":115,"align":"center"},{"id":"DEORES08","name":"DEORES08","type":"character","minWidth":115,"align":"center"},{"id":"DEORES09","name":"DEORES09","type":"character","minWidth":115,"align":"center"},{"id":"DETXT04","name":"DETXT04","type":"character","minWidth":115,"align":"center"},{"id":"DEORES10","name":"DEORES10","type":"character","minWidth":115,"align":"center"},{"id":"DEORES11","name":"DEORES11","type":"character","minWidth":115,"align":"center"},{"id":"DEORES12","name":"DEORES12","type":"character","minWidth":115,"align":"center"},{"id":"DEORES13","name":"DEORES13","type":"character","minWidth":115,"align":"center"},{"id":"DEORES14","name":"DEORES14","type":"character","minWidth":115,"align":"center"},{"id":"DEORES15","name":"DEORES15","type":"character","minWidth":115,"align":"center"},{"id":"DEORES16","name":"DEORES16","type":"character","minWidth":115,"align":"center"},{"id":"DEORES17","name":"DEORES17","type":"character","minWidth":115,"align":"center"},{"id":"DEORES18","name":"DEORES18","type":"character","minWidth":115,"align":"center"},{"id":"DEORES19","name":"DEORES19","type":"character","minWidth":115,"align":"center"},{"id":"DEORES20","name":"DEORES20","type":"character","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"elementId":"de","dataKey":"ac6dd0378f33eb4d87dee64315054100"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::




DEDTC02(Date incident first noticed) should not be blank 

Length of DEDTC02(Date incident first noticed) should be <span style='color: red;'>10</span> 

DETM01(Time Incident First Noticed) DESPID13 should not be blank at the same time 

Length of DETM01(Time Incident First Noticed) should be <span style='color: red;'>5</span> 

DESPID07(Reader) DESPID01(Reader serial number) should not be blank at the same time 

Length of DESPID01(Reader serial number) should be <span style='color: red;'>4</span> 

DESPID08(Sensor) DESPID02(Sensor number) should not be blank at the same time 

DEORES01(Was there a message on the meter/reader at the time of the incident?) should be either Yes or No 

If DEORES01(Was there a message on the meter/reader at the time of the incident?) is yes, DETXT02(Yes - Message:) should not be blank 

DEORES02(Describe the incident) and DEORES03(What was the subject/staff doing at the time the incident occurred?) should not be blank 

DEORES04(Did the incident occur more than once?) should be either Yes or No 

If DEORES04(Did the incident occur more than once?) is yes, DETXT03(Yes-how many times?) should not be blank 

DEORES05(Sensor removed) or DEORES06(Sensor replaced) or DEORES07(Reader replaced) DEORES08(No action taken) DEORES09(other) should not be blank at the same time 

If DEORES09(other) is other, DETXT04 should not be blank 

DEORES10(Did the incident result in an Adverse Event?) should be either Yes or No 

DEORES11(Could the incident have led to a Serious Adverse Event?) should be either Yes or No 

DEORES12(Did the incident fit any of the events listed below?) should be either Yes or No 

# **DM Review**

`<a href="//oneabbott.com/dept/ADC/Technical_OPS/Clinical_Affairs/Clinical Study Files/Apollo/ADC-US-RES-23234_IDE Pump Suspension Study/Case Report Forms/Version B/Approved/pdf/Demographics.pdf">Demographics</a>`{=html}


::: {.cell}

:::

::: {.cell}
::: {.cell-output-display}

```{=html}
<button onclick="Reactable.downloadDataCSV(&#39;dm&#39;, &#39;dm.csv&#39;)">
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:currentColor;overflow:visible;position:relative;"><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V274.7l-73.4-73.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l128 128c12.5 12.5 32.8 12.5 45.3 0l128-128c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L288 274.7V32zM64 352c-35.3 0-64 28.7-64 64v32c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V416c0-35.3-28.7-64-64-64H346.5l-45.3 45.3c-25 25-65.5 25-90.5 0L165.5 352H64zm368 56a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"/></svg>
Download as CSV
</button>
<div class="reactable html-widget html-fill-item" id="dm" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="dm">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":[],"__STUDYEVENTREPEATKEY":[],"VISITDTC":[],"SEX":[],"AGE":[],"ETHNIC":[],"RACE":[],"RACEOTH":[],"EDU":[]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"__STUDYEVENTREPEATKEY","name":"__STUDYEVENTREPEATKEY","type":"character","minWidth":115,"align":"center"},{"id":"VISITDTC","name":"VISITDTC","type":"Date","minWidth":115,"align":"center"},{"id":"SEX","name":"SEX","type":"character","minWidth":115,"align":"center"},{"id":"AGE","name":"AGE","type":"numeric","minWidth":115,"align":"center"},{"id":"ETHNIC","name":"ETHNIC","type":"character","minWidth":115,"align":"center"},{"id":"RACE","name":"RACE","type":"character","minWidth":115,"align":"center"},{"id":"RACEOTH","name":"RACEOTH","type":"character","minWidth":115,"align":"center"},{"id":"EDU","name":"EDU","type":"character","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"elementId":"dm","dataKey":"d3491d4d7bfdcf6ace95c7fd6b7d5331"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::




VISITDTC(Visit Date) should not be blank 

Length of VISITDTC(Visit Date) should be <span style='color: red;'>10</span> 

SEX(Sex at birth) should be either Female or Male 

AGE(Age) should not be blank 

ETHNIC(ETHNIC) should be either (Hispanic or Latino) or (Not Hispanic or Latino) 

RACE(RACE) should be Black or African American, Asian, White, Native Hawaiian or Pacific Islander, American Indian or Alaska Native, or Other 

If RACE(RACE) is other, RACEOTH should not be blank 

EDU(Education) should be Grade 0-8, High School (Grades 9-12), Some College (1-4 years), Bachelor's Degree (BA BS etc), Master's Degree (MA MS etc),or Doctorate or Professional school degree (PhD EdD MD JD etc) 

# **DU2 Review**

`<a href="//oneabbott.com/dept/ADC/Technical_OPS/Clinical_Affairs/Clinical Study Files/Apollo/ADC-US-RES-23234_IDE Pump Suspension Study/Case Report Forms/Version B/Approved/pdf/Final_DataUpload_Log.pdf">Final Data Upload Log</a>`{=html}


::: {.cell}

:::

::: {.cell}
::: {.cell-output-display}

```{=html}
<button onclick="Reactable.downloadDataCSV(&#39;du2&#39;, &#39;du2.csv&#39;)">
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:currentColor;overflow:visible;position:relative;"><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V274.7l-73.4-73.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l128 128c12.5 12.5 32.8 12.5 45.3 0l128-128c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L288 274.7V32zM64 352c-35.3 0-64 28.7-64 64v32c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V416c0-35.3-28.7-64-64-64H346.5l-45.3 45.3c-25 25-65.5 25-90.5 0L165.5 352H64zm368 56a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"/></svg>
Download as CSV
</button>
<div class="reactable html-widget html-fill-item" id="du2" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="du2">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":["1330001","1330002","1330002","1330003","1330004","1330005","1330005","1330006","1330007","1330008","1330010","90001","90001","90001","90001","90003","90003","90004","90004","90005","90005","90006","90006","90007","90007","90008","90008","90009","90009","90010","90010","90012","90012"],"__STUDYEVENTREPEATKEY":["1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1"],"UPORES01":["","Other","Other","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""],"UPTXT01":["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""],"UPID01":["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""],"UPID02":["","","Other Visit","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""],"UPID03":["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""],"UPTXT03":["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""],"UPDTC01":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"UPDTC02":["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""],"UPTXT04":["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"__STUDYEVENTREPEATKEY","name":"__STUDYEVENTREPEATKEY","type":"character","minWidth":115,"align":"center"},{"id":"UPORES01","name":"UPORES01","type":"character","minWidth":115,"align":"center"},{"id":"UPTXT01","name":"UPTXT01","type":"character","minWidth":115,"align":"center"},{"id":"UPID01","name":"UPID01","type":"character","minWidth":115,"align":"center"},{"id":"UPID02","name":"UPID02","type":"character","minWidth":115,"align":"center"},{"id":"UPID03","name":"UPID03","type":"character","minWidth":115,"align":"center"},{"id":"UPTXT03","name":"UPTXT03","type":"character","minWidth":115,"align":"center"},{"id":"UPDTC01","name":"UPDTC01","type":"Date","minWidth":115,"align":"center"},{"id":"UPDTC02","name":"UPDTC02","type":"character","minWidth":115,"align":"center"},{"id":"UPTXT04","name":"UPTXT04","type":"character","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"elementId":"du2","dataKey":"1a0eaa6ce185f1abaae4b2132810ca92"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::




UPORES01(Device Type) should be either Sensor or Other <span style='color: red;'>1330001</span>, <span style='color: red;'>1330003</span>, <span style='color: red;'>1330004</span>, <span style='color: red;'>1330005</span>, <span style='color: red;'>1330005</span>, <span style='color: red;'>1330006</span>, <span style='color: red;'>1330007</span>, <span style='color: red;'>1330008</span>, <span style='color: red;'>1330010</span>, <span style='color: red;'>90001</span>, <span style='color: red;'>90001</span>, <span style='color: red;'>90001</span>, <span style='color: red;'>90001</span>, <span style='color: red;'>90003</span>, <span style='color: red;'>90003</span>, <span style='color: red;'>90004</span>, <span style='color: red;'>90004</span>, <span style='color: red;'>90005</span>, <span style='color: red;'>90005</span>, <span style='color: red;'>90006</span>, <span style='color: red;'>90006</span>, <span style='color: red;'>90007</span>, <span style='color: red;'>90007</span>, <span style='color: red;'>90008</span>, <span style='color: red;'>90008</span>, <span style='color: red;'>90009</span>, <span style='color: red;'>90009</span>, <span style='color: red;'>90010</span>, <span style='color: red;'>90010</span>, <span style='color: red;'>90012</span>, <span style='color: red;'>90012</span> If UPORES01(Device Type) is Other, UPTXT01(Other Type Specify) should not be blank <span style='color: red;'>1330002</span>, <span style='color: red;'>1330002</span>

Length of UPID01(Sensor number) should be 1 

UPID02(Clinic Visit Number) should not be blank <span style='color: red;'>1330001</span>, <span style='color: red;'>1330002</span>, <span style='color: red;'>1330003</span>, <span style='color: red;'>1330004</span>, <span style='color: red;'>1330005</span>, <span style='color: red;'>1330005</span>, <span style='color: red;'>1330006</span>, <span style='color: red;'>1330007</span>, <span style='color: red;'>1330008</span>, <span style='color: red;'>1330010</span>, <span style='color: red;'>90001</span>, <span style='color: red;'>90001</span>, <span style='color: red;'>90001</span>, <span style='color: red;'>90001</span>, <span style='color: red;'>90003</span>, <span style='color: red;'>90003</span>, <span style='color: red;'>90004</span>, <span style='color: red;'>90004</span>, <span style='color: red;'>90005</span>, <span style='color: red;'>90005</span>, <span style='color: red;'>90006</span>, <span style='color: red;'>90006</span>, <span style='color: red;'>90007</span>, <span style='color: red;'>90007</span>, <span style='color: red;'>90008</span>, <span style='color: red;'>90008</span>, <span style='color: red;'>90009</span>, <span style='color: red;'>90009</span>, <span style='color: red;'>90010</span>, <span style='color: red;'>90010</span>, <span style='color: red;'>90012</span>, <span style='color: red;'>90012</span>

UPDTC01(Date of Upload) should not be blank <span style='color: red;'>1330001</span>, <span style='color: red;'>1330002</span>, <span style='color: red;'>1330002</span>, <span style='color: red;'>1330003</span>, <span style='color: red;'>1330004</span>, <span style='color: red;'>1330005</span>, <span style='color: red;'>1330005</span>, <span style='color: red;'>1330006</span>, <span style='color: red;'>1330007</span>, <span style='color: red;'>1330008</span>, <span style='color: red;'>1330010</span>, <span style='color: red;'>90001</span>, <span style='color: red;'>90001</span>, <span style='color: red;'>90001</span>, <span style='color: red;'>90001</span>, <span style='color: red;'>90003</span>, <span style='color: red;'>90003</span>, <span style='color: red;'>90004</span>, <span style='color: red;'>90004</span>, <span style='color: red;'>90005</span>, <span style='color: red;'>90005</span>, <span style='color: red;'>90006</span>, <span style='color: red;'>90006</span>, <span style='color: red;'>90007</span>, <span style='color: red;'>90007</span>, <span style='color: red;'>90008</span>, <span style='color: red;'>90008</span>, <span style='color: red;'>90009</span>, <span style='color: red;'>90009</span>, <span style='color: red;'>90010</span>, <span style='color: red;'>90010</span>, <span style='color: red;'>90012</span>, <span style='color: red;'>90012</span>

Length of UPDTC01(Date of Upload) should be <span style='color: red;'>10</span> <span style='color: red;'>1330001</span>, <span style='color: red;'>1330002</span>, <span style='color: red;'>1330002</span>, <span style='color: red;'>1330003</span>, <span style='color: red;'>1330004</span>, <span style='color: red;'>1330005</span>, <span style='color: red;'>1330005</span>, <span style='color: red;'>1330006</span>, <span style='color: red;'>1330007</span>, <span style='color: red;'>1330008</span>, <span style='color: red;'>1330010</span>, <span style='color: red;'>90001</span>, <span style='color: red;'>90001</span>, <span style='color: red;'>90001</span>, <span style='color: red;'>90001</span>, <span style='color: red;'>90003</span>, <span style='color: red;'>90003</span>, <span style='color: red;'>90004</span>, <span style='color: red;'>90004</span>, <span style='color: red;'>90005</span>, <span style='color: red;'>90005</span>, <span style='color: red;'>90006</span>, <span style='color: red;'>90006</span>, <span style='color: red;'>90007</span>, <span style='color: red;'>90007</span>, <span style='color: red;'>90008</span>, <span style='color: red;'>90008</span>, <span style='color: red;'>90009</span>, <span style='color: red;'>90009</span>, <span style='color: red;'>90010</span>, <span style='color: red;'>90010</span>, <span style='color: red;'>90012</span>, <span style='color: red;'>90012</span>

UPDTC01(Time of Upload) should not be blank <span style='color: red;'>1330001</span>, <span style='color: red;'>1330002</span>, <span style='color: red;'>1330002</span>, <span style='color: red;'>1330003</span>, <span style='color: red;'>1330004</span>, <span style='color: red;'>1330005</span>, <span style='color: red;'>1330005</span>, <span style='color: red;'>1330006</span>, <span style='color: red;'>1330007</span>, <span style='color: red;'>1330008</span>, <span style='color: red;'>1330010</span>, <span style='color: red;'>90001</span>, <span style='color: red;'>90001</span>, <span style='color: red;'>90001</span>, <span style='color: red;'>90001</span>, <span style='color: red;'>90003</span>, <span style='color: red;'>90003</span>, <span style='color: red;'>90004</span>, <span style='color: red;'>90004</span>, <span style='color: red;'>90005</span>, <span style='color: red;'>90005</span>, <span style='color: red;'>90006</span>, <span style='color: red;'>90006</span>, <span style='color: red;'>90007</span>, <span style='color: red;'>90007</span>, <span style='color: red;'>90008</span>, <span style='color: red;'>90008</span>, <span style='color: red;'>90009</span>, <span style='color: red;'>90009</span>, <span style='color: red;'>90010</span>, <span style='color: red;'>90010</span>, <span style='color: red;'>90012</span>, <span style='color: red;'>90012</span>

Length of UPDTC01(Time of Upload) should be <span style='color: red;'>8</span> <span style='color: red;'>1330001</span>, <span style='color: red;'>1330002</span>, <span style='color: red;'>1330002</span>, <span style='color: red;'>1330003</span>, <span style='color: red;'>1330004</span>, <span style='color: red;'>1330005</span>, <span style='color: red;'>1330005</span>, <span style='color: red;'>1330006</span>, <span style='color: red;'>1330007</span>, <span style='color: red;'>1330008</span>, <span style='color: red;'>1330010</span>, <span style='color: red;'>90001</span>, <span style='color: red;'>90001</span>, <span style='color: red;'>90001</span>, <span style='color: red;'>90001</span>, <span style='color: red;'>90003</span>, <span style='color: red;'>90003</span>, <span style='color: red;'>90004</span>, <span style='color: red;'>90004</span>, <span style='color: red;'>90005</span>, <span style='color: red;'>90005</span>, <span style='color: red;'>90006</span>, <span style='color: red;'>90006</span>, <span style='color: red;'>90007</span>, <span style='color: red;'>90007</span>, <span style='color: red;'>90008</span>, <span style='color: red;'>90008</span>, <span style='color: red;'>90009</span>, <span style='color: red;'>90009</span>, <span style='color: red;'>90010</span>, <span style='color: red;'>90010</span>, <span style='color: red;'>90012</span>, <span style='color: red;'>90012</span>

# **IE Review**

`<a href="//oneabbott.com/dept/ADC/Technical_OPS/Clinical_Affairs/Clinical Study Files/Apollo/ADC-US-RES-23234_IDE Pump Suspension Study/Case Report Forms/Version B/Approved/pdf/Informed_Consent.pdf">Informed Consent</a>`{=html}


::: {.cell}

:::

::: {.cell}
::: {.cell-output-display}

```{=html}
<button onclick="Reactable.downloadDataCSV(&#39;ie&#39;, &#39;ie.csv&#39;)">
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:currentColor;overflow:visible;position:relative;"><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V274.7l-73.4-73.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l128 128c12.5 12.5 32.8 12.5 45.3 0l128-128c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L288 274.7V32zM64 352c-35.3 0-64 28.7-64 64v32c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V416c0-35.3-28.7-64-64-64H346.5l-45.3 45.3c-25 25-65.5 25-90.5 0L165.5 352H64zm368 56a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"/></svg>
Download as CSV
</button>
<div class="reactable html-widget html-fill-item" id="ie" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="ie">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":[],"__STUDYEVENTREPEATKEY":[],"IEDTC01":[],"IEORES01":[],"IEDTC02":[],"IEORES02":[],"IEORES03":[]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"__STUDYEVENTREPEATKEY","name":"__STUDYEVENTREPEATKEY","type":"character","minWidth":115,"align":"center"},{"id":"IEDTC01","name":"IEDTC01","type":"Date","minWidth":115,"align":"center"},{"id":"IEORES01","name":"IEORES01","type":"character","minWidth":115,"align":"center"},{"id":"IEDTC02","name":"IEDTC02","type":"Date","minWidth":115,"align":"center"},{"id":"IEORES02","name":"IEORES02","type":"character","minWidth":115,"align":"center"},{"id":"IEORES03","name":"IEORES03","type":"character","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"elementId":"ie","dataKey":"b83c09057361c38c8525f717d960ad6d"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::




IEDTC01(Visit Date) should not be blank 

Length of IEDTC01(Visit Date) should be <span style='color: red;'>10</span>

IEORES01(Consent Type) should be either Initial Consent or Re-consent 

IEDTC02(Date Informed Consent Form was signed) should not be blank 

Length of IEDTC02(Date Informed Consent Form was signed) should be <span style='color: red;'>10</span>

IEORES02(Was the informed consent process and documentation completed prior to any study procedures on/with this subject?) should be either Yes or No 

If IEORES02(Was the informed consent process and documentation completed prior to any study procedures on/with this subject?) is No, IEORES03(If No, please provide Protocol Deviation Report Number:) should not be blank 

# **IE001 Review**

`<a href="//oneabbott.com/dept/ADC/Technical_OPS/Clinical_Affairs/Clinical Study Files/Apollo/ADC-US-RES-23234_IDE Pump Suspension Study/Case Report Forms/Version B/Approved/pdf/Eligibility.pdf">Eligibility</a>`{=html}


::: {.cell}

:::

::: {.cell}
::: {.cell-output-display}

```{=html}
<button onclick="Reactable.downloadDataCSV(&#39;ie001&#39;, &#39;ie001.csv&#39;)">
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:currentColor;overflow:visible;position:relative;"><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V274.7l-73.4-73.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l128 128c12.5 12.5 32.8 12.5 45.3 0l128-128c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L288 274.7V32zM64 352c-35.3 0-64 28.7-64 64v32c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V416c0-35.3-28.7-64-64-64H346.5l-45.3 45.3c-25 25-65.5 25-90.5 0L165.5 352H64zm368 56a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"/></svg>
Download as CSV
</button>
<div class="reactable html-widget html-fill-item" id="ie001" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="ie001">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":[],"__STUDYEVENTREPEATKEY":[],"IEDTC01":[],"IEORES01":[],"IEORES02":[]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"__STUDYEVENTREPEATKEY","name":"__STUDYEVENTREPEATKEY","type":"character","minWidth":115,"align":"center"},{"id":"IEDTC01","name":"IEDTC01","type":"Date","minWidth":115,"align":"center"},{"id":"IEORES01","name":"IEORES01","type":"character","minWidth":115,"align":"center"},{"id":"IEORES02","name":"IEORES02","type":"character","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"elementId":"ie001","dataKey":"6c762e6c7d6d9fd4e1a4aa741fa41c65"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::




IEDTC01(Visit Date) should not be blank 

Length of IEDTC01(Visit Date) should be <span style='color: red;'>10</span>

IEORES01(Did Subject meet all the Inclusion Criteria and none of the Exclusion Criteria?) should be either Yes or No 

If IEORES01(Did Subject meet all the Inclusion Criteria and none of the Exclusion Criteria?) is No, so IEORES02(If No Please provide the Inclusion/Exclusion Number(s) not satisfied) should not be blank 


# **IV1 Review**

`<a href="//oneabbott.com/dept/ADC/Technical_OPS/Clinical_Affairs/Clinical Study Files/Apollo/ADC-US-RES-23234_IDE Pump Suspension Study/Case Report Forms/Version B/Approved/pdf/IV_Sample_Collection.pdf">IV Sample Collection</a>`{=html}


::: {.cell}

:::

::: {.cell}
::: {.cell-output-display}

```{=html}
<button onclick="Reactable.downloadDataCSV(&#39;iv1&#39;, &#39;iv1.csv&#39;)">
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:currentColor;overflow:visible;position:relative;"><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V274.7l-73.4-73.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l128 128c12.5 12.5 32.8 12.5 45.3 0l128-128c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L288 274.7V32zM64 352c-35.3 0-64 28.7-64 64v32c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V416c0-35.3-28.7-64-64-64H346.5l-45.3 45.3c-25 25-65.5 25-90.5 0L165.5 352H64zm368 56a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"/></svg>
Download as CSV
</button>
<div class="reactable html-widget html-fill-item" id="iv1" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="iv1">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":[],"IVYN01":[],"IVDTC01":[]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"IVYN01","name":"IVYN01","type":"character","minWidth":115,"align":"center"},{"id":"IVDTC01","name":"IVDTC01","type":"Date","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"elementId":"iv1","dataKey":"7758793153235c558a3b321f513e037e"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::




IVDTC01(IV Draw Date) should not be blank 

Length of IVDTC01(IV Draw Date) should be <span style='color: red;'>10</span> 


# **IV2 Review**

`<a href="//oneabbott.com/dept/ADC/Technical_OPS/Clinical_Affairs/Clinical Study Files/Apollo/ADC-US-RES-23234_IDE Pump Suspension Study/Case Report Forms/Version B/Approved/pdf/IV_Sample_Collection.pdf">IV Sample Collection</a>`{=html}


::: {.cell}

:::

::: {.cell}
::: {.cell-output-display}

```{=html}
<button onclick="Reactable.downloadDataCSV(&#39;iv2&#39;, &#39;iv2.csv&#39;)">
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:currentColor;overflow:visible;position:relative;"><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V274.7l-73.4-73.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l128 128c12.5 12.5 32.8 12.5 45.3 0l128-128c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L288 274.7V32zM64 352c-35.3 0-64 28.7-64 64v32c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V416c0-35.3-28.7-64-64-64H346.5l-45.3 45.3c-25 25-65.5 25-90.5 0L165.5 352H64zm368 56a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"/></svg>
Download as CSV
</button>
<div class="reactable html-widget html-fill-item" id="iv2" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="iv2">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":["1330002","90004","90009"],"__ITEMGROUPREPEATKEY":["8","26","33"],"IVID01":["NA",20426,"NA"],"IVTM01":["","13:02",""],"IVTM02":["","",""],"IVTM03":["","",""],"IVVAL01":["","Invalid: Other (describe in Comments)",""],"IVCOM01":["","Sample inadvertently thrown away, see PD #01.",""]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"__ITEMGROUPREPEATKEY","name":"__ITEMGROUPREPEATKEY","type":"character","minWidth":115,"align":"center"},{"id":"IVID01","name":"IVID01","type":"numeric","minWidth":115,"align":"center"},{"id":"IVTM01","name":"IVTM01","type":"character","minWidth":115,"align":"center"},{"id":"IVTM02","name":"IVTM02","type":"character","minWidth":115,"align":"center"},{"id":"IVTM03","name":"IVTM03","type":"character","minWidth":115,"align":"center"},{"id":"IVVAL01","name":"IVVAL01","type":"character","minWidth":115,"align":"center"},{"id":"IVCOM01","name":"IVCOM01","type":"character","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"elementId":"iv2","dataKey":"325184ce43c4f40efa4913adde823754"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::




IVID01(Sample Number) should not be blank <span style='color: red;'>1330002</span>, <span style='color: red;'>90009</span>

IVTM01(IV sample draw time) should not be blank <span style='color: red;'>1330002</span>, <span style='color: red;'>90009</span>

Length of IVTM01(IV sample draw time) should be <span style='color: red;'>5</span> <span style='color: red;'>1330002</span>, <span style='color: red;'>90009</span>

The delimiter of IVTM01(IV sample draw time) should be colon <span style='color: red;'>1330002</span>, <span style='color: red;'>90009</span>

IVTM02(Centrifuge Completion Time) should not be blank <span style='color: red;'>1330002</span>, <span style='color: red;'>90004</span>, <span style='color: red;'>90009</span>

Length of IVTM02(Centrifuge Completion Time) should be <span style='color: red;'>5</span> <span style='color: red;'>1330002</span>, <span style='color: red;'>90004</span>, <span style='color: red;'>90009</span>

The delimiter of IVTM02(Centrifuge Completion Time) should be colon <span style='color: red;'>1330002</span>, <span style='color: red;'>90004</span>, <span style='color: red;'>90009</span>

IVTM03(Sample Frozen Time (24-hr)) should not be blank <span style='color: red;'>1330002</span>, <span style='color: red;'>90004</span>, <span style='color: red;'>90009</span>

Length of IVTM03(Sample Frozen Time (24-hr)) should be <span style='color: red;'>5</span> <span style='color: red;'>1330002</span>, <span style='color: red;'>90004</span>, <span style='color: red;'>90009</span>

The delimiter of IVTM03(Sample Frozen Time (24-hr)) should be colon <span style='color: red;'>1330002</span>, <span style='color: red;'>90004</span>, <span style='color: red;'>90009</span>

IVVAL01(IV Sample Viability) should not be blank <span style='color: red;'>1330002</span>, <span style='color: red;'>90009</span>


::: {.cell}
::: {.cell-output-display}

```{=html}
<h1 style="color:#000;background:#FFFFFF;text-align:center;font-size:32px;font-style:normal;font-weight:bold;text-decoration:;letter-spacing:px;word-spacing:px;text-transform:;text-shadow:;margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px">IV Sample Collection Sample ID</h1>
<div class="reactable html-widget html-fill-item" id="htmlwidget-cae0d0074b99345c45f0" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="htmlwidget-cae0d0074b99345c45f0">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":["1330002","1330002","1330002","1330002","1330002","1330002","1330002","1330002","1330002","1330002","1330002","1330002","1330002","1330002","1330002","1330002","1330002"],"__ITEMGROUPREPEATKEY":["09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25"],"IVID01":["10208","10209","10210","10211","10212","10213","10214","10215","10216","10217","10218","10219","10220","10221","10222","10223","10224"],"ID":["10209","10210","10211","10212","10213","10214","10215","10216","10217","10218","10219","10220","10221","10222","10223","10224","10225"]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"__ITEMGROUPREPEATKEY","name":"__ITEMGROUPREPEATKEY","type":"character","minWidth":115,"align":"center"},{"id":"IVID01","name":"IVID01","type":"character","minWidth":115,"align":"center"},{"id":"ID","name":"ID","type":"character","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"dataKey":"c0cc40d2dc214d950055f70eb735545f"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::


# **KD1 Review**

`<a href="//oneabbott.com/dept/ADC/Technical_OPS/Clinical_Affairs/Clinical Study Files/Apollo/ADC-US-RES-23234_IDE Pump Suspension Study/Case Report Forms/Version B/Approved/pdf/Safety_Parameter_Log.pdf">Safety Parameter Log</a>`{=html}


::: {.cell}

:::

::: {.cell}
::: {.cell-output-display}

```{=html}
<button onclick="Reactable.downloadDataCSV(&#39;kd1&#39;, &#39;kd1.csv&#39;)">
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:currentColor;overflow:visible;position:relative;"><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V274.7l-73.4-73.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l128 128c12.5 12.5 32.8 12.5 45.3 0l128-128c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L288 274.7V32zM64 352c-35.3 0-64 28.7-64 64v32c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V416c0-35.3-28.7-64-64-64H346.5l-45.3 45.3c-25 25-65.5 25-90.5 0L165.5 352H64zm368 56a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"/></svg>
Download as CSV
</button>
<div class="reactable html-widget html-fill-item" id="kd1" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="kd1">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":[],"KDDTC01":[]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"KDDTC01","name":"KDDTC01","type":"Date","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"elementId":"kd1","dataKey":"ab6d65656f406d93860c7ef87abca79b"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::




KDDTC01(Date) should not be blank 

Length of KDDTC01(Date) should be <span style='color: red;'>10</span> 

# **KD2 Review**

`<a href="//oneabbott.com/dept/ADC/Technical_OPS/Clinical_Affairs/Clinical Study Files/Apollo/ADC-US-RES-23234_IDE Pump Suspension Study/Case Report Forms/Version B/Approved/pdf/Safety_Parameter_Log.pdf">Safety Parameter Log</a>`{=html}


::: {.cell}

:::

::: {.cell}
::: {.cell-output-display}

```{=html}
<button onclick="Reactable.downloadDataCSV(&#39;kd2&#39;, &#39;kd2.csv&#39;)">
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:currentColor;overflow:visible;position:relative;"><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V274.7l-73.4-73.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l128 128c12.5 12.5 32.8 12.5 45.3 0l128-128c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L288 274.7V32zM64 352c-35.3 0-64 28.7-64 64v32c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V416c0-35.3-28.7-64-64-64H346.5l-45.3 45.3c-25 25-65.5 25-90.5 0L165.5 352H64zm368 56a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"/></svg>
Download as CSV
</button>
<div class="reactable html-widget html-fill-item" id="kd2" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="kd2">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":["1330009"],"__ITEMGROUPREPEATKEY":["1"],"KDID01":["NA"],"KDORES02":["NA"],"KDORES03":[""],"KDORES04":["NA"],"KDORES05":[""],"KDORES06":["NA"],"KDORES07":[""],"KDORES08":["NA"],"KDORES09":[""],"KDORES10":[""]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"__ITEMGROUPREPEATKEY","name":"__ITEMGROUPREPEATKEY","type":"character","minWidth":115,"align":"center"},{"id":"KDID01","name":"KDID01","type":"numeric","minWidth":115,"align":"center"},{"id":"KDORES02","name":"KDORES02","type":"numeric","minWidth":115,"align":"center"},{"id":"KDORES03","name":"KDORES03","type":"character","minWidth":115,"align":"center"},{"id":"KDORES04","name":"KDORES04","type":"numeric","minWidth":115,"align":"center"},{"id":"KDORES05","name":"KDORES05","type":"character","minWidth":115,"align":"center"},{"id":"KDORES06","name":"KDORES06","type":"numeric","minWidth":115,"align":"center"},{"id":"KDORES07","name":"KDORES07","type":"character","minWidth":115,"align":"center"},{"id":"KDORES08","name":"KDORES08","type":"numeric","minWidth":115,"align":"center"},{"id":"KDORES09","name":"KDORES09","type":"character","minWidth":115,"align":"center"},{"id":"KDORES10","name":"KDORES10","type":"character","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"elementId":"kd2","dataKey":"02d480844129c08921f0aa5cc9811821"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::




KDID01(Sample ID) should not be blank <span style='color: red;'>1330009</span>

KDORES02(Ketone Test Result (mmol/L)) and KDORES03(Check here if result was not obtained (Ketone)) should not be blank at the same time <span style='color: red;'>1330009</span>

KDORES04(Glucose Test Result (mmol/L)) and KDORES05(Check here if result was not obtained (Glucose)) should not be blank at the same time <span style='color: red;'>1330009</span>

KDORES06(pH Test Result (pH units)) and KDORES07(Check here if result was not obtained (pH)) should not be blank at the same time <span style='color: red;'>1330009</span>

KDORES08(Potassium Test Result (mmol/L)) and KDORES09(Check here if result was not obtained (Potassium)) should not be blank at the same time <span style='color: red;'>1330009</span>

KDORES10(Symptoms) should be either Yes or No <span style='color: red;'>1330009</span>


::: {.cell}
::: {.cell-output-display}

```{=html}
<h1 style="color:#000;background:#FFFFFF;text-align:center;font-size:32px;font-style:normal;font-weight:bold;text-decoration:;letter-spacing:px;word-spacing:px;text-transform:;text-shadow:;margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px">Safety Parameter Log Sample ID</h1>
<div class="reactable html-widget html-fill-item" id="htmlwidget-9a7381e9f76581289357" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="htmlwidget-9a7381e9f76581289357">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":[],"__ITEMGROUPREPEATKEY":[],"KDID01":[],"ID":[]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"__ITEMGROUPREPEATKEY","name":"__ITEMGROUPREPEATKEY","type":"character","minWidth":115,"align":"center"},{"id":"KDID01","name":"KDID01","type":"character","minWidth":115,"align":"center"},{"id":"ID","name":"ID","type":"character","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"dataKey":"f6de38bfb82d16d9337d3842fe81e42c"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::


# **KGR1 Review**

`<a href="//oneabbott.com/dept/ADC/Technical_OPS/Clinical_Affairs/Clinical Study Files/Apollo/ADC-US-RES-23234_IDE Pump Suspension Study/Case Report Forms/Version B/Approved/pdf/Ketone_Glucose_Results.pdf">Ketone and Glucose Results</a>`{=html}


::: {.cell}

:::

::: {.cell}
::: {.cell-output-display}

```{=html}
<button onclick="Reactable.downloadDataCSV(&#39;kgr1&#39;, &#39;kgr1.csv&#39;)">
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:currentColor;overflow:visible;position:relative;"><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V274.7l-73.4-73.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l128 128c12.5 12.5 32.8 12.5 45.3 0l128-128c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L288 274.7V32zM64 352c-35.3 0-64 28.7-64 64v32c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V416c0-35.3-28.7-64-64-64H346.5l-45.3 45.3c-25 25-65.5 25-90.5 0L165.5 352H64zm368 56a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"/></svg>
Download as CSV
</button>
<div class="reactable html-widget html-fill-item" id="kgr1" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="kgr1">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":[],"KRDTC01":[]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"KRDTC01","name":"KRDTC01","type":"Date","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"elementId":"kgr1","dataKey":"40fb5fd58a50f4875fd1e14508539fc3"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::




KRDTC01(Date) should not be blank 

Length of KRDTC01(Date) should be <span style='color: red;'>10</span> 

# **KGR2 Review**

`<a href="//oneabbott.com/dept/ADC/Technical_OPS/Clinical_Affairs/Clinical Study Files/Apollo/ADC-US-RES-23234_IDE Pump Suspension Study/Case Report Forms/Version B/Approved/pdf/Ketone_Glucose_Results.pdf">Ketone and Glucose Results</a>`{=html}


::: {.cell}

:::

::: {.cell}
::: {.cell-output-display}

```{=html}
<button onclick="Reactable.downloadDataCSV(&#39;kgr2&#39;, &#39;kgr2.csv&#39;)">
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:currentColor;overflow:visible;position:relative;"><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V274.7l-73.4-73.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l128 128c12.5 12.5 32.8 12.5 45.3 0l128-128c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L288 274.7V32zM64 352c-35.3 0-64 28.7-64 64v32c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V416c0-35.3-28.7-64-64-64H346.5l-45.3 45.3c-25 25-65.5 25-90.5 0L165.5 352H64zm368 56a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"/></svg>
Download as CSV
</button>
<div class="reactable html-widget html-fill-item" id="kgr2" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="kgr2">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":["1330006","1330006"],"__ITEMGROUPREPEATKEY":["29","30"],"KRSEQ02":["NA",10629],"KRSEQ01":["NA","NA"],"KRDTC02":["",""],"KRSEQ03":["NA",210],"KRDTC03":["","15:55"],"KRCOM01":["",""]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"__ITEMGROUPREPEATKEY","name":"__ITEMGROUPREPEATKEY","type":"character","minWidth":115,"align":"center"},{"id":"KRSEQ02","name":"KRSEQ02","type":"numeric","minWidth":115,"align":"center"},{"id":"KRSEQ01","name":"KRSEQ01","type":"numeric","minWidth":115,"align":"center"},{"id":"KRDTC02","name":"KRDTC02","type":"character","minWidth":115,"align":"center"},{"id":"KRSEQ03","name":"KRSEQ03","type":"numeric","minWidth":115,"align":"center"},{"id":"KRDTC03","name":"KRDTC03","type":"character","minWidth":115,"align":"center"},{"id":"KRCOM01","name":"KRCOM01","type":"character","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"elementId":"kgr2","dataKey":"11e6981981445d1544c34da0e8bf1f81"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::




KRSEQ02(Sample Number) should not be blank <span style='color: red;'>1330006</span> 

KRSEQ01(Ketone Results (mmol/L)) should not be blank <span style='color: red;'>1330006</span>, <span style='color: red;'>1330006</span> 

KRDTC02(Ketone Time (24-hr)) should not be blank <span style='color: red;'>1330006</span>, <span style='color: red;'>1330006</span>

Length of KRDTC02(Ketone Time (24-hr)) should be <span style='color: red;'>5</span> <span style='color: red;'>1330006</span>, <span style='color: red;'>1330006</span>

The delimiter of KRDTC02(Ketone Time (24-hr)) should be colon <span style='color: red;'>1330006</span>, <span style='color: red;'>1330006</span>

KRSEQ03(Glucose Results (mg/dL)) should not be blank <span style='color: red;'>1330006</span>

KRDTC03(Glucose Time (24-hr)) should not be blank <span style='color: red;'>1330006</span>

Length of KRDTC03(Glucose Time (24-hr)) should be <span style='color: red;'>5</span> <span style='color: red;'>1330006</span>

The delimiter of KRDTC03(Glucose Time (24-hr)) should be colon <span style='color: red;'>1330006</span>


::: {.cell}
::: {.cell-output-display}

```{=html}
<h1 style="color:#000;background:#FFFFFF;text-align:center;font-size:32px;font-style:normal;font-weight:bold;text-decoration:;letter-spacing:px;word-spacing:px;text-transform:;text-shadow:;margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px">Ketone Glucose Results Sample ID</h1>
<div class="reactable html-widget html-fill-item" id="htmlwidget-55233d16a30181b03501" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="htmlwidget-55233d16a30181b03501">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":["1330006","90013","90013","90013","90013","90013","90013","90013","90013","90013","90013"],"__ITEMGROUPREPEATKEY":["30","23","24","25","26","27","28","29","30","31","32"],"KRSEQ02":["10629","21324","21325","21326","21327","21328","21329","21330","21331","21332","21323"],"ID":["10630","21323","21324","21325","21326","21327","21328","21329","21330","21331","21332"]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"__ITEMGROUPREPEATKEY","name":"__ITEMGROUPREPEATKEY","type":"character","minWidth":115,"align":"center"},{"id":"KRSEQ02","name":"KRSEQ02","type":"character","minWidth":115,"align":"center"},{"id":"ID","name":"ID","type":"character","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"dataKey":"24a2122d5fc92dd02513baca7220643e"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::


# **LB1 Review**

`<a href="//oneabbott.com/dept/ADC/Technical_OPS/Clinical_Affairs/Clinical Study Files/Apollo/ADC-US-RES-23234_IDE Pump Suspension Study/Case Report Forms/Version B/Approved/pdf/Lab_Data.pdf">Lab Data</a>`{=html}


::: {.cell}

:::

::: {.cell}
::: {.cell-output-display}

```{=html}
<button onclick="Reactable.downloadDataCSV(&#39;lb1&#39;, &#39;lb1.csv&#39;)">
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:currentColor;overflow:visible;position:relative;"><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V274.7l-73.4-73.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l128 128c12.5 12.5 32.8 12.5 45.3 0l128-128c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L288 274.7V32zM64 352c-35.3 0-64 28.7-64 64v32c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V416c0-35.3-28.7-64-64-64H346.5l-45.3 45.3c-25 25-65.5 25-90.5 0L165.5 352H64zm368 56a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"/></svg>
Download as CSV
</button>
<div class="reactable html-widget html-fill-item" id="lb1" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="lb1">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":[],"LBDTC01":[]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"LBDTC01","name":"LBDTC01","type":"Date","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"elementId":"lb1","dataKey":"a88409ee26dd55c76ca00cb943b47255"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::




LBDTC01(Date samples taken) should not be blank 

Length of LBDTC01(Date samples taken) should be <span style='color: red;'>10</span> 

# **LB2 Review**

`<a href="//oneabbott.com/dept/ADC/Technical_OPS/Clinical_Affairs/Clinical Study Files/Apollo/ADC-US-RES-23234_IDE Pump Suspension Study/Case Report Forms/Version B/Approved/pdf/Lab_Data.pdf">Lab Data</a>`{=html}


::: {.cell}

:::

::: {.cell}
::: {.cell-output-display}

```{=html}
<button onclick="Reactable.downloadDataCSV(&#39;lb2&#39;, &#39;lb2.csv&#39;)">
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:currentColor;overflow:visible;position:relative;"><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V274.7l-73.4-73.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l128 128c12.5 12.5 32.8 12.5 45.3 0l128-128c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L288 274.7V32zM64 352c-35.3 0-64 28.7-64 64v32c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V416c0-35.3-28.7-64-64-64H346.5l-45.3 45.3c-25 25-65.5 25-90.5 0L165.5 352H64zm368 56a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"/></svg>
Download as CSV
</button>
<div class="reactable html-widget html-fill-item" id="lb2" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="lb2">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":["1330005","90003"],"__ITEMGROUPREPEATKEY":["2","2"],"LBID01":["",""],"LBORES01":["",""],"LBORES02":["",""],"LBREAS01":["",""]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"__ITEMGROUPREPEATKEY","name":"__ITEMGROUPREPEATKEY","type":"character","minWidth":115,"align":"center"},{"id":"LBID01","name":"LBID01","type":"character","minWidth":115,"align":"center"},{"id":"LBORES01","name":"LBORES01","type":"character","minWidth":115,"align":"center"},{"id":"LBORES02","name":"LBORES02","type":"character","minWidth":115,"align":"center"},{"id":"LBREAS01","name":"LBREAS01","type":"character","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"elementId":"lb2","dataKey":"77f4c267e653faf5eaafeceef4cc5768"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::




LBID01(Analyte) should be HbA1c <span style='color: red;'>1330005</span>, <span style='color: red;'>90003</span>

LBORES01(Test Result) should not be blank <span style='color: red;'>1330005</span>, <span style='color: red;'>90003</span>

LBORES02(UOM) should be % <span style='color: red;'>1330005</span>, <span style='color: red;'>90003</span>

# **MA Review**

`<a href="//oneabbott.com/dept/ADC/Technical_OPS/Clinical_Affairs/Clinical Study Files/Apollo/ADC-US-RES-23234_IDE Pump Suspension Study/Case Report Forms/Version B/Approved/pdf/SGLT_Medication_Assessment.pdf">SGLT Medication Assessment Form</a>`{=html}


::: {.cell}

:::

::: {.cell}
::: {.cell-output-display}

```{=html}
<button onclick="Reactable.downloadDataCSV(&#39;ma&#39;, &#39;ma.csv&#39;)">
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:currentColor;overflow:visible;position:relative;"><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V274.7l-73.4-73.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l128 128c12.5 12.5 32.8 12.5 45.3 0l128-128c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L288 274.7V32zM64 352c-35.3 0-64 28.7-64 64v32c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V416c0-35.3-28.7-64-64-64H346.5l-45.3 45.3c-25 25-65.5 25-90.5 0L165.5 352H64zm368 56a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"/></svg>
Download as CSV
</button>
<div class="reactable html-widget html-fill-item" id="ma" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="ma">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":[],"QSDTC01":[],"QSORES01":[],"QSORES02":[],"QSORES03":[],"QSORES04":[],"QSORES05":[],"QSORES06":[],"QSORES07":[],"QSORES08":[],"QSORES09":[],"QSTXT01":[]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"QSDTC01","name":"QSDTC01","type":"Date","minWidth":115,"align":"center"},{"id":"QSORES01","name":"QSORES01","type":"character","minWidth":115,"align":"center"},{"id":"QSORES02","name":"QSORES02","type":"character","minWidth":115,"align":"center"},{"id":"QSORES03","name":"QSORES03","type":"character","minWidth":115,"align":"center"},{"id":"QSORES04","name":"QSORES04","type":"character","minWidth":115,"align":"center"},{"id":"QSORES05","name":"QSORES05","type":"character","minWidth":115,"align":"center"},{"id":"QSORES06","name":"QSORES06","type":"character","minWidth":115,"align":"center"},{"id":"QSORES07","name":"QSORES07","type":"character","minWidth":115,"align":"center"},{"id":"QSORES08","name":"QSORES08","type":"character","minWidth":115,"align":"center"},{"id":"QSORES09","name":"QSORES09","type":"character","minWidth":115,"align":"center"},{"id":"QSTXT01","name":"QSTXT01","type":"character","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"elementId":"ma","dataKey":"a32c077e1c75418434444f83fd3bddc6"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::




QSDTC01(Visit Date) should not be blank 

Length of QSDTC01(Visit Date) should be <span style='color: red;'>10</span> 

QSORES01(Is subject currently using Invokana (canagliflozin)?) should be either Yes or No 

QSORES02(Is subject currently using Farxiga (dapagliflozin)?) should be either Yes or No 

QSORES03(Is subject currently using Jardiance (empagliflozin)?) should be either Yes or No 

QSORES04(Is subject currently using Steglatro (ertugliflozin)?) should be either Yes or No 

QSORES05(Is subject currently using Xigduo XR (dapagliflozin/metformin)?) should be either Yes or No 

QSORES06(Is subject currently using Glyxambi (empagliflozin/linagliptin)?) should be either Yes or No 

QSORES07(Is subject currently using Synjardy (empagliflozin/metformin)?) should be either Yes or No 

QSORES08(Is subject currently using Zynquista (sotagliflozin)?) should be either Yes or No 

QSORES09(Is the subject currently using any type of SGLT-2 inhibitor not listed above?) should be either Yes or No  If QSORES09(Is the subject currently using any type of SGLT-2 inhibitor not listed above?) is Yes, QSTXT01(If yes, please specify the SGLT-2 inhibitor name) should not be blank 

# **MH1 Review**

`<a href="//oneabbott.com/dept/ADC/Technical_OPS/Clinical_Affairs/Clinical Study Files/Apollo/ADC-US-RES-23234_IDE Pump Suspension Study/Case Report Forms/Version B/Approved/pdf/Diabetes_History.pdf">Diabetes History</a>`{=html}


::: {.cell}

:::

::: {.cell}
::: {.cell-output-display}

```{=html}
<button onclick="Reactable.downloadDataCSV(&#39;mh1&#39;, &#39;mh1.csv&#39;)">
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:currentColor;overflow:visible;position:relative;"><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V274.7l-73.4-73.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l128 128c12.5 12.5 32.8 12.5 45.3 0l128-128c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L288 274.7V32zM64 352c-35.3 0-64 28.7-64 64v32c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V416c0-35.3-28.7-64-64-64H346.5l-45.3 45.3c-25 25-65.5 25-90.5 0L165.5 352H64zm368 56a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"/></svg>
Download as CSV
</button>
<div class="reactable html-widget html-fill-item" id="mh1" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="mh1">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":[],"__STUDYEVENTREPEATKEY":[],"MHDTC01":[],"MHORES01":[],"MHDTC02":[],"MHORES02":[],"MHORES03":[],"MHORES04":[],"MHORES05":[],"MHDTC03":[],"MHORES06":[],"MHORES07":[],"HOW_LONG":[],"MHORES09":[]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"__STUDYEVENTREPEATKEY","name":"__STUDYEVENTREPEATKEY","type":"character","minWidth":115,"align":"center"},{"id":"MHDTC01","name":"MHDTC01","type":"Date","minWidth":115,"align":"center"},{"id":"MHORES01","name":"MHORES01","type":"character","minWidth":115,"align":"center"},{"id":"MHDTC02","name":"MHDTC02","type":"Date","minWidth":115,"align":"center"},{"id":"MHORES02","name":"MHORES02","type":"numeric","minWidth":115,"align":"center"},{"id":"MHORES03","name":"MHORES03","type":"character","minWidth":115,"align":"center"},{"id":"MHORES04","name":"MHORES04","type":"character","minWidth":115,"align":"center"},{"id":"MHORES05","name":"MHORES05","type":"character","minWidth":115,"align":"center"},{"id":"MHDTC03","name":"MHDTC03","type":"Date","minWidth":115,"align":"center"},{"id":"MHORES06","name":"MHORES06","type":"numeric","minWidth":115,"align":"center"},{"id":"MHORES07","name":"MHORES07","type":"numeric","minWidth":115,"align":"center"},{"id":"HOW_LONG","name":"HOW_LONG","type":"character","minWidth":115,"align":"center"},{"id":"MHORES09","name":"MHORES09","type":"numeric","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"elementId":"mh1","dataKey":"6f03241479cbe180bfd5ab16981d3957"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::




MHDTC01(Visit Date) should not be blank 

Length of MHDTC01(Visit Date) should be <span style='color: red;'>10</span> 

MHORES01(Type of Diabetes) should be either Type 1 or Type 2 

MHDTC02(Date of diabetes diagnosis) should not be blank 

Length of MHDTC02(Date of diabetes diagnosis) should be <span style='color: red;'>10</span> 

MHORES02(How long has the subject been using insulin?) should not be blank 

MHORES03(How long has the subject been using insulin?) should be either Years or Months 

MHORES04(Does the subject use a pump for insulin administration?) should be either Yes or No 

MHORES05(Does the subject require multiple daily insulin injections?) should be either Yes or No 

If MHORES05(Does the subject require multiple daily insulin injections?) is Yes, MHDTC03(Start date of insulin injections) and MHORES06(Number of injections per day) should not be blank at the same time 

MHORES07(How long has the subject been using the the current method of insulin administration?) should not be blank 

HOW_LONG(How long has the subject been using the the current method of insulin administration?) should be either Years or Months 

MHORES09(Total daily insulin dose (approximate)) should not be blank 


# **PD Review**

`<a href="//oneabbott.com/dept/ADC/Technical_OPS/Clinical_Affairs/Clinical Study Files/Apollo/ADC-US-RES-23234_IDE Pump Suspension Study/Case Report Forms/Version B/Approved/pdf/Protocol_Deviation_Report.pdf">Protocol Deviation Report</a>`{=html}


::: {.cell}

:::

::: {.cell}
::: {.cell-output-display}

```{=html}
<button onclick="Reactable.downloadDataCSV(&#39;pd&#39;, &#39;pd.csv&#39;)">
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:currentColor;overflow:visible;position:relative;"><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V274.7l-73.4-73.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l128 128c12.5 12.5 32.8 12.5 45.3 0l128-128c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L288 274.7V32zM64 352c-35.3 0-64 28.7-64 64v32c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V416c0-35.3-28.7-64-64-64H346.5l-45.3 45.3c-25 25-65.5 25-90.5 0L165.5 352H64zm368 56a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"/></svg>
Download as CSV
</button>
<div class="reactable html-widget html-fill-item" id="pd" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="pd">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":[],"__STUDYEVENTREPEATKEY":[],"DVDTC1":[],"DVSEQ01":[],"DVDTC2":[],"DVTERM":[],"DVCOM1":[],"DVDESC1":[],"DVDESC2":[],"DVDESC3":[],"DVCAT01":[],"DVACT1":[],"DVACT3":[],"DVACT2":[],"DVACT4":[],"DVCOM2":[],"DVDESC4":[],"DVDESC5":[],"DVDESC6":[],"DVDTC3":[]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"__STUDYEVENTREPEATKEY","name":"__STUDYEVENTREPEATKEY","type":"character","minWidth":115,"align":"center"},{"id":"DVDTC1","name":"DVDTC1","type":"Date","minWidth":115,"align":"center"},{"id":"DVSEQ01","name":"DVSEQ01","type":"character","minWidth":115,"align":"center"},{"id":"DVDTC2","name":"DVDTC2","type":"Date","minWidth":115,"align":"center"},{"id":"DVTERM","name":"DVTERM","type":"character","minWidth":115,"align":"center"},{"id":"DVCOM1","name":"DVCOM1","type":"character","minWidth":115,"align":"center"},{"id":"DVDESC1","name":"DVDESC1","type":"character","minWidth":115,"align":"center"},{"id":"DVDESC2","name":"DVDESC2","type":"character","minWidth":115,"align":"center"},{"id":"DVDESC3","name":"DVDESC3","type":"character","minWidth":115,"align":"center"},{"id":"DVCAT01","name":"DVCAT01","type":"character","minWidth":115,"align":"center"},{"id":"DVACT1","name":"DVACT1","type":"character","minWidth":115,"align":"center"},{"id":"DVACT3","name":"DVACT3","type":"character","minWidth":115,"align":"center"},{"id":"DVACT2","name":"DVACT2","type":"character","minWidth":115,"align":"center"},{"id":"DVACT4","name":"DVACT4","type":"character","minWidth":115,"align":"center"},{"id":"DVCOM2","name":"DVCOM2","type":"character","minWidth":115,"align":"center"},{"id":"DVDESC4","name":"DVDESC4","type":"character","minWidth":115,"align":"center"},{"id":"DVDESC5","name":"DVDESC5","type":"character","minWidth":115,"align":"center"},{"id":"DVDESC6","name":"DVDESC6","type":"character","minWidth":115,"align":"center"},{"id":"DVDTC3","name":"DVDTC3","type":"Date","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"elementId":"pd","dataKey":"1ea33d54ed0b1ded2d56402751812675"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::




DVDTC1(Date of Deviation) should not be blank 

Length of DVDTC1(Date of Deviation) should be <span style='color: red;'>10</span> 

DVSEQ01(Protocol Deviation Report Number) should not be blank 

DVDTC2(Date of Reported) should not be blank 

Length of DVDTC2(Date of Deviation) should be <span style='color: red;'>10</span> 

DVTERM(TYPE OF DEVIATION) should not be blank 

If DVTERM(TYPE OF DEVIATION) is other, DVCOM1(OTHER SPECIFY) should not be blank 

DVDESC1~3(Description of Deviation) should not be blank at the same time 

DVDESC1~3(Description of Deviation) should not be blank at the same time 

DVACT1(Subject withdrawn from study) should be Yes or No 

DVACT2(Inform Ethics Committee/IRB) should be Yes or No 

DVACT3(Protocol amendment required) should be Yes or No 

DVACT4(Other (please specify)) should be Yes or No  and DVACT4(Other (please specify)) if yes (DVCOM2) should not be blank 

DVDESC4~6(Action taken to prevent similar future deviation) should not be blank at the same time 

DVDTC3(Principal Investigator Acknowledgement: Date) should not be blank 

Length of DVDTC3(Principal Investigator Acknowledgement: Date) should be <span style='color: red;'>10</span> 

# **PS Review**

`<a href="//oneabbott.com/dept/ADC/Technical_OPS/Clinical_Affairs/Clinical Study Files/Apollo/ADC-US-RES-23234_IDE Pump Suspension Study/Case Report Forms/Version B/Approved/pdf/Pump_Suspension.pdf">Pump Suspension</a>`{=html}


::: {.cell}

:::

::: {.cell}
::: {.cell-output-display}

```{=html}
<button onclick="Reactable.downloadDataCSV(&#39;ps&#39;, &#39;ps.csv&#39;)">
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:currentColor;overflow:visible;position:relative;"><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V274.7l-73.4-73.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l128 128c12.5 12.5 32.8 12.5 45.3 0l128-128c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L288 274.7V32zM64 352c-35.3 0-64 28.7-64 64v32c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V416c0-35.3-28.7-64-64-64H346.5l-45.3 45.3c-25 25-65.5 25-90.5 0L165.5 352H64zm368 56a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"/></svg>
Download as CSV
</button>
<div class="reactable html-widget html-fill-item" id="ps" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="ps">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":["1330006"],"PSDTC01":["2023-10-02"],"PSORES01":[132],"PSORES02":[0.1],"PSTM01":["07:05"],"PSTM02":["08:38"],"PSORES03":[76],"PSORES04":[0.1],"PSORES05":[3.7],"PSORES06":[7.37],"PSTM03":["13:58"],"PSORES07":[396],"PSORES08":[1.1],"PSORES09":["NA"],"PSORES10":["NA"],"PSYN02":["Yes"],"PSORES11":[""],"PSTM04":["13:58"],"PSREAS01":["Two consecutive venous blood glucose readings taken at least 15 minutes apart are above 350 mg_dL."]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"PSDTC01","name":"PSDTC01","type":"Date","minWidth":115,"align":"center"},{"id":"PSORES01","name":"PSORES01","type":"numeric","minWidth":115,"align":"center"},{"id":"PSORES02","name":"PSORES02","type":"numeric","minWidth":115,"align":"center"},{"id":"PSTM01","name":"PSTM01","type":"character","minWidth":115,"align":"center"},{"id":"PSTM02","name":"PSTM02","type":"character","minWidth":115,"align":"center"},{"id":"PSORES03","name":"PSORES03","type":"numeric","minWidth":115,"align":"center"},{"id":"PSORES04","name":"PSORES04","type":"numeric","minWidth":115,"align":"center"},{"id":"PSORES05","name":"PSORES05","type":"numeric","minWidth":115,"align":"center"},{"id":"PSORES06","name":"PSORES06","type":"numeric","minWidth":115,"align":"center"},{"id":"PSTM03","name":"PSTM03","type":"character","minWidth":115,"align":"center"},{"id":"PSORES07","name":"PSORES07","type":"numeric","minWidth":115,"align":"center"},{"id":"PSORES08","name":"PSORES08","type":"numeric","minWidth":115,"align":"center"},{"id":"PSORES09","name":"PSORES09","type":"numeric","minWidth":115,"align":"center"},{"id":"PSORES10","name":"PSORES10","type":"numeric","minWidth":115,"align":"center"},{"id":"PSYN02","name":"PSYN02","type":"character","minWidth":115,"align":"center"},{"id":"PSORES11","name":"PSORES11","type":"character","minWidth":115,"align":"center"},{"id":"PSTM04","name":"PSTM04","type":"character","minWidth":115,"align":"center"},{"id":"PSREAS01","name":"PSREAS01","type":"character","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"elementId":"ps","dataKey":"b8067148c6a4dbccc9126c40ed809cdb"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::




PSDTC01(Visit Date) should not be blank 

Length of PSDTC01(Visit Date) should be <span style='color: red;'>10</span> 

PSORES01(Starting Glucose Level (mg/dL)) should not be blank 

PSORES02(Starting Ketone Level (mmol/L)) should not be blank 

PSTM01(Time Ketone Level Obtained (24-hr)) should not be blank 

Length of PSTM01(Time Ketone Level Obtained (24-hr)) should be <span style='color: red;'>5</span> 

The delimiter of PSTM01(Time Ketone Level Obtained (24-hr)) should be colon 

PSTM02(Start of insulin pump suspension time: (24-hr)) should not be blank 

Length of PSTM02(Start of insulin pump suspension time: (24-hr)) should be <span style='color: red;'>5</span> 

The delimiter of PSTM02(Start of insulin pump suspension time: (24-hr)) should be colon 

PSORES03(Enter blood glucose level (mg/dL):) and PSORES04(Enter blood ketone level (mmol/L):) and PSORES05(Enter blood potassium level (mmol/L):) and PSORES06(Enter blood pH level:) should not be blank 

PSTM03(End of insulin pump suspension time: (24-hr)) should not be blank 

Length of PSTM03(End of insulin pump suspension time: (24-hr)) should be <span style='color: red;'>5</span> 

The delimiter of PSTM03(End of insulin pump suspension time: (24-hr)) should be colon 

PSORES07(Enter blood glucose level (mg/dL):) and PSORES08(Enter blood ketone level (mmol/L):) and PSORES09(Enter blood potassium level (mmol/L):) and PSORES10(Enter blood pH level:) should not be blank <span style='color: red;'>1330006</span>

Extreme PSORES07(Enter blood glucose level (mg/dL):) 

PSYN02(Is the subject stable and is it safe to discharge the subject?) should be either Yes or No 

If PSYN02(Is the subject stable and is it safe to discharge the subject?) should is No, so PSYN02(If no, provide reason:) should not be blank 

PSTM04(Induction End Time (24-hr)) should not be blank 

Length of PSTM04(Induction End Time (24-hr)) should be <span style='color: red;'>5</span> 

The delimiter of PSTM04(Induction End Time (24-hr)) should be colon 


# **SA Review**

`<a href="//oneabbott.com/dept/ADC/Technical_OPS/Clinical_Affairs/Clinical Study Files/Apollo/ADC-US-RES-23234_IDE Pump Suspension Study/Case Report Forms/Version B/Approved/pdf/Sensor_Application.pdf">Sensor Application</a>`{=html}


::: {.cell}

:::

::: {.cell}
::: {.cell-output-display}

```{=html}
<button onclick="Reactable.downloadDataCSV(&#39;sa&#39;, &#39;sa.csv&#39;)">
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:currentColor;overflow:visible;position:relative;"><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V274.7l-73.4-73.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l128 128c12.5 12.5 32.8 12.5 45.3 0l128-128c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L288 274.7V32zM64 352c-35.3 0-64 28.7-64 64v32c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V416c0-35.3-28.7-64-64-64H346.5l-45.3 45.3c-25 25-65.5 25-90.5 0L165.5 352H64zm368 56a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"/></svg>
Download as CSV
</button>
<div class="reactable html-widget html-fill-item" id="sa" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="sa">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":[],"__STUDYEVENTREPEATKEY":[],"DUDTC01":[],"DUSEQ01":[],"DUCOD01":[],"DUSPID01":[],"DUSPID02":[],"DUSPID03":[],"DUDTC02":[],"DUTM01":[],"DULOC01":[],"DUORES01":[],"DUOTH02":[],"DUORES02":[],"DUORES03":[],"DUORES04":[],"DUORES05":[],"DUORES06":[]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"__STUDYEVENTREPEATKEY","name":"__STUDYEVENTREPEATKEY","type":"character","minWidth":115,"align":"center"},{"id":"DUDTC01","name":"DUDTC01","type":"Date","minWidth":115,"align":"center"},{"id":"DUSEQ01","name":"DUSEQ01","type":"numeric","minWidth":115,"align":"center"},{"id":"DUCOD01","name":"DUCOD01","type":"character","minWidth":115,"align":"center"},{"id":"DUSPID01","name":"DUSPID01","type":"character","minWidth":115,"align":"center"},{"id":"DUSPID02","name":"DUSPID02","type":"character","minWidth":115,"align":"center"},{"id":"DUSPID03","name":"DUSPID03","type":"character","minWidth":115,"align":"center"},{"id":"DUDTC02","name":"DUDTC02","type":"Date","minWidth":115,"align":"center"},{"id":"DUTM01","name":"DUTM01","type":"character","minWidth":115,"align":"center"},{"id":"DULOC01","name":"DULOC01","type":"character","minWidth":115,"align":"center"},{"id":"DUORES01","name":"DUORES01","type":"character","minWidth":115,"align":"center"},{"id":"DUOTH02","name":"DUOTH02","type":"character","minWidth":115,"align":"center"},{"id":"DUORES02","name":"DUORES02","type":"character","minWidth":115,"align":"center"},{"id":"DUORES03","name":"DUORES03","type":"numeric","minWidth":115,"align":"center"},{"id":"DUORES04","name":"DUORES04","type":"character","minWidth":115,"align":"center"},{"id":"DUORES05","name":"DUORES05","type":"character","minWidth":115,"align":"center"},{"id":"DUORES06","name":"DUORES06","type":"character","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"elementId":"sa","dataKey":"6e7babb1d09526d0217f8971043a36c6"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::




DUDTC01(Visit Date) should not be blank 

Length of DUDTC01(Visit Date) should be <span style='color: red;'>10</span> 

DUSEQ01(Sensor number) should not be blank 

DUCOD01(Condition code:) should not be blank  and the length of DUCOD01(Condition code:) should be <span style='color: red;'>3</span> 

DUSPID01(Reading Device serial number) should not be blank  and the length of DUSPID01(Reading Device serial number) should be <span style='color: red;'>4</span> 

DUSPID02(Sensor Kit Lot Number) should not be blank  and the length of DUSPID02(Sensor Kit Lot Number) should be <span style='color: red;'>7</span> 

DUSPID03(Sensor Serial Number) should not be blank  and the length of DUSPID03(Sensor Serial Number) should be <span style='color: red;'>16</span> 

DUDTC02(Application Date) should not be blank 

Length of DUDTC02(Application Date) should be <span style='color: red;'>10</span> 

DUTM01(Application Time) should not be blank 

Length of DUTM01(Application Time) should be <span style='color: red;'>5</span> 

DULOC01(Application Location) should be either Left Arm or Right Arm 

DUORES01(Was Sensor application successful?) should be either Yes or No 

DUOTH02(Who performed the application of the sensor?) should be either Site Staff, Subject, Parent or Guardian 

DUORES02(Were you able to Start New Sensor?) should be either Yes or No 

DUORES03(How many Scan attempts were required?) should not be blank 

DUORES04(Subject's assessment of pain) should be either No Pain,Slight Pain,Mild Pain,Moderate Pain,Extreme Pain 

DUORES05(Subject's assessment of bleeding) should be either No Bleeding,Slight Bleeding,Mild Bleeding,Moderate Bleeding,Extreme Bleeding,Unacceptable Bleeding 

DUORES06(Was the sensor functional?) should be either Yes or No 


# **SE Review**

`<a href="//oneabbott.com/dept/ADC/Technical_OPS/Clinical_Affairs/Clinical Study Files/Apollo/ADC-US-RES-23234_IDE Pump Suspension Study/Case Report Forms/Version B/Approved/pdf/Study_Exit.pdf">Study Exit</a>`{=html}


::: {.cell}

:::

::: {.cell}
::: {.cell-output-display}

```{=html}
<button onclick="Reactable.downloadDataCSV(&#39;se&#39;, &#39;se.csv&#39;)">
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:currentColor;overflow:visible;position:relative;"><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V274.7l-73.4-73.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l128 128c12.5 12.5 32.8 12.5 45.3 0l128-128c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L288 274.7V32zM64 352c-35.3 0-64 28.7-64 64v32c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V416c0-35.3-28.7-64-64-64H346.5l-45.3 45.3c-25 25-65.5 25-90.5 0L165.5 352H64zm368 56a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"/></svg>
Download as CSV
</button>
<div class="reactable html-widget html-fill-item" id="se" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="se">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":[],"__STUDYEVENTREPEATKEY":[],"DSDTC01":[],"DSCPYN":[],"DSDTC02":[],"DSDECD01":[],"DSORES02":[],"DSORES03":[],"DSORES04":[],"DSORES05":[],"DSORES06":[],"DSORES07":[],"DSORES08":[],"DSORES09":[],"DSCOM01":[],"DSCOM02":[],"DSCOM03":[],"DSCOM04":[],"DSCOM06":[],"DSCOM07":[]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"__STUDYEVENTREPEATKEY","name":"__STUDYEVENTREPEATKEY","type":"character","minWidth":115,"align":"center"},{"id":"DSDTC01","name":"DSDTC01","type":"Date","minWidth":115,"align":"center"},{"id":"DSCPYN","name":"DSCPYN","type":"character","minWidth":115,"align":"center"},{"id":"DSDTC02","name":"DSDTC02","type":"Date","minWidth":115,"align":"center"},{"id":"DSDECD01","name":"DSDECD01","type":"character","minWidth":115,"align":"center"},{"id":"DSORES02","name":"DSORES02","type":"character","minWidth":115,"align":"center"},{"id":"DSORES03","name":"DSORES03","type":"character","minWidth":115,"align":"center"},{"id":"DSORES04","name":"DSORES04","type":"character","minWidth":115,"align":"center"},{"id":"DSORES05","name":"DSORES05","type":"character","minWidth":115,"align":"center"},{"id":"DSORES06","name":"DSORES06","type":"character","minWidth":115,"align":"center"},{"id":"DSORES07","name":"DSORES07","type":"character","minWidth":115,"align":"center"},{"id":"DSORES08","name":"DSORES08","type":"character","minWidth":115,"align":"center"},{"id":"DSORES09","name":"DSORES09","type":"character","minWidth":115,"align":"center"},{"id":"DSCOM01","name":"DSCOM01","type":"character","minWidth":115,"align":"center"},{"id":"DSCOM02","name":"DSCOM02","type":"character","minWidth":115,"align":"center"},{"id":"DSCOM03","name":"DSCOM03","type":"character","minWidth":115,"align":"center"},{"id":"DSCOM04","name":"DSCOM04","type":"character","minWidth":115,"align":"center"},{"id":"DSCOM06","name":"DSCOM06","type":"character","minWidth":115,"align":"center"},{"id":"DSCOM07","name":"DSCOM07","type":"character","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"elementId":"se","dataKey":"5032f16f32d7a9d2a673d31acbdb1e8d"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::




DSDTC01(Exit Date) should not be blank 

Length of DSDTC01(Exit Date) should be <span style='color: red;'>10</span> 

DSCPYN(Did the subject complete the study per protocol?) should be either Yes or No 

If DSCPYN(Did the subject complete the study per protocol?) is No, DSDTC02(Date of Withdrawl) and DSDECD01(Select one reason below for withdrawal) should not be blank 


# **SK1 Review**

`<a href="//oneabbott.com/dept/ADC/Technical_OPS/Clinical_Affairs/Clinical Study Files/Apollo/ADC-US-RES-23234_IDE Pump Suspension Study/Case Report Forms/Version B/Approved/pdf/Skin_Assessment.pdf">Skin Assessment</a>`{=html}


::: {.cell}

:::

::: {.cell}
::: {.cell-output-display}

```{=html}
<button onclick="Reactable.downloadDataCSV(&#39;sk1&#39;, &#39;sk1.csv&#39;)">
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:currentColor;overflow:visible;position:relative;"><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V274.7l-73.4-73.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l128 128c12.5 12.5 32.8 12.5 45.3 0l128-128c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L288 274.7V32zM64 352c-35.3 0-64 28.7-64 64v32c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V416c0-35.3-28.7-64-64-64H346.5l-45.3 45.3c-25 25-65.5 25-90.5 0L165.5 352H64zm368 56a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"/></svg>
Download as CSV
</button>
<div class="reactable html-widget html-fill-item" id="sk1" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="sk1">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":[],"__STUDYEVENTREPEATKEY":[],"PEDTC01":[]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"__STUDYEVENTREPEATKEY","name":"__STUDYEVENTREPEATKEY","type":"character","minWidth":115,"align":"center"},{"id":"PEDTC01","name":"PEDTC01","type":"Date","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"elementId":"sk1","dataKey":"4f10964c079efd78509d82e23f2ee2fc"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::




PEDTC01(Visit Date) should not be blank 

Length of PEDTC01(Visit Date) should be <span style='color: red;'>10</span>


# **SK2 Review**

`<a href="//oneabbott.com/dept/ADC/Technical_OPS/Clinical_Affairs/Clinical Study Files/Apollo/ADC-US-RES-23234_IDE Pump Suspension Study/Case Report Forms/Version B/Approved/pdf/Skin_Assessment.pdf">Skin Assessment</a>`{=html}


::: {.cell}

:::

::: {.cell}
::: {.cell-output-display}

```{=html}
<button onclick="Reactable.downloadDataCSV(&#39;sk2&#39;, &#39;sk2.csv&#39;)">
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:currentColor;overflow:visible;position:relative;"><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V274.7l-73.4-73.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l128 128c12.5 12.5 32.8 12.5 45.3 0l128-128c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L288 274.7V32zM64 352c-35.3 0-64 28.7-64 64v32c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V416c0-35.3-28.7-64-64-64H346.5l-45.3 45.3c-25 25-65.5 25-90.5 0L165.5 352H64zm368 56a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"/></svg>
Download as CSV
</button>
<div class="reactable html-widget html-fill-item" id="sk2" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="sk2">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":["1330005","1330005"],"__STUDYEVENTREPEATKEY":["2","2"],"PELOC01":["",""],"PESTAT01":["",""],"PEORES01":["",""],"PEORES02":["",""],"PEORES03":["",""],"PEORES04":["",""],"PEORES05":["",""],"PEORES06":["",""],"PEORES07":["",""],"PEORES08":["",""],"PEORES09":["",""],"PEORES10":["",""],"PEORES11":["",""]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"__STUDYEVENTREPEATKEY","name":"__STUDYEVENTREPEATKEY","type":"character","minWidth":115,"align":"center"},{"id":"PELOC01","name":"PELOC01","type":"character","minWidth":115,"align":"center"},{"id":"PESTAT01","name":"PESTAT01","type":"character","minWidth":115,"align":"center"},{"id":"PEORES01","name":"PEORES01","type":"character","minWidth":115,"align":"center"},{"id":"PEORES02","name":"PEORES02","type":"character","minWidth":115,"align":"center"},{"id":"PEORES03","name":"PEORES03","type":"character","minWidth":115,"align":"center"},{"id":"PEORES04","name":"PEORES04","type":"character","minWidth":115,"align":"center"},{"id":"PEORES05","name":"PEORES05","type":"character","minWidth":115,"align":"center"},{"id":"PEORES06","name":"PEORES06","type":"character","minWidth":115,"align":"center"},{"id":"PEORES07","name":"PEORES07","type":"character","minWidth":115,"align":"center"},{"id":"PEORES08","name":"PEORES08","type":"character","minWidth":115,"align":"center"},{"id":"PEORES09","name":"PEORES09","type":"character","minWidth":115,"align":"center"},{"id":"PEORES10","name":"PEORES10","type":"character","minWidth":115,"align":"center"},{"id":"PEORES11","name":"PEORES11","type":"character","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"elementId":"sk2","dataKey":"658e2764a1423a1268496ed6fff0e196"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::




PELOC01(Assessment) should be either Left Arm or Right Arm or Left Abdomen or Right Abdomen <span style='color: red;'>1330005</span>, <span style='color: red;'>1330005</span>

PEORES01(General skin tone score) should be 1=Poor,2=Average,3=Good <span style='color: red;'>1330005</span>, <span style='color: red;'>1330005</span>

PEORES02(Cellulite score) should be 1=Significant, 2=Average, 3=Minor <span style='color: red;'>1330005</span>, <span style='color: red;'>1330005</span>

PEORES03(Fine Lines Wrinkles score) should be 1=Significant, 2=Average, 3=Minor <span style='color: red;'>1330005</span>, <span style='color: red;'>1330005</span>

PEORES04(Hair Coverage score) should be 1=Significant(shaving required), 2=Non-significant <span style='color: red;'>1330005</span>, <span style='color: red;'>1330005</span>

PEORES05(Dry Skin score) should be 1=Significant(Flaky),2=Non-significant <span style='color: red;'>1330005</span>, <span style='color: red;'>1330005</span>

PEORES06(Scabbing score) should be Yes or No <span style='color: red;'>1330005</span>, <span style='color: red;'>1330005</span>

If PEORES06(Scabbing score) is Yes, PEORES07(Scabbing Area (cm2)) should not be blank 

PEORES08(Scarring score) should be Yes or No <span style='color: red;'>1330005</span>, <span style='color: red;'>1330005</span>

If PEORES08(Scabbing score) is Yes, PEORES09(Scarring Area (cm2)) should not be blank 

PEORES010(Hypo/Hyperpigmentation score) should be Yes or No <span style='color: red;'>1330005</span>, <span style='color: red;'>1330005</span>

If PEORES010(Hypo/Hyperpigmentation score) is Yes, PEORES11(Hypo/Hyperpigmentation Area (cm2)) should not be blank 


# **SSU1 Review**

`<a href="//oneabbott.com/dept/ADC/Technical_OPS/Clinical_Affairs/Clinical Study Files/Apollo/ADC-US-RES-23234_IDE Pump Suspension Study/Case Report Forms/Version B/Approved/pdf/Study_Setup.pdf">Study Setup</a>`{=html}


::: {.cell}

:::

::: {.cell}
::: {.cell-output-display}

```{=html}
<button onclick="Reactable.downloadDataCSV(&#39;sl1&#39;, &#39;sl1.csv&#39;)">
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:currentColor;overflow:visible;position:relative;"><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V274.7l-73.4-73.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l128 128c12.5 12.5 32.8 12.5 45.3 0l128-128c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L288 274.7V32zM64 352c-35.3 0-64 28.7-64 64v32c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V416c0-35.3-28.7-64-64-64H346.5l-45.3 45.3c-25 25-65.5 25-90.5 0L165.5 352H64zm368 56a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"/></svg>
Download as CSV
</button>
<div class="reactable html-widget html-fill-item" id="sl1" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="sl1">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":[],"__STUDYEVENTREPEATKEY":[],"SLDTC01":[],"SLID04":[],"SLCOM01":[]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"__STUDYEVENTREPEATKEY","name":"__STUDYEVENTREPEATKEY","type":"character","minWidth":115,"align":"center"},{"id":"SLDTC01","name":"SLDTC01","type":"Date","minWidth":115,"align":"center"},{"id":"SLID04","name":"SLID04","type":"character","minWidth":115,"align":"center"},{"id":"SLCOM01","name":"SLCOM01","type":"character","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"elementId":"sl1","dataKey":"595d304c57e1b63ba9c07fd9ffc413d8"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::




SLDTC01(Study Set-up date) should not be blank 

Length of SLDTC01(Study Set-up date) should be <span style='color: red;'>10</span> 

# **SSU2 Review**

`<a href="//oneabbott.com/dept/ADC/Technical_OPS/Clinical_Affairs/Clinical Study Files/Apollo/ADC-US-RES-23234_IDE Pump Suspension Study/Case Report Forms/Version B/Approved/pdf/Study_Setup.pdf">Study Setup</a>`{=html}


::: {.cell}

:::

::: {.cell}
::: {.cell-output-display}

```{=html}
<button onclick="Reactable.downloadDataCSV(&#39;sl2&#39;, &#39;sl2.csv&#39;)">
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:currentColor;overflow:visible;position:relative;"><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V274.7l-73.4-73.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l128 128c12.5 12.5 32.8 12.5 45.3 0l128-128c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L288 274.7V32zM64 352c-35.3 0-64 28.7-64 64v32c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V416c0-35.3-28.7-64-64-64H346.5l-45.3 45.3c-25 25-65.5 25-90.5 0L165.5 352H64zm368 56a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"/></svg>
Download as CSV
</button>
<div class="reactable html-widget html-fill-item" id="sl2" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="sl2">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":["1330001","1330001","1330003","1330003","1330004","1330004","1330004"],"__STUDYEVENTREPEATKEY":["1","1","1","1","1","1","1"],"SLID01":["","","","","","",""],"SLDTC02":[null,null,null,null,null,null,null]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"__STUDYEVENTREPEATKEY","name":"__STUDYEVENTREPEATKEY","type":"character","minWidth":115,"align":"center"},{"id":"SLID01","name":"SLID01","type":"character","minWidth":115,"align":"center"},{"id":"SLDTC02","name":"SLDTC02","type":"Date","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"elementId":"sl2","dataKey":"55240d55cbcd651faf6f5da85bd74641"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::




SLID01(Test Strip Lot Number) should not be blank <span style='color: red;'>1330001</span>, <span style='color: red;'>1330001</span>, <span style='color: red;'>1330003</span>, <span style='color: red;'>1330003</span>, <span style='color: red;'>1330004</span>, <span style='color: red;'>1330004</span>, <span style='color: red;'>1330004</span>

SLDTC02(Expiration Date) should not be blank <span style='color: red;'>1330001</span>, <span style='color: red;'>1330001</span>, <span style='color: red;'>1330003</span>, <span style='color: red;'>1330003</span>, <span style='color: red;'>1330004</span>, <span style='color: red;'>1330004</span>, <span style='color: red;'>1330004</span>

# **SSU3 Review**

`<a href="//oneabbott.com/dept/ADC/Technical_OPS/Clinical_Affairs/Clinical Study Files/Apollo/ADC-US-RES-23234_IDE Pump Suspension Study/Case Report Forms/Version B/Approved/pdf/Study_Setup.pdf">Study Setup</a>`{=html}


::: {.cell}

:::

::: {.cell}
::: {.cell-output-display}

```{=html}
<button onclick="Reactable.downloadDataCSV(&#39;sl3&#39;, &#39;sl3.csv&#39;)">
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:currentColor;overflow:visible;position:relative;"><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V274.7l-73.4-73.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l128 128c12.5 12.5 32.8 12.5 45.3 0l128-128c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L288 274.7V32zM64 352c-35.3 0-64 28.7-64 64v32c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V416c0-35.3-28.7-64-64-64H346.5l-45.3 45.3c-25 25-65.5 25-90.5 0L165.5 352H64zm368 56a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"/></svg>
Download as CSV
</button>
<div class="reactable html-widget html-fill-item" id="sl3" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="sl3">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":["1330001","1330003","1330004"],"__STUDYEVENTREPEATKEY":["1","1","1"],"SLID02":["","",""],"SLID03":["","",""],"SLID05":["","",""],"SLDTC03":[null,null,null]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"__STUDYEVENTREPEATKEY","name":"__STUDYEVENTREPEATKEY","type":"character","minWidth":115,"align":"center"},{"id":"SLID02","name":"SLID02","type":"character","minWidth":115,"align":"center"},{"id":"SLID03","name":"SLID03","type":"character","minWidth":115,"align":"center"},{"id":"SLID05","name":"SLID05","type":"character","minWidth":115,"align":"center"},{"id":"SLDTC03","name":"SLDTC03","type":"Date","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"elementId":"sl3","dataKey":"02e3be9b7f32001a2916dc77e73ccbb7"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::




SLID02(iSTAT Serial Number) should not be blank <span style='color: red;'>1330001</span>, <span style='color: red;'>1330003</span>, <span style='color: red;'>1330004</span>

SLID03(iSTAT Lot Number) should not be blank <span style='color: red;'>1330001</span>, <span style='color: red;'>1330003</span>, <span style='color: red;'>1330004</span>

SLID05(iSTAT Cartridge Lot Number) should not be blank <span style='color: red;'>1330001</span>, <span style='color: red;'>1330003</span>, <span style='color: red;'>1330004</span>

SLDTC03(Expiration Date) should not be blank <span style='color: red;'>1330001</span>, <span style='color: red;'>1330003</span>, <span style='color: red;'>1330004</span>

# **SR2 Review**

`<a href="//oneabbott.com/dept/ADC/Technical_OPS/Clinical_Affairs/Clinical Study Files/Apollo/ADC-US-RES-23234_IDE Pump Suspension Study/Case Report Forms/Version B/Approved/pdf/Sensor_Removal.pdf">Sensor Removal</a>`{=html}


::: {.cell}

:::

::: {.cell}
::: {.cell-output-display}

```{=html}
<button onclick="Reactable.downloadDataCSV(&#39;sr2&#39;, &#39;sr2.csv&#39;)">
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:currentColor;overflow:visible;position:relative;"><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V274.7l-73.4-73.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l128 128c12.5 12.5 32.8 12.5 45.3 0l128-128c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L288 274.7V32zM64 352c-35.3 0-64 28.7-64 64v32c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V416c0-35.3-28.7-64-64-64H346.5l-45.3 45.3c-25 25-65.5 25-90.5 0L165.5 352H64zm368 56a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"/></svg>
Download as CSV
</button>
<div class="reactable html-widget html-fill-item" id="sr2" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="sr2">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":["1330005","1330007"],"DRID01":["1","3"],"DRDTC02":["2023-09-24","2023-10-06"],"DRTM01":["unk","unk"],"DRORES01":["Yes","Yes"],"DRORES02":["Yes","Yes"],"DRORES03":["Yes","Yes"]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"DRID01","name":"DRID01","type":"character","minWidth":115,"align":"center"},{"id":"DRDTC02","name":"DRDTC02","type":"Date","minWidth":115,"align":"center"},{"id":"DRTM01","name":"DRTM01","type":"character","minWidth":115,"align":"center"},{"id":"DRORES01","name":"DRORES01","type":"character","minWidth":115,"align":"center"},{"id":"DRORES02","name":"DRORES02","type":"character","minWidth":115,"align":"center"},{"id":"DRORES03","name":"DRORES03","type":"character","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"elementId":"sr2","dataKey":"20b6e10fbf893b6494f4a62157b74b6d"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::




DRID01(Sensor Number) should not be blank and should not start with 0 

DRID01(Removal Date) should not be blank  and the length of DRID01(Removal Date) should be <span style='color: red;'>10</span> 

DRTM01(Removal Time) should not be blank  and the length of DRTM01(Removal Time) should be <span style='color: red;'>5</span> <span style='color: red;'>1330005</span>, <span style='color: red;'>1330007</span>

DRORES01(Was sensor removed or detached prematurely?) should be Yes or No 

DRORES02(Was site insertion exam performed?) should be Yes or No 

DRORES03(Is the application site still suitable for sensor application?) should be Yes, No , NA  

<!-- # **UC Review** -->

<!-- `<a href="//oneabbott.com/dept/ADC/Technical_OPS/Clinical_Affairs/Clinical Study Files/Apollo/ADC-US-RES-23234_IDE Pump Suspension Study/Case Report Forms/Version B/Approved/pdf/Unscheduled_Contact.pdf">Unscheduled Contact</a>`{=html} -->


::: {.cell}

:::

::: {.cell}

:::





# **VS Review**

`<a href="//oneabbott.com/dept/ADC/Technical_OPS/Clinical_Affairs/Clinical Study Files/Apollo/ADC-US-RES-23234_IDE Pump Suspension Study/Case Report Forms/Version B/Approved/pdf/Height_Weight.pdf">Height Weight</a>`{=html}


::: {.cell}

:::

::: {.cell}
::: {.cell-output-display}

```{=html}
<button onclick="Reactable.downloadDataCSV(&#39;vs&#39;, &#39;vs.csv&#39;)">
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:currentColor;overflow:visible;position:relative;"><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V274.7l-73.4-73.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l128 128c12.5 12.5 32.8 12.5 45.3 0l128-128c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L288 274.7V32zM64 352c-35.3 0-64 28.7-64 64v32c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V416c0-35.3-28.7-64-64-64H346.5l-45.3 45.3c-25 25-65.5 25-90.5 0L165.5 352H64zm368 56a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"/></svg>
Download as CSV
</button>
<div class="reactable html-widget html-fill-item" id="vs" style="width:auto;height:auto;"></div>
<script type="application/json" data-for="vs">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"Subject":[],"__STUDYEVENTREPEATKEY":[],"VSDTC01":[],"VSORES01":[],"VSORES02":[],"VSORES03":[]},"columns":[{"id":"Subject","name":"Subject","type":"character","minWidth":115,"align":"center","sticky":"left"},{"id":"__STUDYEVENTREPEATKEY","name":"__STUDYEVENTREPEATKEY","type":"character","minWidth":115,"align":"center"},{"id":"VSDTC01","name":"VSDTC01","type":"Date","minWidth":115,"align":"center"},{"id":"VSORES01","name":"VSORES01","type":"numeric","minWidth":115,"align":"center"},{"id":"VSORES02","name":"VSORES02","type":"numeric","minWidth":115,"align":"center"},{"id":"VSORES03","name":"VSORES03","type":"numeric","minWidth":115,"align":"center"}],"resizable":true,"filterable":true,"searchable":true,"defaultPageSize":6,"paginationType":"jump","highlight":true,"striped":true,"elementId":"vs","dataKey":"b8beaaea0b75baf660999ec3955131a7"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
```

:::
:::




VSDTC01(Visit Date) should not be blank 

Length of VSDTC01(Visit Date) should be <span style='color: red;'>10</span> 

VSORES01(Height ft) should not be blank 

VSORES01(Height ft) has extreme values 

VSORES02(Height in) should not be blank 

VSORES02(Height in) has extreme values 

VSORES03(Weight lb) should not be blank 

VSORES03(Weight lb) has extreme values 