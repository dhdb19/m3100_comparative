DM 'CLE LOG; CLE OUT';
**************************************************************************
November 29, 2005
 
THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
FILE FROM THE NHIS 1986 PERSONSX.DAT ASCII FILE.
 
NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
      GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
      DOCUMENTATION.
 
THIS IS STORED IN PERSONSX.SAS
*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;
 
LIBNAME NHIS    'C:\NHIS1986';
LIBNAME LIBRARY 'C:\NHIS1986';
 
FILENAME ASCIIDAT 'C:\NHIS1986\PERSONSX.DAT';
 
* DEFINE VARIABLE VALUES FOR REPORT;
 
PROC FORMAT LIBRARY=LIBRARY;
  VALUE  PER001X
   20               = "Person Record"
   ;
  VALUE  PER002X
   86               = "1986"
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
   "1900"-"1987"    = "1900-1987"
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
   7                = "Did not work, no job; looking for work or on lay-off"
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
   2                = "Midwest"
   3                = "South"
   4                = "West"
   ;
  VALUE  PER080X
   1                = "1,000,000 or more"
   2                = "250,000 - 999,999"
   3                = "100,000 - 249,999"
   4                = "Under 100,000"
   .                = "Non-MSA"
   ;
  VALUE  PER081X
   1                = "MSA - Self-representing"
   3                = "MSA - Nonself-representing"
   4                = "Non-MSA - Self-representing"
   6                = "Non-MSA - Nonself-representing"
   ;
  VALUE  PER082X
   1                = "MSA - Central City"
   2                = "MSA - Not Central City"
   3                = "Non-MSA - Nonfarm"
   4                = "Non-MSA - Farm"
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
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1986';
   INFILE ASCIIDAT MISSOVER TRUNCOVER LRECL=335;
 
* DEFINE LENGTH OF NUMERIC VARIABLES;
 
LENGTH
   RECTYPE   3  YEAR      3  QUARTER   3  WEEKCEN   3  WEEKPROC  3
   PX_22     3  PX_24     3  PX_25     3  PX_27     3  PX_29     3
   PX_30     3  PX_31     3  PX_42     3  PX_43     3  PX_44     3
   PX_45     3  PX_46     3  PX_48     3  PX_49     3  PX_50     3
   PX_51     3  PX_53     3  PX_54     3  PX_56     3  PX_57     3
   PX_58     3  PX_60     3  PX_61     3  PX_64     3  PX_65     3
   PX_67     3  PX_68     3  PX_69     3  PX_70     3  PX_71     3
   PX_72     3  PX_73     3  PX_74     3  PX_75     3  PX_76     3
   PX_77     3  PX_80     3  PX_82     3  PX_84     3  PX_87     3
   PX_89     3  PX_91     3  PX_92     3  PX_93     3  PX_95     3
   PX_98     3  PX_100    3  PX_102    3  PX_104    3  PX_106    3
   PX_108    3  PX_111    3  PX_112    3  PX_115    3  PX_116    3
   PX_118    3  PX_120    3  PX_122    3  PX_124    3  PX_127    3
   PX_129    3  PX_132    3  PX_134    3  PX_137    3  PX_139    3
   PX_182    3  PX_183    3  PX_185    3  PX_186    3  PX_187    3
   PX_190    8  PX_201    6  PX_210    6  WTFA      6  PX_228    6
   PX_237    6  PX_246    6  PX_255    6  PX_264    6  PX_273    6
   PX_282    6  PX_291    6  PX_300    6  PX_309    6  PX_318    6
   PX_327    6
   ;
* INPUT ALL VARIABLES;
 
