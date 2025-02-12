DM 'CLE LOG; CLE OUT';
**************************************************************************
     August 13, 2007
 
THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
FILE FROM THE NHIS 1969 HOUSEHLD.DAT ASCII FILE.
 
NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
      GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
      DOCUMENTATION.
 
THIS IS STORED IN HOUSEHLD.SAS
*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;
 
LIBNAME NHIS    'C:\NHIS1969';
LIBNAME LIBRARY 'C:\NHIS1969';
 
FILENAME ASCIIDAT 'C:\NHIS1969\HOUSEHLD.DAT';

* DEFINE VARIABLE VALUES FOR REPORT;
 
PROC FORMAT LIBRARY=LIBRARY;
  VALUE  HHP001X
   1                = "B48 (weeks 3-13) and B52 (weeks 1 & 2)"
   2                = "B49"
   3                = "B50"
   4                = "B51"
   ;
  VALUE  HHP002X
   9                = "1969"
   0                = "1970"
   ;
  VALUE  HHP003X
   ;
  VALUE  HHP004X
   21, 41, 61       = "Week 01, 1969 or 1970"
   22, 42, 62       = "Week 02, 1969 or 1970"
   23, 43, 63       = "Week 03, 1969"
   24, 44, 64       = "Week 04, 1969"
   25, 45, 65       = "Week 05, 1969"
   26, 46, 66       = "Week 06, 1969"
   27, 47, 67       = "Week 07, 1969"
   28, 48, 68       = "Week 08, 1969"
   29, 49, 69       = "Week 09, 1969"
   30, 50, 70       = "Week 10, 1969"
   31, 51, 71       = "Week 11, 1969"
   32, 52, 72       = "Week 12, 1969"
   33, 53, 73       = "Week 13, 1969"
   ;
  VALUE  HHP005X
   ;
  VALUE  HHP006X
   ;
  VALUE  HHP007X
   ;
  VALUE  HHP008X
   01               = "Weeks 21, 41, 61"
   02               = "Weeks 22, 42, 62"
   03               = "Weeks 23, 43, 63"
   04               = "Weeks 24, 44, 64"
   05               = "Weeks 25, 45, 65"
   06               = "Weeks 26, 46, 66"
   07               = "Weeks 27, 47, 67"
   08               = "Weeks 28, 48, 68"
   09               = "Weeks 29, 49, 69"
   10               = "Weeks 30, 50, 70"
   11               = "Weeks 31, 51, 71"
   12               = "Weeks 32, 52, 72"
   13               = "Weeks 33, 53, 73"
   ;
  VALUE  HHP009X
   1                = "B48 (Weeks 03-13) and B49 (Weeks 01-02)"
   2                = "B49 (Weeks 03-13) and B50 (Weeks 01-02)"
   3                = "B50 (Weeks 03-13) and B51 (Weeks 01-02)"
   4                = "B51 (Weeks 03-13) and B52 (Weeks 01-02)"
   ;
  VALUE  HHP010X
   9                = "1969"
   ;
  VALUE  HHP011X
   1                = "Census weeks 23, 43, 63 - 1969"
   2                = "Census weeks 24, 44, 64 - 1969"
   3                = "Census weeks 25, 45, 65 - 1969"
   4                = "Census weeks 26, 46, 66 - 1969"
   5                = "Census weeks 27, 47, 67 - 1969"
   6                = "Census weeks 28, 48, 68 - 1969"
   7                = "Census weeks 29, 49, 69 - 1969"
   8                = "Census weeks 30, 50, 70 - 1969"
   9                = "Census weeks 31, 51, 71 - 1969"
   10               = "Census weeks 32, 52, 72 - 1969"
   11               = "Census weeks 33, 53, 73 - 1969"
   12               = "Census weeks 21, 41, 61 - 1969 or 1970"
   13               = "Census weeks 22, 42, 62 - 1969 or 1970"
   ;
  VALUE  HHP012X
   0                = "The 22 Large Self-representing SMSA's"
   1                = "SMSA-Self-representing"
   3                = "SMSA-Nonself-representing"
   4                = "Non-SMSA-Self-representing"
   6                = "Non-SMSA-Nonself-representing"
   ;
  VALUE  HHP013X
   1                = "Northeast"
   2                = "North Central"
   3                = "South"
   4                = "West"
   ;
  VALUE  HHP014X
   00               = "Not in a large self-representing SMSA"
   34               = "Boston"                 45    = "Buffalo"
   35               = "New York"               46    = "Cleveland"
   36               = "Philadelphia"           47    = "Minneapolis-St Paul"
   37               = "Pittsburgh"             48    = "Milwaukee"
   38               = "Detroit"                49    = "Kansas City"
   39               = "Chicago"                50    = "St. Louis"
   40               = "Cincinnati"             51    = "Houston"
   41               = "Los Angeles-Long Beach" 52    = "Dallas"
   42               = "San Francisco-Oakland"  53    = "Washington, DC"
   43               = "Baltimore"              54    = "Seattle"
   44               = "Atlanta"                55    = "San Diego"
   ;
  VALUE  HHP015X
   1                = "In SMSA, in Central City of SMSA"
   2                = "In SMSA, not in Central City of SMSA"
   4                = "Not in SMSA"
   ;
  VALUE  HHP016X
   1                = "SMSA"
   2                = "Non-SMSA - Nonfarm"
   3                = "Non-SMSA - Farm"
   ;
  VALUE  HHP017X
   1                = "Housing Unit"
   2                = "Other"
   ;
  VALUE  HHP018X
   1-8              = "Number of calls"
   9                = "9+ calls"
   .                = "Not reported"
   ;
  VALUE $HHP019X
   "1"              = "Yes - phone"
   "2"              = "None"
   "3"              = "DK if phone or refused"
   "4"              = "Blank"
   ;
  VALUE  HHP020X
   1                = "Yes"
   2                = "No"
   ;
  VALUE  HHP021X
   1                = "Monday"
   2                = "Tuesday"
   3                = "Wednesday"
   4                = "Thursday"
   5                = "Friday"
   6                = "Saturday"
   7                = "Sunday"
   8                = "Unknown"
   .                = "Noninterviewed"
   ;
  VALUE $HHP022X
   "001"-"999"      = "Minutes"
   " "              = "Not reported"
   ;
  VALUE  HHP023X
   1                = "6:01 am - 12:00 noon"
   2                = "12:01pm -  6:00 pm"
   3                = "6:01 pm - 12:00 midnight"
   4                = "12:01am -  6:00 am"
   .                = "Not reported"
   ;
  VALUE  HHP024X
   1                = "Completed interview"
   2                = "Noninterview"
   ;
  VALUE  HHP025X
   1                = "Refusal"
   2                = "No one at home"
   3                = "Temporarily absent"
   4                = "Other"
   .                = "Interviewed"
   ;
  VALUE  HHP026X
   ;
  VALUE  HHP027X
   ;
  VALUE  HHP028X
   ;
  VALUE  HHP029X
   ;
  VALUE  HHP030X
   ;
  VALUE  HHP031X
   ;
  VALUE  HHP032X
   ;
  VALUE  HHP033X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   ;
  VALUE  HHP034X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   ;
  VALUE  HHP035X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   ;
  VALUE  HHP036X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   ;
  VALUE  HHP037X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   ;
  VALUE  HHP038X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   ;
  VALUE  HHP039X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   ;
  VALUE  HHP040X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   ;
  VALUE  HHP041X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   ;
  VALUE  HHP042X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   ;
  VALUE  HHP043X
   1                = "Yes"
   2                = "No"
   .                = "Non-interview, NA, or only unrelated individual"
   ;
  VALUE  HHP044X
   1                = "Yes"
   2                = "No"
   .                = "Non-interview, NA, or only unrelated individual"
   ;
  VALUE  HHP045X
   1                = "Yes"
   2                = "No"
   .                = "Non-interview, NA, or only unrelated individual"
   ;
  VALUE  HHP046X
   1                = "Yes"
   2                = "No"
   .                = "Non-interview, NA, or only unrelated individual"
   ;
  VALUE  HHP047X
   1                = "Yes"
   2                = "No"
   .                = "Non-interview, NA, or only unrelated individual"
   ;
  VALUE  HHP048X
   1                = "Yes"
   2                = "No"
   .                = "Non-interview, NA, or only unrelated individual"
   ;
  VALUE  HHP049X
   1                = "Yes"
   2                = "No"
   .                = "Non-interview, NA, or only unrelated individual"
   ;
  VALUE  HHP050X
   1                = "Yes"
   2                = "No"
   .                = "Non-interview, NA, or only unrelated individual"
   ;
  VALUE  HHP051X
   1                = "Yes"
   2                = "No"
   .                = "Non-interview, NA, or only unrelated individual"
   ;
  VALUE  HHP052X
   1                = "Yes"
   2                = "No"
   .                = "Non-interview, NA, or only unrelated individual"
   ;
  VALUE  HHP053X
   ;
  VALUE  HHP054X
   01               = "January"    07     = "July"
   02               = "February"   08     = "August"
   03               = "March"      09     = "September"
   04               = "April"      10     = "October"
   05               = "May"        11     = "November"
   06               = "June"       12     = "December"
   .                = "Not Reported"
   ;
  VALUE  HHP055X
   01-31            = "Day of Month"
   .                = "Not Reported"
   ;
  VALUE  HHP056X
   ;
  VALUE  HHP057X
   ;
 
