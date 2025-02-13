DM 'CLE LOG; CLE OUT';
**************************************************************************
 February 23, 2006
 
THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
FILE FROM THE NHIS 1970 PERSONSX.DAT ASCII FILE.
 
NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
      GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
      DOCUMENTATION.
 
THIS IS STORED IN PERSONSX.SAS
*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;
 
LIBNAME NHIS    'C:\NHIS1970\';
LIBNAME LIBRARY 'C:\NHIS1970\';
 
FILENAME ASCIIDAT 'C:\NHIS1970\PERSONSX.DAT';
 
* DEFINE VARIABLE VALUES FOR REPORT;
 
PROC FORMAT LIBRARY=LIBRARY;
  VALUE  PER001X
   1                = "B52 (Weeks 03-13) B56 (Weeks 01-02)"
   2                = "B53 (Weeks 01-13)"
   3                = "B54 (Weeks 01-13)"
   4                = "B55 (Weeks 01-13)"
   ;
  VALUE  PER002X
   0                = "1970"
   1                = "1971"
   ;
  VALUE $PER003X
   ;
  VALUE  PER004X
   21  = "Week 01"   41  = "Week 01"   61  = "Week 01"    81  = "Week 01"
   22  = "Week 02"   42  = "Week 02"   62  = "Week 02"    82  = "Week 02"
   23  = "Week 03"   43  = "Week 03"   63  = "Week 03"    83  = "Week 03"
   24  = "Week 04"   44  = "Week 04"   64  = "Week 04"    84  = "Week 04"
   25  = "Week 05"   45  = "Week 05"   65  = "Week 05"    85  = "Week 05"
   26  = "Week 06"   46  = "Week 06"   66  = "Week 06"    86  = "Week 06"
   27  = "Week 07"   47  = "Week 07"   67  = "Week 07"    87  = "Week 07"
   28  = "Week 08"   48  = "Week 08"   68  = "Week 08"    88  = "Week 08"
   29  = "Week 09"   49  = "Week 09"   69  = "Week 09"    89  = "Week 09"
   30  = "Week 10"   50  = "Week 10"   70  = "Week 10"    90  = "Week 10"
   31  = "Week 11"   51  = "Week 11"   71  = "Week 11"    91  = "Week 11"
   32  = "Week 12"   52  = "Week 12"   72  = "Week 12"    92  = "Week 12"
   33  = "Week 13"   53  = "Week 13"   73  = "Week 13"    93  = "Week 13"
   ;
  VALUE $PER005X
   ;
  VALUE $PER006X
   ;
  VALUE $PER007X
   ;
  VALUE  PER008X
   ;
  VALUE  PER009X
   21  = "Week 01"   41  = "Week 01"   61  = "Week 01"    81  = "Week 01"
   22  = "Week 02"   42  = "Week 02"   62  = "Week 02"    82  = "Week 02"
   23  = "Week 03"   43  = "Week 03"   63  = "Week 03"    83  = "Week 03"
   24  = "Week 04"   44  = "Week 04"   64  = "Week 04"    84  = "Week 04"
   25  = "Week 05"   45  = "Week 05"   65  = "Week 05"    85  = "Week 05"
   26  = "Week 06"   46  = "Week 06"   66  = "Week 06"    86  = "Week 06"
   27  = "Week 07"   47  = "Week 07"   67  = "Week 07"    87  = "Week 07"
   28  = "Week 08"   48  = "Week 08"   68  = "Week 08"    88  = "Week 08"
   29  = "Week 09"   49  = "Week 09"   69  = "Week 09"    89  = "Week 09"
   30  = "Week 10"   50  = "Week 10"   70  = "Week 10"    90  = "Week 10"
   31  = "Week 11"   51  = "Week 11"   71  = "Week 11"    91  = "Week 11"
   32  = "Week 12"   52  = "Week 12"   72  = "Week 12"    92  = "Week 12"
   33  = "Week 13"   53  = "Week 13"   73  = "Week 13"    93  = "Week 13"
   ;
  VALUE  PER010X
   1                = "B52 (Weeks 03-13), B53 (Weeks 01-02)"
   2                = "B53 (Weeks 03-13), B54 (Weeks 01-02)"
   3                = "B54 (Weeks 03-13), B55 (Weeks 01-02)"
   4                = "B55 (Weeks 03-13), B56 (Weeks 01-02)"
   ;
  VALUE  PER011X
   0                = "1970"
   ;
  VALUE  PER012X
   23  = "Week 01"   43  = "Week 01"   63  = "Week 01"    83  = "Week 01"
   24  = "Week 02"   44  = "Week 02"   64  = "Week 02"    84  = "Week 02"
   25  = "Week 03"   45  = "Week 03"   65  = "Week 03"    85  = "Week 03"
   26  = "Week 04"   46  = "Week 04"   66  = "Week 04"    86  = "Week 04"
   27  = "Week 05"   47  = "Week 05"   67  = "Week 05"    87  = "Week 05"
   28  = "Week 06"   48  = "Week 06"   68  = "Week 06"    88  = "Week 06"
   29  = "Week 07"   49  = "Week 07"   69  = "Week 07"    89  = "Week 07"
   30  = "Week 08"   50  = "Week 08"   70  = "Week 08"    90  = "Week 08"
   31  = "Week 09"   51  = "Week 09"   71  = "Week 09"    91  = "Week 09"
   32  = "Week 10"   52  = "Week 10"   72  = "Week 10"    92  = "Week 10"
   33  = "Week 11"   53  = "Week 11"   73  = "Week 11"    93  = "Week 11"
   21  = "Week 12"   41  = "Week 12"   61  = "Week 12"    81  = "Week 12"
   22  = "Week 13"   42  = "Week 13"   62  = "Week 13"    82  = "Week 13"
   ;
  VALUE  PER013X
   0                = "The 22 Large Self-representing SMSA's"
   1                = "SMSA-Self-representing"
   3                = "SMSA-Nonself-representing"
   4                = "Non-SMSA-Self-representing"
   6                = "Non-SMSA-Nonself-representing"
   ;
  VALUE  PER014X
   1                = "Northeast"
   2                = "North Central"
   3                = "South"
   4                = "West"
   ;
  VALUE  PER015X
   .                = "Non self-representing sections"
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
   ;
  VALUE  PER016X
   1                = "In SMA, in Central City"
   2                = "In SMA, not in Central City"
   4                = "Not in SMA"
   ;
  VALUE  PER017X
   1                = "SMSA"
   2                = "Non-SMSA - Nonfarm"
   3                = "Non-SMSA - Farm"
   ;
  VALUE  PER018X
   1                = "Housing Unit"
   2                = "Other"
   ;
  VALUE $PER019X
   ;
  VALUE  PER020X
   1-8              = "Number of calls"
   9                = "9+ calls"
   .                = "Not reported"
   ;
  VALUE  PER021X
   1                = "Yes - phone"
   2                = "None"
   3                = "DK if phone or refused"
   4                = "Blank"
   ;
  VALUE  PER022X
   1                = "Yes"
   2                = "No"
   .                = "Not reported"
   ;
  VALUE  PER023X
   1                = "Monday"
   2                = "Tuesday"
   3                = "Wednesday"
   4                = "Thursday"
   5                = "Friday"
   6                = "Saturday"
   7                = "Sunday"
   8                = "Unknown"
   ;
  VALUE  PER024X
   001-999          = "Minutes"
   .                = "Not reported"
   ;
  VALUE  PER025X
   1                = "6:01 am - 12:00 noon"
   2                = "12:01pm -  6:00 pm"
   3                = "6:01 pm - 12:00 midnight"
   4                = "12:01pm -  6:00 am"
   .                = "Not reported"
   ;
  VALUE  PER026X
   1                = "White"
   2                = "Black"
   3                = "Other"
   ;
  VALUE  PER027X
   1                = "White"
   2                = "Other races"
   ;
  VALUE  PER028X
   1                = "Male"
   2                = "Female"
   ;
  VALUE  PER029X
   00               = "Under 1 year"
   01-98            = "Single years"
   99               = "99+ years"
   ;
  VALUE  PER030X
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
  VALUE  PER031X
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
  VALUE  PER032X
   1                = "Under 15 years"
   2                = "15-44"
   3                = "45-64"
   4                = "65+"
   ;
  VALUE  PER033X
   0                = "Under 17 years"
   1                = "Married - Spouse present"
   2                = "Widowed"
   3                = "Never married"
   4                = "Divorsed"
   5                = "Separated"
   ;
  VALUE  PER034X
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
   ;
  VALUE  PER037X
   1                = "Under 17 years of age"
   2                = "None"
   3                = "01-08 (elementary)"
   4                = "09-11 (high school)"
   5                = "12 (high school graduate)"
   6                = "13-15 (college)"
   7                = "16+ (college graduate +)"
   8                = "Unknown"
   ;
  VALUE  PER038X
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
  VALUE  PER039X
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
  VALUE  PER040X
   1                = "Under $3,000"
   2                = "$3,000-4,999"
   3                = "5,000-6,999"
   4                = "7,000-9,999"
   5                = "10,000-14,999"
   6                = "15,000+"
   7                = "Unknown"
   ;
  VALUE $PER041X
   "&"              = "Primary individual"
   "-"              = "Secondary individual"
   "0"              = "Primary family"
   "1"-"9"          = "Secondary families"
   ;
  VALUE $PER042X
   "&"              = "Unrelated individual living alone"
   "0"              = "Head of family or unrelated individual not living alone"
   "1"              = "Wife (husband living at home and not in Amed Forces)"
   "2"              = "Wife (husband living at home and is in Armed Forces)"
   "3"              = "Child of head or spouse"
   "4"              = "Grand child of head or spouse"
   "5"              = "Parent of head or spouse"
   "6"              = "Other relative"
   ;
  VALUE  PER043X
   1                = "Living alone"
   2                = "Living with nonrelative"
   3                = "Living with spouse"
   4                = "Living with relatives - other"
   ;
  VALUE  PER044X
   0                = "Under 6 years"
   1                = "Usually working"
   2                = "Keeping house (female)"
   3                = "Retired - Health (45+ years)"
   4                = "Going to school"
   5                = "Something else"
   6                = "Unknown"
   7                = "Retired,Other (45+ years)"
   ;
  VALUE  PER045X
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
  VALUE  PER046X
   1                = "private paid"
   2                = "Federal Government"
   3                = "Other Government"
   4                = "Self employed"
   5                = "Nonpay"
   6                = "Other (new worker)"
   7                = "Unknown or not reported"
   8                = "Not in Labor Force"
   ;
  VALUE  PER047X
   001-999          = "Code Number"
   .                = "Not applicable"
   ;
  VALUE  PER048X
   ;
  VALUE  PER049X
   ;
  VALUE  PER050X
   000-995          = "Code number"
   .                = "Not applicable"
   ;
  VALUE  PER051X
   ;
  VALUE  PER052X
   ;
  VALUE  PER053X
   1                = "self entirely"
   2                = "Self partly"
   3                = "Spouse"
   4                = "Mother"
   5                = "Father"
   6                = "Other female family member"
   7                = "Other male family member"
   8                = "Other"
   ;
  VALUE  PER054X
   00               = "Under 1 year"
   01-98            = "Single years"
   99               = "Unknown"
   .                = "Not reported"
   ;
  VALUE  PER055X
   1                = "Under 20 years"
   2                = "20-54 years"
   3                = "55-64 years"
   4                = "65-74 years"
   5                = "75+ years"
   6                = "Unknown and not reported"
   ;
  VALUE  PER056X
   00               = "Unrelated individuals"
   01-19            = "Family size"
   ;
  VALUE  PER057X
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
  VALUE  PER058X
   1                = "Can not perform Usual Activity"
   2                = "Can perform UA but limited in amount and kind"
   3                = "Can perform UA but limited in outside activities"
   4                = "Not limited"
   ;
  VALUE  PER059X
   0                = "Less than 1 month"
   1                = "Months"
   2                = "Years"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER060X
   00               = "Less than l month"
   01-98            = "Number of months or years"
   99               = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER061X
   00               = "None"
   01-14            = "Number of days"
   ;
  VALUE  PER062X
   00               = "None"
   01-14            = "Number of days"
   ;
  VALUE  PER063X
   1                = "Under 6 years of age"
   2                = "School-loss days"
   3                = "Work-loss days"
   ;
  VALUE  PER064X
   00               = "None or Under 6"
   01-14            = "Number of days"
   ;
  VALUE  PER065X
   00               = "None or Under 6"
   01-14            = "Number of days"
   ;
  VALUE  PER066X
   00               = "None"
   01-98            = "Numberof visits"
   ;
  VALUE  PER067X
   1                = "Number of visits known"
   2                = "Number of visits unknown"
   ;
  VALUE  PER068X
   00               = "None or Unknown"
   01-98            = "Number of visits"
   ;
  VALUE  PER069X
   1                = "Number of visits known"
   2                = "Number of visits unknown"
   ;
  VALUE  PER070X
   000              = "None or Unknown"
   001-998          = "Number of visits"
   ;
  VALUE  PER071X
   000              = "None"
   001-365          = "Number of days"
   ;
  VALUE  PER072X
   0                = "Never"
   1                = "Visit in past 2 weeks"
   3                = "2 weeks to less than 6 months"
   4                = "6 months to less than 12 months"
   5                = "1 year"
   6                = "2-4 years"
   7                = "5+ years"
   9                = "Unknown"
   ;
  VALUE  PER073X
   0                = "Never"
   1                = "Visit in 2 weeks"
   2                = "2 weeks to less than 6 months"
   3                = "6 months to less than 12 months"
   4                = "1 year"
   5                = "2-4 years"
   6                = "5+ years"
   8                = "Unknown"
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
   0                = "No episodes"
   1                = "All in federal hospitals"
   2                = "All in nonfederal hospitals"
   3                = "Both federal and nonfederal hospitals"
   ;
  VALUE  PER079X
   0                = "Under 65 years of age"
   1                = "Yes"
   2                = "No"
   3                = "DK"
   ;
  VALUE  PER080X
   0                = "Under 65 years of age"
   1                = "Yes"
   2                = "No"
   3                = "DK"
   ;
  VALUE  PER081X
   0                = "Under 65 years of age"
   1                = "Hospital"
   2                = "Medical"
   3                = "Card not seen"
   4                = "Both 1 and 2 checked"
   5                = "Card not seen"
   ;
  VALUE  PER082X
   1                = "Yes"
   2                = "No"
   3                = "DK"
   ;
  VALUE  PER083X
   1                = "Yes"
   2                = "No"
   3                = "DK"
   ;
  VALUE  PER084X
   1                = "Blue only"
   2                = "Blue with other"
   3                = "DK if Blue"
   4                = "No Blue plan"
   5                = "No hospital plan"
   ;
  VALUE  PER085X
   1                = "Yes"
   2                = "No"
   3                = "DK"
   ;
  VALUE  PER086X
   1                = "Blue only"
   2                = "Blue with other"
   3                = "DK if Blue"
   4                = "No Blue plan"
   5                = "No surgical plan"
   ;
  VALUE  PER087X
   01               = "Steam or hot water"
   02               = "Central Hot Air"
   03               = "Built-in electric units"
   04               = "Pipeless furnace"
   05               = "Room heaters - Flue"
   06               = "Room heaters - Without flue"
   07               = "Fireplace with stove"
   08               = "Portable room heater"
   09               = "Other"
   10               = "None"
   99               = "DK or Refusal"
   ;
  VALUE  PER088X
   1                = "Individual room unit"
   2                = "Central air conditioning"
   3                = "No"
   9                = "DK or Refusal"
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
   1                = "Present smoker"
   2                = "Former smoker"
   3                = "Never smoked"
   4                = "DK If ever smoked"
   ;
  VALUE  PER122X
   1                = "Less than 1 per day"
   2                = "1-4 per day"
   3                = "5-14 per day"
   4                = "15-24 per day"
   5                = "25-34 per day"
   6                = "35-44 per day"
   7                = "45+ per day"
   8                = "DK amount"
   0                = "Former, Never, DK if smoked"
   ;
  VALUE  PER123X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER124X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER125X
   00               = "Less than 1 year"
   01-90            = "Number of years"
   98               = "Never smoked regularly"
   99               = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER126X
   1                = "Yes"
   2                = "No"
   .                = "Not applicable"
   ;
  VALUE  PER127X
   1                = "Yes"
   2                = "No"
   .                = "Not applicable"
   ;
  VALUE  PER128X
   1                = "Yes"
   2                = "No"
   .                = "Not applicable"
   ;
  VALUE  PER129X
   1                = "Yes"
   2                = "No"
   .                = "Not applicable"
   ;
  VALUE  PER130X
   1                = "Yes"
   2                = "No"
   .                = "Not applicable"
   ;
  VALUE  PER131X
   1                = "Yes"
   2                = "No"
   .                = "Not applicable"
   ;
  VALUE  PER132X
   1                = "Yes"
   2                = "No"
   .                = "Not applicable"
   ;
  VALUE  PER133X
   1                = "Yes"
   2                = "No"
   .                = "Not applicable"
   ;
  VALUE  PER134X
   1                = "Yes"
   2                = "No"
   .                = "Not applicable"
   ;
  VALUE  PER135X
   1                = "Yes"
   2                = "No"
   .                = "Not applicable"
   ;
  VALUE  PER136X
   1                = "Yes"
   2                = "No"
   .                = "Not applicable"
   ;
  VALUE  PER137X
   1                = "Yes"
   2                = "No"
   .                = "Not applicable"
   ;
  VALUE  PER138X
   1                = "Yes"
   2                = "No"
   .                = "Not applicable"
   ;
  VALUE  PER139X
   01               = "Will power"
   02               = "Illness"
   03               = "Health"
   04               = "Cost"
   05               = "Odor"
   06               = "Doctor's suggestion"
   07               = "Doctor's order"
   08               = "Friend's suggestion"
   09               = "Stains"
   10               = "Set example"
   11               = "Mass media"
   12               = "Not enjoyable"
   13               = "Other reason and DK"
   .                = "Not applicable"
   ;
  VALUE  PER140X
   00               = "Less than 1 per day"
   01-90            = "Number per day"
   99               = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER141X
   1                = "Regular"
   2                = "King size"
   3                = "Extra long"
   4                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER142X
   1                = "Filter"
   2                = "Non filter"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER143X
   00               = "Less than 1 per day"
   01-90            = "Number per day"
   98               = "Did not smoke"
   99               = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER144X
   00               = "Less than 1 per day"
   01-90            = "Number per day"
   99               = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER145X
   01-90            = "Age started"
   98               = "Never smoked regularly"
   99               = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER146X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  PER147X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER148X
   01-90            = "Number per day"
   96               = "3-6 per week"
   97               = "Less than 3 per week"
   99               = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER149X
   00               = "Less than 1 year"
   01-90            = "Number of years"
   97               = "Never smoked 3 or more per week"
   99               = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER150X
   1                = "Full size"
   2                = "Cigarillos"
   3                = "Cigarette size"
   4                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER151X
   01-90            = "Number per day"
   96               = "3-6 per week"
   97               = "Less than 3 per week"
   98               = "Did not smoke"
   99               = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER152X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  PER153X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER154X
   01-90            = "Number per day"
   96               = "3-6 per week"
   97               = "Less than 3 per week"
   99               = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER155X
   00               = "Less than 1 year"
   01-90            = "Number of years"
   97               = "Never smoked 3 or more per week"
   99               = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER156X
   01-90            = "Number per day"
   96               = "3-6 per week"
   97               = "Less than 3 per week"
   98               = "Did not smoke"
   99               = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  PER157X
   1                = "Yes"
   2                = "No"
   ;
  VALUE  PER158X
   1                = "Yes"
   2                = "No"
   ;
  VALUE  PER159X
   1                = "Yes"
   2                = "No"
   ;
  VALUE  PER160X
   1                = "Yes, DK if other form used"
   2                = "Other form used"
   3                = "None used"
   ;
  VALUE  PER161X
   1                = "self entirely"
   2                = "Self partly"
   3                = "Spouse"
   4                = "Mother"
   5                = "Father"
   6                = "Other female member"
   7                = "Other male member"
   8                = "Other"
   9                = "Not reported"
   .                = "Not applicable"
   ;
  VALUE  PER162X
   1                = "Present smoker"
   2                = "Former smoker"
   3                = "Never smoked"
   4                = "DK if ever smoked"
   5                = "Unknown respondent"
   .                = "Quarter 1 only"
   ;
 
