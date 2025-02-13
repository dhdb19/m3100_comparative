DM 'CLE LOG; CLE OUT'; 
**************************************************************************
    October 20, 2005
 
THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
FILE FROM THE NHIS 1996 PERSONSX.DAT ASCII FILE.
 
NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
      GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
      DOCUMENTATION.
 
THIS IS STORED IN PERSONSX.SAS
*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;
 
LIBNAME NHIS    'C:\NHIS1996\';
LIBNAME LIBRARY 'C:\NHIS1996\';

FILENAME ASCIIDAT 'C:\NHIS1996\PERSONSX.DAT';
 
* DEFINE VARIABLE VALUES FOR REPORT;
 
PROC FORMAT LIBRARY=LIBRARY;
  VALUE  PER001X
   20               = "Person Record"
   ;
  VALUE  PER002X
   96               = "1996"
   ;
  VALUE $PER003X
   ;
  VALUE $PER004X
   ;
  VALUE  PER005X
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
  VALUE  PER006X
   0                = "Interview not late"
   1                = "One week late"
   2                = "Two weeks late"
   3                = "Unknown"
   ;
  VALUE  PER007X
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
  VALUE  PER008X
   1                = "Yes, phone number given"
   2                = "Yes, no phone number given"
   3                = "No"
   4                = "Unknown"
   ;
  VALUE  PER009X
   1                = "Male"
   2                = "Female"
   ;
  VALUE  PER010X
   0                = "Age known"
   1                = "Age unknown, imputed as 34"
   ;
  VALUE  PER011X
   00               = "Under 1 year"
   01-89            = "Number of years"
   90               = "90 years or older"
   ;
  VALUE  PER012X
   1                = "Under 5 years"
   2                = "5-17 years"
   3                = "18-24 years"
   4                = "25-44 years"
   5                = "45-64 years"
   6                = "65-69 years"
   7                = "70-74 years"
   8                = "75 years and over"
   ;
  VALUE  PER013X
   1                = "Under 6 years"
   2                = "6-16 years"
   3                = "17-24 years"
   4                = "25-34 years"
   5                = "35-44 years"
   6                = "45-54 years"
   7                = "55-64 years"
   8                = "65-74 years"
   9                = "75 years and over"
   ;
  VALUE  PER014X
   00-35            = "Months"
   36               = "Over 3 years"
   ;
  VALUE  PER015X
   0                = "Month known"
   1                = "Month unknown  '8' imputed"
   9                = "Date of birth unknown"
   ;
  VALUE $PER016X
   ;
  VALUE $PER017X
   "01"     = "January"         "08"  	= "August"
   "02"     = "February"        "09"  	= "September"
   "03"     = "March"           "10"  	= "October"
   "04"     = "April"           "11"  	= "November"
   "05"     = "May"             "12"  	= "December"
   "06"     = "June"            "99"  	= "Unknown"
   "07"     = "July"
   ;
  VALUE $PER018X
   "1905"           = "1905 and before"
   "1906"-"1997"    = "1906-1997"
   "9999"           = "Unknown"
   ;
  VALUE  PER019X
   0                = "Hispanic Origin Known"
   1                = "Hispanic Origin Imputed"
   ;
  VALUE  PER020X
   01               = "White"
   02               = "Black/African American"
   03               = "Indian (American)"
   06               = "Chinese"
   07               = "Filipino"
   15               = "Other API (includes Hawaiian, Korean, Vietnamese, Japanese, Asian Indian, Samoan, and Guamanian)"
   16               = "Other Race (includes Eskimo and Aleut)"
   17               = "Multiple Race"
   99               = "Unknown"
   ;
  VALUE  PER021X
   1                = "White"
   2                = "Black"
   3                = "Other"
   ;
  VALUE  PER022X
   1                = "White"
   2                = "Non-white"
   ;
  VALUE  PER023X
   1                = "Black"
   2                = "Non-black"
   ;
  VALUE  PER024X
   00               = "Multiple Hispanic"
   01               = "Puerto Rican"
   02               = "Cuban"
   03               = "Mexican-Mexicano"
   04               = "Mexican-American"
   05               = "Chicano"
   06               = "Other Latin American"
   07               = "Other Spanish"
   08               = "Spanish, DK type"
   09               = "Unknown if Spanish origin"
   10               = "Not Spanish origin"
   ;
  VALUE  PER025X
   0                = "Under 14 years"
   1                = "Married - spouse in household"
   2                = "Married - spouse not in household"
   3                = "Widowed"
   4                = "Divorced"
   5                = "Separated"
   6                = "Never married"
   7                = "Unknown"
   ;
  VALUE  PER026X
   1                = "Non-veteran"
   3                = "WW I and WW II"
   4                = "Korean War"
   5                = "Vietnam veteran"
   6                = "Post-Vietnam"
   7                = "Other service"
   8                = "Served in Armed Forces, unknown if war veteran"
   9                = "Unknown if served in Armed Forces"
   .                = "Under 18 years of age"
   ;
  VALUE  PER027X
   0                = "Non-veteran"
   1                = "All service in guard/reserve"
   2                = "Some service in guard/reserve"
   3                = "Unknown if all service in guard/reserve"
   4                = "No active service in guard/reserve"
   5                = "Unknown if ever active member in guard/reserve
			           or served in Armed Forces"
   .                = "Under 18 years of age"
   ;
  VALUE  PER028X
   00               = "Never attended; kindergarten only"
   01-12            = "Grades 1-12"
   13               = "1 year"
   14               = "2 years"
   15               = "3 years"
   16               = "4 years"
   17               = "5 years"
   18               = "6 years or more"
   19               = "Unknown"
   .                = "Under 5 years of age"
   ;
  VALUE  PER029X
   0                = "None; kindergarten only"
   1                = "1-8 years (elementary)"
   2                = "9-11 years (high school)"
   3                = "12 years (high school graduate)"
   4                = "1-3 years (college)"
   5                = "4 years (college graduate)"
   6                = "5+ years (post-college)"
   7                = "Unknown"
   .                = "Under 5 years of age"
   ;
  VALUE  PER030X
   00               = "Never attended; kindergarten only"
   01-12            = "Grades 1-12"
   13               = "1 year"
   14               = "2 years"
   15               = "3 years"
   16               = "4 years"
   17               = "5 years"
   18               = "6 years or more"
   19               = "Unknown"
   ;
  VALUE  PER031X
   0                = "None; kindergarten only"
   1                = "1-8 years (elementary)"
   2                = "9-11 years (high school)"
   3                = "12 years (high school graduate)"
   4                = "1-3 years (college)"
   5                = "4 years (college graduate)"
   6                = "5+ years (post-college)"
   7                = "Unknown"
   ;
  VALUE  PER032X
   1                = "Less than $20,000"
   2                = "$20,000 or more"
   3                = "Unknown"
   ;
  VALUE  PER033X
   00               = "Less than  $1,000"
   01               = "$ 1,000 - $ 1,999"
   02               = "  2,000 -   2,999"
   03               = "  3,000 -   3,999"
   04               = "  4,000 -   4,999"
   05               = "  5,000 -   5,999"
   06               = "  6,000 -   6,999"
   07               = "  7,000 -   7,999"
   08               = "  8,000 -   8,999"
   09               = "  9,000 -   9,999"
   10               = " 10,000 -  10,999"
   11               = " 11,000 -  11,999"
   12               = " 12,000 -  12,999"
   13               = " 13,000 -  13,999"
   14               = " 14,000 -  14,999"
   15               = " 15,000 -  15,999"
   16               = " 16,000 -  16,999"
   17               = " 17,000 -  17,999"
   18               = " 18,000 -  18,999"
   19               = " 19,000 -  19,999"
   20               = " 20,000 -  24,999"
   21               = " 25,000 -  29,999"
   22               = " 30,000 -  34,999"
   23               = " 35,000 -  39,999"
   24               = " 40,000 -  44,999"
   25               = " 45,000 -  49,999"
   26               = "$50,000 and over"
   27               = "Unknown"
   ;
  VALUE  PER034X
   0                = "Under $5,000"
   1                = "$ 5,000 - $ 6,999"
   2                = "  7,000 -   9,999"
   3                = " 10,000 -  14,999"
   4                = " 15,000 -  19,999"
   5                = " 20,000 -  24,999"
   6                = " 25,000 -  34,999"
   7                = " 35,000 -  49,999"
   8                = "$50,000 or more"
   9                = "Unknown"
   ;
  VALUE  PER035X
   1                = "At or above poverty threshold"
   2                = "Below poverty threshold"
   3                = "Unknown"
   ;
  VALUE $PER036X
   "&"              = "Primary individual"
   "-"              = "Secondary individual"
   "0"              = "Primary family"
   "1"-"9"          = "Secondary family"
   ;
  VALUE $PER037X
   "&"              = "Reference person, living alone"
   "0"              = "Reference person, 2+ persons in household"
   "1"              = "Spouse, other spouse NOT in Armed Forces and living at home"
   "2"              = "Spouse, other spouse IN Armed Forces and living at home"
   "3"              = "Child of reference person or spouse"
   "4"              = "Grandchild of reference person or spouse"
   "5"              = "Parent of reference person or spouse"
   "6"              = "Other relative"
   "7"              = "Child of military family with no eligible reference person"
   "9"              = "Unknown"
   ;
  VALUE  PER038X
   1                = "Living alone"
   2                = "Living only with non-relative"
   3                = "Living with spouse"
   4                = "Living with relative - other"
   ;
  VALUE  PER039X
   ;
  VALUE  PER040X
   1-8              = "Number of members"
   9                = "9+ members"
   ;
  VALUE  PER041X
   1                = "Both parents, no other relative"
   2                = "Mother only"
   3                = "Father only"
   4                = "Both parents and other 21+ year old adult relative"
   5                = "Mother and other 21+ year old adult relative"
   6                = "Father and other 21+ year old adult relative"
   7                = "No parent, but one 21+ year old adult relative"
   8                = "No parent, but two or more 21+ year old adult relatives"
   9                = "Unknown"
   0                = "Other"
   .                = "Not applicable (25+ years old or ever married)"
   ;
  VALUE  PER042X
   1                = "Working"
   2                = "Keeping house"
   3                = "Going to school"
   4                = "Something else"
   5                = "Unknown"
   .                = "Not applicable (Under 18 years)"
   ;
  VALUE  PER043X
   1                = "Excellent"
   2                = "Very Good"
   3                = "Good"
   4                = "Fair"
   5                = "Poor"
   6                = "Unknown"
   ;
  VALUE  PER044X
   1                = "Unable to perform major activity"
   2                = "Limited in kind/amount major activity"
   3                = "Limited in other activities"
   4                = "Not limited (includes unknowns)"
   ;
  VALUE  PER045X
   1                = "Unable to work"
   2                = "Limited in kind/amount of work"
   3                = "Limited in other activities"
   4                = "Not limited (includes unknowns)"
   .                = "Not applicable (under 18 years, 70+ years)"
   ;
  VALUE  PER046X
   1                = "Unable to attend school"
   2                = "Attends special school/classes"
   3                = "Needs special school/classes"
   4                = "Limited in school attendance"
   5                = "Limited in other activities"
   6                = "Not limited (includes unknowns)"
   .                = "Not applicable (Under 5 years or 18+ years)"
   ;
  VALUE  PER047X
   1                = "Unable to perform personal care needs"
   2                = "Limited in performing other routine needs"
   3                = "Not limited in performing personal or routine needs"
   4                = "Unknown"
   .                = "Not applicable (Under 5 years; 5-59 years not limited; 70+ years old)"
   ;
  VALUE  PER048X
   1                = "Worked in past 2 weeks"
   2                = "Did not work, has job; not on lay-off and not looking for work"
   3                = "Did not work, has job; looking for work"
   4                = "Did not work, has job; on lay-off"
   5                = "Did not work, has job; on lay-off and looking for work"
   6                = "Did not work, has job; unknown if looking or on lay-off"
   7                = "Did not work, has no job; looking for work or on lay-off"
   8                = "Not in Labor Force (18+ years)"
   .                = "Not applicable (Under 18 years old)"
   ;
  VALUE  PER049X
   0                = "Not in labor force"
   1                = "Private company"
   2                = "Federal Government employee"
   3                = "State Government employee"
   4                = "Local Government employee"
   5                = "Incorporated business"
   6                = "Self-employed"
   7                = "Without pay"
   8                = "Never worked"
   9                = "Unknown"
   .                = "Under 18"
   ;
  VALUE  PER050X
   ;
  VALUE  PER051X
   ;
  VALUE  PER052X
   ;
  VALUE  PER053X
   ;
  VALUE  PER054X
   1                = "Self-entirely"
   2                = "Self-partly"
   3                = "Proxy"
   4                = "Unknown"
   ;
  VALUE  PER055X
   1                = "Condition List 1, Skin and musculoskeletal"
   2                = "Condition List 2, Impairments"
   3                = "Condition List 3, Digestive"
   4                = "Condition List 4, Miscellaneous"
   5                = "Condition List 5, Circulatory"
   6                = "Condition List 6, Respiratory"
   7                = "Unknown"
   ;
  VALUE  PER056X
   58               = "58 inches or less"
   59-76            = "Number of inches"
   77               = "77 inches or more"
   99               = "Unknown"
   .                = "Under 18 years of age"
   ;
  VALUE  PER057X
   097              = "097 pounds or less"
   098-289          = "Number of pounds"
   290              = "290 pounds or more"
   999              = "Unknown"
   .                = "Under 18 years of age"
   ;
  VALUE  PER058X
   00               = "None"
   01-14            = "Days"
   ;
  VALUE  PER059X
   00               = "None"
   01-14            = "Days"
   ;
  VALUE  PER060X
   00               = "None"
   01-14            = "Days"
   ;
  VALUE  PER061X
   00               = "None"
   01-14            = "Days"
   ;
  VALUE  PER062X
   00               = "None"
   01-14            = "Days"
   ;
  VALUE  PER063X
   000              = "None"
   001-365          = "1-365 days"
   366              = "Unknown"
   ;
  VALUE  PER064X
   0                = "None"
   1                = "1-7 days"
   2                = "8-30 days"
   3                = "31-180 days"
   4                = "181-365 days"
   5                = "Unknown"
   ;
  VALUE  PER065X
   000              = "None"
   001-996          = "Visits"
   997              = "997+ visits"
   998              = "Unknown"
   ;
  VALUE  PER066X
   0                = "Never"
   1                = "Less than 1 year"
   2                = "1 to less than 2 years"
   3                = "2 to less than 5 years"
   4                = "5 years or more"
   5                = "Unknown"
   ;
  VALUE  PER067X
   ;
  VALUE  PER068X
   ;
  VALUE  PER069X
   ;
  VALUE  PER070X
   ;
  VALUE  PER071X
   ;
  VALUE  PER072X
   ;
  VALUE  PER073X
   ;
  VALUE  PER074X
   ;
  VALUE  PER075X
   ;
  VALUE  PER076X
   ;
  VALUE  PER077X
   ;
  VALUE  PER078X
   1                = "Less than 1 year"
   2                = "1 yr., less than 5 yrs."
   3                = "5 yrs., less than 10 yrs."
   4                = "10 yrs., less than 15 yrs."
   5                = "15 years or more"
   9                = "Unknown"
   .                = "Not applicable (Foreign-born)"
   ;
  VALUE  PER079X
   1                = "Less than 1 year"
   2                = "1 yr., less than 5 yrs."
   3                = "5 yrs., less than 10 yrs."
   4                = "10 yrs., less than 15 yrs."
   5                = "15 years or more"
   6                = "Unknown"
   .                = "Not applicable (Foreign-born)"
   ;
  VALUE  PER080X
   ;
  VALUE  PER081X
   1                = "Quarter 1"
   2                = "Quarter 2"
   3                = "Quarter 3"
   4                = "Quarter 4"
   ;
  VALUE  PER082X
   1                = "Northeast"
   2                = "Midwest"
   3                = "South"
   4                = "West"
   ;
  VALUE  PER083X
   1                = "5,000,000 or more"
   2                = "2,500,000 - 4,999,999"
   3                = "1,000,000 - 2,499,999"
   4                = "  500,000 - 999,999"
   5                = "  250,000 - 499,999"
   6                = "  100,000 - 249,999"
   7                = "Under 100,000"
   .                = "Non-MSA"
   ;
  VALUE  PER084X
   1                = "In MSA; in Central City"
   2                = "In MSA; not in Central City"
   3                = "Not in MSA"
   ;
  VALUE  PER085X
   ;
  VALUE  PER086X
   ;
  VALUE  PER087X
   ;
  VALUE  PER088X
   ;
  VALUE  PER089X
   ;
  VALUE  PER090X
   ;
  VALUE  PER091X
   ;
  VALUE  PER092X
   ;
  VALUE  PER093X
   ;
  VALUE  PER094X
   ;
  VALUE  PER095X
   ;
  VALUE  PER096X
   ;
  VALUE  PER097X
   ;
  VALUE  PER098X
   ;
  VALUE  PER099X
   ;
  VALUE  PER100X
   ;
  VALUE  PER101X
   ;
  VALUE  PER102X
   ;
  VALUE  PER103X
   ;
  VALUE  PER104X
   ;
  VALUE  PER105X
   1                = "Self representing"
   2                = "Non self representing"
   ;
  VALUE  PER106X
   1-4              = "Code used to identify nationally representative subsample"
   ;
  VALUE  PER107X
   ;
  VALUE  PER108X
   ;
  VALUE  PER109X
   ;

 
