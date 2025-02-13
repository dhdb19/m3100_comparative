DM 'CLE LOG; CLE OUT';
**************************************************************************
November 29, 2005
 
THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
FILE FROM THE NHIS 1984 PERSONSX.DAT ASCII FILE.
 
NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
      GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
      DOCUMENTATION.
 
THIS IS STORED IN PERSONSX.SAS
*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;
 
LIBNAME NHIS    'C:\NHIS1984';
LIBNAME LIBRARY 'C:\NHIS1984';
 
FILENAME ASCIIDAT 'C:\NHIS1984\PERSONSX.DAT';
 
* DEFINE VARIABLE VALUES FOR REPORT;
 
PROC FORMAT LIBRARY=LIBRARY;
  VALUE  PER001X
   20               = "Person Record"
   ;
  VALUE  PER002X
   84               = "1984"
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
  VALUE  PER010X
   00               = "Housing unit; kind unknown"
   01               = "House, apartment, flat"
   02               = "HU in nontransient hotel, m etc"
   03               = "HU-permanent in transient h motel, etc"
   04               = "HU in rooming house"
   05               = "Mobile home or trailer with permanent room added"
   06               = "Mobile home or trailer with or more permanent rooms add"
   07               = "HU not specified above"
   08               = "Quarters not HU in rooming boarding house"
   09               = "Unit not permanent in trans hotel, motel, etc"
   10               = "Unoccupied tent site or tra site"
   11               = "Other unit not specified ab"
   12               = "Other unit; kind unknown"
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
   "06"          = "June"            " "      =  " "
   "07"          = "July"
   ;
  VALUE $PER018X
   "1800"-"1899"    = "1800-1899"
   "1900"-"1984"    = "1900-1984"
   "9999"           = "DK or refused"
   ;
  VALUE  PER019X
   1                = "Aleut, Eskimo, or American India"
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
   2                = "Married - spouse not in househol"
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
   8                = "Served in Armed Forces, unknown war veteran"
   9                = "Unknown if served in Armed Force"
   .                = "Under 18 years of age"
   ;
  VALUE  PER026X
   0                = "Non-veteran"
   1                = "All service in Guard/Reserve"
   2                = "Some service in Guard/Reserve"
   3                = "Unknown if all service in Guard/Reserve"
   4                = "No active service in Guard/Reser"
   5                = "Unknown if ever active member in Guard/Reserve or served in Armed Forces"
   .                = "Under 18 years of age"
   ;
  VALUE  PER027X
   00               = "Never attended; kindergarten onl"
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
   00               = "Never attended; kindergarten onl"
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
   02               = "2,000 -   2,999"
   03               = "3,000 -   3,999"
   04               = "4,000 -   4,999"
   05               = "5,000 -   5,999"
   06               = "6,000 -   6,999"
   07               = "7,000 -   7,999"
   08               = "8,000 -   8,999"
   09               = "9,000 -   9,999"
   10               = "10,000 -  10,999"
   11               = "11,000 -  11,999"
   12               = "12,000 -  12,999"
   13               = "13,000 -  13,999"
   14               = "14,000 -  14,999"
   15               = "15,000 -  15,999"
   16               = "16,000 -  16,999"
   17               = "17,000 -  17,999"
   18               = "18,000 -  18,999"
   19               = "19,000 -  19,999"
   20               = "20,000 -  24,999"
   21               = "25,000 -  29,999"
   22               = "30,000 -  34,999"
   23               = "35,000 -  39,999"
   24               = "40,000 -  44,999"
   25               = "45,000 -  49,999"
   26               = "$50,000 and over"
   27               = "Unknown"
   ;
  VALUE  PER033X
   0                = "Under $5,000"
   1                = "$ 5,000 - $ 6,999"
   2                = "7,000 -   9,999"
   3                = "10,000 -  14,999"
   4                = "15,000 -  19,999"
   5                = "20,000 -  24,999"
   6                = "25,000 -  34,999"
   7                = "35,000 -  49,999"
   8                = "$50,000 or more"
   9                = "Unknown"
   ;
  VALUE  PER034X
   1                = "Above poverty threshold"
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
   "1"              = "Spouse, other spouse NOT in Arme Forces and living at home"
   "2"              = "Spouse, other spouse IN Armed Fo and living at home"
   "3"              = "Child of reference person or spo"
   "4"              = "Grandchild of reference person o spouse"
   "5"              = "Parent of reference person or sp"
   "6"              = "Other relative"
   "7"              = "Child of ineligible reference pe"
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
   4                = "Both parents and other 21+ year adult relative"
   5                = "Mother and other 21+ year old ad relative"
   6                = "Father and other 21+ year old ad relative"
   7                = "No parent, but one 21+ year old relative"
   8                = "No parent, but two or more 21+ y old adult relatives"
   9                = "Unknown"
   0                = "Other"
   .                = "Not applicable (25+ years old or married)"
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
   2                = "Limited in kind/amount major act"
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
   .                = "Not applicable (under 5 years or years)"
   ;
  VALUE  PER046X
   1                = "Unable to perform personal care"
   2                = "Limited in performing other rout needs"
   3                = "Not limited in performing person routine needs"
   4                = "Unknown"
   .                = "Not applicable (under 5 years; 5 years not limited; 70+ years old"
   ;
  VALUE  PER047X
   1                = "Worked in past 2 weeks"
   2                = "Did not work, has job; not o lay-off and not looking for"
   3                = "Did not work, has job; looki for work"
   4                = "Did not work, has job; on la"
   5                = "Did not work, has job; on la and looking for work"
   6                = "Did not work, has job; unkno looking or on lay-off"
   7                = "Did not work, no job; lookin for work or on lay-off"
   8                = "Not in Labor Force (18+ year"
   .                = "Not applicable (Under 18 yea old)"
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
   1                = "Condition List 1, Skin and musculoskeleta"
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
   00    = "None"
   01-14            = "Days"
   ;
  VALUE  PER062X
   00    = "None"
   01-14            = "Days"
   ;
  VALUE  PER063X
   00    = "None"
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
   2                = "1 to less than 2 years"
   3                = "2 to less than 5 years"
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
   1                = "Northeast"
   2                = "North Central"
   3                = "South"
   4                = "West"
   ;
  VALUE  PER080X
   34               = "Boston"
   35               = "York"
   36               = "Philadelphia"
   37               = "Pittsburgh"
   38               = "Detroit"
   39               = "Chicago"
   40               = "Cincinnati"
   41               = "Los Angeles-Long Beach"
   42               = "San Francisco-(Oakland)"
   43               = "Baltimore"
   44               = "Atlanta"
   45               = "Buffalo"
   46               = "Cleveland"
   47               = "Minneapolis-St Paul"
   48               = "Milwaukee"
   49               = "Kansas City"
   50               = "St Louis"
   51               = "Houston"
   52               = "Dallas"
   53               = "Washington, DC"
   54               = "Seattle-Everett"
   55               = "San Diego"
   56               = "Anaheim-Santa Ana Garden G"
   57               = "Miami"
   58               = "Denver"
   59               = "San Bernardino-Riverside- Ontario"
   60               = "Indianapolis"
   61               = "San Jose"
   62               = "New Orleans"
   63               = "Tampa-St Petersburg"
   64               = "Portland, Oregon"
   .                = "Non self-representing sectio and self-representing SMSA's other than those recoded 34- Large Self-repres"
   ;
  VALUE  PER081X
   0                = "The 31 Large Self-representi SMSA's"
   1                = "SMSA - Self-representing"
   3                = "SMSA - Nonself-representing"
   4                = "Non-SMSA - Self-representing"
   6                = "Non-SMSA - Nonself-represent"
   ;
  VALUE  PER082X
   1                = "SMSA - Central City"
   2                = "SMSA - Not Central City"
   3                = "Non-SMSA - Nonfarm"
   4                = "Non-SMSA - Farm"
   ;
  VALUE  PER083X
   ;
  VALUE  PER084X
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
 
