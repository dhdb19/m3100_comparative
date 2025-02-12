DM 'CLE LOG; CLE OUT';
**************************************************************************
  January 27, 2006
 
THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
FILE FROM THE NHIS 1977 PERSONSX.DAT ASCII FILE.
 
NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
      GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
      DOCUMENTATION.
 
THIS IS STORED IN PERSONSX.SAS
*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;
 
LIBNAME NHIS    'C:\NHIS1977\';
LIBNAME LIBRARY 'C:\NHIS1977\';
 
FILENAME ASCIIDAT 'C:\NHIS1977\PERSONSX.DAT';
 
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
  VALUE  PER008X
   1                = "Quarter 1, 1977"
   2                = "Quarter 2, 1977"
   3                = "Quarter 3, 1977"
   4                = "Quarter 4, 1977"
   ;
  VALUE  PER009X
   7                = "1977"
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
  VALUE  PER016X
   ;
  VALUE  PER017X
   1-8              = "Number of calls"
   9                = "9+ calls"
   0                = "Not reported"
   ;
  VALUE $PER018X
   "1"              = "Yes - phone"
   "2"              = "No or none"
   "3"              = "Phone, but no number listed, or number refused"
   "9"              = "DK if phone or refused"
   " "              = "Not reported"
   ;
  VALUE  PER019X
   1                = "Yes"
   2                = "No"
   3                = "Yes and no"
   .                = "Not reported"
   ;
  VALUE  PER020X
   1                = "Monday"
   2                = "Tuesday"
   3                = "Wednesday"
   4                = "Thursday"
   5                = "Friday"
   6                = "Saturday"
   7                = "Sunday"
   8                = "Unknown"
   ;
  VALUE  PER021X
   001-998          = "Number of minutes"
   999              = "999+ minutes"
   .                = "Not reported"
   ;
  VALUE  PER022X
   1                = "6:01 am - 12:00 noon"
   2                = "12:01pm -  6:00 pm"
   3                = "6:01 pm - 12:00 midnight"
   4                = "12:01pm -  6:00 am"
   .                = "Not reported"
   ;
  VALUE  PER023X
   1                = "White"
   2                = "Black"
   3                = "Other"
   ;
  VALUE  PER024X
   1                = "White"
   2                = "Other races"
   ;
  VALUE  PER025X
   1                = "Male"
   2                = "Female"
   ;
  VALUE  PER026X
   00               = "Under 1 year"
   01-98            = "Single years"
   99               = "99+ years"
   ;
  VALUE  PER027X
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
  VALUE  PER028X
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
  VALUE  PER029X
   1                = "Under 15 years"
   2                = "15-44"
   3                = "45-64"
   4                = "65+"
   ;
  VALUE  PER030X
   0                = "Under 17 years"
   1                = "Married - Spouse present"
   2                = "Widowed"
   3                = "Never married"
   4                = "Divorsed"
   5                = "Separated"
   6                = "Married - Spouse absent"
   ;
  VALUE  PER031X
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
  VALUE  PER032X
   1                = "Under 17 years of age"
   2                = "None"
   3                = "01-08 (elementary)"
   4                = "09-11 (high school)"
   5                = "12 (high school graduate)"
   6                = "13-15 (college)"
   7                = "16+ (college graduate +)"
   8                = "Unknown"
   ;
  VALUE  PER033X
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
  VALUE  PER036X
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
  VALUE  PER037X
   1                = "Under $3,000"
   2                = "$3,000-4,999"
   3                = "5,000-6,999"
   4                = "7,000-9,999"
   5                = "10,000-14,999"
   6                = "15,000-24,999"
   7                = "25,000+"
   8                = "Unknown"
   ;
  VALUE $PER038X
   "&"              = "Primary individual"
   "-"              = "Secondary individual"
   "0"              = "Primary family"
   "1"-"9"          = "Secondary families"
   ;
  VALUE $PER039X
   "&"              = "Unrelated individual living alone"
   "0"              = "Head of family or unrelated individual not living alone"
   "1"              = "Wife (husband living at home and not in Amed Forces)"
   "2"              = "Wife (husband living at home and is in Armed Forces)"
   "3"              = "Child of head or spouse"
   "4"              = "Grand child of head or spouse"
   "5"              = "Parent of head or spouse"
   "6"              = "Other relative"
   ;
  VALUE  PER040X
   1                = "Living alone"
   2                = "Living with nonrelative"
   3                = "Living with spouse"
   4                = "Living with relatives - other"
   ;
  VALUE  PER041X
   0                = "Under 6 years"
   1                = "Usually working"
   2                = "Keeping house (female)"
   3                = "Retlred - Health (45+ years)"
   4                = "Going to school"
   5                = "Something else"
   6                = "Unknown"
   7                = "Retired,Other (45+ years)"
   ;
  VALUE  PER042X
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
  VALUE  PER043X
   0                = "Never worked"
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
  VALUE  PER044X
   017-999          = "Code Number"
   .                = "Not applicable"
   ;
  VALUE  PER045X
   ;
  VALUE  PER046X
   ;
  VALUE  PER047X
   001-995          = "Code number"
   .                = "Not applicable"
   ;
  VALUE  PER048X
   ;
  VALUE  PER049X
   ;
  VALUE  PER050X
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
  VALUE  PER051X
   1                = "Under 20 years"
   2                = "20-54 years"
   3                = "55-64 years"
   4                = "65-74 years"
   5                = "75+ years"
   6                = "Unknown and not reported"
   ;
  VALUE  PER052X
   00               = "Unrelated individuals"
   01-19            = "Family size"
   ;
  VALUE  PER053X
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
  VALUE  PER054X
   1                = "Cannot perform Usual Activity"
   2                = "Can perfom UA but limited in amount and kind"
   3                = "Can perfom UA but limited in outside activities"
   4                = "Not limited (including unknown) or not applicable (persons with no chronic condition )"
   ;
  VALUE  PER055X
   1                = "Months"
   2                = "Years"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER056X
   00               = "Less than l month"
   01-97            = "Number of months or years"
   99               = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER057X
   00               = "None"
   01-14            = "Number of days"
   ;
  VALUE  PER058X
   00               = "None"
   01-14            = "Number of days"
   ;
  VALUE  PER059X
   1                = "Under 6 years of age"
   2                = "School-loss days"
   3                = "Work-loss days"
   ;
  VALUE  PER060X
   00               = "None or Under 6"
   01-14            = "Number of days"
   ;
  VALUE  PER061X
   00               = "None or Under 6"
   01-14            = "Number of days"
   ;
  VALUE  PER062X
   00               = "None"
   01-97            = "Numberof visits"
   ;
  VALUE  PER063X
   1                = "Number of visits known"
   2                = "Number of visits unknown"
   ;
  VALUE  PER064X
   000              = "None or Unknown"
   001-997          = "Number of visits"
   ;
  VALUE  PER065X
   000              = "None"
   001-365          = "Number of days"
   ;
  VALUE  PER066X
   0                = "Never"
   1                = "Visit in past 2 weeks"
   3                = "2 weeks to less than 6 months"
   4                = "6 months to less than 12 months"
   5                = "1 year"
   6                = "2-4 years"
   7                = "5+ years"
   9                = "Unknown"
   ;
  VALUE  PER067X
   0                = "Never"
   1                = "Visit in 2 weeks"
   2                = "2 weeks to less than 6 months"
   3                = "6 months to less than 12 months"
   4                = "1 year"
   5                = "2-4 years"
   6                = "5+ years"
   8                = "Unknown"
   ;
  VALUE  PER068X
   ;
  VALUE  PER069X
   ;
  VALUE  PER070X
   0                = "No episodes"
   1                = "All in federal hospitals"
   2                = "All in nonfederal hospitals"
   3                = "Both federal and nonfederal hospitals"
   ;
  VALUE  PER071X
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
  VALUE  PER072X
   1                = "Excellent"
   2                = "Good"
   3                = "Fair"
   4                = "Poor"
   5                = "Unknown"
   ;
  VALUE  PER073X
   0                = "Under 17 years of age"
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   4                = "Non-veteran"
   ;
  VALUE  PER074X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  PER075X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  PER076X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  PER077X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  PER078X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  PER079X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  PER080X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  PER081X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  PER082X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  PER083X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  PER084X
   00               = "None"
   01-12            = "1-12 months"
   13               = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER085X
   00               = "None"
   01-96            = "1-96 days"
   97               = "97+ days"
   98               = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER086X
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
  VALUE $PER087X
   "1"              = "l Room"
   "2"              = "2 Rooms"
   "3"              = "3 Rooms"
   "4"              = "4 Rooms"
   "5"              = "5 Rooms"
   "6"              = "6 Rooms"
   "7"              = "7 Rooms"
   "8"              = "8 Rooms"
   "9"              = "9+ ROOIUS"
   "-"              = "DK or Not reported"
   " "              = "Not a housing unit"
   ;
  VALUE $PER088X
   "1"              = "l Room"
   "2"              = "2 Rooms"
   "3"              = "3 Rooms"
   "4"              = "4 Rooms"
   "5"              = "5 Rooms"
   "6"              = "6 Rooms"
   "7"              = "7 Rooms"
   "8"              = "8 Rooms"
   "9"              = "9+ ROOIUS"
   "-"              = "DK or Not reported"
   " "              = "Not a housing unit"
   ;
  VALUE  PER089X
   ;
  VALUE  PER090X
   ;
  VALUE  PER091X
   ;
  VALUE  PER092X
   00               = "American"
   01               = "Central or South American"
   02               = "Chicano"
   03               = "Cuban"
   04               = "Mexican"
   05               = "Mexicano"
   06               = "Mexican-American"
   07               = "Puerto Rico"
   08               = "Other Spanish"
   09               = "Other European"
   10               = "Black"
   12               = "Asian or Pacific Islander"
   17               = "All Other"
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
   ;
  VALUE  PER106X
   ;
  VALUE  PER107X
   ;
  VALUE  PER108X
   ;
  VALUE  PER109X
   ;
  VALUE  PER110X
   ;
  VALUE  PER111X
   ;
  VALUE  PER112X
   ;
  VALUE  PER113X
   ;
  VALUE  PER114X
   ;
  VALUE  PER115X
   ;
  VALUE  PER116X
   ;
  VALUE  PER117X
   ;
  VALUE  PER118X
   0                = "None"
   1                = "1-7 days"
   2                = "8-30 days"
   3                = "31-180 days"
   4                = "181-365 days"
   5                = "Unknown"
   ;
  VALUE  PER119X
   1                = "Yes, lasted less than 24 hours"
   2                = "Yes, lasted more than 24 hours"
   3                = "Yes, duration unkmwn"
   4                = "No"
   5                = "Unknown"
   .                = "Under 20"
   ;
  VALUE  PER120X
   1                = "Yes, lasted less than 24 hours"
   2                = "Yes, lasted more than 24 hours"
   3                = "Yes, duration unkmwn"
   4                = "No"
   5                = "Unknown"
   .                = "Under 20"
   ;
  VALUE  PER121X
   1                = "Yes, lasted less than 24 hours"
   2                = "Yes, lasted more than 24 hours"
   3                = "Yes, duration unkmwn"
   4                = "No"
   5                = "Unknown"
   .                = "Under 20"
   ;
  VALUE  PER122X
   1                = "Yes, lasted less than 24 hours"
   2                = "Yes, lasted more than 24 hours"
   3                = "Yes, duration unkmwn"
   4                = "No"
   5                = "Unknown"
   .                = "Under 20"
   ;
  VALUE  PER123X
   0                = "None"
   1-4              = "Symptoms"
   5                = "1+ symptoms, number unknown"
   6                = "Unkmwn if symptoms"
   .                = "Under 20"
   ;
  VALUE  PER124X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "No symptom or under 20"
   ;
  VALUE  PER125X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "No symptom, doctor not seen or under 20"
   ;
  VALUE  PER126X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Under 20"
   ;
  VALUE  PER127X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Under 20"
   ;
  VALUE  PER128X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Under 20"
   ;
  VALUE  PER129X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Under 20"
   ;
  VALUE  PER130X
   1                = "Yes, medically confirmed"
   2                = "Yes, not medically confirmed"
   3                = "Yes, unknown if medically confimed"
   4                = "No"
   5                = "Unknown"
   .                = "Under 20"
   ;
  VALUE  PER131X
   01-98            = "Age at first stroke"
   99               = "Unknown when first stroke occurred"
   .                = "No stroke or under 20"
   ;
  VALUE  PER132X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "No stroke or under 20"
   ;
  VALUE  PER133X
   1                = "Eligible respondent: Person responded to 1+ questions"
   2                = "Eligible respondent: Person did not respond to any of Questions 6-13"
   3                = "Ineligible respondent: person 20+ but not in 1/3 subsample"
   4                = "Person under 20 years of age"
   ;
  VALUE  PER134X
   00               = "Less than 1 hour"
   01-24            = "Number of hours"
   25               = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER135X
   1                = "Everyday"
   2                = "Sometimes"
   3                = "Rarely or never"
   4                = "Other"
   5                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER136X
   1                = "Everyday"
   2                = "Sometimes"
   3                = "Rarely or never"
   4                = "Other"
   5                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER137X
   1                = "More active"
   2                = "Less active"
   3                = "Same"
   4                = "Other"
   5                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER138X
   1                = "Never"
   2                = "Occasionally"
   3                = "Once or twice a week"
   4                = "Three or more times a week"
   5                = "Other"
   6                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER139X
   1-7              = "Drinks"
   8                = "Eight or more"
   9                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER140X
   1                = "Never"
   2                = "Occasionally"
   3                = "Once or twice a week"
   4                = "Three or more times a week"
   5                = "Other"
   6                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER141X
   1-7              = "Drinks"
   8                = "Eight or more"
   9                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER142X
   1                = "Never"
   2                = "Occasionally"
   3                = "Once or twice a week"
   4                = "Three or more times a week"
   5                = "Other"
   6                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER143X
   1-7              = "Drinks"
   8                = "Eight or more"
   9                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER144X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER145X
   1                = "Never smoked"
   2                = "Present smoker"
   3                = "Former smoker"
   4                = "Smoker, unknown present smoking status"
   5                = "Unknown if smoked"
   .                = "Not applicable"
   ;
  VALUE  PER146X
   00               = "Less than 1 cigarette"
   01-96            = "Cigarettes"
   97               = "97+ cigarettes"
   98               = "Unknown"
   .                = "Not present smoker"
   ;
  VALUE  PER147X
   36-84            = "Inches"
   99               = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER148X
   050-400          = "Number of pounds"
   999              = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER149X
   0914-2134        = "0.914 to 2.134 meters"
   0000             = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER150X
   0220-1814        = "22.0 to 181.4 kilograms"
   0000             = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER151X
   1                = "Yes, prevented getting care"
   2                = "Yes, didn't prevent getting care"
   3                = "Yes, unknown if prevented getting care"
   4                = "No"
   5                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER152X
   1                = "Yes, prevented getting care"
   2                = "Yes, didn't prevent getting care"
   3                = "Yes, unknown if prevented getting care"
   4                = "No"
   5                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER153X
   1                = "Yes, prevented getting care"
   2                = "Yes, didn't prevent getting care"
   3                = "Yes, unknown if prevented getting care"
   4                = "No"
   5                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER154X
   1                = "Yes, prevented getting care"
   2                = "Yes, didn't prevent getting care"
   3                = "Yes, unknown if prevented getting care"
   4                = "No"
   5                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER155X
   1                = "Yes, prevented getting care"
   2                = "Yes, didn't prevent getting care"
   3                = "Yes, unknown if prevented getting care"
   4                = "No"
   5                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER156X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER157X
   1                = "1+ problems and prevented 1+ times"
   2                = "1+ problems, but not prevented 1+ times"
   3                = "1+ problems; unknown if prevented 1+ times"
   4                = "No problems"
   5                = "Unknown if problems"
   .                = "Not applicable"
   ;
 
