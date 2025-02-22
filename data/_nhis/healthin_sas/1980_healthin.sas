DM 'CLE LOG; CLE OUT';
**************************************************************************
  January 18, 2006
 
THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
FILE FROM THE NHIS 1980 HEALTHIN.DAT ASCII FILE.
 
NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
      GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
      DOCUMENTATION.
 
THIS IS STORED IN HEALTHIN.SAS
*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;
 
LIBNAME NHIS    'C:\NHIS1980\';
LIBNAME LIBRARY 'C:\NHIS1980\';
 
FILENAME ASCIIDAT 'C:\NHIS1980\HEALTHIN.DAT';
 
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
   1                = "Quarter 1, 1980"
   2                = "Quarter 2, 1980"
   3                = "Quarter 3, 1980"
   4                = "Quarter 4, 1980"
   ;
  VALUE  HIN008X
   0                = "1980"
   ;
  VALUE  HIN009X
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
  VALUE $HIN016X
   "1"              = "Yes - phone"
   "2"              = "No or none"
   "3"              = "Phone,but nonumber listed, or number refused"
   "9"              = "DK if phone or refused"
   " "              = "Not reported"
   ;
  VALUE  HIN017X
   1                = "Male"
   2                = "Female"
   ;
  VALUE  HIN018X
   00               = "Under 1 year"
   01-98            = "Single years"
   99               = "99+ years"
   ;
  VALUE  HIN019X
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
  VALUE  HIN020X
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
  VALUE  HIN021X
   1                = "Under 15 years"
   2                = "15-44"
   3                = "45-64"
   4                = "65+"
   ;
  VALUE  HIN022X
   0                = "Under 17 years"
   1                = "Married - Spouse present"
   2                = "Widowed"
   3                = "Never married"
   4                = "Divorsed"
   5                = "Separated"
   6                = "Married - Spouse absent"
   ;
  VALUE  HIN023X
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
  VALUE  HIN024X
   1                = "Under 17 years of age"
   2                = "None"
   3                = "01-08 (elementary)"
   4                = "09-11 (high school)"
   5                = "12 (high school graduate)"
   6                = "13-15 (college)"
   7                = "16+ (college graduate +)"
   8                = "Unknown"
   ;
  VALUE  HIN025X
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
  VALUE  HIN026X
   1                = "Under 17 years of age"
   2                = "None"
   3                = "01-08 (elementary)"
   4                = "09-11 (high school)"
   5                = "12 (high school graduate)"
   6                = "13-15 (college)"
   7                = "16+ (college graduate +)"
   8                = "Unknown"
   ;
  VALUE  HIN027X
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
  VALUE  HIN028X
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
  VALUE  HIN029X
   1                = "Under $3,000"
   2                = "$3,000-4,999"
   3                = "5,000-6,999"
   4                = "7,000-9,999"
   5                = "10,000-14,999"
   6                = "15,000-24,999"
   7                = "25,000+"
   8                = "Unknown"
   ;
  VALUE $HIN030X
   "&"              = "Primary individual"
   "-"              = "Secondary individual"
   "0"              = "Primary family"
   "1"-"9"          = "SecondaRY families"
   ;
  VALUE $HIN031X
   "&"              = "Unrelated individual living alone"
   "0"              = "Head of family or unrelated individual not living alone"
   "1"              = "Wife (husband living at home and not in Amed Forces)"
   "2"              = "Wife (husband living at home and is in Armed Forces)"
   "3"              = "Child of head or spouse"
   "4"              = "Grand child of head or spouse"
   "5"              = "Parent of head or spouse"
   "6"              = "Other relative"
   ;
  VALUE  HIN032X
   1                = "Living alone"
   2                = "Living with nonrelative"
   3                = "Living with spouse"
   4                = "Living with relatives - other"
   ;
  VALUE  HIN033X
   0                = "Under 6 years"
   1                = "Usually working"
   2                = "Keeping house (female)"
   3                = "Retlred - Health (45+ years)"
   4                = "Going to school"
   5                = "Something else"
   6                = "Unknown"
   7                = "Retired,Other (45+ years)"
   ;
  VALUE  HIN034X
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
  VALUE  HIN035X
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
  VALUE  HIN036X
   017-999          = "Code Number"
   .                = "Not applicable"
   ;
  VALUE  HIN037X
   ;
  VALUE  HIN038X
   ;
  VALUE  HIN039X
   001-995          = "Code number"
   .                = "Not applicable"
   ;
  VALUE  HIN040X
   ;
  VALUE  HIN041X
   ;
  VALUE  HIN042X
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
  VALUE  HIN043X
   1                = "Under 20 years"
   2                = "20-54 years"
   3                = "55-64 years"
   4                = "65-74 years"
   5                = "75+ years"
   6                = "Unknown and not reported"
   ;
  VALUE  HIN044X
   00               = "Unrelated individuals"
   01-97            = "Family size"
   ;
  VALUE  HIN045X
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
  VALUE  HIN046X
   1                = "Cannot perform Usual Activity"
   2                = "Can perfom UA but limited in amount and kind"
   3                = "Can perfom UA but limited in outside activities"
   4                = "Not limited (including unknown) or not applicable (persons with no chronic condition )"
   ;
  VALUE  HIN047X
   1                = "Months"
   2                = "Years"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN048X
   00               = "Less than l month"
   01-97            = "Number of months or years"
   99               = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN049X
   00               = "None"
   01-14            = "Number of days"
   ;
  VALUE  HIN050X
   00               = "None"
   01-14            = "Number of days"
   ;
  VALUE  HIN051X
   1                = "Under 6 years of age"
   2                = "School-loss days"
   3                = "Work-loss days"
   ;
  VALUE  HIN052X
   00               = "None or Under 6"
   01-14            = "Number of days"
   ;
  VALUE  HIN053X
   00               = "None"
   01-97            = "Numberof visits"
   ;
  VALUE  HIN054X
   1                = "Number of visits known"
   2                = "Number of visits unknown"
   ;
  VALUE  HIN055X
   000              = "None or Unknown"
   001-997          = "Number of visits"
   ;
  VALUE  HIN056X
   000              = "None"
   001-365          = "Number of days"
   ;
  VALUE  HIN057X
   0                = "Never"
   1                = "Visit in past 2 weeks"
   3                = "2 weeks to less than 6 months"
   4                = "6 months to less than 12 months"
   5                = "1 year"
   6                = "2-4 years"
   7                = "5+ years"
   9                = "Unknown"
   ;
  VALUE  HIN058X
   0                = "Never"
   1                = "Visit in 2 weeks"
   2                = "2 weeks to less than 6 months"
   3                = "6 months to less than 12 months"
   4                = "1 year"
   5                = "2-4 years"
   6                = "5+ years"
   8                = "Unknown"
   ;
  VALUE  HIN059X
   00               = "None"
   01-97            = "Number of episodes"
   ;
  VALUE  HIN060X
   00               = "None"
   01-97            = "Number of episodes"
   ;
  VALUE  HIN061X
   1                = "Yes, own work experience"
   2                = "Yes, dependent or survivor"
   3                = "Yes, unknown"
   4                = "Unknown"
   5                = "Not reported"
   ;
  VALUE  HIN062X
   1                = "Yes, own work experience"
   2                = "Yes, dependent or survivor"
   3                = "Yes, own work experience and survivor"
   4                = "Yes, unknown"
   5                = "Unknown"
   6                = "Not reported"
   ;
  VALUE  HIN063X
   1                = "Yes, own work experience"
   2                = "Yes, dependent or survivor"
   3                = "Yes, own work experience and survivor"
   4                = "Yes, unknown"
   5                = "Unknown"
   6                = "Not reported"
   ;
  VALUE  HIN064X
   1                = "Yes, own work experience"
   2                = "Yes, dependent or survivor"
   3                = "Yes, own work experience and survivor"
   4                = "Yes, unknown"
   5                = "Unknown"
   6                = "Not reported"
   ;
  VALUE  HIN065X
   1                = "Yes, own work experience"
   2                = "Yes, dependent or survivor"
   3                = "Yes, own work experience and survivor"
   4                = "Yes, unknown"
   5                = "Unknown"
   6                = "Not reported"
   ;
  VALUE  HIN066X
   0                = "Under 17 years of age"
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   4                = "Nonveteran"
   ;
  VALUE  HIN067X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Char 138 ne 1"
   ;
  VALUE  HIN068X
   0                = "No episodes"
   1                = "All in federal hospitals"
   2                = "All in nonfederal hospitals"
   3                = "Both federal and nonfederal hospitals"
   ;
  VALUE  HIN069X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
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
   1                = "White"
   2                = "Black"
   3                = "Other"
   ;
  VALUE  HIN074X
   1                = "White"
   2                = "Nonwhite"
   ;
  VALUE  HIN075X
   1                = "Black"
   2                = "Nonblack"
   ;
  VALUE  HIN076X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  HIN077X
   36-84            = "Number of inches"
   99               = "Unknown"
   .                = "Under 17 years of age"
   ;
  VALUE  HIN078X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  HIN079X
   1                = "Medicaid card - current"
   2                = "Medicaid card - expired"
   3                = "Card seen - unknown type"
   4                = "unknown"
   5                = "No Medicaid card or not reported"
   ;
  VALUE  HIN080X
   050-400          = "Nmnber of pounds"
   999              = "Unknown"
   .                = "Under 17 years of age"
   ;
  VALUE  HIN081X
   1                = "Condition List 1 - Digestive"
   2                = "Condition List 2 - Bone and Muscle"
   3                = "Condition List 3 - Miscellaneous"
   4                = "Condition List 4 - Impairments"
   5                = "Condition List 5 - Circulatory"
   6                = "Condition List 6 - Respiratory"
   7                = "Unknown"
   ;
  VALUE  HIN082X
   1                = "Yes"
   2                = "No"
   ;
  VALUE  HIN083X
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
  VALUE  HIN084X
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
  VALUE  HIN085X
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
  VALUE  HIN086X
   1                = "Aleut, Eskimo, or American Indian"
   2                = "Asian or Pacific Islander"
   3                = "Black"
   4                = "White"
   5                = "Another group not listed"
   6                = "Multiple entry - unknown which is main racial background"
   7                = "Unknown"
   ;
  VALUE  HIN087X
   ;
  VALUE  HIN088X
   ;
  VALUE  HIN089X
   ;
  VALUE  HIN090X
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
   0                = "Not known to be used"
   1                = "Yes"
   ;
  VALUE  HIN116X
   0                = "Not known to be used"
   1                = "Yes"
   ;
  VALUE  HIN117X
   0                = "Not known to be used"
   1                = "Brace on foot or leg"
   2                = "Brace on other body part"
   3                = "Brace, unknown body part"
   ;
  VALUE  HIN118X
   0                = "Not known to be used"
   1                = "Yes"
   ;
  VALUE  HIN119X
   0                = "Not known to be used"
   1                = "Yes"
   ;
  VALUE  HIN120X
   0                = "Not known to be used"
   1                = "Yes"
   ;
  VALUE  HIN121X
   0                = "Not known to be used"
   1                = "Yes"
   ;
  VALUE  HIN122X
   0                = "Not known to be used"
   1                = "Yes"
   ;
  VALUE  HIN123X
   0                = "Not known to be used"
   1                = "Yes"
   ;
  VALUE  HIN124X
   0                = "Not known to be used"
   1                = "Yes"
   ;
  VALUE  HIN125X
   1                = "Eyeglasses only"
   2                = "Contacts only"
   3                = "Hearing aid only"
   4                = "Eyeglasses and contacts"
   5                = "Eyeglasses and hearing aid"
   6                = "Contacts and hearing aid"
   7                = "Eyeglasses and contacts and hearing aid"
   8                = "Not reported to need aids"
   ;
  VALUE  HIN126X
   001-298          = "PSU Number"
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
   1                = "Covered"
   2                = "Not covered"
   3                = "Unknown if covered"
   ;
  VALUE  HIN130X
   1                = "Current hospital coverage"
   2                = "Current doctor/surgeon coverage"
   3                = "Claims has a card, but it is not available"
   4                = "Current hospital and doctor/surgeon coverage"
   5                = "Unknown if person has card"
   6                = "Persons 65 years of age and over"
   7                = "Persons under 65 years of age, card not requested"
   ;
  VALUE  HIN131X
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
  VALUE  HIN132X
   1                = "Has hospital and doctor coverage"
   2                = "Has hospital OR doctor coverage, but not both"
   3                = "Unknown if both or just one"
   4                = "No Medicare coverage"
   5                = "Unknown if Medicare coverage"
   ;
  VALUE  HIN133X
   1                = "Covered"
   2                = "Unknown if covered"
   3                = "Not applicable"
   ;
  VALUE  HIN134X
   1                = "Covered"
   2                = "Unknown if covered"
   3                = "Not applicable"
   ;
  VALUE  HIN135X
   1                = "Covered"
   2                = "Unknown if covered"
   3                = "Not applicable"
   ;
  VALUE  HIN136X
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
  VALUE  HIN137X
   1                = "Has hospital and surgical coverage"
   2                = "Has hospital or surgical, but not both"
   3                = "Unknown if both, just one or neither"
   4                = "Neither hospital nor surgical but has coverage"
   5                = "No private Coverage"
   6                = "Unknown if private Coverage"
   ;
  VALUE  HIN138X
   1                = "Covered by one or both"
   2                = "Not covered by either"
   3                = "Unknown if covered"
   ;
  VALUE  HIN139X
   1                = "Covered by one or both"
   2                = "Not covered by either"
   3                = "Unknown if covered"
   ;
  VALUE  HIN140X
   1                = "Covered by one or both"
   2                = "Not covered by either"
   3                = "Coverage unknown for both or unknown for one and not covered for other"
   ;
  VALUE  HIN141X
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
  VALUE  HIN142X
   1                = "Has hospital and surgical coverage"
   2                = "Has hospital or surgical, but not both"
   3                = "Unknown if both, just one or neither"
   4                = "Neither hospital nor surgical but has coverage"
   5                = "No Coveraqe"
   6                = "Unknown if Coverage"
   ;
  VALUE  HIN143X
   1                = "Yes"
   2                = "Reason given, but not this reason"
   .                = "Unknown or not applicable"
   ;
  VALUE  HIN144X
   1                = "Yes"
   2                = "Reason given, but not this reason"
   .                = "Unknown or not applicable"
   ;
  VALUE  HIN145X
   1                = "Yes"
   2                = "Reason given, but not this reason"
   .                = "Unknown or not applicable"
   ;
  VALUE  HIN146X
   1                = "Yes"
   2                = "Reason given, but not this reason"
   .                = "Unknown or not applicable"
   ;
  VALUE  HIN147X
   1                = "Yes"
   2                = "Reason given, but not this reason"
   .                = "Unknown or not applicable"
   ;
  VALUE  HIN148X
   1                = "Yes"
   2                = "Reason given, but not this reason"
   .                = "Unknown or not applicable"
   ;
  VALUE  HIN149X
   1                = "Yes"
   2                = "Reason given, but not this reason"
   .                = "Unknown or not applicable"
   ;
  VALUE  HIN150X
   1                = "Yes"
   2                = "Reason given, but not this reason"
   .                = "Unknown or not applicable"
   ;
  VALUE  HIN151X
   1                = "Yes"
   2                = "Reason given, but not this reason"
   .                = "Unknown or not applicable"
   ;
  VALUE  HIN152X
   1                = "At least one reason given"
   2                = "No reason given because item refused or stated to be unknown"
   3                = "No indication of reason given, unknown or refused"
   .                = "Not applicable"
   ;
  VALUE  HIN153X
   01               = "Care received through Medicaid or Welfare"
   02               = "Unemployment or reasons related to unemployment"
   03               = "Can�t obtain because of poor health, illness or age"
   04               = "Too expensive, can�t afford health insurance"
   05               = "Dissatisfied with previous insurance"
   06               = "Don�t believe in insurance"
   07               = "Have been healthy, haven�t needed insurance"
   08               = "Military Dependent, Covered by Champus, Veteran's Benefits"
   09               = "Some other reason"
   10               = "Reasons given, but main reason unknown"
   11               = "Unknown reason"
   .                = "Not applicable"
   ;
  VALUE  HIN154X
   1                = "Blue Cross and/or Blue Shield only"
   2                = "Blue Plan and other identified plan not including prepaid plan"
   3                = "Blue Plan, other identified plan, and prepaid plan"
   4                = "Prepaid and Blue Plan (no other identified plan)"
   5                = "Prepaid and other identified plan (no Blue Plan)"
   6                = "Prepaid plan only"
   7                = "Other identified plan only"
   8                = "Plans include at least one for which type is unknown"
   9                = "Person�s coverage status unknown for at least one plan"
   .                = "Not applicable"
   ;
  VALUE  HIN155X
   1                = "Blue Cross and/or Blue Shield"
   2                = "HMO or other prepaid plan"
   3                = "Other named and identified private plan"
   4                = "Has private plan, name not given"
   .                = "Not applicable"
   ;
  VALUE  HIN156X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN157X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN158X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN159X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN160X
   1                = "Covered"
   2                = "Unknown if covered"
   .                = "Not applicable"
   ;
  VALUE  HIN161X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN162X
   1                = "Blue Cross and/or Blue Shield"
   2                = "HMO or other prepaid plan"
   3                = "Other named and identified private plan"
   4                = "Has private plan, name not given"
   .                = "Not applicable"
   ;
  VALUE  HIN163X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN164X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN165X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN166X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN167X
   1                = "Covered"
   2                = "Unknown if covered"
   .                = "Not applicable"
   ;
  VALUE  HIN168X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN169X
   1                = "Blue Cross and/or Blue Shield"
   2                = "HMO or other prepaid plan"
   3                = "Other named and identified private plan"
   4                = "Has private plan, name not given"
   .                = "Not applicable"
   ;
  VALUE  HIN170X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN171X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN172X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN173X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN174X
   1                = "Covered"
   2                = "Unknown if covered"
   .                = "Not applicable"
   ;
  VALUE  HIN175X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN176X
   1                = "Blue Cross and/or Blue Shield"
   2                = "HMO or other prepaid plan"
   3                = "Other named and identified private plan"
   4                = "Has private plan, name not given"
   .                = "Not applicable"
   ;
  VALUE  HIN177X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN178X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN179X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN180X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN181X
   1                = "Covered"
   2                = "Unknown if covered"
   .                = "Not applicable"
   ;
  VALUE  HIN182X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN183X
   1                = "Blue Cross and/or Blue Shield"
   2                = "HMO or other prepaid plan"
   3                = "Other named and identified private plan"
   4                = "Has private plan, name not given"
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
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN187X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN188X
   1                = "Covered"
   2                = "Unknown if covered"
   .                = "Not applicable"
   ;
  VALUE  HIN189X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
 