DATA NHIS.PERSONSX;
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1970\';
   INFILE ASCIIDAT MISSOVER TRUNCOVER LRECL=516;
 
* DEFINE LENGTH OF NUMERIC VARIABLES;
 
LENGTH
   PER1      3  PER2      3  WEEKCEN   3  RECTYPE   3  PER17     3
   QUARTER   3  YEAR      3  PER21     3  PER28     3  PER29     3
   PER30     3  PER33     3  PER36     3  PER37     3
   PER42     3  PER43     3  PER44     3  PER45     3  PER46     3
   PER49     3  PER50     3  PER51     3  PER52     3  PER53     3
   PER55     3  PER57     3  PER59     3  PER60     3  PER61     3
   PER63     3  PER64     3  PER66     3  PER67     3  PER68     3
   PER70     3  PER73     3  PER74     3  PER75     3  PER76     3
   PER77     3  PER80     3  PER82     3  PER84     3  PER87     3
   PER89     3  PER91     3  PER92     3  PER94     3  PER95     3
   PER97     3  PER98     3  PER99     3  PER100    3  PER106    3
   PER108    3  PER110    3  PER111    3  PER113    3  PER115    3
   PER117    3  PER118    3  PER120    3  PER121    3  PER124    3
   PER127    3  PER128    3  PER129    3  PER131    3  PER133    3
   PER135    3  PER140    3  PER141    3  PER142    3  PER143    3
   PER144    3  PER145    3  PER146    3  PER147    3  PER148    3
   PER179    3  PER181    3  PER182    8  PER188    6  PER193    6
   PER201    6  PER210    6  WTFA      6  PER228    6  PER237    6
   PER246    6  PER255    6  PER264    6  PER273    6  PER282    6
   PER291    6  PER300    6  PER309    6  PER318    6  PER327    6
   PER336    6  PER345    6  PER354    6  PER363    6  PER372    6
   PER381    6  PER390    6  PER399    6  PER408    6  PER417    6
   PER426    6  PER435    6  PER444    6  PER453    6  PER462    3
   PER463    3  PER464    3  PER465    3  PER466    3  PER468    3
   PER469    3  PER470    3  PER471    3  PER472    3  PER473    3
   PER474    3  PER475    3  PER476    3  PER477    3  PER478    3
   PER479    3  PER480    3  PER481    3  PER483    3  PER485    3
   PER486    3  PER487    3  PER489    3  PER491    3  PER493    3
   PER494    3  PER495    3  PER497    3  PER499    3  PER500    3
   PER502    3  PER503    3  PER504    3  PER506    3  PER508    3
   PER510    3  PER511    3  PER512    3  PER514    3  PER515    3
   ;