DATA NHIS.PERSONSX;
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1977\';
   INFILE ASCIIDAT MISSOVER TRUNCOVER LRECL=516;
 
* DEFINE LENGTH OF NUMERIC VARIABLES;
 
LENGTH
   WEEKCEN   3  RECTYPE   3  PER17     3  QUARTER   3  YEAR      3
   PER28     3  PER29     3  PER30     3  PER33     3  PER36     3
   PER37     3  PER40     3  PER42     3  PER44     3  PER45     3
   PER46     3  PER49     3  PER50     3  PER51     3  PER52     3
   PER53     3  PER55     3  PER57     3  PER59     3  PER60     3
   PER61     3  PER63     3  PER64     3  PER66     3  PER67     3
   PER68     3  PER70     3  PER73     3  PER74     3  PER75     3
   PER76     3  PER77     3  PER80     3  PER82     3  PER84     3
   PER87     3  PER89     3  PER91     3  PER94     3  PER95     3
   PER97     3  PER98     3  PER99     3  PER100    3  PER106    3
   PER108    3  PER110    3  PER111    3  PER113    3  PER115    3
   PER120    3  PER121    3  PER124    3  PER127    3  PER128    3
   PER129    3  PER135    3  PER140    3  PER143    3  PER145    3
   PER147    3  PER149    3  PER150    3  PER151    3  PER152    3
   PER153    3  PER154    3  PER155    3  PER156    3  PER157    3
   PER158    3  PER159    3  PER161    3  PER175    3  PER182    6
   PER188    6  PER193    6  PER199    6  PER201    6  PER210    6
   WTFA      6  PER228    6  PER237    6  PER246    6  PER255    6
   PER264    6  PER273    6  PER282    6  PER291    6  PER300    6
   PER309    6  PER318    6  PER327    6  PER336    6  PER381    6
   PER390    6  PER399    6  PER408    6  PER417    3  PER426    6
   PER435    6  PER444    6  PER453    6  PER465    3  PER466    3
   PER467    3  PER468    3  PER469    3  PER470    3  PER471    3
   PER472    3  PER473	  3  PER474    3  PER475    3  PER476    3
   PER477    3  PER478    3  PER480    3  PER481    3  PER482    3
   PER484    3  PER485    3  PER486    3  PER487    3  PER488    3
   PER489    3  PER490    3  PER491    3  PER492    3  PER493    3
   PER494    3  PER495    3  PER497    3  PER499    3  PER502    8
   PER506    8  PER510    3  PER511    3  PER512    3  PER513    3
   PER514    3  PER515    3  PER516    3
   ;
