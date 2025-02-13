DM 'CLE LOG; CLE OUT';
**************************************************************************
  December 2, 2009
 
THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
FILE FROM THE NHIS 1974 HEALTHIN.DAT ASCII FILE.

NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
      GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
      DOCUMENTATION.

THIS IS STORED IN HEALTHIN.SAS.
*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;

LIBNAME NHIS      'C:\NHIS1974\';
LIBNAME LIBRARY   'C:\NHIS1974\';
FILENAME ASCIIDAT 'C:\PU\1974\dat\HEALTHIN.dat';

* DEFINE VARIABLE VALUES FOR REPORT;
 
PROC FORMAT LIBRARY=LIBRARY;
  VALUE  HIC0001X
   ;
  VALUE  HIC0002X
   01, 21, 41, 61, 81   = "Week 01"
   02, 22, 42, 62, 82   = "Week 02"
   03, 23, 43, 63, 83   = "Week 03"
   04, 24, 44, 64, 84   = "Week 04"
   05, 25, 45, 65, 85   = "Week 05"
   06, 26, 46, 66, 86   = "Week 06"
   07, 27, 47, 67, 87   = "Week 07"
   08, 28, 48, 68, 88   = "Week 08"
   09, 29, 49, 69, 89   = "Week 09"
   10, 30, 50, 70, 90   = "Week 10"
   11, 31, 51, 71, 91   = "Week 11"
   12, 32, 52, 72, 92   = "Week 12"
   13, 33, 53, 73, 93   = "Week 13"
   ;
  VALUE  HIC0003X
   ;
  VALUE  HIC0004X
   ;
  VALUE  HIC0005X
   ;
  VALUE  HIC0006X
   6                    = "Health Insurance Record"
   ;
  VALUE  HIC0007X
   01                   = "01, 21, 41, 61, 81"
   02                   = "02, 22, 42, 62, 82"
   03                   = "03, 23, 43, 63, 83"
   04                   = "04, 24, 44, 64, 84"
   05                   = "05, 25, 45, 65, 85"
   06                   = "06, 26, 46, 66, 86"
   07                   = "07, 27, 47, 67, 87"
   08                   = "08, 28, 48, 68, 88"
   09                   = "09, 29, 49, 69, 89"
   10                   = "10, 30, 50, 70, 90"
   11                   = "11, 31, 51, 71, 91"
   12                   = "12, 32, 52, 72, 92"
   13                   = "13, 33, 53, 73, 93"
   ;
  VALUE  HIC0008X
   1                    = "Quarter 1, 1974"
   2                    = "Quarter 2, 1974"
   3                    = "Quarter 3, 1974"
   4                    = "Quarter 4, 1974"
   ;
  VALUE  HIC0009X
   4                    = "1974"
   ;
  VALUE  HIC0010X
   01                   = "01, 21, 41, 61, 81"
   02                   = "02, 22, 42, 62, 82"
   03                   = "03, 23, 43, 63, 83"
   04                   = "04, 24, 44, 64, 84"
   05                   = "05, 25, 45, 65, 85"
   06                   = "06, 26, 46, 66, 86"
   07                   = "07, 27, 47, 67, 87"
   08                   = "08, 28, 48, 68, 88"
   09                   = "09, 29, 49, 69, 89"
   10                   = "10, 30, 50, 70, 90"
   11                   = "11, 31, 51, 71, 91"
   12                   = "12, 32, 52, 72, 92"
   13                   = "13, 33, 53, 73, 93"
   ;
  VALUE  HIC0011X
   0                    = "The 31 Large Self-representing SMSA's"
   1                    = "SMSA-Self-representing"
   3                    = "SMSA-Nonself-representing"
   4                    = "Non-SMSA-Self-representing"
   6                    = "Non-SMSA-Nonself-representing"
   ;
  VALUE  HIC0012X
   1                    = "Northeast (includes Sections 1 and 2)"
   2                    = "North Central (includes Sections 3, 4 and 5)"
   3                    = "South (includes Sections 6, 7, 8 and 9)"
   4                    = "West (includes Sections 10 and 11)"
   ;
  VALUE  HIC0013X
   .                    = "Non-self-representing sections and self-representing SMSA's"
   34                   = "Boston"                   50               = "St. Louis"
   35                   = "New York"                 51               = "Houston"
   36                   = "Philadelphia"             52               = "Dallas"
   37                   = "Pittsburgh"               53               = "Washington, D.C"
   38                   = "Detroit"                  54               = "Seattle-Everett"
   39                   = "Chicago"                  55               = "San Diego"
   40                   = "Cincinnati"               56               = "Anaheim-Santa Ana-Garden Grove"
   41                   = "Los Angeles-Long Beach"   57               = "Miami"
   42                   = "San Francisco-Oakland"    58               = "Denver"
   43                   = "Baltimore"                59               = "San Bernardino-Riverside-Ontario"
   44                   = "Atlanta"                  60               = "Indianapolis"
   45                   = "Buffalo"                  61               = "San Jose"
   46                   = "Cleveland"                62               = "New Orleans"
   47                   = "Minneapolis-St.Paul"      63               = "Tampa-St. Petersburg"
   48                   = "Milwaukee"                64               = "Portland, Oregon"
   49                   = "Kansas City"
   ;
  VALUE  HIC0014X
   1                    = "In SMSA; in Central City"
   2                    = "In SMSA; not in Central City"
   3                    = "Not in SMSA"
   ;
  VALUE  HIC0015X
   1                    = "SMSA"
   2                    = "Non-SMSA - Nonfarm"
   3                    = "Non-SMSA - Farm"
   ;
  VALUE  HIC0016X
   1                    = "Housing Unit"
   2                    = "Other"
   ;
  VALUE  HIC0017X
   ;
  VALUE  HIC0018X
   0                    = "Not reported"
   1-8                  = "Number of calls"
   9                    = "9+ calls"
   ;
  VALUE  HIC0019X
   1                    = "Yes - phone"
   2                    = "No or none"
   3                    = "Phone, but no number listed, or number refused"
   9                    = "DK if phone or refused"
   .                    = "Not reported"
   ;
  VALUE  HIC0020X
   1                    = "Yes"
   2                    = "No"
   3                    = "Yes and No"
   .                    = "Not reported"
   ;
  VALUE  HIC0021X
   1                    = "Monday"
   2                    = "Tuesday"
   3                    = "Wednesday"
   4                    = "Thursday"
   5                    = "Friday"
   6                    = "Saturday"
   7                    = "Sunday"
   8                    = "Unknown"
   ;
  VALUE  HIC0022X
   001-998              = "Number of minutes"
   999                  = "999+ minutes"
   .                    = "Not reported"
   ;
  VALUE  HIC0023X
   1                    = "6:01 a.m. - 12:00 a.m. (noon)"
   2                    = "12:01 p.m. - 6:00 p.m"
   3                    = "6:01 p.m. - 12:00 p.m. (midnight)"
   4                    = "12:01 a.m. - 6:00 a.m"
   .                    = "Not reported"
   ;
  VALUE  HIC0024X
   1                    = "White"
   2                    = "Negro"
   3                    = "Other"
   ;
  VALUE  HIC0025X
   1                    = "White"
   2                    = "Other races"
   ;
  VALUE  HIC0026X
   1                    = "Male"
   2                    = "Female"
   ;
  VALUE  HIC0027X
   00                   = "Under 1 year"
   01-98                = "Number of years"
   99                   = "99+ years"
   ;
  VALUE  HIC0028X
   01                   = "00-04 years"
   02                   = "05-14 years"
   03                   = "15-24 years"
   04                   = "25-34 years"
   05                   = "35-44 years"
   06                   = "45-54 years"
   07                   = "55-64 years"
   08                   = "65-74 years"
   09                   = "75+ years"
   ;
  VALUE  HIC0029X
   01                   = "Under 6 years"
   02                   = "06-16 years"
   03                   = "17-24 years"
   04                   = "25-34 years"
   05                   = "35-44 years"
   06                   = "45-54 years"
   07                   = "55-64 years"
   08                   = "65-74 years"
   09                   = "75+ years"
   ;
  VALUE  HIC0030X
   1                    = "Under 15 years"
   2                    = "15-44 years"
   3                    = "45-64 years"
   4                    = "65+ years"
   ;
  VALUE  HIC0031X
   0                    = "Under 17 years"
   1                    = "Married - Spouse present"
   2                    = "Widowed"
   3                    = "Never married"
   4                    = "Divorced"
   5                    = "Separated"
   6                    = "Married - Spouse absent"
   ;
  VALUE  HIC0032X
   01                   = "Under 17 years of age"
   02                   = "None"
   03                   = "1-4 years completed"
   04                   = "5-7 years completed"
   05                   = "8 years completed"
   06                   = "9-11 years completed"
   07                   = "12 years completed(high school graduate)"
   08                   = "13-14 years completed"
   09                   = "15 years completed"
   10                   = "16 years completed(college graduate)"
   11                   = "17+ years completed(graduate school)"
   12                   = "Unknown"
   13                   = "Not reported"
   ;
  VALUE  HIC0033X
   1                    = "Under 17 years of age"
   2                    = "None"
   3                    = "01-08 (elementary)"
   4                    = "09-11 (high school)"
   5                    = "12 (high school graduate)"
   6                    = "13-15 (college)"
   7                    = "16+ (college graduate +)"
   8                    = "Unknown"
   ;
  VALUE  HIC0034X
   01                   = "Under 17 years of age"
   02                   = "None"
   03                   = "1-4 years completed"
   04                   = "5-7 years completed"
   05                   = "8 years completed"
   06                   = "9-11 years completed"
   07                   = "12 years completed (high school graduate)"
   08                   = "13-14 years completed"
   09                   = "15 years completed"
   10                   = "16 years completed (college graduate)"
   11                   = "17+ years completed (graduate school)"
   12                   = "Unknown"
   13                   = "Not reported"
   ;
  VALUE  HIC0035X
   1                    = "Under 17 years of age"
   2                    = "None"
   3                    = "01-08 (elementary)"
   4                    = "09-11 (high school)"
   5                    = "12 (high school graduate)"
   6                    = "13-15 (college)"
   7                    = "16+ (college graduate +)"
   8                    = "Unknown"
   ;
  VALUE  HIC0036X
   0                    = "Female or under 17 years of age"
   1                    = "Nonveteran"
   2                    = "Peacetime only"
   3                    = "World War I"
   4                    = "World War II"
   5                    = "Korean War"
   6                    = "Vietnam veteran"
   7                    = "DK if served in Armed Forces"
   8                    = "DK if war veteran"
   ;
  VALUE  HIC0037X
   01                   = "Under $1,000"
   02                   = "1,000-1,999"
   03                   = "2,000-2,999"
   04                   = "3,000-3,999"
   05                   = "4,000-4,999"
   06                   = "5,000-5,999"
   07                   = "6,000-6,999"
   08                   = "7,000-9,999"
   09                   = "10,000-14,999"
   10                   = "15,000-24,999"
   11                   = "25,000+"
   12                   = "Unknown"
   13                   = "Not reported"
   ;
  VALUE  HIC0038X
   1                    = "Under $3,000"
   2                    = "3,000-4,999"
   3                    = "5,000-6,999"
   4                    = "7,000-9,999"
   5                    = "10,000-14,999"
   6                    = "15,000+"
   7                    = "Unknown"
   ;
  VALUE $HIC0039X
   '&'                  = "Primary individual"
   '-'                  = "Secondary individual"
   '0'                  = "Primary family"
   '1'-'9'              = "Secondary families"
   ;
  VALUE $HIC0040X
   '&'                  = "Unrelated individual living alone"
   '0'                  = "Head of family or unrelated individual not living alone"
   '1'                  = "Wife (husband living at home and not in Armed Forces)"
   '2'                  = "Wife (husband living at home and is in Armed Forces)"
   '3'                  = "Child of head or spouse"
   '4'                  = "Grandchild of head or spouse"
   '5'                  = "Parent of head or spouse"
   '6'                  = "Other relative"
   ;
  VALUE  HIC0041X
   1                    = "Living alone"
   2                    = "Living with nonrelatives"
   3                    = "Living with relatives - married"
   4                    = "Living with relatives - other"
   ;
  VALUE  HIC0042X
   0                    = "Under 6 years"
   1                    = "Usually working"
   2                    = "Keeping house (female)"
   3                    = "Retired - Health (45+ years)"
   4                    = "Going to school"
   5                    = "Something else"
   6                    = "Unknown"
   7                    = "Retired, Other (45+ years)"
   ;
  VALUE  HIC0043X
   0                    = "Under 17 years"
   1                    = "Worked in past 2 weeks"
   2                    = "Did not work, has job, not on layoff and not looking for work"
   3                    = "Did not work, has job, looking for work"
   4                    = "Did not work, has job, on layoff"
   5                    = "Did not work, has job, on layoff and looking for work"
   6                    = "Did not work, has job, unknown if looking or on layoff"
   7                    = "Did not work, no job, looking for work or on layoff"
   8                    = "Not in labor force (17+)"
   ;
  VALUE  HIC0044X
   0                    = "Never worked"
   1                    = "Private paid"
   2                    = "Federal Government"
   3                    = "State Government"
   4                    = "Local Government"
   5                    = "Incorporated business"
   6                    = "Self employed"
   7                    = "Without pay"
   8                    = "Not in Labor Force"
   9                    = "Unknown or not reported"
   ;
  VALUE  HIC0045X
   017-999              = "Code Number"
   .                    = "Not applicable"
   ;
  VALUE  HIC0046X
   ;
  VALUE  HIC0047X
   ;
  VALUE  HIC0048X
   001-995              = "Code number"
   .                    = "Not applicable"
   ;
  VALUE  HIC0049X
   ;
  VALUE  HIC0050X
   ;
  VALUE  HIC0051X
   1                    = "Self entirely"
   2                    = "Self partly"
   3                    = "Spouse"
   4                    = "Mother"
   5                    = "Father"
   6                    = "Other female family member"
   7                    = "Other male family member"
   8                    = "Other"
   9                    = "Not reported"
   ;
  VALUE  HIC0052X
   1                    = "Under 20 years"
   2                    = "20-54 years"
   3                    = "55-64 years"
   4                    = "65-74 years"
   5                    = "75+ years"
   6                    = "Unknown and not reported"
   ;
  VALUE  HIC0053X
   00                   = "Unrelated individuals"
   01-97                = "Family size"
   ;
  VALUE  HIC0054X
   0                    = "Unrelated individuals"
   1                    = "One member"
   2                    = "2 members"
   3                    = "3 members"
   4                    = "4 members"
   5                    = "5 members"
   6                    = "6 members"
   7                    = "7 members"
   8                    = "8+ members"
   ;
  VALUE  HIC0055X
   1                    = "Cannot perform Usual Activity"
   2                    = "Can perform UA but limited in amount and kind"
   3                    = "Can perform UA but limited in outside activities"
   4                    = "Not limited (including unknown)"
   ;
  VALUE  HIC0056X
   1                    = "Months"
   2                    = "Years"
   3                    = "Unknown"
   .                    = "Not applicable"
   ;
  VALUE  HIC0057X
   00                   = "Less than l month"
   01-98                = "Number of months or years"
   99                   = "Unknown"
   .                    = "Not applicable"
   ;
  VALUE  HIC0058X
   00                   = "None"
   01-14                = "Number of days"
   ;
  VALUE  HIC0059X
   00                   = "None"
   01-14                = "Number of days"
   ;
  VALUE  HIC0060X
   1                    = "Under 6 years of age"
   2                    = "School-loss days"
   3                    = "Work-loss days"
   ;
  VALUE  HIC0061X
   00                   = "None or Under 6"
   01-14                = "Number of days"
   ;
  VALUE  HIC0062X
   00                   = "None"
   01-14                = "Number of days"
   ;
  VALUE  HIC0063X
   00                   = "None"
   01-97                = "Number of visits"
   ;
  VALUE  HIC0064X
   1                    = "Number of visits known"
   2                    = "Number of visits unknown"
   ;
  VALUE  HIC0065X
   00                   = "None or Unknown"
   01-97                = "Number of visits"
   ;
  VALUE  HIC0066X
   1                    = "Number of visits known"
   2                    = "Number of visits unknown"
   ;
  VALUE  HIC0067X
   000                  = "None or Unknown"
   001-998              = "Number of visits"
   ;
  VALUE  HIC0068X
   000                  = "None"
   001-365              = "Number of days"
   ;
  VALUE  HIC0069X
   0                    = "Never"
   1                    = "Visit in past 2 weeks"
   3                    = "2 weeks to less than 6 months"
   4                    = "6 months to less than 12 months"
   5                    = "1 year"
   6                    = "2-4 years"
   7                    = "5+ years"
   9                    = "Unknown"
   ;
  VALUE  HIC0070X
   0                    = "Never"
   1                    = "Visit in 2 weeks"
   2                    = "2 weeks to less than 6 months"
   3                    = "6 months to less than 12 months"
   4                    = "1 year"
   5                    = "2-4 years"
   6                    = "5+ years"
   8                    = "Unknown"
   ;
  VALUE  HIC0071X
   ;
  VALUE  HIC0072X
   ;
  VALUE  HIC0073X
   ;
  VALUE  HIC0074X
   ;
  VALUE  HIC0075X
   0                    = "No episodes"
   1                    = "All in federal hospitals"
   2                    = "All in nonfederal hospitals"
   3                    = "Both federal and nonfederal hospitals"
   ;
  VALUE  HIC0076X
   01                   = "Both parents, no other adults"
   02                   = "Mother only"
   03                   = "Father only"
   04                   = "Both parents and other adult relative"
   05                   = "Mother and other adult relative"
   06                   = "Father and other adult relative"
   07                   = "No parent, but one adult relative"
   08                   = "No parent, but two or more adult relatives"
   09                   = "Other"
   10                   = "Not applicable, 25+ years and/or ever married"
   ;
  VALUE  HIC0077X
   1                    = "Excellent"
   2                    = "Good"
   3                    = "Fair"
   4                    = "Poor"
   5                    = "Unknown"
   ;
  VALUE  HIC0078X
   1                    = "Yes"
   2                    = "No"
   3                    = "Unknown"
   .                    = "Age NE 05-24"
   ;
  VALUE  HIC0079X
   00                   = "None"
   01-96                = "1-96 visits"
   97                   = "97+ visits"
   .                    = "Age NE 05-24 or 149=2"
   ;
  VALUE  HIC0080X
   00                   = "None"
   01-96                = "1-96 visits"
   97                   = "97+ visits"
   .                    = "Age NE 05-24 or 149=2"
   ;
  VALUE  HIC0081X
   1                    = "Yes"
   2                    = "No"
   3                    = "Unknown"
   .                    = "Age NE 05-24 or 149=1,3"
   ;
  VALUE  HIC0082X
   1                    = "Yes"
   2                    = "No"
   3                    = "Unknown"
   .                    = "Age NE 05-24 or 149=1,3"
   ;
  VALUE  HIC0083X
   01                   = "Doesn't know who to go to"
   02                   = "It costs too much"
   03                   = "No one in this area straightens teeth"
   04                   = "Cannot get appointment"
   05                   = "Thinks braces or bands would be unattractive"
   06                   = "Dentist or orthodontist advised us to wait"
   07                   = "Don't have time"
   08                   = "Too much pain and discomfort involved"
   09                   = "Presently wearing a retainer or other device"
   10                   = "Will start soon (waiting for appointment etc.)"
   11                   = "Wait until older, or waiting until teeth come"
   12                   = "Waiting for other reason"
   13                   = "Dentist or orthodontist doesn't feel it's needed"
   14                   = "Parent or child doesn't feel it's needed"
   15                   = "Doesn't believe in it"
   16                   = "Difficulty getting to the orthodontist"
   17                   = "Technical problems (mouth too small, teeth too soft, etc.)"
   18                   = "Other reason"
   19                   = "Unknown"
   .                    = "Age NE 05-24 or 149=1,3 or not reported"
   ;
  VALUE  HIC0084X
   01                   = "Doesn't know who to go to"
   02                   = "It costs too much"
   03                   = "No one in this area straightens teeth"
   04                   = "Cannot get appointment"
   05                   = "Thinks braces or bands would be unattractive"
   06                   = "Dentist or orthodontist advised us to wait"
   07                   = "Don't have time"
   08                   = "Too much pain and discomfort involved"
   09                   = "Presently wearing a retainer or other device"
   10                   = "Will start soon (waiting for appointment etc.)"
   11                   = "Wait until older, or waiting until teeth come"
   12                   = "Waiting for other reason"
   13                   = "Dentist or orthodontist doesn't feel it's needed"
   14                   = "Parent or child doesn't feel it's needed"
   15                   = "Doesn't believe in it"
   16                   = "Difficulty getting to the orthodontist"
   17                   = "Technical problems (mouth too small, teeth too soft, etc.)"
   18                   = "Other reason"
   19                   = "Unknown"
   .                    = "Age NE 05-24 or 149=1,3 or not reported"
   ;
  VALUE  HIC0085X
   01                   = "Doesn't know who to go to"
   02                   = "It costs too much"
   03                   = "No one in this area straightens teeth"
   04                   = "Cannot get appointment"
   05                   = "Thinks braces or bands would be unattractive"
   06                   = "Dentist or orthodontist advised us to wait"
   07                   = "Don't have time"
   08                   = "Too much pain and discomfort involved"
   09                   = "Presently wearing a retainer or other device"
   10                   = "Will start soon (waiting for appointment etc.)"
   11                   = "Wait until older, or waiting until teeth come"
   12                   = "Waiting for other reason"
   13                   = "Dentist or orthodontist doesn't feel it's needed"
   14                   = "Parent or child doesn't feel it's needed"
   15                   = "Doesn't believe in it"
   16                   = "Difficulty getting to the orthodontist"
   17                   = "Technical problems (mouth too small, teeth too soft, etc.)"
   18                   = "Other reason"
   19                   = "Unknown"
   .                    = "Age NE 05-24 or 149=1,3 or not reported"
   ;
  VALUE  HIC0086X
   01                   = "Doesn't know who to go to"
   02                   = "It costs too much"
   03                   = "No one in this area straightens teeth"
   04                   = "Cannot get appointment"
   05                   = "Thinks braces or bands would be unattractive"
   06                   = "Dentist or orthodontist advised us to wait"
   07                   = "Don't have time"
   08                   = "Too much pain and discomfort involved"
   09                   = "Presently wearing a retainer or other device"
   10                   = "Will start soon (waiting for appointment etc.)"
   11                   = "Wait until older, or waiting until teeth come"
   12                   = "Waiting for other reason"
   13                   = "Dentist or orthodontist doesn't feel it's needed"
   14                   = "Parent or child doesn't feel it's needed"
   15                   = "Doesn't believe in it"
   16                   = "Difficulty getting to the orthodontist"
   17                   = "Technical problems (mouth too small, teeth too soft, etc.)"
   18                   = "Other reason"
   19                   = "Unknown"
   .                    = "Age NE 05-24 or 149=1,3 or not reported"
   ;
  VALUE  HIC0087X
   01                   = "Under $1,000"
   02                   = "1,000-1,999"
   03                   = "2,000-2,999"
   04                   = "3,000-3,999"
   05                   = "4,000-4,999"
   06                   = "5,000-5,999"
   07                   = "6,000-6,999"
   08                   = "7,000-9,999"
   09                   = "10,000-14,999"
   10                   = "15,000-24,999"
   11                   = "25,000 and over"
   12                   = "Unknown"
   13                   = "No income received"
   ;
  VALUE $HIC0088X
   '1'                  = "l Room"
   '2'                  = "2 Rooms"
   '3'                  = "3 Rooms"
   '4'                  = "4 Rooms"
   '5'                  = "5 Rooms"
   '6'                  = "6 Rooms"
   '7'                  = "7 Rooms"
   '8'                  = "8 Rooms"
   '9'                  = "9+ Rooms"
   '-'                  = "DK or Not reported"
   ' '                  = "Not a housing unit"
   ;
  VALUE $HIC0089X
   '0'                  = "None"
   '1'                  = "l Bedroom"
   '2'                  = "2 Bedrooms"
   '3'                  = "3 Bedrooms"
   '4'                  = "4 Bedrooms"
   '5'                  = "5 Bedrooms"
   '6'                  = "6 Bedrooms"
   '7'                  = "7 Bedrooms"
   '8'                  = "8 Bedrooms"
   '9'                  = "9+ Bedrooms"
   '-'                  = "DK or Not reported"
   ' '                  = "Not a housing unit"
   ;
  VALUE  HIC0090X
   ;
  VALUE  HIC0091X
   ;
  VALUE  HIC0092X
   ;
  VALUE  HIC0093X
   ;
  VALUE  HIC0094X
   ;
  VALUE  HIC0095X
   ;
  VALUE  HIC0096X
   ;
  VALUE  HIC0097X
   ;
  VALUE  HIC0098X
   ;
  VALUE  HIC0099X
   ;
  VALUE  HIC0100X
   ;
  VALUE  HIC0101X
   ;
  VALUE  HIC0102X
   ;
  VALUE  HIC0103X
   ;
  VALUE  HIC0104X
   ;
  VALUE  HIC0105X
   ;
  VALUE  HIC0106X
   ;
  VALUE  HIC0107X
   ;
  VALUE  HIC0108X
   ;
  VALUE  HIC0109X
   ;
  VALUE  HIC0110X
   ;
  VALUE  HIC0111X
   ;
  VALUE  HIC0112X
   ;
  VALUE  HIC0113X
   ;
  VALUE  HIC0114X
   ;
  VALUE  HIC0115X
   ;
  VALUE  HIC0116X
   ;
  VALUE  HIC0117X
   ;
  VALUE  HIC0118X
   ;
  VALUE  HIC0119X
   ;
  VALUE $HIC0120X
   ;
  VALUE  HIC0121X
   ;
  VALUE  HIC0122X
   1                    = "Covered - 65+"
   2                    = "Not covered - 65+"
   3                    = "DK if covered - 65+"
   4                    = "Under 65 years old"
   ;
  VALUE  HIC0123X
   1                    = "Covered"
   2                    = "Not covered"
   3                    = "DK if covered"
   4                    = "Has some coverage, but plan information not specified"
   ;
  VALUE  HIC0124X
   1                    = "Both Medicare and Private"
   2                    = "Medicare, but unknown or not covered under private"
   3                    = "Private, but unknown or not covered under medicare"
   4                    = "Not covered under Medicare or private"
   5                    = "Unknown if covered under Medicare or private"
   6                    = "Under 65+ years"
   ;
  VALUE  HIC0125X
   1                    = "Yes, 1+ group plans"
   .                    = "Not applicable"
   ;
  VALUE  HIC0126X
   1                    = "Yes, has 1+ individual plans"
   .                    = "Not applicable"
   ;
  VALUE  HIC0127X
   1-5                  = "Number of plans"
   .                    = "Not applicable"
   ;
  VALUE  HIC0128X
   1                    = "Yes has Blue plan"
   .                    = "Not applicable"
   ;
  VALUE  HIC0129X
   1                    = "Yes has prepaid group plan"
   .                    = "Not applicable"
   ;
  VALUE  HIC0130X
   1                    = "Yes, other plan"
   .                    = "Not applicable"
   ;
  VALUE  HIC0131X
   1                    = "Yes, insurance unknown name"
   .                    = "Not applicable"
   ;
  VALUE  HIC0132X
   01                   = "Medicare only"
   02                   = "Medicare with Blue only"
   03                   = "Medicare with prepaid only"
   04                   = "Medicare with other only"
   05                   = "Medicare with Blue and prepaid only"
   06                   = "Medicare with Blue and other only"
   07                   = "Medicare with prepaid and other only"
   08                   = "Medicare with Blue, prepaid and other only"
   09                   = "Blue only"
   10                   = "Prepaid only"
   11                   = "Other only"
   12                   = "Blue and prepaid only"
   13                   = "Blue and other only"
   14                   = "Prepaid and other only"
   15                   = "Blue, prepaid and other only"
   .                    = "Not applicable"
   ;
  VALUE  HIC0133X
   1                    = "Covered"
   2                    = "Not covered - 65+"
   3                    = "DK if covered - 65+"
   4                    = "Under 65 years"
   ;
  VALUE  HIC0134X
   1                    = "Covered"
   2                    = "Not covered"
   3                    = "DK if covered"
   4                    = "Has some coverage, but plan information not specified"
   ;
  VALUE  HIC0135X
   1                    = "Both Medicare and Private"
   2                    = "Medicare, but unknown or not covered under private"
   3                    = "Private, but unknown or not covered under Medicare"
   4                    = "Not covered under Medicare or private"
   5                    = "Unknown if covered under Medicare and private"
   6                    = "Under 65 years"
   ;
  VALUE  HIC0136X
   1                    = "Yes, 1+ group plans"
   .                    = "Not applicable"
   ;
  VALUE $HIC0137X
   '1'                  = "Yes, 1+ individual plans"
   ' '                  = "Not applicable"
   ;
  VALUE  HIC0138X
   1-5                  = "Number of plans"
   .                    = "Not applicable"
   ;
  VALUE  HIC0139X
   1                    = "Yes, has Blue plan"
   .                    = "Not applicable"
   ;
  VALUE  HIC0140X
   1                    = "Yes, has prepaid group plan"
   .                    = "Not applicable"
   ;
  VALUE  HIC0141X
   1                    = "Yes, has other plan"
   .                    = "Not applicable"
   ;
  VALUE  HIC0142X
   1                    = "Yes, Insurance unknown name"
   .                    = "Not applicable"
   ;
  VALUE  HIC0143X
   01                   = "Medicare only"
   02                   = "Medicare with Blue only"
   03                   = "Medicare with prepaid only"
   04                   = "Medicare with other only"
   05                   = "Medicare with Blue and prepaid only"
   06                   = "Medicare with Blue and other only"
   07                   = "Medicare with prepaid and other only"
   08                   = "Medicare with Blue, prepaid and other only"
   09                   = "Blue only"
   10                   = "Prepaid only"
   11                   = "Other only"
   12                   = "Blue and prepaid only"
   13                   = "Blue and other only"
   14                   = "Prepaid and other only"
   15                   = "Blue, prepaid and other only"
   .                    = "Not applicable"
   ;
  VALUE $HIC0144X
   '1'                  = "Covered"
   '2'                  = "Not covered - 65+"
   '3'                  = "DK if covered - 65+"
   '4'                  = "Under 65 years"
   ;
  VALUE  HIC0145X
   1                    = "Covered"
   2                    = "Not covered"
   3                    = "DK if covered"
   4                    = "Has some coverage, but plan information not specified"
   ;
  VALUE  HIC0146X
   1                    = "Both Medicare and Private"
   2                    = "Medicare, but unknown or not covered under private"
   3                    = "Private, but unknown or not covered under Medicare"
   4                    = "Not covered under Medicare or private"
   5                    = "Unknown if covered under Medicare and private"
   6                    = "Under 65 years"
   ;
  VALUE  HIC0147X
   1                    = "Yes, 1+ group plans"
   .                    = "Not applicable"
   ;
  VALUE  HIC0148X
   1                    = "Yes, 1+ individual plans"
   .                    = "Not applicable"
   ;
  VALUE  HIC0149X
   1-5                  = "Number of plans"
   .                    = "Not applicable"
   ;
  VALUE  HIC0150X
   1                    = "Yes, has Blue plan"
   .                    = "Not applicable"
   ;
  VALUE $HIC0151X
   '1'                  = "Yes, has prepaid group plan"
   ' '                  = "Not applicable"
   ;
  VALUE  HIC0152X
   1                    = "Yes, has other plan"
   .                    = "Not applicable"
   ;
  VALUE  HIC0153X
   1                    = "Yes, Insurance unknown name"
   .                    = "Not applicable"
   ;
  VALUE  HIC0154X
   01                   = "Medicare only"
   02                   = "Medicare with Blue only"
   03                   = "Medicare with prepaid only"
   04                   = "Medicare with other only"
   05                   = "Medicare with Blue and prepaid only"
   06                   = "Medicare with Blue and other only"
   07                   = "Medicare with prepaid and other only"
   08                   = "Medicare with Blue, prepaid and other only"
   09                   = "Blue only"
   10                   = "Prepaid only"
   11                   = "Other only"
   12                   = "Blue and prepaid only"
   13                   = "Blue and other only"
   14                   = "Prepaid and other only"
   15                   = "Blue, prepaid and other only"
   .                    = "Not applicable"
   ;
  VALUE  HIC0155X
   1                    = "Yes"
   .                    = "Not applicable"
   ;
  VALUE  HIC0156X
   1                    = "Yes"
   .                    = "Not applicable"
   ;
  VALUE  HIC0157X
   1                    = "Yes"
   .                    = "Not applicable"
   ;
  VALUE $HIC0158X
   '1'                  = "Yes"
   ' '                  = "Not applicable"
   ;
  VALUE  HIC0159X
   1                    = "Yes"
   .                    = "Not applicable"
   ;
  VALUE  HIC0160X
   1                    = "Yes"
   .                    = "Not applicable"
   ;
  VALUE  HIC0161X
   1                    = "Yes"
   .                    = "Not applicable"
   ;
  VALUE  HIC0162X
   1                    = "Yes"
   .                    = "Not applicable"
   ;
  VALUE  HIC0163X
   1                    = "Yes"
   .                    = "Not applicable"
   ;
  VALUE  HIC0164X
   1                    = "Yes"
   .                    = "Not applicable"
   ;
  VALUE  HIC0165X
   01                   = "Employment related reasons"
   02                   = "Can't obtain insurance"
   03                   = "Do not believe in insurance"
   04                   = "Dissatisfied with previous insurance"
   05                   = "Care through Medicare, Medicaid, or Welfare"
   06                   = "Healthy"
   07                   = "Too expensive, can't afford"
   08                   = "Military care or Veteran's benefits"
   09                   = "Other specified reasons"
   10                   = "Unknown reason"
   11,.                 = "Not applicable"
   ;

