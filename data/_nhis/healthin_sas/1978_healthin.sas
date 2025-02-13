DM 'CLE LOG; CLE OUT';
**************************************************************************
  January 25, 2006
 
THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
FILE FROM THE NHIS 1978 HEALTHIN.DAT ASCII FILE.
 
NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
      GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
      DOCUMENTATION.
 
THIS IS STORED IN HEALTHIN.SAS
*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;
 
LIBNAME NHIS    'C:\NHIS1978\';
LIBNAME LIBRARY 'C:\NHIS1978\';
 
FILENAME ASCIIDAT 'C:\NHIS1978\HEALTHIN.DAT';
 
* DEFINE VARIABLE VALUES FOR REPORT;
 
PROC FORMAT LIBRARY=LIBRARY;
  VALUE $HIN001X
   ;
  VALUE  HIN002X
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
  VALUE $HIN003X
   ;
  VALUE $HIN004X
   ;
  VALUE $HIN005X
   ;
  VALUE  HIN006X
   ;
  VALUE  HIN007X
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
  VALUE  HIN008X
   1                = "Quarter 1, 1978"
   2                = "Quarter 2, 1978"
   3                = "Quarter 3, 1978"
   4                = "Quarter 4, 1978"
   ;
  VALUE  HIN009X
   8                = "1978"
   ;
  VALUE  HIN010X
   0                = "The 31 Large Self-representing SMSA's"
   1                = "SMSA-Self-representing"
   3                = "SMSA-Nonself-representing"
   4                = "Non-SMSA-Self-representing"
   6                = "Non-SMSA-Nonself-representing"
   ;
  VALUE  HIN011X
   1                = "Northeast"
   2                = "North Central"
   3                = "South"
   4                = "West"
   ;
  VALUE  HIN012X
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
  VALUE  HIN013X
   1                = "In SMSA, in Central City"
   2                = "In SMSA, not in Central City"
   3                = "Not in SMSA"
   ;
  VALUE  HIN014X
   1                = "SMSA"
   2                = "Non-SMSA - Nonfarm"
   3                = "Non-SMSA - Farm"
   ;
  VALUE  HIN015X
   1                = "Housing Unit"
   2                = "Other"
   ;
  VALUE  HIN016X
   ;
  VALUE  HIN017X
   1-8              = "Number of calls"
   9                = "9+ calls"
   0                = "Not reported"
   ;
  VALUE $HIN018X
   "1"              = "Yes - phone"
   "2"              = "No or none"
   "3"              = "Phone,but nonumber listed, or number refused"
   "9"              = "DK if phone or refused"
   " "              = "Not reported"
   ;
  VALUE  HIN019X
   1                = "Yes"
   2                = "No"
   3                = "Yes and no"
   .                = "Not reported"
   ;
  VALUE  HIN020X
   1                = "Monday"
   2                = "Tuesday"
   3                = "Wednesday"
   4                = "Thursday"
   5                = "Friday"
   6                = "Saturday"
   7                = "Sunday"
   8                = "Unknown"
   ;
  VALUE  HIN021X
   001-998          = "Number of minutes"
   999              = "999+ minutes"
   .                = "Not reported"
   ;
  VALUE  HIN022X
   1                = "6:01 am - 12:00 noon"
   2                = "12:01pm -  6:00 pm"
   3                = "6:01 pm - 12:00 midnight"
   4                = "12:01pm -  6:00 am"
   .                = "Not reported"
   ;
  VALUE  HIN023X
   1                = "White"
   2                = "Black"
   3                = "Other"
   ;
  VALUE  HIN024X
   1                = "White"
   2                = "Other races"
   ;
  VALUE  HIN025X
   1                = "Male"
   2                = "Female"
   ;
  VALUE  HIN026X
   00               = "Under 1 year"
   01-98            = "Single years"
   99               = "99+ years"
   ;
  VALUE  HIN027X
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
  VALUE  HIN028X
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
  VALUE  HIN029X
   1                = "Under 15 years"
   2                = "15-44"
   3                = "45-64"
   4                = "65+"
   ;
  VALUE  HIN030X
   0                = "Under 17 years"
   1                = "Married - Spouse present"
   2                = "Widowed"
   3                = "Never married"
   4                = "Divorsed"
   5                = "Separated"
   6                = "Married - Spouse absent"
   ;
  VALUE  HIN031X
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
  VALUE  HIN032X
   1                = "Under 17 years of age"
   2                = "None"
   3                = "01-08 (elementary)"
   4                = "09-11 (high school)"
   5                = "12 (high school graduate)"
   6                = "13-15 (college)"
   7                = "16+ (college graduate +)"
   8                = "Unknown"
   ;
  VALUE  HIN033X
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
  VALUE  HIN034X
   1                = "Under 17 years of age"
   2                = "None"
   3                = "01-08 (elementary)"
   4                = "09-11 (high school)"
   5                = "12 (high school graduate)"
   6                = "13-15 (college)"
   7                = "16+ (college graduate +)"
   8                = "Unknown"
   ;
  VALUE  HIN035X
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
  VALUE  HIN036X
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
  VALUE  HIN037X
   1                = "Under $3,000"
   2                = "$3,000-4,999"
   3                = "5,000-6,999"
   4                = "7,000-9,999"
   5                = "10,000-14,999"
   6                = "15,000-24,999"
   7                = "25,000+"
   8                = "Unknown"
   ;
  VALUE $HIN038X
   "&"              = "Primary individual"
   "-"              = "Secondary individual"
   "0"              = "Primary family"
   "1"-"9"          = "SecondaRY families"
   ;
  VALUE $HIN039X
   "&"              = "Unrelated individual living alone"
   "0"              = "Head of family or unrelated individual not living alone"
   "1"              = "Wife (husband living at home and not in Amed Forces)"
   "2"              = "Wife (husband living at home and is in Armed Forces)"
   "3"              = "Child of head or spouse"
   "4"              = "Grand child of head or spouse"
   "5"              = "Parent of head or spouse"
   "6"              = "Other relative"
   ;
  VALUE  HIN040X
   1                = "Living alone"
   2                = "Living with nonrelative"
   3                = "Living with spouse"
   4                = "Living with relatives - other"
   ;
  VALUE  HIN041X
   0                = "Under 6 years"
   1                = "Usually working"
   2                = "Keeping house (female)"
   3                = "Retlred - Health (45+ years)"
   4                = "Going to school"
   5                = "Something else"
   6                = "Unknown"
   7                = "Retired,Other (45+ years)"
   ;
  VALUE  HIN042X
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
  VALUE  HIN043X
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
  VALUE  HIN044X
   017-999          = "Code Number"
   .                = "Not applicable"
   ;
  VALUE  HIN045X
   ;
  VALUE  HIN046X
   ;
  VALUE  HIN047X
   001-995          = "Code number"
   .                = "Not applicable"
   ;
  VALUE  HIN048X
   ;
  VALUE  HIN049X
   ;
  VALUE  HIN050X
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
  VALUE  HIN051X
   1                = "Under 20 years"
   2                = "20-54 years"
   3                = "55-64 years"
   4                = "65-74 years"
   5                = "75+ years"
   6                = "Unknown and not reported"
   ;
  VALUE  HIN052X
   00               = "Unrelated individuals"
   01-19            = "Family size"
   ;
  VALUE  HIN053X
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
  VALUE  HIN054X
   1                = "Cannot perform Usual Activity"
   2                = "Can perfom UA but limited in amount and kind"
   3                = "Can perfom UA but limited in outside activities"
   4                = "Not limited (including unknown) or not applicable (persons with no chronic condition)"
   ;
  VALUE  HIN055X
   1                = "Months"
   2                = "Years"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN056X
   00               = "Less than l month"
   01-97            = "Number of months or years"
   99               = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN057X
   00               = "None"
   01-14            = "Number of days"
   ;
  VALUE  HIN058X
   00               = "None"
   01-14            = "Number of days"
   ;
  VALUE  HIN059X
   1                = "Under 6 years of age"
   2                = "School-loss days"
   3                = "Work-loss days"
   ;
  VALUE  HIN060X
   00               = "None or Under 6"
   01-14            = "Number of days"
   ;
  VALUE  HIN061X
   00               = "None"
   01-97            = "Numberof visits"
   ;
  VALUE  HIN062X
   1                = "Number of visits known"
   2                = "Number of visits unknown"
   ;
  VALUE  HIN063X
   000              = "None or Unknown"
   001-997          = "Number of visits"
   ;
  VALUE  HIN064X
   000              = "None"
   001-365          = "Number of days"
   ;
  VALUE  HIN065X
   0                = "Never"
   1                = "Visit in past 2 weeks"
   3                = "2 weeks to less than 6 months"
   4                = "6 months to less than 12 months"
   5                = "1 year"
   6                = "2-4 years"
   7                = "5+ years"
   9                = "Unknown"
   ;
  VALUE  HIN066X
   0                = "Never"
   1                = "Visit in 2 weeks"
   2                = "2 weeks to less than 6 months"
   3                = "6 months to less than 12 months"
   4                = "1 year"
   5                = "2-4 years"
   6                = "5+ years"
   8                = "Unknown"
   ;
  VALUE  HIN067X
   ;
  VALUE  HIN068X
   ;
  VALUE  HIN069X
   0                = "No episodes"
   1                = "All in federal hospitals"
   2                = "All in nonfederal hospitals"
   3                = "Both federal and nonfederal hospitals"
   ;
  VALUE  HIN070X
   0                = "None"
   1                = "1-7 days"
   2                = "8-30 dayS"
   3                = "31-180 days"
   4                = "181-365 days"
   5                = "Unknown"
   ;
  VALUE  HIN071X
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
  VALUE  HIN072X
   1                = "Excellent"
   2                = "Good"
   3                = "Fair"
   4                = "Poor"
   5                = "Unknown"
   ;
  VALUE  HIN073X
   0                = "Under 17 years of age"
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   4                = "Non-veteran"
   ;
  VALUE  HIN074X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  HIN075X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  HIN076X
   36-84            = "Number of inches"
   99               = "Unknown"
   .                = "Under 17 years of age"
   ;
  VALUE  HIN077X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  HIN078X
   1                = "Medicaid card - current"
   2                = "Medicaid card - expired"
   3                = "Card seen - unknown type"
   4                = "unknown"
   5                = "No Medicaid card or not reported"
   ;
  VALUE  HIN079X
   050-300          = "Nmnber of pounds"
   999              = "Unknown"
   .                = "Under 17 years of age"
   ;
  VALUE  HIN080X
   0                = "Under 17"
   1                = "Air Force"
   2                = "Army"
   3                = "Navy"
   4                = "Marines"
   5                = "Coast Guard"
   6                = "Two services checked"
   7                = "Three services checked"
   8                = "Other"
   9                = "Unknown"
   .                = "Non-veteran"
   ;
  VALUE  HIN081X
   0                = "Under 17"
   1                = "Air Force"
   2                = "Army"
   3                = "Navy"
   4                = "Marines"
   5                = "Coast Guard"
   6                = "Other"
   7                = "Unknown"
   8                = "Non-veteran"
   ;
  VALUE  HIN082X
   00-79            = "1900 to 1979"
   80               = "Unknown"
   81               = "Under 17"
   82               = "Non-veteran"
   ;
  VALUE  HIN083X
   00               = "Less than 6 months"
   01-70            = "1 to 70 years"
   71               = "Unknown"
   72               = "Under 17"
   73               = "Non-veteran"
   ;
  VALUE  HIN084X
   0                = "Under 17"
   1                = "Service"
   2                = "Veterans administration"
   3                = "Yes, retirement or pension"
   4                = "Service and Veterans Administration"
   5                = "No"
   6                = "Unknown"
   7                = "Non-veteran"
   ;
  VALUE  HIN085X
   1                = "Condition List 1 - Digestive"
   2                = "Condition List 2 - Bone and Muscle"
   3                = "Condition List 3 - Miscellaneous"
   4                = "Condition List 4 - Impairments"
   5                = "Condition List 5 - Circulatory"
   6                = "Condition List 6 - Respiratory"
   7                = "Unknown"
   ;
  VALUE  HIN086X
   1                = "Yes"
   2                = "No"
   ;
  VALUE  HIN087X
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
  VALUE  HIN088X
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
  VALUE  HIN089X
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
  VALUE  HIN090X
   1                = "Alaskan Native or American Indian"
   2                = "Asian or Pacific Islander"
   3                = "Black"
   4                = "White"
   5                = "Another group not listed"
   6                = "Multiple entry - unknown which is main racial background"
   7                = "Unknown"
   ;
  VALUE $HIN091X
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
  VALUE $HIN092X
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
  VALUE  HIN093X
   ;
  VALUE  HIN094X
   ;
  VALUE  HIN095X
   ;
  VALUE  HIN096X
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
  VALUE  HIN097X
   ;
  VALUE  HIN098X
   ;
  VALUE  HIN099X
   ;
  VALUE  HIN100X
   ;
  VALUE  HIN101X
   ;
  VALUE  HIN102X
   ;
  VALUE  HIN103X
   ;
  VALUE  HIN104X
   ;
  VALUE  HIN105X
   ;
  VALUE  HIN106X
   ;
  VALUE  HIN107X
   ;
  VALUE  HIN108X
   ;
  VALUE  HIN109X
   ;
  VALUE  HIN110X
   ;
  VALUE  HIN111X
   ;
  VALUE  HIN112X
   ;
  VALUE  HIN113X
   ;
  VALUE  HIN114X
   ;
  VALUE  HIN115X
   ;
  VALUE  HIN116X
   ;
  VALUE  HIN117X
   ;
  VALUE  HIN118X
   ;
  VALUE  HIN119X
   ;
  VALUE  HIN120X
   ;
  VALUE  HIN121X
   ;
  VALUE  HIN122X
   ;
  VALUE  HIN123X
   1                = "Covered"
   2                = "Not covered"
   3                = "Unknown if covered"
   ;
  VALUE  HIN124X
   1                = "Covered"
   2                = "Not covered"
   3                = "Unknown if covered"
   ;
  VALUE  HIN125X
   1                = "Covered"
   2                = "Not covered"
   3                = "Unknown if covered"
   ;
  VALUE  HIN126X
   1                = "Covered"
   2                = "Not covered"
   3                = "Unknown if covered"
   ;
  VALUE  HIN127X
   1                = "Covered"
   2                = "Not covered"
   3                = "Unknown if covered"
   ;
  VALUE  HIN128X
   1                = "Covered"
   2                = "Not covered"
   3                = "Unknown if covered"
   ;
  VALUE  HIN129X
   01               = "Care received through Medicaid or Welfare"
   02               = "Unemployment or reasons related to unemployment"
   03               = "Can’t obtain because of poor health, illness or age"
   04               = "Too expensive, can’t afford health insurance"
   05               = "Dissatisfied with previous insurance"
   06               = "Don’t believe in insurance"
   07               = "Have been healthy, haven’t needed insurance"
   08               = "Military Dependent, Covered by Champus, Veteran's Benefits"
   09               = "Some other reason"
   10               = "Reasons given, but main reason unknown"
   11               = "Unknown reason"
   .                = "Not applicable"
   ;
  VALUE  HIN130X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  HIN131X
   1                = "Doctor's office"
   2                = "Hospital Outpatient Clinic"
   3                = "Home"
   4                = "Hospital Emergency Room"
   5                = "Company or Industry Clinic"
   6                = "Health Center"
   7                = "Other"
   8                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN132X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN133X
   001-997          = "Minutes"
   998              = "998+ minutes"
   999              = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN134X
   1                = "Less than 10 minutes"
   2                = "10-14 minutes"
   3                = "15-19 minutes"
   4                = "20-29 minutes"
   5                = "30-44 minutes"
   6                = "45-59 minutes"
   7                = "60+ minutes"
   8                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN135X
   1                = "Doctor's office"
   2                = "Hospital Outpatient Clinic"
   3                = "Home"
   4                = "Hospital Emergency Room"
   5                = "Company or Industry Clinic"
   6                = "Health Center"
   7                = "Other"
   8                = "Unknown"
   ;
  VALUE  HIN136X
   1                = "Have two or more usual doctors or places depending on what is wrong"
   2                = "Haven't needed a doctor"
   3                = "Previous doctor no longer avaliable"
   4                = "Haven't been able to find the right doctor"
   5                = "Recently moved to area"
   6                = "Other reason"
   7                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN137X
   1                = "17-64"
   2                = "Other age"
   ;
  VALUE  HIN138X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN139X
   1-7              = "times"
   8                = "8 times or more"
   9                = "Unknown times"
   .                = "Not applicable"
   ;
  VALUE  HIN140X
   1                = "Yes"
   2                = "No (not reported or not applicable)"
   ;
  VALUE  HIN141X
   1                = "Yes"
   2                = "No (not reported or not applicable)"
   ;
  VALUE  HIN142X
   1                = "Yes"
   2                = "No (not reported or not applicable)"
   ;
  VALUE  HIN143X
   1                = "Yes"
   2                = "No (not reported or not applicable)"
   ;
  VALUE  HIN144X
   1                = "Yes"
   2                = "No (not reported or not applicable)"
   ;
  VALUE  HIN145X
   1                = "Yes"
   2                = "No (not reported or not applicable)"
   ;
  VALUE  HIN146X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN147X
   00               = "Less than 1 year"
   01-90            = "Number of years"
   91               = "Less than 5 years"
   92               = "5-10 years"
   93               = "More than 10 years"
   94               = "Unknown interval"
   .                = "Not applicable"
   ;
  VALUE  HIN148X
   0                = "Never"
   1                = "Less than 1 year"
   2                = "1-4 years"
   3                = "5-10 years"
   4                = "More than 10 years"
   5                = "Unknown interval"
   6                = "Unknown if ever donated"
   .                = "Not applicable"
   ;
  VALUE  HIN149X
   01-97            = "1-97 times"
   98               = "98 or more times"
   99               = "Unknoen number"
   .                = "Not applicable"
   ;
  VALUE  HIN150X
   0                = "Never"
   1                = "1 year"
   2                = "2-4 years"
   3                = "5-9 years"
   4                = "10-19 times"
   5                = "20 times or more"
   6                = "Unknown number"
   7                = "Unknown if ever donated"
   .                = "Not applicable"
   ;
  VALUE  HIN151X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN152X
   1                = "Self-entirely"
   2                = "Self-partly"
   3                = "Proxy"
   4                = "Unknown"
   ;
  VALUE  HIN153X
   1                = "Covered"
   2                = "Not covered"
   3                = "Unknown if covered"
   ;
  VALUE  HIN154X
   1                = "Covered"
   2                = "Not covered"
   3                = "Unknown if covered"
   ;
  VALUE  HIN155X
   1                = "Covered"
   2                = "Not covered"
   3                = "Unknown if covered"
   ;
  VALUE  HIN156X
   1                = "Current hospital coverage"
   2                = "Current doctor/surgeon coverage"
   3                = "Claims has a card, but it is not available"
   4                = "Current hospital and doctor/surgeon coverage"
   5                = "Unknown if person has card"
   6                = "Persons 65 years of age and over"
   7                = "Persons under 65 years of age, card not requested"
   ;
  VALUE  HIN157X
   01               = "Has hospital but not doctor"
   02               = "Has hospital, doctor unknown"
   03               = "Has both hospital and doctor"
   04               = "Has doctor, but not hospital"
   05               = "Has doctor, hospital unknown"
   06               = "Hospital unknown, does not have doctor"
   07               = "Doctor unknown, does not have hospital"
   08               = "Both hospital and doctor unknown"
   09               = "No Medicare coverage"
   10               = "Unknown if person has Medicare coverage"
   ;
  VALUE  HIN158X
   1                = "Has hospital and doctor coverage"
   2                = "Has hospital OR doctor coverage, but not both"
   3                = "Unknown if both or just one"
   4                = "No Medicare coverage"
   5                = "Unknown if Medicare coverage"
   ;
  VALUE  HIN159X
   1                = "Covered"
   2                = "Unknown if covered"
   3                = "Not applicable"
   ;
  VALUE  HIN160X
   1                = "Covered"
   2                = "Unknown if covered"
   3                = "Not applicable"
   ;
  VALUE  HIN161X
   1                = "Covered"
   2                = "Unknown if covered"
   3                = "Not applicable"
   ;
  VALUE  HIN162X
   01               = "Has hospital but not surgical"
   02               = "Has hospital, surgical unknown"
   03               = "Has both hospital and surgical"
   04               = "Has surgical but not hospital"
   05               = "Has surgical, hospital unknown"
   06               = "Neither hospital nor surgical"
   07               = "Hospital unknown, does not have surgical"
   08               = "surgical unknown, does not have hospital"
   09               = "Both hospital and surgical unknown"
   10               = "No PHI Coverage, neither hospital nor surgical"
   11               = "Unknown if PHI coverage"
   ;
  VALUE  HIN163X
   1                = "Has hospital and surgical coverage"
   2                = "Has hospital or surgical, but not both"
   3                = "Unknown if both, just one or neither"
   4                = "Neither hospital nor surgical but has coverage"
   5                = "No private Coverage"
   6                = "Unknown if private Coverage"
   ;
  VALUE  HIN164X
   1                = "Covered by one or both"
   2                = "Not covered by either"
   3                = "Unknown if covered"
   ;
  VALUE  HIN165X
   1                = "Covered by one or both"
   2                = "Not covered by either"
   3                = "Unknown if covered"
   ;
  VALUE  HIN166X
   1                = "Covered by one or both"
   2                = "Not covered by either"
   3                = "Coverage unknown for both or unknown for one and not covered for other"
   ;
  VALUE  HIN167X
   01               = "Has hospital but not surgical"
   02               = "Has hospital, surgical unknown"
   03               = "Has both hospital and surgical"
   04               = "Has surgical but not hospital"
   05               = "Has surgical, hospital unknown"
   06               = "Neither hospital nor surgical"
   07               = "Hospital unknown, does not have surgical"
   08               = "Surgical unknown, does not have hospital"
   09               = "Both hospital and surgical unknown"
   10               = "No PHI/medicare Coverage"
   11               = "Unknown if PHI/Medicare coverage"
   ;
  VALUE  HIN168X
   1                = "Has hospital and surgical coverage"
   2                = "Has hospital or surgical, but not both"
   3                = "Unknown if both, just one or neither"
   4                = "Neither hospital nor surgical but has coverage"
   5                = "No Coveraqe"
   6                = "Unknown if Coverage"
   ;
  VALUE  HIN169X
   1                = "Yes"
   2                = "Reason given, but not this reason"
   .                = "Unknown or not applicable"
   ;
  VALUE  HIN170X
   1                = "Yes"
   2                = "Reason given, but not this reason"
   .                = "Unknown or not applicable"
   ;
  VALUE  HIN171X
   1                = "Yes"
   2                = "Reason given, but not this reason"
   .                = "Unknown or not applicable"
   ;
  VALUE  HIN172X
   1                = "Yes"
   2                = "Reason given, but not this reason"
   .                = "Unknown or not applicable"
   ;
  VALUE  HIN173X
   1                = "Yes"
   2                = "Reason given, but not this reason"
   .                = "Unknown or not applicable"
   ;
  VALUE  HIN174X
   1                = "Yes"
   2                = "Reason given, but not this reason"
   .                = "Unknown or not applicable"
   ;
  VALUE  HIN175X
   1                = "Yes"
   2                = "Reason given, but not this reason"
   .                = "Unknown or not applicable"
   ;
  VALUE  HIN176X
   1                = "Yes"
   2                = "Reason given, but not this reason"
   .                = "Unknown or not applicable"
   ;
  VALUE  HIN177X
   1                = "Yes"
   2                = "Reason given, but not this reason"
   .                = "Unknown or not applicable"
   ;
  VALUE  HIN178X
   1                = "At least one reason given"
   2                = "No reason given because item refused or stated to be unknown"
   3                = "No indication of reason given, unknown or refused"
   .                = "Not applicable"
   ;
  VALUE  HIN179X
   01               = "Care received through Medicaid or Welfare"
   02               = "Unemployment or reasons related to unemployment"
   03               = "Can’t obtain because of poor health, illness or age"
   04               = "Too expensive, can’t afford health insurance"
   05               = "Dissatisfied with previous insurance"
   06               = "Don’t believe in insurance"
   07               = "Have been healthy, haven’t needed insurance"
   08               = "Military Dependent, Covered by Champus, Veteran's Benefits"
   09               = "Some other reason"
   10               = "Reasons given, but main reason unknown"
   11               = "Unknown reason"
   .                = "Not applicable"
   ;
  VALUE  HIN180X
   1                = "Blue Cross and/or Blue Shield only"
   2                = "Blue Plan and other identified plan not including prepaid plan"
   3                = "Blue Plan, other identified plan, and prepaid plan"
   4                = "Prepaid and Blue Plan (no other identified plan)"
   5                = "Prepaid and other identified plan (no Blue Plan)"
   6                = "Prepaid plan only"
   7                = "Other identified plan only"
   8                = "Plans include at least one for which type is unknown"
   9                = "Person’s coverage status unknown for at least one plan"
   .                = "Not applicable"
   ;
  VALUE  HIN181X
   1                = "Blue Cross and/or Blue Shield"
   2                = "HMO or other prepaid plan"
   3                = "Other named and identified private plan"
   4                = "Has private plan, name not given"
   .                = "Not applicable"
   ;
  VALUE  HIN182X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN183X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN184X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN185X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN186X
   1                = "Covered"
   2                = "Unknown if covered"
   .                = "Not applicable"
   ;
  VALUE  HIN187X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN188X
   1                = "Blue Cross and/or Blue Shield"
   2                = "HMO or other prepaid plan"
   3                = "Other named and identified private plan"
   4                = "Has private plan, name not given"
   .                = "Not applicable"
   ;
  VALUE  HIN189X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN190X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN191X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN192X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN193X
   1                = "Covered"
   2                = "Unknown if covered"
   .                = "Not applicable"
   ;
  VALUE  HIN194X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN195X
   1                = "Blue Cross and/or Blue Shield"
   2                = "HMO or other prepaid plan"
   3                = "Other named and identified private plan"
   4                = "Has private plan, name not given"
   .                = "Not applicable"
   ;
  VALUE  HIN196X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN197X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN198X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN199X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN200X
   1                = "Covered"
   2                = "Unknown if covered"
   .                = "Not applicable"
   ;
  VALUE  HIN201X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN202X
   1                = "Blue Cross and/or Blue Shield"
   2                = "HMO or other prepaid plan"
   3                = "Other named and identified private plan"
   4                = "Has private plan, name not given"
   .                = "Not applicable"
   ;
  VALUE  HIN203X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN204X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN205X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN206X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN207X
   1                = "Covered"
   2                = "Unknown if covered"
   .                = "Not applicable"
   ;
  VALUE  HIN208X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN209X
   1                = "Blue Cross and/or Blue Shield"
   2                = "HMO or other prepaid plan"
   3                = "Other named and identified private plan"
   4                = "Has private plan, name not given"
   .                = "Not applicable"
   ;
  VALUE  HIN210X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN211X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN212X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN213X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN214X
   1                = "Covered"
   2                = "Unknown if covered"
   .                = "Not applicable"
   ;
  VALUE  HIN215X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN216X
   1                = "Receives either or both AFDC/SSI"
   2                = "Does not receive either AFDC/SSI"
   3                = "Receipt of both is unknown or either is no and the other in unknown"
   ;
  VALUE  HIN217X
   1                = "AFDC and/or SSI coverage and/or verified current Medicaid card"
   2                = "Neither AFDC and/or SSI coverage and no verified current Medicaid card"
   3                = "Status of both is unknown, or either is no and the other is unknown"
   ;
  VALUE  HIN218X
   1                = "Medicaid reimbursement in past 12 months"
   2                = "No Medicaid reimbursement in past 12 months"
   3                = "Unknown"
   4                = "Medicaid reimbursement in past 12 months"
   5                = "No Medicaid reimbursement in past 12 months"
   6                = "Unknown"
   7                = "Medicaid reimbursement in past 12 months"
   8                = "No Medicaid reimbursement in past 12 months"
   9                = "Unknown"
   ;
  VALUE  HIN219X
   1                = "Military pensioner"
   2                = "Wife of military pensioner and is living at home"
   3                = "Never married child under 21 years of age living at home of military pensioner with wife living at home"
   4                = "Not code 1-3 above"
   5                = "Unknown"
   ;
  VALUE  HIN220X
   1                = "Wife or never married child under 21 years of age living at home with active military man"
   2                = "All others"
   ;
  VALUE  HIN221X
   1                = "Reports a service connected disability"
   2                = "Not code 1 above but is a VA pensioner or a veteran 65+"
   3                = "Not code 1-2 above but is a veteran who received VA health care during the 12 months preceding interview"
   4                = "Not code 1-3 above but is a non-veteran who received VA health care during the 12 months preceding interview"
   5                = "Not code 1-3 above but is a veteran 17-64 years of age"
   6                = "Not code 1-5 above"
   7                = "Unknown"
   ;
  VALUE  HIN222X
   1                = "Gave military or VA health care coverage as reason for not having health insurance"
   2                = "Not code 1 above but is a civilian dependent of active military man with wife living at home"
   3                = "Not code 1-2 above but is a military pensioner or eligible dependent of male military pensioner"
   4                = "Not code 1-3 above but is a veteran eligible for VA health care who does not have to establish financial need to"
   5                = "Not code 1-4 above but is a received VA health care during the 12 months preceding interview"
   6                = "Not code 1-5 above but is a veteran 17-64 years of age"
   7                = "Not code 1-6 above"
   8                = "Unknown for criteria 1-6"
   ;
  VALUE  HIN223X
   1                = "Has AFDC and/or SSI and/or showed valid Medicaid card to interviewer"
   2                = "No or unknown to items in code 1 above, but gave Medicaid coverage as a reason for not having health insurance"
   3                = "No or unknown to items in code 1 above, and Medicaid not given as a reason for no insurance, and unknown or no to"
   ;
 