DATA NHIS.HOUSEHLD;
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1969';
   INFILE ASCIIDAT MISSOVER TRUNCOVER LRECL=112;
 
* DEFINE LENGTH OF NUMERIC VARIABLES;
 
LENGTH
   SAMPLER   3  YEARINT   3  PSURANDR  4  WEEKCEN   3  SEGMENT   3
   HHID      3  RECTYPE   3  WEEKCENR  3  QUARTER   3  YEAR      3
   WEEKPROC  3  PSUTYPE   3  REGION    3  LSRSMSA   3  SMSA      3
   SMSAR     3  HH_UNIT   3  NUMCALL   3  OBS_INT   3  WKDAY     3
   TIMEINT   3  COMPLET   3  TYPEA     3  DWELLING  3  FAMTOT    3
   UNRELATD  3  PXTOT     3  CONDTOT   3  HPLEPI    3  DVTOT     3
   PRSIZE    3  F1SIZE    3  F2SIZE    3  F3SIZE    3  F4SIZE    3
   F5SIZE    3  F6SIZE    3  F7SIZE    3  F8SIZE    3  F9SIZE    3
   PRHEAD    3  F1HEAD    3  F2HEAD    3  F3HEAD    3  F4HEAD    3
   F5HEAD    3  F6HEAD    3  F7HEAD    3  F8HEAD    3  F9HEAD    3
   INTDATE   4  INTMONTH  3  INTDAY    3  WTIQ_HH   8  WTIA_HH   6
   ;