DATA NHIS.PERSONSX;
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1996\';
INFILE ASCIIDAT MISSOVER TRUNCOVER LRECL=360;
 
* DEFINE LENGTH OF NUMERIC VARIABLES;
 
LENGTH
   RECTYPE   3  YEAR      3  WEEKCODE  3  LAFLAG    3  LIVQTR    3
   PHONE     3  SEX       3  AGEIF     3  AGE       3  AGER1     3
   AGER2     3  AGER3     3  BIRMOIF   3  HISPFLAG  3  RACE      3
   RACER1    3  RACER2    3  RACER3    3  HISPANIC  3  MARSTAT   3
   VETERAN   3  RESERVE   3  EDUC      3  EDUCR     3  EDUCAD    3
   EDUCADR   3  INCFAM20  3  INCFAM    3  INCFAMR   3  POVERTY   3
   FAMRELR   3  FAMSIZE   3  FAMSIZER  3  PARENT    3  MAJACT    3
   HEALTH    3  LATOTAL   3  LAWORK    3  LASCHOOL  3  LACARE    3
   EMPLOY    3  WKCLASS   3  INDUSR1   3  INDUSR2   3  OCCUPR1   3
   OCCUPR2   3  RESPOND   3  CONDLIST  3  HEIGHT    3  WEIGHT    3
   RADAY     3  BDDAY     3  WLDAY     3  SLDAY     3  OTHDAY    3
   BDDAY12   3  BDDAY12R  3  DV12      3  DVINT     3  NCOND     3
   NACUTE    3  NDV2      3  HEP12     3  HDA12     3  HEP12X    3
   HDA12X    3  DISDA6    3  DIS6X     3  DISDA6X   3  DISDA12X  3
   YRSLIVPR  3  YRSLIVUS  3  WTINT     8  QUARTER   3  REGION    3
   MSASIZE   3  MSA       3  CCFACT    8  WTFQ      6  WTFS      6
   WTFA      6  WT65      6  RADAYWP   6  BDDAYWP   6  WLDAYWP   6
   SLDAYWP   6  DV12WPQ   6  DV12WPS   6  DV12WPA   6  HDA12WPQ  6
   HDA12WPS  6  HDA12WPA  6  HEP12WP   6  VARSTRAR  3  VARPSUR   3
   VARSUBSR  3  UNITSS    4  TYPEPSU   3  PANEL     3  NSRSTVA   3
   COLVARST  3  VARPSU    3
   ;