DATA NHIS.HEALTHIN;
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1978\';
   INFILE ASCIIDAT MISSOVER TRUNCOVER LRECL=576;
 
* DEFINE LENGTH OF NUMERIC VARIABLES;
 
LENGTH
   WEEKCEN   3  RECTYPE   3  HI_17     3  QUARTER   3  YEAR      3
   HI_28     3  HI_29     3  HI_30     3  HI_33     3  HI_36     3
   HI_37     3  HI_40     3  HI_42     3  HI_44     3  HI_45     3
   HI_46     3  HI_49     3  HI_50     3  HI_51     3  HI_52     3
   HI_53     3  HI_55     3  HI_57     3  HI_59     3  HI_60     3
   HI_61     3  HI_63     3  HI_64     3  HI_66     3  HI_67     3
   HI_68     3  HI_70     3  HI_73     3  HI_74     3  HI_75     3
   HI_76     3  HI_77     3  HI_80     3  HI_82     3  HI_84     3
   HI_87     3  HI_89     3  HI_91     3  HI_94     3  HI_95     3
   HI_97     3  HI_98     3  HI_99     3  HI_100    3  HI_106    3
   HI_108    3  HI_110    3  HI_111    3  HI_115    3  HI_120    3
   HI_121    3  HI_124    3  HI_127    3  HI_128    3  HI_129    3
   HI_135    3  HI_140    3  HI_142    3  HI_143    3  HI_145    3
   HI_147    3  HI_149    3  HI_150    3  HI_156    3  HI_158    3
   HI_159    3  HI_160    3  HI_163    3  HI_164    3  HI_165    3
   HI_167    3  HI_169    3  HI_171    3  HI_172    3  HI_173    3
   HI_175    3  HI_177    3  HI_179    3  HI_182    6  HI_188    6
   HI_193    6  HI_199    6  HI_201    6  HI_210    6  WTFA      6
   HI_228    6  HI_237    6  HI_246    6  HI_255    6  HI_264    6
   HI_273    6  HI_282    6  HI_291    6  HI_300    6  HI_309    6
   HI_318    6  HI_327    6  HI_336    6  HI_345    8  HI_381    6
   HI_390    6  HI_399    6  HI_408    6  HI_417    6  HI_426    6
   HI_435    6  HI_444    6  HI_453    6  HI_466    3  HI_467    3
   HI_468    3  HI_469    3  HI_470    3  HI_471    3  HI_472    3
   HI_474    3  HI_475    3  HI_476    3  HI_477    3  HI_480    3
   HI_481    3  HI_482    3  HI_483    3  HI_484    3  HI_485    3
   HI_486    3  HI_487    3  HI_488    3  HI_489    3  HI_490    3
   HI_491    3  HI_492    3  HI_493    3  HI_495    3  HI_496    3
   HI_498    3  HI_499    3  HI_500    3  HI_501    3  HI_502    3
   HI_503    3  HI_504    3  HI_505    3  HI_507    3  HI_508    3
   HI_509    3  HI_510    3  HI_511    3  HI_513    3  HI_514    3
   HI_515    3  HI_516    3  HI_517    3  HI_519    3  HI_520    3
   HI_521    3  HI_522    3  HI_523    3  HI_524    3  HI_525    3
   HI_526    3  HI_527    3  HI_528    3  HI_529    3  HI_530    3
   HI_533    3  HI_534    3  HI_535    3  HI_536    3  HI_537    3
   HI_538    3  HI_539    3  HI_540    3  HI_541    3  HI_542    3
   HI_543    3  HI_544    3  HI_545    3  HI_546    3  HI_547    3
   HI_548    3  HI_549    3  HI_550    3  HI_551    3  HI_552    3
   HI_553    3  HI_554    3  HI_555    3  HI_556    3  HI_557    3
   HI_558    3  HI_559    3  HI_560    3  HI_561    3  HI_562    3
   HI_563    3  HI_564    3  HI_565    3  HI_566    3  HI_567    3
   HI_568    3  HI_569    3  HI_570    3  HI_571    3  HI_572    3
   HI_573    3  HI_574    3  HI_575    3  HI_576    3
   ;
