DM 'CLE LOG; CLE OUT';
**************************************************************************
  January 18, 2006
 
THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
FILE FROM THE NHIS 1980 PERSONSX.DAT ASCII FILE.
 
NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
      GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
      DOCUMENTATION.
 
THIS IS STORED IN PERSONSX.SAS
*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;
 
LIBNAME NHIS    'C:\NHIS1980\';
LIBNAME LIBRARY 'C:\NHIS1980\';
 
FILENAME ASCIIDAT 'C:\NHIS1980\PERSONSX.DAT';
 
* DEFINE VARIABLE VALUES FOR REPORT;
 
PROC FORMAT LIBRARY=LIBRARY;
  VALUE $PER001X
   ;
  VALUE  PER002X
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
  VALUE $PER003X
   ;
  VALUE $PER004X
   ;
  VALUE $PER005X
   ;
  VALUE  PER006X
   ;
  VALUE  PER007X
   1                = "Quarter 1, 1980"
   2                = "Quarter 2, 1980"
   3                = "Quarter 3, 1980"
   4                = "Quarter 4, 1980"
   ;
  VALUE  PER008X
   0                = "1980"
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
   0                = "The 31 Large Self-representing SMSA's"
   1                = "SMSA-Self-representing"
   3                = "SMSA-Nonself-representing"
   4                = "Non-SMSA-Self-representing"
   6                = "Non-SMSA-Nonself-representing"
   ;
  VALUE  PER011X
   1                = "Northeast"
   2                = "North Central"
   3                = "South"
   4                = "West"
   ;
  VALUE  PER012X
   .                = "Non self-representing sections and self-representing SMSA's other than 34-64"
   34               = "Boston"
   35               = "New York"
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
   47               = "Minneapolis-St. Paul"
   48               = "Milwaukee"
   49               = "Kansas City"
   50               = "St. Louis"
   51               = "Houston"
   52               = "Dallas"
   53               = "Washington, DC"
   54               = "Seattle-Everett"
   55               = "San Diego"
   56               = "Anaheim-Santa Ana Garden Grove"
   57               = "Miami"
   58               = "Denver"
   59               = "San Bernardino-Riverside-Ontario"
   60               = "Indianapolis"
   61               = "San Jose"
   62               = "New Orleans"
   63               = "Tampa-St. Petersburg"
   64               = "Portland, Oregon"
   ;
  VALUE  PER013X
   1                = "In SMSA, in Central City"
   2                = "In SMSA, not in Central City"
   3                = "Not in SMSA"
   ;
  VALUE  PER014X
   1                = "SMSA"
   2                = "Non-SMSA - Nonfarm"
   3                = "Non-SMSA - Farm"
   ;
  VALUE  PER015X
   1                = "Housing Unit"
   2                = "Other"
   ;
  VALUE $PER016X
   "1"              = "Yes - phone"
   "2"              = "No or none"
   "3"              = "Phone,but nonumber listed, or number refused"
   "9"              = "DK if phone or refused"
   " "              = "Not reported"
   ;
  VALUE  PER017X
   1                = "Male"
   2                = "Female"
   ;
  VALUE  PER018X
   00               = "Under 1 year"
   01-98            = "Single years"
   99               = "99+ years"
   ;
  VALUE  PER019X
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
  VALUE  PER020X
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
  VALUE  PER021X
   1                = "Under 15 years"
   2                = "15-44"
   3                = "45-64"
   4                = "65+"
   ;
  VALUE  PER022X
   0                = "Under 17 years"
   1                = "Married - Spouse present"
   2                = "Widowed"
   3                = "Never married"
   4                = "Divorsed"
   5                = "Separated"
   6                = "Married - Spouse absent"
   ;
  VALUE  PER023X
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
   13               = "Not reported"
   ;
  VALUE  PER024X
   1                = "Under 17 years of age"
   2                = "None"
   3                = "01-08 (elementary)"
   4                = "09-11 (high school)"
   5                = "12 (high school graduate)"
   6                = "13-15 (college)"
   7                = "16+ (college graduate +)"
   8                = "Unknown"
   ;
  VALUE  PER025X
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
   13               = "Not reported"
   ;
  VALUE  PER026X
   1                = "Under 17 years of age"
   2                = "None"
   3                = "01-08 (elementary)"
   4                = "09-11 (high school)"
   5                = "12 (high school graduate)"
   6                = "13-15 (college)"
   7                = "16+ (college graduate +)"
   8                = "Unknown"
   ;
  VALUE  PER027X
   0                = "Under 17 years of age"
   1                = "Nonveteran"
   2                = "Peacetime only"
   3                = "World War I"
   4                = "World War II"
   5                = "Korean War"
   6                = "Vietnam veteran"
   7                = "DK if served in Armed Forces"
   8                = "DK if war veteran"
   9                = "Post Vietnam"
   ;
  VALUE  PER028X
   01               = "Under $1,000"
   02               = "$1,000-1,999"
   03               = "2,000-2,999"
   04               = "3,000-3,999"
   05               = "4,000-4,999"
   06               = "5,000-5,999"
   07               = "6,000-6,999"
   08               = "7,000-9,999"
   09               = "10,000-14,999"
   10               = "15,000-24,999"
   11               = "25,000+"
   12               = "Unknown"
   13               = "Not reported"
   ;
  VALUE  PER029X
   1                = "Under $3,000"
   2                = "$3,000-4,999"
   3                = "5,000-6,999"
   4                = "7,000-9,999"
   5                = "10,000-14,999"
   6                = "15,000-24,999"
   7                = "25,000+"
   8                = "Unknown"
   ;
  VALUE $PER030X
   "&"              = "Primary individual"
   "-"              = "Secondary individual"
   "0"              = "Primary family"
   "1"-"9"          = "SecondaRY families"
   ;
  VALUE $PER031X
   "&"              = "Unrelated individual living alone"
   "0"              = "Head of family or unrelated individual not living alone"
   "1"              = "Wife (husband living at home and not in Amed Forces)"
   "2"              = "Wife (husband living at home and is in Armed Forces)"
   "3"              = "Child of head or spouse"
   "4"              = "Grand child of head or spouse"
   "5"              = "Parent of head or spouse"
   "6"              = "Other relative"
   ;
  VALUE  PER032X
   1                = "Living alone"
   2                = "Living with nonrelative"
   3                = "Living with spouse"
   4                = "Living with relatives - other"
   ;
  VALUE  PER033X
   0                = "Under 6 years"
   1                = "Usually working"
   2                = "Keeping house (female)"
   3                = "Retlred - Health (45+ years)"
   4                = "Going to school"
   5                = "Something else"
   6                = "Unknown"
   7                = "Retired,Other (45+ years)"
   ;
  VALUE  PER034X
   0                = "Under 17 years"
   1                = "Worked in past 2 weeks"
   2                = "Did not work, has job, not on layoff and not looking for work"
   3                = "Did not work, has job, looking for work"
   4                = "Did not work, has job, on layoff"
   5                = "Did not work, has job, on layoff and looking for work"
   6                = "Did not work, has job, unknown if looking or on layoff"
   7                = "Did not work, no job,looking for work or on layoff"
   8                = "Not in labor force (17+)"
   ;
  VALUE  PER035X
   1                = "private paid"
   2                = "Federal Government"
   3                = "State Government"
   4                = "Local Government"
   5                = "Incorporated business"
   6                = "Self employed"
   7                = "Without pay"
   8                = "Not in Labor Force"
   9                = "Unknown or not reported"
   ;
  VALUE  PER036X
   017-999          = "Code Number"
   .                = "Not applicable"
   ;
  VALUE  PER037X
   ;
  VALUE  PER038X
   ;
  VALUE  PER039X
   001-995          = "Code number"
   .                = "Not applicable"
   ;
  VALUE  PER040X
   ;
  VALUE  PER041X
   ;
  VALUE  PER042X
   1                = "self entirely"
   2                = "Self partly"
   3                = "Spouse"
   4                = "Mother"
   5                = "Father"
   6                = "Other female family member"
   7                = "Other male family member"
   8                = "Other"
   9                = "Not reported"
   ;
  VALUE  PER043X
   1                = "Under 20 years"
   2                = "20-54 years"
   3                = "55-64 years"
   4                = "65-74 years"
   5                = "75+ years"
   6                = "Unknown and not reported"
   ;
  VALUE  PER044X
   00               = "Unrelated individuals"
   01-97            = "Family size"
   ;
  VALUE  PER045X
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
  VALUE  PER046X
   1                = "Cannot perform Usual Activity"
   2                = "Can perfom UA but limited in amount and kind"
   3                = "Can perfom UA but limited in outside activities"
   4                = "Not limited (including unknown) or not applicable (persons with no chronic condition )"
   ;
  VALUE  PER047X
   1                = "Months"
   2                = "Years"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER048X
   00               = "Less than l month"
   01-97            = "Number of months or years"
   99               = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER049X
   00               = "None"
   01-14            = "Number of days"
   ;
  VALUE  PER050X
   00               = "None"
   01-14            = "Number of days"
   ;
  VALUE  PER051X
   1                = "Under 6 years of age"
   2                = "School-loss days"
   3                = "Work-loss days"
   ;
  VALUE  PER052X
   00               = "None or Under 6"
   01-14            = "Number of days"
   ;
  VALUE  PER053X
   00               = "None"
   01-97            = "Numberof visits"
   ;
  VALUE  PER054X
   1                = "Number of visits known"
   2                = "Number of visits unknown"
   ;
  VALUE  PER055X
   000              = "None or Unknown"
   001-997          = "Number of visits"
   ;
  VALUE  PER056X
   000              = "None"
   001-365          = "Number of days"
   ;
  VALUE  PER057X
   0                = "Never"
   1                = "Visit in past 2 weeks"
   3                = "2 weeks to less than 6 months"
   4                = "6 months to less than 12 months"
   5                = "1 year"
   6                = "2-4 years"
   7                = "5+ years"
   9                = "Unknown"
   ;
  VALUE  PER058X
   0                = "Never"
   1                = "Visit in 2 weeks"
   2                = "2 weeks to less than 6 months"
   3                = "6 months to less than 12 months"
   4                = "1 year"
   5                = "2-4 years"
   6                = "5+ years"
   8                = "Unknown"
   ;
  VALUE  PER059X
   00               = "None"
   01-97            = "Number of episodes"
   ;
  VALUE  PER060X
   00               = "None"
   01-97            = "Number of episodes"
   ;
  VALUE  PER061X
   0                = "No episodes"
   1                = "All in federal hospitals"
   2                = "All in nonfederal hospitals"
   3                = "Both federal and nonfederal hospitals"
   ;
  VALUE  PER062X
   0                = "None"
   1                = "1-7 days"
   2                = "8-30 dayS"
   3                = "31-180 days"
   4                = "181-365 days"
   5                = "Unknown"
   ;
  VALUE  PER063X
   01               = "Both parents, no other adults"
   02               = "Mother only"
   03               = "Father only"
   04               = "Both parents and other adult relative"
   05               = "Mother and other adult relative"
   06               = "Father and other adult relative"
   07               = "No parent, but one adult relative"
   08               = "No parent, but two or more adult relatives"
   09               = "Other"
   10               = "Not applicable, 25+ years and/or ever married"
   ;
  VALUE  PER064X
   1                = "Excellent"
   2                = "Good"
   3                = "Fair"
   4                = "Poor"
   5                = "Unknown"
   ;
  VALUE  PER065X
   1                = "White"
   2                = "Black"
   3                = "Other"
   ;
  VALUE  PER066X
   1                = "White"
   2                = "Nonwhite"
   ;
  VALUE  PER067X
   1                = "Black"
   2                = "Nonblack"
   ;
  VALUE  PER068X
   36-84            = "Number of inches"
   99               = "Unknown"
   .                = "Under 17 years of age"
   ;
  VALUE  PER069X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  PER070X
   1                = "Medicaid card - current"
   2                = "Medicaid card - expired"
   3                = "Card seen - unknown type"
   4                = "unknown"
   5                = "No Medicaid card or not reported"
   ;
  VALUE  PER071X
   050-400          = "Nmnber of pounds"
   999              = "Unknown"
   .                = "Under 17 years of age"
   ;
  VALUE  PER072X
   1                = "Condition List 1 - Digestive"
   2                = "Condition List 2 - Bone and Muscle"
   3                = "Condition List 3 - Miscellaneous"
   4                = "Condition List 4 - Impairments"
   5                = "Condition List 5 - Circulatory"
   6                = "Condition List 6 - Respiratory"
   7                = "Unknown"
   ;
  VALUE  PER073X
   1                = "Yes"
   2                = "No"
   ;
  VALUE  PER074X
   01               = "Under $1.000"
   02               = "$1,000-1,999"
   03               = "2,000-2,999"
   04               = "3,000-3,999"
   05               = "4,000-4,999"
   06               = "5,000-5,999"
   07               = "6,000-6,999"
   08               = "7,000-9,999"
   09               = "10,000-14,999"
   10               = "15,000-24,999"
   11               = "25,000 and over"
   12               = "Unknown"
   13               = "No income received"
   ;
  VALUE  PER075X
   01               = "Under $1.000"
   02               = "$1,000-1,999"
   03               = "2,000-2,999"
   04               = "3,000-3,999"
   05               = "4,000-4,999"
   06               = "5,000-5,999"
   07               = "6,000-6,999"
   08               = "7,000-9,999"
   09               = "10,000-14,999"
   10               = "15,000-24,999"
   11               = "25,000 and over"
   12               = "Unknown"
   13               = "No income received"
   ;
  VALUE  PER076X
   01               = "Under $1.000"
   02               = "$1,000-1,999"
   03               = "2,000-2,999"
   04               = "3,000-3,999"
   05               = "4,000-4,999"
   06               = "5,000-5,999"
   07               = "6,000-6,999"
   08               = "7,000-9,999"
   09               = "10,000-14,999"
   10               = "15,000-24,999"
   11               = "25,000 and over"
   12               = "Unknown"
   13               = "No income received"
   ;
  VALUE  PER077X
   1                = "Aleut, Eskimo, or American Indian"
   2                = "Asian or Pacific Islander"
   3                = "Black"
   4                = "White"
   5                = "Another group not listed"
   6                = "Multiple entry - unknown which is main racial background"
   7                = "Unknown"
   ;
  VALUE  PER078X
   ;
  VALUE  PER079X
   193-198          = "6.5 WEIGHT"
   ;
  VALUE  PER080X
   01               = "Puerto Rican"
   02               = "Cuban"
   03               = "Mexican"
   04               = "Mexicano"
   05               = "Mexican American"
   06               = "Chicano"
   07               = "Other Latin American"
   08               = "Other Spanish"
   09               = "Spanish - DK type"
   10               = "No - Not Spanish origin"
   11               = "unknown"
   ;
  VALUE  PER081X
   ;
  VALUE  PER082X
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
   0                = "Not known to be used"
   1                = "Yes"
   ;
  VALUE  PER106X
   0                = "Not known to be used"
   1                = "Yes"
   ;
  VALUE  PER107X
   0                = "Not known to be used"
   1                = "Brace on foot or leg"
   2                = "Brace on other body part"
   3                = "Brace, unknown body part"
   ;
  VALUE  PER108X
   0                = "Not known to be used"
   1                = "Yes"
   ;
  VALUE  PER109X
   0                = "Not known to be used"
   1                = "Yes"
   ;
  VALUE  PER110X
   0                = "Not known to be used"
   1                = "Yes"
   ;
  VALUE  PER111X
   0                = "Not known to be used"
   1                = "Yes"
   ;
  VALUE  PER112X
   0                = "Not known to be used"
   1                = "Yes"
   ;
  VALUE  PER113X
   0                = "Not known to be used"
   1                = "Yes"
   ;
  VALUE  PER114X
   0                = "Not known to be used"
   1                = "Yes"
   ;
  VALUE  PER115X
   1                = "Eyeglasses only"
   2                = "Contacts only"
   3                = "Hearing aid only"
   4                = "Eyeglasses and contacts"
   5                = "Eyeglasses and hearing aid"
   6                = "Contacts and hearing aid"
   7                = "Eyeglasses and contacts and hearing aid"
   8                = "Not reported to need aids"
   ;
  VALUE  PER116X
   001-298          = "PSU Number"
   ;
 
