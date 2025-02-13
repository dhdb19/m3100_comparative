DM 'CLE LOG; CLE OUT';
**************************************************************************
  December 3, 2009
 
THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
FILE FROM THE NHIS 1972 HEALTHIN.DAT ASCII FILE.

NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
      GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
      DOCUMENTATION.

THIS IS STORED IN HEALTHIN.SAS.
*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;

LIBNAME NHIS      'C:\NHIS1972\';
LIBNAME LIBRARY   'C:\NHIS1972\';
FILENAME ASCIIDAT 'C:\PU\1972\dat\HEALTHIN.dat';

* DEFINE VARIABLE VALUES FOR REPORT;
 
PROC FORMAT LIBRARY=LIBRARY;
  VALUE  HIC0001X
   1                    = "B60 (weeks 03-13) and B64 (weeks 01 & 02)"
   2                    = "B61 (weeks 01-13)"
   3                    = "B62 (weeks 01-13)"
   4                    = "B63 (weeks 01-13)"
   ;
  VALUE  HIC0002X
   2                    = "1972"
   3                    = "1973"
   ;
  VALUE  HIC0003X
   ;
  VALUE  HIC0004X
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
  VALUE  HIC0005X
   ;
  VALUE  HIC0006X
   ;
  VALUE $HIC0007X
   ;
  VALUE  HIC0008X
   7                    = "Health Insurance Record"
   ;
  VALUE  HIC0009X
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
  VALUE  HIC0010X
   1                    = "B60 (weeks 03-13); B61 (weeks 01-02)"
   2                    = "B61 (weeks 03-13); B62 (weeks 01-02)"
   3                    = "B62 (weeks 03-13); B63 (weeks 01-02)"
   4                    = "B63 (weeks 03-13); B64 (weeks 01-02)"
   ;
  VALUE  HIC0011X
   2                    = "1972"
   ;
  VALUE  HIC0012X
   01                   = "23, 43, 63, 83 - 1972"
   02                   = "24, 44, 64, 84 - 1972"
   03                   = "25, 45, 65, 85 - 1972"
   04                   = "26, 46, 66, 86 - 1972"
   05                   = "27, 47, 67, 87 - 1972"
   06                   = "28, 48, 68, 88 - 1972"
   07                   = "29, 49, 69, 89 - 1972"
   08                   = "30, 50, 60, 90 - 1972"
   09                   = "31, 51, 71, 91 - 1972"
   10                   = "32, 52, 72, 92 - 1972"
   11                   = "33, 53, 73, 93 - 1972"
   12                   = "21, 41, 61, 81 - 1972 or 1973"
   13                   = "22, 42, 62, 82 - 1972 or 1973"
   ;
  VALUE  HIC0013X
   0                    = "The 22 Large Self-representing SMSA's"
   1                    = "SMSA - Self-representing"
   3                    = "SMSA - Nonself-representing"
   4                    = "Non-SMSA - Self-representing"
   6                    = "Non-SMSA - Nonself-representing"
   ;
  VALUE  HIC0014X
   1                    = "Northeast (includes Sections 1 and 2)"
   2                    = "North Central (includes Sections 3, 4 and 5)"
   3                    = "South (includes Sections 6, 7, 8 and 9)"
   4                    = "West (includes Sections 10 and 11)"
   ;
  VALUE  HIC0015X
   .                    = "Non-self-representing sections and self-representing SMSA's"
   34                   = "Boston"                   45               = "Buffalo"
   35                   = "New York"                 46               = "Cleveland"
   36                   = "Philadelphia"             47               = "Minneapolis-St.Paul"
   37                   = "Pittsburgh"               48               = "Milwaukee"
   38                   = "Detroit"                  49               = "Kansas City"
   39                   = "Chicago"                  50               = "St. Louis"
   40                   = "Cincinnati"               51               = "Houston"
   41                   = "Los Angeles-Long Beach"   52               = "Dallas"
   42                   = "San Francisco-Oakland"    53               = "Washington, D.C"
   43                   = "Baltimore"                54               = "Seattle-Everett"
   44                   = "Atlanta"                  55               = "San Diego"
   ;
  VALUE  HIC0016X
   1                    = "In SMSA, in Central City of SMSA"
   2                    = "In SMSA, not in Central City of SMSA"
   4                    = "Not in SMSA"
   ;
  VALUE  HIC0017X
   1                    = "SMSA"
   2                    = "Non-SMSA - Nonfarm"
   3                    = "Non-SMSA - Farm"
   ;
  VALUE  HIC0018X
   1                    = "Housing Unit"
   2                    = "Other"
   ;
  VALUE  HIC0019X
   ;
  VALUE  HIC0020X
   0                    = "Not reported"
   1-8                  = "Number of calls"
   9                    = "9+ calls"
   ;
  VALUE  HIC0021X
   1                    = "Yes - phone"
   2                    = "No or none"
   3                    = "Phone, but no number listed or number refused"
   9                    = "DK if phone or refused"
   .                    = "Not reported"
   ;
  VALUE  HIC0022X
   1                    = "Yes"
   2                    = "No"
   .                    = "Not reported"
   ;
  VALUE  HIC0023X
   1                    = "Monday"
   2                    = "Tuesday"
   3                    = "Wednesday"
   4                    = "Thursday"
   5                    = "Friday"
   6                    = "Saturday"
   7                    = "Sunday"
   8                    = "Unknown"
   ;
  VALUE  HIC0024X
   001-999              = "Minutes"
   .                    = "Not reported"
   ;
  VALUE  HIC0025X
   1                    = "6:01 am - 12:00 noon"
   2                    = "12:01pm -  6:00 pm"
   3                    = "6:01 pm - 12:00 midnight"
   4                    = "12:01am -  6:00 am"
   .                    = "Not reported"
   ;
  VALUE  HIC0026X
   1                    = "White"
   2                    = "Negro"
   3                    = "Other"
   ;
  VALUE  HIC0027X
   1                    = "White"
   2                    = "Other race"
   ;
  VALUE  HIC0028X
   1                    = "Male"
   2                    = "Female"
   ;
  VALUE  HIC0029X
   00                   = "Under 1 year"
   01-98                = "Number of years"
   99                   = "99+ years"
   ;
  VALUE  HIC0030X
   01                   = "00-04 years"
   02                   = "05-14"
   03                   = "15-24"
   04                   = "25-34"
   05                   = "35-44"
   06                   = "45-54"
   07                   = "55-64"
   08                   = "65-74"
   09                   = "75+"
   ;
  VALUE  HIC0031X
   01                   = "Under 6 years"
   02                   = "06-16"
   03                   = "17-24"
   04                   = "25-34"
   05                   = "35-44"
   06                   = "45-54"
   07                   = "55-64"
   08                   = "65-74"
   09                   = "75+"
   ;
  VALUE  HIC0032X
   1                    = "Under 15 years"
   2                    = "15-44"
   3                    = "45-64"
   4                    = "65+"
   ;
  VALUE  HIC0033X
   0                    = "Under 17 years"
   1                    = "Married"
   2                    = "Widowed"
   3                    = "Never married"
   4                    = "Divorced"
   5                    = "Separated"
   ;
  VALUE  HIC0034X
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
  VALUE  HIC0035X
   1                    = "Under 17 years of age"
   2                    = "None"
   3                    = "01-08 (elementary)"
   4                    = "09-11 (high school)"
   5                    = "12    (high school graduate)"
   6                    = "13-15 (college)"
   7                    = "16+   (college graduate +)"
   8                    = "Unknown"
   ;
  VALUE  HIC0036X
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
  VALUE  HIC0037X
   1                    = "Under 17 years of age"
   2                    = "None"
   3                    = "01-08 (elementary)"
   4                    = "09-11 (high school)"
   5                    = "12    (high school graduate)"
   6                    = "13-15 (college)"
   7                    = "16+   (college graduate +)"
   8                    = "Unknown"
   ;
  VALUE  HIC0038X
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
  VALUE  HIC0039X
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
  VALUE  HIC0040X
   1                    = "Under $3,000"
   2                    = "3,000-4,999"
   3                    = "5,000-6,999"
   4                    = "7,000-9,999"
   5                    = "10,000-14,999"
   6                    = "15,000+"
   7                    = "Unknown"
   ;
  VALUE $HIC0041X
   '&'                  = "Primary individual"
   '-'                  = "Secondary individual"
   '0'                  = "Primary family"
   '1'-'9'              = "Secondary families"
   ;
  VALUE $HIC0042X
   '&'                  = "Unrelated individual living alone"
   '0'                  = "Head of family or unrelated individual not living alone"
   '1'                  = "Wife (husband living at home and not in Armed Forces)"
   '2'                  = "Wife (husband living at home and  is in Armed Forces)"
   '3'                  = "Child of head or spouse"
   '4'                  = "Grandchild of head or spouse"
   '5'                  = "Parent of head or spouse"
   '6'                  = "Other relative"
   ;
  VALUE  HIC0043X
   1                    = "Living alone"
   2                    = "Living with nonrelatives"
   3                    = "Living with relatives - married"
   4                    = "Living with relatives - other"
   ;
  VALUE  HIC0044X
   0                    = "Under 6 years"
   1                    = "Usually working"
   2                    = "Keeping house (female)"
   3                    = "Retired - Health (45+ years)"
   4                    = "Going to school"
   5                    = "Something else"
   6                    = "Unknown"
   7                    = "Retired,Other (45+ years)"
   ;
  VALUE  HIC0045X
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
  VALUE  HIC0046X
   1                    = "private paid"
   2                    = "Federal Government"
   3                    = "Other Government"
   4                    = "Self employed"
   5                    = "Nonpay"
   6                    = "Other (new worker)"
   7                    = "Unknown or not reported"
   8                    = "Not in Labor Force"
   ;
  VALUE  HIC0047X
   017-999              = "Code Number"
   .                    = "Not applicable"
   ;
  VALUE  HIC0048X
   ;
  VALUE  HIC0049X
   ;
  VALUE  HIC0050X
   001-995              = "Code number"
   .                    = "Not applicable"
   ;
  VALUE  HIC0051X
   ;
  VALUE  HIC0052X
   ;
  VALUE  HIC0053X
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
  VALUE  HIC0054X
   1                    = "Under 20 years"
   2                    = "20-54 years"
   3                    = "55-64 years"
   4                    = "65-74 years"
   5                    = "75+ years"
   6                    = "Unknown or not reported"
   ;
  VALUE  HIC0055X
   00                   = "Unrelated individuals"
   01-19                = "Family size"
   ;
  VALUE  HIC0056X
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
  VALUE  HIC0057X
   1                    = "Can not perform Usual Activity"
   2                    = "Can perform UA but limited in amount and kind"
   3                    = "Can perform UA but limited in outside activities"
   4                    = "Not limited (including unknown)"
   5                    = "Not applicable (no chronic condition)"
   ;
  VALUE  HIC0058X
   1                    = "Months"
   2                    = "Years"
   3                    = "Unknown"
   .                    = "Not applicable"
   ;
  VALUE  HIC0059X
   00                   = "Less than l month"
   01-98                = "Number of months or years"
   99                   = "Unknown"
   .                    = "Not applicable"
   ;
  VALUE  HIC0060X
   1                    = "Confined to bed"
   2                    = "Confined to house"
   3                    = "Needs help in getting around"
   4                    = "Needs help of a special aid in getting around"
   5                    = "Has trouble getting around alone"
   6                    = "Not limited (including unknown)"
   7                    = "Not applicable - no chronic condition"
   ;
  VALUE  HIC0061X
   1                    = "Months"
   2                    = "Years"
   3                    = "Unknown"
   .                    = "Not applicable"
   ;
  VALUE  HIC0062X
   00                   = "Less than l month"
   01-98                = "Number of months or years"
   99                   = "Unknown"
   .                    = "Not applicable"
   ;
  VALUE  HIC0063X
   00                   = "None"
   01-14                = "Number of days"
   ;
  VALUE  HIC0064X
   00                   = "None"
   01-14                = "Number of days"
   ;
  VALUE  HIC0065X
   1                    = "Under 6 years of age"
   2                    = "School-loss days"
   3                    = "Work-loss days"
   ;
  VALUE  HIC0066X
   00                   = "None or Under 6"
   01-14                = "Number of days"
   ;
  VALUE  HIC0067X
   00                   = "None or Under 6"
   01-14                = "Number of days"
   ;
  VALUE  HIC0068X
   00                   = "None"
   01-98                = "Number of visits"
   ;
  VALUE  HIC0069X
   1                    = "Number of visits known"
   2                    = "Number of visits unknown"
   ;
  VALUE  HIC0070X
   00                   = "None or Unknown"
   01-98                = "Number of visits"
   ;
  VALUE  HIC0071X
   1                    = "Number of visits known"
   2                    = "Number of visits unknown"
   ;
  VALUE  HIC0072X
   000                  = "None or Unknown"
   001-998              = "Number of visits"
   ;
  VALUE  HIC0073X
   000                  = "None"
   001-365              = "Number of days"
   ;
  VALUE  HIC0074X
   0                    = "Never"
   1                    = "Visit in past 2 weeks"
   3                    = "2 weeks to less than 6 months"
   4                    = "6 months to less than 12 months"
   5                    = "1 year"
   6                    = "2-4 years"
   7                    = "5+ years"
   9                    = "Unknown"
   ;
  VALUE  HIC0075X
   0                    = "Never"
   1                    = "Visit in 2 weeks"
   2                    = "2 weeks to less than 6 months"
   3                    = "6 months to less than 12 months"
   4                    = "1 year"
   5                    = "2-4 years"
   6                    = "5+ years"
   8                    = "Unknown"
   ;
  VALUE  HIC0076X
   ;
  VALUE  HIC0077X
   ;
  VALUE  HIC0078X
   ;
  VALUE  HIC0079X
   ;
  VALUE  HIC0080X
   ;
  VALUE  HIC0081X
   0                    = "No episodes"
   1                    = "All in federal hospitals"
   2                    = "All in nonfederal hospitals"
   3                    = "Both federal and nonfederal hospitals"
   ;
  VALUE  HIC0082X
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
  VALUE  HIC0083X
   1                    = "Excellent"
   2                    = "Good"
   3                    = "Fair"
   4                    = "Poor"
   5                    = "Unknown"
   ;
  VALUE  HIC0084X
   ;
  VALUE  HIC0085X
   ;
  VALUE  HIC0086X
   ;
  VALUE  HIC0087X
   ;
  VALUE  HIC0088X
   ;
  VALUE  HIC0089X
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
   1                    = "Yes - HI only"
   2                    = "Yes - HI and extra cash"
   3                    = "Yes - Extra cash only"
   4                    = "No"
   5                    = "DK"
   6                    = "DK with extra cash only"
   ;
  VALUE  HIC0117X
   1                    = "Yes"
   2                    = "No"
   3                    = "DK"
   ;
  VALUE  HIC0118X
   01                   = "Medicare only"
   02                   = "Medicare with Blue"
   03                   = "Medicare with prepaid group"
   04                   = "Medicare with Blue and prepaid group"
   05                   = "Medicare with Blue, prepaid group, other and unknown name"
   06                   = "Medicare with Blue, other and unknown name"
   07                   = "Medicare with prepaid group, other and unknown name"
   08                   = "Medicare with other and unknown name"
   09                   = "DK if Medicare"
   10                   = "No Medicare"
   11                   = "Under 65"
   12                   = "No Hospital Coverage"
   ;
  VALUE  HIC0119X
   01                   = "Prepaid group only"
   02                   = "Prepaid group with Blue"
   03                   = "Prepaid group with Medicare"
   04                   = "Prepaid group with Blue and Medicare"
   05                   = "Prepaid group with Blue, Medicare, other and unknown name"
   06                   = "Prepaid group with Blue, other and unknown name"
   07                   = "Prepaid group with Medicare, other and unknown name"
   08                   = "Prepaid group with other and unknown name"
   09                   = "DK if Prepaid group"
   10                   = "No Prepaid group"
   11                   = "No Hospital Coverage"
   12                   = "Prepaid group, DK coverage"
   ;
  VALUE  HIC0120X
   01                   = "Blue only"
   02                   = "Blue with Prepaid group"
   03                   = "Blue with Medicare"
   04                   = "Blue with Prepaid group and Medicare"
   05                   = "Blue with Prepaid group, Medicare, other and unknown name"
   06                   = "Blue with Prepaid group, other and unknown name"
   07                   = "Blue with Medicare, other and unknown name"
   08                   = "Blue with other and unknown name"
   09                   = "DK if Blue"
   10                   = "No Blue"
   11                   = "Blue but No Hospital Coverage"
   12                   = "Blue, DK type coverage"
   ;
  VALUE  HIC0121X
   01                   = "Other and DK Name only"
   02                   = "Other and DK Name with Blue"
   03                   = "Other and DK Name with Prepaid group"
   04                   = "Other and DK Name with Medicare"
   05                   = "Other and DK Name with Blue and Prepaid group"
   06                   = "Other and DK Name with Blue and Medicare"
   07                   = "Other and DK Name with Prepaid group and Medicare"
   08                   = "Other and DK Name with Blue, Prepaid group and Medicare"
   09                   = "No Other and DK Name"
   10                   = "Other and DK Name with No Hospital Coverage"
   11                   = "Other and DK Name, DK Coverage"
   ;
  VALUE  HIC0122X
   01                   = "Both Other and DK"
   02                   = "Other only"
   03                   = "DK Name only"
   04                   = "Not applicable"
   ;
  VALUE  HIC0123X
   01                   = "Blue only"
   02                   = "Medicare only"
   03                   = "Prepaid group only"
   04                   = "Blue and Medicare"
   05                   = "Blue with Medicare, Prepaid group and/or Other and DK Name"
   06                   = "Blue with Prepaid group and/or Other and DK Name"
   07                   = "Medicare with Prepaid group and/or Other and DK Name"
   08                   = "Other and DK Name with Prepaid group"
   09                   = "Other and DK Name only"
   10                   = "DK if covered"
   11                   = "Not covered"
   ;
  VALUE  HIC0124X
   1                    = "None (Either Surgical or Doctor Visit Coverage)"
   2                    = "Medicare"
   3                    = "Prepaid group"
   4                    = "Blue"
   5                    = "Other and DK Name"
   6                    = "DK if hospital"
   7                    = "No Hospital, Surgical or Doctor Visit Coverage"
   ;
  VALUE  HIC0125X
   1                    = "All from Table HI"
   2                    = "From Table HI and HS"
   3                    = "Medicare only"
   4                    = "No Hospital Coverage"
   5                    = "DK"
   ;
  VALUE  HIC0126X
   1                    = "Yes"
   2                    = "No"
   3                    = "DK"
   4                    = "Medicare only"
   5                    = "No Hospital Coverage"
   ;
  VALUE  HIC0127X
   1                    = "Group only"
   2                    = "Group and DK"
   3                    = "Individual only"
   4                    = "Individual and DK"
   5                    = "Group and Individual"
   6                    = "Group, Individual and DK"
   7                    = "DK Status and/or DK if covered"
   8                    = "Medicare only"
   9                    = "No Hospital"
   ;
  VALUE  HIC0128X
   1                    = "Yes"
   2                    = "No"
   3                    = "DK"
   4                    = "Medicare only"
   5                    = "No Hospital Coverage"
   ;
  VALUE  HIC0129X
   1                    = "Yes - HI only"
   2                    = "Yes - HI and extra cash"
   3                    = "Yes - Extra cash only"
   4                    = "No"
   5                    = "DK"
   6                    = "DK with extra cash only"
   ;
  VALUE  HIC0130X
   1                    = "Yes"
   2                    = "No"
   3                    = "DK"
   ;
  VALUE  HIC0131X
   01                   = "Medicare only"
   02                   = "Medicare with Blue"
   03                   = "Medicare with prepaid group"
   04                   = "Medicare with Blue and prepaid group"
   05                   = "Medicare with Blue, prepaid group, other and unknown name"
   06                   = "Medicare with Blue, other and unknown name"
   07                   = "Medicare with prepaid group, other and unknown name"
   08                   = "Medicare with other and unknown name"
   09                   = "DK if Medicare"
   10                   = "No Medicare"
   11                   = "Under 65"
   12                   = "No Surgical Coverage"
   ;
  VALUE  HIC0132X
   01                   = "Prepaid group only"
   02                   = "Prepaid group with Blue"
   03                   = "Prepaid group with Medicare"
   04                   = "Prepaid group with Blue and Medicare"
   05                   = "Prepaid group with Blue, Medicare, other and unknown name"
   06                   = "Prepaid group with Blue, other and unknown name"
   07                   = "Prepaid group with Medicare, other and unknown name"
   08                   = "Prepaid group with other and unknown name"
   09                   = "DK if Prepaid group"
   10                   = "No Prepaid group"
   11                   = "No Surgical Coverage"
   12                   = "Prepaid group, DK coverage"
   ;
  VALUE  HIC0133X
   01                   = "Blue only"
   02                   = "Blue with Prepaid group"
   03                   = "Blue with Medicare"
   04                   = "Blue with Prepaid group and Medicare"
   05                   = "Blue with Prepaid group, Medicare, other and unknown name"
   06                   = "Blue with Prepaid group, other and unknown name"
   07                   = "Blue with Medicare, other and unknown name"
   08                   = "Blue with other and unknown name"
   09                   = "DK if Blue"
   10                   = "No Blue"
   11                   = "Blue but No Surgical Coverage"
   12                   = "Blue, DK type coverage"
   ;
  VALUE  HIC0134X
   01                   = "Other and DK Name only"
   02                   = "Other and DK Name with Blue"
   03                   = "Other and DK Name with Prepaid group"
   04                   = "Other and DK Name with Medicare"
   05                   = "Other and DK Name with Blue and Prepaid group"
   06                   = "Other and DK Name with Blue and Medicare"
   07                   = "Other and DK Name with Prepaid group and Medicare"
   08                   = "Other and DK Name with Blue, Prepaid group and Medicare"
   09                   = "No Other and DK Name"
   10                   = "Other and DK Name with No Surgical Coverage"
   11                   = "Other and DK Name, DK Coverage"
   ;
  VALUE  HIC0135X
   01                   = "Both Other and DK"
   02                   = "Other only"
   03                   = "DK Name only"
   04                   = "Not applicable"
   ;
  VALUE  HIC0136X
   01                   = "Blue only"
   02                   = "Medicare only"
   03                   = "Prepaid group only"
   04                   = "Blue and Medicare"
   05                   = "Blue with Medicare, Prepaid group and/or Other and DK Name"
   06                   = "Blue with Prepaid group and/or Other and DK Name"
   07                   = "Medicare with Prepaid group and/or Other and DK Name"
   08                   = "Other and DK Name with Prepaid group"
   09                   = "Other and DK Name only"
   10                   = "DK if covered"
   11                   = "Not covered"
   ;
  VALUE  HIC0137X
   1                    = "None (Either Surgical or Doctor Visit Coverage)"
   2                    = "Medicare"
   3                    = "Prepaid group"
   4                    = "Blue"
   5                    = "Other and DK Name"
   6                    = "DK if Surgical"
   7                    = "No Surgical, Surgical or Doctor Visit Coverage"
   ;
  VALUE  HIC0138X
   1                    = "All from Table HI"
   2                    = "From Table HI and HS"
   3                    = "Medicare only"
   4                    = "No Surgical Coverage"
   5                    = "DK"
   ;
  VALUE  HIC0139X
   1                    = "Yes"
   2                    = "No"
   3                    = "DK"
   4                    = "Medicare only"
   5                    = "No Surgical Coverage"
   ;
  VALUE  HIC0140X
   1                    = "Group only"
   2                    = "Group and DK"
   3                    = "Individual only"
   4                    = "Individual and DK"
   5                    = "Group and Individual"
   6                    = "Group, Individual and DK"
   7                    = "DK Status and/or DK if covered"
   8                    = "Medicare only"
   9                    = "No Surgical"
   ;
  VALUE  HIC0141X
   1                    = "Yes"
   2                    = "No"
   3                    = "DK"
   4                    = "Medicare only"
   5                    = "No Surgical Coverage"
   ;
  VALUE  HIC0142X
   1                    = "Yes - HI only"
   2                    = "Yes - HI and extra cash"
   3                    = "Yes - Extra cash only"
   4                    = "No"
   5                    = "DK"
   6                    = "DK with extra cash only"
   ;
  VALUE  HIC0143X
   1                    = "Yes"
   2                    = "No"
   3                    = "DK"
   ;
  VALUE  HIC0144X
   01                   = "Medicare only"
   02                   = "Medicare with Blue"
   03                   = "Medicare with prepaid group"
   04                   = "Medicare with Blue and prepaid group"
   05                   = "Medicare with Blue, prepaid group, other and unknown name"
   06                   = "Medicare with Blue, other and unknown name"
   07                   = "Medicare with prepaid group, other and unknown name"
   08                   = "Medicare with other and unknown name"
   09                   = "DK if Medicare"
   10                   = "No Medicare"
   11                   = "Under 65"
   12                   = "No Doctor Visit Coverage"
   ;
  VALUE  HIC0145X
   01                   = "Prepaid group only"
   02                   = "Prepaid group with Blue"
   03                   = "Prepaid group with Medicare"
   04                   = "Prepaid group with Blue and Medicare"
   05                   = "Prepaid group with Blue, Medicare, other and unknown name"
   06                   = "Prepaid group with Blue, other and unknown name"
   07                   = "Prepaid group with Medicare, other and unknown name"
   08                   = "Prepaid group with other and unknown name"
   09                   = "DK if Prepaid group"
   10                   = "No Prepaid group"
   11                   = "No Doctor Visit Coverage"
   12                   = "Prepaid group, DK coverage"
   ;
  VALUE  HIC0146X
   01                   = "Blue only"
   02                   = "Blue with Prepaid group"
   03                   = "Blue with Medicare"
   04                   = "Blue with Prepaid group and Medicare"
   05                   = "Blue with Prepaid group, Medicare, other and unknown name"
   06                   = "Blue with Prepaid group, other and unknown name"
   07                   = "Blue with Medicare, other and unknown name"
   08                   = "Blue with other and unknown name"
   09                   = "DK if Blue"
   10                   = "No Blue"
   11                   = "Blue but No Doctor Visit Coverage"
   12                   = "Blue, DK type coverage"
   ;
  VALUE  HIC0147X
   01                   = "Other and DK Name only"
   02                   = "Other and DK Name with Blue"
   03                   = "Other and DK Name with Prepaid group"
   04                   = "Other and DK Name with Medicare"
   05                   = "Other and DK Name with Blue and Prepaid group"
   06                   = "Other and DK Name with Blue and Medicare"
   07                   = "Other and DK Name with Prepaid group and Medicare"
   08                   = "Other and DK Name with Blue, Prepaid group and Medicare"
   09                   = "No Other and DK Name"
   10                   = "Other and DK Name with No Doctor Visit Coverage"
   11                   = "Other and DK Name, DK Coverage"
   ;
  VALUE  HIC0148X
   01                   = "Other and DK Name"
   02                   = "Other only"
   03                   = "DK Name only"
   04                   = "Not applicable"
   ;
  VALUE  HIC0149X
   01                   = "Blue only"
   02                   = "Medicare only"
   03                   = "Prepaid group only"
   04                   = "Blue and Medicare"
   05                   = "Blue with Medicare, Prepaid group and/or Other and DK Name"
   06                   = "Blue with Prepaid group and/or Other and DK Name"
   07                   = "Medicare with Prepaid group and/or Other and DK Name"
   08                   = "Other and DK Name with Prepaid group"
   09                   = "Other and DK Name only"
   10                   = "DK if covered"
   11                   = "Not covered"
   ;
  VALUE  HIC0150X
   1                    = "None (Either Doctor Visit or Doctor Visit Coverage)"
   2                    = "Medicare"
   3                    = "Prepaid group"
   4                    = "Blue"
   5                    = "Other and DK Name"
   6                    = "DK if Doctor Visit"
   7                    = "No Doctor Visit, Doctor Visit or Doctor Visit Coverage"
   ;
  VALUE  HIC0151X
   1                    = "All from Table HI"
   2                    = "From Table HI and HS"
   3                    = "Medicare only"
   4                    = "No Doctor Visit Coverage"
   5                    = "DK"
   ;
  VALUE  HIC0152X
   1                    = "Yes"
   2                    = "No"
   3                    = "DK"
   4                    = "Medicare only"
   5                    = "No Doctor Visit Coverage"
   ;
  VALUE  HIC0153X
   1                    = "Group only"
   2                    = "Group and DK"
   3                    = "Individual only"
   4                    = "Individual and DK"
   5                    = "Group and Individual"
   6                    = "Group, Individual and DK"
   7                    = "DK Status and/or DK if covered"
   8                    = "Medicare only"
   9                    = "No Doctor Visit"
   ;
  VALUE  HIC0154X
   1                    = "Yes"
   2                    = "No"
   3                    = "DK"
   4                    = "Medicare only"
   5                    = "No Doctor Visit Coverage"
   ;
  VALUE  HIC0155X
   1                    = "Covered"
   2                    = "Covered, extra cash only"
   3                    = "DK if covered"
   4                    = "Not covered"
   ;
  VALUE  HIC0156X
   1                    = "Only one plan"
   2                    = "More than one plan"
   3                    = "One plan, DK if more"
   4                    = "No Hospital Coverage or DK if Hospital Coverage"
   ;
  VALUE  HIC0157X
   1                    = "Only one plan"
   2                    = "More than one plan"
   3                    = "One plan, DK if more"
   4                    = "No Hospital Coverage or DK if Hospital Coverage"
   ;
  VALUE  HIC0158X
   1                    = "Only one plan"
   2                    = "More than one plan"
   3                    = "One plan, DK if more"
   4                    = "No Hospital Coverage or DK if Hospital Coverage"
   ;