INPUT
   RECTYPE       1 - 2         YEAR          3 - 4
   QUARTER       5 - 5         PSUNUMR  $    6 - 8
   WEEKCEN       9 - 10        SEGNUM   $   11 - 12
   HHNUM    $   13 - 14        PNUM     $   15 - 16
   WEEKPROC     19 - 20        PX_22        22 - 23
   PX_24        24 - 24        PX_25        25 - 25
   PX_27        27 - 28        PX_29        29 - 29
   PX_30        30 - 30        PX_31        31 - 32
   PX_34    $   34 - 35        PX_36    $   36 - 39
   PX_42        42 - 42        PX_43        43 - 43
   PX_44        44 - 44        PX_45        45 - 45
   PX_46        46 - 47        PX_48        48 - 48
   PX_49        49 - 49        PX_50        50 - 50
   PX_51        51 - 52        PX_53        53 - 53
   PX_54        54 - 55        PX_56        56 - 56
   PX_57        57 - 57        PX_58        58 - 59
   PX_60        60 - 60        PX_61        61 - 61
   PX_62    $   62 - 62        PX_63    $   63 - 63
   PX_64        64 - 64        PX_65        65 - 66
   PX_67        67 - 67        PX_68        68 - 68
   PX_69        69 - 69        PX_70        70 - 70
   PX_71        71 - 71        PX_72        72 - 72
   PX_73        73 - 73        PX_74        74 - 74
   PX_75        75 - 75        PX_76        76 - 76
   PX_77        77 - 79        PX_80        80 - 81
   PX_82        82 - 83        PX_84        84 - 86
   PX_87        87 - 88        PX_89        89 - 90
   PX_91        91 - 91        PX_92        92 - 92
   PX_93        93 - 94        PX_95        95 - 97
   PX_98        98 - 99        PX_100      100 - 101
   PX_102      102 - 103       PX_104      104 - 105
   PX_106      106 - 107       PX_108      108 - 110
   PX_111      111 - 111       PX_112      112 - 114
   PX_115      115 - 115       PX_116      116 - 117
   PX_118      118 - 119       PX_120      120 - 121
   PX_122      122 - 123       PX_124      124 - 126
   PX_127      127 - 128       PX_129      129 - 131
   PX_132      132 - 133       PX_134      134 - 136
   PX_137      137 - 138       PX_139      139 - 141
   PX_182      182 - 182       PX_183      183 - 183
   PX_185      185 - 185       PX_186      186 - 186
   PX_187      187 - 189       PX_190      190 - 200 .9
   PX_201      201 - 209       PX_210      210 - 218
   WTFA        219 - 227       PX_228      228 - 236
   PX_237      237 - 245       PX_246      246 - 254
   PX_255      255 - 263       PX_264      264 - 272
   PX_273      273 - 281       PX_282      282 - 290
   PX_291      291 - 299       PX_300      300 - 308
   PX_309      309 - 317       PX_318      318 - 326
   PX_327      327 - 335
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
   PNUM     = "NUMBER"
   WEEKPROC = "WEEK CODE"
   PX_22    = "TYPE OF LIVING QUARTERS"
   PX_24    = "HAS TELEPHONE"
   PX_25    = "SEX"
   PX_27    = "AGE"
   PX_29    = "AGE RECODE #1"
   PX_30    = "AGE RECODE #2"
   PX_31    = "AGE RECODE #3"
   PX_34    = "MONTH OF BIRTH"
   PX_36    = "YEAR OF BIRTH"
   PX_42    = "MAIN RACIAL BACKGROUND"
   PX_43    = "RACE RECODE 1"
   PX_44    = "RACE RECODE 2"
   PX_45    = "RACE RECODE 3"
   PX_46    = "HISPANIC ORIGIN"
   PX_48    = "MARITAL STATUS"
   PX_49    = "VETERAN STATUS"
   PX_50    = "ACTIVE GUARD/RESERVE STATUS FOR PERSONS ON ACTIVE DUTY IN ARMED FORCES"
   PX_51    = "EDUCATION OF INDIVIDUAL - COMPLETED YEARS"
   PX_53    = "EDUCATION OF INDIVIDUAL RECODE"
   PX_54    = "HIGHEST EDUCATION OF RESPONSIBLE ADULT FAMILY MEMBER - (DETAIL)"
   PX_56    = "HIGHEST EDUCATION OF RESPONSIBLE ADULT FAMILY MEMBER - RECODE"
   PX_57    = "FAMILY INCOME $20,000 OR MORE"
   PX_58    = "FAMILY INCOME"
   PX_60    = "FAMILY INCOME RECODE"
   PX_61    = "NHIS POVERTY INDEX"
   PX_62    = "TYPE OF FAMILY"
   PX_63    = "RELATIONSHIP TO REFERENCE PERSON"
   PX_64    = "FAMILY RELATIONSHIP RECODE"
   PX_65    = "SIZE OF FAMILY"
   PX_67    = "SIZE OF FAMILY RECODE"
   PX_68    = "PARENT/OTHER ADULT RELATIVE"
   PX_69    = "MAJOR ACTIVITY"
   PX_70    = "HEALTH STATUS"
   PX_71    = "ACTIVITY LIMITATION STATUS"
   PX_72    = "ACTIVITY LIMITATION STATUS MEASURED BY 'ABILITY TO WORK'"
   PX_73    = "LIMITATION OF SCHOOL ACTIVITIES"
   PX_74    = "NEEDS HELP WITH PERSONAL CARE"
   PX_75    = "EMPLOYMENT STATUS IN PAST 2 WEEKS"
   PX_76    = "CLASS OF WORKER"
   PX_77    = "INDUSTRY DETAIL CODE"
   PX_80    = "INDUSTRY RECODE 1"
   PX_82    = "INDUSTRY RECODE 2"
   PX_84    = "OCCUPATION DETAIL CODE"
   PX_87    = "OCCUPATION RECODE 1"
   PX_89    = "OCCUPATION RECODE 2"
   PX_91    = "RESPONDENT"
   PX_92    = "CONDITION LIST ASSIGNED AND ASKED"
   PX_93    = "HEIGHT WITHOUT SHOES"
   PX_95    = "WEIGHT WITHOUT SHOES"
   PX_98    = "TOTAL RESTRICTED ACTIVITY DAYS IN PAST TWO WEEKS"
   PX_100   = "BED DAYS IN PAST TWO WEEKS"
   PX_102   = "WORK-LOSS DAYS IN PAST TWO WEEKS"
   PX_104   = "SCHOOL-LOSS DAYS IN PAST TWO WEEKS"
   PX_106   = "OTHER DAYS OF RESTRICTED ACTIVITY IN PAST TWO WEEKS"
   PX_108   = "BED DAYS IN PAST 12 MONTHS"
   PX_111   = "BED DAYS IN PAST 12 MONTHS - RECODE"
   PX_112   = "DOCTOR VISITS IN PAST 12 MONTHS"
   PX_115   = "INTERVAL SINCE LAST DOCTOR VISIT"
   PX_116   = "NUMBER OF CONDITIONS"
   PX_118   = "NUMBER OF ACUTE INCIDENCE CONDITIONS"
   PX_120   = "NUMBER OF TWO-WEEK DOCTOR VISITS"
   PX_122   = "NUMBER OF SHORT-STAY HOSPITAL EPISODES IN IN PAST 12 MONTHS"
   PX_124   = "SHORT-STAY HOSPITAL EPISODE DAYS IN PAST '12 MONTHS"
   PX_127   = "NUMBER OF SHORT-STAY HOSPITAL EPISODES IN PAST 12 MONTHS EXCLUDING DELIVERY"
   PX_129   = "SHORT-STAY HOSPITAL EPISODE DAYS IN PAST 12 MONTHS EXCLUDING DELIVERY"
   PX_132   = "NUMBER OF SHORT-STAY HOSPITAL DISCHARGES IN PAST 6 MONTHS"
   PX_134   = "NUMBER OF DAYS IN SHORT-STAY HOSPITAL IN PAST 12 MONTHS FOR DISCHARGES IN PAST 6 MONTHS"
   PX_137   = "NUMBER OF SHORT-STAY HOSPITAL DISCHARGES IN PAST 6 MONTHS EXCLUDING DELIVERY"
   PX_139   = "NUMBER OF DAYS IN SHORT-STAY HOSPITAL IN PAST '12 MONTHS FOR DISCHARGES IN PAST 6 MONTHS EXCLUDING DELIVERY"
   PX_182   = "REGION"
   PX_183   = "EOGRAPHIC DISTRIBUTION"
   PX_185   = "TYPE OF PSU"
   PX_186   = "MSA - NON-MSA RESIDENCE"
   PX_187   = "PSEUDO PSU CODES"
   PX_190   = "CHRONIC CONDITION PREVALENCE AND INCIDENCE FACTOR"
   PX_201   = "FINAL BASIC WEIGHT - QUARTER"
   PX_210   = "FINAL BASIC WEIGHT - SEMI-ANNUAL (WT/2)"
   WTFA     = "FINAL BASIC WEIGHT - ANNUAL (WT/4)"
   PX_228   = "6.5 WEIGHT - QUARTER, SEMI-ANNUAL, AND ANNUAL"
   PX_237   = "ESTIMATED RESTRICTED ACTIVITY DAYS PAST 2W - QUARTER, SEMI-ANNUAL AND ANNUAL"
   PX_246   = "ESTIMATED BED DAYS PAST 2W - QUARTER, SEMI-ANNUAL AND ANNUAL"
   PX_255   = "ESTIMATED WORK-LOSS DAYS PAST 2W - QUARTER, SEMI-ANNUAL AND ANNUAL"
   PX_264   = "ESTIMATED SCHOOL-LOSS DAYS PAST 2W - QUARTER, SEMI-ANNUAL AND ANNUAL"
   PX_273   = "ESTIMATED DOCTOR VISITS PAST 12M - QUARTER"
   PX_282   = "ESTIMATED DOCTOR VISITS PAST 12M -  SEMI-ANNUAL"
   PX_291   = "ESTIMATED DOCTOR VISITS PAST 12M - ANNUAL"
   PX_300   = "ESTIMATED SHORT-STAY HOSPITAL EPISODE DAYS PAST 12M - QUARTER"
   PX_309   = "ESTIMATED SHORT-STAY HOSPITAL EPISODE DAYS PAST 12M - SEMI-ANNUAL"
   PX_318   = "ESTIMATED SHORT-STAY HOSPITAL EPISODE DAYS PAST 12M - ANNUAL"
   PX_327   = "ANNUAL ESTIMATED NUMBER OF SHORT-STAY HOSPITAL EPISODES IN PAST 12 MONTHS"
   ;
