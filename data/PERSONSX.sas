DM 'CLE LOG; CLE OUT';
**************************************************************************
     September 13, 2007
 
THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
FILE FROM THE NHIS 1969 PERSONSX.DAT ASCII FILE.
 
NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
      GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
      DOCUMENTATION.
 
THIS IS STORED IN PERSONSX.SAS
*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;
 
LIBNAME NHIS    'C:\NHIS1969\';
LIBNAME LIBRARY 'C:\NHIS1969\';
 
FILENAME ASCIIDAT 'C:\NHIS1969\PERSONSX.DAT';
 
* DEFINE VARIABLE VALUES FOR REPORT;
 
PROC FORMAT LIBRARY=LIBRARY;
  VALUE  PER001X
   1                = "B48 (weeks 3-13) and B52 (weeks 1 & 2)"
   2                = "B49"
   3                = "B50"
   4                = "B51"
   ;
  VALUE  PER002X
   9                = "1969"
   0                = "1970"
   ;
  VALUE  PER003X
   ;
  VALUE  PER004X
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
  VALUE  PER005X
   ;
  VALUE  PER006X
   ;
  VALUE  PER007X
   ;
  VALUE  PER008X
   ;
  VALUE  PER009X
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
  VALUE  PER010X
   1                = "B48 (Weeks 03-13) and B49 (Weeks 01-02)"
   2                = "B49 (Weeks 03-13) and B50 (Weeks 01-02)"
   3                = "B50 (Weeks 03-13) and B51 (Weeks 01-02)"
   4                = "B51 (Weeks 03-13) and B52 (Weeks 01-02)"
   ;
  VALUE  PER011X
   9                = "1969"
   ;
  VALUE  PER012X
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
  VALUE  PER013X
   0                = "The 22 Large Self-representing SMSA's"
   1                = "SMSA-Self-representing"
   3                = "SMSA-Nonself-representing"
   4                = "Non-SMSA-Self-representing"
   6                = "Non-SMSA-Nonself-representing"
   ;
  VALUE  PER014X
   1                = "Northeast"
   2                = "North Central"
   3                = "South"
   4                = "West"
   ;
  VALUE  PER015X
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
  VALUE  PER016X
   1                = "In SMSA, in Central City of SMSA"
   2                = "In SMSA, not in Central City of SMSA"
   4                = "Not in SMSA"
   ;
  VALUE  PER017X
   1                = "SMSA"
   2                = "Non-SMSA - Nonfarm"
   3                = "Non-SMSA - Farm"
   ;
  VALUE  PER018X
   1                = "Housing Unit"
   2                = "Other"
   ;
  VALUE  PER019X
   1-8              = "Number of calls"
   9                = "9+ calls"
   .                = "Not reported"
   ;
  VALUE $PER020X
   "1"              = "Yes - phone"
   "2"              = "None"
   "3"              = "DK if phone or refused"
   "4"              = "Blank"
   ;
  VALUE  PER021X
   1                = "Yes"
   2                = "No"
   ;
  VALUE  PER022X
   1                = "Monday"
   2                = "Tuesday"
   3                = "Wednesday"
   4                = "Thursday"
   5                = "Friday"
   6                = "Saturday"
   7                = "Sunday"
   8                = "Unknown"
   ;
  VALUE $PER023X
   "001-999"        = "Minutes"
   " "              = "Not reported"
   ;
  VALUE  PER024X
   1                = "6:01 am - 12:00 noon"
   2                = "12:01pm -  6:00 pm"
   3                = "6:01 pm - 12:00 midnight"
   4                = "12:01am -  6:00 am"
   .                = "Not reported"
   ;
  VALUE  PER025X
   1                = "White"
   2                = "Negro"
   3                = "Other"
   ;
  VALUE  PER026X
   1                = "White"
   2                = "Other race"
   ;
  VALUE  PER027X
   1                = "Male"
   2                = "Female"
   ;
  VALUE  PER028X
   00               = "Under 1 year"
   01-98            = "Single years"
   99               = "99+ years"
   ;
  VALUE  PER029X
   01               = "00-04 years"
   02               = "05-14"
   03               = "15-24"
   04               = "25-34"
   05               = "35-44"
   06               = "45-54"
   07               = "55-64"
   08               = "65-74"
   09               = "75+"
   ;
  VALUE  PER030X
   01               = "Under 6 years"
   02               = "06-16"
   03               = "17-24"
   04               = "25-34"
   05               = "35-44"
   06               = "45-54"
   07               = "55-64"
   08               = "65-74"
   09               = "75+"
   ;
  VALUE  PER031X
   1                = "Under 15 years"
   2                = "15-44"
   3                = "45-64"
   4                = "65+"
   ;
  VALUE  PER032X
   0                = "Under 17 years"
   1                = "Married"
   2                = "Widowed"
   3                = "Never married"
   4                = "Divorced"
   5                = "Separated"
   ;
  VALUE  PER033X
   01               = "Under 17 years of age"
   02               = "None"
   03               = "1-4 years completed"
   04               = "5-7 years completed"
   05               = "8 years completed"
   06               = "9-11 years completed"
   07               = "12 years completed(high school graduate)"
   08               = "13-14 years completed"
   09               = "15 years completed"
   10               = "16 years completed(college graduate)"
   11               = "17+ years completed(graduate school)"
   12               = "Unknown"
   ;
  VALUE  PER034X
   1                = "Under 17 years of age"
   2                = "None"
   3                = "01-08 (elementary)"
   4                = "09-11 (high school)"
   5                = "12 (high school graduate)"
   6                = "13-15 (college)"
   7                = "16+ (college graduate +)"
   8                = "Unknown"
   ;
  VALUE  PER035X
   01               = "Under 17 years of age"
   02               = "None"
   03               = "1-4 years completed"
   04               = "5-7 years completed"
   05               = "8 years completed"
   06               = "9-11 years completed"
   07               = "12 years completed (high school graduate)"
   08               = "13-14 years completed"
   09               = "15 years completed"
   10               = "16 years completed (college graduate)"
   11               = "17+ years completed (graduate school)"
   12               = "Unknown"
   ;
  VALUE  PER036X
   1                = "Under 17 years of age"
   2                = "None"
   3                = "01-08 (elementary)"
   4                = "09-11 (high school)"
   5                = "12 (high school graduate)"
   6                = "13-15 (college)"
   7                = "16+ (college graduate +)"
   8                = "Unknown"
   ;
  VALUE  PER037X
   0                = "Female or under 17 years of age"
   1                = "Nonveteran"
   2                = "Peacetime only"
   3                = "Wartime veteran"
   4                = "Other Korean war veteran"
   5                = "Cold war veteran (1955-1964)"
   6                = "Vietnam veteran"
   7                = "DK if served in Armed Forces"
   8                = "DK if war veteran"
   9                = "DK if Korean, Vietnam or Cold war veteran"
   ;
  VALUE  PER038X
   01               = "Under $1,000"
   02               = "$1,000-1,999"
   03               = "2,000-2,999"
   04               = "3,000-3,999"
   05               = "4,000-4,999"
   06               = "5,000-5,999"
   07               = "6,000-6,999"
   08               = "7,000-9,999"
   09               = "10,000-14,999"
   10               = "15,000+"
   11               = "Unknown"
   ;
  VALUE  PER039X
   1                = "Under $3,000"
   2                = "$3,000-4,999"
   3                = "5,000-6,999"
   4                = "7,000-9,999"
   5                = "10,000-14,999"
   6                = "15,000+"
   7                = "Unknown"
   ;
  VALUE $PER040X
   ;
  VALUE $PER041X
   "&"              = "Primary individual"
   "-"              = "Secondary individual"
   "0"              = "Primary family"
   "1"-"9"          = "Secondary families"
   ;
  VALUE $PER042X
   "&"              = "Unrelated individual living alone"
   "0"              = "Head of family or unrelated individual not"
   "1"              = "Wife (husband living at home and not in Armed"
   "2"              = "Wife (husband living at home and is in Armed"
   "3"              = "Child of head or spouse"
   "4"              = "Grandchild of head or spouse"
   "5"              = "Parent of head or spouse"
   "6"              = "Other relative"
   ;
  VALUE  PER043X
   1                = "Living alone"
   2                = "Living with nonrelative"
   3                = "Living with spouse - married"
   4                = "Living with relatives - other"
   ;
  VALUE  PER044X
   0                = "Under 6 years"
   1                = "Usually working"
   2                = "Keeping house (female)"
   3                = "Retired (45+ years)"
   4                = "Going to school"
   5                = "Something else"
   6                = "Unknown"
   ;
  VALUE  PER045X
   0                = "Under 17 years"
   1                = "Worked in past 2 weeks"
   2                = "Did not work, has job, not on layoff and not"
   3                = "Did not work, has job, looking for work"
   4                = "Did not work, has job, on layoff"
   5                = "Did not work, has job, on layoff and looking for"
   6                = "Did not work, has job, unknown if looking or on"
   7                = "Did not work, no job, looking for work or on"
   8                = "Not in labor force (17+)"
   ;
  VALUE  PER046X
   1                = "Private paid"
   2                = "Federal Government"
   3                = "Other Government"
   4                = "Self employed"
   5                = "Nonpay"
   6                = "Other (new worker)"
   7                = "Unknown or not reported"
   8                = "Not in Labor Force"
   ;
  VALUE  PER047X
   001-999          = "Code Number"
   .                = "Not applicable"
   ;
  VALUE  PER048X
   ;
  VALUE  PER049X
   ;
  VALUE  PER050X
   000-995          = "Code number"
   .                = "Not applicable"
   ;
  VALUE  PER051X
   ;
  VALUE  PER052X
   ;
  VALUE  PER053X
   1                = "Self entirely"
   2                = "Self partly"
   3                = "Spouse"
   4                = "Mother"
   5                = "Father"
   6                = "Other female family member"
   7                = "Other male family member"
   8                = "Other"
   ;
  VALUE  PER054X
   00               = "Under 1 year"
   01-98            = "Single years"
   99               = "Unknown or not reported"
   ;
  VALUE  PER055X
   1                = "Under 20 years"
   2                = "20-54 years"
   3                = "55-64 years"
   4                = "65-74 years"
   5                = "75+ years"
   6                = "Unknown or not reported"
   ;
  VALUE  PER056X
   00               = "Unrelated individuals"
   01-19            = "Family size"
   ;
  VALUE  PER057X
   0                = "Unrelated individuals"
   1                = "One member"
   2                = "2 members"
   3                = "3 members"
   4                = "4 members"
   5                = "5 members"
   6                = "6 members"
   7                = "7 members"
   8                = "8+ members"
   ;
  VALUE  PER058X
   1                = "Can not perform Usual Activity (UA)"
   2                = "Can perform UA but limited in amount and kind"
   3                = "Can perform UA but limited in outside activities"
   4                = "Not limited (including unknown)"
   5                = "Not applicable (no chronic condition)"
   ;
  VALUE  PER059X
   ;
  VALUE  PER060X
   1                = "Months"
   2                = "Years"
   3                = "Unknown"
   .                = "Not applicable or not limited"
   ;
  VALUE  PER061X
   00               = "Less than 1 month"
   01-98            = "Number of months or years"
   99               = "Unknown"
   .                = "Not applicable or not limited"
   ;
  VALUE  PER062X
   00               = "None"
   01-14            = "Number of days"
   ;
  VALUE  PER063X
   00               = "None"
   01-14            = "Number of days"
   ;
  VALUE  PER064X
   1                = "Under 6 years of age"
   2                = "School-loss days"
   3                = "Work-loss days"
   ;
  VALUE  PER065X
   00               = "None or Under 6 years of age"
   01-14            = "Number of days"
   ;
  VALUE  PER066X
   00               = "None or Under 6 years of age"
   01-14            = "Number of days"
   ;
  VALUE  PER067X
   00               = "None"
   01-98            = "Number of visits"
   ;
  VALUE  PER068X
   ;
  VALUE  PER069X
   1                = "Number of visits known"
   2                = "Number of visits unknown"
   ;
  VALUE  PER070X
   00               = "None or Unknown"
   01-98            = "Number of visits"
   ;
  VALUE  PER071X
   ;
  VALUE  PER072X
   1                = "Number of visits known"
   2                = "Number of visits unknown"
   ;
  VALUE  PER073X
   000              = "None or Unknown"
   001-998          = "Number of visits"
   ;
  VALUE  PER074X
   000              = "None"
   001-365          = "Number of days"
   ;
  VALUE  PER075X
   0                = "Never"
   1                = "Visit in past 2 weeks"
   2                = "Visit as inpatient in 2 weeks"
   3                = "2 weeks to less than 6 months"
   4                = "6 months to less than 12 months"
   5                = "1 year"
   6                = "2-4 years"
   7                = "5-9 years"
   8                = "10+ years"
   9                = "Unknown"
   ;
  VALUE  PER076X
   0                = "Never"
   1                = "Visit in 2 weeks"
   2                = "2 weeks to less than 6 months"
   3                = "6 months to less than 12 months"
   4                = "1 year"
   5                = "2-4 years"
   6                = "5-9 years"
   7                = "10+ years"
   8                = "Unknown"
   ;
  VALUE  PER077X
   ;
  VALUE  PER078X
   ;
  VALUE  PER079X
   ;
  VALUE  PER080X
   ;
  VALUE  PER081X
   ;
  VALUE  PER082X
   00               = "No aid in past 12 months"
   01               = "None now but did so in past 12 months"
   02               = "Family but not this person"
   03               = "Public assistance NOS"
   04               = "Relief"
   05               = "State and local welfare"
   06               = "Federal pensions and assistance"
   07               = "Other types"
   08               = "Receiving aid but type unknown"
   09               = "Unknown or not reported"
   10               = "Not applicable (income $5000+)"
   ;
  VALUE  PER083X
   1                = "Any accident or injury"
   2                = "Exertion from sports etc"
   3                = "Bursitis and/or tendonitis"
   4                = "Heart condition, hypertension etc"
   5                = "Back, neck, or spine trouble"
   6                = "Arthritis, rheumatism etc"
   7                = "Old age"
   8                = "Other"
   9                = "Unknown or not reported"
   ;
  VALUE $PER084X
   "1"              = "Any accident or injury"
   "2"              = "Exertion from sports etc"
   "3"              = "Bursitis and/or tendonitis"
   "4"              = "Heart condition, hypertension etc"
   "5"              = "Back, neck, or spine trouble"
   "6"              = "Arthritis, rheumatism etc"
   "7"              = "Old age"
   "8"              = "Other"
   "9"              = "Unknown or not reported"
   ;
  VALUE  PER085X
   1                = "Any accident or injury"
   2                = "Exertion from sports etc"
   3                = "Bursitis and/or tendonitis"
   4                = "Heart condition, hypertension etc"
   5                = "Back, neck, or spine trouble"
   6                = "Arthritis, rheumatism etc"
   7                = "Old age"
   8                = "Other"
   9                = "Unknown or not reported"
   ;
  VALUE  PER086X
   1                = "Any accident or injury"
   2                = "Exertion from sports etc"
   3                = "Bursitis and/or tendonitis"
   4                = "Heart condition, hypertension etc"
   5                = "Back, neck, or spine trouble"
   6                = "Arthritis, rheumatism etc"
   7                = "Old age"
   8                = "Other"
   9                = "Unknown or not reported"
   ;
  VALUE  PER087X
   ;
  VALUE  PER088X
   ;
  VALUE  PER089X
   ;
  VALUE  PER090X
   ;
 
