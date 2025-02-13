DM 'CLE LOG; CLE OUT';
**************************************************************************
 November 17, 2005
 
THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
FILE FROM THE NHIS 1988 PERSONSX.DAT ASCII FILE.
 
NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
      GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
      DOCUMENTATION.
 
THIS IS STORED IN PERSONSX.SAS
*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;
 
LIBNAME NHIS    'C:\NHIS1988';
LIBNAME LIBRARY 'C:\NHIS1988';
 
FILENAME ASCIIDAT 'C:\NHIS1988\PERSONSX.DAT';
 
* DEFINE VARIABLE VALUES FOR REPORT;
 
PROC FORMAT LIBRARY=LIBRARY;
  VALUE  PER001X
   20               = "Person Record"
   ;
  VALUE  PER002X
   88               = "1988"
   ;
  VALUE  PER003X
   1                = "Quarter 1"
   2                = "Quarter 2"
   3                = "Quarter 3"
   4                = "Quarter 4"
   ;
  VALUE $PER004X
   ;
  VALUE  PER005X
   01  = "Week 01"   21  = "Week 01"   41  = "Week 01"   61  = "Week 01"    81  = "Week 01"
   02  = "Week 02"   22  = "Week 02"   42  = "Week 02"   62  = "Week 02"    82  = "Week 02"
   03  = "Week 03"   23  = "Week 03"   43  = "Week 03"   63  = "Week 03"    83  = "Week 03"
   04  = "Week 04"   24  = "Week 04"   44  = "Week 04"   64  = "Week 04"    84  = "Week 04"
   05  = "Week 05"   25  = "Week 05"   45  = "Week 05"   65  = "Week 05"    85  = "Week 05"
   06  = "Week 06"   26  = "Week 06"   46  = "Week 06"   66  = "Week 06"    86  = "Week 06"
   07  = "Week 07"   27  = "Week 07"   47  = "Week 07"   67  = "Week 07"    87  = "Week 07"
   08  = "Week 08"   28  = "Week 08"   48  = "Week 08"   68  = "Week 08"    88  = "Week 08"
   09  = "Week 09"   29  = "Week 09"   49  = "Week 09"   69  = "Week 09"    89  = "Week 09"
   10  = "Week 10"   30  = "Week 10"   50  = "Week 10"   70  = "Week 10"    90  = "Week 10"
   11  = "Week 11"   31  = "Week 11"   51  = "Week 11"   71  = "Week 11"    91  = "Week 11"
   12  = "Week 12"   32  = "Week 12"   52  = "Week 12"   72  = "Week 12"    92  = "Week 12"
   13  = "Week 13"   33  = "Week 13"   53  = "Week 13"   73  = "Week 13"    93  = "Week 13"
   ;
  VALUE $PER006X
   ;
  VALUE $PER007X
   ;
  VALUE $PER008X
   ;
  VALUE  PER009X
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
  VALUE  PER010X
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
  VALUE  PER011X
   1                = "Yes, phone number given"
   2                = "Yes, no phone number given"
   3                = "No"
   4                = "Unknown"
   ;
  VALUE  PER012X
   1                = "Male"
   2                = "Female"
   ;
  VALUE  PER013X
   00               = "Under 1 year"
   01-98            = "Number of years"
   99               = "99+ years of age"
   ;
  VALUE  PER014X
   1                = "Under 5 years"
   2                = "5-17 years"
   3                = "18-24 years"
   4                = "25-44 years"
   5                = "45-64 years"
   6                = "65-69 years"
   7                = "70-74 years"
   8                = "75 years and over"
   ;
  VALUE  PER015X
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
  VALUE  PER016X
   00-35            = "Months"
   36               = "Over 3 years"
   ;
  VALUE $PER017X
   "01"          = "January"         "08"     =  "August"
   "02"          = "February"        "09"     =  "September"
   "03"          = "March"           "10"     =  "October"
   "04"          = "April"           "11"     =  "November"
   "05"          = "May"             "12"     =  "December"
   "06"          = "June"            "99"     =  "Don't know or Refused"
   "07"          = "July"
   ;
  VALUE $PER018X
   "1800"-"1899"    = "1800-1899"
   "1900"-"1988"    = "1900-1988"
   "9999"           = "DK or refused"
   ;
  VALUE  PER019X
   1                = "Aleut, Eskimo, or American Indian"
   2                = "Asian/Pacific Islander"
   3                = "Black"
   4                = "White"
   5                = "Other"
   6                = "Multiple race"
   7                = "Unknown"
   ;
  VALUE  PER020X
   1                = "White"
   2                = "Black"
   3                = "Other"
   ;
  VALUE  PER021X
   1                = "White"
   2                = "Non-white"
   ;
  VALUE  PER022X
   1                = "Black"
   2                = "Non-black"
   ;
  VALUE  PER023X
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
  VALUE  PER024X
   0                = "Under 14 years"
   1                = "Married - spouse in household"
   2                = "Married - spouse not in household"
   3                = "Widowed"
   4                = "Divorced"
   5                = "Separated"
   6                = "Never married"
   7                = "Unknown"
   ;
  VALUE  PER025X
   1                = "Non-veteran"
   2                = "WW I"
   3                = "WW II"
   4                = "Korean War"
   5                = "Vietnam veteran"
   6                = "Post-Vietnam"
   7                = "Other service"
   8                = "Served in Armed Forces, unknown if war veteran"
   9                = "Unknown if served in Armed Forces"
   .                = "Under 18 years of age"
   ;
  VALUE  PER026X
   0                = "Non-veteran"
   1                = "All service in Guard/Reserve"
   2                = "Some service in Guard/Reserve"
   3                = "Unknown if all service in Guard/Reserve"
   4                = "No active service in Guard/Reserve"
   5                = "Unknown if ever active member in Guard/Reserve or served in Armed Forces"
   .                = "Under 18 years of age"
   ;
  VALUE  PER027X
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
  VALUE  PER028X
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
  VALUE  PER029X
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
  VALUE  PER030X
   0                = "None; kindergarten only"
   1                = "1-8 years (elementary)"
   2                = "9-11 years (high school)"
   3                = "12 years (high school graduate)"
   4                = "1-3 years (college)"
   5                = "4 years (college graduate)"
   6                = "5+ years (post-college)"
   7                = "Unknown"
   ;
  VALUE  PER031X
   1                = "Less than $20,000"
   2                = "$20,000 or more"
   3                = "Unknown"
   ;
  VALUE  PER032X
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
  VALUE  PER033X
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
  VALUE  PER034X
   1                = "At or above poverty threshold"
   2                = "Below poverty threshold"
   3                = "Unknown"
   ;
  VALUE $PER035X
   "&"              = "Primary individual"
   "-"              = "Secondary individual"
   "0"              = "Primary family"
   "1"-"9"          = "Secondary family"
   ;
  VALUE $PER036X
   "&"              = "Reference person, living alone"
   "0"              = "Reference person, 2+ persons in household"
   "1"              = "Spouse, other spouse NOT in Armed Forces and living at home"
   "2"              = "Spouse, other spouse IN Armed Forces and living at home"
   "3"              = "Child of reference person or spouse"
   "4"              = "Grandchild of reference person or spouse"
   "5"              = "Parent of reference person or spouse"
   "6"              = "Other relative"
   "7"              = "Child of ineligible reference person"
   "9"              = "DK or refused"
   ;
  VALUE  PER037X
   1                = "Living alone"
   2                = "Living only with non-relative"
   3                = "Living with spouse"
   4                = "Living with relative - other"
   ;
  VALUE  PER038X
   ;
  VALUE  PER039X
   1-8              = "Number of members"
   9                = "9+ members"
   ;
  VALUE  PER040X
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
  VALUE  PER041X
   1                = "Working"
   2                = "Keeping house"
   3                = "Going to school"
   4                = "Something else"
   5                = "Unknown"
   .                = "Not applicable (Under 18 years)"
   ;
  VALUE  PER042X
   1                = "Excellent"
   2                = "Very Good"
   3                = "Good"
   4                = "Fair"
   5                = "Poor"
   6                = "Unknown"
   ;
  VALUE  PER043X
   1                = "Unable to perform major activity"
   2                = "Limited in kind/amount major activity"
   3                = "Limited in other activities"
   4                = "Not limited (includes unknowns)"
   ;
  VALUE  PER044X
   1                = "Unable to work"
   2                = "Limited in kind/amount of work"
   3                = "Limited in other activities"
   4                = "Not limited (includes unknowns)"
   .                = "Not applicable (under 18 years, 70+ years)"
   ;
  VALUE  PER045X
   1                = "Unable to attend school"
   2                = "Attends special school/classes"
   3                = "Needs special school/classes"
   4                = "Limited in school attendance"
   5                = "Limited in other activities"
   6                = "Not limited (includes unknowns)"
   .                = "Not applicable (under 5 years or 18+ years)"
   ;
  VALUE  PER046X
   1                = "Unable to perform personal care needs"
   2                = "Limited in performing other routine needs"
   3                = "Not limited in performing personal or routine needs"
   4                = "Unknown"
   .                = "Not applicable (under 5 years; 5-59 years not limited; 70+ years old)"
   ;
  VALUE  PER047X
   1                = "Worked in past 2 weeks"
   2                = "Did not work, has job; not on lay-off and not looking for work"
   3                = "Did not work, has job; looking for work"
   4                = "Did not work, has job; on lay-off"
   5                = "Did not work, has job; on lay-off and looking for work"
   6                = "Did not work, has job; unknown if looking or on lay-off"
   7                = "Did not work no job; looking for work or on lay-off"
   8                = "Not in Labor Force (18+ years)"
   .                = "Not applicable (Under 18 years old)"
   ;
  VALUE  PER048X
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
  VALUE  PER049X
   010-996          = "Code number"
   .                = "Not applicable"
   ;
  VALUE  PER050X
   ;
  VALUE  PER051X
   ;
  VALUE  PER052X
   003-999          = "Code number"
   .                = "Not applicable"
   ;
  VALUE  PER053X
   ;
  VALUE  PER054X
   ;
  VALUE  PER055X
   0                = "Under 17"
   1                = "Self-entirely"
   2                = "Self-partly"
   3                = "Proxy"
   4                = "Unknown"
   ;
  VALUE  PER056X
   1                = "Condition List 1, Skin and musculoskeletal"
   2                = "Condition List 2, Impairments"
   3                = "Condition List 3, Digestive"
   4                = "Condition List 4, Miscellaneous"
   5                = "Condition List 5, Circulatory"
   6                = "Condition List 6, Respiratory"
   7                = "Unknown"
   ;
  VALUE  PER057X
   36-98            = "Number of inches"
   99               = "Unknown"
   .                = "Under 18 years of age"
   ;
  VALUE  PER058X
   050-500          = "Number of pounds"
   501              = "Unknown"
   .                = "Under 18 years of age"
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
   00               = "none"
   01-14            = "Days"
   ;
  VALUE  PER063X
   00               = "None"
   01-14            = "Days"
   ;
  VALUE  PER064X
   000              = "None"
   001-365          = "1-365 days"
   366              = "Unknown"
   ;
  VALUE  PER065X
   0                = "None"
   1                = "1-7 days"
   2                = "8-30 days"
   3                = "31-180 days"
   4                = "181-365 days"
   5                = "Unknown"
   ;
  VALUE  PER066X
   000              = "None"
   001-996          = "Visits"
   997              = "997+ visits"
   998              = "Unknown"
   ;
  VALUE  PER067X
   0                = "Never"
   1                = "Less than 1 year"
   2                = "1 to 1ess than 2 years"
   3                = "2 to 1ess than 5 years"
   4                = "5 years or more"
   5                = "Unknown"
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
   ;
  VALUE  PER079X
   ;
  VALUE  PER080X
   0                = "Permit"
   1                = "Area, oversampled for blacks"
   2                = "Area, not oversample for blacks"
   ;
  VALUE  PER081X
   ;
  VALUE  PER082X
   1                = "Northeast"
   2                = "Midwest"
   3                = "South"
   4                = "West"
   ;
  VALUE  PER083X
   1                = "1,000,000 or more"
   2                = "250,000 - 999,999"
   3                = "100,000 - 249,999"
   4                = "Under 100,000"
   .                = "Non-MSA"
   ;
  VALUE  PER084X
   1                = "MSA - Self-representing"
   3                = "MSA - Nonself-representing"
   4                = "Non-MSA - Self-representing"
   6                = "Non-MSA - Nonself-representing"
   ;
  VALUE  PER085X
   1                = "MSA - Central City"
   2                = "MSA - Not Central City"
   3                = "Non-MSA - Nonfarm"
   4                = "Non-MSA - Farm"
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
 
