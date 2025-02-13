DM 'CLE LOG; CLE OUT'; 
**************************************************************************
    October 30, 2005
 
THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
FILE FROM THE NHIS 1996 HOUSEHLD.DAT ASCII FILE.
 
NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
      GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
      DOCUMENTATION.
 
THIS IS STORED IN HOUSEHLD.SAS
*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;
 
LIBNAME NHIS    'C:\NHIS1996\';
LIBNAME LIBRARY 'C:\NHIS1996\';

FILENAME ASCIIDAT 'C:\NHIS1996\HOUSEHLD.DAT';
 
* DEFINE VARIABLE VALUES FOR REPORT;
 
PROC FORMAT LIBRARY=LIBRARY;
  VALUE  HLD001X
   10               = "Household Record"
   ;
  VALUE  HLD002X
   96               = "1996"
   ;
  VALUE $HLD003X
   ;
  VALUE  HLD004X
   01               = "Week 1"
   02               = "Week 2"
   03               = "Week 3"
   04               = "Week 4"
   05               = "Week 5"
   06               = "Week 6"
   07               = "Week 7"
   08               = "Week 8"
   09               = "Week 9"
   10               = "Week 10"
   11               = "Week 11"
   12               = "Week 12"
   13               = "Week 13"
   ;
  VALUE  HLD005X
   0                = "Interview not late"
   1                = "One week late"
   2                = "Two weeks late"
   3                = "Unknown"
   ;
  VALUE  HLD006X
   00               = "Housing unit; kind unknown"
   01               = "House, apartment, flat"
   02               = "HU in nontransient hotel, motel, etc."
   03               = "HU-permanent in transient hotel, motel, etc."
   04               = "HU in rooming house"
   05               = "Mobile home or trailer with no permanent room added"
   06               = "Mobile home or trailer with one or more permanent rooms added"
   07               = "HU not specified above"
   08               = "Quarters not HU in rooming or boarding house"
   09               = "Unit not permanent in transient hotel, motel, etc."
   10               = "Unoccupied site for mobile home, trailer, or tent"
   11               = "Student quarters in college dormitory"
   12               = "Other unit not specified above"
   13               = "Other unit; kind unknown"
   ;
  VALUE  HLD007X
   1                = "Yes, phone number given"
   2                = "Yes, no phone number given"
   3                = "No"
   4                = "Unknown"
   .                = "Non-interview"
   ;
  VALUE  HLD008X
   .                = "Not applicable"
   ;
  VALUE  HLD009X
   1                = "Completed interview - non-military household"
   2                = "Non-interview"
   3                = "Completed interview - military household"
   ;
  VALUE  HLD010X
   01               = "Refused"
   02               = "No one at home--repeated calls"
   03               = "Temporarily absent"
   04               = "Language Problem"
   05               = "Other"
   .                = "Not applicable (completed interview)"
   ;
  VALUE $HLD011X
   ;
  VALUE $HLD012X
   "01" = "January"    "08" = "August"
   "02" = "February"   "09" = "September"
   "03" = "March"      "10" = "October"
   "04" = "April"      "11" = "November"
   "05" = "May"        "12" = "December"
   "06" = "June"       "99" = "Unknown"
   "07" = "July"        " " = ""

   ;
  VALUE $HLD013X
   "01"-"31"         = "Day of Month"
   " "               = ""
   ;
  VALUE  HLD014X
   .                = "Non-interview"
   ;
  VALUE  HLD015X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HLD016X
   ;
  VALUE  HLD017X
   ;
  VALUE  HLD018X
   ;
  VALUE  HLD019X
   ;
  VALUE  HLD020X
   ;
  VALUE  HLD021X
   ;
  VALUE  HLD022X
   ;
  VALUE  HLD023X
   ;
  VALUE  HLD024X
   ;
  VALUE  HLD025X
   00               = "Not applicable"
   01-30            = "Number of unrelated individuals"
   .                = "Non-interview"
   ;
  VALUE  HLD026X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
   ;
  VALUE  HLD027X
   ;
  VALUE  HLD028X
   ;
  VALUE  HLD029X
   ;
  VALUE  HLD030X
   ;
  VALUE  HLD031X
   ;
  VALUE  HLD032X
   ;
  VALUE  HLD033X
   ;
  VALUE  HLD034X
   ;
  VALUE  HLD035X
   ;
  VALUE  HLD036X
   ;
  VALUE  HLD037X
   ;
  VALUE  HLD038X
   ;
  VALUE  HLD039X
   ;
  VALUE  HLD040X
   1                = "Condition List 1, Skin and Musculoskeletal"
   2                = "Condition List 2, Impairments"
   3                = "Condition List 3, Digestive"
   4                = "Condition List 4, Miscellaneous"
   5                = "Condition List 5, Circulatory"
   6                = "Condition List 6, Respiratory"
   7                = "Unknown"
   .                = "Non-interview"
   ;
  VALUE  HLD041X
   1                = "Yes, working phone in home"
   2                = "No working phone in home"
   9                = "Unknown"
   .                = "Non-interview"
   ;
  VALUE  HLD042X
   1                = "Quarter 1"
   2                = "Quarter 2"
   3                = "Quarter 3"
   4                = "Quarter 4"
   ;
  VALUE  HLD043X
   1                = "Northeast"
   2                = "Midwest"
   3                = "South"
   4                = "West"
   ;
  VALUE  HLD044X
   1                = "5,000,000 or more"
   2                = "2,500,000 - 4,999,999"
   3                = "1,000,000 - 2,499,999"
   4                = "  500,000 -   999,999"
   5                = "  250,000 -   499,999"
   6                = "  100,000 -   249,999"
   7                = "Under 100,000"
   .                = "Non-MSA"
   ;
  VALUE  HLD045X
   1                = "In MSA; in Central City"
   2                = "In MSA; not in Central City"
   3                = "Not in MSA"
   ;
  VALUE  HLD046X
   ;
  VALUE  HLD047X
   ;
  VALUE  HLD048X
   ;
  VALUE  HLD049X
   ;
  VALUE  HLD050X
   ;
  VALUE  HLD051X
   1                = "Self representing"
   2                = "Non self representing"
   ;
  VALUE  HLD052X
   1-4              = "Code used to identify nationally representative subsamples"
   ;
  VALUE  HLD053X
   ;
  VALUE  HLD054X
   ;
  VALUE  HLD055X
   ;
 