* INPUT ALL VARIABLES;
 
INPUT
   RECTYPE      1 -   2        YEAR         3 -   4
   HHID     $   5 -  14        PNUM     $  15 -  16
   WEEKCODE    19 -  20        LAFLAG      21 -  21
   LIVQTR      22 -  23        PHONE       24 -  24
   SEX         25 -  25        AGEIF       26 -  26
   AGE         27 -  28        AGER1       29 -  29
   AGER2       30 -  30        AGER3       31 -  32
   BIRMOIF     33 -  33        BIRTH    $  34 -  39
   BIRTHMO  $  34 -  35        BIRTHYR  $  36 -  39
   HISPFLAG    40 -  40        RACE        41 -  42
   RACER1      43 -  43        RACER2      44 -  44
   RACER3      45 -  45        HISPANIC    46 -  47
   MARSTAT     48 -  48        VETERAN     49 -  49
   RESERVE     50 -  50        EDUC        51 -  52
   EDUCR       53 -  53        EDUCAD      54 -  55
   EDUCADR     56 -  56        INCFAM20    57 -  57
   INCFAM      58 -  59        INCFAMR     60 -  60
   POVERTY     61 -  61        FAMTYPE  $  62 -  62
   FAMREL   $  63 -  63        FAMRELR     64 -  64
   FAMSIZE     65 -  66        FAMSIZER    67 -  67
   PARENT      68 -  68        MAJACT      69 -  69
   HEALTH      70 -  70        LATOTAL     71 -  71
   LAWORK      72 -  72        LASCHOOL    73 -  73
   LACARE      74 -  74        EMPLOY      75 -  75
   WKCLASS     76 -  76        INDUSR1     80 -  81
   INDUSR2     82 -  83        OCCUPR1     87 -  88
   OCCUPR2     89 -  90        RESPOND     91 -  91
   CONDLIST    92 -  92        HEIGHT      93 -  94
   WEIGHT      95 -  97        RADAY       98 -  99
   BDDAY      100 - 101        WLDAY      102 - 103
   SLDAY      104 - 105        OTHDAY     106 - 107
   BDDAY12    108 - 110        BDDAY12R   111 - 111
   DV12       112 - 114        DVINT      115 - 115
   NCOND      116 - 117        NACUTE     118 - 119
   NDV2       120 - 121        HEP12      122 - 123
   HDA12      124 - 126        HEP12X     127 - 128
   HDA12X     129 - 131        DISDA6     132 - 133
   DIS6X      134 - 136        DISDA6X    137 - 138
   DISDA12X   139 - 141        YRSLIVPR   144 - 144
   YRSLIVUS   145 - 145        WTINT      172 - 177 .1
   QUARTER    178 - 178        REGION     182 - 182
   MSASIZE    183 - 183        MSA        186 - 186
   CCFACT     190 - 200 .9     WTFQ       201 - 209
   WTFS       210 - 218        WTFA       219 - 227
   WT65       228 - 236        RADAYWP    237 - 245
   BDDAYWP    246 - 254        WLDAYWP    255 - 263
   SLDAYWP    264 - 272        DV12WPQ    273 - 281
   DV12WPS    282 - 290        DV12WPA    291 - 299
   HDA12WPQ   300 - 308        HDA12WPS   309 - 317
   HDA12WPA   318 - 326        HEP12WP    327 - 335
   VARSTRAR   337 - 340        VARPSUR    341 - 341
   VARSUBSR   342 - 343        UNITSS     344 - 350
   TYPEPSU    351 - 351        PANEL      352 - 352
   NSRSTVA    353 - 353        COLVARST   354 - 357
   VARPSU     358 - 358
   ;