DATA NHIS.PERSONSX;
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1969\';
   INFILE ASCIIDAT MISSOVER TRUNCOVER LRECL=200;
 
* DEFINE LENGTH OF NUMERIC VARIABLES;
 
LENGTH
   SAMPLER   3  YEARINT   3  PSURANDR  4  WEEKCEN   3  SEGMENT   3
   HHID      3  PERNUM    3  RECTYPE   3  WEEKCENR  3  QUARTER   3
   YEAR      3  WEEKPROC  3  PSUTYPE   3  REGION    3  LSRSMSA   3
   SMSA      3  SMSAR     3  HH_UNIT   3  NUMCALL   3  OBS_INT   3
   WKDAY     3  TIMEINT   3  RACE      3  RACER     3  SEX       3
   AGE       3  AGER1     3  AGER2     3  AGER3     3  MARSTAT   3
   EDUC      3  EDUCR     3  EDUCFH    3  EDUCFHR   3  VETERAN   3
   INCOME    3  INCOMER   3  FAMRELR   3  USUALACT  3  CURACT2W  3
   WKCLASS   3  INDUSTRY  4  INDUSR1   3  INDUSR2   3  OCCUP     4
   OCCUPR1   3  OCCUPR2   3  RESPOND   3  RESPAGE   3  RESPAGER  3
   FAMSIZE   3  FAMSIZER  3  ACTLIMIT  3  ACTLMDUR  4  ACTLMUNT  3
   ACTLMNUM  3  PRESAC2W  3  PBDAY2W   3  WKSCHID   3  WKSCH2W   3
   HDAY2W    3  DENTL2W   3  DNTL12M   4  DNTL12MC  3  DNTL12MN  3
   DV12M     4  DV12MC    3  DV12MN    4  HDAY12M   4  DVINTVL   3
   DTINTVL   3  HPTLEPI   3  CONDNUM   3  CHRONIC   3  CHRONCLA  3
   CHRONCLM  3  PASSIST   3  AMSTIFF   3  JTSWEL    3  JTTENDR   3
   WTIQ      8  WTFQ      6  WTFA      6  WT65      6
   ;