DATA NHIS.HEALTHIN;
* CREATE A SAS DATA SET STORED IN DIR C:\NHIS1972\;
   INFILE ASCIIDAT LRECL=522;

* DEFINE LENGTH OF NUMERIC VARIABLES;
 
LENGTH
   SAMPLER   3  YEARINT   3  PSURANDR  3  WEEKCEN   3  SEGNUM    3
   HHNUM     3  RECTYPE   3  WEEKPROC  3  QTRPROC   3  YEARPRC   3
   WEEKPRC   3  PSUR      3  REGION    3  LSRSMSA   3  SMSA2     3
   SMSAR     3  HHUNIT    3  INTNUM    3  NUMCALL   3  PHONE     3
   OBSINT    3  WKDAY     3  LENINT    3  TIMEINT   3  RACE      3
   RACER     3  SEX       3  AGE       3  AGER1     3  AGER2     3
   AGER3     3  MARSTAT   3  EDUC      3  EDUCR     3  EDUCFH    3
   EDUCFHR   3  VETERAN   3  INCOME    3  INCOMER   3  FAMRELR   3
   USUALACT  3  CURACT2W  3  WKCLASS   3  INDUSTRY  3  INDUSR1   3
   INDUSR2   3  OCCUP     3  OCCUPR1   3  OCCUPR2   3  RESPOND   3
   RESPAGER  3  FAMSIZE   3  FAMSIZER  3  ACTLIMIT  3  ACTLMUNT  3
   ACTLMNUM  3  MOBLIMIT  3  MOBLMUNT  3  MOBLMNUM  3  RESACT2W  3
   BDAY2W    3  WKSCHID   3  WKSCH2W   3  HDAY2W    3  DENTL2W   3
   DNTL12MC  3  DNTL12MN  3  DV12MC    3  DV12MN    3  HDAY12M   3
   DVINTVL   3  DTINTVL   3  HPTLEPI   3  CONDNUM   3  CHRONIC   3
   CHRONCLA  3  CHRONCLM  3  HPLSSE    3  FAMSTRUC  3  HLTHSTAT  3
   WTBFAD    8  WTFAL     4  WTFBL     4  WTFQ      5  WTFS      5
   WTFA      5  WTFB      5  WT65      5  WT65B     5  WTRAD2W   5
   WTRAD2WB  5  WTBDD2W   5  WTBDD2WB  5  WTWLD2W   5  WTWLD2WB  5
   WTHPD2W   5  WTHPD2WB  5  WTDLT2W   5  WTDLT2WB  5  DT12WPQ   5
   DT12WPS   5  DT12WPA   5  DT12WPB   5  DV12WPQ   5  DV12WPS   5
   DV12WPA   5  DV12WPB   5  HDA12WPQ  5  HDA12WPS  5  HDA12WPA  5
   HDA12WPB  5  HEP12WPA  5  HI_462    3  HI_463    3  HI_464    3
   HI_466    3  HI_468    3  HI_470    3  HI_472    3  HI_474    3
   HI_476    3  HI_477    3  HI_478    3  HI_479    3  HI_480    3
   HI_481    3  HI_482    3  HI_483    3  HI_485    3  HI_487    3
   HI_489    3  HI_491    3  HI_493    3  HI_495    3  HI_496    3
   HI_497    3  HI_498    3  HI_499    3  HI_500    3  HI_501    3
   HI_502    3  HI_504    3  HI_506    3  HI_508    3  HI_510    3
   HI_512    3  HI_514    3  HI_515    3  HI_516    3  HI_517    3
   HI_518    3  HI_519    3  HI_520    3  HI_521    3  HI_522    3
   ;