DATA NHIS.PERSONSX;
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1988';
   INFILE ASCIIDAT MISSOVER TRUNCOVER LRECL=335;
 
* DEFINE LENGTH OF NUMERIC VARIABLES;
 
LENGTH
   RECTYPE   3  YEAR      3  QUARTER   3  WEEKCEN   3  WEEKPROC  3
   LIVQTR    3  PHONE     3  SEX       3  AGE       3  AGER1     3
   AGER2     3  AGER3     3  RACE      3  RACER1    3  RACER2    3
   RACER3    3  HISPANIC  3  MARSTAT   3  VETERAN   3  RESERVE   3
   EDUC      3  EDUCR     3  EDUCAD    3  EDUCADR   3  INCFAM20  3
   INCFAM    3  INCFAMR   3  POVERTY   3  FAMRELR   3  FAMSIZE   3
   FAMSIZER  3  PARENT    3  MAJACT    3  HEALTH    3  LATOTAL   3
   LAWORK    3  LASCHOOL  3  LACARE    3  EMPLOY    3  WKCLASS   3
   INDUS     3  INDUSR1   3  INDUSR2   3  OCCUP     3  OCCUPR1   3
   OCCUPR2   3  RESPOND   3  CONDLIST  3  HEIGHT    3  WEIGHT    3
   RADAY     3  BDDAY     3  WLDAY     3  SLDAY     3  OTHDAY    3
   BDDAY12   3  BDDAY12R  3  DV12      3  DVINT     3  NCOND     3
   NACUTE    3  NDV2      3  HEP12     3  HDA12     3  HEP12X    3
   HDA12X    3  DISDA6    3  DIS6X     3  DISDA6X   3  DISDA12X  3
   WTINT     8  SUBTYPE   3  STRATUM   3  REGION    3  MSASIZE   3
   PSUTYPE   3  MSA       3  PSUPSEUD  3  CCFACT    8  WTFQ      6
   WTFS      6  WTFA      6  WT65      6  RADAYWP   6  BDDAYWP   6
   WLDAYWP   6  SLDAYWP   6  DV12WPQ   6  DV12WPS   6  DV12WPA   6
   HDA12WPQ  6  HDA12WPS  6  HDA12WPA  6  HEP12WP   6
   ;