* INPUT ALL VARIABLES;
 
INPUT
   PSUNUMR  $   3 - 5          WEEKCEN      6 - 7
   SEGNUM   $   8 - 9          HHNUM    $  10 - 11
   PNUM     $  12 - 13         RECTYPE     14 - 14
   PER17       17 - 18         QUARTER     19 - 19
   YEAR        20 - 20         PER28       28 - 28
   PER29       29 - 29         PER30       30 - 31
   PER33       33 - 33         PER36       36 - 36
   PER37       37 - 37         PER40       40 - 41
   PER42       42 - 42         PER43    $  43 - 43
   PER44       44 - 44         PER45       45 - 45
   PER46       46 - 48         PER49       49 - 49
   PER50       50 - 50         PER51       51 - 51
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
   PER113     113 - 114        PER115     115 - 116
   PER120     120 - 120        PER121     121 - 123
   PER124     124 - 126        PER127     127 - 127
   PER128     128 - 128        PER129     129 - 130
   PER135     135 - 136        PER140     140 - 140
   PER143     143 - 144        PER145     145 - 145
   PER147     147 - 147        PER149     149 - 149
   PER150     150 - 150        PER151     151 - 151
   PER152     152 - 152        PER153     153 - 153
   PER154     154 - 154        PER155     155 - 155
   PER156     156 - 156        PER157     157 - 157
   PER158     158 - 158        PER159     159 - 160
   PER161     161 - 162        PER175     175 - 176
   PER180   $ 180 - 180        PER181   $ 181 - 181
   PER182     182 - 187        PER188     188 - 192
   PER193     193 - 198        PER199     199 - 200
   PER201     201 - 209        PER210     210 - 218
   WTFA       219 - 227        PER228     228 - 236
   PER237     237 - 245        PER246     246 - 254
   PER255     255 - 263        PER264     264 - 272
   PER273     273 - 281        PER282     282 - 290
   PER291     291 - 299        PER300     300 - 308
   PER309     309 - 317        PER318     318 - 326
   PER327     327 - 335        PER336     336 - 344
   PER381     381 - 389        PER390     390 - 398
   PER399     399 - 407        PER408     408 - 416
   PER417     417 - 425        PER426     426 - 434
   PER435     435 - 443        PER444     444 - 452
   PER453     453 - 461        PER465     465 - 465
   PER466     466 - 466        PER467     467 - 467
   PER468     468 - 468        PER469     469 - 469
   PER470     470 - 470        PER471     471 - 471
   PER472     472 - 472        PER473	  473 - 473
   PER474     474 - 474        PER475     475 - 475
   PER476     476 - 476        PER477     477 - 477
   PER478     478 - 479        PER480     480 - 480
   PER481     481 - 481        PER482     482 - 483
   PER484     484 - 484        PER485     485 - 485
   PER486     486 - 486        PER487     487 - 487
   PER488     488 - 488        PER489     489 - 489
   PER490     490 - 490        PER491     491 - 491
   PER492     492 - 492        PER493     493 - 493
   PER494     494 - 494        PER495     495 - 496
   PER497     497 - 498        PER499     499 - 501
   PER502     502 - 505 .1     PER506     506 - 509 .1
   PER510     510 - 510        PER511     511 - 511
   PER512     512 - 512        PER513     513 - 513
   PER514     514 - 514        PER515     515 - 515
   PER516     516 - 516
   ;