DATA NHIS.PERSONSX;
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1984';
   INFILE ASCIIDAT MISSOVER TRUNCOVER LRECL=335;
 
* DEFINE LENGTH OF NUMERIC VARIABLES;
 
LENGTH
   RECTYPE   3  YEAR      3  QUARTER   3  WEEKCEN   3  WEEKPROC  3
   PR_22     3  PR_24     3  PR_25     3  PR_27     3  PR_29     3
   PR_30     3  PR_31     3  PR_42     3  PR_43     3  PR_44     3
   PR_45     3  PR_46     3  PR_48     3  PR_49     3  PR_50     3
   PR_51     3  PR_53     3  PR_54     3  PR_56     3  PR_57     3
   PR_58     3  PR_60     3  PR_61     3  PR_64     3  PR_65     3
   PR_67     3  PR_68     3  PR_69     3  PR_70     3  PR_71     3
   PR_72     3  PR_73     3  PR_74     3  PR_75     3  PR_76     3
   PR_77     3  PR_80     3  PR_82     3  PR_84     3  PR_87     3
   PR_89     3  PR_91     3  PR_92     3  PR_93     3  PR_95     3
   PR_98     3  PR_100    3  PR_102    3  PR_104    3  PR_106    3
   PR_108    3  PR_111    3  PR_112    3  PR_115    3  PR_116    3
   PR_118    3  PR_120    3  PR_122    3  PR_124    3  PR_127    3
   PR_129    3  PR_132    3  PR_134    3  PR_137    3  PR_139    3
   PR_182    3  PR_183    3  PR_185    3  PR_186    3  PR_187    3
   PR_190    8  PR_201    6  PR_210    6  WTFA      6  PR_228    6
   PR_237    6  PR_246    6  PR_255    6  PR_264    6  PR_273    6
   PR_282    6  PR_291    6  PR_300    6  PR_309    6  PR_318    6
   PR_327    6
   ;