* INPUT ALL VARIABLES;
 
INPUT
   RECTYPE       1 - 2         YEAR          3 - 4
   QUARTER       5 - 5         PSUNUMR  $    6 - 8
   WEEKCEN       9 - 10        SEGNUM   $   11 - 12
   HHNUM    $   13 - 14        PNUM     $   15 - 16
   WEEKPROC     19 - 20        LIVQTR       22 - 23
   PHONE        24 - 24        SEX          25 - 25
   AGE          27 - 28        AGER1        29 - 29
   AGER2        30 - 30        AGER3        31 - 32
   BIRTHMO  $   34 - 35        BIRTHYR  $   36 - 39
   RACE         42 - 42        RACER1       43 - 43
   RACER2       44 - 44        RACER3       45 - 45
   HISPANIC     46 - 47        MARSTAT      48 - 48
   VETERAN      49 - 49        RESERVE      50 - 50
   EDUC         51 - 52        EDUCR        53 - 53
   EDUCAD       54 - 55        EDUCADR      56 - 56
   INCFAM20     57 - 57        INCFAM       58 - 59
   INCFAMR      60 - 60        POVERTY      61 - 61
   FAMNUM   $   62 - 62        FAMREL   $   63 - 63
   FAMRELR      64 - 64        FAMSIZE      65 - 66
   FAMSIZER     67 - 67        PARENT       68 - 68
   MAJACT       69 - 69        HEALTH       70 - 70
   LATOTAL      71 - 71        LAWORK       72 - 72
   LASCHOOL     73 - 73        LACARE       74 - 74
   EMPLOY       75 - 75        WKCLASS      76 - 76
   INDUS        77 - 79        INDUSR1      80 - 81
   INDUSR2      82 - 83        OCCUP        84 - 86
   OCCUPR1      87 - 88        OCCUPR2      89 - 90
   RESPOND      91 - 91        CONDLIST     92 - 92
   HEIGHT       93 - 94        WEIGHT       95 - 97
   RADAY        98 - 99        BDDAY       100 - 101
   WLDAY       102 - 103       SLDAY       104 - 105
   OTHDAY      106 - 107       BDDAY12     108 - 110
   BDDAY12R    111 - 111       DV12        112 - 114
   DVINT       115 - 115       NCOND       116 - 117
   NACUTE      118 - 119       NDV2        120 - 121
   HEP12       122 - 123       HDA12       124 - 126
   HEP12X      127 - 128       HDA12X      129 - 131
   DISDA6      132 - 133       DIS6X       134 - 136
   DISDA6X     137 - 138       DISDA12X    139 - 141
   WTINT       172 - 177 .1    SUBTYPE     178 - 178
   STRATUM     179 - 181       REGION      182 - 182
   MSASIZE     183 - 183       PSUTYPE     185 - 185
   MSA         186 - 186       PSUPSEUD    187 - 189
   CCFACT      190 - 200 .9    WTFQ        201 - 209
   WTFS        210 - 218       WTFA        219 - 227
   WT65        228 - 236       RADAYWP     237 - 245
   BDDAYWP     246 - 254       WLDAYWP     255 - 263
   SLDAYWP     264 - 272       DV12WPQ     273 - 281
   DV12WPS     282 - 290       DV12WPA     291 - 299
   HDA12WPQ    300 - 308       HDA12WPS    309 - 317
   HDA12WPA    318 - 326       HEP12WP     327 - 335
   ;