* DEFINE VARIABLE LABELS;
 
LABEL
   PSUNUMR  = "RANDOM RECODE OF PSU"
   WEEKCEN  = "WEEK - CENSUS CODE"
   SEGNUM   = "SEGMENT NUMBER"
   HHNUM    = "HOUSEHOLD NUMBER"
   PNUM     = "PERSON NUMBER"
   RECTYPE  = "RECORD TYPE (2)"
   PER17    = "PROCESSING WEEK CODE"
   QUARTER  = "PROCESSING QUARTER CODE"
   YEAR     = "PROCESSING YEAR"
   PER28    = "TYPE OF PSU"
   PER29    = "REGION"
   PER30    = "TABULATION AREA"
   PER33    = "GEOGRAPHIC IDENTIFICATION"
   PER36    = "SMSA - NON-SMSA RESIDENCE"
   PER37    = "TYPE OF LIVING QUARTERS"
   PER40    = "INTERVIEW NUMBER"
   PER42    = "NUMBER OF CALL"
   PER43    = "TELEPHONE"
   PER44    = "OBSERVED INTERVIEW"
   PER45    = "DAY OF WEEK INTERVIEW COMPLETED"
   PER46    = "LENGTH OF INTERVIEW"
   PER49    = "TIME OF DAY OF INTERVIEW"
   PER50    = "RACE"
   PER51    = "RACE RECODE"
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
   PER113   = "NUMBER OF DAYS IN HOSPITAL IN PAST 2 WEEKS"
   PER115   = "DENTAL VISITS IN 2 WEEKS"
   PER120   = "DOCTOR VISITS IN 12 MONTHS - KNOWN/UNKNOWN CODE"
   PER121   = "DOCTOR VISITS IN 12 MONTHS - NUMBER OF VISITS"
   PER124   = "NUMBER OF SHORT-STAY HOSPITAL DAYS IN PAST 12 MONTHS"
   PER127   = "INTERVAL SINCE LAST DOCTOR VISIT"
   PER128   = "INTERVAL SINCE LAST DENTAL VISIT"
   PER129   = "NUMBER OF SHORT-STAY HOSPITAL EPISODES"
   PER135   = "NUMBER OF CHRONIC CONDITIONS CAUSING LA"
   PER140   = "HOSPITAL OWNERSHIP FOR SHORT-STAY EPISODES"
   PER143   = "FAMILY STRUCTURE"
   PER145   = "HEALTH STATUS"
   PER147   = "SERVICE CONNECTED DISABILITY"
   PER149   = "VETERANS ADMINISTRATION MEDICAL CARE - PAST 12 MONTHS"
   PER150   = "RECEIVED MEDICARE - PAST 12 MONTHS"
   PER151   = "SELECTED AIDS USED - EYEGLASSES"
   PER152   = "SELECTED AIDS USED - CONTACT LENSES"
   PER153   = "SELECTED AIDS USED - HEARING AID"
   PER154   = "RECEIVED PAYMENT OR BENEFITS - WORKMAN'S COMPENSATION"
   PER155   = "RECEIVED SOCIAL SECURITY ADMINISTRATION"
   PER156   = "RECEIVED VETERAN ADMINISTRATION"
   PER157   = "RECEIVED PUBLIC ASSISTANCE"
   PER158   = "USED MEDICAID - PAST 12 MONTHS"
   PER159   = "MONTHS AT JOB - PAST 12 MONTHS"
   PER161   = "WORK LOST DAYS - PAST 12 MONTHS"
   PER175   = "INCOME OF HEAD OF FAMILY"
   PER180   = "TOTAL ROOMS"
   PER181   = "TOTAL NUMBER OF BEDROOMS"
   PER182   = "BASIC WEIGHT BEFORE ASC ADJUSTMENT"
   PER188   = "FINAL BASIC WEIGHT"
   PER193   = "6.5 WEIGHT"
   PER199   = "MAIN NATIONAL ORIGIN"
   PER201   = "BASIC WEIGHT - QUARTER"
   PER210   = "BASIC WEIGHT - SEMIANNUAL"
   WTFA     = "BASIC WEIGHT - ANNUAL"
   PER228   = "BASIC WEIGHT - BIANNUAL"
   PER237   = "6.5 WEIGHT - QUARTER, SEMIANNUAL, ANNUAL"
   PER246   = "6.5 WEIGHT - BIANNUAL"
   PER255   = "ESTIMATED RESTRICTED ACTIVITY DAYS PAST 2W - QUARTER, SEMIANNUAL, ANNUAL"
   PER264   = "ESTIMATED RESTRICTED ACTIVITY DAYS PAST 2W - BIANNUAL"
   PER273   = "ESTIMATED BED DAYS PAST 2W - QUARTER, SEMIANNUAL, ANNUAL"
   PER282   = "ESTIMATED BED DAYS PAST 2W - BIANNUAL"
   PER291   = "ESTIMATED WORK/SCHOOL LOSS DAYS PAST 2W - QUARTER, SEMIANNUAL, ANNUAL"
   PER300   = "ESTIMATED WORK/SCHOOL LOSS DAYS PAST 2W - BIANNUAL"
   PER309   = "ESTIMATED NUMBER OF HOSPITAL DAYS PAST 2W - QUARTER, SEMIANNUAL, ANNUAL"
   PER318   = "ESTIMATED NUMBER OF HOSPITAL DAYS PAST 2W - BIANNUAL"
   PER327   = "ESTIMATED DENTAL VISITS PAST 2W - QUARTER, SEMIANNUAL, ANNUAL"
   PER336   = "ESTIMATED DENTAL VISITS PAST 2W - BIANNUAL"
   PER381   = "ESTIMATED DOCTOR VISITS PAST 12M - QUARTER"
   PER390   = "ESTIMATED DOCTOR VISITS PAST 12M - SEMIANNUAL"
   PER399   = "ESTIMATED DOCTOR VISITS PAST 12M - ANNUAL"
   PER408   = "ESTIMATED DOCTOR VISITS PAST 12M - BIANNUAL"
   PER417   = "ESTIMATED SHORT-STAY HOSPITAL DAYS PAST 12M - QUARTER"
   PER426   = "ESTIMATED SHORT-STAY HOSPITAL DAYS PAST 12M - SEMIANNUAL"
   PER435   = "ESTIMATED SHORT-STAY HOSPITAL DAYS PAST 12M - ANNUAL"
   PER444   = "ESTIMATED SHORT-STAY HOSPITAL DAYS PAST 12M - BIANNUAL"
   PER453   = "ANNUAL ESTIMATED NUMBER OF SHORT-STAY HOSPITAL EPISODES PAST 12M"
   PER465   = "12-MONTH BED DAYS"
   PER466   = "SUDDEN PARALYSIS OR WEAKNESS OF AN ARM OR LEG 0N THE SAME SIDE OF THE BODY DURING THE PAST 12 MONTHS"
   PER467   = "SUDDEN NUMBNESS ON ONE SIDE OF THE BODY DURING THE PAST 12 MONTHS"
   PER468   = "SUDDEN LOSS OF VISION DURING THE PAST 12 MONTHS"
   PER469   = "SUDDEN LOSS OF SPEECH DURING THE PAST 12 MONTHS"
   PER470   = "TOTAL NUMBER OF STROKE SYMPTOMS"
   PER471   = "HAD ONE OR MORE OF FOUR SYMPTOMS - DOCTOR SEEN"
   PER472   = "HAD ONE OR MORE OF FOUR SYMPTOMS - HOSPITALIZED"
   PER473	  = "HAD DIABETES OR SUGAR DIABETES IN PAST 12 MONTHS"
   PER474   = "HAD HIGH BLOOD PRESSURE OR HYPERTENSION IN PAST 12 MONTHS"
   PER475   = "HAD HEART DISEASE OR HEART TROUBLE IN PAST 12 MONTHS"
   PER476   = "HAD BLOOD CLOTS IN ARMS, LEGS, OR LUNGS IN PAST 12"
   PER477   = "EVER HAD A STROKE"
   PER478   = "AGE AT FIRST STROKE"
   PER480   = "HOSPITALIZED FOR FIRST STROKE"
   PER481   = "RESPONSE/NONRESPONSE OF 1/3 SUBSAMPLE 20+ FOR QUESTIONS 6-13 OF HI PAGE"
   PER482   = "NUMBER OF HOURS USUALLY SLEEPS"
   PER484   = "HOW OFTEN EAT BREAKFAST"
   PER485   = "HOW OFTEN EAT BETWEEN MEALS OR EVENING SNACKS"
   PER486   = "PHYSICAL ACTIVITY COMPARED WITH OTHER PERSONS SAME AGE"
   PER487   = "DRINKS WINE"
   PER488   = "USUAL DRINKS OF WINE AT ONE SITTING"
   PER489   = "DRINKS BEER"
   PER490   = "USUAL DRINKD OF BEER AT ONE SITTING"
   PER491   = "DRINKS LIQUOR"
   PER492   = "USUAL DRINKD OF LIQUOR AT ONE SITTING"
   PER493   = "FIVE OR MORE DRINKS AT A SINGLE SITTING IN PAST YEAR"
   PER494   = "SMOKING STATUS"
   PER495   = "CIGARETTES SMOKED PER DAY"
   PER497   = "HEIGHT"
   PER499   = "WEIGHT"
   PER502   = "HEIGHT (IN METRIC)"
   PER506   = "WEIGHT (IN METRIC)"
   PER510   = "PROBLEM GETTING MEDICAL CARE PAST 12M - NOT AVAILABLE WHEN NEEDED"
   PER511   = "PROBLEM GETTING MEDICAL CARE PAST 12M - COST OF CARE"
   PER512   = "PROBLEM GETTING MEDICAL CARE PAST 12M - DIDN'T KNOW WHERE TO GO"
   PER513   = "PROBLEM GETTING MEDICAL CARE PAST 12M - NO TRANSPORTATION"
   PER514   = "PROBLEM GETTING MEDICAL CARE PAST 12M - HOURS INCONVENIENT"
   PER515   = "PROBLEM GETTING MEDICAL CARE PAST 12M - HAD 1+ PROBLEMS GETTING CARE"
   PER516   = "PROBLEM GETTING MEDICAL CARE PAST 12M - PREVENTED FROM GETTING MC 1+ TIMES"
   ;