* INPUT ALL VARIABLES;
 
INPUT
   SAMPLER       1 -    1      YEARINT       2 -    2
   PSURANDR      3 -    5      WEEKCEN       6 -    7
   SEGNUM        8 -    9      HHNUM        10 -   11
   @12 PERNUM   $CHAR2.        RECTYPE      14 -   14
   WEEKPROC     17 -   18      QTRPROC      19 -   19
   YEARPRC      20 -   20      WEEKPRC      21 -   22
   PSUR         28 -   28      REGION       29 -   29
   LSRSMSA      30 -   31      SMSA2        33 -   33
   SMSAR        36 -   36      HHUNIT       37 -   37
   INTNUM       40 -   41      NUMCALL      42 -   42
   PHONE        43 -   43      OBSINT       44 -   44
   WKDAY        45 -   45      LENINT       46 -   48
   TIMEINT      49 -   49      RACE         50 -   50
   RACER        51 -   51      SEX          52 -   52
   AGE          53 -   54      AGER1        55 -   56
   AGER2        57 -   58      AGER3        59 -   59
   MARSTAT      60 -   60      EDUC         61 -   62
   EDUCR        63 -   63      EDUCFH       64 -   65
   EDUCFHR      66 -   66      VETERAN      67 -   67
   INCOME       68 -   69      INCOMER      70 -   70
   @71 FAMTYPE  $CHAR1.        @72 FAMREL   $CHAR1.
   FAMRELR      73 -   73      USUALACT     74 -   74
   CURACT2W     75 -   75      WKCLASS      76 -   76
   INDUSTRY     77 -   79      INDUSR1      80 -   81
   INDUSR2      82 -   83      OCCUP        84 -   86
   OCCUPR1      87 -   88      OCCUPR2      89 -   90
   RESPOND      91 -   91      RESPAGER     94 -   94
   FAMSIZE      95 -   96      FAMSIZER     97 -   97
   ACTLIMIT     98 -   98      ACTLMUNT     99 -   99
   ACTLMNUM    100 -  101      MOBLIMIT    102 -  102
   MOBLMUNT    103 -  103      MOBLMNUM    104 -  105
   RESACT2W    106 -  107      BDAY2W      108 -  109
   WKSCHID     110 -  110      WKSCH2W     111 -  112
   HDAY2W      113 -  114      DENTL2W     115 -  116
   DNTL12MC    117 -  117      DNTL12MN    118 -  119
   DV12MC      120 -  120      DV12MN      121 -  123
   HDAY12M     124 -  126      DVINTVL     127 -  127
   DTINTVL     128 -  128      HPTLEPI     129 -  130
   CONDNUM     131 -  132      CHRONIC     133 -  134
   CHRONCLA    135 -  136      CHRONCLM    137 -  138
   HPLSSE      140 -  140      FAMSTRUC    143 -  144
   HLTHSTAT    145 -  145      WTBFAD      182 -  187 .1
   WTFAL       188 -  192      WTFBL       193 -  198
   WTFQ        201 -  209      WTFS        210 -  218
   WTFA        219 -  227      WTFB        228 -  236
   WT65        237 -  245      WT65B       246 -  254
   WTRAD2W     255 -  263      WTRAD2WB    264 -  272
   WTBDD2W     273 -  281      WTBDD2WB    282 -  290
   WTWLD2W     291 -  299      WTWLD2WB    300 -  308
   WTHPD2W     309 -  317      WTHPD2WB    318 -  326
   WTDLT2W     327 -  335      WTDLT2WB    336 -  344
   DT12WPQ     345 -  353      DT12WPS     354 -  362
   DT12WPA     363 -  371      DT12WPB     372 -  380
   DV12WPQ     381 -  389      DV12WPS     390 -  398
   DV12WPA     399 -  407      DV12WPB     408 -  416
   HDA12WPQ    417 -  425      HDA12WPS    426 -  434
   HDA12WPA    435 -  443      HDA12WPB    444 -  452
   HEP12WPA    453 -  461      HI_462      462 -  462
   HI_463      463 -  463      HI_464      464 -  465
   HI_466      466 -  467      HI_468      468 -  469
   HI_470      470 -  471      HI_472      472 -  473
   HI_474      474 -  475      HI_476      476 -  476
   HI_477      477 -  477      HI_478      478 -  478
   HI_479      479 -  479      HI_480      480 -  480
   HI_481      481 -  481      HI_482      482 -  482
   HI_483      483 -  484      HI_485      485 -  486
   HI_487      487 -  488      HI_489      489 -  490
   HI_491      491 -  492      HI_493      493 -  494
   HI_495      495 -  495      HI_496      496 -  496
   HI_497      497 -  497      HI_498      498 -  498
   HI_499      499 -  499      HI_500      500 -  500
   HI_501      501 -  501      HI_502      502 -  503
   HI_504      504 -  505      HI_506      506 -  507
   HI_508      508 -  509      HI_510      510 -  511
   HI_512      512 -  513      HI_514      514 -  514
   HI_515      515 -  515      HI_516      516 -  516
   HI_517      517 -  517      HI_518      518 -  518
   HI_519      519 -  519      HI_520      520 -  520
   HI_521      521 -  521      HI_522      522 -  522
   ;
