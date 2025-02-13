DM 'CLE LOG; CLE OUT';
**************************************************************************
  February 9, 2006
 
THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
FILE FROM THE NHIS 1974 PERSONSX.DAT ASCII FILE.
 
NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
      GROUPED AS THEY ARE SHOWN IN THE FILE txt
      DOCUMENTATION.
 
THIS IS STORED IN PERSONSX.SAS
*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;
 
LIBNAME NHIS    'C:\NHIS1974\';
LIBNAME LIBRARY 'C:\NHIS1974\';
 
FILENAME ASCIIDAT 'C:\NHIS1974\PERSONSX.DAT';
 
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
   1                = "Quarter 1, 1974"
   2                = "Quarter 2, 1974"
   3                = "Quarter 3, 1974"
   4                = "Quarter 4, 1974"
   ;
  VALUE  PER009X
   4                = "1974"
   ;
  VALUE  PER010X
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
  VALUE  PER011X
   0                = "The 31 Large Self-representing SMSA's"
   1                = "SMSA-Self-representing"
   3                = "SMSA-Nonself-representing"
   4                = "Non-SMSA-Self-representing"
   6                = "Non-SMSA-Nonself-representing"
   ;
  VALUE  PER012X
   1                = "Northeast"
   2                = "North Central"
   3                = "South"
   4                = "West"
   ;
  VALUE  PER013X
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
  VALUE  PER014X
   1                = "In SMSA, in Central City"
   2                = "In SMSA, not in Central City"
   3                = "Not in SMSA"
   ;
  VALUE  PER015X
   1                = "SMSA"
   2                = "Non-SMSA - Nonfarm"
   3                = "Non-SMSA - Farm"
   ;
  VALUE  PER016X
   1                = "Housing Unit"
   2                = "Other"
   ;
  VALUE  PER017X
   ;
  VALUE  PER018X
   1-8              = "Number of calls"
   9                = "9+ calls"
   0                = "Not reported"
   ;
  VALUE  PER019X
   1                = "Yes - phone"
   2                = "No or none"
   3                = "Phone, but no number listed, or number refused"
   9                = "DK if phone or refused"
   .                = "Not reported"
   ;
  VALUE  PER020X
   1                = "Yes"
   2                = "No"
   3                = "Yes and no"
   .                = "Not reported"
   ;
  VALUE  PER021X
   1                = "Monday"
   2                = "Tuesday"
   3                = "Wednesday"
   4                = "Thursday"
   5                = "Friday"
   6                = "Saturday"
   7                = "Sunday"
   8                = "Unknown"
   ;
  VALUE  PER022X
   001-998          = "Number of minutes"
   999              = "999+ minutes"
   .                = "Not reported"
   ;
  VALUE  PER023X
   1                = "6:01 am - 12:00 noon"
   2                = "12:01pm -  6:00 pm"
   3                = "6:01 pm - 12:00 midnight"
   4                = "12:01pm -  6:00 am"
   .                = "Not reported"
   ;
  VALUE  PER024X
   1                = "White"
   2                = "Black"
   3                = "Other"
   ;
  VALUE  PER025X
   1                = "White"
   2                = "Other races"
   ;
  VALUE  PER026X
   1                = "Male"
   2                = "Female"
   ;
  VALUE  PER027X
   00               = "Under 1 year"
   01-98            = "Single years"
   99               = "99+ years"
   ;
  VALUE  PER028X
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
  VALUE  PER029X
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
  VALUE  PER030X
   1                = "Under 15 years"
   2                = "15-44"
   3                = "45-64"
   4                = "65+"
   ;
  VALUE  PER031X
   0                = "Under 17 years"
   1                = "Married - Spouse present"
   2                = "Widowed"
   3                = "Never married"
   4                = "Divorsed"
   5                = "Separated"
   6                = "Married - Spouse absent"
   ;
  VALUE  PER032X
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
  VALUE  PER033X
   1                = "Under 17 years of age"
   2                = "None"
   3                = "01-08 (elementary)"
   4                = "09-11 (high school)"
   5                = "12 (high school graduate)"
   6                = "13-15 (college)"
   7                = "16+ (college graduate +)"
   8                = "Unknown"
   ;
  VALUE  PER034X
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
  VALUE  PER035X
   1                = "Under 17 years of age"
   2                = "None"
   3                = "01-08 (elementary)"
   4                = "09-11 (high school)"
   5                = "12 (high school graduate)"
   6                = "13-15 (college)"
   7                = "16+ (college graduate +)"
   8                = "Unknown"
   ;
  VALUE  PER036X
   0                = "Female or Under 17 years of age"
   1                = "Nonveteran"
   2                = "Peacetime only"
   3                = "World War I"
   4                = "World War II"
   5                = "Korean War"
   6                = "Vietnam veteran"
   7                = "DK if served in Armed Forces"
   8                = "DK if war veteran"
   ;
  VALUE  PER037X
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
  VALUE  PER038X
   1                = "Under $3,000"
   2                = "$3,000-4,999"
   3                = "5,000-6,999"
   4                = "7,000-9,999"
   5                = "10,000-14,999"
   6                = "15,000+"
   7                = "Unknown"
   ;
  VALUE $PER039X
   "&"              = "Primary individual"
   "-"              = "Secondary individual"
   "0"              = "Primary family"
   "1"-"9"          = "Secondary families"
   ;
  VALUE $PER040X
   "&"              = "Unrelated individual living alone"
   "0"              = "Head of family or unrelated individual not living alone"
   "1"              = "Wife (husband living at home and not in Amed Forces)"
   "2"              = "Wife (husband living at home and is in Armed Forces)"
   "3"              = "Child of head or spouse"
   "4"              = "Grand child of head or spouse"
   "5"              = "Parent of head or spouse"
   "6"              = "Other relative"
   ;
  VALUE  PER041X
   1                = "Living alone"
   2                = "Living with nonrelative"
   3                = "Living with spouse"
   4                = "Living with relatives - other"
   ;
  VALUE  PER042X
   0                = "Under 6 years"
   1                = "Usually working"
   2                = "Keeping house (female)"
   3                = "Retlred - Health (45+ years)"
   4                = "Going to school"
   5                = "Something else"
   6                = "Unknown"
   7                = "Retired,Other (45+ years)"
   ;
  VALUE  PER043X
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
  VALUE  PER044X
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
  VALUE  PER045X
   017-999          = "Code Number"
   .                = "Not applicable"
   ;
  VALUE  PER046X
   ;
  VALUE  PER047X
   ;
  VALUE  PER048X
   001-995          = "Code number"
   .                = "Not applicable"
   ;
  VALUE  PER049X
   ;
  VALUE  PER050X
   ;
  VALUE  PER051X
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
  VALUE  PER052X
   1                = "Under 20 years"
   2                = "20-54 years"
   3                = "55-64 years"
   4                = "65-74 years"
   5                = "75+ years"
   6                = "Unknown and not reported"
   ;
  VALUE  PER053X
   00               = "Unrelated individuals"
   01-19            = "Family size"
   ;
  VALUE  PER054X
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
  VALUE  PER055X
   1                = "Can not perform Usual Activity"
   2                = "Can perform UA but limited in amount and kind"
   3                = "Can perform UA but limited in outside activities"
   4                = "Not limited"
   ;
  VALUE  PER056X
   1                = "Months"
   2                = "Years"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER057X
   00               = "Less than l month"
   01-98            = "Number of months or years"
   99               = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER058X
   00               = "None"
   01-14            = "Number of days"
   ;
  VALUE  PER059X
   00               = "None"
   01-14            = "Number of days"
   ;
  VALUE  PER060X
   1                = "Under 6 years of age"
   2                = "School-loss days"
   3                = "Work-loss days"
   ;
  VALUE  PER061X
   00               = "None or Under 6"
   01-14            = "Number of days"
   ;
  VALUE  PER062X
   00               = "None or Under 6"
   01-14            = "Number of days"
   ;
  VALUE  PER063X
   00               = "None"
   01-97            = "Numberof visits"
   ;
  VALUE  PER064X
   1                = "Number of visits known"
   2                = "Number of visits unknown"
   ;
  VALUE  PER065X
   00               = "None or Unknown"
   01-97            = "Number of visits"
   ;
  VALUE  PER066X
   1                = "Number of visits known"
   2                = "Number of visits unknown"
   ;
  VALUE  PER067X
   000              = "None or Unknown"
   001-998          = "Number of visits"
   ;
  VALUE  PER068X
   000              = "None"
   001-365          = "Number of days"
   ;
  VALUE  PER069X
   0                = "Never"
   1                = "Visit in past 2 weeks"
   3                = "2 weeks to less than 6 months"
   4                = "6 months to less than 12 months"
   5                = "1 year"
   6                = "2-4 years"
   7                = "5+ years"
   9                = "Unknown"
   ;
  VALUE  PER070X
   0                = "Never"
   1                = "Visit in 2 weeks"
   2                = "2 weeks to less than 6 months"
   3                = "6 months to less than 12 months"
   4                = "1 year"
   5                = "2-4 years"
   6                = "5+ years"
   8                = "Unknown"
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
   0                = "No episodes"
   1                = "All in federal hospitals"
   2                = "All in nonfederal hospitals"
   3                = "Both federal and nonfederal hospitals"
   ;
  VALUE  PER076X
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
  VALUE  PER077X
   1                = "Excellent"
   2                = "Good"
   3                = "Fair"
   4                = "Poor"
   5                = "Unknown"
   ;
  VALUE  PER078X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Age not in 05-24"
   ;
  VALUE  PER079X
   00               = "None"
   01-96            = "1-96 visits"
   97               = "97+ visits"
   99               = "Unknown"
   .                = "Age not in 05-24 or chr149=2"
   ;
  VALUE  PER080X
   00               = "None"
   01-96            = "1-96 visits"
   97               = "97+ visits"
   99               = "Unknown"
   .                = "Age not in 05-24 or chr149=2"
   ;
  VALUE  PER081X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Age not in 05-24 or chr149=1,3"
   ;
  VALUE  PER082X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Age not in 05-24 or chr149=1,3"
   ;
  VALUE  PER083X
   01               = "Does not know who to go to"
   02               = "It costs too much"
   03               = "No one in this area straightens teeth"
   04               = "Can not get appointment"
   05               = "Thinks braces or bands would be unattractive"
   06               = "Dentist or orthodentist advised us to wait"
   07               = "Do not have time"
   08               = "Too much pain and discomfort involved"
   09               = "Presently wearing a retainer or other device"
   10               = "Will start soon"
   11               = "Waiting till older, or waiting till teeth come in"
   12               = "Waiting for other reason"
   13               = "Dentist or orthodontist does not feel its needed"
   14               = "Parent or child does not feel its needed"
   15               = "Do not believe in it"
   16               = "Difficulty getting to the orthodontist"
   17               = "Technical problems"
   18               = "Other reason"
   19               = "Unknown"
   .                = "Ane not in 05-24 or chr149=1,3"
   ;
  VALUE  PER084X
   01               = "Does not know who to go to"
   02               = "It costs too much"
   03               = "No one in this area straightens teeth"
   04               = "Can not get appointment"
   05               = "Thinks braces or bands would be unattractive"
   06               = "Dentist or orthodentist advised us to wait"
   07               = "Do not have time"
   08               = "Too much pain and discomfort involved"
   09               = "Presently wearing a retainer or other device"
   10               = "Will start soon"
   11               = "Waiting till older, or waiting till teeth come in"
   12               = "Waiting for other reason"
   13               = "Dentist or orthodontist does not feel its needed"
   14               = "Parent or child does not feel its needed"
   15               = "Do not believe in it"
   16               = "Difficulty getting to the orthodontist"
   17               = "Technical problems"
   18               = "Other reason"
   19               = "Unknown"
   .                = "Ane not in 05-24 or chr149=1,3"
   ;
  VALUE  PER085X
   01               = "Does not know who to go to"
   02               = "It costs too much"
   03               = "No one in this area straightens teeth"
   04               = "Can not get appointment"
   05               = "Thinks braces or bands would be unattractive"
   06               = "Dentist or orthodentist advised us to wait"
   07               = "Do not have time"
   08               = "Too much pain and discomfort involved"
   09               = "Presently wearing a retainer or other device"
   10               = "Will start soon"
   11               = "Waiting till older, or waiting till teeth come in"
   12               = "Waiting for other reason"
   13               = "Dentist or orthodontist does not feel its needed"
   14               = "Parent or child does not feel its needed"
   15               = "Do not believe in it"
   16               = "Difficulty getting to the orthodontist"
   17               = "Technical problems"
   18               = "Other reason"
   19               = "Unknown"
   .                = "Ane not in 05-24 or chr149=1,3"
   ;
  VALUE  PER086X
   01               = "Does not know who to go to"
   02               = "It costs too much"
   03               = "No one in this area straightens teeth"
   04               = "Can not get appointment"
   05               = "Thinks braces or bands would be unattractive"
   06               = "Dentist or orthodentist advised us to wait"
   07               = "Do not have time"
   08               = "Too much pain and discomfort involved"
   09               = "Presently wearing a retainer or other device"
   10               = "Will start soon"
   11               = "Waiting till older, or waiting till teeth come in"
   12               = "Waiting for other reason"
   13               = "Dentist or orthodontist does not feel its needed"
   14               = "Parent or child does not feel its needed"
   15               = "Do not believe in it"
   16               = "Difficulty getting to the orthodontist"
   17               = "Technical problems"
   18               = "Other reason"
   19               = "Unknown"
   .                = "Ane not in 05-24 or chr149=1,3"
   ;
  VALUE  PER087X
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
  VALUE $PER088X
   "1"              = "l Room"
   "2"              = "2 Rooms"
   "3"              = "3 Rooms"
   "4"              = "4 Rooms"
   "5"              = "5 Rooms"
   "6"              = "6 Rooms"
   "7"              = "7 Rooms"
   "8"              = "8 Rooms"
   "9"              = "9+ Rooms"
   "-"              = "DK or Not reported"
   " "              = "Not a housing unit"
   ;
  VALUE $PER089X
   "1"              = "l Bedroom"
   "2"              = "2 Bedrooms"
   "3"              = "3 Bedrooms"
   "4"              = "4 Bedrooms"
   "5"              = "5 Bedrooms"
   "6"              = "6 Bedrooms"
   "7"              = "7 Bedrooms"
   "8"              = "8 Bedrooms"
   "9"              = "9+ Bedrooms"
   "-"              = "DK or Not reported"
   " "              = "Not a housing unit"
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
   ;
  VALUE  PER119X
   ;
  VALUE  PER120X
   ;
  VALUE  PER121X
   ;
  VALUE  PER122X
   1                = "Covered"
   2                = "Not covered"
   3                = "DK if covered"
   4                = "Under 65 years old"
   ;
  VALUE  PER123X
   1                = "Covered"
   2                = "Not covered"
   3                = "DK if covered"
   4                = "Has some coverage, but plan information not specified"
   ;
  VALUE  PER124X
   1                = "Yes has Blue plan"
   .                = "Not applicable"
   ;
  VALUE  PER125X
   1                = "Yes has prepaid group plan"
   .                = "Not applicable"
   ;
  VALUE  PER126X
   1                = "Yes, other plan"
   .                = "Not applicable"
   ;
  VALUE  PER127X
   1                = "Yes, insurance unknown name"
   .                = "Not applicable"
   ;
  VALUE  PER128X
   1                = "Covered"
   2                = "Not covered"
   3                = "DK if covered"
   4                = "Under 65 years old"
   ;
  VALUE  PER129X
   1                = "Covered"
   2                = "Not covered"
   3                = "DK if covered"
   4                = "Has some coverage, but plan information not specified"
   ;
  VALUE  PER130X
   1                = "Yes has Blue plan"
   .                = "Not applicable"
   ;
  VALUE  PER131X
   1                = "Yes has prepaid group plan"
   .                = "Not applicable"
   ;
  VALUE  PER132X
   1                = "Yes, other plan"
   .                = "Not applicable"
   ;
  VALUE  PER133X
   1                = "Yes, insurance unknown name"
   .                = "Not applicable"
   ;
  VALUE  PER134X
   01               = "Employment related reasons"
   02               = "Can not obtain insurance"
   03               = "Do not believe in insurance"
   04               = "Dissatisfied with previous insurance"
   05               = "Care through Medicare, Medicaid or Welfare"
   06               = "Healthy"
   07               = "Too expensive can not afford"
   08               = "Military care or Veteran's benefits"
   09               = "Other specified reasons"
   10               = "Unknown reason"
   11               = "Not applicable"
   .                = "Not applicable"
   ;
 
