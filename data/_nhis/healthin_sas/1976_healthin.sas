DM 'CLE LOG; CLE OUT';
**************************************************************************
  February 2, 2006
 
THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
FILE FROM THE NHIS 1976 HEALTHIN.DAT ASCII FILE.
 
NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
      GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
      DOCUMENTATION.
 
THIS IS STORED IN HEALTHIN.SAS
*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;
 
LIBNAME NHIS    'C:\NHIS1976\';
LIBNAME LIBRARY 'C:\NHIS1976\';
 
FILENAME ASCIIDAT 'C:\NHIS1976\HEALTHIN.DAT';
 
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
   1                = "Quarter 1, 1976"
   2                = "Quarter 2, 1976"
   3                = "Quarter 3, 1976"
   4                = "Quarter 4, 1976"
   ;
  VALUE  HIN009X
   6                = "1976"
   ;
  VALUE  HIN010X
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
  VALUE  HIN011X
   0                = "The 31 Large Self-representing SMSA's"
   1                = "SMSA-Self-representing"
   3                = "SMSA-Nonself-representing"
   4                = "Non-SMSA-Self-representing"
   6                = "Non-SMSA-Nonself-representing"
   ;
  VALUE  HIN012X
   1                = "Northeast"
   2                = "North Central"
   3                = "South"
   4                = "West"
   ;
  VALUE  HIN013X
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
  VALUE  HIN014X
   1                = "In SMSA, in Central City"
   2                = "In SMSA, not in Central City"
   3                = "Not in SMSA"
   ;
  VALUE  HIN015X
   1                = "SMSA"
   2                = "Non-SMSA - Nonfarm"
   3                = "Non-SMSA - Farm"
   ;
  VALUE  HIN016X
   1                = "Housing Unit"
   2                = "Other"
   ;
  VALUE  HIN017X
   ;
  VALUE  HIN018X
   1-8              = "Number of calls"
   9                = "9+ calls"
   0                = "Not reported"
   ;
  VALUE  HIN019X
   1                = "Yes - phone"
   2                = "No or none"
   3                = "Phone,but nonumber listed, or number refused"
   9                = "DK if phone or refused"
   .                = "Not reported"
   ;
  VALUE  HIN020X
   1                = "Yes"
   2                = "No"
   3                = "Yes and no"
   .                = "Not reported"
   ;
  VALUE  HIN021X
   1                = "Monday"
   2                = "Tuesday"
   3                = "Wednesday"
   4                = "Thursday"
   5                = "Friday"
   6                = "Saturday"
   7                = "Sunday"
   8                = "Unknown"
   ;
  VALUE  HIN022X
   001-998          = "Number of minutes"
   999              = "999+ minutes"
   .                = "Not reported"
   ;
  VALUE  HIN023X
   1                = "6:01 am - 12:00 noon"
   2                = "12:01pm -  6:00 pm"
   3                = "6:01 pm - 12:00 midnight"
   4                = "12:01pm -  6:00 am"
   .                = "Not reported"
   ;
  VALUE  HIN024X
   1                = "White"
   2                = "Black"
   3                = "Other"
   ;
  VALUE  HIN025X
   1                = "White"
   2                = "Other races"
   ;
  VALUE  HIN026X
   1                = "Male"
   2                = "Female"
   ;
  VALUE  HIN027X
   00               = "Under 1 year"
   01-98            = "Single years"
   99               = "99+ years"
   ;
  VALUE  HIN028X
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
  VALUE  HIN029X
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
  VALUE  HIN030X
   1                = "Under 15 years"
   2                = "15-44"
   3                = "45-64"
   4                = "65+"
   ;
  VALUE  HIN031X
   0                = "Under 17 years"
   1                = "Married - Spouse present"
   2                = "Widowed"
   3                = "Never married"
   4                = "Divorsed"
   5                = "Separated"
   6                = "Married - Spouse absent"
   ;
  VALUE  HIN032X
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
  VALUE  HIN033X
   1                = "Under 17 years of age"
   2                = "None"
   3                = "01-08 (elementary)"
   4                = "09-11 (high school)"
   5                = "12 (high school graduate)"
   6                = "13-15 (college)"
   7                = "16+ (college graduate +)"
   8                = "Unknown"
   ;
  VALUE  HIN034X
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
  VALUE  HIN035X
   1                = "Under 17 years of age"
   2                = "None"
   3                = "01-08 (elementary)"
   4                = "09-11 (high school)"
   5                = "12 (high school graduate)"
   6                = "13-15 (college)"
   7                = "16+ (college graduate +)"
   8                = "Unknown"
   ;
  VALUE  HIN036X
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
  VALUE  HIN037X
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
  VALUE  HIN038X
   1                = "Under $3,000"
   2                = "$3,000-4,999"
   3                = "5,000-6,999"
   4                = "7,000-9,999"
   5                = "10,000-14,999"
   6                = "15,000+"
   7                = "Unknown"
   ;
  VALUE $HIN039X
   "&"              = "Primary individual"
   "-"              = "Secondary individual"
   "0"              = "Primary family"
   "1"-"9"          = "Secondary families"
   ;
  VALUE $HIN040X
   "&"              = "Unrelated individual living alone"
   "0"              = "Head of family or unrelated individual not living alone"
   "1"              = "Wife (husband living at home and not in Amed Forces)"
   "2"              = "Wife (husband living at home and is in Armed Forces)"
   "3"              = "Child of head or spouse"
   "4"              = "Grand child of head or spouse"
   "5"              = "Parent of head or spouse"
   "6"              = "Other relative"
   ;
  VALUE  HIN041X
   1                = "Living alone"
   2                = "Living with nonrelative"
   3                = "Living with spouse"
   4                = "Living with relatives - other"
   ;
  VALUE  HIN042X
   0                = "Under 6 years"
   1                = "Usually working"
   2                = "Keeping house (female)"
   3                = "Retlred - Health (45+ years)"
   4                = "Going to school"
   5                = "Something else"
   6                = "Unknown"
   7                = "Retired,Other (45+ years)"
   ;
  VALUE  HIN043X
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
  VALUE  HIN044X
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
  VALUE  HIN045X
   017-999          = "Code Number"
   .                = "Not applicable"
   ;
  VALUE  HIN046X
   ;
  VALUE  HIN047X
   ;
  VALUE  HIN048X
   001-995          = "Code number"
   .                = "Not applicable"
   ;
  VALUE  HIN049X
   ;
  VALUE  HIN050X
   ;
  VALUE  HIN051X
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
  VALUE  HIN052X
   1                = "Under 20 years"
   2                = "20-54 years"
   3                = "55-64 years"
   4                = "65-74 years"
   5                = "75+ years"
   6                = "Unknown and not reported"
   ;
  VALUE  HIN053X
   00               = "Unrelated individuals"
   01-19            = "Family size"
   ;
  VALUE  HIN054X
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
  VALUE  HIN055X
   1                = "Cannot perform Usual Activity"
   2                = "Can perfom UA but limited in amount and kind"
   3                = "Can perfom UA but limited in outside activities"
   4                = "Not limited (including unknown) or not applicable (persons with no chronic condition )"
   ;
  VALUE  HIN056X
   1                = "Months"
   2                = "Years"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN057X
   00               = "Less than l month"
   01-98            = "Number of months or years"
   99               = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN058X
   00               = "None"
   01-14            = "Number of days"
   ;
  VALUE  HIN059X
   00               = "None"
   01-14            = "Number of days"
   ;
  VALUE  HIN060X
   1                = "Under 6 years of age"
   2                = "School-loss days"
   3                = "Work-loss days"
   ;
  VALUE  HIN061X
   00               = "None or Under 6"
   01-14            = "Number of days"
   ;
  VALUE  HIN062X
   00               = "None or Under 6"
   01-14            = "Number of days"
   ;
  VALUE  HIN063X
   00               = "None"
   01-97            = "Numberof visits"
   ;
  VALUE  HIN064X
   1                = "Number of visits known"
   2                = "Number of visits unknown"
   ;
  VALUE  HIN065X
   000              = "None or Unknown"
   001-998          = "Number of visits"
   ;
  VALUE  HIN066X
   000              = "None"
   001-365          = "Number of days"
   ;
  VALUE  HIN067X
   0                = "Never"
   1                = "Visit in past 2 weeks"
   3                = "2 weeks to less than 6 months"
   4                = "6 months to less than 12 months"
   5                = "1 year"
   6                = "2-4 years"
   7                = "5+ years"
   9                = "Unknown"
   ;
  VALUE  HIN068X
   0                = "Never"
   1                = "Visit in 2 weeks"
   2                = "2 weeks to less than 6 months"
   3                = "6 months to less than 12 months"
   4                = "1 year"
   5                = "2-4 years"
   6                = "5+ years"
   8                = "Unknown"
   ;
  VALUE  HIN069X
   ;
  VALUE  HIN070X
   ;
  VALUE  HIN071X
   0                = "No episodes"
   1                = "All in federal hospitals"
   2                = "All in nonfederal hospitals"
   3                = "Both federal and nonfederal hospitals"
   ;
  VALUE  HIN072X
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
  VALUE  HIN073X
   1                = "Excellent"
   2                = "Good"
   3                = "Fair"
   4                = "Poor"
   5                = "Unknown"
   ;
  VALUE  HIN074X
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
  VALUE $HIN075X
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
  VALUE $HIN076X
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
  VALUE  HIN077X
   ;
  VALUE  HIN078X
   ;
  VALUE  HIN079X
   ;
  VALUE  HIN080X
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
   11               = "American Indian"
   12               = "Asian or Pacific Islander"
   13               = "Another group not listed"
   14               = "Multiple"
   15               = "Russian"
   16               = "Canadian"
   17               = "Two origins, unknown which is main"
   18               = "Unknown, refused or not reported"
   ;
  VALUE  HIN081X
   ;
  VALUE  HIN082X
   ;
  VALUE  HIN083X
   ;
  VALUE  HIN084X
   ;
  VALUE  HIN085X
   ;
  VALUE  HIN086X
   ;
  VALUE  HIN087X
   ;
  VALUE  HIN088X
   ;
  VALUE  HIN089X
   ;
  VALUE  HIN090X
   ;
  VALUE  HIN091X
   ;
  VALUE  HIN092X
   ;
  VALUE  HIN093X
   ;
  VALUE  HIN094X
   ;
  VALUE  HIN095X
   ;
  VALUE  HIN096X
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
   0                = "Covered - 65+"
   1                = "Not covered - 65+"
   2                = "DK if covered - 65+"
   3                = "Under 65 years"
   ;
  VALUE  HIN107X
   1                = "Yes"
   2                = "Unknown or not reported"
   ;
  VALUE  HIN108X
   1                = "Covered"
   2                = "Not covered"
   3                = "DK if covered"
   4                = "Has some coverage, but plan information not specified"
   ;
  VALUE  HIN109X
   1                = "Yes"
   .                = "Not Applicable"
   ;
  VALUE  HIN110X
   1                = "Yes"
   .                = "Not Applicable"
   ;
  VALUE  HIN111X
   1                = "Yes"
   .                = "Not Applicable"
   ;
  VALUE  HIN112X
   1-5              = "Number of Plans"
   .                = "Not Applicable"
   ;
  VALUE  HIN113X
   1                = "Yes has Blue Plan"
   .                = "Not Applicable"
   ;
  VALUE  HIN114X
   1                = "Yes has Prepaid Group Plan"
   .                = "Not Applicable"
   ;
  VALUE  HIN115X
   1                = "Yes, other Plan"
   .                = "Not Applicable"
   ;
  VALUE  HIN116X
   1                = "Yes has Blue Plan"
   .                = "Not Applicable"
   ;
  VALUE  HIN117X
   1                = "Blue only"
   2                = "Prepaid only"
   3                = "Other only"
   4                = "Blue and prepaid only"
   5                = "Blue and other only"
   6                = "Prepaid and other only"
   7                = "Blue, prepaid and other"
   .                = "Not applicable"
   ;
  VALUE  HIN118X
   1                = "Covered"
   2                = "Not covered"
   3                = "DK if covered"
   4                = "Has some coverage, but plan information not specified"
   ;
  VALUE  HIN119X
   1                = "Yes"
   .                = "Not Applicable"
   ;
  VALUE  HIN120X
   1                = "Yes"
   .                = "Not Applicable"
   ;
  VALUE  HIN121X
   1                = "Yes"
   .                = "Not Applicable"
   ;
  VALUE  HIN122X
   1-5              = "Number of Plans"
   .                = "Not Applicable"
   ;
  VALUE  HIN123X
   1                = "Yes has Blue Plan"
   .                = "Not Applicable"
   ;
  VALUE  HIN124X
   1                = "Yes has Prepaid Group Plan"
   .                = "Not Applicable"
   ;
  VALUE  HIN125X
   1                = "Yes, other Plan"
   .                = "Not Applicable"
   ;
  VALUE  HIN126X
   1                = "Yes has Blue Plan"
   .                = "Not Applicable"
   ;
  VALUE  HIN127X
   1                = "Blue only"
   2                = "Prepaid only"
   3                = "Other only"
   4                = "Blue and prepaid only"
   5                = "Blue and other only"
   6                = "Prepaid and other only"
   7                = "Blue, prepaid and other"
   .                = "Not applicable"
   ;
  VALUE  HIN128X
   1                = "Yes"
   .                = "Not used or Applicable"
   ;
  VALUE  HIN129X
   1                = "Yes"
   .                = "Not Applicable"
   ;
  VALUE  HIN130X
   1                = "Yes"
   .                = "Not Applicable"
   ;
  VALUE  HIN131X
   1                = "Yes"
   .                = "Not Applicable"
   ;
  VALUE  HIN132X
   1                = "Yes"
   .                = "Not Applicable"
   ;
  VALUE  HIN133X
   1                = "Yes"
   .                = "Not Applicable"
   ;
  VALUE  HIN134X
   1                = "Yes"
   .                = "Not Applicable"
   ;
  VALUE  HIN135X
   1                = "Yes"
   .                = "Not Applicable"
   ;
  VALUE  HIN136X
   1                = "Yes"
   .                = "Not Applicable"
   ;
  VALUE  HIN137X
   1                = "Yes"
   .                = "Not Applicable"
   ;
  VALUE  HIN138X
   1                = "Yes"
   .                = "Not Applicable"
   ;
  VALUE  HIN139X
   1                = "Yes"
   .                = "Not Applicable"
   ;
  VALUE  HIN140X
   1                = "Yes"
   .                = "Not Applicable"
   ;
  VALUE  HIN141X
   01               = "Care through Medicare"
   02               = "Care through Medicaid or welfare"
   03               = "Reason related to unemployment"
   04               = "Can't obtain insurance"
   05               = "Too expensive"
   06               = "Dissatisfied with previous insurance"
   07               = "Do not believe in insurance"
   08               = "Healthy"
   09               = "Military Care or Veteran's Benefits"
   10               = "Professional Courtesy"
   11               = "Other specific reasons"
   12               = "Unknown reason"
   .                = "Not applicable"
   ;
 