* DEFINE VARIABLE LABELS;
 
LABEL
   SAMPLER  = "SAMPLE - RECODE OF CENSUS CODE"
   YEARINT  = "YEAR OF COLLECTION OF DATA"
   PSURANDR = "PSU - RANDOM RECODE"
   WEEKCEN  = "WEEK - CENSUS CODE (NUMBERED WITHIN SAMPLE RECODE)"
   SEGNUM   = "SEGMENT NUMBER"
   HHNUM    = "HOUSEHOLD NUMBER"
   PERNUM   = "PERSON NUMBER"
   RECTYPE  = "RECORD TYPE"
   WEEKPROC = "CENSUS WEEK RECODE (NUMBERED WITHIN SAMPLE RECODE)"
   QTRPROC  = "PROCESSING QUARTER CODE"
   YEARPRC  = "PROCESSING YEAR"
   WEEKPRC  = "PROCESSING WEEK CODE (NUMBERED WITHIN PROCESSING QUARTER)"
   PSUR     = "PSU RECODE"
   REGION   = "REGION"
   LSRSMSA  = "TABULATION AREA"
   SMSA2    = "GEOGRAPHIC IDENTIFICATION"
   SMSAR    = "SMSA - NON-SMSA RESIDENCE"
   HHUNIT   = "TYPE OF LIVING QUARTERS"
   INTNUM   = "INTERVIEWER NUMBER (NOT EDITED)"
   NUMCALL  = "NUMBER OF CALLS (NOT EDITED)"
   PHONE    = "TELEPHONE (NOT EDITED)"
   OBSINT   = "OBSERVED INTERVIEW (NOT EDITED)"
   WKDAY    = "DAY OF WEEK INTERVIEW COMPLETED"
   LENINT   = "LENGTH OF INTERVIEW (NOT EDITED)"
   TIMEINT  = "TIME OF DAY OF INTERVIEW (NOT EDITED)"
   RACE     = "RACE"
   RACER    = "RACE RECODE"
   SEX      = "SEX"
   AGE      = "AGE"
   AGER1    = "AGE RECODE #1"
   AGER2    = "AGE RECODE #2"
   AGER3    = "AGE RECODE #3"
   MARSTAT  = "MARITAL STATUS"
   EDUC     = "EDUCATION OF INDIVIDUAL - COMPLETED YEARS"
   EDUCR    = "EDUCATION OF INDIVIDUAL - RECODE"
   EDUCFH   = "EDUCATION OF FAMILY HEAD OR UNRELATED INDIVIDUAL - DETAIL"
   EDUCFHR  = "EDUCATION OF HEAD - RECODE"
   VETERAN  = "VETERAN STATUS"
   INCOME   = "FAMILY INCOME OR INCOME OF UNRELATED INDIVIDUAL"
   INCOMER  = "FAMILY INCOME RECODE"
   FAMTYPE  = "TYPE OF FAMILY"
   FAMREL   = "FAMILY RELATIONSHIP"
   FAMRELR  = "FAMILY RELATIONSHIP RECODE"
   USUALACT = "USUAL ACTIVITY"
   CURACT2W = "CURRENT ACTIVITY DURING PAST 2 WEEKS"
   WKCLASS  = "CLASS OF WORKER"
   INDUSTRY = "INDUSTRY DETAIL CODE"
   INDUSR1  = "INDUSTRY RECODE 1"
   INDUSR2  = "INDUSTRY RECODE 2"
   OCCUP    = "OCCUPATION DETAIL CODE"
   OCCUPR1  = "OCCUPATION RECODE 1"
   OCCUPR2  = "OCCUPATION RECODE 2"
   RESPOND  = "RESPONDENT"
   RESPAGER = "AGE OF RESPONDENT RECODE"
   FAMSIZE  = "ACTUAL FAMILY SIZE"
   FAMSIZER = "SIZE OF FAMILY RECODE"
   ACTLIMIT = "LIMITATION OF ACTIVITY (PERSON WITH 1+ CHRONIC CONDITIONS)"
   ACTLMUNT = "DURATION OF LIMITATION OF ACTIVITY - UNIT"
   ACTLMNUM = "DURATION OF LIMITATION OF ACTIVITY - NUMBER OF UNIT"
   MOBLIMIT = "LIMITATION OF MOBILITY (PERSON WITH 1+ CHRONIC CONDITIONS)"
   MOBLMUNT = "DURATION OF LIMITATION OF MOBILITY - UNIT"
   MOBLMNUM = "DURATION OF LIMITATION OF MOBILITY - NUMBER OF UNIT"
   RESACT2W = "RESTRICTED ACTIVITY DAYS IN PAST 2 WEEKS"
   BDAY2W   = "BED DISABILITY DAYS IN PAST 2 WEEKS"
   WKSCHID  = "WORK/SCHOOL LOSS DAY IDENTIFIER"
   WKSCH2W  = "WORK OR SCHOOL-LOSS DAYS IN PAST 2 WEEKS"
   HDAY2W   = "NUMBER OF DAYS IN HOSPITAL IN PAST 2 WEEKS"
   DENTL2W  = "DENTAL VISITS IN 2 WEEKS"
   DNTL12MC = "DENTAL VISITS IN 12 MONTHS - KNOWN/UNKNOWN CODE"
   DNTL12MN = "DENTAL VISITS IN 12 MONTHS - NUMBER OF VISITS"
   DV12MC   = "DOCTOR VISITS IN 12 MONTHS - KNOWN/UNKNOWN CODE"
   DV12MN   = "DOCTOR VISITS IN 12 MONTHS - NUMBER OF VISITS"
   HDAY12M  = "NUMBER OF SHORT-STAY HOSPITAL DAYS IN PAST 12 MONTHS"
   DVINTVL  = "INTERVAL SINCE LAST DOCTOR VISIT"
   DTINTVL  = "INTERVAL SINCE LAST DENTAL VISIT"
   HPTLEPI  = "NUMBER OF SHORT-STAY HOSPITAL EPISODES"
   CONDNUM  = "TOTAL CONDITIONS"
   CHRONIC  = "TOTAL CHRONIC CONDITIONS"
   CHRONCLA = "NUMBER OF CHRONIC CONDITIONS CAUSING LIMITATION OF ACTIVITY"
   CHRONCLM = "NUMBER OF CHRONIC CONDITIONS CAUSING LIMITATION OF MOBILITY"
   HPLSSE   = "HOSPITAL OWNERSHIP FOR SHORT-STAY EPISODES"
   FAMSTRUC = "FAMILY STRUCTURE"
   HLTHSTAT = "HEALTH STATUS"
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
   WTBDD2W  = "ESTIMATED BED DAYS IN PAST 2 WEEKS"
   WTBDD2WB = "ESTIMATED BED DAYS IN PAST 2 WEEKS BIANNUAL"
   WTWLD2W  = "ESTIMATED WORK/SCHOOL LOSS DAYS IN PAST 2 WEEKS"
   WTWLD2WB = "ESTIMATED WORK/SCHOOL LOSS DAYS IN PAST 2 WEEKS BIANNUAL"
   WTHPD2W  = "ESTIMATED HOSPITAL DAYS IN PAST 2 WEEKS"
   WTHPD2WB = "ESTIMATED HOSPITAL DAYS IN PAST 2 WEEKS BIANNUAL"
   WTDLT2W  = "ESTIMATED DENTAL VISITS IN PAST 2 WEEKS"
   WTDLT2WB = "ESTIMATED DENTAL VISITS IN PAST 2 WEEKS BIANNUAL"
   DT12WPQ  = "ESTIMATED DENTAL VISITS IN PAST 12 MONTHS QUARTER"
   DT12WPS  = "ESTIMATED DENTAL VISITS IN PAST 12 MONTHS SEMIANNUAL"
   DT12WPA  = "ESTIMATED DENTAL VISITS IN PAST 12 MONTHS ANNUAL"
   DT12WPB  = "ESTIMATED DENTAL VISITS IN PAST 12 MONTHS BIANNUAL"
   DV12WPQ  = "ESTIMATED DOCTOR VISITS IN PAST 12 MONTHS QUARTER"
   DV12WPS  = "ESTIMATED DOCTOR VISITS IN PAST 12 MONTHS SEMIANNUAL"
   DV12WPA  = "ESTIMATED DOCTOR VISITS IN PAST 12 MONTHS ANNUAL"
   DV12WPB  = "ESTIMATED DOCTOR VISITS IN PAST 12 MONTHS BIANNUAL"
   HDA12WPQ = "ESTIMATED SHORT-STAY HOSPITAL DAYS IN PAST 12 MONTHS QUARTER"
   HDA12WPS = "ESTIMATED SHORT-STAY HOSPITAL DAYS IN PAST 12 MONTHS SEMIANNUAL"
   HDA12WPA = "ESTIMATED SHORT-STAY HOSPITAL DAYS IN PAST 12 MONTHS ANNUAL"
   HDA12WPB = "ESTIMATED SHORT-STAY HOSPITAL DAYS IN PAST 12 MONTHS BIANNUAL"
   HEP12WPA = "ESTIMATED NUMBER OF SHORT-STAY HOSPITAL EPISODES IN PAST 12 MONTHS"
   HI_462   = "HAS HOSPITAL INSURANCE"
   HI_463   = "HOSPITAL INSURANCE RECODE"
   HI_464   = "HOSPITAL - MEDICARE PLANS"
   HI_466   = "HOSPITAL - PREPAID GROUP PLANS"
   HI_468   = "HOSPITAL - BLUE PLANS"
   HI_470   = "HOSPITAL - OTHER AND DK NAME PLANS"
   HI_472   = "HOSPITAL-OTHER AND DK NAME ONLY COVERAGE - RECODE #2"
   HI_474   = "HOSPITAL COVERAGE PRIORITY - RECODE #1"
   HI_476   = "HOSPITAL COVERAGE PRIORITY - RECODE #2"
   HI_477   = "SOURCE"
   HI_478   = "1+ PLANS OBTAINED THROUGH GROUP"
   HI_479   = "PRESENT STATUS OF PLANS"
   HI_480   = "MUST USE CERTAIN CLINICS OR DOCTORS FOR 1+ PLANS"
   HI_481   = "HAS SURGICAL INSURANCE"
   HI_482   = "SURGICAL INSURANCE RECODE"
   HI_483   = "SURGICAL - MEDICARE PLANS"
   HI_485   = "SURGICAL - PREPAID GROUP PLANS"
   HI_487   = "SURGICAL - BLUE PLANS"
   HI_489   = "SURGICAL - OTHER AND DK NAME PLANS"
   HI_491   = "SURGICAL-OTHER AND DK NAME ONLY COVERAGE - RECODE #2"
   HI_493   = "SURGICAL COVERAGE PRIORITY - RECODE #1"
   HI_495   = "SURGICAL COVERAGE PRIORITY - RECODE #2"
   HI_496   = "SOURCE- SURGICAL"
   HI_497   = "1+ PLANS OBTAINED THROUGH GROUP"
   HI_498   = "PRESENT STATUS OF PLANS"
   HI_499   = "MUST USE CERTAIN CLINICS OR DOCTORS FOR 1+ PLANS"
   HI_500   = "HAS DOCTOR VISIT INSURANCE"
   HI_501   = "DOCTOR VISIT INSURANCE RECODE"
   HI_502   = "DOCTOR VISIT - MEDICARE PLANS"
   HI_504   = "DOCTOR VISIT - PREPAID GROUP PLANS"
   HI_506   = "DOCTOR VISIT - BLUE PLANS"
   HI_508   = "DOCTOR VISIT - OTHER AND DK NAME PLANS"
   HI_510   = "DOCTOR VISIT-OTHER AND DK NAME ONLY COVERAGE - RECODE #2"
   HI_512   = "DOCTOR VISIT COVERAGE PRIORITY - RECODE #1"
   HI_514   = "DOCTOR VISIT COVERAGE PRIORITY - RECODE #2"
   HI_515   = "SOURCE- DOCTOR VISIT"
   HI_516   = "1+ PLANS OBTAINED THROUGH GROUP"
   HI_517   = "PRESENT STATUS OF PLANS"
   HI_518   = "MUST USE CERTAIN CLINICS OR DOCTORS FOR 1+ PLANS"
   HI_519   = "INSURANCE COVERAGE STATUS SUMMARY"
   HI_520   = "HOSPITAL MULTIPLE COVERAGE RECODE"
   HI_521   = "SURGICAL MULTIPLE COVERAGE RECODE"
   HI_522   = "DOCTOR VISIT MULTIPLE COVERAGE RECODE"
   ;