DATA NHIS.HEALTHIN;
* CREATE A SAS DATA SET STORED IN DIR C:\NHIS1974\;
   INFILE ASCIIDAT LRECL=532;

* DEFINE LENGTH OF NUMERIC VARIABLES;
 
LENGTH
   PSURANDR  3  WEEKCEN   3  SEGNUM    3  HHNUM     3  PNUM      3
   RECTYPE   3  WEEKPROC  3  QTRPROC   3  YEARPRC   3  WEEKPRC   3
   PSUTYPE   3  REGION    3  LSRSMSA   3  SMSA      3  MSA2      3
   LIVQTR    3  INTNUM    3  NUMCALL   3  PHONE     3  OBSINT    3
   WKDAY     3  INTLENG   3  INTTIME   3  RACE      3  RACER     3
   SEX       3  AGE       3  AGER1     3  AGER2     3  AGER3     3
   MARSTAT   3  EDUC      3  EDUCR     3  EDUCAD    3  EDUCADR   3
   VETERAN   3  INCOME    3  INCOMER   3  FAMRELR   3  USUALACT  3
   EMPLOY    3  WKCLASS   3  INDUSTRY  3  INDUSR1   3  INDUSR2   3
   OCCUP     3  OCCUPR1   3  OCCUPR2   3  RESPOND   3  RESPAGE   3
   FAMSIZE   3  FAMSIZER  3  LACHRONC  3  LADURUNT  3  LADURNUM  3
   RADAY     3  BDDAY     3  WSLDAYI   3  WSLDAY    3  HPTDAY2W  3
   DTL12     3  DTAL12U   3  DTAL12N   3  DV12I     3  DV12NUM   3
   HEP12     3  DVINT     3  DTLINT    3  HDENUM    3  CONDTOT   3
   CONDCHR   3  LACHRON   3  HPLSSE    3  FAMSTRUC  3  HLTHSTAT  3
   ORDTEVR   3  ORDT12M   3  ORDTC2W   3  TEETHSTR  3  TOLDHSTR  3
   NOORTHD1  3  NOORTHD2  3  NOORTHD3  3  NOORTHDM  3  INCHEADF  3
   WTBFAD    8  WTFAL     4  WTFBL     4  WTFQ      5  WTFS      5
   WTFA      5  WTFB      5  WT65      5  WT65B     5  WTRAD2W   5
   WTRAD2WB  5  WTWLD2W   5  WTWLD2WB  5  WTHPD2W   5  WTHPD2WB  5
   WTDTL2W   5  WTDTL2WB  5  DV12WPQ   5  DV12WPS   5  DV12WPA   5
   DV12WPB   5  WTBDD2W   5  WTBDD2WB  5  DV12WPQ   5  DV12WPS   5
   DV12WPA   5  DV12WPB   5  HDA12WPQ  5  HDA12WPS  5  HDA12WPA  5
   HEP12WPA  5  HI_471    3  HI_472    3  HI_473    3  HI_474    3
   HI_475    3  HI_477    3  HI_478    3  HI_479    3  HI_480    3
   HI_481    3  HI_482    3  HI_487    3  HI_488    3  HI_489    3
   HI_490    3  HI_493    3  HI_494    3  HI_495    3  HI_496    3
   HI_497    3  HI_498    3  HI_504    3  HI_505    3  HI_506    3
   HI_507    3  HI_509    3  HI_510    3  HI_512    3  HI_513    3
   HI_514    3  HI_521    3  HI_522    3  HI_523    3  HI_525    3
   HI_526    3  HI_527    3  HI_528    3  HI_529    3  HI_530    3
   HI_531    3
   ;