* DEFINE VARIABLE LABELS;
 
LABEL
   RECTYPE  = "RECORD TYPE"
   YEAR     = "PROCESSING YEAR"
   HHID     = "HOUSEHOLD ID"
   PNUM     = "PERSON NUMBER"
   WEEKCODE = "SAMPLING WEEK CODE"
   LAFLAG   = "LATE INTERVIEW (OR LAST ATTEMPT) FLAG"
   LIVQTR   = "TYPE OF LIVING QUARTERS"
   PHONE    = "HAS TELEPHONE"
   SEX      = "SEX"
   AGEIF    = "AGE IMPUTED FLAG"
   AGE      = "AGE"
   AGER1    = "AGE RECODE #1"
   AGER2    = "AGE RECODE #2"
   AGER3    = "AGE RECODE #3"
   BIRMOIF  = "MONTH OF BIRTH IMPUTED FLAG"
   BIRTH    = "MONTH AND YEAR OF BIRTH"
   BIRTHMO  = "MONTH"
   BIRTHYR  = "YEAR OF BIRTH"
   HISPFLAG = "HISPANIC ORIGIN IMPUTED FLAG"
   RACE     = "MAIN RACIAL BACKGROUND"
   RACER1   = "RECODE 1"
   RACER2   = "RECODE 2"
   RACER3   = "RECODE 3"
   HISPANIC = "HISPANIC ORIGIN"
   MARSTAT  = "MARITAL STATUS"
   VETERAN  = "VETERAN STATUS"
   RESERVE  = "ACTIVE GUARD/RESERVE STATUS FOR PERSONS ON ACTIVE DUTY IN ARMED FORCES"
   EDUC     = "EDUCATION OF INDIVIDUAL - COMPLETED YEARS"
   EDUCR    = "EDUCATION OF INDIVIDUAL RECODE"
   EDUCAD   = "HIGHEST EDUCATION OF RESPONSIBLE ADULT FAMILY MEMBER (DETAIL)"
   EDUCADR  = "HIGHEST EDUCATION OF RESPONSIBLE ADULT FAMILY MEMBER RECODE"
   INCFAM20 = "FAMILY INCOME $20,000 OR MORE"
   INCFAM   = "FAMILY INCOME"
   INCFAMR  = "FAMILY INCOME RECODE"
   POVERTY  = "NHIS POVERTY INDEX"
   FAMTYPE  = "TYPE OF FAMILY"
   FAMREL   = "RELATIONSHIP TO REFERENCE PERSON"
   FAMRELR  = "FAMILY RELATIONSHIP RECODE"
   FAMSIZE  = "SIZE OF FAMILY"
   FAMSIZER = "SIZE OF FAMILY RECODE"
   PARENT   = "PARENT/OTHER ADULT RELATIVE"
   MAJACT   = "MAJOR ACTIVITY"
   HEALTH   = "HEALTH STATUS"
   LATOTAL  = "ACTIVITY LIMITATION STATUS"
   LAWORK   = "ACTIVITY LIMITATION STATUS MEASURED BY 'ABILITY TO WORK'"
   LASCHOOL = "LIMITATION OF SCHOOL ACTIVITIES"
   LACARE   = "NEEDS HELP WITH PERSONAL CARE"
   EMPLOY   = "EMPLOYMENT STATUS IN PAST 2 WEEKS"
   WKCLASS  = "CLASS OF WORKER"
   INDUSR1  = "INDUSTRY RECODE 1"
   INDUSR2  = "INDUSTRY RECODE 2"
   OCCUPR1  = "OCCUPATION RECODE 1"
   OCCUPR2  = "OCCUPATION RECODE 2"
   RESPOND  = "RESPONDENT"
   CONDLIST = "CONDITION LIST ASSIGNED AND ASKED"
   HEIGHT   = "HEIGHT WITHOUT SHOES"
   WEIGHT   = "WEIGHT WITHOUT SHOES (18+ YEARS)"
   RADAY    = "TOTAL RESTRICTED ACTIVITY DAYS IN PAST TWO WEEKS"
   BDDAY    = "BED DAYS IN PAST TWO WEEKS"
   WLDAY    = "WORK-LOSS DAYS IN PAST TWO WEEKS"
   SLDAY    = "SCHOOL-LOSS DAYS IN PAST TWO WEEKS"
   OTHDAY   = "OTHER DAYS OF RESTRICTED ACTIVITY IN PAST TWO WEEKS"
   BDDAY12  = "BED DAYS IN PAST 12 MONTHS"
   BDDAY12R = "BED DAYS IN PAST 12 MONTHS - RECODE"
   DV12     = "DOCTOR VISITS IN PAST 12 MONTHS"
   DVINT    = "INTERVAL SINCE LAST DOCTOR VISIT"
   NCOND    = "NUMBER OF CONDITIONS"
   NACUTE   = "NUMBER OF ACUTE INCIDENCE CONDITIONS"
   NDV2     = "NUMBER OF TWO-WEEK DOCTOR VISITS"
   HEP12    = "NUMBER OF SHORT-STAY HOSPITAL EPISODES IN PAST 12 MONTHS"
   HDA12    = "SHORT-STAY HOSPITAL EPISODE DAYS IN PAST 12 MONTHS"
   HEP12X   = "NUMBER OF SHORT-STAY HOSPITAL EPISODES IN PAST 12 MONTHS EXCLUDING DELIVERY"
   HDA12X   = "SHORT-STAY HOSPITAL EPISODE DAYS IN PAST 12 MONTHS EXCLUDING DELIVERY"
   DISDA6   = "NUMBER OF SHORT-STAY HOSPITAL DISCHARGES IN PAST 6 MONTHS"
   DIS6X    = "NUMBER OF DAYS IN SHORT-STAY HOSPITAL IN PAST 12 MONTHS FOR DISCHARGES IN PAST 6 MONTHS"
   DISDA6X  = "NUMBER OF SHORT-STAY HOSPITAL DISCHARGES IN PAST 6 MONTHS EXCLUDING DELIVERY"
   DISDA12X = "NUMBER OF DAYS IN SHORT-STAY HOSPITAL IN PAST 12 MONTHS FOR DISCHARGES IN PAST 6 MONTHS EXCLUDING DELIVERY"
   YRSLIVPR = "YEARS LIVED IN STATE OF PRESENT RESIDENCE"
   YRSLIVUS = "YEARS LIVED IN UNITED STATES"
   WTINT    = "FINAL QUARTER BASIC WEIGHT BEFORE AGE-SEX-RACE-ETHNICITY ADJUSTMENT"
   QUARTER  = "SAMPLING QUARTER"
   REGION   = "REGION"
   MSASIZE  = "GEOGRAPHIC DISTRIBUTION"
   MSA      = "MSA - NON-MSA RESIDENCE"
   CCFACT   = "CHRONIC CONDITION PREVALENCE AND INCIDENCE FACTOR"
   WTFQ     = "FINAL BASIC WEIGHT - QUARTER"
   WTFS     = "FINAL BASIC WEIGHT - SEMI-ANNUAL (QUARTER/2)"
   WTFA     = "FINAL BASIC WEIGHT - ANNUAL (QUARTER/4)"
   WT65     = "6.5 WEIGHT - QUARTER, SEMI-ANNUAL AND ANNUAL"
   RADAYWP  = "ESTIMATED RESTRICTED ACTIVITY DAYS IN PAST 2 WEEKS - QUARTER, SEMI-ANNUAL AND ANNUAL"
   BDDAYWP  = "ESTIMATED BED DAYS IN PAST 2 WEEKS - QUARTER, SEMI-ANNUAL AND ANNUAL"
   WLDAYWP  = "ESTIMATED WORK-LOSS DAYS IN PAST 2 WEEKS - QUARTER, SEMI-ANNUAL AND ANNUAL"
   SLDAYWP  = "ESTIMATED SCHOOL-LOSS DAYS IN PAST 2 WEEKS - QUARTER, SEMI-ANNUAL AND ANNUAL"
   DV12WPQ  = "ESTIMATED DOCTOR VISITS IN PAST 12 MONTHS - QUARTER"
   DV12WPS  = "ESTIMATED DOCTOR VISITS IN PAST 12 MONTHS - SEMI-ANNUAL"
   DV12WPA  = "ESTIMATED DOCTOR VISITS IN PAST 12 MONTHS - ANNUAL"
   HDA12WPQ = "ESTIMATED SHORT-STAY HOSPITAL EPISODE DAYS IN PAST 12 MONTHS - QUARTER"
   HDA12WPS = "ESTIMATED SHORT-STAY HOSPITAL EPISODE DAYS IN PAST 12 MONTHS - SEMI-ANNUAL"
   HDA12WPA = "ESTIMATED SHORT-STAY HOSPITAL EPISODE DAYS IN PAST 12 MONTHS - ANNUAL"
   HEP12WP  = "ANNUAL ESIMATED NUMBER OF SHORT-STAY HOSPITAL EPISODES IN PAST 12 MONTHS"
   VARSTRAR = "STRATA FOR VARIANCE ESTIMATION"
   VARPSUR  = "PSU FOR VARIANCE ESTIMATION"
   VARSUBSR = "SUBSTRATUM FOR VARIANCE ESTIMATION"
   UNITSS   = "SECONDARY SAMPLING UNIT"
   TYPEPSU  = "TYPE OF PSU"
   PANEL    = "PANEL 4"
   NSRSTVA  = "NSR STATUS VARIABLE"
   COLVARST = "COLLAPSED VARIANCE STRATUM"
   VARPSU   = "VARIANCE PSU"
   ;