* INPUT ALL VARIABLES;
 
INPUT
   PER1         1 - 1          PER2         2 - 2
   PSUNUMR  $   3 - 5          WEEKCEN      6 - 7
   SEGNUM   $   8 - 9          HHNUM    $  10 - 11
   PNUM     $  12 - 13         RECTYPE     14 - 14
   PER17       17 - 18         QUARTER     19 - 19
   YEAR        20 - 20         PER21       21 - 22
   PER28       28 - 28         PER29       29 - 29
   PER30       30 - 31         PER33       33 - 33
   PER36       36 - 36         PER37       37 - 37
   PER38    $  38 - 41         PER42       42 - 42
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
   PER91       91 - 91         PER92       92 - 93
   PER94       94 - 94         PER95       95 - 96
   PER97       97 - 97         PER98       98 - 98
   PER99       99 - 99         PER100     100 - 101
   PER106     106 - 107        PER108     108 - 109
   PER110     110 - 110        PER111     111 - 112
   PER113     113 - 114        PER115     115 - 116
   PER117     117 - 117        PER118     118 - 119
   PER120     120 - 120        PER121     121 - 123
   PER124     124 - 126        PER127     127 - 127
   PER128     128 - 128        PER129     129 - 130
   PER131     131 - 132        PER133     133 - 134
   PER135     135 - 136        PER140     140 - 140
   PER141     141 - 141        PER142     142 - 142
   PER143     143 - 143        PER144     144 - 144
   PER145     145 - 145        PER146     146 - 146
   PER147     147 - 147        PER148     148 - 148
   PER179     179 - 180        PER181     181 - 181
   PER182     182 - 187 .1     PER188     188 - 192
   PER193     193 - 198        PER201     201 - 209
   PER210     210 - 218        WTFA       219 - 227
   PER228     228 - 236        PER237     237 - 245
   PER246     246 - 254        PER255     255 - 263
   PER264     264 - 272        PER273     273 - 281
   PER282     282 - 290        PER291     291 - 299
   PER300     300 - 308        PER309     309 - 317
   PER318     318 - 326        PER327     327 - 335
   PER336     336 - 344        PER345     345 - 353
   PER354     354 - 362        PER363     363 - 371
   PER372     372 - 380        PER381     381 - 389
   PER390     390 - 398        PER399     399 - 407
   PER408     408 - 416        PER417     417 - 425
   PER426     426 - 434        PER435     435 - 443
   PER444     444 - 452        PER453     453 - 461
   PER462     462 - 462        PER463     463 - 463
   PER464     464 - 464        PER465     465 - 465
   PER466     466 - 467        PER468     468 - 468
   PER469     469 - 469        PER470     470 - 470
   PER471     471 - 471        PER472     472 - 472
   PER473     473 - 473        PER474     474 - 474
   PER475     475 - 475        PER476     476 - 476
   PER477     477 - 477        PER478     478 - 478
   PER479     479 - 479        PER480     480 - 480
   PER481     481 - 482        PER483     483 - 484
   PER485     485 - 485        PER486     486 - 486
   PER487     487 - 488        PER489     489 - 490
   PER491     491 - 492        PER493     493 - 493
   PER494     494 - 494        PER495     495 - 496
   PER497     497 - 498        PER499     499 - 499
   PER500     500 - 501        PER502     502 - 502
   PER503     503 - 503        PER504     504 - 505
   PER506     506 - 507        PER508     508 - 509
   PER510     510 - 510        PER511     511 - 511
   PER512     512 - 512        PER514     514 - 514
   PER515     515 - 515        PER516     516 - 516
   ;