* INPUT ALL VARIABLES;
 
INPUT
   SAMPLER      1 -   1        YEARINT      2 -   2
   PSURANDR     3 -   5        WEEKCEN      6 -   7
   SEGMENT      8 -   9        HHID        10 -  11
   PERNUM      12 -  13        RECTYPE     14 -  14
   WEEKCENR    17 -  18        QUARTER     19 -  19
   YEAR        20 -  20        WEEKPROC    21 -  22
   PSUTYPE     28 -  28        REGION      29 -  29
   LSRSMSA     30 -  31        SMSA        33 -  33
   SMSAR       36 -  36        HH_UNIT     37 -  37
   NUMCALL     42 -  42        PHONE    $  43 -  43
   OBS_INT     44 -  44        WKDAY       45 -  45
   LEN_INT  $  46 -  48        TIMEINT     49 -  49
   RACE        50 -  50        RACER       51 -  51
   SEX         52 -  52        AGE         53 -  54
   AGER1       55 -  56        AGER2       57 -  58
   AGER3       59 -  59        MARSTAT     60 -  60
   EDUC        61 -  62        EDUCR       63 -  63
   EDUCFH      64 -  65        EDUCFHR     66 -  66
   VETERAN     67 -  67        INCOME      68 -  69
   INCOMER     70 -  70        FAMILY   $  71 -  72
   FAMTYPE  $  71 -  71        FAMREL   $  72 -  72
   FAMRELR     73 -  73        USUALACT    74 -  74
   CURACT2W    75 -  75        WKCLASS     76 -  76
   INDUSTRY    77 -  79        INDUSR1     80 -  81
   INDUSR2     82 -  83        OCCUP       84 -  86
   OCCUPR1     87 -  88        OCCUPR2     89 -  90
   RESPOND     91 -  91        RESPAGE     92 -  93
   RESPAGER    94 -  94        FAMSIZE     95 -  96
   FAMSIZER    97 -  97        ACTLIMIT    98 -  98
   ACTLMDUR    99 - 101        ACTLMUNT    99 -  99
   ACTLMNUM   100 - 101        PRESAC2W   106 - 107
   PBDAY2W    108 - 109        WKSCHID    110 - 110
   WKSCH2W    111 - 112        HDAY2W     113 - 114
   DENTL2W    115 - 116        DNTL12M    117 - 119
   DNTL12MC   117 - 117        DNTL12MN   118 - 119
   DV12M      120 - 123        DV12MC     120 - 120
   DV12MN     121 - 123        HDAY12M    124 - 126
   DVINTVL    127 - 127        DTINTVL    128 - 128
   HPTLEPI    129 - 130        CONDNUM    131 - 132
   CHRONIC    133 - 134        CHRONCLA   135 - 136
   CHRONCLM   137 - 138        PASSIST    139 - 140
   AMSTIFF    141 - 141        MOVPAINT $ 142 - 142
   JTSWEL     143 - 143        JTTENDR    144 - 144
   WTIQ       177 - 182 .1     WTFQ       183 - 188
   WTFA       189 - 194        WT65       195 - 200
   ;