* ASSOCIATE VARIABLES WITH FORMAT VALUES;
 
FORMAT
   RECTYPE   PER001X.    YEAR      PER002X.    HHID      $PER003X.
   PNUM      $PER004X.   WEEKCODE  PER005X.    LAFLAG    PER006X.
   LIVQTR    PER007X.    PHONE     PER008X.    SEX       PER009X.
   AGEIF     PER010X.    AGE       PER011X.    AGER1     PER012X.
   AGER2     PER013X.    AGER3     PER014X.    BIRMOIF   PER015X.
   BIRTH     $PER016X.   BIRTHMO   $PER017X.   BIRTHYR   $PER018X.
   HISPFLAG  PER019X.    RACE      PER020X.    RACER1    PER021X.
   RACER2    PER022X.    RACER3    PER023X.    HISPANIC  PER024X.
   MARSTAT   PER025X.    VETERAN   PER026X.    RESERVE   PER027X.
   EDUC      PER028X.    EDUCR     PER029X.    EDUCAD    PER030X.
   EDUCADR   PER031X.    INCFAM20  PER032X.    INCFAM    PER033X.
   INCFAMR   PER034X.    POVERTY   PER035X.    FAMTYPE   $PER036X.
   FAMREL    $PER037X.   FAMRELR   PER038X.    FAMSIZE   PER039X.
   FAMSIZER  PER040X.    PARENT    PER041X.    MAJACT    PER042X.
   HEALTH    PER043X.    LATOTAL   PER044X.    LAWORK    PER045X.
   LASCHOOL  PER046X.    LACARE    PER047X.    EMPLOY    PER048X.
   WKCLASS   PER049X.    INDUSR1   PER050X.    INDUSR2   PER051X.
   OCCUPR1   PER052X.    OCCUPR2   PER053X.    RESPOND   PER054X.
   CONDLIST  PER055X.    HEIGHT    PER056X.    WEIGHT    PER057X.
   RADAY     PER058X.    BDDAY     PER059X.    WLDAY     PER060X.
   SLDAY     PER061X.    OTHDAY    PER062X.    BDDAY12   PER063X.
   BDDAY12R  PER064X.    DV12      PER065X.    DVINT     PER066X.
   NCOND     PER067X.    NACUTE    PER068X.    NDV2      PER069X.
   HEP12     PER070X.    HDA12     PER071X.    HEP12X    PER072X.
   HDA12X    PER073X.    DISDA6    PER074X.    DIS6X     PER075X.
   DISDA6X   PER076X.    DISDA12X  PER077X.    YRSLIVPR  PER078X.
   YRSLIVUS  PER079X.    WTINT     PER080X.    QUARTER   PER081X.
   REGION    PER082X.    MSASIZE   PER083X.    MSA       PER084X.
   CCFACT    PER085X.    WTFQ      PER086X.    WTFS      PER087X.
   WTFA      PER088X.    WT65      PER089X.    RADAYWP   PER090X.
   BDDAYWP   PER091X.    WLDAYWP   PER092X.    SLDAYWP   PER093X.
   DV12WPQ   PER094X.    DV12WPS   PER095X.    DV12WPA   PER096X.
   HDA12WPQ  PER097X.    HDA12WPS  PER098X.    HDA12WPA  PER099X.
   HEP12WP   PER100X.    VARSTRAR  PER101X.    VARPSUR   PER102X.
   VARSUBSR  PER103X.    UNITSS    PER104X.    TYPEPSU   PER105X.
   PANEL     PER106X.    NSRSTVA   PER107X.    COLVARST  PER108X.
   VARPSU    PER109X.
   ;
 
PROC CONTENTS DATA=NHIS.PERSONSX;
 
PROC FREQ DATA=NHIS.PERSONSX;
TITLE1 'FREQUENCY REPORT FOR 1996 NHIS PERSON FILE';
TITLE2 '(WEIGHTED)';
TABLES RECTYPE/LIST MISSING;
WEIGHT WTFA;
 
PROC FREQ DATA=NHIS.PERSONSX;
TITLE1 'FREQUENCY REPORT FOR 1996 NHIS PERSON FILE';
TITLE2 '(UNWEIGHTED)';
TABLES RECTYPE/LIST MISSING;
 
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
              STATEMENT: FORMAT _ALL_;
RUN;
