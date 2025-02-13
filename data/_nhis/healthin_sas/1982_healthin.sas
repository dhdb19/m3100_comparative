DM 'CLE LOG; CLE OUT';
**************************************************************************
  December 7, 2005
 
THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
FILE FROM THE NHIS 1982 HEALTHIN.DAT ASCII FILE.
 
NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
      GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
      DOCUMENTATION.
 
THIS IS STORED IN HEALTHIN.SAS
*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;
 
LIBNAME NHIS    'C:\NHIS1982\';
LIBNAME LIBRARY 'C:\NHIS1982\';
 
FILENAME ASCIIDAT 'C:\NHIS1982\HEALTHIN.DAT';
 
* DEFINE VARIABLE VALUES FOR REPORT;
 
PROC FORMAT LIBRARY=LIBRARY;
  VALUE  HIN001X
   60               = "Health Insurance Supplement"
   ;
  VALUE  HIN002X
   82               = "1982"
   ;
  VALUE  HIN003X
   1                = "Quarter 1"
   2                = "Quarter 2"
   3                = "Quarter 3"
   4                = "Quarter 4"
   ;
  VALUE $HIN004X
   ;
  VALUE  HIN005X
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
  VALUE $HIN006X
   ;
  VALUE $HIN007X
   ;
  VALUE $HIN008X
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
   10               = "Unoccupied tent site or trailer site"
   11               = "Other unit not specified above"
   12               = "Other unit; kind unknown"
   ;
  VALUE  HIN011X
   1                = "Yes, phone number given"
   2                = "Yes, no phone number given"
   3                = "No"
   4                = "Unknown"
   ;
  VALUE  HIN012X
   1                = "Male"
   2                = "Female"
   ;
  VALUE  HIN013X
   00               = "Under 1 year"
   01-98            = "Number of years"
   99               = "99+ years of age"
   ;
  VALUE  HIN014X
   1                = "Under 5 years"
   2                = "5-17 years"
   3                = "18-24 years"
   4                = "25-39 years"
   5                = "40-59 years"
   6                = "60-70 years"
   7                = "71 years and over"
   ;
  VALUE  HIN015X
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
  VALUE  HIN016X
   00-35            = "Months"
   36               = "Over 3 years"
   ;
  VALUE $HIN017X
   "01"          = "January"         "08"     =  "August"
   "02"          = "February"        "09"     =  "September"
   "03"          = "March"           "10"     =  "October"
   "04"          = "April"           "11"     =  "November"
   "05"          = "May"             "12"     =  "December"
   "06"          = "June"            "99"     =  "DK or Refused"
   "07"          = "July"
   ;
  VALUE $HIN018X
   "1800"-"1899"    = "1800-1899"
   "1900"-"1983"    = "1900-1983"
   "9999"           = "DK or refused"
   ;
  VALUE  HIN019X
   12-98            = "Number of years"
   99               = "99+ years of age"
   .                = "No reference person (All adults in Armed Forces)"
   ;
  VALUE  HIN020X
   1                = "Aleut, Eskimo, or American Indian"
   2                = "Asian/Pacific Islander"
   3                = "Black"
   4                = "White"
   5                = "Other"
   6                = "Multiple race"
   7                = "Unknown"
   ;
  VALUE  HIN021X
   1                = "White"
   2                = "Black"
   3                = "Other"
   ;
  VALUE  HIN022X
   1                = "White"
   2                = "Non-white"
   ;
  VALUE  HIN023X
   1                = "Black"
   2                = "Non-black"
   ;
  VALUE  HIN024X
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
  VALUE  HIN025X
   0                = "Under 14 years"
   1                = "Married - spouse in household"
   2                = "Married - spouse not in household"
   3                = "Widowed"
   4                = "Divorced"
   5                = "Separated"
   6                = "Never married"
   7                = "Unknown"
   ;
  VALUE  HIN026X
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
  VALUE  HIN027X
   0                = "Non-veteran"
   1                = "All service in Guard/Reserve"
   2                = "Some service in Guard/Reserve"
   3                = "Unknown if all service in Guard/Reserve"
   4                = "No active service in Guard/Reserve"
   5                = "Unknown if ever active member in Guard/Reserve or served in Armed Forces"
   .                = "Under 18 years of age"
   ;
  VALUE  HIN028X
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
  VALUE  HIN029X
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
  VALUE  HIN030X
   00               = "Never attended; kindergarten only"
   01-12            = "Grades 1-12"
   13               = "1 year"
   14               = "2 years"
   15               = "3 years"
   16               = "4 years"
   17               = "5 years"
   18               = "6 years or more"
   19               = "Unknown"
   .                = "No reference person (all adults in Armed Forces)"
   ;
  VALUE  HIN031X
   0                = "None; kindergarten only"
   1                = "1-8 years (elementary)"
   2                = "9-11 years (high school)"
   3                = "12 years (high school graduate)"
   4                = "1-3 years (college)"
   5                = "4 years (college graduate)"
   6                = "5+ years (post-college)"
   7                = "Unknown"
   .                = "No reference person (all adults in Armed Forces)"
   ;
  VALUE  HIN032X
   1                = "Less than $20,000"
   2                = "$20,000 or more"
   3                = "Unknown"
   ;
  VALUE  HIN033X
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
  VALUE  HIN034X
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
  VALUE  HIN035X
   1                = "Above poverty threshold"
   2                = "Below poverty threshold"
   3                = "Unknown"
   ;
  VALUE $HIN036X
   "&"              = "Primary individual"
   "-"              = "Secondary individual"
   "0"              = "Primary family"
   "1"-"9"          = "Secondary family"
   ;
  VALUE $HIN037X
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
  VALUE  HIN038X
   1                = "Living alone"
   2                = "Living only with non-relative"
   3                = "Living with spouse"
   4                = "Living with relative - other"
   ;
  VALUE  HIN039X
   ;
  VALUE  HIN040X
   1-8              = "Number of members"
   9                = "9+ members"
   ;
  VALUE  HIN041X
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
  VALUE  HIN042X
   1                = "Working"
   2                = "Keeping house"
   3                = "Going to school"
   4                = "Something else"
   5                = "Unknown"
   .                = "Not applicable (Under 18 years)"
   ;
  VALUE  HIN043X
   1                = "Excellent"
   2                = "Very Good"
   3                = "Good"
   4                = "Fair"
   5                = "Poor"
   6                = "Unknown"
   ;
  VALUE  HIN044X
   1                = "Unable to perform major activity"
   2                = "Limited in kind/amount major activity"
   3                = "Limited in other activities"
   4                = "Not limited (includes unknowns)"
   ;
  VALUE  HIN045X
   1                = "Unable to work"
   2                = "Limited in kind/amount of work"
   3                = "Limited in other activities"
   4                = "Not limited (includes unknowns)"
   .                = "Not applicable (under 18 years, 70+ years)"
   ;
  VALUE  HIN046X
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
  VALUE  HIN047X
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
  VALUE  HIN048X
   017-999          = "Code number"
   .                = "Not applicable"
   ;
  VALUE  HIN049X
   ;
  VALUE  HIN050X
   ;
  VALUE  HIN051X
   001-995          = "Code number"
   .                = "Not applicable"
   ;
  VALUE  HIN052X
   ;
  VALUE  HIN053X
   ;
  VALUE  HIN054X
   0                = "Under 17"
   1                = "Self-entirely"
   2                = "Self-partly"
   3                = "Proxy"
   4                = "Unknown"
   ;
  VALUE  HIN055X
   1                = "Condition List 1, Skin and musculoskeletal"
   2                = "Condition List 2, Impairments"
   3                = "Condition List 3, Digestive"
   4                = "Condition List 4, Miscellaneous"
   5                = "Condition List 5, Circulatory"
   6                = "Condition List 6, Respiratory"
   7                = "Unknown"
   ;
  VALUE  HIN056X
   36-98            = "Number of inches"
   99               = "Unknown"
   .                = "Under 18 years of age"
   ;
  VALUE  HIN057X
   050-500          = "Number of pounds"
   501              = "Unknown"
   .                = "Under 18 years of age"
   ;
  VALUE  HIN058X
   00               = "None"
   01-14            = "Days"
   ;
  VALUE  HIN059X
   00               = "None"
   01-14            = "Days"
   ;
  VALUE  HIN060X
   00               = "None"
   01-14            = "Days"
   ;
  VALUE  HIN061X
   00               = "None"
   01-14            = "Days"
   ;
  VALUE  HIN062X
   00               = "None"
   01-14            = "Days"
   ;
  VALUE  HIN063X
   000              = "None"
   001-365          = "1-365 days"
   366              = "Unknown"
   ;
  VALUE  HIN064X
   0                = "None"
   1                = "1-7 days"
   2                = "8-30 days"
   3                = "31-180 days"
   4                = "181-365 days"
   5                = "Unknown"
   ;
  VALUE  HIN065X
   000              = "None"
   001-996          = "Visits"
   997              = "997+ visits"
   998              = "Unknown"
   ;
  VALUE  HIN066X
   0                = "Never"
   1                = "Less than 1 year"
   2                = "1 to less than 2 years"
   3                = "2 to less than 5 years"
   4                = "5 years or more"
   5                = "Unknown"
   ;
  VALUE  HIN067X
   ;
  VALUE  HIN068X
   ;
  VALUE  HIN069X
   ;
  VALUE  HIN070X
   ;
  VALUE  HIN071X
   ;
  VALUE  HIN072X
   ;
  VALUE  HIN073X
   ;
  VALUE  HIN074X
   ;
  VALUE  HIN075X
   ;
  VALUE  HIN076X
   ;
  VALUE  HIN077X
   ;
  VALUE  HIN078X
   1                = "Northeast"
   2                = "North Central"
   3                = "South"
   4                = "West"
   ;
  VALUE  HIN079X
   .                = "Non self-representing sections and self-representing SMSA's other than those recoded 34-64"
   34               = "Boston"
   35               = "York"
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
  VALUE  HIN080X
   0                = "The 31 Large Self-representing SMSA's"
   1                = "SMSA - Self-representing"
   3                = "SMSA - Nonself-representing"
   4                = "Non-SMSA - Self-representing"
   6                = "Non-SMSA - Nonself-representing"
   ;
  VALUE  HIN081X
   1                = "SMSA - Central City"
   2                = "SMSA - Not Central City"
   3                = "Non-SMSA - Nonfarm"
   4                = "Non-SMSA - Farm"
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
   1                = "Covered"
   2                = "Not covered"
   3                = "Unknown if covered"
   ;
  VALUE  HIN100X
   1                = "Covered"
   2                = "Not covered"
   3                = "Unknown if covered"
   ;
  VALUE  HIN101X
   1                = "Covered"
   2                = "Not covered"
   3                = "Unknown if covered"
   ;
  VALUE  HIN102X
   1                = "Current hospital coverage"
   2                = "Current doctor/surgeon coverage"
   3                = "Claims has a card, but it is not available"
   4                = "Current hospital and doctor/surgeon coverage"
   5                = "Unknown if person has card"
   6                = "Persons 65 years of age and over"
   7                = "Persons under 65 years of age, card not requested"
   ;
  VALUE  HIN103X
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
  VALUE  HIN104X
   1                = "Has hospital and doctor coverage"
   2                = "Has hospital OR doctor coverage, but not both"
   3                = "Has coverage, extent unknown"
   4                = "No Medicare coverage"
   5                = "Unknown if Medicar; coverage"
   ;
  VALUE  HIN105X
   1                = "Blue Cross and/or Blue Shield"
   2                = "HMO or other prepaid plan"
   3                = "Other named and identified private plan"
   4                = "Has private plan, name not given"
   .                = "Not applicable"
   ;
  VALUE  HIN106X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN107X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN108X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN109X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN110X
   1                = "Covered"
   2                = "Unknown if covered"
   .                = "Not applicable"
   ;
  VALUE  HIN111X
   1                = "Blue Cross and/or Blue Shield"
   2                = "HMO or other prepaid plan"
   3                = "Other named and identified private plan"
   4                = "Has private plan, name not given"
   .                = "Not applicable"
   ;
  VALUE  HIN112X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN113X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN114X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN115X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN116X
   1                = "Covered"
   2                = "Unknown if covered"
   .                = "Not applicable"
   ;
  VALUE  HIN117X
   1                = "Blue Cross and/or Blue Shield"
   2                = "HMO or other prepaid plan"
   3                = "Other named and identified private plan"
   4                = "Has private plan, name not given"
   .                = "Not applicable"
   ;
  VALUE  HIN118X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN119X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN120X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN121X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN122X
   1                = "Covered"
   2                = "Unknown if covered"
   .                = "Not applicable"
   ;
  VALUE  HIN123X
   1                = "Blue Cross and/or Blue Shield"
   2                = "HMO or other prepaid plan"
   3                = "Other named and identified private plan"
   4                = "Has private plan, name not given"
   .                = "Not applicable"
   ;
  VALUE  HIN124X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN125X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN126X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN127X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN128X
   1                = "Covered"
   2                = "Unknown if covered"
   .                = "Not applicable"
   ;
  VALUE  HIN129X
   1                = "Blue Cross and/or Blue Shield"
   2                = "HMO or other prepaid plan"
   3                = "Other named and identified private plan"
   4                = "Has private plan, name not given"
   .                = "Not applicable"
   ;
  VALUE  HIN130X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN131X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN132X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN133X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN134X
   1                = "Covered"
   2                = "Unknown if covered"
   .                = "Not applicable"
   ;
  VALUE  HIN135X
   1                = "Covered"
   2                = "Unknown if covered"
   .                = "Not applicable"
   ;
  VALUE  HIN136X
   1                = "Covered"
   2                = "Unknown if covered"
   .                = "Not applicable"
   ;
  VALUE  HIN137X
   1                = "Covered"
   2                = "Unknown if covered"
   .                = "Not applicable"
   ;
  VALUE  HIN138X
   01               = "Has hospital but not doctor"
   02               = "Has hospital, doctor unknown"
   03               = "Has both hospital and doctor"
   04               = "Has doctor but not hospital"
   05               = "Has doctor, hospital unknown"
   06               = "Neither hospital nor doctor"
   07               = "Hospital unknown, does not have doctor"
   08               = "Doctor unknown, does not have hospital"
   09               = "Both hospital and doctor unknown"
   10               = "No PHI Coverage, neither hospital nor doctor"
   11               = "Neither hospital nor doctor"
   12               = "No hospital, doctor unknown"
   13               = "No doctor, hospital unknown"
   14               = "Both hospital and doctor unknown"
   15               = "Either or both hospital/doctor coverage"
   ;
  VALUE  HIN139X
   1                = "Has hospital and doctor coverage"
   2                = "Has hospital or doctor, but not both"
   3                = "Has coverage, extent unknown"
   4                = "Neither hospital nor doctor but has coverage"
   5                = "No PHI Coverage"
   6                = "Unknown if PHI Coverage"
   ;
  VALUE  HIN140X
   1                = "Covered by one or both"
   2                = "Not covered by either"
   3                = "Unknown if covered"
   ;
  VALUE  HIN141X
   1                = "Covered by one or both"
   2                = "Not covered by either"
   3                = "Unknown if covered"
   ;
  VALUE  HIN142X
   1                = "Covered by one or both"
   2                = "Not covered by either"
   3                = "Unknown if covered"
   ;
  VALUE  HIN143X
   01               = "Has hospital but not doctor"
   02               = "Has hospital, doctor unknown"
   03               = "Has both hospital and doctor"
   04               = "Has doctor but not hospital"
   05               = "Has doctor, hospital unknown"
   06               = "Neither hospital nor doctor"
   07               = "Hospital unknown, does not have doctor"
   08               = "Doctor unknown, does not have hospital"
   09               = "Both hospital and doctor unknown"
   10               = "No PHI Coverage, neither hospital nor doctor"
   11               = "Neither hospital nor doctor"
   12               = "No hospital, doctor unknown"
   13               = "No doctor, hospital unknown"
   14               = "Both hospital and doctor unknown"
   ;
  VALUE  HIN144X
   1                = "Has hospital and doctor coverage"
   2                = "Has hospital or doctor, but not both"
   3                = "Unknown if both, just one or neither"
   4                = "Neither hospital nor doctor but has coverage"
   5                = "No PHI/Medicare Coveraqe"
   6                = "Unknown if PHI/Medicare Coverage"
   ;
  VALUE  HIN145X
   1                = "Blue Cross and/or Blue Shield only"
   2                = "Blue Plan and other identified plan not including prepaid"
   3                = "Blue Plan, other identified plan, and prepaid plan"
   4                = "Prepaid and Blue Plan (no other identified plan)"
   5                = "Prepaid and other identified plan (no Blue Plan)"
   6                = "Prepaid plan only"
   7                = "Other identified plan only"
   8                = "Plans include at least one for which type is unknown"
   9                = "Person’s coverage status unknown for at least one plan"
   .                = "Not applicable"
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
   1                = "Yes"
   2                = "Reason given, but not this reason"
   .                = "Unknown or not applicable"
   ;
  VALUE  HIN153X
   1                = "Yes"
   2                = "Reason given, but not this reason"
   .                = "Unknown or not applicable"
   ;
  VALUE  HIN154X
   1                = "At least one reason given"
   2                = "No reason given because item refused or stated to be unknown"
   3                = "No indication of reason given, unknown or refused"
   .                = "Not applicable"
   ;
  VALUE  HIN155X
   01               = "Unemployment or reasons related to unemployment"
   02               = "Can’t obtain because of poor health, illness or age"
   03               = "Too expensive, can’t afford health insurance"
   04               = "Dissatisfied with previous insurance"
   05               = "Don’t believe in insurance"
   06               = "Have been healthy, haven’t needed insurance"
   07               = "Some other health plan, including military care and veteran’s benefits"
   08               = "Some other reason"
   10               = "Reasons given, but main reason unknown"
   11               = "Unknown reason"
   .                = "Not applicable (has insurance or unknown)"
   ;
  VALUE  HIN156X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  HIN157X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  HIN158X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  HIN159X
   1                = "Medicaid Card -current"
   2                = "Medicaid Card -expired"
   3                = "Card seen - currency unknown"
   4                = "Says has card - card unseen"
   5                = "Card seen - unknown type"
   6                = "Unknown"
   7                = "No Medicaid Card"
   ;
  VALUE  HIN160X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  HIN161X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  HIN162X
   1                = "Armed Forces"
   2                = "Veteran’s Administration"
   3                = "Both"
   9                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN163X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  HIN164X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
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
   1                = "Has some type of PA Health Insurance coverage"
   2                = "None"
   3                = "Unknown if any PA Health Insurance coverage"
   ;
  VALUE  HIN168X
   1                = "Use in past 12 months only"
   2                = "Current card only"
   3                = "Both use in past 12 months and current card"
   4                = "Neither or unknown"
   ;
  VALUE  HIN169X
   1                = "Has some type of Military Health Insurance coverage"
   2                = "None"
   3                = "Unknown if any Military Health Insurance coverage"
   ;
 