* DEFINE VARIABLE LABELS;
 
LABEL
   PER1     = "SAMPLE - RECODE OF CENSUS CODE"
   PER2     = "YEAR OF COLLECTION OF DATA"
   PSUNUMR  = "PSU - RANDOM RECODES"
   WEEKCEN  = "WEEK - CENSUS CODE"
   SEGNUM   = "SEGMENT NUMBER"
   HHNUM    = "HOUSEHOLD NUMBER"
   PNUM     = "PERSON NUMBER"
   RECTYPE  = "RECORD TYPE (2)"
   PER17    = "CENSUS WEEK RECODE"
   QUARTER  = "PROCESSING QUARTER CODE"
   YEAR     = "PROCESSING YEAR"
   PER21    = "PROCESSING WEEK CODE"
   PER28    = "PSU RECODE"
   PER29    = "REGION"
   PER30    = "TABULATION AREA"
   PER33    = "GEOGRAPHIC IDENTIFICATION"
   PER36    = "SMSA - NON-SMSA RESIDENCE"
   PER37    = "TYPE OF LIVING QUARTERS"
   PER38    = "INTERVIEWER NUMBER"
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
   PER73    = "FAMILY RELATIONSHIP RECODE (LIVING ARRANGEMENT)"
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
   PER92    = "AGE OF RESPONDENT"
   PER94    = "AGE OF RESPONDENT RECODE"
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
   PER141   = "MEDICARE - HOSPITAL COVERAGE"
   PER142   = "MEDICARE - MEDICAL COVERAGE"
   PER143   = "MEDICARE - CARD SEEN"
   PER144   = "CUT DOWN BECAUSE OF ACCIDENT"
   PER145   = "HAS HOSPITAL COVERAGE"
   PER146   = "BLUE COVERAGE (HOSPITAL)"
   PER147   = "HAS SURGICAL INSURANCE"
   PER148   = "BLUE COVERAGE (SURGICAL)"
   PER179   = "TYPE OF HEATING UNIT"
   PER181   = "TYPE OF AIR CONDITIONING"
   PER182   = "BASIC WEIGHT BEFORE ASC ADJUSTMENT (XXXXX,X)"
   PER188   = "FINAL BASIC WEIGHT"
   PER193   = "6.5 WEIGHT (FINAL BASIC WEIGHT X 6.5)"
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
   PER462   = "CIGARETTE SMOKING RECODE 17+"
   PER463   = "PRESENT CIGARETTE SMOKING AMOUNT RECODE"
   PER464   = "CIGARETTES - EVER SMOKED"
   PER465   = "CIGARETTES - SMOKE NOW"
   PER466   = "CIGARETTES - HOW LONG SINCE SMOKED"
   PER468   = "REASON FOR STOPPING (1) WILL POWER"
   PER469   = "REASON FOR STOPPING (2) ILLNESS"
   PER470   = "REASON FOR STOPPING (3) HEALTH"
   PER471   = "REASON FOR STOPPING (4) COST"
   PER472   = "REASON FOR STOPPING (5) ODOR"
   PER473   = "REASON FOR STOPPING (6) DOCTOR'S SUGGESTION"
   PER474   = "REASON FOR STOPPING (7) DOCTOR'S ORDER"
   PER475   = "REASON FOR STOPPING (8) FRIEND'S SUGGESTION"
   PER476   = "REASON FOR STOPPING (9) STAINS"
   PER477   = "REASON FOR STOPPING (10) SET EXAMPLES"
   PER478   = "REASON FOR STOPPING (11) MASS MEDIA"
   PER479   = "REASON FOR STOPPING (12) NOT ENJOYABLE"
   PER480   = "REASON FOR STOPPING (13) OTHER REASON"
   PER481   = "MAIN REASON FOR STOPPING"
   PER483   = "HOW MANY CIGARETTES PER DAY NOW"
   PER485   = "LENGTH OF CIGARETTE"
   PER486   = "CIGARETTE TYPE"
   PER487   = "CIGARETTES PER DAY - 12 MONTHS AGO"
   PER489   = "HEAVIEST RATE"
   PER491   = "AGE STARTED SMOKING"
   PER493   = "EVER SMOKED CIGARS"
   PER494   = "SMOKE CIGARS NOW"
   PER495   = "CIGARS PER DAY"
   PER497   = "HOW LONG SINCE SMOKED CIGARS"
   PER499   = "WHAT SIZE OF CIGARS"
   PER500   = "CIGARS PER DAY - 12 MONTHS AGO"
   PER502   = "EVER SMOKED A PIPE"
   PER503   = "SMOKE PIPE NOW"
   PER504   = "PIPEFULS PER DAY NOW"
   PER506   = "HOW LONG SINCE SMOKED PIPE"
   PER508   = "PIPEFULS PER DAY - 12 MONTHS AGO"
   PER510   = "SNUFF"
   PER511   = "CHEWING TOBACCO"
   PER512   = "OTHER"
   PER514   = "UNKNOWN IF OTHER FORM USED"
   PER515   = "SMOKER RESPONDENT"
   PER516   = "RESPONDENT'S SMOKING STATUS"
   ;