* INPUT ALL VARIABLES;
 
INPUT
   PSURANDR      3 -    5      WEEKCEN       6 -    7
   SEGNUM        8 -    9      HHNUM        10 -   11
   PNUM         12 -   13      RECTYPE      14 -   14
   WEEKPROC     17 -   18      QTRPROC      19 -   19
   YEARPRC      20 -   20      WEEKPRC      21 -   22
   PSUTYPE      28 -   28      REGION       29 -   29
   LSRSMSA      30 -   31      SMSA         33 -   33
   MSA2         36 -   36      LIVQTR       37 -   37
   INTNUM       40 -   41      NUMCALL      42 -   42
   PHONE        43 -   43      OBSINT       44 -   44
   WKDAY        45 -   45      INTLENG      46 -   48
   INTTIME      49 -   49      RACE         50 -   50
   RACER        51 -   51      SEX          52 -   52
   AGE          53 -   54      AGER1        55 -   56
   AGER2        57 -   58      AGER3        59 -   59
   MARSTAT      60 -   60      EDUC         61 -   62
   EDUCR        63 -   63      EDUCAD       64 -   65
   EDUCADR      66 -   66      VETERAN      67 -   67
   INCOME       68 -   69      INCOMER      70 -   70
   @71 FAMTYPE  $CHAR1.        @72 FAMREL   $CHAR1.
   FAMRELR      73 -   73      USUALACT     74 -   74
   EMPLOY       75 -   75      WKCLASS      76 -   76
   INDUSTRY     77 -   79      INDUSR1      80 -   81
   INDUSR2      82 -   83      OCCUP        84 -   86
   OCCUPR1      87 -   88      OCCUPR2      89 -   90
   RESPOND      91 -   91      RESPAGE      94 -   94
   FAMSIZE      95 -   96      FAMSIZER     97 -   97
   LACHRONC     98 -   98      LADURUNT     99 -   99
   LADURNUM    100 -  101      RADAY       106 -  107
   BDDAY       108 -  109      WSLDAYI     110 -  110
   WSLDAY      111 -  112      HPTDAY2W    113 -  114
   DTL12       115 -  116      DTAL12U     117 -  117
   DTAL12N     118 -  119      DV12I       120 -  120
   DV12NUM     121 -  123      HEP12       124 -  126
   DVINT       127 -  127      DTLINT      128 -  128
   HDENUM      129 -  130      CONDTOT     131 -  132
   CONDCHR     133 -  134      LACHRON     135 -  136
   HPLSSE      140 -  140      FAMSTRUC    143 -  144
   HLTHSTAT    145 -  145      ORDTEVR     149 -  149
   ORDT12M     150 -  151      ORDTC2W     152 -  153
   TEETHSTR    154 -  154      TOLDHSTR    155 -  155
   NOORTHD1    156 -  157      NOORTHD2    158 -  159
   NOORTHD3    160 -  161      NOORTHDM    162 -  163
   INCHEADF    175 -  176      @180 ROOMTOT  $CHAR1.
   @181 BEDROOM  $CHAR1.       WTBFAD      182 -  187 .1
   WTFAL       188 -  192      WTFBL       193 -  198
   WTFQ        201 -  209      WTFS        210 -  218
   WTFA        219 -  227      WTFB        228 -  236
   WT65        237 -  245      WT65B       246 -  254
   WTRAD2W     255 -  263      WTRAD2WB    264 -  272
   WTWLD2W     291 -  299      WTWLD2WB    300 -  308
   WTHPD2W     309 -  317      WTHPD2WB    318 -  326
   WTDTL2W     327 -  335      WTDTL2WB    336 -  344
   DV12WPQ     345 -  353      DV12WPS     354 -  362
   DV12WPA     363 -  371      DV12WPB     372 -  380
   WTBDD2W     273 -  281      WTBDD2WB    282 -  290
   DV12WPQ     381 -  389      DV12WPS     390 -  398
   DV12WPA     399 -  407      DV12WPB     408 -  416
   HDA12WPQ    417 -  425      HDA12WPS    426 -  434
   HDA12WPA    435 -  443      @444 HDA12WPB $CHAR9.
   HEP12WPA    453 -  461      HI_471      471 -  471
   HI_472      472 -  472      HI_473      473 -  473
   HI_474      474 -  474      HI_475      475 -  475
   HI_477      477 -  477      HI_478      478 -  478
   HI_479      479 -  479      HI_480      480 -  480
   HI_481      481 -  481      HI_482      482 -  483
   HI_487      487 -  487      HI_488      488 -  488
   HI_489      489 -  489      HI_490      490 -  490
   @491 HI_491   $CHAR1.       HI_493      493 -  493
   HI_494      494 -  494      HI_495      495 -  495
   HI_496      496 -  496      HI_497      497 -  497
   HI_498      498 -  499      @503 HI_503   $CHAR1.
   HI_504      504 -  504      HI_505      505 -  505
   HI_506      506 -  506      HI_507      507 -  507
   HI_509      509 -  509      HI_510      510 -  510
   @511 HI_511   $CHAR1.       HI_512      512 -  512
   HI_513      513 -  513      HI_514      514 -  515
   HI_521      521 -  521      HI_522      522 -  522
   HI_523      523 -  523      @524 HI_524   $CHAR1.
   HI_525      525 -  525      HI_526      526 -  526
   HI_527      527 -  527      HI_528      528 -  528
   HI_529      529 -  529      HI_530      530 -  530
   HI_531      531 -  532
   ;