DATA NHIS.HEALTHIN;
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1980\';
   INFILE ASCIIDAT MISSOVER TRUNCOVER LRECL=570;
 
* DEFINE LENGTH OF NUMERIC VARIABLES;
 
LENGTH
   WEEKCEN   3  RECTYPE   3  QUARTER   3  YEAR      3  WEEKPROC  3
   HI_28     3  HI_29     3  HI_30     3  HI_33     3  HI_36     3
   HI_37     3  HI_52     3  HI_53     3  HI_55     3  HI_57     3
   HI_59     3  HI_60     3  HI_61     3  HI_63     3  HI_64     3
   HI_66     3  HI_67     3  HI_68     3  HI_70     3  HI_73     3
   HI_74     3  HI_75     3  HI_76     3  HI_77     3  HI_80     3
   HI_82     3  HI_84     3  HI_87     3  HI_89     3  HI_91     3
   HI_94     3  HI_95     3  HI_97     3  HI_98     3  HI_99     3
   HI_100    3  HI_106    3  HI_108    3  HI_110    3  HI_111    3
   HI_115    3  HI_120    3  HI_121    3  HI_124    3  HI_127    3
   HI_128    3  HI_129    3  HI_131    3  HI_133    3  HI_134    3
   HI_135    3  HI_136    3  HI_137    3  HI_138    3  HI_139    3
   HI_140    3  HI_141    3  HI_142    3  HI_143    3  HI_145    3
   HI_147    3  HI_148    3  HI_149    3  HI_150    3  HI_156    3
   HI_158    3  HI_159    3  HI_160    3  HI_171    3  HI_172    3
   HI_173    3  HI_175    3  HI_177    3  HI_179    3  HI_182    6
   HI_188    6  HI_193    6  HI_199    6  HI_201    6  HI_210    6
   WTFA      6  HI_228    6  HI_237    6  HI_246    6  HI_255    6
   HI_264    6  HI_273    6  HI_282    6  HI_291    6  HI_300    6
   HI_327    6  HI_336    6  HI_345    8  HI_381    3  HI_390    3
   HI_399    3  HI_408    3  HI_417    3  HI_426    3  HI_435    3
   HI_444    3  HI_453    3  HI_467    3  HI_468    3  HI_469    3
   HI_470    3  HI_471    3  HI_472    3  HI_473    3  HI_474    3
   HI_475    3  HI_476    3  HI_477    3  HI_478    3  HI_501    3
   HI_502    3  HI_503    3  HI_504    3  HI_505    3  HI_507    3
   HI_508    3  HI_509    3  HI_510    3  HI_511    3  HI_513    3
   HI_514    3  HI_515    3  HI_516    3  HI_517    3  HI_519    3
   HI_520    3  HI_521    3  HI_522    3  HI_523    3  HI_524    3
   HI_525    3  HI_526    3  HI_527    3  HI_528    3  HI_529    3
   HI_530    3  HI_533    3  HI_534    3  HI_535    3  HI_536    3
   HI_537    3  HI_538    3  HI_539    3  HI_540    3  HI_541    3
   HI_542    3  HI_543    3  HI_544    3  HI_545    3  HI_546    3
   HI_547    3  HI_548    3  HI_549    3  HI_550    3  HI_551    3
   HI_552    3  HI_553    3  HI_554    3  HI_555    3  HI_556    3
   HI_557    3  HI_558    3  HI_559    3  HI_560    3  HI_561    3
   HI_562    3  HI_563    3  HI_564    3  HI_565    3  HI_566    3
   HI_567    3  HI_568    3
   ;