* DEFINE VARIABLE LABELS;
 
LABEL
   SAMPLER  = "SAMPLE - RECODE OF CENSUS CODE"
   YEARINT  = "YEAR OF COLLECTION OF DATA"
   PSURANDR = "PSU - RANDOM CODE"
   WEEKCEN  = "WEEK - CENSUS CODE"
   SEGMENT  = "SEGMENT NUMBER"
   HHID     = "HOUSEHOLD NUMBER"
   PERNUM   = "PERSON NUMBER"
   RECTYPE  = "RECORD TYPE (2)"
   WEEKCENR = "CENSUS WEEK RECODE"
   QUARTER  = "PROCESSING QUARTER CODE"
   YEAR     = "PROCESSING YEAR"
   WEEKPROC = "PROCESSING WEEK CODE"
   PSUTYPE  = "TYPE OF PSU"
   REGION   = "REGION"
   LSRSMSA  = "NHIS SECTION CODE - TABULATION AREA"
   SMSA     = "STANDARD METROPOLITAN STATISTICAL AREA"
   SMSAR    = "SMSA - NON-SMSA RESIDENCE"
   HH_UNIT  = "TYPE OF LIVING QUARTERS"
   NUMCALL  = "NUMBER OF CALLS (UNEDITED)"
   PHONE    = "TELEPHONE (UNEDITED)"
   OBS_INT  = "OBSERVED INTERVIEW (UNEDITED)"
   WKDAY    = "DAY OF WEEK INTERVIEW COMPLETED"
   LEN_INT  = "LENGTH OF INTERVIEW (UNEDITED)"
   TIMEINT  = "TIME OF DAY OF INTERVIEW (UNEDITED)"
   RACE     = "RACE"
   RACER    = "RACE RECODE"
   SEX      = "SEX"
   AGE      = "AGE"
   AGER1    = "AGE RECODE #1"
   AGER2    = "AGE RECODE #2"
   AGER3    = "AGE RECODE #3"
   MARSTAT  = "MARITAL STATUS"
   EDUC     = "EDUCATION OF INDIVIDUAL - COMPLETED YEARS"
   EDUCR    = "EDUCATION OF INDIVIDUAL - RECODE"
   EDUCFH   = "EDUCATION OF FAMILY HEAD OR UNRELATED INDIVIDUAL - DETAIL"
   EDUCFHR  = "EDUCATION OF HEAD - RECODE"
   VETERAN  = "VETERAN STATUS"
   INCOME   = "FAMILY INCOME OR INCOME OF UNRELATED INDIVIDUAL"
   INCOMER  = "FAMILY INCOME RECODE"
   FAMILY   = "FAMILY RELATIONSHIP"
   FAMTYPE  = "TYPE OF FAMILY"
   FAMREL   = "FAMILY RELATIONSHIP"
   FAMRELR  = "FAMILY RELATIONSHIP RECODE"
   USUALACT = "USUAL ACTIVITY"
   CURACT2W = "CURRENT ACTIVITY DURING PAST 2 WEEKS"
   WKCLASS  = "CLASS OF WORKER"
   INDUSTRY = "INDUSTRY DETAIL CODE"
   INDUSR1  = "INDUSTRY RECODE 1"
   INDUSR2  = "INDUSTRY RECODE 2"
   OCCUP    = "OCCUPATION DETAIL CODE"
   OCCUPR1  = "OCCUPATION RECODE 1"
   OCCUPR2  = "OCCUPATION RECODE 2"
   RESPOND  = "RESPONDENT"
   RESPAGE  = "AGE OF RESPONDENT (UNEDITED)"
   RESPAGER = "AGE OF RESPONDENT RECODE"
   FAMSIZE  = "ACTUAL FAMILY SIZE"
   FAMSIZER = "SIZE OF FAMILY RECODE"
   ACTLIMIT = "LIMITATION OF ACTIVITY (DUE TO CHRONIC CONDITIONS)"
   ACTLMDUR = "DURATION OF LIMITATION OF ACTIVITY"
   ACTLMUNT = "DURATION OF LIMITATION - UNIT"
   ACTLMNUM = "DURATION OF LIMITATION - NUMBER OF UNIT"
   PRESAC2W = "RESTRICTED ACTIVITY DAYS IN PAST 2 WEEKS"
   PBDAY2W  = "BED DISABILITY DAYS IN PAST 2 WEEKS"
   WKSCHID  = "WORK/SCHOOL LOSS DAY IDENTIFIER"
   WKSCH2W  = "WORK OR SCHOOL LOSS DAYS IN PAST 2 WEEKS"
   HDAY2W   = "NUMBER OF DAYS IN HOSPITAL IN PAST 2 WEEKS"
   DENTL2W  = "DENTAL VISITS IN 2 WEEKS"
   DNTL12M  = "DENTAL VISITS IN 12 MONTHS"
   DNTL12MC = "DENTAL VISITS IN 12 MONTHS - KNOWN/UNKNOWN CODE"
   DNTL12MN = "DENTAL VISITS IN 12 MONTHS - NUMBER OF VISITS"
   DV12M    = "DOCTOR VISITS IN 12 MONTHS"
   DV12MC   = "DOCTOR VISITS IN 12 MONTHS - KNOWN/UNKNOWN CODE"
   DV12MN   = "DOCTOR VISITS IN 12 MONTHS - NUMBER OF VISITS"
   HDAY12M  = "NUMBER OF SHORT-STAY HOSPITAL DAYS IN PAST 12 MONTHS"
   DVINTVL  = "INTERVAL SINCE LAST DOCTOR VISIT"
   DTINTVL  = "INTERVAL SINCE LAST DENTAL VISIT"
   HPTLEPI  = "NUMBER OF SHORT-STAY HOSPITAL EPISODES"
   CONDNUM  = "TOTAL CONDITIONS"
   CHRONIC  = "TOTAL CHRONIC CONDITIONS"
   CHRONCLA = "NUMBER OF CHRONIC CONDITIONS CAUSING LIMITATION OF ACTIVITY"
   CHRONCLM = "NUMBER OF CHRONIC CONDITIONS CAUSING LIMITATION OF MOBILITY"
   PASSIST  = "PUBLIC ASSISTANCE RECIPIENT (INCOME UNDER $5000)"
   AMSTIFF  = "MORNING STIFFNESS CAUSE"
   MOVPAINT = "PAIN ON MOVEMENT CAUSE"
   JTSWEL   = "JOINT SWELLING CAUSE"
   JTTENDR  = "JOINT TENDERNESS CAUSE"
   WTIQ     = "BASIC QUARTERLY WEIGHT BEFORE ASC ADJUSTMENT"
   WTFQ     = "FINAL BASIC QUARTERLY WEIGHT"
   WTFA     = "FINAL BASIC ANNUAL WEIGHT"
   WT65     = "6.5 WEIGHT"
   ;