DATA NHIS.PERSONSX;
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1974\';
   INFILE ASCIIDAT MISSOVER TRUNCOVER LRECL=478;
 
* DEFINE LENGTH OF NUMERIC VARIABLES;
 
LENGTH
   WEEKCEN   3  RECTYPE   3  PER17     3  QUARTER   3  YEAR      3
   PER21     3  PER28     3  PER29     3  PER30     3  PER33     3
   PER36     3  PER37     3  PER40     3  PER42     3  PER43     3
   PER44     3  PER45     3  PER46     3  PER49     3  PER50     3
   PER51     3  PER52     3  PER53     3  PER55     3  PER57     3
   PER59     3  PER60     3  PER61     3  PER63     3  PER64     3
   PER66     3  PER67     3  PER68     3  PER70     3  PER73     3
   PER74     3  PER75     3  PER76     3  PER77     3  PER80     3
   PER82     3  PER84     3  PER87     3  PER89     3  PER91     3
   PER94     3  PER95     3  PER97     3  PER98     3  PER99     3
   PER100    3  PER106    3  PER108    3  PER110    3  PER111    3
   PER113    3  PER115    3  PER117    3  PER118    3  PER120    3
   PER121    3  PER124    3  PER127    3  PER128    3  PER129    3
   PER131    3  PER133    3  PER135    3  PER140    3  PER143    3
   PER145    3  PER149    3  PER150    3  PER152    3  PER154    3
   PER155    3  PER156    3  PER158    3  PER160    3  PER162    3
   PER175    3  PER182    6  PER188    6  PER193    6  PER201    6
   PER210    6  WTFA      6  PER228    6  PER237    6  PER246    6
   PER255    6  PER264    6  PER273    6  PER282    6  PER291    6
   PER300    6  PER309    6  PER318    6  PER327    6  PER336    6
   PER345    6  PER354    6  PER363    6  PER372    6  PER381    6
   PER390    6  PER399    6  PER408    6  PER417    6  PER426    6
   PER435    6  PER444    6  PER453    6  PER465    3  PER466    3
   PER467    3  PER468    3  PER469    3  PER470    3  PER471    3
   PER472    3  PER473    3  PER474    3  PER475    3  PER476    3
   PER477    3
   ;