* DEFINE VARIABLE LABELS;
 
LABEL
   RECTYPE  = "RECORD TYPE"
   YEAR     = "PROCESSING YEAR"
   QUARTER  = "PROCESSING QUARTER"
   PSUNUMR  = "RANDOM RECODE OF PSU NUMBER"
   WEEKCEN  = "WEEK - CENSUS CODE"
   SEGNUM   = "SEGMENT NUMBER"
   HHNUM    = "HOUSEHOLD NUMBER"
   PNUM     = "PERSON NUMBER"
   WEEKPROC = "PROCESSING WEEK CODE"
   LIVQTR   = "TYPE OF LIVING QUARTERS"
   PHONE    = "HAS TELEPHONE"
   SEX      = "SEX"
   AGE      = "AGE"
   AGER1    = "AGE RECODE #1"
   AGER2    = "AGE RECODE #2"
   AGER3    = "AGE RECODE #3"
   BIRTHMO  = "MONTH OF BIRTH"
   BIRTHYR  = "YEAR OF BIRTH"
   RACE     = "MAIN RACIAL BACKGROUND"
   RACER1   = "RACE RECODE 1"
   RACER2   = "RACE RECODE 2"
   RACER3   = "RACE RECODE 3"
   HISPANIC = "HISPANIC ORIGIN"
   MARSTAT  = "MARITAL STATUS"
   VETERAN  = "VETERAN STATUS"
   RESERVE  = "ACTIVE GUARD/RESERVE STATUS FOR PERSONS ON ACTIVE DUTY IN ARMED FORCES"
   EDUC     = "EDUCATION OF INDIVIDUAL - COMPLETED YEARS"
   EDUCR    = "EDUCATION OF INDIVIDUAL RECODE"
   EDUCAD   = "HIGHEST EDUCATION OF RESPONSIBLE ADULT FAMILY MEMBER - (DETAIL)"
   EDUCADR  = "HIGHEST EDUCATION OF RESPONSIBLE ADULT FAMILY MEMBER - RECODE"
   INCFAM20 = "FAMILY INCOME $20,000 OR MORE"
   INCFAM   = "FAMILY INCOME"
   INCFAMR  = "FAMILY INCOME RECODE"
   POVERTY  = "NHIS POVERTY INDEX"
   FAMNUM   = "TYPE OF FAMILY"
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
   INDUS    = "INDUSTRY DETAIL CODE"
   INDUSR1  = "INDUSTRY RECODE 1"
   INDUSR2  = "INDUSTRY RECODE 2"
   OCCUP    = "OCCUPATION DETAIL CODE"
   OCCUPR1  = "OCCUPATION RECODE 1"
   OCCUPR2  = "OCCUPATION RECODE 2"
   RESPOND  = "RESPONDENT"
   CONDLIST = "CONDITION LIST ASSIGNED AND ASKED"
   HEIGHT   = "HEIGHT WITHOUT SHOES"
   WEIGHT   = "WEIGHT WITHOUT SHOES"
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
   WTINT    = "BASIC WEIGHT BEFORE AGE-SEX-RACE ADJUSTMENT"
   SUBTYPE  = "TYPE OF SUBSTRATUM"
   STRATUM  = "FULL SAMPLE STRATUM IDENTIFIER"
   REGION   = "REGION"
   MSASIZE  = "GEOGRAPHIC DISTRIBUTION"
   PSUTYPE  = "TYPE OF PSU"
   MSA      = "MSA - NON-MSA RESIDENCE"
   PSUPSEUD = "PSEUDO PSU CODES"
   CCFACT   = "CHRONIC CONDITION PREVALENCE AND INCIDENCE FACTOR"
   WTFQ     = "FINAL BASIC WEIGHT - QUARTER"
   WTFS     = "FINAL BASIC WEIGHT - SEMI-ANNUAL (WT/2)"
   WTFA     = "FINAL BASIC WEIGHT - ANNUAL (WT/4)"
   WT65     = "6,5 WEIGHT - QUARTER, SEMI-ANNUAL, AND ANNUAL"
   RADAYWP  = "ESTIMATED RESTRICTED ACTIVITY DAYS PAST 2W - QUARTER, SEMI-ANNUAL AND ANNUAL"
   BDDAYWP  = "ESTIMATED BED DAYS PAST 2W - QUARTER, SEMI-ANNUAL AND ANNUAL"
   WLDAYWP  = "ESTIMATED WORK-LOSS DAYS PAST 2W - QUARTER, SEMI-ANNUAL AND ANNUAL"
   SLDAYWP  = "ESTIMATED SCHOOL-LOSS DAYS PAST 2W - QUARTER, SEMI-ANNUAL AND ANNUAL"
   DV12WPQ  = "ESTIMATED DOCTOR VISITS PAST 12M - QUARTER"
   DV12WPS  = "ESTIMATED DOCTOR VISITS PAST 12M - SEMI-ANNUAL"
   DV12WPA  = "ESTIMATED DOCTOR VISITS PAST 12M - ANNUAL"
   HDA12WPQ = "ESTIMATED SHORT-STAY HOSPITAL EPISODE DAYS PAST 12M - QUARTER"
   HDA12WPS = "ESTIMATED SHORT-STAY HOSPITAL EPISODE DAYS PAST 12M - SEMI-ANNUAL"
   HDA12WPA = "ESTIMATED SHORT-STAY HOSPITAL EPISODE DAYS PAST 12M - ANNUAL"
   HEP12WP  = "ANNUAL ESTIMATED NUMBER OF SHORT-STAY HOSPITAL EPISODES IN PAST 12 MONTHS"
   ;
