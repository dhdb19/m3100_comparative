DM 'CLE LOG; CLE OUT';
**************************************************************************
November 29, 2005
 
THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
FILE FROM THE NHIS 1985 PERSONSX.DAT ASCII FILE.
 
NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
      GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
      DOCUMENTATION.
 
THIS IS STORED IN PERSONSX.SAS
*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;
 
LIBNAME NHIS    'C:\NHIS1985';
LIBNAME LIBRARY 'C:\NHIS1985';
 
FILENAME ASCIIDAT 'C:\NHIS1985\PERSONSX.DAT';
 
* DEFINE VARIABLE VALUES FOR REPORT;
 
PROC FORMAT LIBRARY=LIBRARY;
  VALUE  PER001X
   20               = "Person Record"
   ;
  VALUE  PER002X
   85               = "1985"
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
   "1900"-"1985"    = "1900-1985"
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
   00               = "None"
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
   4                = "181-365"
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
   1                = "1,000,000 or more"
   2                = "250,000 - 999,999"
   3                = "100,000 - 249,999"
   4                = "Under 100,000"
   .                = ""
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
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1985';
   INFILE ASCIIDAT MISSOVER TRUNCOVER LRECL=335;
 
* DEFINE LENGTH OF NUMERIC VARIABLES;
 
LENGTH
   RECTYPE   3  YEAR      3  QUARTER   3  WEEKCEN   3  WEEKPROC  3
   PER22     3  PER24     3  PER25     3  PER27     3  PER29     3
   PER30     3  PER31     3  PER42     3  PER43     3  PER44     3
   PER45     3  PER46     3  PER48     3  PER49     3  PER50     3
   PER51     3  PER53     3  PER54     3  PER56     3  PER57     3
   PER58     3  PER60     3  PER61     3  PER64     3  PER65     3
   PER67     3  PER68     3  PER69     3  PER70     3  PER71     3
   PER72     3  PER73     3  PER74     3  PER75     3  PER76     3
   PER77     3  PER80     3  PER82     3  PER84     3  PER87     3
   PER89     3  PER91     3  PER92     3  PER93     3  PER95     3
   PER98     3  PER100    3  PER102    3  PER104    3  PER106    3
   PER108    3  PER111    3  PER112    3  PER115    3  PER116    3
   PER118    3  PER120    3  PER122    3  PER124    3  PER127    3
   PER129    3  PER132    3  PER134    3  PER137    3  PER139    3
   PER182    3  PER183    3  PER185    3  PER186    3  PER187    3
   PER190    8  PER201    6  PER210    6  WTFA      6  PER228    6
   PER237    6  PER246    6  PER255    6  PER264    6  PER273    6
   PER282    6  PER291    6  PER300    6  PER309    6  PER318    6
   PER327    6
   ;
* INPUT ALL VARIABLES;
 
