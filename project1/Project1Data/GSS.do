#delimit ;

   infix
      year     1 - 20
      rincome  21 - 40
      region   41 - 60
      srcbelt  61 - 80
      partyid  81 - 100
      polviews 101 - 120
      satjob   121 - 140
      class_   141 - 160
      satfin   161 - 180
      finrela  181 - 200
      realinc  201 - 220
      income   221 - 240
      earnrs   241 - 260
      adults   261 - 280
      id_      281 - 300
      wrkstat  301 - 320
      age      321 - 340
      educ     341 - 360
      sex      361 - 380
      race     381 - 400
      hompop   401 - 420
      babies   421 - 440
      preteen  441 - 460
      teens    461 - 480
      cohort   481 - 500
using GSS.dat;

label variable year     "Gss year for this respondent                       ";
label variable rincome  "Respondents income";
label variable region   "Region of interview";
label variable srcbelt  "Src beltcode";
label variable partyid  "Political party affiliation";
label variable polviews "Think of self as liberal or conservative";
label variable satjob   "Job or housework";
label variable class_   "Subjective class identification";
label variable satfin   "Satisfaction with financial situation";
label variable finrela  "Opinion of family income";
label variable realinc  "Family income in constant $";
label variable income   "Total family income";
label variable earnrs   "How many in family earned money";
label variable adults   "Household members 18 yrs and older";
label variable id_      "Respondent id number";
label variable wrkstat  "Labor force status";
label variable age      "Age of respondent";
label variable educ     "Highest year of school completed";
label variable sex      "Respondents sex";
label variable race     "Race of respondent";
label variable hompop   "Number of persons in household";
label variable babies   "Household members less than 6 yrs old";
label variable preteen  "Household members 6 thru 12 yrs old";
label variable teens    "Household members 13 thru 17 yrs old";
label variable cohort   "Year of birth";


label define gsp001x
   99       "No answer"
   98       "Don't know"
   13       "Refused"
   12       "$25000 or more"
   11       "$20000 - 24999"
   10       "$15000 - 19999"
   9        "$10000 - 14999"
   8        "$8000 to 9999"
   7        "$7000 to 7999"
   6        "$6000 to 6999"
   5        "$5000 to 5999"
   4        "$4000 to 4999"
   3        "$3000 to 3999"
   2        "$1000 to 2999"
   1        "Lt $1000"
   0        "Not applicable"
;
label define gsp002x
   9        "Pacific"
   8        "Mountain"
   7        "W. sou. central"
   6        "E. sou. central"
   5        "South atlantic"
   4        "W. nor. central"
   3        "E. nor. central"
   2        "Middle atlantic"
   1        "New england"
   0        "Not assigned"
;
label define gsp003x
   6        "Other rural"
   5        "Other urban"
   4        "Suburb, 13-100"
   3        "Suburb, 12 lrgst"
   2        "Smsa's 13-100"
   1        "12 lrgst smsa's"
   0        "Not assigned"
;
label define gsp004x
   9        "No answer"
   8        "Don't know"
   7        "Other party"
   6        "Strong republican"
   5        "Not str republican"
   4        "Ind,near rep"
   3        "Independent"
   2        "Ind,near dem"
   1        "Not str democrat"
   0        "Strong democrat"
;
label define gsp005x
   9        "No answer"
   8        "Don't know"
   7        "Extrmly conservative"
   6        "Conservative"
   5        "Slghtly conservative"
   4        "Moderate"
   3        "Slightly liberal"
   2        "Liberal"
   1        "Extremely liberal"
   0        "Not applicable"
;
label define gsp006x
   9        "No answer"
   8        "Don't know"
   4        "Very dissatisfied"
   3        "A little dissat"
   2        "Mod. satisfied"
   1        "Very satisfied"
   0        "Not applicable"
;
label define gsp007x
   9        "No answer"
   8        "Don't know"
   5        "No class"
   4        "Upper class"
   3        "Middle class"
   2        "Working class"
   1        "Lower class"
   0        "Not applicable"
;
label define gsp008x
   9        "No answer"
   8        "Don't know"
   3        "Not at all sat"
   2        "More or less"
   1        "Satisfied"
   0        "Not applicable"
;
label define gsp009x
   9        "No answer"
   8        "Don't know"
   5        "Far above average"
   4        "Above average"
   3        "Average"
   2        "Below average"
   1        "Far below average"
   0        "Not applicable"
;
label define gsp010x
   999999   "No answer"
   999998   "Dont know"
   0        "Not applicable"
;
label define gsp011x
   99       "No answer"
   98       "Don't know"
   13       "Refused"
   12       "$25000 or more"
   11       "$20000 - 24999"
   10       "$15000 - 19999"
   9        "$10000 - 14999"
   8        "$8000 to 9999"
   7        "$7000 to 7999"
   6        "$6000 to 6999"
   5        "$5000 to 5999"
   4        "$4000 to 4999"
   3        "$3000 to 3999"
   2        "$1000 to 2999"
   1        "Lt $1000"
   0        "Not applicable"
;
label define gsp012x
   9        "No answer"
   8        "Eight or more"
;
label define gsp013x
   9        "No answer"
   8        "8 or more"
;
label define gsp014x
   9        "No answer"
   8        "Other"
   7        "Keeping house"
   6        "School"
   5        "Retired"
   4        "Unempl, laid off"
   3        "Temp not working"
   2        "Working parttime"
   1        "Working fulltime"
   0        "Not applicable"
;
label define gsp015x
   99       "No answer"
   98       "Don't know"
   89       "89 or older"
;
label define gsp016x
   99       "No answer"
   98       "Don't know"
   97       "Not applicable"
;
label define gsp017x
   2        "Female"
   1        "Male"
;
label define gsp018x
   3        "Other"
   2        "Black"
   1        "White"
   0        "Not applicable"
;
label define gsp019x
   99       "No answer"
   98       "Don't know"
;
label define gsp020x
   9        "No answer"
   8        "8 or more"
;
label define gsp021x
   9        "No answer"
   8        "8 or more"
;
label define gsp022x
   9        "No answer"
   8        "8 or more"
;
label define gsp023x
   9999     "No answer"
   0        "Not applicable"
;


label values rincome  gsp001x;
label values region   gsp002x;
label values srcbelt  gsp003x;
label values partyid  gsp004x;
label values polviews gsp005x;
label values satjob   gsp006x;
label values class_   gsp007x;
label values satfin   gsp008x;
label values finrela  gsp009x;
label values realinc  gsp010x;
label values income   gsp011x;
label values earnrs   gsp012x;
label values adults   gsp013x;
label values wrkstat  gsp014x;
label values age      gsp015x;
label values educ     gsp016x;
label values sex      gsp017x;
label values race     gsp018x;
label values hompop   gsp019x;
label values babies   gsp020x;
label values preteen  gsp021x;
label values teens    gsp022x;
label values cohort   gsp023x;