DATA NHIS.PERSONSX;
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1980\';
   INFILE ASCIIDAT MISSOVER TRUNCOVER LRECL=480;
 
* DEFINE LENGTH OF NUMERIC VARIABLES;
 
LENGTH
   WEEKCEN   3  RECTYPE   3  QUARTER   3  YEAR      3  WEEKPROC  3
   PER28     3  PER29     3  PER30     3  PER33     3  PER36     3
   PER37     3  PER52     3  PER53     3  PER55     3  PER57     3
   PER59     3  PER60     3  PER61     3  PER63     3  PER64     3
   PER66     3  PER67     3  PER68     3  PER70     3  PER73     3
   PER74     3  PER75     3  PER76     3  PER77     3  PER80     3
   PER82     3  PER84     3  PER87     3  PER89     3  PER91     3
   PER94     3  PER95     3  PER97     3  PER98     3  PER99     3
   PER100    3  PER106    3  PER108    3  PER110    3  PER111    3
   PER115    3  PER120    3  PER121    3  PER124    3  PER127    3
   PER128    3  PER129    3  PER131    3  PER140    3  PER142    3
   PER143    3  PER145    3  PER147    3  PER148    3  PER149    3
   PER156    3  PER158    3  PER159    3  PER160    3  PER171    3
   PER172    3  PER173    3  PER175    3  PER177    3  PER179    3
   PER188    3  PER193    3  PER199    3  PER201    6  PER210    6
   WTFA      6  PER228    6  PER237    6  PER246    6  PER255    6
   PER264    6  PER273    6  PER282    6  PER291    6  PER300    6
   PER327    6  PER336    6  PER345    8  PER381    6  PER390    6
   PER399    6  PER408    6  PER417    6  PER426    6  PER435    6
   PER444    6  PER453    6  PER467    3  PER468    3  PER469    3
   PER470    3  PER471    3  PER472    3  PER473    3  PER474    3
   PER475    3  PER476    3  PER477    3  PER478    3 
   ;
