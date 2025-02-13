DM 'CLE LOG; CLE OUT';
*************************************************************************
    October 20, 2005
 
THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
FILE FROM THE NHIS 1995 HOUSEHLD.DAT ASCII FILE.
 
NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
      GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
      DOCUMENTATION.
 
THIS IS STORED IN HOUSEHLD.SAS
*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;
 
LIBNAME NHIS    'C:\NHIS1995\';
LIBNAME LIBRARY 'C:\NHIS1995\';

FILENAME ASCIIDAT 'C:\NHIS1995\HOUSEHLD.DAT';
 
* DEFINE VARIABLE VALUES FOR REPORT;
 
PROC FORMAT LIBRARY=LIBRARY;
  VALUE  HHD001X
   10               = "Household Record"
   ;
  VALUE  HHD002X
   95               = "1995"
   ;
  VALUE $HHD003X
   ;
  VALUE  HHD004X
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
  VALUE  HHD005X
   0                = "Interview not late"
   1                = "One week late"
   2                = "Two weeks late"
   3                = "Unknown"
   ;
  VALUE  HHD006X
   00               = "Housing unit; kind unknown"
   01               = "House, apartment, flat"
   02               = "HU in nontransient hotel, motel, etc"
   03               = "HU-permanent in transient hotel, motel, etc"
   04               = "HU in rooming house"
   05               = "Mobile home or trailer with no permanent room added"
   06               = "Mobile home or trailer with one or more permanent rooms added"
   07               = "HU not specified above"
   08               = "Quarters not HU in rooming or boarding house"
   09               = "Unit not permanent in transient hotel, motel, etc"
   10               = "Unoccupied site for mobile home, trailer, or tent"
   11               = "Student quarters in college dormitory"
   12               = "Other unit not specified above"
   13               = "Other unit; kind unknown"
   ;
  VALUE  HHD007X
   1                = "Yes, phone number given"
   2                = "Yes, no phone number given"
   3                = "No"
   4                = "Unknown"
   .                = "Non-interview"
   ;
  VALUE  HHD008X
   .                = "Not applicable"
   ;
  VALUE  HHD009X
   1                = "Completed interview - non-military household"
   2                = "Non-interview"
   3                = "Completed interview - military household"
   ;
  VALUE  HHD010X
   01               = "Refused"
   02               = "No one at home--repeated calls"
   03               = "Temporarily absent"
   04               = "Language Problem"
   05               = "Other"
   .                = "Not applicable (completed interview)"
   ;
  VALUE $HHD011X
   ;
  VALUE $HHD012X
   "01" = "January"      "08" = "August"
   "02" = "February"     "09" = "September"
   "03" = "March"        "10" = "October"
   "04" = "April"        "11" = "November"
   "05" = "May"          "12" = "December"
   "06" = "June"         "  " = "  "
   "07" = "July"
   ;
  VALUE $HHD013X
   "01"-"31"        = "Day of Month"
   "  "             = " "
   ;
  VALUE  HHD014X
   .                = "Non-interview"
   ;
  VALUE  HHD015X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD016X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD017X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD018X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD019X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD020X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD021X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD022X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD023X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD024X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD025X
   00               = "Not applicable"
   01-30            = "Number of unrelated individuals"
   .                = "Non-interview"
   ;
  VALUE  HHD026X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
   ;
  VALUE  HHD027X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
   ;
  VALUE  HHD028X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
   ;
  VALUE  HHD029X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
   ;
  VALUE  HHD030X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
   ;
  VALUE  HHD031X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
   ;
  VALUE  HHD032X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
   ;
  VALUE  HHD033X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
   ;
  VALUE  HHD034X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
   ;
  VALUE  HHD035X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
   ;
  VALUE  HHD036X
   ;
  VALUE  HHD037X
   ;
  VALUE  HHD038X
   ;
  VALUE  HHD039X
   ;
  VALUE  HHD040X
   1                = "Condition List 1, Skin and Musculoskeletal"
   2                = "Condition List 2, Impairments"
   3                = "Condition List 3, Digestive"
   4                = "Condition List 4, Miscellaneous"
   5                = "Condition List 5, Circulatory"
   6                = "Condition List 6, Respiratory"
   7                = "Unknown"
   .                = "Non-interview"
   ;
  VALUE  HHD041X
   1                = "Yes, working phone in home"
   2                = "No working phone in home"
   9                = "Unknown"
   .                = "Non-interview"
   ;
  VALUE  HHD042X
   1                = "Quarter 1"
   2                = "Quarter 2"
   3                = "Quarter 3"
   4                = "Quarter 4"
   ;
  VALUE  HHD043X
   1                = "Northeast"
   2                = "Midwest"
   3                = "South"
   4                = "West"
   ;
  VALUE  HHD044X
   1                = "5,000,000 or more"
   2                = "2,500,000 - 4,999,999"
   3                = "1,000,000 - 2,499,999"
   4                = "500,000 - 999,999"
   5                = "250,000 - 499,999"
   6                = "100,000 - 249,999"
   7                = "Under 100,000"
   .                = "Non-MSA"
   ;
  VALUE  HHD045X
   1                = "In MSA; in Central City"
   2                = "In MSA; not in Central City"
   3                = "Not in MSA"
   ;
  VALUE  HHD046X
   ;
  VALUE  HHD047X
   ;
  VALUE  HHD048X
   ;
  VALUE  HHD049X
   ;
  VALUE  HHD050X
   ;
  VALUE  HHD051X
   1                = "Self representing"
   2                = "Non self representing"
   ;
  VALUE  HHD052X
   1-4              = "Code used to identify nationally representative subsamples"
   ;