* INPUT ALL VARIABLES;
 
INPUT
   PSUNUMR  $   3 - 5          WEEKCEN      6 - 7
   SEGNUM   $   8 - 9          HHNUM    $  10 - 11
   PNUM     $  12 - 13         RECTYPE     14 - 14
   HI_17       17 - 18         QUARTER     19 - 19
   YEAR        20 - 20         HI_28       28 - 28
   HI_29       29 - 29         HI_30       30 - 31
   HI_33       33 - 33         HI_36       36 - 36
   HI_37       37 - 37         HI_40       40 - 41
   HI_42       42 - 42         HI_43    $  43 - 43
   HI_44       44 - 44         HI_45       45 - 45
   HI_46       46 - 48         HI_49       49 - 49
   HI_50       50 - 50         HI_51       51 - 51
   HI_52       52 - 52         HI_53       53 - 54
   HI_55       55 - 56         HI_57       57 - 58
   HI_59       59 - 59         HI_60       60 - 60
   HI_61       61 - 62         HI_63       63 - 63
   HI_64       64 - 65         HI_66       66 - 66
   HI_67       67 - 67         HI_68       68 - 69
   HI_70       70 - 70         HI_71    $  71 - 71
   HI_72    $  72 - 72         HI_73       73 - 73
   HI_74       74 - 74         HI_75       75 - 75
   HI_76       76 - 76         HI_77       77 - 79
   HI_80       80 - 81         HI_82       82 - 83
   HI_84       84 - 86         HI_87       87 - 88
   HI_89       89 - 90         HI_91       91 - 91
   HI_94       94 - 94         HI_95       95 - 96
   HI_97       97 - 97         HI_98       98 - 98
   HI_99       99 - 99         HI_100     100 - 101
   HI_106     106 - 107        HI_108     108 - 109
   HI_110     110 - 110        HI_111     111 - 112
   HI_115     115 - 116        HI_120     120 - 120
   HI_121     121 - 123        HI_124     124 - 126
   HI_127     127 - 127        HI_128     128 - 128
   HI_129     129 - 130        HI_135     135 - 136
   HI_140     140 - 140        HI_142     142 - 142
   HI_143     143 - 144        HI_145     145 - 145
   HI_147     147 - 147        HI_149     149 - 149
   HI_150     150 - 150        HI_156     156 - 157
   HI_158     158 - 158        HI_159     159 - 159
   HI_160     160 - 162        HI_163     163 - 163
   HI_164     164 - 164        HI_165     165 - 166
   HI_167     167 - 168        HI_169     169 - 169
   HI_171     171 - 171        HI_172     172 - 172
   HI_173     173 - 174        HI_175     175 - 176
   HI_177     177 - 178        HI_179     179 - 179
   HI_180   $ 180 - 180        HI_181   $ 181 - 181
   HI_182     182 - 187        HI_188     188 - 192
   HI_193     193 - 198        HI_199     199 - 200
   HI_201     201 - 209        HI_210     210 - 218
   WTFA       219 - 227        HI_228     228 - 236
   HI_237     237 - 245        HI_246     246 - 254
   HI_255     255 - 263        HI_264     264 - 272
   HI_273     273 - 281        HI_282     282 - 290
   HI_291     291 - 299        HI_300     300 - 308
   HI_309     309 - 317        HI_318     318 - 326
   HI_327     327 - 335        HI_336     336 - 344
   HI_345     345 - 352        HI_381     381 - 389
   HI_390     390 - 398        HI_399     399 - 407
   HI_408     408 - 416        HI_417     417 - 425
   HI_426     426 - 434        HI_435     435 - 443
   HI_444     444 - 452        HI_453     453 - 461
   HI_466     466 - 466        HI_467     467 - 467
   HI_468     468 - 468        HI_469     469 - 469
   HI_470     470 - 470        HI_471     471 - 471
   HI_472     472 - 473        HI_474     474 - 474
   HI_475     475 - 475        HI_476     476 - 476
   HI_477     477 - 479        HI_480     480 - 480
   HI_481     481 - 481        HI_482     482 - 482
   HI_483     483 - 483        HI_484     484 - 484
   HI_485     485 - 485        HI_486     486 - 486
   HI_487     487 - 487        HI_488     488 - 488
   HI_489     489 - 489        HI_490     490 - 490
   HI_491     491 - 491        HI_492     492 - 492
   HI_493     493 - 494        HI_495     495 - 495
   HI_496     496 - 497        HI_498     498 - 498
   HI_499     499 - 499        HI_500     500 - 500
   HI_501     501 - 501        HI_502     502 - 502
   HI_503     503 - 503        HI_504     504 - 504
   HI_505     505 - 506        HI_507     507 - 507
   HI_508     508 - 508        HI_509     509 - 509
   HI_510     510 - 510        HI_511     511 - 512
   HI_513     513 - 513        HI_514     514 - 514
   HI_515     515 - 515        HI_516     516 - 516
   HI_517     517 - 518        HI_519     519 - 519
   HI_520     520 - 520        HI_521     521 - 521
   HI_522     522 - 522        HI_523     523 - 523
   HI_524     524 - 524        HI_525     525 - 525
   HI_526     526 - 526        HI_527     527 - 527
   HI_528     528 - 528        HI_529     529 - 529
   HI_530     530 - 531        HI_533     533 - 533
   HI_534     534 - 534        HI_535     535 - 535
   HI_536     536 - 536        HI_537     537 - 537
   HI_538     538 - 538        HI_539     539 - 539
   HI_540     540 - 540        HI_541     541 - 541
   HI_542     542 - 542        HI_543     543 - 543
   HI_544     544 - 544        HI_545     545 - 545
   HI_546     546 - 546        HI_547     547 - 547
   HI_548     548 - 548        HI_549     549 - 549
   HI_550     550 - 550        HI_551     551 - 551
   HI_552     552 - 552        HI_553     553 - 553
   HI_554     554 - 554        HI_555     555 - 555
   HI_556     556 - 556        HI_557     557 - 557
   HI_558     558 - 558        HI_559     559 - 559
   HI_560     560 - 560        HI_561     561 - 561
   HI_562     562 - 562        HI_563     563 - 563
   HI_564     564 - 564        HI_565     565 - 565
   HI_566     566 - 566        HI_567     567 - 567
   HI_568     568 - 568        HI_569     569 - 569
   HI_570     570 - 570        HI_571     571 - 571
   HI_572     572 - 572        HI_573     573 - 573
   HI_574     574 - 574        HI_575     575 - 575
   HI_576     576 - 576
   ;