* DEFINE VARIABLE LABELS;
 
LABEL
   PSURANDR = "PSU - RANDOM RECODE"
   WEEKCEN  = "WEEK - CENSUS CODE (NUMBERED WITHIN SAMPLE RECODE)"
   SEGNUM   = "SEGMENT NUMBER"
   HHNUM    = "HOUSEHOLD NUMBER"
   PNUM     = "PERSON NUMBER"
   RECTYPE  = "RECORD TYPE"
   WEEKPROC = "CENSUS WEEK RECODE (NUMBERED WITHIN SAMPLE RECODE)"
   QTRPROC  = "PROCESSING QUARTER CODE"
   YEARPRC  = "PROCESSING YEAR"
   WEEKPRC  = "PROCESSING WEEK CODE (NUMBERED WITHIN PROCESSING QUARTER)"
   PSUTYPE  = "TYPE OF PSU"
   REGION   = "REGION"
   LSRSMSA  = "NHIS SECTION CODE"
   SMSA     = "GEOGRAPHIC IDENTIFICATION"
   MSA2     = "SMSA - NON-SMSA RESIDENCE"
   LIVQTR   = "TYPE OF LIVING QUARTERS"
   INTNUM   = "INTERVIEWER NUMBER (NOT EDITED)"
   NUMCALL  = "NUMBER OF CALLS (NOT EDITED)"
   PHONE    = "TELEPHONE (NOT EDITED)"
   OBSINT   = "OBSERVED INTERVIEW (NOT EDITED)"
   WKDAY    = "DAY OF WEEK INTERVIEW COMPLETED"
   INTLENG  = "LENGTH OF INTERVIEW"
   INTTIME  = "TIME OF DAY OF INTERVIEW (BEGINNING TIME) (NOT EDITED)"
   RACE     = "RACE (DETAIL)"
   RACER    = "RACE RECODE"
   SEX      = "SEX"
   AGE      = "AGE"
   AGER1    = "AGE RECODE #1"
   AGER2    = "AGE RECODE #2"
   AGER3    = "AGE RECODE #3"
   MARSTAT  = "MARITAL STATUS"
   EDUC     = "EDUCATION OF INDIVIDUAL - COMPLETED YEARS"
   EDUCR    = "EDUCATION OF INDIVIDUAL - RECODE"
   EDUCAD   = "EDUCATION OF FAMILY HEAD OR UNRELATED INDIVIDUAL - DETAIL"
   EDUCADR  = "EDUCATION OF HEAD - RECODE"
   VETERAN  = "VETERAN STATUS"
   INCOME   = "FAMILY INCOME OR INCOME OF UNRELATED INDIVIDUAL"
   INCOMER  = "FAMILY INCOME RECODE"
   FAMTYPE  = "TYPE OF FAMILY"
   FAMREL   = "RELATIONSHIP"
   FAMRELR  = "FAMILY RELATIONSHIP RECODE (LIVING ARRANGEMENT)"
   USUALACT = "USUAL ACTIVITY"
   EMPLOY   = "CURRENT ACTIVITY DURING PAST 2 WEEKS"
   WKCLASS  = "CLASS OF WORKER"
   INDUSTRY = "INDUSTRY DETAIL CODE"
   INDUSR1  = "INDUSTRY RECODE 1"
   INDUSR2  = "INDUSTRY RECODE 2"
   OCCUP    = "OCCUPATION DETAIL CODE"
   OCCUPR1  = "OCCUPATION RECODE 1"
   OCCUPR2  = "OCCUPATION RECODE 2"
   RESPOND  = "RESPONDENT"
   RESPAGE  = "AGE OF RESPONDENT"
   FAMSIZE  = "ACTUAL FAMILY SIZE"
   FAMSIZER = "SIZE OF FAMILY RECODE"
   LACHRONC = "LIMITATION OF ACTIVITY DUE TO CHRONIC CONDITIONS"
   LADURUNT = "DURATION OF LIMITATION OF ACTIVITY - UNIT"
   LADURNUM = "DURATION OF LIMITATION OF ACTIVITY - NUMBER OF UNIT"
   RADAY    = "RESTRICTED ACTIVITY DAYS IN PAST 2 WEEKS"
   BDDAY    = "BED DISABILITY DAYS IN PAST 2 WEEKS"
   WSLDAYI  = "WORK/SCHOOL-LOSS DAY IDENTIFIER"
   WSLDAY   = "WORK OR SCHOOL-LOSS DAYS IN PAST 2 WEEKS"
   HPTDAY2W = "NUMBER OF DAYS IN HOSPITAL IN PAST 2 WEEKS"
   DTL12    = "DENTAL VISITS IN 2 WEEKS"
   DTAL12U  = "DENTAL VISITS IN 12 MONTHS - KNOWN/UNKNOWN CODE"
   DTAL12N  = "DENTAL VISITS IN 12 MONTHS - NUMBER OF VISITS"
   DV12I    = "DOCTOR VISITS IN 12 MONTHS - KNOWN/UNKNOWN CODE"
   DV12NUM  = "DOCTOR VISITS IN 12 MONTHS - NUMBER OF VISITS"
   HEP12    = "NUMBER OF SHORT-STAY HOSPITAL DAYS IN PAST 12 MONTHS"
   DVINT    = "INTERVAL SINCE LAST DOCTOR VISIT"
   DTLINT   = "INTERVAL SINCE LAST DENTAL VISIT"
   HDENUM   = "NUMBER OF SHORT-STAY HOSPITAL EPISODES"
   CONDTOT  = "TOTAL CONDITIONS"
   CONDCHR  = "TOTAL CHRONIC CONDITIONS"
   LACHRON  = "NUMBER OF CHRONIC CONDITIONS CAUSING LIMITATION OF ACTIVITY"
   HPLSSE   = "HOSPITAL OWNERSHIP FOR SHORT-STAY EPISODES"
   FAMSTRUC = "FAMILY STRUCTURE"
   HLTHSTAT = "HEALTH STATUS"
   ORDTEVR  = "EVER HAD ORTHODONTIC CARE"
   ORDT12M  = "ORTHODONTIC VISITS IN 12 MONTHS"
   ORDTC2W  = "ORTHODONTIC VISITS IN 2 WEEKS"
   TEETHSTR = "RESPONDENT THINKS TEETH NEED STRAIGHTENING"
   TOLDHSTR = "TOLD TEETH NEED TO BE STRAIGHTENED"
   NOORTHD1 = "FIRST REASON FOR NOT OBTAINING ORTHODONTIC CARE"
   NOORTHD2 = "SECOND REASON FOR NOT OBTAINING ORTHODONTIC CARE"
   NOORTHD3 = "THIRD REASON FOR NOT OBTAINING ORTHODONTIC CARE"
   NOORTHDM = "MAIN REASON FOR NOT OBTAINING ORTHODONTIC CARE"
   INCHEADF = "INCOME OF HEAD OF FAMILY"
   ROOMTOT  = "TOTAL ROOMS"
   BEDROOM  = "TOTAL NUMBER OF BEDROOMS"
   WTBFAD   = "BASIC WEIGHT BEFORE ASC ADJUSTMENT (XXXXX.X)"
   WTFAL    = "FINAL BASIC WEIGHT ORIGINAL"
   WTFBL    = "6.5 WEIGHT ORIGINAL (FINAL BASIC WEIGHT X 6.5)"
   WTFQ     = "BASIC WEIGHT QUARTER"
   WTFS     = "BASIC WEIGHT SEMIANNUAL (BASIC WEIGHT/2)"
   WTFA     = "BASIC WEIGHT ANNUAL     (BASIC WEIGHT/4)"
   WTFB     = "BASIC WEIGHT BIANNUAL   (BASIC WEIGHT/8)"
   WT65     = "6.5 WEIGHT"
   WT65B    = "6.5 WEIGHT BIANNUAL (WEIGHT 6.5/2)"
   WTRAD2W  = "ESTIMATED RESTRICTED ACTIVITY DAYS IN PAST 2 WEEKS"
   WTRAD2WB = "ESTIMATED RESTRICTED ACTIVITY DAYS IN PAST 2 WEEKS BIANNUAL"
   WTWLD2W  = "ESTIMATED WORK/SCHOOL LOSS DAYS IN PAST 2 WEEKS"
   WTWLD2WB = "ESTIMATED WORK/SCHOOL LOSS DAYS IN PAST 2 WEEKS BIANNUAL"
   WTHPD2W  = "ESTIMATED HOSPITAL DAYS IN PAST 2 WEEKS"
   WTHPD2WB = "ESTIMATED HOSPITAL DAYS IN PAST 2 WEEKS BIANNUAL"
   WTDTL2W  = "ESTIMATED DENTAL VISITS IN PAST 2 WEEKS"
   WTDTL2WB = "ESTIMATED DENTAL VISITS IN PAST 2 WEEKS BIANNUAL"
   DV12WPQ  = "ESTIMATED DENTAL VISITS IN PAST 12 MONTHS QUARTER"
   DV12WPS  = "ESTIMATED DENTAL VISITS IN PAST 12 MONTHS SEMIANNUAL"
   DV12WPA  = "ESTIMATED DENTAL VISITS IN PAST 12 MONTHS ANNUAL"
   DV12WPB  = "ESTIMATED DENTAL VISITS IN PAST 12 MONTHS BIANNUAL"
   WTBDD2W  = "ESTIMATED BED DAYS IN PAST 2 WEEKS"
   WTBDD2WB = "ESTIMATED BED DAYS IN PAST 2 WEEKS BIANNUAL"
   DV12WPQ  = "ESTIMATED DOCTOR VISITS IN PAST 12 MONTH QUARTER"
   DV12WPS  = "ESTIMATED DOCTOR VISITS IN PAST 12 MONTH SEMIANNUAL"
   DV12WPA  = "ESTIMATED DOCTOR VISITS IN PAST 12 MONTH ANNUAL"
   DV12WPB  = "ESTIMATED DOCTOR VISITS IN PAST 12 MONTH BIANNUAL"
   HDA12WPQ = "ESTIMATED SHORT-STAY HOSPITAL DAYS IN PAST 12 MONTHS QUARTER"
   HDA12WPS = "ESTIMATED SHORT-STAY HOSPITAL DAYS IN PAST 12 MONTHS SEMIANNUAL"
   HDA12WPA = "ESTIMATED SHORT-STAY HOSPITAL DAYS IN PAST 12 MONTHS ANNUAL"
   HDA12WPB = "ESTIMATED SHORT-STAY HOSPITAL DAYS IN PAST 12 MONTHS BIANNUAL"
   HEP12WPA = "ESTIMATED NUMBER OF SHORT-STAY HOSPITAL EPISODES IN PAST 12 MONTHS"
   HI_471   = "MEDICARE FOR HOSPITAL BILLS"
   HI_472   = "PRIVATE HOSPITAL INSURANCE"
   HI_473   = "MEDICARE - PRIVATE RECODE FOR PERSONS 65+"
   HI_474   = "HAS 1+ PRIVATE PLANS OBTAINED THROUGH A GROUP (PERSONS WITH 472=1)"
   HI_475   = "HAS 1+ PRIVATE PLANS NOT OBTAINED THROUGH A GROUP"
   HI_477   = "NUMBER OF PRIVATE HOSPITAL PLANS (PERSONS WITH 472=1)"
   HI_478   = "HAS BLUE PLAN (PERSONS WITH 472=1)"
   HI_479   = "HAS PREPAID PLAN  (PERSONS WITH 472=1)"
   HI_480   = "HAS SOME OTHER TYPE PRIVATE PLAN (PERSONS WITH 472=1)"
   HI_481   = "HAS INSURANCE, UNKNOWN NAME OF PRIVATE PLAN"
   HI_482   = "PLAN COMBINATIONS (PERSONS WITH 471=1 OR 472=1)"
   HI_487   = "MEDICARE FOR SURGICAL BILLS"
   HI_488   = "PRIVATE SURGICAL INSURANCE"
   HI_489   = "MEDICARE - PRIVATE RECODE FOR PERSONS 65+"
   HI_490   = "HAS 1+ PRIVATE PLANS OBTAINED THROUGH A GROUP (PERSONS WITH 488=1)"
   HI_491   = "HAS 1+ PRIVATE PLANS NOT OBTAINED THROUGH A GROUP (PERSONS WITH"
   HI_493   = "NUMBER OF PRIVATE SURGICAL PLANS (PERSONS WITH 488=1)"
   HI_494   = "HAS BLUE PLAN (PERSONS WITH 488=1)"
   HI_495   = "HAS PREPAID PLAN (PERSONS WITH 488=1)"
   HI_496   = "HAS SOME OTHER TYPE PRIVATE PLAN (PERSONS WITH 488=1)"
   HI_497   = "HAS INSURANCE, UNKNOWN NAME OF PRIVATE PLAN (PERSONS WITH 488=1)"
   HI_498   = "PLAN COMBINATIONS (PERSONS WITH 487=1 OR 488=1)"
   HI_503   = "MEDICARE FOR DOCTOR VISIT BILLS"
   HI_504   = "PRIVATE DOCTOR VISIT INSURANCE"
   HI_505   = "MEDICARE - PRIVATE RECODE FOR PERSONS 65+"
   HI_506   = "HAS 1+ PRIVATE PLANS OBTAINED THROUGH A GROUP (PERSONS WITH 504=1)"
   HI_507   = "HAS 1+ PRIVATE PLANS NOT OBTAINED THROUGH A GROUP"
   HI_509   = "NUMBER OF PRIVATE DOCTOR VISIT PLANS (PERSONS WITH 504=1)"
   HI_510   = "HAS BLUE PLAN (PERSONS WITH 504=1)"
   HI_511   = "HAS PREPAID PLAN (PERSONS WITH 504=1)"
   HI_512   = "HAS SOME OTHER TYPE PRIVATE PLAN (PERSONS WITH 504=1)"
   HI_513   = "HAS INSURANCE, UNKNOWN NAME OF PRIVATE PLAN (PERSONS WITH 504=1)"
   HI_514   = "PLAN COMBINATIONS (PERSONS WITH 503=1 OR 504=1)"
   HI_521   = "NO INSURANCE - EMPLOYMENT RELATED REASONS"
   HI_522   = "NO INSURANCE - CAN'T OBTAIN INSURANCE"
   HI_523   = "NO INSURANCE - DO NOT BELIEVE IN INSURANCE"
   HI_524   = "NO INSURANCE - DISSATISFIED WITH PREVIOUS INSURANCE"
   HI_525   = "NO INSURANCE - CARE THROUGH MEDICARE, MEDICAID, OR WELFARE"
   HI_526   = "NO INSURANCE - HEALTHY"
   HI_527   = "NO INSURANCE - TOO EXPENSIVE, CAN'T AFFORD"
   HI_528   = "NO INSURANCE - MILITARY CARE OR VETERAN'S BENEFITS"
   HI_529   = "NO INSURANCE - OTHER SPECIFIED REASONS"
   HI_530   = "NO INSURANCE - UNKNOWN REASONS"
   HI_531   = "MAIN REASON FOR NO INSURANCE"
   ;