* INPUT ALL VARIABLES;
 
INPUT
   PSUNUMR  $   3 - 5          WEEKCEN      6 - 7
   SEGNUM   $   8 - 9          HHNUM    $  10 - 11
   PNUM     $  12 - 13         RECTYPE     14 - 14
   QUARTER     19 - 19         YEAR        20 - 20
   WEEKPROC    21 - 22         HI_28       28 - 28
   HI_29       29 - 29         HI_30       30 - 31
   HI_33       33 - 33         HI_36       36 - 36
   HI_37       37 - 37         HI_43    $  43 - 43
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
   HI_129     129 - 130        HI_131     131 - 132
   HI_133     133 - 133        HI_134     134 - 134
   HI_135     135 - 135        HI_136     136 - 136
   HI_137     137 - 137        HI_138     138 - 138
   HI_139     139 - 139        HI_140     140 - 140
   HI_141     141 - 141        HI_142     142 - 142
   HI_143     143 - 144        HI_145     145 - 145
   HI_147     147 - 147        HI_148     148 - 148
   HI_149     149 - 149        HI_150     150 - 150
   HI_156     156 - 157        HI_158     158 - 158
   HI_159     159 - 159        HI_160     160 - 162
   HI_171     171 - 171        HI_172     172 - 172
   HI_173     173 - 174        HI_175     175 - 176
   HI_177     177 - 178        HI_179     179 - 179
   HI_182     182 - 187        HI_188     188 - 192
   HI_193     193 - 198        HI_199     199 - 200
   HI_201     201 - 209        HI_210     210 - 218
   WTFA       219 - 227        HI_228     228 - 236
   HI_237     237 - 245        HI_246     246 - 254
   HI_255     255 - 263        HI_264     264 - 272
   HI_273     273 - 281        HI_282     282 - 290
   HI_291     291 - 299        HI_300     300 - 308
   HI_327     327 - 335        HI_336     336 - 344
   HI_345     345 - 354 .8     HI_381     381 - 389
   HI_390     390 - 398        HI_399     399 - 407
   HI_408     408 - 416        HI_417     417 - 425
   HI_426     426 - 434        HI_435     435 - 443
   HI_444     444 - 452        HI_453     453 - 461
   HI_467     467 - 467        HI_468     468 - 468
   HI_469     469 - 469        HI_470     470 - 470
   HI_471     471 - 471        HI_472     472 - 472
   HI_473     473 - 473        HI_474     474 - 474
   HI_475     475 - 475        HI_476     476 - 476
   HI_477     477 - 477        HI_478     478 - 480
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
   HI_568     568 - 568
   ;