* ASSOCIATE VARIABLES WITH FORMAT VALUES;
 
FORMAT
   SAMPLER   HIC0001X.   YEARINT   HIC0002X.    PSURANDR  HIC0003X.
   WEEKCEN   HIC0004X.   SEGNUM    HIC0005X.    HHNUM     HIC0006X.
   PERNUM    $HIC0007X.  RECTYPE   HIC0008X.    WEEKPROC  HIC0009X.
   QTRPROC   HIC0010X.   YEARPRC   HIC0011X.    WEEKPRC   HIC0012X.
   PSUR      HIC0013X.   REGION    HIC0014X.    LSRSMSA   HIC0015X.
   SMSA2     HIC0016X.   SMSAR     HIC0017X.    HHUNIT    HIC0018X.
   INTNUM    HIC0019X.   NUMCALL   HIC0020X.    PHONE     HIC0021X.
   OBSINT    HIC0022X.   WKDAY     HIC0023X.    LENINT    HIC0024X.
   TIMEINT   HIC0025X.   RACE      HIC0026X.    RACER     HIC0027X.
   SEX       HIC0028X.   AGE       HIC0029X.    AGER1     HIC0030X.
   AGER2     HIC0031X.   AGER3     HIC0032X.    MARSTAT   HIC0033X.
   EDUC      HIC0034X.   EDUCR     HIC0035X.    EDUCFH    HIC0036X.
   EDUCFHR   HIC0037X.   VETERAN   HIC0038X.    INCOME    HIC0039X.
   INCOMER   HIC0040X.   FAMTYPE   $HIC0041X.   FAMREL    $HIC0042X.
   FAMRELR   HIC0043X.   USUALACT  HIC0044X.    CURACT2W  HIC0045X.
   WKCLASS   HIC0046X.   INDUSTRY  HIC0047X.    INDUSR1   HIC0048X.
   INDUSR2   HIC0049X.   OCCUP     HIC0050X.    OCCUPR1   HIC0051X.
   OCCUPR2   HIC0052X.   RESPOND   HIC0053X.    RESPAGER  HIC0054X.
   FAMSIZE   HIC0055X.   FAMSIZER  HIC0056X.    ACTLIMIT  HIC0057X.
   ACTLMUNT  HIC0058X.   ACTLMNUM  HIC0059X.    MOBLIMIT  HIC0060X.
   MOBLMUNT  HIC0061X.   MOBLMNUM  HIC0062X.    RESACT2W  HIC0063X.
   BDAY2W    HIC0064X.   WKSCHID   HIC0065X.    WKSCH2W   HIC0066X.
   HDAY2W    HIC0067X.   DENTL2W   HIC0068X.    DNTL12MC  HIC0069X.
   DNTL12MN  HIC0070X.   DV12MC    HIC0071X.    DV12MN    HIC0072X.
   HDAY12M   HIC0073X.   DVINTVL   HIC0074X.    DTINTVL   HIC0075X.
   HPTLEPI   HIC0076X.   CONDNUM   HIC0077X.    CHRONIC   HIC0078X.
   CHRONCLA  HIC0079X.   CHRONCLM  HIC0080X.    HPLSSE    HIC0081X.
   FAMSTRUC  HIC0082X.   HLTHSTAT  HIC0083X.    WTBFAD    HIC0084X.
   WTFAL     HIC0085X.   WTFBL     HIC0086X.    WTFQ      HIC0087X.
   WTFS      HIC0088X.   WTFA      HIC0089X.    WTFB      HIC0090X.
   WT65      HIC0091X.   WT65B     HIC0092X.    WTRAD2W   HIC0093X.
   WTRAD2WB  HIC0094X.   WTBDD2W   HIC0095X.    WTBDD2WB  HIC0096X.
   WTWLD2W   HIC0097X.   WTWLD2WB  HIC0098X.    WTHPD2W   HIC0099X.
   WTHPD2WB  HIC0100X.   WTDLT2W   HIC0101X.    WTDLT2WB  HIC0102X.
   DT12WPQ   HIC0103X.   DT12WPS   HIC0104X.    DT12WPA   HIC0105X.
   DT12WPB   HIC0106X.   DV12WPQ   HIC0107X.    DV12WPS   HIC0108X.
   DV12WPA   HIC0109X.   DV12WPB   HIC0110X.    HDA12WPQ  HIC0111X.
   HDA12WPS  HIC0112X.   HDA12WPA  HIC0113X.    HDA12WPB  HIC0114X.
   HEP12WPA  HIC0115X.   HI_462    HIC0116X.    HI_463    HIC0117X.
   HI_464    HIC0118X.   HI_466    HIC0119X.    HI_468    HIC0120X.
   HI_470    HIC0121X.   HI_472    HIC0122X.    HI_474    HIC0123X.
   HI_476    HIC0124X.   HI_477    HIC0125X.    HI_478    HIC0126X.
   HI_479    HIC0127X.   HI_480    HIC0128X.    HI_481    HIC0129X.
   HI_482    HIC0130X.   HI_483    HIC0131X.    HI_485    HIC0132X.
   HI_487    HIC0133X.   HI_489    HIC0134X.    HI_491    HIC0135X.
   HI_493    HIC0136X.   HI_495    HIC0137X.    HI_496    HIC0138X.
   HI_497    HIC0139X.   HI_498    HIC0140X.    HI_499    HIC0141X.
   HI_500    HIC0142X.   HI_501    HIC0143X.    HI_502    HIC0144X.
   HI_504    HIC0145X.   HI_506    HIC0146X.    HI_508    HIC0147X.
   HI_510    HIC0148X.   HI_512    HIC0149X.    HI_514    HIC0150X.
   HI_515    HIC0151X.   HI_516    HIC0152X.    HI_517    HIC0153X.
   HI_518    HIC0154X.   HI_519    HIC0155X.    HI_520    HIC0156X.
   HI_521    HIC0157X.   HI_522    HIC0158X.
   ;

PROC CONTENTS DATA=NHIS.HEALTHIN;

PROC FREQ DATA=NHIS.HEALTHIN;
TITLE1 'FREQUENCY REPORT FOR 1972 NHIS CALENDAR YEAR HEALTH INSURANCE RECORD';
TITLE2 '(WEIGHTED)';
TABLES RECTYPE/LIST MISSING;
WEIGHT WTFA;

PROC FREQ DATA=NHIS.HEALTHIN;
TITLE1 'FREQUENCY REPORT FOR 1972 NHIS CALENDAR YEAR HEALTH INSURANCE RECORD';
TITLE2 '(UNWEIGHTED)';
TABLES RECTYPE/LIST MISSING;

* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
                      STATEMENT: FORMAT _ALL_;
RUN;