* ASSOCIATE VARIABLES WITH FORMAT VALUES;
 
FORMAT
   PSURANDR  HIC0001X.   WEEKCEN   HIC0002X.    SEGNUM    HIC0003X.
   HHNUM     HIC0004X.   PNUM      HIC0005X.    RECTYPE   HIC0006X.
   WEEKPROC  HIC0007X.   QTRPROC   HIC0008X.    YEARPRC   HIC0009X.
   WEEKPRC   HIC0010X.   PSUTYPE   HIC0011X.    REGION    HIC0012X.
   LSRSMSA   HIC0013X.   SMSA      HIC0014X.    MSA2      HIC0015X.
   LIVQTR    HIC0016X.   INTNUM    HIC0017X.    NUMCALL   HIC0018X.
   PHONE     HIC0019X.   OBSINT    HIC0020X.    WKDAY     HIC0021X.
   INTLENG   HIC0022X.   INTTIME   HIC0023X.    RACE      HIC0024X.
   RACER     HIC0025X.   SEX       HIC0026X.    AGE       HIC0027X.
   AGER1     HIC0028X.   AGER2     HIC0029X.    AGER3     HIC0030X.
   MARSTAT   HIC0031X.   EDUC      HIC0032X.    EDUCR     HIC0033X.
   EDUCAD    HIC0034X.   EDUCADR   HIC0035X.    VETERAN   HIC0036X.
   INCOME    HIC0037X.   INCOMER   HIC0038X.    FAMTYPE   $HIC0039X.
   FAMREL    $HIC0040X.  FAMRELR   HIC0041X.    USUALACT  HIC0042X.
   EMPLOY    HIC0043X.   WKCLASS   HIC0044X.    INDUSTRY  HIC0045X.
   INDUSR1   HIC0046X.   INDUSR2   HIC0047X.    OCCUP     HIC0048X.
   OCCUPR1   HIC0049X.   OCCUPR2   HIC0050X.    RESPOND   HIC0051X.
   RESPAGE   HIC0052X.   FAMSIZE   HIC0053X.    FAMSIZER  HIC0054X.
   LACHRONC  HIC0055X.   LADURUNT  HIC0056X.    LADURNUM  HIC0057X.
   RADAY     HIC0058X.   BDDAY     HIC0059X.    WSLDAYI   HIC0060X.
   WSLDAY    HIC0061X.   HPTDAY2W  HIC0062X.    DTL12     HIC0063X.
   DTAL12U   HIC0064X.   DTAL12N   HIC0065X.    DV12I     HIC0066X.
   DV12NUM   HIC0067X.   HEP12     HIC0068X.    DVINT     HIC0069X.
   DTLINT    HIC0070X.   HDENUM    HIC0071X.    CONDTOT   HIC0072X.
   CONDCHR   HIC0073X.   LACHRON   HIC0074X.    HPLSSE    HIC0075X.
   FAMSTRUC  HIC0076X.   HLTHSTAT  HIC0077X.    ORDTEVR   HIC0078X.
   ORDT12M   HIC0079X.   ORDTC2W   HIC0080X.    TEETHSTR  HIC0081X.
   TOLDHSTR  HIC0082X.   NOORTHD1  HIC0083X.    NOORTHD2  HIC0084X.
   NOORTHD3  HIC0085X.   NOORTHDM  HIC0086X.    INCHEADF  HIC0087X.
   ROOMTOT   $HIC0088X.  BEDROOM   $HIC0089X.   WTBFAD    HIC0090X.
   WTFAL     HIC0091X.   WTFBL     HIC0092X.    WTFQ      HIC0093X.
   WTFS      HIC0094X.   WTFA      HIC0095X.    WTFB      HIC0096X.
   WT65      HIC0097X.   WT65B     HIC0098X.    WTRAD2W   HIC0099X.
   WTRAD2WB  HIC0100X.   WTWLD2W   HIC0101X.    WTWLD2WB  HIC0102X.
   WTHPD2W   HIC0103X.   WTHPD2WB  HIC0104X.    WTDTL2W   HIC0105X.
   WTDTL2WB  HIC0106X.   DV12WPQ   HIC0107X.    DV12WPS   HIC0108X.
   DV12WPA   HIC0109X.   DV12WPB   HIC0110X.    WTBDD2W   HIC0111X.
   WTBDD2WB  HIC0112X.   DV12WPQ   HIC0113X.    DV12WPS   HIC0114X.
   DV12WPA   HIC0115X.   DV12WPB   HIC0116X.    HDA12WPQ  HIC0117X.
   HDA12WPS  HIC0118X.   HDA12WPA  HIC0119X.    HDA12WPB  $HIC0120X.
   HEP12WPA  HIC0121X.   HI_471    HIC0122X.    HI_472    HIC0123X.
   HI_473    HIC0124X.   HI_474    HIC0125X.    HI_475    HIC0126X.
   HI_477    HIC0127X.   HI_478    HIC0128X.    HI_479    HIC0129X.
   HI_480    HIC0130X.   HI_481    HIC0131X.    HI_482    HIC0132X.
   HI_487    HIC0133X.   HI_488    HIC0134X.    HI_489    HIC0135X.
   HI_490    HIC0136X.   HI_491    $HIC0137X.   HI_493    HIC0138X.
   HI_494    HIC0139X.   HI_495    HIC0140X.    HI_496    HIC0141X.
   HI_497    HIC0142X.   HI_498    HIC0143X.    HI_503    $HIC0144X.
   HI_504    HIC0145X.   HI_505    HIC0146X.    HI_506    HIC0147X.
   HI_507    HIC0148X.   HI_509    HIC0149X.    HI_510    HIC0150X.
   HI_511    $HIC0151X.  HI_512    HIC0152X.    HI_513    HIC0153X.
   HI_514    HIC0154X.   HI_521    HIC0155X.    HI_522    HIC0156X.
   HI_523    HIC0157X.   HI_524    $HIC0158X.   HI_525    HIC0159X.
   HI_526    HIC0160X.   HI_527    HIC0161X.    HI_528    HIC0162X.
   HI_529    HIC0163X.   HI_530    HIC0164X.    HI_531    HIC0165X.
   ;

PROC CONTENTS DATA=NHIS.HEALTHIN;

PROC FREQ DATA=NHIS.HEALTHIN;
TITLE1 'FREQUENCY REPORT FOR 1974 NHIS CALENDAR YEAR HEALTH INSURANCE RECORD';
TITLE2 '(WEIGHTED)';
TABLES RECTYPE/LIST MISSING;
WEIGHT WTFA;

PROC FREQ DATA=NHIS.HEALTHIN;
TITLE1 'FREQUENCY REPORT FOR 1974 NHIS CALENDAR YEAR HEALTH INSURANCE RECORD';
TITLE2 '(UNWEIGHTED)';
TABLES RECTYPE/LIST MISSING;

* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
                      STATEMENT: FORMAT _ALL_;
RUN;