* ASSOCIATE VARIABLES WITH FORMAT VALUES;
 
FORMAT
   SAMPLER   PER001X.    YEARINT   PER002X.    PSURANDR  PER003X.
   WEEKCEN   PER004X.    SEGMENT   PER005X.    HHID      PER006X.
   PERNUM    PER007X.    RECTYPE   PER008X.    WEEKCENR  PER009X.
   QUARTER   PER010X.    YEAR      PER011X.    WEEKPROC  PER012X.
   PSUTYPE   PER013X.    REGION    PER014X.    LSRSMSA   PER015X.
   SMSA      PER016X.    SMSAR     PER017X.    HH_UNIT   PER018X.
   NUMCALL   PER019X.    PHONE     $PER020X.   OBS_INT   PER021X.
   WKDAY     PER022X.    LEN_INT   $PER023X.   TIMEINT   PER024X.
   RACE      PER025X.    RACER     PER026X.    SEX       PER027X.
   AGE       PER028X.    AGER1     PER029X.    AGER2     PER030X.
   AGER3     PER031X.    MARSTAT   PER032X.    EDUC      PER033X.
   EDUCR     PER034X.    EDUCFH    PER035X.    EDUCFHR   PER036X.
   VETERAN   PER037X.    INCOME    PER038X.    INCOMER   PER039X.
   FAMILY    $PER040X.   FAMTYPE   $PER041X.   FAMREL    $PER042X.
   FAMRELR   PER043X.    USUALACT  PER044X.    CURACT2W  PER045X.
   WKCLASS   PER046X.    INDUSTRY  PER047X.    INDUSR1   PER048X.
   INDUSR2   PER049X.    OCCUP     PER050X.    OCCUPR1   PER051X.
   OCCUPR2   PER052X.    RESPOND   PER053X.    RESPAGE   PER054X.
   RESPAGER  PER055X.    FAMSIZE   PER056X.    FAMSIZER  PER057X.
   ACTLIMIT  PER058X.    ACTLMDUR  PER059X.    ACTLMUNT  PER060X.
   ACTLMNUM  PER061X.    PRESAC2W  PER062X.    PBDAY2W   PER063X.
   WKSCHID   PER064X.    WKSCH2W   PER065X.    HDAY2W    PER066X.
   DENTL2W   PER067X.    DNTL12M   PER068X.    DNTL12MC  PER069X.
   DNTL12MN  PER070X.    DV12M     PER071X.    DV12MC    PER072X.
   DV12MN    PER073X.    HDAY12M   PER074X.    DVINTVL   PER075X.
   DTINTVL   PER076X.    HPTLEPI   PER077X.    CONDNUM   PER078X.
   CHRONIC   PER079X.    CHRONCLA  PER080X.    CHRONCLM  PER081X.
   PASSIST   PER082X.    AMSTIFF   PER083X.    MOVPAINT  $PER084X.
   JTSWEL    PER085X.    JTTENDR   PER086X.    WTIQ      PER087X.
   WTFQ      PER088X.    WTFA      PER089X.    WT65      PER090X.
   ;
 
PROC CONTENTS DATA=NHIS.PERSONSX;
 
PROC FREQ DATA=NHIS.PERSONSX;
TITLE1 'FREQUENCY REPORT FOR 1969 NHIS PUBLIC USE PERSON FILE';
TITLE2 '(WEIGHTED)';
TABLES RECTYPE/LIST MISSING;
WEIGHT WTFA;
 
PROC FREQ DATA=NHIS.PERSONSX;
TITLE1 'FREQUENCY REPORT FOR 1969 NHIS PUBLIC USE PERSON FILE';
TITLE2 '(UNWEIGHTED)';
TABLES RECTYPE/LIST MISSING;
 
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
              STATEMENT: FORMAT _ALL_;
RUN;