* INPUT ALL VARIABLES;
 
INPUT
   PSUNUMR  $   3 - 5          WEEKCEN      6 - 7
   SEGNUM   $   8 - 9          HHNUM    $  10 - 11
   PNUM     $  12 - 13         RECTYPE     14 - 14
   PER17       17 - 18         QUARTER     19 - 19
   YEAR        20 - 20         PER21       21 - 22
   PER28       28 - 28         PER29       29 - 29
   PER30       30 - 31         PER33       33 - 33
   PER36       36 - 36         PER37       37 - 37
   PER40       40 - 41         PER42       42 - 42
   PER43       43 - 43         PER44       44 - 44
   PER45       45 - 45         PER46       46 - 48
   PER49       49 - 49         PER50       50 - 50
   PER51       51 - 51         PER52       52 - 52
   PER53       53 - 54         PER55       55 - 56
   PER57       57 - 58         PER59       59 - 59
   PER60       60 - 60         PER61       61 - 62
   PER63       63 - 63         PER64       64 - 65
   PER66       66 - 66         PER67       67 - 67
   PER68       68 - 69         PER70       70 - 70
   PER71    $  71 - 71         PER72    $  72 - 72
   PER73       73 - 73         PER74       74 - 74
   PER75       75 - 75         PER76       76 - 76
   PER77       77 - 79         PER80       80 - 81
   PER82       82 - 83         PER84       84 - 86
   PER87       87 - 88         PER89       89 - 90
   PER91       91 - 91         PER94       94 - 94
   PER95       95 - 96         PER97       97 - 97
   PER98       98 - 98         PER99       99 - 99
   PER100     100 - 101        PER106     106 - 107
   PER108     108 - 109        PER110     110 - 110
   PER111     111 - 112        PER113     113 - 114
   PER115     115 - 116        PER117     117 - 117
   PER118     118 - 119        PER120     120 - 120
   PER121     121 - 123        PER124     124 - 126
   PER127     127 - 127        PER128     128 - 128
   PER129     129 - 130        PER131     131 - 132
   PER133     133 - 134        PER135     135 - 136
   PER140     140 - 140        PER143     143 - 144
   PER145     145 - 145        PER149     149 - 149
   PER150     150 - 151        PER152     152 - 153
   PER154     154 - 154        PER155     155 - 155
   PER156     156 - 157        PER158     158 - 159
   PER160     160 - 161        PER162     162 - 163
   PER175     175 - 176        PER180   $ 180 - 180
   PER181   $ 181 - 181        PER182     182 - 187
   PER188     188 - 192        PER193     193 - 198
   PER201     201 - 209        PER210     210 - 218
   WTFA       219 - 227        PER228     228 - 236
   PER237     237 - 245        PER246     246 - 254
   PER255     255 - 263        PER264     264 - 272
   PER273     273 - 281        PER282     282 - 290
   PER291     291 - 299        PER300     300 - 308
   PER309     309 - 317        PER318     318 - 326
   PER327     327 - 335        PER336     336 - 344
   PER345     345 - 353        PER354     354 - 362
   PER363     363 - 371        PER372     372 - 380
   PER381     381 - 389        PER390     390 - 398
   PER399     399 - 407        PER408     408 - 416
   PER417     417 - 425        PER426     426 - 434
   PER435     435 - 443        PER444     444 - 452
   PER453     453 - 461        PER465     465 - 465
   PER466     466 - 466        PER467     467 - 467
   PER468     468 - 468        PER469     469 - 469
   PER470     470 - 470        PER471     471 - 471
   PER472     472 - 472        PER473     473 - 473
   PER474     474 - 474        PER475     475 - 475
   PER476     476 - 476        PER477     477 - 478
   ;