DATA NHIS.HOUSEHLD;
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1996\';
   INFILE ASCIIDAT MISSOVER TRUNCOVER LRECL=360;
 
* DEFINE LENGTH OF NUMERIC VARIABLES;
 
LENGTH
   RECTYPE   3  YEAR      3  WEEKCODE  3  LATEINT   3  LIVQTRS   3
   PHONE     3  GOUPQTR   3  COMIVIEW  3  NONIVIEW  3  NFAM      3
   SIZEPRIM  3  SIZESEC1  3  SIZESEC2  3  SIZESEC3  3  SIZESEC4  3
   SIZESEC5  3  SIZESEC6  3  SIZESEC7  3  SIZESEC8  3  SIZESEC9  3
   NUMREL    3  REFPRESP  3  REFPRES1  3  REFPRES2  3  REFPRES3  3
   REFPRES4  3  REFPRES5  3  REFPRES6  3  REFPRES7  3  REFPRES8  3
   REFPRES9  3  NPERSREC  3  NCONDREC  3  NDRVREC   3  NHOSPREC  3
   CONDLIST  3  WORKTEL   3  QUARTER   3  REGION    3  MSASIZE   3
   MSA       3  WTFQ      8  VARSTRA   3  VARPSUR   3  VARSUBR   3
   UNITSS    4  TYPEPSU   3  PANEL     3  NSRSTVA   3  COLVARST  3
   VARPSU    3
   ;


* INPUT ALL VARIABLES;
 