INPUT
   RECTYPE       1 - 2         YEAR          3 - 4
   QUARTER       5 - 5         PSUNUMR  $    6 - 8
   WEEKCEN       9 - 10        SEGNUM   $   11 - 12
   HHNUM    $   13 - 14        PNUM     $   15 - 16
   WEEKPROC     19 - 20        PER22        22 - 23
   PER24        24 - 24        PER25        25 - 25
   PER27        27 - 28        PER29        29 - 29
   PER30        30 - 30        PER31        31 - 32
   PER34    $   34 - 35        PER36    $   36 - 39
   PER42        42 - 42        PER43        43 - 43
   PER44        44 - 44        PER45        45 - 45
   PER46        46 - 47        PER48        48 - 48
   PER49        49 - 49        PER50        50 - 50
   PER51        51 - 52        PER53        53 - 53
   PER54        54 - 55        PER56        56 - 56
   PER57        57 - 57        PER58        58 - 59
   PER60        60 - 60        PER61        61 - 61
   PER62    $   62 - 62        PER63    $   63 - 63
   PER64        64 - 64        PER65        65 - 66
   PER67        67 - 67        PER68        68 - 68
   PER69        69 - 69        PER70        70 - 70
   PER71        71 - 71        PER72        72 - 72
   PER73        73 - 73        PER74        74 - 74
   PER75        75 - 75        PER76        76 - 76
   PER77        77 - 79        PER80        80 - 81
   PER82        82 - 83        PER84        84 - 86
   PER87        87 - 88        PER89        89 - 90
   PER91        91 - 91        PER92        92 - 92
   PER93        93 - 94        PER95        95 - 97
   PER98        98 - 99        PER100      100 - 101
   PER102      102 - 103       PER104      104 - 105
   PER106      106 - 107       PER108      108 - 110
   PER111      111 - 111       PER112      112 - 114
   PER115      115 - 115       PER116      116 - 117
   PER118      118 - 119       PER120      120 - 121
   PER122      122 - 123       PER124      124 - 126
   PER127      127 - 128       PER129      129 - 131
   PER132      132 - 133       PER134      134 - 136
   PER137      137 - 138       PER139      139 - 141
   PER182      182 - 182       PER183      183 - 183
   PER185      185 - 185       PER186      186 - 186
   PER187      187 - 189       PER190      190 - 200 .9
   PER201      201 - 209       PER210      210 - 218
   WTFA        219 - 227       PER228      228 - 236
   PER237      237 - 245       PER246      246 - 254
   PER255      255 - 263       PER264      264 - 272
   PER273      273 - 281       PER282      282 - 290
   PER291      291 - 299       PER300      300 - 308
   PER309      309 - 317       PER318      318 - 326
   PER327      327 - 335
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
   PER22    = "TYPE OF LIVING QUARTERS"
   PER24    = "HAS TELEPHONE"
   PER25    = "SEX"
   PER27    = "AGE"
   PER29    = "AGE RECODE #1"
   PER30    = "AGE RECODE #2"
   PER31    = "AGE RECODE #3"
   PER34    = "MONTH OF BIRTH"
   PER36    = "YEAR OF BIRTH"
   PER42    = "MAIN RACIAL BACKGROUND"
   PER43    = "RACE RECODE 1"
   PER44    = "RACE RECODE 2"
   PER45    = "RACE RECODE 3"
   PER46    = "HISPANIC ORIGIN"
   PER48    = "MARITAL STATUS"
   PER49    = "VETERAN STATUS"
   PER50    = "ACTIVE GUARD/RESERVE STATUS FOR PERSONS ON ACTIVE DUTY IN ARMED FORCES"
   PER51    = "EDUCATION OF INDIVIDUAL - COMPLETED YEARS"
   PER53    = "EDUCATION OF INDIVIDUAL RECODE"
   PER54    = "HIGHEST EDUCATION OF RESPONSIBLE ADULT FAMILY MEMBER - (DETAIL)"
   PER56    = "HIGHEST EDUCATION OF RESPONSIBLE ADULT FAMILY MEMBER - RECODE"
   PER57    = "FAMILY INCOME $20,000 OR MORE"
   PER58    = "FAMILY INCOME"
   PER60    = "FAMILY INCOME RECODE"
   PER61    = "NHIS POVERTY INDEX"
   PER62    = "TYPE OF FAMILY"
   PER63    = "RELATIONSHIP TO REFERENCE PERSON"
   PER64    = "FAMILY RELATIONSHIP RECODE"
   PER65    = "SIZE OF FAMILY UNRELATED INDIVIDUALS ARE CODED 01"
   PER67    = "SIZE OF FAMILY RECODE"
   PER68    = "PARENT/OTHER ADULT RELATIVE"
   PER69    = "MAJOR ACTIVITY"
   PER70    = "HEALTH STATUS"
   PER71    = "ACTIVITY LIMITATION STATUS"
   PER72    = "ACTIVITY LIMITATION STATUS MEASURED BY 'ABILITY TO WORK'"
   PER73    = "LIMITATION OF SCHOOL ACTIVITIES"
   PER74    = "NEEDS HELP WITH PERSONAL CARE"
   PER75    = "EMPLOYMENT STATUS IN PAST 2 WEEKS"
   PER76    = "CLASS OF WORKER"
   PER77    = "INDUSTRY DETAIL CODE"
   PER80    = "INDUSTRY RECODE 1"
   PER82    = "INDUSTRY RECODE 2"
   PER84    = "OCCUPATION DETAIL CODE"
   PER87    = "OCCUPATION RECODE 1"
   PER89    = "OCCUPATION RECODE 2"
   PER91    = "RESPONDENT"
   PER92    = "CONDITION LIST ASSIGNED AND ASKED"
   PER93    = "HEIGHT WITHOUT SHOES"
   PER95    = "WEIGHT WITHOUT SHOES"
   PER98    = "TOTAL RESTRICTED ACTIVITY DAYS IN PAST TWO WEEKS"
   PER100   = "BED DAYS IN PAST TWO WEEKS"
   PER102   = "WORK-LOSS DAYS IN PAST TWO WEEKS"
   PER104   = "SCHOOL-LOSS DAYS IN PAST TWO WEEKS"
   PER106   = "OTHER DAYS OF RESTRICTED ACTIVITY IN PAST TWO WEEKS"
   PER108   = "BED DAYS IN PAST 12 MONTHS"
   PER111   = "BED DAYS IN PAST 12 MONTHS"
   PER112   = "DOCTOR VISITS IN PAST 12 MONTHS"
   PER115   = "INTERVAL SINCE LAST DOCTOR VISIT"
   PER116   = "NUMBER OF CONDITIONS"
   PER118   = "NUMBER OF ACUTE INCIDENCE CONDITIONS"
   PER120   = "NUMBER OF TWO-WEEK DOCTOR VISITS"
   PER122   = "NUMBER OF SHORT-STAY HOSPITAL EPISODES IN IN PAST 12 MONTHS"
   PER124   = "SHORT-STAY HOSPITAL EPISODE DAYS IN PAST 12 MONTHS"
   PER127   = "NUMBER OF SHORT-STAY HOSPITAL EPISODES IN PAST 12 MONTHS EXCLUDING DELIVERY"
   PER129   = "SHORT-STAY HOSPITAL EPISODE DAYS IN PAST 12 MONTHS EXCLUDING DELIVERY"
   PER132   = "NUMBER OF SHORT-STAY HOSPITAL DISCHARGES IN PAST 6 MONTHS"
   PER134   = "NUMBER OF DAYS IN SHORT-STAY HOSPITAL IN PAST 12 MONTHS FOR DISCHARGES IN PAST 6 MONTHS"
   PER137   = "NUMBER OF SHORT-STAY HOSPITAL DISCHARGES IN PAST 6 MONTHS EXCLUDING DELIVERY"
   PER139   = "NUMBER OF DAYS IN SHORT-STAY HOSPITAL IN PAST 12 MOTHS EXCLUDING DELIVERY"
   PER182   = "REGION"
   PER183   = "GEOGRAPHIC DISTRIBUTION"
   PER185   = "TYPE OF PSU"
   PER186   = "MSA - NON-MSA RESIDENCE"
   PER187   = "PSEUDO PSU CODES"
   PER190   = "CHRONIC CONDITION PREVALENCE AND INCIDENCE FACTOR"
   PER201   = "FINAL BASIC WEIGHT - QUARTER"
   PER210   = "FINAL BASIC WEIGHT - SEMI-ANNUAL (WT/2)"
   WTFA     = "FINAL BASIC WEIGHT - ANNUAL (WT/4)"
   PER228   = "6.5 WEIGHT - QUARTER, SEMI-ANNUAL, AND ANNUAL"
   PER237   = "ESTIMATED RESTRICTED ACTIVITY DAYS PAST 2W - QUARTER, SEMI-ANNUAL AND ANNUAL"
   PER246   = "ESTIMATED BED DAYS PAST 2W - QUARTER, SEMI-ANNUAL AND ANNUAL"
   PER255   = "ESTIMATED WORK-LOSS DAYS PAST 2W - QUARTER, SEMI-ANNUAL AND ANNUAL"
   PER264   = "ESTIMATED SCHOOL-LOSS DAYS PAST 2W - QUARTER, SEMI-ANNUAL AND ANNUAL"
   PER273   = "ESTIMATED DOCTOR VISITS PAST 12M - QUARTER"
   PER282   = "ESTIMATED DOCTOR VISITS PAST 12M - SEMI-ANNUAL"
   PER291   = "ESTIMATED DOCTOR VISITS PAST 12M - ANNUAL"
   PER300   = "ESTIMATED SHORT-STAY HOSPITAL EPISODE DAYS PAST 12M - QUARTER"
   PER309   = "ESTIMATED SHORT-STAY HOSPITAL EPISODE DAYS PAST 12M - SEMI-ANNUAL"
   PER318   = "ESTIMATED SHORT-STAY HOSPITAL EPISODE DAYS PAST 12M - ANNUAL"
   PER327   = "ANNUAL ESTIMATED NUMBER OF SHORT-STAY HOSPITAL EPISODES IN PAST 12 MONTHS"
   ;