* DEFINE VARIABLE LABELS;
 
LABEL
   PSUNUMR  = "PSU - ORIGINAL CODE"
   WEEKCEN  = "WEEK - CENSUS CODE"
   SEGNUM   = "SEGMENT NUMBER"
   HHNUM    = "HOUSEHOLD NUMBER"
   PNUM     = "PERSON NUMBER"
   RECTYPE  = "RECORD TYPE (6)"
   QUARTER  = "PROCESSING QUARTER CODE"
   YEAR     = "PROCESSING YEAR"
   WEEKPROC = "PROCESSING WEEK CODE"
   HI_28    = "TYPE OF PSU"
   HI_29    = "REGION"
   HI_30    = "TABULATION AREA"
   HI_33    = "GEOGRAPHIC IDENTIFICATION"
   HI_36    = "SMSA - NON-SMSA RESIDENCE"
   HI_37    = "TYPE OF LIVING QUARTERS"
   HI_43    = "TELEPHONE"
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
   HI_80    = "INDUSTRY RECODE 1"
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
   HI_131   = "TOTAL 2-WEEKS DOCTOR VISITS"
   HI_133   = "SOCIAL SECURITY INCOME"
   HI_134   = "TYPE OF RETIREMENT INCOME - RAILROAD"
   HI_135   = "TYPE OF RETIREMENT INCOME - MILITARY"
   HI_136   = "TYPE OF RETIREMENT INCOME - GOVERNMENT EMPLOYEE"
   HI_137   = "TYPE OF RETIREMENT INCOME - PRIVATE EMPLOYER OR UNION PENSION"
   HI_138   = "EVER MEMBER OF GUARD OR RESERVE"
   HI_139   = "ALL SERVICE RELATED TO NATIONAL GUARD OR MILITARY TRAINING"
   HI_140   = "HOSPITAL OWNERSHIP FOR SHORT-STAY EPISODES"
   HI_141   = "AFDC OR ADC (ASSISTANCE RECEIVED BY THIS PERSON)"
   HI_142   = "BED DAYS PAST 12 MOTHS"
   HI_143   = "FAMILY STRUCTURE"
   HI_145   = "HEALTH STATUS"
   HI_147   = "RACE RECODE 1"
   HI_148   = "RACE RECODE 2"
   HI_149   = "RACE RECODE 3"
   HI_150   = "SUPPLEMENTAL SECURITY INCOME"
   HI_156   = "HEIGHT WITHOUT SHOES"
   HI_158   = "USED MEDICAID - PAST 12 MONTHS"
   HI_159   = "MEDICAID - TYPE OF CARD"
   HI_160   = "WEIGHT WITHOUT SHOES"
   HI_171   = "CONDITION LIST ASSIGNED AND ASKED"
   HI_172   = "RECEIVED INCOME"
   HI_173   = "INDIVIDUAL INCOME"
   HI_175   = "INCOME OF HEAD OF FAMILY"
   HI_177   = "INCOME OF MAJOR BREADWINNER"
   HI_179   = "MAIN RACIAL BACKGROUND"
   HI_182   = "BASIC WEIGHT BEFORE ASC ADJUSTMENT (XXXXX.X)"
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
   HI_282   = "ESTIMATED BED PAST 2W - BIANNUAL"
   HI_291   = "ESTIMATED WORK/SCHOOL LOSS DAYS PAST 2W - QUARTER, SEMIANNUAL, ANNUAL"
   HI_300   = "ESTIMATED WORK/SCHOOL LOSS DAYS PAST 2W - BIANNUAL"
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
   HI_467   = "ARTIFICIAL ARM USED"
   HI_468   = "ARTIFICIAL LEG USED"
   HI_469   = "BRACE USED"
   HI_470   = "CRUTCHES USED"
   HI_471   = "CANE OR WALKING STICK USED"
   HI_472   = "SPECIAL SHOES USED"
   HI_473   = "WHEELCHAIR USED"
   HI_474   = "WALKER USED"
   HI_475   = "GUIDE DOG USED"
   HI_476   = "OTHER SPECIAL AID USED"
   HI_477   = "SELECTED AIDS ARM USED"
   HI_478   = "PSEUDO-PSU NUMBER"
   HI_501   = "MEDICARE COVERAGE"
   HI_502   = "MEDICARE: HOSPITAL COVERAGE"
   HI_503   = "MEDICARE: DOCTOR/SURGEON COVERAGE"
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
   HI_522   = "CAN�T OBTAIN BECAUSE OF POOR HEALTH, ILLNESS OR AGE"
   HI_523   = "TOO EXPENSIVE, CAN�T AFFORD HEALTH INSURANCE"
   HI_524   = "DISSATISFIED WITH PREVIOUS INSURANCE"
   HI_525   = "DON�T BELIEVE IN INSURANCE"
   HI_526   = "HAVE BEEN HEALTHY, HAVEN�T NEEDED HEALTH INSURANCE"
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
   HI_539   = "THIS PERSON�S COVERAGE STATUS UNDER THIS PLAN"
   HI_540   = "THIS PERSON USED THIS PLAN IN PAST 12 MONTHS"
   HI_541   = "PLAN 2 - TYPE OF PLAN"
   HI_542   = "PLAN OBTAINED THROUGH EMPLOYER OR UNION"
   HI_543   = "PLAN OBTAINED THROUGH GROUP OTHER THAN EMPLOYER OR UNION"
   HI_544   = "PLAN PAYS SOME OR ALL OF HOSPITAL BILLS"
   HI_545   = "PLAN PAYS SOME OR ALL SURGICAL BILLS FOR OPERATIONS"
   HI_546   = "THIS PERSON�S COVERAGE STATUS UNDER THIS PLAN"
   HI_547   = "THIS PERSON USED THIS PLAN IN PAST 12 MONTHS"
   HI_548   = "PLAN 3 - TYPE OF PLAN"
   HI_549   = "PLAN OBTAINED THROUGH EMPLOYER OR UNION"
   HI_550   = "PLAN OBTAINED THROUGH GROUP OTHER THAN EMPLOYER OR UNION"
   HI_551   = "PLAN PAYS SOME OR ALL OF HOSPITAL BILLS"
   HI_552   = "PLAN PAYS SOME OR ALL SURGICAL BILLS FOR OPERATIONS"
   HI_553   = "THIS PERSON�S COVERAGE STATUS UNDER THIS PLAN"
   HI_554   = "THIS PERSON USED THIS PLAN IN PAST 12 MONTHS"
   HI_555   = "PLAN 4 - TYPE OF PLAN"
   HI_556   = "PLAN OBTAINED THROUGH EMPLOYER OR UNION"
   HI_557   = "PLAN OBTAINED THROUGH GROUP OTHER THAN EMPLOYER OR UNION"
   HI_558   = "PLAN PAYS SOME OR ALL OF HOSPITAL BILLS"
   HI_559   = "PLAN PAYS SOME OR ALL SURGICAL BILLS FOR OPERATIONS"
   HI_560   = "THIS PERSON�S COVERAGE STATUS UNDER THIS PLAN"
   HI_561   = "THIS PERSON USED THIS PLAN IN PAST 12 MONTHS"
   HI_562   = "PLAN 5 - TYPE OF PLAN"
   HI_563   = "PLAN OBTAINED THROUGH EMPLOYER OR UNION"
   HI_564   = "PLAN OBTAINED THROUGH GROUP OTHER THAN EMPLOYER OR UNION"
   HI_565   = "PLAN PAYS SOME OR ALL OF HOSPITAL BILLS"
   HI_566   = "PLAN PAYS SOME OR ALL SURGICAL BILLS FOR OPERATIONS"
   HI_567   = "THIS PERSON�S COVERAGE STATUS UNDER THIS PLAN"
   HI_568   = "THIS PERSON USED THIS PLAN IN PAST 12 MONTHS"
   ;