DATA NHIS.HEALTHIN;
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1976\';
   INFILE ASCIIDAT MISSOVER TRUNCOVER LRECL=503;
 
* DEFINE LENGTH OF NUMERIC VARIABLES;
 
LENGTH
   WEEKCEN   3  RECTYPE   3  HI_17     3  QUARTER   3  YEAR      3
   WEEKPROC  3  HI_28     3  HI_29     3  HI_30     3  HI_33     3
   HI_36     3  HI_37     3  HI_40     3  HI_42     3  HI_43     3
   HI_44     3  HI_45     3  HI_46     3  HI_49     3  HI_50     3
   HI_51     3  HI_52     3  HI_53     3  HI_55     3  HI_57     3
   HI_59     3  HI_60     3  HI_61     3  HI_63     3  HI_64     3
   HI_66     3  HI_67     3  HI_68     3  HI_70     3  HI_73     3
   HI_74     3  HI_75     3  HI_76     3  HI_77     3  HI_80     3
   HI_82     3  HI_84     3  HI_87     3  HI_89     3  HI_91     3
   HI_94     3  HI_95     3  HI_97     3  HI_98     3  HI_99     3
   HI_100    3  HI_106    3  HI_108    3  HI_110    3  HI_111    3
   HI_113    3  HI_115    3  HI_120    3  HI_121    3  HI_124    3
   HI_127    3  HI_128    3  HI_129    3  HI_135    3  HI_140    3
   HI_143    3  HI_145    3  HI_175    3  HI_182    6  HI_188    6
   HI_193    6  HI_199    6  HI_201    6  HI_210    6  WTFA      6
   HI_228    6  HI_237    6  HI_246    6  HI_255    6  HI_264    6
   HI_273    6  HI_282    6  HI_291    6  HI_300    6  HI_309    6
   HI_318    6  HI_327    6  HI_336    6  HI_381    6  HI_390    6
   HI_399    6  HI_408    6  HI_417    6  HI_426    6  HI_435    6
   HI_444    6  HI_453    6  HI_465    3  HI_466    3  HI_467    3
   HI_468    3  HI_469    3  HI_470    3  HI_471    3  HI_472    3
   HI_473    3  HI_474    3  HI_475    3  HI_476    3  HI_478    3
   HI_479    3  HI_480    3  HI_481    3  HI_482    3  HI_483    3
   HI_484    3  HI_485    3  HI_486    3  HI_487    3  HI_489    3
   HI_490    3  HI_491    3  HI_492    3  HI_493    3  HI_494    3
   HI_495    3  HI_496    3  HI_497    3  HI_498    3  HI_499    3
   HI_500    3  HI_501    3  HI_502    3
   ;