DATA NHIS.HEALTHIN;
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1982\';
   INFILE ASCIIDAT MISSOVER TRUNCOVER LRECL=410;
 
* DEFINE LENGTH OF NUMERIC VARIABLES;
 
LENGTH
   RECTYPE   3  YEAR      3  QUARTER   3  WEEKCEN   3  WEEKPROC  3
   HI_22     3  HI_24     3  HI_25     3  HI_27     3  HI_29     3
   HI_30     3  HI_31     3  HI_40     3  HI_42     3  HI_43     3
   HI_44     3  HI_45     3  HI_46     3  HI_48     3  HI_49     3
   HI_50     3  HI_51     3  HI_53     3  HI_54     3  HI_56     3
   HI_57     3  HI_58     3  HI_60     3  HI_61     3  HI_64     3
   HI_65     3  HI_67     3  HI_68     3  HI_69     3  HI_70     3
   HI_71     3  HI_72     3  HI_75     3  HI_76     3  HI_77     3
   HI_80     3  HI_82     3  HI_84     3  HI_87     3  HI_89     3
   HI_91     3  HI_92     3  HI_93     3  HI_95     3  HI_98     3
   HI_100    3  HI_102    3  HI_104    3  HI_106    3  HI_108    3
   HI_111    3  HI_112    3  HI_115    3  HI_116    3  HI_118    3
   HI_120    3  HI_122    3  HI_124    3  HI_127    3  HI_129    3
   HI_132    3  HI_134    3  HI_137    3  HI_139    3  HI_182    3
   HI_183    3  HI_185    3  HI_186    3  HI_187    3  HI_190    8
   HI_201    6  HI_210    6  WTFA      6  HI_228    6  HI_237    6
   HI_246    6  HI_255    6  HI_264    6  HI_273    6  HI_282    6
   HI_291    6  HI_300    6  HI_309    6  HI_318    6  HI_327    6
   HI_336    3  HI_337    3  HI_338    3  HI_339    3  HI_340    3
   HI_342    3  HI_343    3  HI_344    3  HI_345    3  HI_346    3
   HI_347    3  HI_348    3  HI_349    3  HI_350    3  HI_351    3
   HI_352    3  HI_353    3  HI_354    3  HI_355    3  HI_356    3
   HI_357    3  HI_358    3  HI_359    3  HI_360    3  HI_361    3
   HI_362    3  HI_363    3  HI_364    3  HI_365    3  HI_366    3
   HI_367    3  HI_368    3  HI_369    3  HI_370    3  HI_371    3
   HI_372    3  HI_373    3  HI_374    3  HI_375    3  HI_376    3
   HI_378    3  HI_379    3  HI_380    3  HI_381    3  HI_382    3
   HI_384    3  HI_385    3  HI_386    3  HI_387    3  HI_388    3
   HI_389    3  HI_390    3  HI_391    3  HI_392    3  HI_393    3
   HI_394    3  HI_395    3  HI_397    3  HI_398    3  HI_399    3
   HI_400    3  HI_401    3  HI_402    3  HI_403    3  HI_404    3
   HI_405    3  HI_406    3  HI_407    3  HI_408    3  HI_409    3
   HI_410    3
   ;