* DEFINE VARIABLE LABELS;
 
LABEL
   PSUNUMR  = "RANDOM RECODE OF PSU"
   WEEKCEN  = "WEEK - CENSUS CODE"
   SEGNUM   = "SEGMENT NUMBER"
   HHNUM    = "HOUSEHOLD NUMBER"
   PNUM     = "PERSON NUMBER"
   RECTYPE  = "RECORD TYPE (6)"
   HI_17    = "PROCESSING WEEK CODE"
   QUARTER  = "PROCESSING QUARTER CODE"
   YEAR     = "PROCESSING YEAR"
   HI_28    = "TYPE OF PSU"
   HI_29    = "REGION"
   HI_30    = "TABULATION AREA"
   HI_33    = "GEOGRAPHIC IDENTIFICATION"
   HI_36    = "SMSA - NON-SMSA RESIDENCE"
   HI_37    = "TYPE OF LIVING QUARTERS"
   HI_40    = "INTERVIEW NUMBER"
   HI_42    = "NUMBER OF CALL"
   HI_43    = "TELEPHONE"
   HI_44    = "OBSERVED INTERVIEW"
   HI_45    = "DAY OF WEEK INTERVIEW COMPLETED"
   HI_46    = "LENGTH OF INTERVIEW"
   HI_49    = "TIME OF DAY OF INTERVIEW"
   HI_50    = "RACE"
   HI_51    = "RACE RECODE"
   HI_52    = "SEX"
   HI_53    = "AGE"
   HI_55    = "AGE RECODE #L"
   HI_57    = "AGE RECODE #2"
   HI_59    = "AGE RECODE #3"
   HI_60    = "MARITAL STATUS"
   HI_61    = "EDUCATION OF INDIVIDUAL - COMPLETED YEARS"
   HI_63    = "EDUCATION OF INDIVIDUAL - RECODE"
   HI_64    = "EDUCATION OF FAMILY HEAD OR UNRELATED INDIVIDUAL - DETAIL"
   HI_66    = "EDUCATION OF HEAD - RECODE"
   HI_67    = "VETERAN STATUS"
   HI_68    = "FAMILY INCOME OR INCOME OF UNRELATED INDIVIDUAL"
   HI_70    = "FAMILY INCOME RECODE"
   HI_71    = "TYPE OF FAMILY"
   HI_72    = "FAMILY RELATIONSHIP"
   HI_73    = "FAMILY REIATIONSHIP RECODE (LIVING ARRANGEMENT)"
   HI_74    = "USUAL ACIVITY"
   HI_75    = "CURRENT ACTIVITY DURING PAST 2 WEEKS"
   HI_76    = "CLASS OF WORKER"
   HI_77    = "INDUSTRY DETAIL CODE"
   HI_80    = "INDUSTRY RECODE I"
   HI_82    = "INDUSTRY RECODE 2"
   HI_84    = "OCCUPATION DETAIL CODE"
   HI_87    = "OCCUPATION RECODE 1"
   HI_89    = "OCCUPATION RECODE 2"
   HI_91    = "RESPONDENT"
   HI_94    = "AGE OF RESPONDENT"
   HI_95    = "ACTUAL FAMILY SIZE"
   HI_97    = "SIZE OF FAMILY RECODE"
   HI_98    = "LIMITATION OF ACTIVITY DUE TO CHRONIC CONDITION"
   HI_99    = "DURATION OF LIMITATION - UNIT"
   HI_100   = "DURATION OF LIMITATION - NUMBER OF UNIT"
   HI_106   = "TOTAL RESTRICTED ACTIVITY DAYS IN PAST 2 WEEKS"
   HI_108   = "BED DISABILITY DAYS IN PAST 2 WEEKS"
   HI_110   = "WORK/SCHOOL LOSS DAY IDENTIFIER"
   HI_111   = "WORK OR SCHOOL-LOSS DAYS IN PAST 2 WEEKS"
   HI_115   = "DENTAL VISITS IN 2 WEEKS"
   HI_120   = "DOCTOR VISITS IN 12 MONTHS - KNOWN/UNKNOWN CODE"
   HI_121   = "DOCTOR VISITS IN 12 MONTHS - NUMBER OF VISITS"
   HI_124   = "NUMBER OF SHORT-STAY HOSPITAL DAYS IN PAST 12 MONTHS"
   HI_127   = "INTERVAL SINCE LAST DOCTOR VISIT"
   HI_128   = "INTERVAL SINCE LAST DENTAL VISIT"
   HI_129   = "NUMBER OF SHORT-STAY HOSPITAL EPISODES"
   HI_135   = "NUMBER OF CHRONIC CONDITIONS CAUSING LA"
   HI_140   = "HOSPITAL OWNERSHIP FOR SHORT-STAY EPISODES"
   HI_142   = "BED DAYS PAST 12 MOTHS"
   HI_143   = "FAMILY STRUCTURE"
   HI_145   = "HEALTH STATUS"
   HI_147   = "SERVICE CONNECTED DISABILITY"
   HI_149   = "VETERANS ADMINISTRATION MEDICAL CARE - PAST 12 MONTHS"
   HI_150   = "SUPPLEMENTAL SECURITY INCOME"
   HI_156   = "HEIGHT WITHOUT SHOES"
   HI_158   = "USED MEDICAID - PAST 12 MONTHS"
   HI_159   = "MEDICAID - TYPE OF CARD"
   HI_160   = "WEIGHT WITHOUT SHOES"
   HI_163   = "BRANCH OF ARMED FORCES"
   HI_164   = "SERVED MOST RECENTLY"
   HI_165   = "YEAR OF DISCHARGE (RANGE EDIT ONLY)"
   HI_167   = "TOTAL YEARS SERVED (RANGE EDIT ONLY)"
   HI_169   = "RETIREMENT PAYMENT OR PENSION"
   HI_171   = "CONDITION LIST ASSIGNED AND ASKED"
   HI_172   = "RECEIVED INCOME"
   HI_173   = "INDIVIDUAL INCOME"
   HI_175   = "INCOME OF HEAD OF FAMILY"
   HI_177   = "INCOME OF MAJOR BREADWINNER"
   HI_179   = "MAIN RACIAL BACKGROUND"
   HI_180   = "TOTAL ROOMS"
   HI_181   = "TOTAL NUMBER OF BEDROOMS"
   HI_182   = "BASIC WEIGHT BEFORE ASC ADJUSTMENT"
   HI_188   = "FINAL BASIC WEIGHT"
   HI_193   = "6.5 WEIGHT"
   HI_199   = "MAIN SPANISH ORIGIN"
   HI_201   = "BASIC WEIGHT - QUARTER"
   HI_210   = "BASIC WEIGHT - SEMIANNUAL"
   WTFA     = "BASIC WEIGHT - ANNUAL"
   HI_228   = "BASIC WEIGHT - BIANNUAL"
   HI_237   = "6.5 WEIGHT - QUARTER, SEMIANNUAL, ANNUAL"
   HI_246   = "6.5 WEIGHT - BIANNUAL"
   HI_255   = "ESTIMATED RESTRICTED ACTIVITY DAYS PAST 2W - QUARTER, SEMIANNUAL, ANNUAL"
   HI_264   = "ESTIMATED RESTRICTED ACTIVITY DAYS PAST 2W - BIANNUAL"
   HI_273   = "ESTIMATED BED DAYS PAST 2W - QUARTER, SEMIANNUAL, ANNUAL"
   HI_282   = "ESTIMATED BED DAYS PAST 2W - BIANNUAL"
   HI_291   = "ESTIMATED WORK/SCHOOL LOSS DAYS PAST 2W - QUARTER, SEMIANNUAL, ANNUAL"
   HI_300   = "ESTIMATED WORK/SCHOOL LOSS DAYS PAST 2W - BIANNUAL"
   HI_309   = "ESTIMATED NUMBER OF HOSPITAL DAYS PAST 2W - QUARTER, SEMIANNUAL, ANNUAL"
   HI_318   = "ESTIMATED NUMBER OF HOSPITAL DAYS PAST 2W - BIANNUAL"
   HI_327   = "ESTIMATED DENTAL VISITS PAST 2W - QUARTER, SEMIANNUAL, ANNUAL"
   HI_336   = "ESTIMATED DENTAL VISITS PAST 2W - BIANNUAL"
   HI_345   = "CHRONIC CONDITION PREVALENCE AND INCIDENCE FACTOR"
   HI_381   = "ESTIMATED DOCTOR VISITS PAST 12M - QUARTER"
   HI_390   = "ESTIMATED DOCTOR VISITS PAST 12M - SEMIANNUAL"
   HI_399   = "ESTIMATED DOCTOR VISITS PAST 12M - ANNUAL"
   HI_408   = "ESTIMATED DOCTOR VISITS PAST 12M - BIANNUAL"
   HI_417   = "ESTIMATED SHORT-STAY HOSPITAL DAYS PAST 12M - QUARTER"
   HI_426   = "ESTIMATED SHORT-STAY HOSPITAL DAYS PAST 12M - SEMIANNUAL"
   HI_435   = "ESTIMATED SHORT-STAY HOSPITAL DAYS PAST 12M - ANNUAL"
   HI_444   = "ESTIMATED SHORT-STAY HOSPITAL DAYS PAST 12M - BIANNUAL"
   HI_453   = "ANNUAL ESTIMATED NUMBER OF SHORT-STAY HOSPITAL EPISODES PAST 12M"
   HI_466   = "MEDICARE COVERAGE"
   HI_467   = "MEDICARE: HOSPITAL COVERAGE"
   HI_468   = "MEDICARE: DOCTOR COVERAGE"
   HI_469   = "PRIVATE HEALTH INSURANCE COVERAGE"
   HI_470   = "PRIVATE HEALTH INSURANCE: HOSPITAL COVERAGE"
   HI_471   = "PRIVATE HEALTH INSURANCE: SURGICAL COVERAGE"
   HI_472   = "MAIN REASON NO MEDICARE OR PRIVATE HEALTH INSURANCE"
   HI_474   = "ONE SOURCE OF CARE"
   HI_475   = "TYPE OF SOURCE OF CARE"
   HI_476   = "ONE PARTICULAR DOCTOR"
   HI_477   = "TIME TAKEN TO GET TO SOURCE OF CARE"
   HI_480   = "TIME TAKEN TO GET TO SOURCE"
   HI_481   = "PLACE DOCTOR LAST SEEN"
   HI_482   = "REASON FOR NO ONE SOURCE OF CARE"
   HI_483   = "AGE RECODE"
   HI_484   = "GIVEN OR SOLD BLOOD IN PAST YEAR"
   HI_485   = "TIMES GAVE OR SOLD BLOOD IN PAST YEAR"
   HI_486   = "SOLD BLOOD"
   HI_487   = "REPLACED BLOOD"
   HI_488   = "BLOOD BANK"
   HI_489   = "OTHER UNPAID DONATION"
   HI_490   = "SOME OTHER REASON"
   HI_491   = "UNKNOWN REASON"
   HI_492   = "EVER GAVE OR SOLD BLOOD"
   HI_493   = "TIME SINCE BLOOD LAST GIVEN"
   HI_495   = "TIME SINCE BLOOD LAST GIVEN"
   HI_496   = "TOTAL TIMES EVER DONATED BLOOD"
   HI_498   = "TIME EVER DONATED BLOOD"
   HI_499   = "EVER ASKED TO DONATE BLOOD"
   HI_500   = "RESPONDENT STATUS"
   HI_501   = "MEDICARE COVERAGE"
   HI_502   = "MEDICARE: HOSPITAL COVERAGE"
   HI_503   = "MEDICARE: DOCTOR COVERAGE"
   HI_504   = "MEDICARE CARD - PERSONS UNDER 65 YEARS OF AGE"
   HI_505   = "MEDICARE COVERAGE: HOSPITAL AND/OR DOCTOR COVERAGE"
   HI_507   = "MEDICARE: HOSPITAL AND/OR DOCTOR COVERAGE SUMNARY"
   HI_508   = "PRIVATE HEALTHINSURANCE"
   HI_509   = "PRIVATE HEALTH INSURANCE: HOSPITAL COVERAGE"
   HI_510   = "PRIVATE HEALTH INSURANCE: SURGICAL COVERAGE"
   HI_511   = "PRIVATE HEALTH INSURANCE: HOSPITAL AND/OR SURGICAL COVERAGE"
   HI_513   = "PRIVATE HEALTH INSURANCE: HOSPITAL AND/OR SURGICAL COVERAGE"
   HI_514   = "MEDICARE AND/OR PRIVATE HEALTH INSURANCE"
   HI_515   = "MEDICARE AND/OR PRIVATE HEALTH INSURANCE HOSPITAL COVERAGE"
   HI_516   = "MEDICARE AND/OR PRIVATE HEALTH INSURANCE - HOSPITAL AND SURGICAL"
   HI_517   = "PRIVATE HEALTH INSURANCE AND/OR MEDICARE COVERAGE - HOSPITAL AND SURGICAL"
   HI_519   = "PRIVATE HEALTH INSURANCE AND/OR MEDICARE - HOSPITAL AND/OR SURGICAL COVERAGE"
   HI_520   = "CARE RECEIVED THROUGH MEDICAID OR WELFARE"
   HI_521   = "UNEMPLOYMENT OR REASONS RELATED TO UNEMPLOYMENT"
   HI_522   = "CAN’T OBTAIN BECAUSE OF POOR HEALTH, ILLNESS OR AGE"
   HI_523   = "TOO EXPENSIVE, CAN’T AFFORD HEALTH INSURANCE"
   HI_524   = "DISSATISFIED WITH PREVIOUS INSURANCE"
   HI_525   = "DON’T BELIEVE IN INSURANCE"
   HI_526   = "HAVE BEEN HEALTHY, HAVEN’T NEEDED HEALTH INSURANCE"
   HI_527   = "MILITARY DEPENDENT, COVERED BY CHAMPUS, VETERAN'S BENEFITS"
   HI_528   = "SOME OTHER REASON"
   HI_529   = "WHETHER REASON GIVEN"
   HI_530   = "MAIN REASON NO MEDICARE OR PRIVATE HEALTH INSURANCE"
   HI_533   = "TYPE OF PRIVATE HEALTH INSURANCE COVERAGE"
   HI_534   = "PLAN 1 - TYPE OF PLAN"
   HI_535   = "PLAN OBTAINED THROUGH EMPLOYER OR UNION"
   HI_536   = "PLAN OBTAINED THROUGH GROUP OTHER THAN EMPLOYER OR UNION"
   HI_537   = "PLAN PAYS SOME OR ALL OF HOSPITAL BILLS"
   HI_538   = "PLAN PAYS SOME OR ALL SURGICAL BILLS FOR OPERATIONS"
   HI_539   = "THIS PERSON’S COVERAGE STATUS UNDER THIS PLAN"
   HI_540   = "THIS PERSON USED THIS PLAN IN PAST 12 MONTHS"
   HI_541   = "PLAN 2 - TYPE OF PLAN"
   HI_542   = "PLAN OBTAINED THROUGH EMPLOYER OR UNION"
   HI_543   = "PLAN OBTAINED THROUGH GROUP OTHER THAN EMPLOYER OR UNION"
   HI_544   = "PLAN PAYS SOME OR ALL OF HOSPITAL BILLS"
   HI_545   = "PLAN PAYS SOME OR ALL SURGICAL BILLS FOR OPERATIONS"
   HI_546   = "THIS PERSON’S COVERAGE STATUS UNDER THIS PLAN"
   HI_547   = "THIS PERSON USED THIS PLAN IN PAST 12 MONTHS"
   HI_548   = "PLAN 3 - TYPE OF PLAN"
   HI_549   = "PLAN OBTAINED THROUGH EMPLOYER OR UNION"
   HI_550   = "PLAN OBTAINED THROUGH GROUP OTHER THAN EMPLOYER OR UNION"
   HI_551   = "PLAN PAYS SOME OR ALL OF HOSPITAL BILLS"
   HI_552   = "PLAN PAYS SOME OR ALL SURGICAL BILLS FOR OPERATIONS"
   HI_553   = "THIS PERSON’S COVERAGE STATUS UNDER THIS PLAN"
   HI_554   = "THIS PERSON USED THIS PLAN IN PAST 12 MONTHS"
   HI_555   = "PLAN 4 - TYPE OF PLAN"
   HI_556   = "PLAN OBTAINED THROUGH EMPLOYER OR UNION"
   HI_557   = "PLAN OBTAINED THROUGH GROUP OTHER THAN EMPLOYER OR UNION"
   HI_558   = "PLAN PAYS SOME OR ALL OF HOSPITAL BILLS"
   HI_559   = "PLAN PAYS SOME OR ALL SURGICAL BILLS FOR OPERATIONS"
   HI_560   = "THIS PERSON’S COVERAGE STATUS UNDER THIS PLAN"
   HI_561   = "THIS PERSON USED THIS PLAN IN PAST 12 MONTHS"
   HI_562   = "PLAN 5 - TYPE OF PLAN"
   HI_563   = "PLAN OBTAINED THROUGH EMPLOYER OR UNION"
   HI_564   = "PLAN OBTAINED THROUGH GROUP OTHER THAN EMPLOYER OR UNION"
   HI_565   = "PLAN PAYS SOME OR ALL OF HOSPITAL BILLS"
   HI_566   = "PLAN PAYS SOME OR ALL SURGICAL BILLS FOR OPERATIONS"
   HI_567   = "THIS PERSON’S COVERAGE STATUS UNDER THIS PLAN"
   HI_568   = "THIS PERSON USED THIS PLAN IN PAST 12 MONTHS"
   HI_569   = "AFDC AND/OR SSI COVERAGE"
   HI_570   = "AFDC AND/OR SSI COVERAGE AND CURRENT MEDICAID CARD"
   HI_571   = "AFDC AND/OR SSI COVERAGE, CURRENT MEDICAID CARD AND MEDICAID REIMBURSEMENT FOR SERVICES DURING PAST 12 MONTH"
   HI_572   = "MILITARY PENSIONER OR DEPENDENT"
   HI_573   = "ACTIVE MILITARY DEPENDENTS"
   HI_574   = "COVERAGE BY VA HEALTH BENEFITS"
   HI_575   = "COVERAGE BY MILITARY OR VA HEALTH BENEFITS"
   HI_576   = "MEDICAID - RELATED CHARACTERISTICS"
   ;