* INPUT ALL VARIABLES;
 
INPUT
   PSUNUMR  $   3 - 5          WEEKCEN      6 - 7
   SEGNUM   $   8 - 9          HHNUM    $  10 - 11
   PNUM     $  12 - 13         RECTYPE     14 - 14
   HI_17       17 - 18         QUARTER     19 - 19
   YEAR        20 - 20         WEEKPROC    21 - 22
   HI_28       28 - 28         HI_29       29 - 29
   HI_30       30 - 31         HI_33       33 - 33
   HI_36       36 - 36         HI_37       37 - 37
   HI_40       40 - 41         HI_42       42 - 42
   HI_43       43 - 43         HI_44       44 - 44
   HI_45       45 - 45         HI_46       46 - 48
   HI_49       49 - 49         HI_50       50 - 50
   HI_51       51 - 51         HI_52       52 - 52
   HI_53       53 - 54         HI_55       55 - 56
   HI_57       57 - 58         HI_59       59 - 59
   HI_60       60 - 60         HI_61       61 - 62
   HI_63       63 - 63         HI_64       64 - 65
   HI_66       66 - 66         HI_67       67 - 67
   HI_68       68 - 69         HI_70       70 - 70
   HI_71    $  71 - 71         HI_72    $  72 - 72
   HI_73       73 - 73         HI_74       74 - 74
   HI_75       75 - 75         HI_76       76 - 76
   HI_77       77 - 79         HI_80       80 - 81
   HI_82       82 - 83         HI_84       84 - 86
   HI_87       87 - 88         HI_89       89 - 90
   HI_91       91 - 91         HI_94       94 - 94
   HI_95       95 - 96         HI_97       97 - 97
   HI_98       98 - 98         HI_99       99 - 99
   HI_100     100 - 101        HI_106     106 - 107
   HI_108     108 - 109        HI_110     110 - 110
   HI_111     111 - 112        HI_113     113 - 114
   HI_115     115 - 116        HI_120     120 - 120
   HI_121     121 - 123        HI_124     124 - 126
   HI_127     127 - 127        HI_128     128 - 128
   HI_129     129 - 130        HI_135     135 - 136
   HI_140     140 - 140        HI_143     143 - 144
   HI_145     145 - 145        HI_175     175 - 176
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
   HI_381     381 - 389        HI_390     390 - 398
   HI_399     399 - 407        HI_408     408 - 416
   HI_417     417 - 425        HI_426     426 - 434
   HI_435     435 - 443        HI_444     444 - 452
   HI_453     453 - 461        HI_465     465 - 465
   HI_466     466 - 466        HI_467     467 - 467
   HI_468     468 - 468        HI_469     469 - 469
   HI_470     470 - 470        HI_471     471 - 471
   HI_472     472 - 472        HI_473     473 - 473
   HI_474     474 - 474        HI_475     475 - 475
   HI_476     476 - 476        HI_478     478 - 478
   HI_479     479 - 479        HI_480     480 - 480
   HI_481     481 - 481        HI_482     482 - 482
   HI_483     483 - 483        HI_484     484 - 484
   HI_485     485 - 485        HI_486     486 - 486
   HI_487     487 - 487        HI_489     489 - 489
   HI_490     490 - 490        HI_491     491 - 491
   HI_492     492 - 492        HI_493     493 - 493
   HI_494     494 - 494        HI_495     495 - 495
   HI_496     496 - 496        HI_497     497 - 497
   HI_498     498 - 498        HI_499     499 - 499
   HI_500     500 - 500        HI_501     501 - 501
   HI_502     502 - 502
   ;