* INPUT ALL VARIABLES;
 
INPUT
   RECTYPE      1 - 2          YEAR         3 - 4
   QUARTER      5 - 5          PSUNUMR  $   6 - 8
   WEEKCEN      9 - 10         SEGNUM   $  11 - 12
   HHNUM    $  13 - 14         PNUM     $  15 - 16
   WEEKPROC    19 - 20         HI_22       22 - 23
   HI_24       24 - 24         HI_25       25 - 25
   HI_27       27 - 28         HI_29       29 - 29
   HI_30       30 - 30         HI_31       31 - 32
   HI_34    $  34 - 35         HI_36    $  36 - 39
   HI_40       40 - 41         HI_42       42 - 42
   HI_43       43 - 43         HI_44       44 - 44
   HI_45       45 - 45         HI_46       46 - 47
   HI_48       48 - 48         HI_49       49 - 49
   HI_50       50 - 50         HI_51       51 - 52
   HI_53       53 - 53         HI_54       54 - 55
   HI_56       56 - 56         HI_57       57 - 57
   HI_58       58 - 59         HI_60       60 - 60
   HI_61       61 - 61         HI_62    $  62 - 62
   HI_63    $  63 - 63         HI_64       64 - 64
   HI_65       65 - 66         HI_67       67 - 67
   HI_68       68 - 68         HI_69       69 - 69
   HI_70       70 - 70         HI_71       71 - 71
   HI_72       72 - 72         HI_75       75 - 75
   HI_76       76 - 76         HI_77       77 - 79
   HI_80       80 - 81         HI_82       82 - 83
   HI_84       84 - 86         HI_87       87 - 88
   HI_89       89 - 90         HI_91       91 - 91
   HI_92       92 - 92         HI_93       93 - 94
   HI_95       95 - 97         HI_98       98 - 99
   HI_100     100 - 101        HI_102     102 - 103
   HI_104     104 - 105        HI_106     106 - 107
   HI_108     108 - 110        HI_111     111 - 111
   HI_112     112 - 114        HI_115     115 - 115
   HI_116     116 - 117        HI_118     118 - 119
   HI_120     120 - 121        HI_122     122 - 123
   HI_124     124 - 126        HI_127     127 - 128
   HI_129     129 - 131        HI_132     132 - 133
   HI_134     134 - 136        HI_137     137 - 138
   HI_139     139 - 141        HI_182     182 - 182
   HI_183     183 - 184        HI_185     185 - 185
   HI_186     186 - 186        HI_187     187 - 189
   HI_190     190 - 200 .9     HI_201     201 - 209
   HI_210     210 - 218        WTFA       219 - 227
   HI_228     228 - 236        HI_237     237 - 245
   HI_246     246 - 254        HI_255     255 - 263
   HI_264     264 - 272        HI_273     273 - 281
   HI_282     282 - 290        HI_291     291 - 299
   HI_300     300 - 308        HI_309     309 - 317
   HI_318     318 - 326        HI_327     327 - 335
   HI_336     336 - 336        HI_337     337 - 337
   HI_338     338 - 338        HI_339     339 - 339
   HI_340     340 - 341        HI_342     342 - 342
   HI_343     343 - 343        HI_344     344 - 344
   HI_345     345 - 345        HI_346     346 - 346
   HI_347     347 - 347        HI_348     348 - 348
   HI_349     349 - 349        HI_350     350 - 350
   HI_351     351 - 351        HI_352     352 - 352
   HI_353     353 - 353        HI_354     354 - 354
   HI_355     355 - 355        HI_356     356 - 356
   HI_357     357 - 357        HI_358     358 - 358
   HI_359     359 - 359        HI_360     360 - 360
   HI_361     361 - 361        HI_362     362 - 362
   HI_363     363 - 363        HI_364     364 - 364
   HI_365     365 - 365        HI_366     366 - 366
   HI_367     367 - 367        HI_368     368 - 368
   HI_369     369 - 369        HI_370     370 - 370
   HI_371     371 - 371        HI_372     372 - 372
   HI_373     373 - 373        HI_374     374 - 374
   HI_375     375 - 375        HI_376     376 - 377
   HI_378     378 - 378        HI_379     379 - 379
   HI_380     380 - 380        HI_381     381 - 381
   HI_382     382 - 383        HI_384     384 - 384
   HI_385     385 - 385        HI_386     386 - 386
   HI_387     387 - 387        HI_388     388 - 388
   HI_389     389 - 389        HI_390     390 - 390
   HI_391     391 - 391        HI_392     392 - 392
   HI_393     393 - 393        HI_394     394 - 394
   HI_395     395 - 396        HI_397     397 - 397
   HI_398     398 - 398        HI_399     399 - 399
   HI_400     400 - 400        HI_401     401 - 401
   HI_402     402 - 402        HI_403     403 - 403
   HI_404     404 - 404        HI_405     405 - 405
   HI_406     406 - 406        HI_407     407 - 407
   HI_408     408 - 408        HI_409     409 - 409
   HI_410     410 - 410
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
   HI_22    = "TYPE OF LIVING QUARTERS"
   HI_24    = "HAS TELEPHONE"
   HI_25    = "SEX"
   HI_27    = "AGE"
   HI_29    = "AGE RECODE #1"
   HI_30    = "AGE RECODE #2"
   HI_31    = "AGE RECODE #3"
   HI_34    = "MONTH OF BIRTH"
   HI_36    = "YEAR OF BIRTH"
   HI_40    = "AGE OF FAMILY REFERENCE PERSON"
   HI_42    = "MAIN RACIAL BACKGROUND"
   HI_43    = "RACE RECODE 1"
   HI_44    = "RACE RECODE 2"
   HI_45    = "RACE RECODE 3"
   HI_46    = "HISPANIC ORIGIN"
   HI_48    = "MARITAL STATUS"
   HI_49    = "VETERAN STATUS"
   HI_50    = "ACTIVE GUARD/RESERVE STATUS FOR PERSONS ON ACTIVE DUTY IN ARMED FORCES"
   HI_51    = "EDUCATION OF INDIVIDUAL - COMPLETED YEARS"
   HI_53    = "EDUCATION OF INDIVIDUAL RECODE"
   HI_54    = "EDUCATION OF FAMILY REFERENCE PERSON (DETAIL)"
   HI_56    = "EDUCATION OF FAMILY REFERENCE PERSON - RECODE"
   HI_57    = "FAMILY INCOME $20,000 OR MORE"
   HI_58    = "FAMILY INCOME"
   HI_60    = "FAMILY INCOME RECODE"
   HI_61    = "NHIS POVERTY INDEX"
   HI_62    = "TYPE OF FAMILY"
   HI_63    = "RELATIONSHIP TO REFERENCE PERSON"
   HI_64    = "FAMILY RELATIONSHIP RECODE"
   HI_65    = "SIZE OF FAMILY"
   HI_67    = "SIZE OF FAMILY RECODE"
   HI_68    = "PARENT/OTHER ADULT RELATIVE"
   HI_69    = "MAJOR ACTIVITY"
   HI_70    = "HEALTH STATUS"
   HI_71    = "ACTIVITY LIMITATION STATUS"
   HI_72    = "ACTIVITY LIMITATION STATUS MEASURED BY 'ABILITY TO WORK'"
   HI_75    = "EMPLOYMENT STATUS IN PAST 2 WEEKS"
   HI_76    = "CLASS OF WORKER"
   HI_77    = "INDUSTRY DETAIL CODE"
   HI_80    = "INDUSTRY RECODE 1"
   HI_82    = "INDUSTRY RECODE 2"
   HI_84    = "OCCUPATION DETAIL CODE"
   HI_87    = "OCCUPATION RECODE 1"
   HI_89    = "OCCUPATION RECODE 2"
   HI_91    = "RESPONDENT"
   HI_92    = "CONDITION LIST ASSIGNED AND ASKED"
   HI_93    = "HEIGHT WITHOUT SHOES"
   HI_95    = "WEIGHT WITHOUT SHOES"
   HI_98    = "TOTAL RESTRICTED ACTIVITY DAYS IN PAST TWO WEEKS"
   HI_100   = "BED DAYS IN PAST TWO WEEKS"
   HI_102   = "WORK-LOSS DAYS IN PAST TWO WEEKS"
   HI_104   = "SCHOOL-LOSS DAYS IN PAST TWO WEEKS"
   HI_106   = "OTHER DAYS OF RESTRICTED ACTIVITY IN PAST TWO WEEKS"
   HI_108   = "BED DAYS IN PAST 12 MONTHS"
   HI_111   = "BED DAYS IN PAST 12 MONTHS - RECODE"
   HI_112   = "DOCTOR VISITS IN PAST 12 MONTHS"
   HI_115   = "INTERVAL SINCE LAST DOCTOR VISIT"
   HI_116   = "NUMBER OF CONDITIONS"
   HI_118   = "NUMBER OF ACUTE INCIDENCE CONDITIONS"
   HI_120   = "NUMBER OF TWO-WEEK DOCTOR VISITS"
   HI_122   = "NUMBER OF SHORT-STAY HOSPITAL EPISODES IN IN PAST 12 MONTHS"
   HI_124   = "SHORT-STAY HOSPITAL EPISODE DAYS IN PAST '12 MONTHS"
   HI_127   = "NUMBER OF SHORT-STAY HOSPITAL EPISODES IN PAST 12 MONTHS EXCLUDING DELIVERY"
   HI_129   = "SHORT-STAY HOSPITAL EPISODE DAYS IN PAST 12 MONTHS EXCLUDING DELIVERY"
   HI_132   = "NUMBER OF SHORT-STAY HOSPITAL DISCHARGES IN PAST 6 MONTHS"
   HI_134   = "NUMBER OF DAYS IN SHORT-STAY HOSPITAL IN PAST 12 MONTHS FOR DISCHARGES IN PAST 6 MONTHS"
   HI_137   = "NUMBER OF SHORT-STAY HOSPITAL DISCHARGES IN PAST 6 MONTHS EXCLUDING DELIVERY"
   HI_139   = "NUMBER OF DAYS IN SHORT-STAY HOSPITAL IN PAST '12 MONTHS FOR DISCHARGES IN PAST 6 MONTHS EXCLUDING DELIVERY"
   HI_182   = "REGION"
   HI_183   = "TABULATION AREA"
   HI_185   = "TYPE OF PSU"
   HI_186   = "SMSA - NON-SMSA RESIDENCE"
   HI_187   = "PSEUDO PSU CODES"
   HI_190   = "CHRONIC CONDITION PREVALENCE AND INCIDENCE FACTOR"
   HI_201   = "FINAL BASIC WEIGHT  -QUARTER"
   HI_210   = "FINAL BASIC WEIGHT  -SEMI-ANNUAL (WT/2)"
   WTFA     = "FINAL BASIC WEIGHT  -ANNUAL (WT/4)"
   HI_228   = "6.5 WEIGHT QUARTER, SEMI-ANNUAL, AND ANNUAL"
   HI_237   = "ESTIMATED RESTRICTED ACTIVITY DAYS PAST 2W - QUARTER, SEMI-ANNUAL AND ANNUAL"
   HI_246   = "ESTIMATED BED DAYS PAST 2W - QUARTER, SEMI-ANNUAL AND ANNUAL"
   HI_255   = "ESTIMATED WORK-LOSS DAYS PAST 2W - QUARTER, SEMI-ANNUAL AND ANNUAL"
   HI_264   = "ESTIMATED SCHOOL-LOSS DAYS PAST 2W - QUARTER, SEMI-ANNUAL AND ANNUAL"
   HI_273   = "ESTIMATED DOCTOR VISITS PAST 12M - QUARTER"
   HI_282   = "ESTIMATED DOCTOR VISITS PAST 12M - SEMI-ANNUAL"
   HI_291   = "ESTIMATED DOCTOR VISITS PAST 12M - ANNUAL"
   HI_300   = "ESTIMATED SHORT-STAY HOSPITAL EPISODE DAYS PAST 12M - QUARTER"
   HI_309   = "ESTIMATED SHORT-STAY HOSPITAL EPISODE DAYS PAST 12M - SEMI-ANNUAL"
   HI_318   = "ESTIMATED SHORT-STAY HOSPITAL EPISODE DAYS PAST 12M - ANNUAL"
   HI_327   = "ANNUAL ESTIMATED NUMBER OF SHORT-STAY HOSPITAL EPISODES IN PAST 12 MONTHS"
   HI_336   = "MEDICARE COVERAGE"
   HI_337   = "MEDICARE: HOSPITAL COVERAGE"
   HI_338   = "MEDICARE: DOCTOR/SURGEON COVERAGE"
   HI_339   = "MEDICARE CARD (PERSONS UNDER 65 YEARS OF AGE)"
   HI_340   = "MEDICARE COVERAGE: HOSPITAL AND/OR DOCTOR/SURGEON COVERAGE"
   HI_342   = "MEDICARE: HOSPITAL AND/OR DOCTOR/SURGEON COVERAGE SUMNARY"
   HI_343   = "PLAN 1 - TYPE OF PLAN"
   HI_344   = "PLAN OBTAINED THROUGH EMPLOYER OR UNION"
   HI_345   = "NOW CARRIED THROUGH EMPLOYER OR UNION"
   HI_346   = "PLAN PAYS SOME OR ALL OF HOSPITAL BILLS"
   HI_347   = "PLAN PAYS SOME OR ALL DOCTOR/SURQEON BILLS FOR OPERATIONS"
   HI_348   = "THIS PERSON’S COVERAGE STATUS UNDER THIS PLAN"
   HI_349   = "PLAN 2 - TYPE OF PLAN"
   HI_350   = "PLAN OBTAINED THROUGH EMPLOYER OR UNION"
   HI_351   = "NOW CARRIED THROUGH EMPLOYER OR UNION"
   HI_352   = "PLAN PAYS SOME OR ALL OF HOSPITAL BILLS"
   HI_353   = "PLAN PAYS SOME OR ALL DOCTOR/SURQEON BILLS FOR OPERATIONS"
   HI_354   = "THIS PERSON’S COVERAGE STATUS UNDER THIS PLAN"
   HI_355   = "PLAN 3 - TYPE OF PLAN"
   HI_356   = "PLAN OBTAINED THROUGH EMPLOYER OR UNION"
   HI_357   = "NOW CARRIED THROUGH EMPLOYER OR UNION"
   HI_358   = "PLAN PAYS SOME OR ALL OF HOSPITAL BILLS"
   HI_359   = "PLAN PAYS SOME OR ALL DOCTOR/SURQEON BILLS FOR OPERATIONS"
   HI_360   = "THIS PERSON’S COVERAGE STATUS UNDER THIS PLAN"
   HI_361   = "PLAN 4 - TYPE OF PLAN"
   HI_362   = "PLAN OBTAINED THROUGH EMPLOYER OR UNION"
   HI_363   = "NOW CARRIED THROUGH EMPLOYER OR UNION"
   HI_364   = "PLAN PAYS SOME OR ALL OF HOSPITAL BILLS"
   HI_365   = "PLAN PAYS SOME OR ALL DOCTOR/SURQEON BILLS FOR OPERATIONS"
   HI_366   = "THIS PERSON’S COVERAGE STATUS UNDER THIS PLAN"
   HI_367   = "PLAN 5 - TYPE OF PLAN"
   HI_368   = "PLAN OBTAINED THROUGH EMPLOYER OR UNION"
   HI_369   = "NOW CARRIED THROUGH EMPLOYER OR UNION"
   HI_370   = "PLAN PAYS SOME OR ALL OF HOSPITAL BILLS"
   HI_371   = "PLAN PAYS SOME OR ALL DOCTOR/SURQEON BILLS FOR OPERATIONS"
   HI_372   = "THIS PERSON’S COVERAGE STATUS UNDER THIS PLAN"
   HI_373   = "PRIVATE HEALTH INSURANCE"
   HI_374   = "PRIVATE HEALTH INSURANCE: HOSPITAL COVERAGE"
   HI_375   = "PRIVATE HEALTH INSURANCE: DOCTOR/SURGEON"
   HI_376   = "PRIVATE HEALTH INSURANCE: HOSPITAL AND/OR DOCTOR/SURGEON COVERAGE RECODE 1"
   HI_378   = "PRIVATE HEALTH INSURANCE: HOSPITAL AND/OR DOCTOR/SURGEON COVERAGE RECODE 2"
   HI_379   = "MEDICARE AND/OR PRIVATE HEALTH INSURANCE RECODE"
   HI_380   = "MEDICARE AND/OR PRIVATE HEALTH INSURANCE: HOSPITAL COVERAGE RECODE"
   HI_381   = "MEDICARE AND/OR PRIVATE HEALTH INSURANCE: DOCTOR/SURGEON COVERAGE RECODE"
   HI_382   = "PRIVATE HEALTH INSURANCE AND/OR MEDICARE COVERAGE: HOSPITAL AND SURGICAL RECODE"
   HI_384   = "PRIVATE HEALTH INSURANCE AND/OR MEDICARE: HOSPITAL AND/OR SURGICAL COVERAGE RECODE"
   HI_385   = "TYPE OF PRIVATE HEALTH INSURANCE COVERAGE RECODE"
   HI_386   = "UNEMPLOYMENT OR REASONS RELATED TO UNEMPLOYMENT"
   HI_387   = "CAN’T OBTAIN BECAUSE OF POOR HEALTH, ILLNESS OR AGE"
   HI_388   = "TOO EXPENSIVE, CAN’T AFFORD HEALTH INSURANCE"
   HI_389   = "DISSATISFIED WITH PREVIOUS INSURANCE"
   HI_390   = "DON’T BELIEVE IN INSURANCE"
   HI_391   = "HAVE BEEN HEALTHY, HAVEN’T NEEDED HEALTH INSURANCE"
   HI_392   = "SOME OTHER HEALTH PLAN, INCLUDINQ MILITARY CARE AND VETERAN’S BENEFITS"
   HI_393   = "SOME OTHER REASON"
   HI_394   = "WHETHER REASON GIVEN RECODE"
   HI_395   = "MAIN REASON NO MEDICARE OR PRIVATE HEALTH INSURANCE"
   HI_397   = "AFDC OR ADC(ASSISTANCE RECEIVED BY THIS PERSON)"
   HI_398   = "SUPPLEMENTAL SECURITY INCOME"
   HI_399   = "RECEIVED MEDICAID - PAST 12 MONTHS"
   HI_400   = "MEDICAID - TYPE OF CARD"
   HI_401   = "COVERED BY OTHER PUBLIC ASSKTANCE PROGRAM THAT PAYS FOR HEALTH CARE"
   HI_402   = "NOW RECEIVES MILITARY RETIREMENT PAYMENTS"
   HI_403   = "TYPE OF MILITARY BENEFITS"
   HI_404   = "NOW COVERED BY CHAMP-VA"
   HI_405   = "NOW COVERED BY ANY OTHER PROGRAM PROVIDING HEALTH CARE FOR MILITARY DEPENDENTS"
   HI_406   = "SERVICE RELATED DISABILIIT"
   HI_407   = "VA COMPENSATION FOR SERVICE RELATED DISABILITY"
   HI_408   = "PUBLIC ASSISTANCE HEALTH INSURANCE COVERAGE RECODE"
   HI_409   = "MEDICAID USE AND CURRENCY RECODE"
   HI_410   = "MILITARY HEALTH INSURANCE COVERAGE RECODE"
   ;