* INPUT ALL VARIABLES;
 
INPUT
   PSUNUMR  $   3 - 5          WEEKCEN      6 - 7
   SEGNUM   $   8 - 9          HHNUM    $  10 - 11
   PNUM     $  12 - 13         RECTYPE     14 - 14
   QUARTER     19 - 19         YEAR        20 - 20
   WEEKPROC    21 - 22         PER28       28 - 28
   PER29       29 - 29         PER30       30 - 31
   PER33       33 - 33         PER36       36 - 36
   PER37       37 - 37         PER43    $  43 - 43
   PER52       52 - 52         PER53       53 - 54
   PER55       55 - 56         PER57       57 - 58
   PER59       59 - 59         PER60       60 - 60
   PER61       61 - 62         PER63       63 - 63
   PER64       64 - 65         PER66       66 - 66
   PER67       67 - 67         PER68       68 - 69
   PER70       70 - 70         PER71    $  71 - 71
   PER72    $  72 - 72         PER73       73 - 73
   PER74       74 - 74         PER75       75 - 75
   PER76       76 - 76         PER77       77 - 79
   PER80       80 - 81         PER82       82 - 83
   PER84       84 - 86         PER87       87 - 88
   PER89       89 - 90         PER91       91 - 91
   PER94       94 - 94         PER95       95 - 96
   PER97       97 - 97         PER98       98 - 98
   PER99       99 - 99         PER100     100 - 101
   PER106     106 - 107        PER108     108 - 109
   PER110     110 - 110        PER111     111 - 112
   PER115     115 - 116        PER120     120 - 120
   PER121     121 - 123        PER124     124 - 126
   PER127     127 - 127        PER128     128 - 128
   PER129     129 - 130        PER131     131 - 132
   PER140     140 - 140        PER142     142 - 142
   PER143     143 - 144        PER145     145 - 145
   PER147     147 - 147        PER148     148 - 148
   PER149     149 - 149        PER156     156 - 157
   PER158     158 - 158        PER159     159 - 159
   PER160     160 - 162        PER171     171 - 171
   PER172     172 - 172        PER173     173 - 174
   PER175     175 - 176        PER177     177 - 178
   PER179     179 - 179        PER188     188 - 192
   PER193     193 - 198        PER199     199 - 200
   PER201     201 - 209        PER210     210 - 218
   WTFA       219 - 227        PER228     228 - 236
   PER237     237 - 245        PER246     246 - 254
   PER255     255 - 263        PER264     264 - 272
   PER273     273 - 281        PER282     282 - 290
   PER291     291 - 299        PER300     300 - 308
   PER327     327 - 335        PER336     336 - 344
   PER345     345 - 354 .8     PER381     381 - 389
   PER390     390 - 398        PER399     399 - 407
   PER408     408 - 416        PER417     417 - 425
   PER426     426 - 434        PER435     435 - 443
   PER444     444 - 452        PER453     453 - 461
   PER467     467 - 467        PER468     468 - 468
   PER469     469 - 469        PER470     470 - 470
   PER471     471 - 471        PER472     472 - 472
   PER473     473 - 473        PER474     474 - 474
   PER475     475 - 475        PER476     476 - 476
   PER477     477 - 477        PER478     478 - 480
   ;