INPUT
   RECTYPE      1 -   2        YEAR         3 -   4
   HHID     $   5 -  14        WEEKCODE    19 -  20
   LATEINT     21 -  21        LIVQTRS     22 -  23
   PHONE       24 -  24        GOUPQTR     25 -  26
   COMIVIEW    27 -  27        NONIVIEW    28 -  29
   DATEI    $  30 -  33        DATEIMO  $  30 -  31
   DATEIDAY $  32 -  33        NFAM        34 -  35
   SIZEPRIM    36 -  37        SIZESEC1    38 -  39
   SIZESEC2    40 -  41        SIZESEC3    42 -  43
   SIZESEC4    44 -  45        SIZESEC5    46 -  47
   SIZESEC6    48 -  49        SIZESEC7    50 -  51
   SIZESEC8    52 -  53        SIZESEC9    54 -  55
   NUMREL      56 -  57        REFPRESP    58 -  58
   REFPRES1    59 -  59        REFPRES2    60 -  60
   REFPRES3    61 -  61        REFPRES4    62 -  62
   REFPRES5    63 -  63        REFPRES6    64 -  64
   REFPRES7    65 -  65        REFPRES8    66 -  66
   REFPRES9    67 -  67        NPERSREC    68 -  69
   NCONDREC    70 -  71        NDRVREC     72 -  73
   NHOSPREC    74 -  75        CONDLIST    76 -  76
   WORKTEL     77 -  77        QUARTER    178 - 178
   REGION     182 - 182        MSASIZE    183 - 183
   MSA        186 - 186        WTFQ       201 - 206 .1
   VARSTRA    337 - 340        VARPSUR    341 - 341
   VARSUBR    342 - 343        UNITSS     344 - 350
   TYPEPSU    351 - 351        PANEL      352 - 352
   NSRSTVA    353 - 353        COLVARST   354 - 357
   VARPSU     358 - 358
   ;
   WTFA_HH=WTFQ/4;

* DEFINE VARIABLE LABELS;
 
LABEL
   RECTYPE  = "RECORD TYPE"
   YEAR     = "PROCESSING YEAR"
   HHID     = "HOUSEHOLD ID"
   WEEKCODE = "SAMPLING WEEK CODE"
   LATEINT  = "LATE INTERVIEW (OR LAST ATTEMPT) FLAG"
   LIVQTRS  = "TYPE OF LIVING QUARTERS"
   PHONE    = "HAS TELEPHONE"
   GOUPQTR  = "GROUP QUARTERS"
   COMIVIEW = "COMPLETED INTERVIEW"
   NONIVIEW = "NON-INTERVIEW REASON"
   DATEI    = "DATE OF COMPLETION (OR LAST ATTEMPT) OF INITIAL INTERVIEW"
   DATEIMO  = "MONTH"
   DATEIDAY = "DAY"
   NFAM     = "NUMBER OF FAMILIES IN THE HOUSEHOLD"
   SIZEPRIM = "SIZE OF FAMILY - PRIMARY FAMILY"
   SIZESEC1 = "SIZE OF FAMILY - SECONDARY FAMILY 1"
   SIZESEC2 = "SIZE OF FAMILY - SECONDARY FAMILY 2"
   SIZESEC3 = "SIZE OF FAMILY - SECONDARY FAMILY 3"
   SIZESEC4 = "SIZE OF FAMILY - SECONDARY FAMILY 4"
   SIZESEC5 = "SIZE OF FAMILY - SECONDARY FAMILY 5"
   SIZESEC6 = "SIZE OF FAMILY - SECONDARY FAMILY 6"
   SIZESEC7 = "SIZE OF FAMILY - SECONDARY FAMILY 7"
   SIZESEC8 = "SIZE OF FAMILY - SECONDARY FAMILY 8"
   SIZESEC9 = "SIZE OF FAMILY - SECONDARY FAMILY 9"
   NUMREL   = "NUMBER OF UNRELATED INDIVIDUALS"
   REFPRESP = "REFERENCE PERSON PRESENT - PRIMARY FAMILY"
   REFPRES1 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY  1"
   REFPRES2 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY  2"
   REFPRES3 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY  3"
   REFPRES4 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY  4"
   REFPRES5 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY  5"
   REFPRES6 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY  6"
   REFPRES7 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY  7"
   REFPRES8 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY  8"
   REFPRES9 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY  9"
   NPERSREC = "NUMBER OF PERSON RECORDS FOR THE HOUSEHOLD"
   NCONDREC = "NUMBER OF CONDITION RECORDS FOR THE HOUSEHOLD"
   NDRVREC  = "NUMBER OF TWO-WEEK DOCTOR VISIT RECORDS FOR THE HOUSEHOLD"
   NHOSPREC = "NUMBER OF HOSPITAL RECORDS FOR THE HOUSEHOLD"
   CONDLIST = "CONDITION LIST ASSIGNED"
   WORKTEL  = "WORKING TELEPHONE INSIDE THE HOME"
   QUARTER  = "SAMPLING QUARTER"
   REGION   = "REGION"
   MSASIZE  = "GEOGRAPHIC DISTRIBUTION"
   MSA      = "MSA - NON-MSA RESIDENCE"
   WTFQ     = "QUARTER BASIC WEIGHT"
   VARSTRA  = "STRATA FOR VARIANCE ESTIMATION"
   VARPSUR  = "PSU FOR VARIANCE ESTIMATION"
   VARSUBR  = "SUBSTRATUM FOR VARIANCE ESTIMATION"
   UNITSS   = "SECONDARY SAMPLING UNIT"
   TYPEPSU  = "TYPE OF PSU"
   PANEL    = "PANEL 4"
   NSRSTVA  = "NSR STATUS VARIABLE"
   COLVARST = "COLLAPSED VARIANCE STRATUM"
   VARPSU   = "VARIANCE PSU"
   ;