* ASSOCIATE VARIABLES WITH FORMAT VALUES;
 
FORMAT
   RECTYPE   HIN001X.    YEAR      HIN002X.    QUARTER   HIN003X.
   PSUNUMR   $HIN004X.   WEEKCEN   HIN005X.    SEGNUM    $HIN006X.
   HHNUM     $HIN007X.   PNUM      $HIN008X.   WEEKPROC  HIN009X.
   HI_22     HIN010X.    HI_24     HIN011X.    HI_25     HIN012X.
   HI_27     HIN013X.    HI_29     HIN014X.    HI_30     HIN015X.
   HI_31     HIN016X.    HI_34     $HIN017X.   HI_36     $HIN018X.
   HI_40     HIN019X.    HI_42     HIN020X.    HI_43     HIN021X.
   HI_44     HIN022X.    HI_45     HIN023X.    HI_46     HIN024X.
   HI_48     HIN025X.    HI_49     HIN026X.    HI_50     HIN027X.
   HI_51     HIN028X.    HI_53     HIN029X.    HI_54     HIN030X.
   HI_56     HIN031X.    HI_57     HIN032X.    HI_58     HIN033X.
   HI_60     HIN034X.    HI_61     HIN035X.    HI_62     $HIN036X.
   HI_63     $HIN037X.   HI_64     HIN038X.    HI_65     HIN039X.
   HI_67     HIN040X.    HI_68     HIN041X.    HI_69     HIN042X.
   HI_70     HIN043X.    HI_71     HIN044X.    HI_72     HIN045X.
   HI_75     HIN046X.    HI_76     HIN047X.    HI_77     HIN048X.
   HI_80     HIN049X.    HI_82     HIN050X.    HI_84     HIN051X.
   HI_87     HIN052X.    HI_89     HIN053X.    HI_91     HIN054X.
   HI_92     HIN055X.    HI_93     HIN056X.    HI_95     HIN057X.
   HI_98     HIN058X.    HI_100    HIN059X.    HI_102    HIN060X.
   HI_104    HIN061X.    HI_106    HIN062X.    HI_108    HIN063X.
   HI_111    HIN064X.    HI_112    HIN065X.    HI_115    HIN066X.
   HI_116    HIN067X.    HI_118    HIN068X.    HI_120    HIN069X.
   HI_122    HIN070X.    HI_124    HIN071X.    HI_127    HIN072X.
   HI_129    HIN073X.    HI_132    HIN074X.    HI_134    HIN075X.
   HI_137    HIN076X.    HI_139    HIN077X.    HI_182    HIN078X.
   HI_183    HIN079X.    HI_185    HIN080X.    HI_186    HIN081X.
   HI_187    HIN082X.    HI_190    HIN083X.    HI_201    HIN084X.
   HI_210    HIN085X.    WTFA      HIN086X.    HI_228    HIN087X.
   HI_237    HIN088X.    HI_246    HIN089X.    HI_255    HIN090X.
   HI_264    HIN091X.    HI_273    HIN092X.    HI_282    HIN093X.
   HI_291    HIN094X.    HI_300    HIN095X.    HI_309    HIN096X.
   HI_318    HIN097X.    HI_327    HIN098X.    HI_336    HIN099X.
   HI_337    HIN100X.    HI_338    HIN101X.    HI_339    HIN102X.
   HI_340    HIN103X.    HI_342    HIN104X.    HI_343    HIN105X.
   HI_344    HIN106X.    HI_345    HIN107X.    HI_346    HIN108X.
   HI_347    HIN109X.    HI_348    HIN110X.    HI_349    HIN111X.
   HI_350    HIN112X.    HI_351    HIN113X.    HI_352    HIN114X.
   HI_353    HIN115X.    HI_354    HIN116X.    HI_355    HIN117X.
   HI_356    HIN118X.    HI_357    HIN119X.    HI_358    HIN120X.
   HI_359    HIN121X.    HI_360    HIN122X.    HI_361    HIN123X.
   HI_362    HIN124X.    HI_363    HIN125X.    HI_364    HIN126X.
   HI_365    HIN127X.    HI_366    HIN128X.    HI_367    HIN129X.
   HI_368    HIN130X.    HI_369    HIN131X.    HI_370    HIN132X.
   HI_371    HIN133X.    HI_372    HIN134X.    HI_373    HIN135X.
   HI_374    HIN136X.    HI_375    HIN137X.    HI_376    HIN138X.
   HI_378    HIN139X.    HI_379    HIN140X.    HI_380    HIN141X.
   HI_381    HIN142X.    HI_382    HIN143X.    HI_384    HIN144X.
   HI_385    HIN145X.    HI_386    HIN146X.    HI_387    HIN147X.
   HI_388    HIN148X.    HI_389    HIN149X.    HI_390    HIN150X.
   HI_391    HIN151X.    HI_392    HIN152X.    HI_393    HIN153X.
   HI_394    HIN154X.    HI_395    HIN155X.    HI_397    HIN156X.
   HI_398    HIN157X.    HI_399    HIN158X.    HI_400    HIN159X.
   HI_401    HIN160X.    HI_402    HIN161X.    HI_403    HIN162X.
   HI_404    HIN163X.    HI_405    HIN164X.    HI_406    HIN165X.
   HI_407    HIN166X.    HI_408    HIN167X.    HI_409    HIN168X.
   HI_410    HIN169X.
   ;
 
PROC CONTENTS DATA=NHIS.HEALTHIN;
 
PROC FREQ DATA=NHIS.HEALTHIN;
TITLE1 'FREQUENCY REPORT FOR 1982 NHIS HEALTH INSURANCE FILE';
TITLE2 '(WEIGHTED)';
TABLES RECTYPE/LIST MISSING;
WEIGHT WTFA;
 
PROC FREQ DATA=NHIS.HEALTHIN;
TITLE1 'FREQUENCY REPORT FOR 1982 NHIS HEALTH INSURANCE FILE';
TITLE2 '(UNWEIGHTED)';
TABLES RECTYPE/LIST MISSING;
 
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
              STATEMENT: FORMAT _ALL_;
RUN;