* DEFINE VARIABLE LABELS;
 
LABEL
   PSUNUMR  = "PSU - ORIGINAL CODE"
   WEEKCEN  = "WEEK - CENSUS CODE"
   SEGNUM   = "SEGMENT NUMBER"
   HHNUM    = "HOUSEHOLD NUMBER"
   PNUM     = "PERSON NUMBER"
   RECTYPE  = "RECORD TYPE (6)"
   HI_17    = "CENSUS WEEK RECODE"
   QUARTER  = "PROCESSING QUARTER CODE"
   YEAR     = "PROCESSING YEAR"
   WEEKPROC = "PROCESSING WEEK CODE"
   HI_28    = "TYPE OF PSU"
   HI_29    = "REGION"
   HI_30    = "TABULATION AREA"
   HI_33    = "GEOGRAPHIC IDENTIFICATION"
   HI_36    = "SMSA - NON-SMSA RESIDENCE"
   HI_37    = "TYPE OF LIVING QUARTERS"
   HI_40    = "INTERVIEW NUMBER"
   HI_42    = "NUMBER OF CALLS"
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
   HI_74    = "USUAL ACTIVITY"
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
   HI_98    = "LIMITATION OF ACTIVITY PERSONS WITH 1+ CHRONIC CONDITION"
   HI_99    = "DURATION OF LIMITATION - UNIT"
   HI_100   = "DURATION OF LIMITATION - NUMBER OF UNIT"
   HI_106   = "TOTAL RESTRICTED ACTIVITY DAYS IN PAST 2 WEEKS"
   HI_108   = "BED DISABILITY DAYS IN PAST 2 WEEKS"
   HI_110   = "WORK/SCHOOL LOSS DAY IDENTIFIER"
   HI_111   = "WORK OR SCHOOL-LOSS DAYS IN PAST 2 WEEKS"
   HI_113   = "NUMBER OF DAYS IN HOSPITAL IN PAST 2 WEEKS"
   HI_115   = "DENTAL VISITS IN 2 WEEKS"
   HI_120   = "DOCTOR VISITS IN 12 MONTHS - KNOWN/UNKNOWN CODE"
   HI_121   = "DOCTOR VISITS IN 12 MONTHS - NUMBER OF VISITS"
   HI_124   = "NUMBER OF SHORT-STAY HOSPITAL DAYS IN PAST 12 MONTHS"
   HI_127   = "INTERVAL SINCE LAST DOCTOR VISIT"
   HI_128   = "INTERVAL SINCE LAST DENTAL VISIT"
   HI_129   = "NUMBER OF SHORT-STAY HOSPITAL EPISODES"
   HI_135   = "NUMBER OF CHRONIC CONDITIONS CAUSING LA"
   HI_140   = "HOSPITAL OWNERSHIP FOR SHORT-STAY EPISODES"
   HI_143   = "FAMILY STRUCTURE"
   HI_145   = "HEALTH STATUS"
   HI_175   = "INCOME OF HEAD OF FAMILY"
   HI_180   = "TOTAL ROOMS"
   HI_181   = "TOTAL NUMBER OF BEDROOMS"
   HI_182   = "BASIC WEIGHT BEFORE ASC ADJUSTMENT"
   HI_188   = "FINAL BASIC WEIGHT"
   HI_193   = "6.5 WEIGHT"
   HI_199   = "MAIN NATIONAL ORIGIN"
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
   HI_381   = "ESTIMATED DOCTOR VISITS PAST 12M - QUARTER"
   HI_390   = "ESTIMATED DOCTOR VISITS PAST 12M - SEMIANNUAL"
   HI_399   = "ESTIMATED DOCTOR VISITS PAST 12M - ANNUAL"
   HI_408   = "ESTIMATED DOCTOR VISITS PAST 12M - BIANNUAL"
   HI_417   = "ESTIMATED SHORT-STAY HOSPITAL DAYS PAST 12M - QUARTER"
   HI_426   = "ESTIMATED SHORT-STAY HOSPITAL DAYS PAST 12M - SEMIANNUAL"
   HI_435   = "ESTIMATED SHORT-STAY HOSPITAL DAYS PAST 12M - ANNUAL"
   HI_444   = "ESTIMATED SHORT-STAY HOSPITAL DAYS PAST 12M - BIANNUAL"
   HI_453   = "ANNUAL ESTIMATED NUMBER OF SHORT-STAY HOSPITAL EPISODES PAST 12M"
   HI_465   = "SOCIAL SECURITY MEDICARE"
   HI_466   = "MEDICAL USED IN PAST 12 MONTHS"
   HI_467   = "PRIVATE HOSPITAL INSURANCE COVERAGE"
   HI_468   = "HAS 1+ PRIVATE PLANS OBTAINED THROUGH EMPLOYER OR UNION"
   HI_469   = "HAS 1+ PRIVATE PLANS OBTAINED THROUGH ANOTHER GROUP"
   HI_470   = "HAS 1+ PRIVATE PLANS NOT OBTAINED THROUGH A GROUP"
   HI_471   = "NUMBER OF PRIVATE HOSPITAL PLANS"
   HI_472   = "HAS BLUE PLAN"
   HI_473   = "HAS PREPAID PLAN"
   HI_474   = "HAS SOME OTHER TYPE PRIVATE PLAN"
   HI_475   = "HAS INSURANCE, UNKNOWN NAME OF PRIVATE PLAN"
   HI_476   = "PRIVATE PLAN COMBINATIONS"
   HI_478   = "PRIVATE SURGICAL INSURANCE COVERAGE"
   HI_479   = "HAS 1+ PRIVATE PLANS OBTAINED THROUGH EMPLOYER OR UNION"
   HI_480   = "HAS 1+ PRIVATE PLANS OBTAINED THROUGH ANOTHER GROUP"
   HI_481   = "HAS 1+ PRIVATE PLANS NOT OBTAINED THROUGH A GROUP"
   HI_482   = "NUMBER OF PRIVATE SURGICAL PLANS"
   HI_483   = "HAS BLUE PLAN"
   HI_484   = "HAS PREPAID PLAN"
   HI_485   = "HAS SOME OTHER TYPE PRIVATE PLAN"
   HI_486   = "HAS INSURANCE, UNKNOWN NAME OF PRIVATE PLAN"
   HI_487   = "PRIVATE PLAN COMBINATIONS"
   HI_489   = "RECEIVED MEDICAL CARE UNDER 1+ PLANS IN PAST YEAR"
   HI_490   = "NO INSURANCE - CARE THROUGH MEDICARE"
   HI_491   = "NO INSURANCE - CARE THROUGH MEDICAID OR WELFARE"
   HI_492   = "NO INSURANCE - REASON RELATED TO UNEMPLOYMENT"
   HI_493   = "NO INSURANCE - CAN'T OBTAIN INSURANCE"
   HI_494   = "NO INSURANCE - TOO EXPENSIVE"
   HI_495   = "NO INSURANCE - DISSATISFIED WITH PREVIOUS INSURANCE"
   HI_496   = "NO INSURANCE - DO NOT BELIEVE IN INSURANCE"
   HI_497   = "NO INSURANCE - HEALTHY"
   HI_498   = "NO INSURANCE - MILITARY CARE OR VETERAN'S BENEFITS"
   HI_499   = "NO INSURANCE - PROFESSIONAL COURTESY"
   HI_500   = "NO INSURANCE - OTHER SPECIFIC REASONS"
   HI_501   = "NO INSURANCE - UNKNOWN REASON"
   HI_502   = "MAIN REASON FOR NO INSURANCE"
   ;