* ASSOCIATE VARIABLES WITH FORMAT VALUES;
 
FORMAT
   RECTYPE   HLD001X.    YEAR      HLD002X.    HHID      $HLD003X.
   WEEKCODE  HLD004X.    LATEINT   HLD005X.    LIVQTRS   HLD006X.
   PHONE     HLD007X.    GOUPQTR   HLD008X.    COMIVIEW  HLD009X.
   NONIVIEW  HLD010X.    DATEI     $HLD011X.   DATEIMO   $HLD012X.
   DATEIDAY  $HLD013X.   NFAM      HLD014X.    SIZEPRIM  HLD015X.
   SIZESEC1  HLD016X.    SIZESEC2  HLD017X.    SIZESEC3  HLD018X.
   SIZESEC4  HLD019X.    SIZESEC5  HLD020X.    SIZESEC6  HLD021X.
   SIZESEC7  HLD022X.    SIZESEC8  HLD023X.    SIZESEC9  HLD024X.
   NUMREL    HLD025X.    REFPRESP  HLD026X.    REFPRES1  HLD027X.
   REFPRES2  HLD028X.    REFPRES3  HLD029X.    REFPRES4  HLD030X.
   REFPRES5  HLD031X.    REFPRES6  HLD032X.    REFPRES7  HLD033X.
   REFPRES8  HLD034X.    REFPRES9  HLD035X.    NPERSREC  HLD036X.
   NCONDREC  HLD037X.    NDRVREC   HLD038X.    NHOSPREC  HLD039X.
   CONDLIST  HLD040X.    WORKTEL   HLD041X.    QUARTER   HLD042X.
   REGION    HLD043X.    MSASIZE   HLD044X.    MSA       HLD045X.
   WTFQ      HLD046X.    VARSTRA   HLD047X.    VARPSUR   HLD048X.
   VARSUBR   HLD049X.    UNITSS    HLD050X.    TYPEPSU   HLD051X.
   PANEL     HLD052X.    NSRSTVA   HLD053X.    COLVARST  HLD054X.
   VARPSU    HLD055X.
   ;
 
PROC CONTENTS DATA=NHIS.HOUSEHLD;
 
PROC FREQ DATA=NHIS.HOUSEHLD;
TITLE1 'FREQUENCY REPORT FOR 1996 NHIS HOUSEHOLD FILE';
TITLE2 '(WEIGHTED - QUARTER)';
TABLES RECTYPE/LIST MISSING;
WEIGHT WTFA_HH;
 
PROC FREQ DATA=NHIS.HOUSEHLD;
TITLE1 'FREQUENCY REPORT FOR 1996 NHIS HOUSEHOLD FILE';
TITLE2 '(UNWEIGHTED)';
TABLES RECTYPE/LIST MISSING;
 
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
              STATEMENT: FORMAT _ALL_;
RUN;