DATA NHIS.HOUSEHLD;
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1995\';
   INFILE ASCIIDAT MISSOVER TRUNCOVER LRECL=355;
 
* DEFINE LENGTH OF NUMERIC VARIABLES;
 
LENGTH
   RECTYPE   3  YEAR      3  WEEKCODE  3  LAFLAG    3  LIVQTR    3
   PHONE     3  GOUPQTR   3  COMIVIEW  3  NONIVIEW  3  NFAM      3
   SIZEPRIM  3  SIZESEC1  3  SIZESEC2  3  SIZESEC3  3  SIZESEC4  3
   SIZESEC5  3  SIZESEC6  3  SIZESEC7  3  SIZESEC8  3  SIZESEC9  3
   NUMREL    3  REFPRESP  3  REFPRES1  3  REFPRES2  3  REFPRES3  3
   REFPRES4  3  REFPRES5  3  REFPRES6  3  REFPRES7  3  REFPRES8  3
   REFPRES9  3  NPERSREC  3  NCONDREC  3  NDRVREC   3  NHOSPREC  3
   CONDLIST  3  WORKTEL   3  QUARTER   3  REGION    3  MSASIZE   3
   MSA       3  WTFQ      8  VARSTRAR  3  VARPSUR   3  VARSUBSR  3
   UNITSS    4  TYPEPSU   3  PANEL     3
   ;

* INPUT ALL VARIABLES;
 
INPUT
   RECTYPE      1 -   2        YEAR         3 -   4
   HHID     $   5 -  14        WEEKCODE    19 -  20
   LAFLAG      21 -  21        LIVQTR      22 -  23
   PHONE       24 -  24        GOUPQTR     25 -  26
   COMIVIEW    27 -  27        NONIVIEW    28 -  29
   DATINV   $  30 -  33        DATIVIEW $  30 -  31
   DATIVIED $  32 -  33        NFAM        34 -  35
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
   VARSTRAR   337 - 340        VARPSUR    341 - 341
   VARSUBSR   342 - 343        UNITSS     344 - 350
   TYPEPSU    351 - 351        PANEL      352 - 352
   ;
   WTFA_HH=WTFQ/4;

* DEFINE VARIABLE LABELS;
 