* ASSOCIATE VARIABLES WITH FORMAT VALUES;
 
FORMAT
   PSUNUMR   $HIN001X.   WEEKCEN   HIN002X.    SEGNUM    $HIN003X.
   HHNUM     $HIN004X.   PNUM      $HIN005X.   RECTYPE   HIN006X.
   HI_17     HIN007X.    QUARTER   HIN008X.    YEAR      HIN009X.
   WEEKPROC  HIN010X.    HI_28     HIN011X.    HI_29     HIN012X.
   HI_30     HIN013X.    HI_33     HIN014X.    HI_36     HIN015X.
   HI_37     HIN016X.    HI_40     HIN017X.    HI_42     HIN018X.
   HI_43     HIN019X.    HI_44     HIN020X.    HI_45     HIN021X.
   HI_46     HIN022X.    HI_49     HIN023X.    HI_50     HIN024X.
   HI_51     HIN025X.    HI_52     HIN026X.    HI_53     HIN027X.
   HI_55     HIN028X.    HI_57     HIN029X.    HI_59     HIN030X.
   HI_60     HIN031X.    HI_61     HIN032X.    HI_63     HIN033X.
   HI_64     HIN034X.    HI_66     HIN035X.    HI_67     HIN036X.
   HI_68     HIN037X.    HI_70     HIN038X.    HI_71     $HIN039X.
   HI_72     $HIN040X.   HI_73     HIN041X.    HI_74     HIN042X.
   HI_75     HIN043X.    HI_76     HIN044X.    HI_77     HIN045X.
   HI_80     HIN046X.    HI_82     HIN047X.    HI_84     HIN048X.
   HI_87     HIN049X.    HI_89     HIN050X.    HI_91     HIN051X.
   HI_94     HIN052X.    HI_95     HIN053X.    HI_97     HIN054X.
   HI_98     HIN055X.    HI_99     HIN056X.    HI_100    HIN057X.
   HI_106    HIN058X.    HI_108    HIN059X.    HI_110    HIN060X.
   HI_111    HIN061X.    HI_113    HIN062X.    HI_115    HIN063X.
   HI_120    HIN064X.    HI_121    HIN065X.    HI_124    HIN066X.
   HI_127    HIN067X.    HI_128    HIN068X.    HI_129    HIN069X.
   HI_135    HIN070X.    HI_140    HIN071X.    HI_143    HIN072X.
   HI_145    HIN073X.    HI_175    HIN074X.    HI_180    $HIN075X.
   HI_181    $HIN076X.   HI_182    HIN077X.    HI_188    HIN078X.
   HI_193    HIN079X.    HI_199    HIN080X.    HI_201    HIN081X.
   HI_210    HIN082X.    WTFA      HIN083X.    HI_228    HIN084X.
   HI_237    HIN085X.    HI_246    HIN086X.    HI_255    HIN087X.
   HI_264    HIN088X.    HI_273    HIN089X.    HI_282    HIN090X.
   HI_291    HIN091X.    HI_300    HIN092X.    HI_309    HIN093X.
   HI_318    HIN094X.    HI_327    HIN095X.    HI_336    HIN096X.
   HI_381    HIN097X.    HI_390    HIN098X.    HI_399    HIN099X.
   HI_408    HIN100X.    HI_417    HIN101X.    HI_426    HIN102X.
   HI_435    HIN103X.    HI_444    HIN104X.    HI_453    HIN105X.
   HI_465    HIN106X.    HI_466    HIN107X.    HI_467    HIN108X.
   HI_468    HIN109X.    HI_469    HIN110X.    HI_470    HIN111X.
   HI_471    HIN112X.    HI_472    HIN113X.    HI_473    HIN114X.
   HI_474    HIN115X.    HI_475    HIN116X.    HI_476    HIN117X.
   HI_478    HIN118X.    HI_479    HIN119X.    HI_480    HIN120X.
   HI_481    HIN121X.    HI_482    HIN122X.    HI_483    HIN123X.
   HI_484    HIN124X.    HI_485    HIN125X.    HI_486    HIN126X.
   HI_487    HIN127X.    HI_489    HIN128X.    HI_490    HIN129X.
   HI_491    HIN130X.    HI_492    HIN131X.    HI_493    HIN132X.
   HI_494    HIN133X.    HI_495    HIN134X.    HI_496    HIN135X.
   HI_497    HIN136X.    HI_498    HIN137X.    HI_499    HIN138X.
   HI_500    HIN139X.    HI_501    HIN140X.    HI_502    HIN141X.
   ;
 
PROC CONTENTS DATA=NHIS.HEALTHIN;
 
PROC FREQ DATA=NHIS.HEALTHIN;
TITLE1 'FREQUENCY REPORT FOR 1976 NHIS HEALTH INSURANCE SUPPLEMENT FILE';
TITLE2 '(WEIGHTED)';
TABLES RECTYPE/LIST MISSING;
WEIGHT WTFA;
 
PROC FREQ DATA=NHIS.HEALTHIN;
TITLE1 'FREQUENCY REPORT FOR 1976 NHIS HEALTH INSURANCE SUPPLEMENT FILE';
TITLE2 '(UNWEIGHTED)';
TABLES RECTYPE/LIST MISSING;
 
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
              STATEMENT: FORMAT _ALL_;
RUN;