* DEFINE VARIABLE LABELS;
 
LABEL
   PSUNUMR  = "PSU - ORIGINAL CODE"
   WEEKCEN  = "WEEK - CENSUS CODE"
   SEGNUM   = "SEGMENT NUMBER"
   HHNUM    = "HOUSEHOLD NUMBER"
   PNUM     = "PERSON NUMBER"
   RECTYPE  = "RECORD TYPE (2)"
   QUARTER  = "PROCESSING QUARTER CODE"
   YEAR     = "PROCESSING YEAR"
   WEEKPROC = "PROCESSING WEEK CODE"
   PER28    = "TYPE OF PSU"
   PER29    = "REGION"
   PER30    = "TABULATION AREA"
   PER33    = "GEOGRAPHIC IDENTIFICATION"
   PER36    = "SMSA - NON-SMSA RESIDENCE"
   PER37    = "TYPE OF LIVING QUARTERS"
   PER43    = "TELEPHONE"
   PER52    = "SEX"
   PER53    = "AGE"
   PER55    = "AGE RECODE #L"
   PER57    = "AGE RECODE #2"
   PER59    = "AGE RECODE #3"
   PER60    = "MARITAL STATUS"
   PER61    = "EDUCATION OF INDIVIDUAL - COMPLETED YEARS"
   PER63    = "EDUCATION OF INDIVIDUAL - RECODE"
   PER64    = "EDUCATION OF FAMILY HEAD OR UNRELATED INDIVIDUAL - DETAIL"
   PER66    = "EDUCATION OF HEAD - RECODE"
   PER67    = "VETERAN STATUS"
   PER68    = "FAMILY INCOME OR INCOME OF UNRELATED INDIVIDUAL"
   PER70    = "FAMILY INCOME RECODE"
   PER71    = "TYPE OF FAMILY"
   PER72    = "FAMILY RELATIONSHIP"
   PER73    = "FAMILY REIATIONSHIP RECODE (LIVING ARRANGEMENT)"
   PER74    = "USUAL ACIVITY"
   PER75    = "CURRENT ACTIVITY DURING PAST 2 WEEKS"
   PER76    = "CLASS OF WORKER"
   PER77    = "INDUSTRY DETAIL CODE"
   PER80    = "INDUSTRY RECODE I"
   PER82    = "INDUSTRY RECODE 2"
   PER84    = "OCCUPATION DETAIL CODE"
   PER87    = "OCCUPATION RECODE 1"
   PER89    = "OCCUPATION RECODE 2"
   PER91    = "RESPONDENT"
   PER94    = "AGE OF RESPONDENT"
   PER95    = "ACTUAL FAMILY SIZE"
   PER97    = "SIZE OF FAMILY RECODE"
   PER98    = "LIMITATION OF ACTIVITY DUE TO CHRONIC CONDITION"
   PER99    = "DURATION OF LIMITATION - UNIT"
   PER100   = "DURATION OF LIMITATION - NUMBER OF UNIT"
   PER106   = "TOTAL RESTRICTED ACTIVITY DAYS IN PAST 2 WEEKS"
   PER108   = "BED DISABILITY DAYS IN PAST 2 WEEKS"
   PER110   = "WORK/SCHOOL LOSS DAY IDENTIFIER"
   PER111   = "WORK OR SCHOOL-LOSS DAYS IN PAST 2 WEEKS"
   PER115   = "DENTAL VISITS IN 2 WEEKS"
   PER120   = "DOCTOR VISITS IN 12 MONTHS - KNOWN/UNKNOWN CODE"
   PER121   = "DOCTOR VISITS IN 12 MONTHS - NUMBER OF VISITS"
   PER124   = "NUMBER OF SHORT-STAY HOSPITAL DAYS IN PAST 12 MONTHS"
   PER127   = "INTERVAL SINCE LAST DOCTOR VISIT"
   PER128   = "INTERVAL SINCE LAST DENTAL VISIT"
   PER129   = "NUMBER OF SHORT-STAY HOSPITAL EPISODES"
   PER131   = "TOTAL 2-WEEKS DOCTOR VISITS"
   PER140   = "HOSPITAL OWNERSHIP FOR SHORT-STAY EPISODES"
   PER142   = "BED DAYS PAST 12 MOTHS"
   PER143   = "FAMILY STRUCTURE"
   PER145   = "HEALTH STATUS"
   PER147   = "RACE RECODE 1"
   PER148   = "RACE RECODE 2"
   PER149   = "RACE RECODE 3"
   PER156   = "HEIGHT WITHOUT SHOES"
   PER158   = "USED MEDICAID - PAST 12 MONTHS"
   PER159   = "MEDICAID - TYPE OF CARD"
   PER160   = "WEIGHT WITHOUT SHOES"
   PER171   = "CONDITION LIST ASSIGNED AND ASKED"
   PER172   = "RECEIVED INCOME"
   PER173   = "INDIVIDUAL INCOME"
   PER175   = "INCOME OF HEAD OF FAMILY"
   PER177   = "INCOME OF MAJOR BREADWINNER"
   PER179   = "MAIN RACIAL BACKGROUND"
   PER188   = "FINAL BASIC WEIGHT"
   PER193   = "6.5 WEIGHT"
   PER199   = "MAIN SPANISH ORIGIN"
   PER201   = "BASIC WEIGHT - QUARTER"
   PER210   = "BASIC WEIGHT - SEMIANNUAL"
   WTFA     = "BASIC WEIGHT - ANNUAL"
   PER228   = "BASIC WEIGHT - BIANNUAL"
   PER237   = "6.5 WEIGHT - QUARTER, SEMIANNUAL, ANNUAL"
   PER246   = "6.5 WEIGHT - BIANNUAL"
   PER255   = "ESTIMATED RESTRICTED ACTIVITY DAYS PAST 2W - QUARTER, SEMIANNUAL, ANNUAL"
   PER264   = "ESTIMATED RESTRICTED ACTIVITY DAYS PAST 2W - BIANNUAL"
   PER273   = "ESTIMATED BED DAYS PAST 2W - QUARTER, SEMIANNUAL, ANNUAL"
   PER282   = "ESTIMATED BED PAST 2W - BIANNUAL"
   PER291   = "ESTIMATED WORK/SCHOOL LOSS DAYS PAST 2W - QUARTER, SEMIANNUAL, ANNUAL"
   PER300   = "ESTIMATED WORK/SCHOOL LOSS DAYS PAST 2W - BIANNUAL"
   PER327   = "ESTIMATED DENTAL VISITS PAST 2W - QUARTER, SEMIANNUAL, ANNUAL"
   PER336   = "ESTIMATED DENTAL VISITS PAST 2W - BIANNUAL"
   PER345   = "CHRONIC CONDITION PREVALENCE AND INCIDENCE FACTOR"
   PER381   = "ESTIMATED DOCTOR VISITS PAST 12M - QUARTER"
   PER390   = "ESTIMATED DOCTOR VISITS PAST 12M - SEMIANNUAL"
   PER399   = "ESTIMATED DOCTOR VISITS PAST 12M - ANNUAL"
   PER408   = "ESTIMATED DOCTOR VISITS PAST 12M - BIANNUAL"
   PER417   = "ESTIMATED SHORT-STAY HOSPITAL DAYS PAST 12M - QUARTER"
   PER426   = "ESTIMATED SHORT-STAY HOSPITAL DAYS PAST 12M - SEMIANNUAL"
   PER435   = "ESTIMATED SHORT-STAY HOSPITAL DAYS PAST 12M - ANNUAL"
   PER444   = "ESTIMATED SHORT-STAY HOSPITAL DAYS PAST 12M - BIANNUAL"
   PER453   = "ANNUAL ESTIMATED NUMBER OF SHORT-STAY HOSPITAL EPISODES PAST 12M"
   PER467   = "ARTIFICIAL ARM USED"
   PER468   = "ARTIFICIAL LEG USED"
   PER469   = "BRACE USED"
   PER470   = "CRUTCHES USED"
   PER471   = "CANE OR WALKING STICK USED"
   PER472   = "SPECIAL SHOES USED"
   PER473   = "WHEELCHAIR USED"
   PER474   = "WALKER USED"
   PER475   = "GUIDE DOG USED"
   PER476   = "OTHER SPECIAL AID USED"
   PER477   = "SELECTED AIDS ARM USED"
   PER478   = "PSEUDO-PSU NUMBER"
   ;