* ASSOCIATE VARIABLES WITH FORMAT VALUES;
 
FORMAT
   PSUNUMR   $HIN001X.   WEEKCEN   HIN002X.    SEGNUM    $HIN003X.
   HHNUM     $HIN004X.   PNUM      $HIN005X.   RECTYPE   HIN006X.
   HI_17     HIN007X.    QUARTER   HIN008X.    YEAR      HIN009X.
   HI_28     HIN010X.    HI_29     HIN011X.    HI_30     HIN012X.
   HI_33     HIN013X.    HI_36     HIN014X.    HI_37     HIN015X.
   HI_40     HIN016X.    HI_42     HIN017X.    HI_43     $HIN018X.
   HI_44     HIN019X.    HI_45     HIN020X.    HI_46     HIN021X.
   HI_49     HIN022X.    HI_50     HIN023X.    HI_51     HIN024X.
   HI_52     HIN025X.    HI_53     HIN026X.    HI_55     HIN027X.
   HI_57     HIN028X.    HI_59     HIN029X.    HI_60     HIN030X.
   HI_61     HIN031X.    HI_63     HIN032X.    HI_64     HIN033X.
   HI_66     HIN034X.    HI_67     HIN035X.    HI_68     HIN036X.
   HI_70     HIN037X.    HI_71     $HIN038X.   HI_72     $HIN039X.
   HI_73     HIN040X.    HI_74     HIN041X.    HI_75     HIN042X.
   HI_76     HIN043X.    HI_77     HIN044X.    HI_80     HIN045X.
   HI_82     HIN046X.    HI_84     HIN047X.    HI_87     HIN048X.
   HI_89     HIN049X.    HI_91     HIN050X.    HI_94     HIN051X.
   HI_95     HIN052X.    HI_97     HIN053X.    HI_98     HIN054X.
   HI_99     HIN055X.    HI_100    HIN056X.    HI_106    HIN057X.
   HI_108    HIN058X.    HI_110    HIN059X.    HI_111    HIN060X.
   HI_115    HIN061X.    HI_120    HIN062X.    HI_121    HIN063X.
   HI_124    HIN064X.    HI_127    HIN065X.    HI_128    HIN066X.
   HI_129    HIN067X.    HI_135    HIN068X.    HI_140    HIN069X.
   HI_142    HIN070X.    HI_143    HIN071X.    HI_145    HIN072X.
   HI_147    HIN073X.    HI_149    HIN074X.    HI_150    HIN075X.
   HI_156    HIN076X.    HI_158    HIN077X.    HI_159    HIN078X.
   HI_160    HIN079X.    HI_163    HIN080X.    HI_164    HIN081X.
   HI_165    HIN082X.    HI_167    HIN083X.    HI_169    HIN084X.
   HI_171    HIN085X.    HI_172    HIN086X.    HI_173    HIN087X.
   HI_175    HIN088X.    HI_177    HIN089X.    HI_179    HIN090X.
   HI_180    $HIN091X.   HI_181    $HIN092X.   HI_182    HIN093X.
   HI_188    HIN094X.    HI_193    HIN095X.    HI_199    HIN096X.
   HI_201    HIN097X.    HI_210    HIN098X.    WTFA      HIN099X.
   HI_228    HIN100X.    HI_237    HIN101X.    HI_246    HIN102X.
   HI_255    HIN103X.    HI_264    HIN104X.    HI_273    HIN105X.
   HI_282    HIN106X.    HI_291    HIN107X.    HI_300    HIN108X.
   HI_309    HIN109X.    HI_318    HIN110X.    HI_327    HIN111X.
   HI_336    HIN112X.    HI_345    HIN113X.    HI_381    HIN114X.
   HI_390    HIN115X.    HI_399    HIN116X.    HI_408    HIN117X.
   HI_417    HIN118X.    HI_426    HIN119X.    HI_435    HIN120X.
   HI_444    HIN121X.    HI_453    HIN122X.    HI_466    HIN123X.
   HI_467    HIN124X.    HI_468    HIN125X.    HI_469    HIN126X.
   HI_470    HIN127X.    HI_471    HIN128X.    HI_472    HIN129X.
   HI_474    HIN130X.    HI_475    HIN131X.    HI_476    HIN132X.
   HI_477    HIN133X.    HI_480    HIN134X.    HI_481    HIN135X.
   HI_482    HIN136X.    HI_483    HIN137X.    HI_484    HIN138X.
   HI_485    HIN139X.    HI_486    HIN140X.    HI_487    HIN141X.
   HI_488    HIN142X.    HI_489    HIN143X.    HI_490    HIN144X.
   HI_491    HIN145X.    HI_492    HIN146X.    HI_493    HIN147X.
   HI_495    HIN148X.    HI_496    HIN149X.    HI_498    HIN150X.
   HI_499    HIN151X.    HI_500    HIN152X.    HI_501    HIN153X.
   HI_502    HIN154X.    HI_503    HIN155X.    HI_504    HIN156X.
   HI_505    HIN157X.    HI_507    HIN158X.    HI_508    HIN159X.
   HI_509    HIN160X.    HI_510    HIN161X.    HI_511    HIN162X.
   HI_513    HIN163X.    HI_514    HIN164X.    HI_515    HIN165X.
   HI_516    HIN166X.    HI_517    HIN167X.    HI_519    HIN168X.
   HI_520    HIN169X.    HI_521    HIN170X.    HI_522    HIN171X.
   HI_523    HIN172X.    HI_524    HIN173X.    HI_525    HIN174X.
   HI_526    HIN175X.    HI_527    HIN176X.    HI_528    HIN177X.
   HI_529    HIN178X.    HI_530    HIN179X.    HI_533    HIN180X.
   HI_534    HIN181X.    HI_535    HIN182X.    HI_536    HIN183X.
   HI_537    HIN184X.    HI_538    HIN185X.    HI_539    HIN186X.
   HI_540    HIN187X.    HI_541    HIN188X.    HI_542    HIN189X.
   HI_543    HIN190X.    HI_544    HIN191X.    HI_545    HIN192X.
   HI_546    HIN193X.    HI_547    HIN194X.    HI_548    HIN195X.
   HI_549    HIN196X.    HI_550    HIN197X.    HI_551    HIN198X.
   HI_552    HIN199X.    HI_553    HIN200X.    HI_554    HIN201X.
   HI_555    HIN202X.    HI_556    HIN203X.    HI_557    HIN204X.
   HI_558    HIN205X.    HI_559    HIN206X.    HI_560    HIN207X.
   HI_561    HIN208X.    HI_562    HIN209X.    HI_563    HIN210X.
   HI_564    HIN211X.    HI_565    HIN212X.    HI_566    HIN213X.
   HI_567    HIN214X.    HI_568    HIN215X.    HI_569    HIN216X.
   HI_570    HIN217X.    HI_571    HIN218X.    HI_572    HIN219X.
   HI_573    HIN220X.    HI_574    HIN221X.    HI_575    HIN222X.
   HI_576    HIN223X.
   ;
 
PROC CONTENTS DATA=NHIS.HEALTHIN;
 
PROC FREQ DATA=NHIS.HEALTHIN;
TITLE1 'FREQUENCY REPORT FOR 1978 NHIS HEALTH INSURANCE SUPPLEMENT FILE';
TITLE2 '(WEIGHTED)';
TABLES RECTYPE/LIST MISSING;
WEIGHT WTFA;
 
PROC FREQ DATA=NHIS.HEALTHIN;
TITLE1 'FREQUENCY REPORT FOR 1978 NHIS HEALTH INSURANCE SUPPLEMENT FILE';
TITLE2 '(UNWEIGHTED)';
TABLES RECTYPE/LIST MISSING;
 
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
              STATEMENT: FORMAT _ALL_;
RUN;