* ASSOCIATE VARIABLES WITH FORMAT VALUES;
 
FORMAT
   PER1      PER001X.    PER2      PER002X.    PSUNUMR   $PER003X.
   WEEKCEN   PER004X.    SEGNUM    $PER005X.   HHNUM     $PER006X.
   PNUM      $PER007X.   RECTYPE   PER008X.    PER17     PER009X.
   QUARTER   PER010X.    YEAR      PER011X.    PER21     PER012X.
   PER28     PER013X.    PER29     PER014X.    PER30     PER015X.
   PER33     PER016X.    PER36     PER017X.    PER37     PER018X.
   PER38     $PER019X.   PER42     PER020X.    PER43     PER021X.
   PER44     PER022X.    PER45     PER023X.    PER46     PER024X.
   PER49     PER025X.    PER50     PER026X.    PER51     PER027X.
   PER52     PER028X.    PER53     PER029X.    PER55     PER030X.
   PER57     PER031X.    PER59     PER032X.    PER60     PER033X.
   PER61     PER034X.    PER63     PER035X.    PER64     PER036X.
   PER66     PER037X.    PER67     PER038X.    PER68     PER039X.
   PER70     PER040X.    PER71     $PER041X.   PER72     $PER042X.
   PER73     PER043X.    PER74     PER044X.    PER75     PER045X.
   PER76     PER046X.    PER77     PER047X.    PER80     PER048X.
   PER82     PER049X.    PER84     PER050X.    PER87     PER051X.
   PER89     PER052X.    PER91     PER053X.    PER92     PER054X.
   PER94     PER055X.    PER95     PER056X.    PER97     PER057X.
   PER98     PER058X.    PER99     PER059X.    PER100    PER060X.
   PER106    PER061X.    PER108    PER062X.    PER110    PER063X.
   PER111    PER064X.    PER113    PER065X.    PER115    PER066X.
   PER117    PER067X.    PER118    PER068X.    PER120    PER069X.
   PER121    PER070X.    PER124    PER071X.    PER127    PER072X.
   PER128    PER073X.    PER129    PER074X.    PER131    PER075X.
   PER133    PER076X.    PER135    PER077X.    PER140    PER078X.
   PER141    PER079X.    PER142    PER080X.    PER143    PER081X.
   PER144    PER082X.    PER145    PER083X.    PER146    PER084X.
   PER147    PER085X.    PER148    PER086X.    PER179    PER087X.
   PER181    PER088X.    PER182    PER089X.    PER188    PER090X.
   PER193    PER091X.    PER201    PER092X.    PER210    PER093X.
   WTFA      PER094X.    PER228    PER095X.    PER237    PER096X.
   PER246    PER097X.    PER255    PER098X.    PER264    PER099X.
   PER273    PER100X.    PER282    PER101X.    PER291    PER102X.
   PER300    PER103X.    PER309    PER104X.    PER318    PER105X.
   PER327    PER106X.    PER336    PER107X.    PER345    PER108X.
   PER354    PER109X.    PER363    PER110X.    PER372    PER111X.
   PER381    PER112X.    PER390    PER113X.    PER399    PER114X.
   PER408    PER115X.    PER417    PER116X.    PER426    PER117X.
   PER435    PER118X.    PER444    PER119X.    PER453    PER120X.
   PER462    PER121X.    PER463    PER122X.    PER464    PER123X.
   PER465    PER124X.    PER466    PER125X.    PER468    PER126X.
   PER469    PER127X.    PER470    PER128X.    PER471    PER129X.
   PER472    PER130X.    PER473    PER131X.    PER474    PER132X.
   PER475    PER133X.    PER476    PER134X.    PER477    PER135X.
   PER478    PER136X.    PER479    PER137X.    PER480    PER138X.
   PER481    PER139X.    PER483    PER140X.    PER485    PER141X.
   PER486    PER142X.    PER487    PER143X.    PER489    PER144X.
   PER491    PER145X.    PER493    PER146X.    PER494    PER147X.
   PER495    PER148X.    PER497    PER149X.    PER499    PER150X.
   PER500    PER151X.    PER502    PER152X.    PER503    PER153X.
   PER504    PER154X.    PER506    PER155X.    PER508    PER156X.
   PER510    PER157X.    PER511    PER158X.    PER512    PER159X.
   PER514    PER160X.    PER515    PER161X.    PER516    PER162X.
   ;
 
PROC CONTENTS DATA=NHIS.PERSONSX;
 
PROC FREQ DATA=NHIS.PERSONSX;
TITLE1 'FREQUENCY REPORT FOR 1970 NHIS PERSON FILE';
TITLE2 '(WEIGHTED)';
TABLES RECTYPE/LIST MISSING;
WEIGHT WTFA;
 
PROC FREQ DATA=NHIS.PERSONSX;
TITLE1 'FREQUENCY REPORT FOR 1970 NHIS PERSON FILE';
TITLE2 '(UNWEIGHTED)';
TABLES RECTYPE/LIST MISSING;
 
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
              STATEMENT: FORMAT _ALL_;
RUN;