* ASSOCIATE VARIABLES WITH FORMAT VALUES;
 
FORMAT
   PSUNUMR   $PER001X.   WEEKCEN   PER002X.    SEGNUM    $PER003X.
   HHNUM     $PER004X.   PNUM      $PER005X.   RECTYPE   PER006X.
   PER17     PER007X.    QUARTER   PER008X.    YEAR      PER009X.
   PER28     PER010X.    PER29     PER011X.    PER30     PER012X.
   PER33     PER013X.    PER36     PER014X.    PER37     PER015X.
   PER40     PER016X.    PER42     PER017X.    PER43     $PER018X.
   PER44     PER019X.    PER45     PER020X.    PER46     PER021X.
   PER49     PER022X.    PER50     PER023X.    PER51     PER024X.
   PER52     PER025X.    PER53     PER026X.    PER55     PER027X.
   PER57     PER028X.    PER59     PER029X.    PER60     PER030X.
   PER61     PER031X.    PER63     PER032X.    PER64     PER033X.
   PER66     PER034X.    PER67     PER035X.    PER68     PER036X.
   PER70     PER037X.    PER71     $PER038X.   PER72     $PER039X.
   PER73     PER040X.    PER74     PER041X.    PER75     PER042X.
   PER76     PER043X.    PER77     PER044X.    PER80     PER045X.
   PER82     PER046X.    PER84     PER047X.    PER87     PER048X.
   PER89     PER049X.    PER91     PER050X.    PER94     PER051X.
   PER95     PER052X.    PER97     PER053X.    PER98     PER054X.
   PER99     PER055X.    PER100    PER056X.    PER106    PER057X.
   PER108    PER058X.    PER110    PER059X.    PER111    PER060X.
   PER113    PER061X.    PER115    PER062X.    PER120    PER063X.
   PER121    PER064X.    PER124    PER065X.    PER127    PER066X.
   PER128    PER067X.    PER129    PER068X.    PER135    PER069X.
   PER140    PER070X.    PER143    PER071X.    PER145    PER072X.
   PER147    PER073X.    PER149    PER074X.    PER150    PER075X.
   PER151    PER076X.    PER152    PER077X.    PER153    PER078X.
   PER154    PER079X.    PER155    PER080X.    PER156    PER081X.
   PER157    PER082X.    PER158    PER083X.    PER159    PER084X.
   PER161    PER085X.    PER175    PER086X.    PER180    $PER087X.
   PER181    $PER088X.   PER182    PER089X.    PER188    PER090X.
   PER193    PER091X.    PER199    PER092X.    PER201    PER093X.
   PER210    PER094X.    WTFA      PER095X.    PER228    PER096X.
   PER237    PER097X.    PER246    PER098X.    PER255    PER099X.
   PER264    PER100X.    PER273    PER101X.    PER282    PER102X.
   PER291    PER103X.    PER300    PER104X.    PER309    PER105X.
   PER318    PER106X.    PER327    PER107X.    PER336    PER108X.
   PER381    PER109X.    PER390    PER110X.    PER399    PER111X.
   PER408    PER112X.    PER417    PER113X.    PER426    PER114X.
   PER435    PER115X.    PER444    PER116X.    PER453    PER117X.
   PER465    PER118X.    PER466    PER119X.    PER467    PER120X.
   PER468    PER121X.    PER469    PER122X.    PER470    PER123X.
   PER471    PER124X.    PER472    PER125X.    PER473	 PER126X.
   PER474    PER127X.    PER475    PER128X.    PER476    PER129X.
   PER477    PER130X.    PER478    PER131X.    PER480    PER132X.
   PER481    PER133X.    PER482    PER134X.    PER484    PER135X.
   PER485    PER136X.    PER486    PER137X.    PER487    PER138X.
   PER488    PER139X.    PER489    PER140X.    PER490    PER141X.
   PER491    PER142X.    PER492    PER143X.    PER493    PER144X.
   PER494    PER145X.    PER495    PER146X.    PER497    PER147X.
   PER499    PER148X.    PER502    PER149X.    PER506    PER150X.
   PER510    PER151X.    PER511    PER152X.    PER512    PER153X.
   PER513    PER154X.    PER514    PER155X.    PER515    PER156X.
   PER516    PER157X.
   ;
 
PROC CONTENTS DATA=NHIS.PERSONSX;
 
PROC FREQ DATA=NHIS.PERSONSX;
TITLE1 'FREQUENCY REPORT FOR 1977 NHIS PERSON FILE';
TITLE2 '(WEIGHTED)';
TABLES RECTYPE/LIST MISSING;
WEIGHT WTFA;
 
PROC FREQ DATA=NHIS.PERSONSX;
TITLE1 'FREQUENCY REPORT FOR 1977 NHIS PERSON FILE';
TITLE2 '(UNWEIGHTED)';
TABLES RECTYPE/LIST MISSING;
 
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
              STATEMENT: FORMAT _ALL_;
RUN;