* ASSOCIATE VARIABLES WITH FORMAT VALUES;
 
FORMAT
   PSUNUMR   $PER001X.   WEEKCEN   PER002X.    SEGNUM    $PER003X.
   HHNUM     $PER004X.   PNUM      $PER005X.   RECTYPE   PER006X.
   QUARTER   PER007X.    YEAR      PER008X.    WEEKPROC  PER009X.
   PER28     PER010X.    PER29     PER011X.    PER30     PER012X.
   PER33     PER013X.    PER36     PER014X.    PER37     PER015X.
   PER43     $PER016X.   PER52     PER017X.    PER53     PER018X.
   PER55     PER019X.    PER57     PER020X.    PER59     PER021X.
   PER60     PER022X.    PER61     PER023X.    PER63     PER024X.
   PER64     PER025X.    PER66     PER026X.    PER67     PER027X.
   PER68     PER028X.    PER70     PER029X.    PER71     $PER030X.
   PER72     $PER031X.   PER73     PER032X.    PER74     PER033X.
   PER75     PER034X.    PER76     PER035X.    PER77     PER036X.
   PER80     PER037X.    PER82     PER038X.    PER84     PER039X.
   PER87     PER040X.    PER89     PER041X.    PER91     PER042X.
   PER94     PER043X.    PER95     PER044X.    PER97     PER045X.
   PER98     PER046X.    PER99     PER047X.    PER100    PER048X.
   PER106    PER049X.    PER108    PER050X.    PER110    PER051X.
   PER111    PER052X.    PER115    PER053X.    PER120    PER054X.
   PER121    PER055X.    PER124    PER056X.    PER127    PER057X.
   PER128    PER058X.    PER129    PER059X.    PER131    PER060X.
   PER140    PER061X.    PER142    PER062X.    PER143    PER063X.
   PER145    PER064X.    PER147    PER065X.    PER148    PER066X.
   PER149    PER067X.    PER156    PER068X.    PER158    PER069X.
   PER159    PER070X.    PER160    PER071X.    PER171    PER072X.
   PER172    PER073X.    PER173    PER074X.    PER175    PER075X.
   PER177    PER076X.    PER179    PER077X.    PER188    PER078X.
   PER193    PER079X.    PER199    PER080X.    PER201    PER081X.
   PER210    PER082X.    WTFA      PER083X.    PER228    PER084X.
   PER237    PER085X.    PER246    PER086X.    PER255    PER087X.
   PER264    PER088X.    PER273    PER089X.    PER282    PER090X.
   PER291    PER091X.    PER300    PER092X.    PER327    PER093X.
   PER336    PER094X.    PER345    PER095X.    PER381    PER096X.
   PER390    PER097X.    PER399    PER098X.    PER408    PER099X.
   PER417    PER100X.    PER426    PER101X.    PER435    PER102X.
   PER444    PER103X.    PER453    PER104X.    PER467    PER105X.
   PER468    PER106X.    PER469    PER107X.    PER470    PER108X.
   PER471    PER109X.    PER472    PER110X.    PER473    PER111X.
   PER474    PER112X.    PER475    PER113X.    PER476    PER114X.
   PER477    PER115X.    PER478    PER116X.
   ;
 
PROC CONTENTS DATA=NHIS.PERSONSX;
 
PROC FREQ DATA=NHIS.PERSONSX;
TITLE1 'FREQUENCY REPORT FOR 1980 NHIS PERSON FILE';
TITLE2 '(WEIGHTED)';
TABLES RECTYPE/LIST MISSING;
WEIGHT WTFA;
 
PROC FREQ DATA=NHIS.PERSONSX;
TITLE1 'FREQUENCY REPORT FOR 1980 NHIS PERSON FILE';
TITLE2 '(UNWEIGHTED)';
TABLES RECTYPE/LIST MISSING;
 
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
              STATEMENT: FORMAT _ALL_;
RUN;