* INPUT ALL VARIABLES;
 
INPUT
   RECTYPE       1 - 2         YEAR          3 - 4
   QUARTER       5 - 5         PSUNUMR  $    6 - 8
   WEEKCEN       9 - 10        SEGNUM   $   11 - 12
   HHNUM    $   13 - 14        PNUM     $   15 - 16
   WEEKPROC     19 - 20        PR_22        22 - 23
   PR_24        24 - 24        PR_25        25 - 25
   PR_27        27 - 28        PR_29        29 - 29
   PR_30        30 - 30        PR_31        31 - 32
   PR_34    $   34 - 35        PR_36    $   36 - 39
   PR_42        42 - 42        PR_43        43 - 43
   PR_44        44 - 44        PR_45        45 - 45
   PR_46        46 - 47        PR_48        48 - 48
   PR_49        49 - 49        PR_50        50 - 50
   PR_51        51 - 52        PR_53        53 - 53
   PR_54        54 - 55        PR_56        56 - 56
   PR_57        57 - 57        PR_58        58 - 59
   PR_60        60 - 60        PR_61        61 - 61
   PR_62    $   62 - 62        PR_63    $   63 - 63
   PR_64        64 - 64        PR_65        65 - 66
   PR_67        67 - 67        PR_68        68 - 68
   PR_69        69 - 69        PR_70        70 - 70
   PR_71        71 - 71        PR_72        72 - 72
   PR_73        73 - 73        PR_74        74 - 74
   PR_75        75 - 75        PR_76        76 - 76
   PR_77        77 - 79        PR_80        80 - 81
   PR_82        82 - 83        PR_84        84 - 86
   PR_87        87 - 88        PR_89        89 - 90
   PR_91        91 - 91        PR_92        92 - 92
   PR_93        93 - 94        PR_95        95 - 97
   PR_98        98 - 99        PR_100      100 - 101
   PR_102      102 - 103       PR_104      104 - 105
   PR_106      106 - 107       PR_108      108 - 110
   PR_111      111 - 111       PR_112      112 - 114
   PR_115      115 - 115       PR_116      116 - 117
   PR_118      118 - 119       PR_120      120 - 121
   PR_122      122 - 123       PR_124      124 - 126
   PR_127      127 - 128       PR_129      129 - 131
   PR_132      132 - 133       PR_134      134 - 136
   PR_137      137 - 138       PR_139      139 - 141
   PR_182      182 - 182       PR_183      183 - 184
   PR_185      185 - 185       PR_186      186 - 186
   PR_187      187 - 189       PR_190      190 - 200 .9
   PR_201      201 - 209       PR_210      210 - 218
   WTFA        219 - 227       PR_228      228 - 236
   PR_237      237 - 245       PR_246      246 - 254
   PR_255      255 - 263       PR_264      264 - 272
   PR_273      273 - 281       PR_282      282 - 290
   PR_291      291 - 299       PR_300      300 - 308
   PR_309      309 - 317       PR_318      318 - 326
   PR_327      327 - 335
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
   WEEKPROC = "WEEK CODE"
   PR_22    = "TYPE OF LIVING QUARTERS"
   PR_24    = "HAS TELEPHONE"
   PR_25    = "SEX"
   PR_27    = "AGE"
   PR_29    = "AGE RECODE #1"
   PR_30    = "AGE RECODE #2"
   PR_31    = "AGE RECODE #3"
   PR_34    = "MONTH OF BIRTH"
   PR_36    = "YEAR OF BIRTH"
   PR_42    = "MAIN RACIAL BACKGROUND"
   PR_43    = "RACE RECODE 1"
   PR_44    = "RACE RECODE 2"
   PR_45    = "RACE RECODE 3"
   PR_46    = "HISPANIC ORIGIN"
   PR_48    = "MARITAL STATUS"
   PR_49    = "VETERAN STATUS"
   PR_50    = "ACTIVE GUARD/RESERVE STATUS FOR PERSONS ACTIVE DUTY IN ARMED FORCES"
   PR_51    = "EDUCATION OF INDIVIDUAL - COMPLETED YEAR"
   PR_53    = "EDUCATION OF INDIVIDUAL RECODE"
   PR_54    = "HIGHEST EDUCATION OF RESPONSIBLE ADULT F MEMBER - (DETAIL)"
   PR_56    = "HIGHEST EDUCATION OF RESPONSIBLE ADULT F MEMBER - RECODE"
   PR_57    = "FAMILY INCOME $20,000 OR MORE"
   PR_58    = "FAMILY INCOME"
   PR_60    = "FAMILY INCOME RECODE"
   PR_61    = "NHIS POVERTY INDEX"
   PR_62    = "TYPE OF FAMILY"
   PR_63    = "RELATIONSHIP TO REFERENCE PERSON"
   PR_64    = "FAMILY RELATIONSHIP RECODE"
   PR_65    = "SIZE OF FAMILY"
   PR_67    = "SIZE OF FAMILY RECODE"
   PR_68    = "PARENT/OTHER ADULT RELATIVE"
   PR_69    = "MAJOR ACTIVITY"
   PR_70    = "HEALTH STATUS"
   PR_71    = "ACTIVITY LIMITATION STATUS"
   PR_72    = "ACTIVITY LIMITATION STATUS MEASURED BY 'ABILITY TO WORK'"
   PR_73    = "LIMITATION OF SCHOOL ACTIVITIES"
   PR_74    = "NEEDS HELP WITH PERSONAL CARE"
   PR_75    = "EMPLOYMENT STATUS IN PAST 2 WEEKS"
   PR_76    = "CLASS OF WORKER"
   PR_77    = "INDUSTRY DETAIL CODE"
   PR_80    = "INDUSTRY RECODE 1"
   PR_82    = "INDUSTRY RECODE 2"
   PR_84    = "OCCUPATION DETAIL CODE"
   PR_87    = "OCCUPATION RECODE 1"
   PR_89    = "OCCUPATION RECODE 2"
   PR_91    = "RESPONDENT"
   PR_92    = "CONDITION LIST ASSIGNED AND ASKED"
   PR_93    = "HEIGHT WITHOUT SHOES"
   PR_95    = "WEIGHT WITHOUT SHOES"
   PR_98    = "TOTAL RESTRICTED ACTIVITY DAYS IN PAST T WEEKS"
   PR_100   = "BED DAYS IN PAST TWO"
   PR_102   = "WORK-LOSS DAYS IN PAST TWO WEEKS"
   PR_104   = "SCHOOL-LOSS DAYS IN PAST TWO WEEKS"
   PR_106   = "OTHER DAYS OF RESTRICTED ACTIVITY IN PAS WEEKS"
   PR_108   = "BED DAYS IN PAST 12 MONTHS"
   PR_111   = "BED DAYS IN PAST 12 MONTHS - RECODE"
   PR_112   = "DOCTOR VISITS IN PAST 12 MONTHS"
   PR_115   = "INTERVAL SINCE LAST DOCTOR VISIT"
   PR_116   = "NUMBER OF CONDITIONS"
   PR_118   = "NUMBER OF ACUTE INCIDENCE CONDITIONS"
   PR_120   = "NUMBER OF TWO-WEEK DOCTOR VISITS"
   PR_122   = "NUMBER OF SHORT-STAY HOSPITAL EPISODES I IN PAST 12 MONTHS"
   PR_124   = "SHORT-STAY HOSPITAL EPISODE DAYS IN PAST '12 MONTHS"
   PR_127   = "NUMBER OF SHORT-STAY HOSPITAL EPISODES I PAST 12 MONTHS EXCLUDING DELIVERY"
   PR_129   = "SHORT-STAY HOSPITAL EPISODE DAYS IN PAST MONTHS EXCLUDING DELIVERY"
   PR_132   = "NUMBER OF SHORT-STAY HOSPITAL DISCHARGES PAST 6 MONTHS"
   PR_134   = "NUMBER OF DAYS IN SHORT-STAY HOSPITAL IN PAST 12 MONTHS FOR DISCHARGES IN PAST 6 MONTHS"
   PR_137   = "NUMBER OF SHORT-STAY HOSPITAL DISCHARGES PAST 6 MONTHS EXCLUDING DELIVERY"
   PR_139   = "NUMBER OF DAYS IN SHORT-STAY HOSPITAL IN '12 MONTHS FOR DISCHARGES IN PAST 6 MONTH EXCLUDING DELIVERY"
   PR_182   = "REGION"
   PR_183   = "TABULATION AREA"
   PR_185   = "TYPE OF PSU"
   PR_186   = "SMSA - NON-SMSA RESIDENCE"
   PR_187   = "PSEUDO PSU CODES"
   PR_190   = "CHRONIC CONDITION PREVALENCE AND INCIDENCE FACTOR"
   PR_201   = "FINAL BASIC WEIGHT - QUARTER"
   PR_210   = "FINAL BASIC WEIGHT - SEMI-ANNUAL (WT/2)"
   WTFA     = "FINAL BASIC WEIGHT - ANNUAL (WT/4)"
   PR_228   = "6.5 WEIGHT - QUARTER, SEMI-ANNUAL, AND ANNUAL"
   PR_237   = "ESTIMATED RESTRICTED ACTIVITY DAYS PAST 2W - QUARTER, SEMI-ANNUAL AND ANNUAL"
   PR_246   = "ESTIMATED BED DAYS PAST 2W - QUARTER, SEMI-ANNUAL AND ANNUAL"
   PR_255   = "ESTIMATED WROK-LOSS DAYS PAST 2W - QUARTER, SEMI-ANNUAL AND ANNUAL"
   PR_264   = "ESTIMATED SCHOOL-LOSS DAYS PAST 2W - QUARTER, SEMI-ANNUAL AND ANNUAL"
   PR_273   = "ESTIMATED DOCTOR VISITS PAST 12M - QUARTER"
   PR_282   = "ESTIMATED DOCTOR VISITS PAST 12M - SEMI-ANNUAL"
   PR_291   = "ESTIMATED DOCTOR VISITS PAST 12M - ANNUAL"
   PR_300   = "ESTIMATED SHORT-STAY HOSPITAL EPISODE DAYS PAST 12M - QUARTER"
   PR_309   = "ESTIMATED SHORT-STAY HOSPITAL EPISODE DAYS PAST 12M - SEMI-ANNUAL"
   PR_318   = "ESTIMATED SHORT-STAY HOSPITAL EPISODE DAYS PAST 12M - ANNUAL"
   PR_327   = "ANNUAL ESTIMATED NUMBER OF SHORT-STAY HOSPITAL EPISODES IN PAST 12 MONTHS"
   ;