* INPUT ALL VARIABLES;
 
INPUT
   SAMPLER      1 -   1        YEARINT      2 -   2
   PSURANDR     3 -   5        WEEKCEN      6 -   7
   SEGMENT      8 -   9        HHID        10 -  11
   RECTYPE     14 -  14        WEEKCENR    17 -  18
   QUARTER     19 -  19        YEAR        20 -  20
   WEEKPROC    21 -  22        PSUTYPE     28 -  28
   REGION      29 -  29        LSRSMSA     30 -  31
   SMSA        33 -  33        SMSAR       36 -  36
   HH_UNIT     37 -  37        NUMCALL     42 -  42
   PHONE    $  43 -  43        OBS_INT     44 -  44
   WKDAY       45 -  45        LEN_INT  $  46 -  48
   TIMEINT     49 -  49        COMPLET     50 -  50
   TYPEA       51 -  51        DWELLING    52 -  53
   FAMTOT      54 -  55        UNRELATD    56 -  57
   PXTOT       58 -  59        CONDTOT     60 -  61
   HPLEPI      62 -  63        DVTOT       64 -  65
   PRSIZE      66 -  67        F1SIZE      68 -  69
   F2SIZE      70 -  71        F3SIZE      72 -  73
   F4SIZE      74 -  75        F5SIZE      76 -  77
   F6SIZE      78 -  79        F7SIZE      80 -  81
   F8SIZE      82 -  83        F9SIZE      84 -  85
   PRHEAD      86 -  86        F1HEAD      87 -  87
   F2HEAD      88 -  88        F3HEAD      89 -  89
   F4HEAD      90 -  90        F5HEAD      91 -  91
   F6HEAD      92 -  92        F7HEAD      93 -  93
   F8HEAD      94 -  94        F9HEAD      95 -  95
   INTDATE     96 -  99        INTMONTH    96 -  97
   INTDAY      98 -  99        WTIQ_HH    101 - 106 .1
   WTIA_HH    107 - 112
   ;