* ASSOCIATE VARIABLES WITH FORMAT VALUES;
 
FORMAT
   RECTYPE   PER001X.    YEAR      PER002X.    QUARTER   PER003X.
   PSUNUMR  $PER004X.    WEEKCEN   PER005X.    SEGNUM   $PER006X.
   HHNUM    $PER007X.    PNUM     $PER008X.    WEEKPROC  PER009X.
   PX_22     PER010X.    PX_24     PER011X.    PX_25     PER012X.
   PX_27     PER013X.    PX_29     PER014X.    PX_30     PER015X.
   PX_31     PER016X.    PX_34    $PER017X.    PX_36    $PER018X.
   PX_42     PER019X.    PX_43     PER020X.    PX_44     PER021X.
   PX_45     PER022X.    PX_46     PER023X.    PX_48     PER024X.
   PX_49     PER025X.    PX_50     PER026X.    PX_51     PER027X.
   PX_53     PER028X.    PX_54     PER029X.    PX_56     PER030X.
   PX_57     PER031X.    PX_58     PER032X.    PX_60     PER033X.
   PX_61     PER034X.    PX_62    $PER035X.    PX_63    $PER036X.
   PX_64     PER037X.    PX_65     PER038X.    PX_67     PER039X.
   PX_68     PER040X.    PX_69     PER041X.    PX_70     PER042X.
   PX_71     PER043X.    PX_72     PER044X.    PX_73     PER045X.
   PX_74     PER046X.    PX_75     PER047X.    PX_76     PER048X.
   PX_77     PER049X.    PX_80     PER050X.    PX_82     PER051X.
   PX_84     PER052X.    PX_87     PER053X.    PX_89     PER054X.
   PX_91     PER055X.    PX_92     PER056X.    PX_93     PER057X.
   PX_95     PER058X.    PX_98     PER059X.    PX_100    PER060X.
   PX_102    PER061X.    PX_104    PER062X.    PX_106    PER063X.
   PX_108    PER064X.    PX_111    PER065X.    PX_112    PER066X.
   PX_115    PER067X.    PX_116    PER068X.    PX_118    PER069X.
   PX_120    PER070X.    PX_122    PER071X.    PX_124    PER072X.
   PX_127    PER073X.    PX_129    PER074X.    PX_132    PER075X.
   PX_134    PER076X.    PX_137    PER077X.    PX_139    PER078X.
   PX_182    PER079X.    PX_183    PER080X.    PX_185    PER081X.
   PX_186    PER082X.    PX_187    PER083X.    PX_190    PER084X.
   PX_201    PER085X.    PX_210    PER086X.    WTFA      PER087X.
   PX_228    PER088X.    PX_237    PER089X.    PX_246    PER090X.
   PX_255    PER091X.    PX_264    PER092X.    PX_273    PER093X.
   PX_282    PER094X.    PX_291    PER095X.    PX_300    PER096X.
   PX_309    PER097X.    PX_318    PER098X.    PX_327    PER099X.
   ;
 
PROC CONTENTS DATA=NHIS.PERSONSX;
 
PROC FREQ DATA=NHIS.PERSONSX;
TITLE1 'FREQUENCY REPORT FOR 1986 NHIS PERSON PUBLIC USE FILE';
TITLE2 '(WEIGHTED)';
TABLES RECTYPE/LIST MISSING;
WEIGHT WTFA;
 
PROC FREQ DATA=NHIS.PERSONSX;
TITLE1 'FREQUENCY REPORT FOR 1986 NHIS PERSON PUBLIC USE FILE';
TITLE2 '(UNWEIGHTED)';
TABLES RECTYPE/LIST MISSING;
 
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
              STATEMENT: FORMAT _ALL_;
RUN;