* ASSOCIATE VARIABLES WITH FORMAT VALUES;
 
FORMAT
   RECTYPE   PER001X.    YEAR      PER002X.    QUARTER   PER003X.
   PSUNUMR  $PER004X.    WEEKCEN   PER005X.    SEGNUM   $PER006X.
   HHNUM    $PER007X.    PNUM     $PER008X.    WEEKPROC  PER009X.
   PR_22     PER010X.    PR_24     PER011X.    PR_25     PER012X.
   PR_27     PER013X.    PR_29     PER014X.    PR_30     PER015X.
   PR_31     PER016X.    PR_34    $PER017X.    PR_36    $PER018X.
   PR_42     PER019X.    PR_43     PER020X.    PR_44     PER021X.
   PR_45     PER022X.    PR_46     PER023X.    PR_48     PER024X.
   PR_49     PER025X.    PR_50     PER026X.    PR_51     PER027X.
   PR_53     PER028X.    PR_54     PER029X.    PR_56     PER030X.
   PR_57     PER031X.    PR_58     PER032X.    PR_60     PER033X.
   PR_61     PER034X.    PR_62    $PER035X.    PR_63    $PER036X.
   PR_64     PER037X.    PR_65     PER038X.    PR_67     PER039X.
   PR_68     PER040X.    PR_69     PER041X.    PR_70     PER042X.
   PR_71     PER043X.    PR_72     PER044X.    PR_73     PER045X.
   PR_74     PER046X.    PR_75     PER047X.    PR_76     PER048X.
   PR_77     PER049X.    PR_80     PER050X.    PR_82     PER051X.
   PR_84     PER052X.    PR_87     PER053X.    PR_89     PER054X.
   PR_91     PER055X.    PR_92     PER056X.    PR_93     PER057X.
   PR_95     PER058X.    PR_98     PER059X.    PR_100    PER060X.
   PR_102    PER061X.    PR_104    PER062X.    PR_106    PER063X.
   PR_108    PER064X.    PR_111    PER065X.    PR_112    PER066X.
   PR_115    PER067X.    PR_116    PER068X.    PR_118    PER069X.
   PR_120    PER070X.    PR_122    PER071X.    PR_124    PER072X.
   PR_127    PER073X.    PR_129    PER074X.    PR_132    PER075X.
   PR_134    PER076X.    PR_137    PER077X.    PR_139    PER078X.
   PR_182    PER079X.    PR_183    PER080X.    PR_185    PER081X.
   PR_186    PER082X.    PR_187    PER083X.    PR_190    PER084X.
   PR_201    PER085X.    PR_210    PER086X.    WTFA      PER087X.
   PR_228    PER088X.    PR_237    PER089X.    PR_246    PER090X.
   PR_255    PER091X.    PR_264    PER092X.    PR_273    PER093X.
   PR_282    PER094X.    PR_291    PER095X.    PR_300    PER096X.
   PR_309    PER097X.    PR_318    PER098X.    PR_327    PER099X.
   ;
 
PROC CONTENTS DATA=NHIS.PERSONSX;
 
PROC FREQ DATA=NHIS.PERSONSX;
TITLE1 'FREQUENCY REPORT FOR 1984 NHIS PERSON PUBLIC USE FILE';
TITLE2 '(WEIGHTED)';
TABLES RECTYPE/LIST MISSING;
WEIGHT WTFA;
 
PROC FREQ DATA=NHIS.PERSONSX;
TITLE1 'FREQUENCY REPORT FOR 1984 NHIS PERSON PUBLIC USE FILE';
TITLE2 '(UNWEIGHTED)';
TABLES RECTYPE/LIST MISSING;
 
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
              STATEMENT: FORMAT _ALL_;
RUN;