* ASSOCIATE VARIABLES WITH FORMAT VALUES;
 
FORMAT
   RECTYPE   PER001X.    YEAR      PER002X.    QUARTER   PER003X.
   PSUNUMR  $PER004X.    WEEKCEN   PER005X.    SEGNUM   $PER006X.
   HHNUM    $PER007X.    PNUM     $PER008X.    WEEKPROC  PER009X.
   PER22     PER010X.    PER24     PER011X.    PER25     PER012X.
   PER27     PER013X.    PER29     PER014X.    PER30     PER015X.
   PER31     PER016X.    PER34    $PER017X.    PER36    $PER018X.
   PER42     PER019X.    PER43     PER020X.    PER44     PER021X.
   PER45     PER022X.    PER46     PER023X.    PER48     PER024X.
   PER49     PER025X.    PER50     PER026X.    PER51     PER027X.
   PER53     PER028X.    PER54     PER029X.    PER56     PER030X.
   PER57     PER031X.    PER58     PER032X.    PER60     PER033X.
   PER61     PER034X.    PER62    $PER035X.    PER63    $PER036X.
   PER64     PER037X.    PER65     PER038X.    PER67     PER039X.
   PER68     PER040X.    PER69     PER041X.    PER70     PER042X.
   PER71     PER043X.    PER72     PER044X.    PER73     PER045X.
   PER74     PER046X.    PER75     PER047X.    PER76     PER048X.
   PER77     PER049X.    PER80     PER050X.    PER82     PER051X.
   PER84     PER052X.    PER87     PER053X.    PER89     PER054X.
   PER91     PER055X.    PER92     PER056X.    PER93     PER057X.
   PER95     PER058X.    PER98     PER059X.    PER100    PER060X.
   PER102    PER061X.    PER104    PER062X.    PER106    PER063X.
   PER108    PER064X.    PER111    PER065X.    PER112    PER066X.
   PER115    PER067X.    PER116    PER068X.    PER118    PER069X.
   PER120    PER070X.    PER122    PER071X.    PER124    PER072X.
   PER127    PER073X.    PER129    PER074X.    PER132    PER075X.
   PER134    PER076X.    PER137    PER077X.    PER139    PER078X.
   PER182    PER079X.    PER183    PER080X.    PER185    PER081X.
   PER186    PER082X.    PER187    PER083X.    PER190    PER084X.
   PER201    PER085X.    PER210    PER086X.    WTFA      PER087X.
   PER228    PER088X.    PER237    PER089X.    PER246    PER090X.
   PER255    PER091X.    PER264    PER092X.    PER273    PER093X.
   PER282    PER094X.    PER291    PER095X.    PER300    PER096X.
   PER309    PER097X.    PER318    PER098X.    PER327    PER099X.
   ;
 
PROC CONTENTS DATA=NHIS.PERSONSX;
 
PROC FREQ DATA=NHIS.PERSONSX;
TITLE1 'FREQUENCY REPORT FOR 1985 NHIS PERSON PUBLIC USE FILE';
TITLE2 '(WEIGHTED)';
TABLES RECTYPE/LIST MISSING;
WEIGHT WTFA;
 
PROC FREQ DATA=NHIS.PERSONSX;
TITLE1 'FREQUENCY REPORT FOR 1985 NHIS PERSON PUBLIC USE FILE';
TITLE2 '(UNWEIGHTED)';
TABLES RECTYPE/LIST MISSING;
 
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
              STATEMENT: FORMAT _ALL_;
RUN;