LABEL
   RECTYPE  = "RECORD TYPE"
   YEAR     = "PROCESSING YEAR"
   HHID     = "HOUSEHOLD ID"
   WEEKCODE = "SAMPLING WEEK CODE"
   LAFLAG   = "LATE INTERVIEW"
   LIVQTR   = "TYPE OF LIVING QUARTERS:"
   PHONE    = "HAS TELEPHONE"
   GOUPQTR  = "GROUP QUARTERS (UNEDITED)"
   COMIVIEW = "COMPLETED INTERVIEW"
   NONIVIEW = "NON-INTERVIEW REASON"
   DATINV   = "DATE OF COMPLETION (OR LAST ATTEMPT) OF INITIAL INTERVIEW (UNEDITED)"
   DATIVIEW = "MONTH"
   DATIVIED = "DAY"
   NFAM     = "NUMBER OF FAMILIES IN THE HOUSEHOLD"
   SIZEPRIM = "SIZE OF FAMILY - PRIMARY FAMILY"
   SIZESEC1 = "SIZE OF FAMILY - SECONDARY FAMILY #1"
   SIZESEC2 = "SIZE OF FAMILY - SECONDARY FAMILY #2"
   SIZESEC3 = "SIZE OF FAMILY - SECONDARY FAMILY #3"
   SIZESEC4 = "SIZE OF FAMILY - SECONDARY FAMILY #4"
   SIZESEC5 = "SIZE OF FAMILY - SECONDARY FAMILY #5"
   SIZESEC6 = "SIZE OF FAMILY - SECONDARY FAMILY #6"
   SIZESEC7 = "SIZE OF FAMILY - SECONDARY FAMILY #7"
   SIZESEC8 = "SIZE OF FAMILY - SECONDARY FAMILY #8"
   SIZESEC9 = "SIZE OF FAMILY - SECONDARY FAMILY #9"
   NUMREL   = "NUMBER OF UNRELATED INDIVIDUALS"
   REFPRESP = "REFERENCE PERSON PRESENT - PRIMARY FAMILY"
   REFPRES1 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY # 1"
   REFPRES2 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY # 2"
   REFPRES3 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY # 3"
   REFPRES4 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY # 4"
   REFPRES5 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY # 5"
   REFPRES6 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY # 6"
   REFPRES7 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY # 7"
   REFPRES8 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY # 8"
   REFPRES9 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY # 9"
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
   VARSTRAR = "STRATA FOR VARIANCE ESTIMATION"
   VARPSUR  = "PSU FOR VARIANCE ESTIMATION"
   VARSUBSR = "SUBSTRATUM FOR VARIANCE ESTIMATION"
   UNITSS   = "SECONDARY SAMPLING UNIT"
   TYPEPSU  = "TYPE OF PSU"
   PANEL    = "PANEL"
   ;

* ASSOCIATE VARIABLES WITH FORMAT VALUES;
 
FORMAT
   RECTYPE   HHD001X.    YEAR      HHD002X.    HHID      $HHD003X.
   WEEKCODE  HHD004X.    LAFLAG    HHD005X.    LIVQTR    HHD006X.
   PHONE     HHD007X.    GOUPQTR   HHD008X.    COMIVIEW  HHD009X.
   NONIVIEW  HHD010X.    DATINV    $HHD011X.   DATIVIEW  $HHD012X.
   DATIVIED  $HHD013X.   NFAM      HHD014X.    SIZEPRIM  HHD015X.
   SIZESEC1  HHD016X.    SIZESEC2  HHD017X.    SIZESEC3  HHD018X.
   SIZESEC4  HHD019X.    SIZESEC5  HHD020X.    SIZESEC6  HHD021X.
   SIZESEC7  HHD022X.    SIZESEC8  HHD023X.    SIZESEC9  HHD024X.
   NUMREL    HHD025X.    REFPRESP  HHD026X.    REFPRES1  HHD027X.
   REFPRES2  HHD028X.    REFPRES3  HHD029X.    REFPRES4  HHD030X.
   REFPRES5  HHD031X.    REFPRES6  HHD032X.    REFPRES7  HHD033X.
   REFPRES8  HHD034X.    REFPRES9  HHD035X.    NPERSREC  HHD036X.
   NCONDREC  HHD037X.    NDRVREC   HHD038X.    NHOSPREC  HHD039X.
   CONDLIST  HHD040X.    WORKTEL   HHD041X.    QUARTER   HHD042X.
   REGION    HHD043X.    MSASIZE   HHD044X.    MSA       HHD045X.
   WTFQ      HHD046X.    VARSTRAR  HHD047X.    VARPSUR   HHD048X.
   VARSUBSR  HHD049X.    UNITSS    HHD050X.    TYPEPSU   HHD051X.
   PANEL     HHD052X.
   ;
 
PROC CONTENTS DATA=NHIS.HOUSEHLD;
 
PROC FREQ DATA=NHIS.HOUSEHLD;
TITLE1 'FREQUENCY REPORT FOR 1995 NHIS HOUSEHOLD FILE';
TITLE2 '(WEIGHTED)';
TABLES RECTYPE/LIST MISSING;
WEIGHT WTFA_HH;
 
PROC FREQ DATA=NHIS.HOUSEHLD;
TITLE1 'FREQUENCY REPORT FOR 1995 NHIS HOUSEHOLD FILE';
TITLE2 '(UNWEIGHTED)';
TABLES RECTYPE/LIST MISSING;
 
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
              STATEMENT: FORMAT _ALL_;
RUN;