* ASSOCIATE VARIABLES WITH FORMAT VALUES;
 
FORMAT
   RECTYPE   PER001X.    YEAR      PER002X.    QUARTER   PER003X.
   PSUNUMR  $PER004X.    WEEKCEN   PER005X.    SEGNUM   $PER006X.
   HHNUM    $PER007X.    PNUM     $PER008X.    WEEKPROC  PER009X.
   LIVQTR    PER010X.    PHONE     PER011X.    SEX       PER012X.
   AGE       PER013X.    AGER1     PER014X.    AGER2     PER015X.
   AGER3     PER016X.    BIRTHMO  $PER017X.    BIRTHYR  $PER018X.
   RACE      PER019X.    RACER1    PER020X.    RACER2    PER021X.
   RACER3    PER022X.    HISPANIC  PER023X.    MARSTAT   PER024X.
   VETERAN   PER025X.    RESERVE   PER026X.    EDUC      PER027X.
   EDUCR     PER028X.    EDUCAD    PER029X.    EDUCADR   PER030X.
   INCFAM20  PER031X.    INCFAM    PER032X.    INCFAMR   PER033X.
   POVERTY   PER034X.    FAMNUM   $PER035X.    FAMREL   $PER036X.
   FAMRELR   PER037X.    FAMSIZE   PER038X.    FAMSIZER  PER039X.
   PARENT    PER040X.    MAJACT    PER041X.    HEALTH    PER042X.
   LATOTAL   PER043X.    LAWORK    PER044X.    LASCHOOL  PER045X.
   LACARE    PER046X.    EMPLOY    PER047X.    WKCLASS   PER048X.
   INDUS     PER049X.    INDUSR1   PER050X.    INDUSR2   PER051X.
   OCCUP     PER052X.    OCCUPR1   PER053X.    OCCUPR2   PER054X.
   RESPOND   PER055X.    CONDLIST  PER056X.    HEIGHT    PER057X.
   WEIGHT    PER058X.    RADAY     PER059X.    BDDAY     PER060X.
   WLDAY     PER061X.    SLDAY     PER062X.    OTHDAY    PER063X.
   BDDAY12   PER064X.    BDDAY12R  PER065X.    DV12      PER066X.
   DVINT     PER067X.    NCOND     PER068X.    NACUTE    PER069X.
   NDV2      PER070X.    HEP12     PER071X.    HDA12     PER072X.
   HEP12X    PER073X.    HDA12X    PER074X.    DISDA6    PER075X.
   DIS6X     PER076X.    DISDA6X   PER077X.    DISDA12X  PER078X.
   WTINT     PER079X.    SUBTYPE   PER080X.    STRATUM   PER081X.
   REGION    PER082X.    MSASIZE   PER083X.    PSUTYPE   PER084X.
   MSA       PER085X.    PSUPSEUD  PER086X.    CCFACT    PER087X.
   WTFQ      PER088X.    WTFS      PER089X.    WTFA      PER090X.
   WT65      PER091X.    RADAYWP   PER092X.    BDDAYWP   PER093X.
   WLDAYWP   PER094X.    SLDAYWP   PER095X.    DV12WPQ   PER096X.
   DV12WPS   PER097X.    DV12WPA   PER098X.    HDA12WPQ  PER099X.
   HDA12WPS  PER100X.    HDA12WPA  PER101X.    HEP12WP   PER102X.
   ;
 
PROC CONTENTS DATA=NHIS.PERSONSX;
 
PROC FREQ DATA=NHIS.PERSONSX;
TITLE1 'FREQUENCY REPORT FOR 1988 NHIS PERSON PUBLIC USE FILE';
TITLE2 '(WEIGHTED)';
TABLES RECTYPE/LIST MISSING;
WEIGHT WTFA;
 
PROC FREQ DATA=NHIS.PERSONSX;
TITLE1 'FREQUENCY REPORT FOR 1988 NHIS PERSON PUBLIC USE FILE';
TITLE2 '(UNWEIGHTED)';
TABLES RECTYPE/LIST MISSING;
 
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
              STATEMENT: FORMAT _ALL_;
RUN;