* DEFINE VARIABLE LABELS;
 
LABEL
   PSUNUMR  = "PSU - ORIGINAL CODE"
   WEEKCEN  = "WEEK - CENSUS CODE"
   SEGNUM   = "SEGMENT NUMBER"
   HHNUM    = "HOUSEHOLD NUMBER"
   PNUM     = "PERSON NUMBER"
   RECTYPE  = "RECORD TYPE (2)"
   PER17    = "CENSUS WEEK RECODE"
   QUARTER  = "PROCESSING QUARTER CODE"
   YEAR     = "PROCESSING YEAR"
   PER21    = "PROCESSING WEEK CODE"
   PER28    = "TYPE OF PSU"
   PER29    = "REGION"
   PER30    = "TABULATION AREA"
   PER33    = "GEOGRAPHIC IDENTIFICATION"
   PER36    = "SMSA - NON-SMSA RESIDENCE"
   PER37    = "TYPE OF LIVING QUARTERS"
   PER40    = "INTERVIEWER NUMBER"
   PER42    = "NUMBER OF CALLS"
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
   PER74    = "USUAL ACTIVITY"
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
   PER98    = "LIMITATION OF ACTIVITY DUE TO CHRONIC CONDITIONS"
   PER99    = "DURATION OF LIMITATION - UNIT"
   PER100   = "DURATION OF LIMITATION - NUMBER OF UNIT"
   PER106   = "RESTRICTED ACTIVITY DAYS IN PAST 2 WEEKS"
   PER108   = "BED DISABILITY DAYS IN PAST 2 WEEKS"
   PER110   = "WORK/SCHOOL LOSS DAY IDENTIFIER"
   PER111   = "WORK OR SCHOOL-LOSS DAYS IN PAST 2 WEEKS"
   PER113   = "NUMBER OF DAYS IN HOSPITAL IN PAST 2 WEEKS"
   PER115   = "DENTAL VISITS IN 2 WEEKS"
   PER117   = "DENTAL VISITS IN 12 MONTHS - 	KNOWN/UNKNOWN CODE"
   PER118   = "DENTAL VISITS IN 12 MONTHS - NUMBER OF VISITS"
   PER120   = "DOCTOR VISITS IN 12 MONTHS - KNOWN/UNKNOWN CODE"
   PER121   = "DOCTOR VISITS IN 12 MONTHS - NUMBER OF VISITS"
   PER124   = "NUMBER OF SHORT-STAY HOSPITAL DAYS IN PAST 12 MONTHS"
   PER127   = "INTERVAL SINCE LAST DOCTOR VISIT"
   PER128   = "INTERVAL SINCE LAST DENTAL VISIT"
   PER129   = "NUMBER OF SHORT-STAY HOSPITAL EPISODES"
   PER131   = "TOTAL CONDITIONS"
   PER133   = "TOTAL CHRONIC CONDITIONS"
   PER135   = "NUMBER OF CHRONIC CONDITIONS CAUSING LA"
   PER140   = "HOSPITAL OWNERSHIP FOR SHORT-STAY EPISODES"
   PER143   = "FAMILY STRUCTURE"
   PER145   = "HEALTH STATUS"
   PER149   = "EVER HAD ORTHODANTIC CARE"
   PER150   = "ORTHODONTIC VISITS IN 12 MONTHS"
   PER152   = "ORTHODONTIC VISITS IN 2 WEEKS"
   PER154   = "RESPONDENT THINKS TEETH NEED STRAIGHTENING"
   PER155   = "TOLD TEETH NEED TO BE STRAIGHTENED"
   PER156   = "FIRST REASON FOR NOT OBTAINING ORTHODONTIC CARE"
   PER158   = "SECOND REASON FOR NOT OBTAINING ORTHODONTIC CARE"
   PER160   = "THIRD REASON FOR NOT OBTAINING ORTHODONTIC CARE"
   PER162   = "MAIN REASON FOR NOT OBTAINING ORTHODONTIC CARE"
   PER175   = "INCOME OF HEAD OF FAMILY"
   PER180   = "TOTAL ROOMS"
   PER181   = "TOTAL NUMBER OF BEDROOMS"
   PER182   = "BASIC WEIGHT BEFORE ASC ADJUSTMENT"
   PER188   = "FINAL BASIC WEIGHT"
   PER193   = "6.5 WEIGHT"
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
   PER345   = "ESTIMATED DENTAL VISITS PAST 12M - QUARTER"
   PER354   = "ESTIMATED DENTAL VISITS PAST 12M - SEMIANNUAL"
   PER363   = "ESTIMATED DENTAL VISITS PAST 12M - ANNUAL"
   PER372   = "ESTIMATED DENTAL VISITS PAST 12M - BIANNUAL"
   PER381   = "ESTIMATED DOCTOR VISITS PAST 12M - QUARTER"
   PER390   = "ESTIMATED DOCTOR VISITS PAST 12M - SEMIANNUAL"
   PER399   = "ESTIMATED DOCTOR VISITS PAST 12M - ANNUAL"
   PER408   = "ESTIMATED DOCTOR VISITS PAST 12M - BIANNUAL"
   PER417   = "ESTIMATED SHORT-STAY HOSPITAL DAYS PAST 12M - QUARTER"
   PER426   = "ESTIMATED SHORT-STAY HOSPITAL DAYS PAST 12M - SEMIANNUAL"
   PER435   = "ESTIMATED SHORT-STAY HOSPITAL DAYS PAST 12M - ANNUAL"
   PER444   = "ESTIMATED SHORT-STAY HOSPITAL DAYS PAST 12M - BIANNUAL"
   PER453   = "ANNUAL ESTIMATED NUMBER OF SHORT-STAY HOSPITAL EPISODES PAST 12M"
   PER465   = "MEDICARE FOR HOSPITAL BILLS"
   PER466   = "PRIVATE HOSPITAL INSURANCE"
   PER467   = "HAS BLUE PLAN"
   PER468   = "HAS PREPAID PLAN"
   PER469   = "HAS SOME OTHER TYPE PRIVATE PLAN"
   PER470   = "HAS INSURANCE, UNKNOWN NAME OF PRIVATE PLAN"
   PER471   = "MEDICARE FOR SURGICAL BILLS"
   PER472   = "PRIVATE SURGICAL INSURANCE"
   PER473   = "HAS BLUE PLAN"
   PER474   = "HAS PREPAID PLAN"
   PER475   = "HAS SOME OTHER TYPE PRIVATE PLAN"
   PER476   = "HAS INSURANCE, UNKNOWN NAME OF PRIVATE PLAN"
   PER477   = "MAIN REASON FOR NO INSURANCE"
   ;