* ASSOCIATE VARIABLES WITH FORMAT VALUES;
 
FORMAT
   PSUNUMR   $HIN001X.   WEEKCEN   HIN002X.    SEGNUM    $HIN003X.
   HHNUM     $HIN004X.   PNUM      $HIN005X.   RECTYPE   HIN006X.
   QUARTER   HIN007X.    YEAR      HIN008X.    WEEKPROC  HIN009X.
   HI_28     HIN010X.    HI_29     HIN011X.    HI_30     HIN012X.
   HI_33     HIN013X.    HI_36     HIN014X.    HI_37     HIN015X.
   HI_43     $HIN016X.   HI_52     HIN017X.    HI_53     HIN018X.
   HI_55     HIN019X.    HI_57     HIN020X.    HI_59     HIN021X.
   HI_60     HIN022X.    HI_61     HIN023X.    HI_63     HIN024X.
   HI_64     HIN025X.    HI_66     HIN026X.    HI_67     HIN027X.
   HI_68     HIN028X.    HI_70     HIN029X.    HI_71     $HIN030X.
   HI_72     $HIN031X.   HI_73     HIN032X.    HI_74     HIN033X.
   HI_75     HIN034X.    HI_76     HIN035X.    HI_77     HIN036X.
   HI_80     HIN037X.    HI_82     HIN038X.    HI_84     HIN039X.
   HI_87     HIN040X.    HI_89     HIN041X.    HI_91     HIN042X.
   HI_94     HIN043X.    HI_95     HIN044X.    HI_97     HIN045X.
   HI_98     HIN046X.    HI_99     HIN047X.    HI_100    HIN048X.
   HI_106    HIN049X.    HI_108    HIN050X.    HI_110    HIN051X.
   HI_111    HIN052X.    HI_115    HIN053X.    HI_120    HIN054X.
   HI_121    HIN055X.    HI_124    HIN056X.    HI_127    HIN057X.
   HI_128    HIN058X.    HI_129    HIN059X.    HI_131    HIN060X.
   HI_133    HIN061X.    HI_134    HIN062X.    HI_135    HIN063X.
   HI_136    HIN064X.    HI_137    HIN065X.    HI_138    HIN066X.
   HI_139    HIN067X.    HI_140    HIN068X.    HI_141    HIN069X.
   HI_142    HIN070X.    HI_143    HIN071X.    HI_145    HIN072X.
   HI_147    HIN073X.    HI_148    HIN074X.    HI_149    HIN075X.
   HI_150    HIN076X.    HI_156    HIN077X.    HI_158    HIN078X.
   HI_159    HIN079X.    HI_160    HIN080X.    HI_171    HIN081X.
   HI_172    HIN082X.    HI_173    HIN083X.    HI_175    HIN084X.
   HI_177    HIN085X.    HI_179    HIN086X.    HI_182    HIN087X.
   HI_188    HIN088X.    HI_193    HIN089X.    HI_199    HIN090X.
   HI_201    HIN091X.    HI_210    HIN092X.    WTFA      HIN093X.
   HI_228    HIN094X.    HI_237    HIN095X.    HI_246    HIN096X.
   HI_255    HIN097X.    HI_264    HIN098X.    HI_273    HIN099X.
   HI_282    HIN100X.    HI_291    HIN101X.    HI_300    HIN102X.
   HI_327    HIN103X.    HI_336    HIN104X.    HI_345    HIN105X.
   HI_381    HIN106X.    HI_390    HIN107X.    HI_399    HIN108X.
   HI_408    HIN109X.    HI_417    HIN110X.    HI_426    HIN111X.
   HI_435    HIN112X.    HI_444    HIN113X.    HI_453    HIN114X.
   HI_467    HIN115X.    HI_468    HIN116X.    HI_469    HIN117X.
   HI_470    HIN118X.    HI_471    HIN119X.    HI_472    HIN120X.
   HI_473    HIN121X.    HI_474    HIN122X.    HI_475    HIN123X.
   HI_476    HIN124X.    HI_477    HIN125X.    HI_478    HIN126X.
   HI_501    HIN127X.    HI_502    HIN128X.    HI_503    HIN129X.
   HI_504    HIN130X.    HI_505    HIN131X.    HI_507    HIN132X.
   HI_508    HIN133X.    HI_509    HIN134X.    HI_510    HIN135X.
   HI_511    HIN136X.    HI_513    HIN137X.    HI_514    HIN138X.
   HI_515    HIN139X.    HI_516    HIN140X.    HI_517    HIN141X.
   HI_519    HIN142X.    HI_520    HIN143X.    HI_521    HIN144X.
   HI_522    HIN145X.    HI_523    HIN146X.    HI_524    HIN147X.
   HI_525    HIN148X.    HI_526    HIN149X.    HI_527    HIN150X.
   HI_528    HIN151X.    HI_529    HIN152X.    HI_530    HIN153X.
   HI_533    HIN154X.    HI_534    HIN155X.    HI_535    HIN156X.
   HI_536    HIN157X.    HI_537    HIN158X.    HI_538    HIN159X.
   HI_539    HIN160X.    HI_540    HIN161X.    HI_541    HIN162X.
   HI_542    HIN163X.    HI_543    HIN164X.    HI_544    HIN165X.
   HI_545    HIN166X.    HI_546    HIN167X.    HI_547    HIN168X.
   HI_548    HIN169X.    HI_549    HIN170X.    HI_550    HIN171X.
   HI_551    HIN172X.    HI_552    HIN173X.    HI_553    HIN174X.
   HI_554    HIN175X.    HI_555    HIN176X.    HI_556    HIN177X.
   HI_557    HIN178X.    HI_558    HIN179X.    HI_559    HIN180X.
   HI_560    HIN181X.    HI_561    HIN182X.    HI_562    HIN183X.
   HI_563    HIN184X.    HI_564    HIN185X.    HI_565    HIN186X.
   HI_566    HIN187X.    HI_567    HIN188X.    HI_568    HIN189X.
   ;
 
PROC CONTENTS DATA=NHIS.HEALTHIN;
 
PROC FREQ DATA=NHIS.HEALTHIN;
TITLE1 'FREQUENCY REPORT FOR 1980 NHIS HEALTH INSURANCE FILE';
TITLE2 '(WEIGHTED)';
TABLES RECTYPE/LIST MISSING;
WEIGHT WTFA;
 
PROC FREQ DATA=NHIS.HEALTHIN;
TITLE1 'FREQUENCY REPORT FOR 1980 NHIS HEALTH INSURANCE FILE';
TITLE2 '(UNWEIGHTED)';
TABLES RECTYPE/LIST MISSING;
 
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
              STATEMENT: FORMAT _ALL_;
RUN;