* DEFINE VARIABLE LABELS;
 
LABEL
   SAMPLER  = "SAMPLE - RECODE OF CENSUS CODE"
   YEARINT  = "YEAR OF COLLECTION OF DATA"
   PSURANDR = "PSU - RANDOM CODE"
   WEEKCEN  = "WEEK - CENSUS CODE"
   SEGMENT  = "SEGMENT NUMBER"
   HHID     = "HOUSEHOLD NUMBER"
   RECTYPE  = "RECORD TYPE (1)"
   WEEKCENR = "CENSUS WEEK RECODE"
   QUARTER  = "PROCESSING QUARTER CODE"
   YEAR     = "PROCESSING YEAR"
   WEEKPROC = "PROCESSING WEEK CODE"
   PSUTYPE  = "TYPE OF RECODE"
   REGION   = "REGION"
   LSRSMSA  = "NHIS SECTION CODE - TABULATION AREA"
   SMSA     = "STANDARD METROPOLITAN STATISTICAL AREA"
   SMSAR    = "SMSA - NON-SMSA RESIDENCE RECODE"
   HH_UNIT  = "TYPE OF LIVING QUARTERS"
   NUMCALL  = "NUMBER OF CALLS (UNEDITED)"
   PHONE    = "TELEPHONE (UNEDITED)"
   OBS_INT  = "OBSERVED INTERVIEW (UNEDITED)"
   WKDAY    = "DAY OF WEEK INTERVIEW COMPLETED"
   LEN_INT  = "LENGTH OF INTERVIEW (UNEDITED)"
   TIMEINT  = "TIME OF DAY OF INTERVIEW (UNEDITED)"
   COMPLET  = "COMPLETED INTERVIEW"
   TYPEA    = "NONINTERVIEW REASON - TYPE A"
   DWELLING = "SPECIAL DWELLING PLACE"
   FAMTOT   = "NUMBER OF FAMILIES IN THE HOUSEHOLD (UNEDITED)"
   UNRELATD = "NUMBER OF UNRELATED INDIVIDUALS"
   PXTOT    = "NUMBER OF PERSONS IN THE HOUSEHOLD"
   CONDTOT  = "NUMBER OF CONDITIONS IN THE HOUSEHOLD"
   HPLEPI   = "NUMBER OF SHORT-STAY HOSPITAL EPISODES"
   DVTOT    = "NUMBER OF DOCTOR VISITS"
   PRSIZE   = "SIZE OF FAMILY - PRIMARY FAMILY"
   F1SIZE   = "SIZE OF FAMILY - SECONDARY FAMILY 1"
   F2SIZE   = "SIZE OF FAMILY - SECONDARY FAMILY 2"
   F3SIZE   = "SIZE OF FAMILY - SECONDARY FAMILY 3"
   F4SIZE   = "SIZE OF FAMILY - SECONDARY FAMILY 4"
   F5SIZE   = "SIZE OF FAMILY - SECONDARY FAMILY 5"
   F6SIZE   = "SIZE OF FAMILY - SECONDARY FAMILY 6"
   F7SIZE   = "SIZE OF FAMILY - SECONDARY FAMILY 7"
   F8SIZE   = "SIZE OF FAMILY - SECONDARY FAMILY 8"
   F9SIZE   = "SIZE OF FAMILY - SECONDARY FAMILY 9"
   PRHEAD   = "HEAD PRESENT - PRIMARY FAMILY"
   F1HEAD   = "HEAD PRESENT - SECONDARY FAMILY 1"
   F2HEAD   = "HEAD PRESENT - SECONDARY FAMILY 2"
   F3HEAD   = "HEAD PRESENT - SECONDARY FAMILY 3"
   F4HEAD   = "HEAD PRESENT - SECONDARY FAMILY 4"
   F5HEAD   = "HEAD PRESENT - SECONDARY FAMILY 5"
   F6HEAD   = "HEAD PRESENT - SECONDARY FAMILY 6"
   F7HEAD   = "HEAD PRESENT - SECONDARY FAMILY 7"
   F8HEAD   = "HEAD PRESENT - SECONDARY FAMILY 8"
   F9HEAD   = "HEAD PRESENT - SECONDARY FAMILY 9"
   INTDATE  = "DATE OF COMPLETION OF INTERVIEW (UNEDITED)"
   INTMONTH = "MONTH OF COMPLETION OF INTERVIEW"
   INTDAY   = "DAY OF COMPLETION"
   WTIQ_HH  = "BASIC QUARTERLY WEIGHT (XXXXX.X)"
   WTIA_HH  = "BASIC ANNUAL WEIGHT"
   ;
