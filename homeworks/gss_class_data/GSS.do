#delimit ;

   infix
      class_   1 - 20
      finrela  21 - 40
using GSS.dat;

label variable class_   "Subjective class identification";
label variable finrela  "Opinion of family income";


label define gsp001x
   9        "No answer"
   8        "Don't know"
   5        "No class"
   4        "Upper class"
   3        "Middle class"
   2        "Working class"
   1        "Lower class"
   0        "Not applicable"
;
label define gsp002x
   9        "No answer"
   8        "Don't know"
   5        "Far above average"
   4        "Above average"
   3        "Average"
   2        "Below average"
   1        "Far below average"
   0        "Not applicable"
;


label values class_   gsp001x;
label values finrela  gsp002x;