* ASSOCIATE VARIABLES WITH FORMAT VALUES;
 
FORMAT
   PSUNUMR   $PER001X.   WEEKCEN   PER002X.    SEGNUM    $PER003X.
   HHNUM     $PER004X.   PNUM      $PER005X.   RECTYPE   PER006X.
   PER17     PER007X.    QUARTER   PER008X.    YEAR      PER009X.
   PER21     PER010X.    PER28     PER011X.    PER29     PER012X.
   PER30     PER013X.    PER33     PER014X.    PER36     PER015X.
   PER37     PER016X.    PER40     PER017X.    PER42     PER018X.
   PER43     PER019X.    PER44     PER020X.    PER45     PER021X.
   PER46     PER022X.    PER49     PER023X.    PER50     PER024X.
   PER51     PER025X.    PER52     PER026X.    PER53     PER027X.
   PER55     PER028X.    PER57     PER029X.    PER59     PER030X.
   PER60     PER031X.    PER61     PER032X.    PER63     PER033X.
   PER64     PER034X.    PER66     PER035X.    PER67     PER036X.
   PER68     PER037X.    PER70     PER038X.    PER71     $PER039X.
   PER72     $PER040X.   PER73     PER041X.    PER74     PER042X.
   PER75     PER043X.    PER76     PER044X.    PER77     PER045X.
   PER80     PER046X.    PER82     PER047X.    PER84     PER048X.
   PER87     PER049X.    PER89     PER050X.    PER91     PER051X.
   PER94     PER052X.    PER95     PER053X.    PER97     PER054X.
   PER98     PER055X.    PER99     PER056X.    PER100    PER057X.
   PER106    PER058X.    PER108    PER059X.    PER110    PER060X.
   PER111    PER061X.    PER113    PER062X.    PER115    PER063X.
   PER117    PER064X.    PER118    PER065X.    PER120    PER066X.
   PER121    PER067X.    PER124    PER068X.    PER127    PER069X.
   PER128    PER070X.    PER129    PER071X.    PER131    PER072X.
   PER133    PER073X.    PER135    PER074X.    PER140    PER075X.
   PER143    PER076X.    PER145    PER077X.    PER149    PER078X.
   PER150    PER079X.    PER152    PER080X.    PER154    PER081X.
   PER155    PER082X.    PER156    PER083X.    PER158    PER084X.
   PER160    PER085X.    PER162    PER086X.    PER175    PER087X.
   PER180    $PER088X.   PER181    $PER089X.   PER182    PER090X.
   PER188    PER091X.    PER193    PER092X.    PER201    PER093X.
   PER210    PER094X.    WTFA      PER095X.    PER228    PER096X.
   PER237    PER097X.    PER246    PER098X.    PER255    PER099X.
   PER264    PER100X.    PER273    PER101X.    PER282    PER102X.
   PER291    PER103X.    PER300    PER104X.    PER309    PER105X.
   PER318    PER106X.    PER327    PER107X.    PER336    PER108X.
   PER345    PER109X.    PER354    PER110X.    PER363    PER111X.
   PER372    PER112X.    PER381    PER113X.    PER390    PER114X.
   PER399    PER115X.    PER408    PER116X.    PER417    PER117X.
   PER426    PER118X.    PER435    PER119X.    PER444    PER120X.
   PER453    PER121X.    PER465    PER122X.    PER466    PER123X.
   PER467    PER124X.    PER468    PER125X.    PER469    PER126X.
   PER470    PER127X.    PER471    PER128X.    PER472    PER129X.
   PER473    PER130X.    PER474    PER131X.    PER475    PER132X.
   PER476    PER133X.    PER477    PER134X.
   ;
 
PROC CONTENTS DATA=NHIS.PERSONSX;
 
PROC FREQ DATA=NHIS.PERSONSX;
TITLE1 'FREQUENCY REPORT FOR 1974 NHIS PERSON FILE';
TITLE2 '(WEIGHTED)';
TABLES RECTYPE/LIST MISSING;
WEIGHT WTFA;
 
PROC FREQ DATA=NHIS.PERSONSX;
TITLE1 'FREQUENCY REPORT FOR 1974 NHIS PERSON FILE';
TITLE2 '(UNWEIGHTED)';
TABLES RECTYPE/LIST MISSING;
 
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
              STATEMENT: FORMAT _ALL_;
RUN;