* ASSOCIATE VARIABLES WITH FORMAT VALUES;
 
FORMAT
   SAMPLER   HHP001X.    YEARINT   HHP002X.    PSURANDR  HHP003X.
   WEEKCEN   HHP004X.    SEGMENT   HHP005X.    HHID      HHP006X.
   RECTYPE   HHP007X.    WEEKCENR  HHP008X.    QUARTER   HHP009X.
   YEAR      HHP010X.    WEEKPROC  HHP011X.    PSUTYPE   HHP012X.
   REGION    HHP013X.    LSRSMSA   HHP014X.    SMSA      HHP015X.
   SMSAR     HHP016X.    HH_UNIT   HHP017X.    NUMCALL   HHP018X.
   PHONE     $HHP019X.   OBS_INT   HHP020X.    WKDAY     HHP021X.
   LEN_INT   $HHP022X.   TIMEINT   HHP023X.    COMPLET   HHP024X.
   TYPEA     HHP025X.    DWELLING  HHP026X.    FAMTOT    HHP027X.
   UNRELATD  HHP028X.    PXTOT     HHP029X.    CONDTOT   HHP030X.
   HPLEPI    HHP031X.    DVTOT     HHP032X.    PRSIZE    HHP033X.
   F1SIZE    HHP034X.    F2SIZE    HHP035X.    F3SIZE    HHP036X.
   F4SIZE    HHP037X.    F5SIZE    HHP038X.    F6SIZE    HHP039X.
   F7SIZE    HHP040X.    F8SIZE    HHP041X.    F9SIZE    HHP042X.
   PRHEAD    HHP043X.    F1HEAD    HHP044X.    F2HEAD    HHP045X.
   F3HEAD    HHP046X.    F4HEAD    HHP047X.    F5HEAD    HHP048X.
   F6HEAD    HHP049X.    F7HEAD    HHP050X.    F8HEAD    HHP051X.
   F9HEAD    HHP052X.    INTDATE   HHP053X.    INTMONTH  HHP054X.
   INTDAY    HHP055X.    WTIQ_HH   HHP056X.    WTIA_HH   HHP057X.
   ;
 
PROC CONTENTS DATA=NHIS.HOUSEHLD;
 
PROC FREQ DATA=NHIS.HOUSEHLD;
TITLE1 'FREQUENCY REPORT FOR 1969 NHIS PUBLIC USE HOUSEHOLD FILE';
TITLE2 '(WEIGHTED)';
TABLES RECTYPE/LIST MISSING;
WEIGHT WTIA_HH;
 
PROC FREQ DATA=NHIS.HOUSEHLD;
TITLE1 'FREQUENCY REPORT FOR 1969 NHIS PUBLIC USE HOUSEHOLD FILE';
TITLE2 '(UNWEIGHTED)';
TABLES RECTYPE/LIST MISSING;
 
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
              STATEMENT: FORMAT _ALL_;
RUN;
