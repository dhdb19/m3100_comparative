DM 'CLE LOG; CLE OUT';
**************************************************************************
   November 15, 2005
 
THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
FILE FROM THE NHIS 1989 HEALTHIN.DAT ASCII FILE.
 
NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
      GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
      DOCUMENTATION.
 
THIS IS STORED IN HEALTHIN.SAS
*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;
 
LIBNAME NHIS    'C:\NHIS1989';
LIBNAME LIBRARY 'C:\NHIS1989';
 
FILENAME ASCIIDAT 'C:\NHIS1989\HEALTHIN.DAT';
 
* DEFINE VARIABLE VALUES FOR REPORT;
 
PROC FORMAT LIBRARY=LIBRARY;
  VALUE  HIN001X
   60               = "Health Insurance"
   ;
  VALUE  HIN002X
   89               = "1989"
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
   01  = "Week 01"   21  = "Week 01"   41  = "Week 01"   61  = "Week 01"   81  = "Week 01"
   02  = "Week 02"   22  = "Week 02"   42  = "Week 02"   62  = "Week 02"   82  = "Week 02"
   03  = "Week 03"   23  = "Week 03"   43  = "Week 03"   63  = "Week 03"   83  = "Week 03"
   04  = "Week 04"   24  = "Week 04"   44  = "Week 04"   64  = "Week 04"   84  = "Week 04"
   05  = "Week 05"   25  = "Week 05"   45  = "Week 05"   65  = "Week 05"   85  = "Week 05"
   06  = "Week 06"   26  = "Week 06"   46  = "Week 06"   66  = "Week 06"   86  = "Week 06"
   07  = "Week 07"   27  = "Week 07"   47  = "Week 07"   67  = "Week 07"   87  = "Week 07"
   08  = "Week 08"   28  = "Week 08"   48  = "Week 08"   68  = "Week 08"   88  = "Week 08"
   09  = "Week 09"   29  = "Week 09"   49  = "Week 09"   69  = "Week 09"   89  = "Week 09"
   10  = "Week 10"   30  = "Week 10"   50  = "Week 10"   70  = "Week 10"   90  = "Week 10"
   11  = "Week 11"   31  = "Week 11"   51  = "Week 11"   71  = "Week 11"   91  = "Week 11"
   12  = "Week 12"   32  = "Week 12"   52  = "Week 12"   72  = "Week 12"   92  = "Week 12"
   13  = "Week 13"   33  = "Week 13"   53  = "Week 13"   73  = "Week 13"   93  = "Week 13"
   ;
  VALUE $HIN006X
   ;
  VALUE $HIN007X
   ;
  VALUE $HIN008X
   ;
  VALUE  HIN009X
   01               = "Week   1"
   02               = "Week   2"
   03               = "Week   3"
   04               = "Week   4"
   05               = "Week   5"
   06               = "Week   6"
   07               = "Week   7"
   08               = "Week   8"
   09               = "Week   9"
   10               = "Week  10"
   11               = "Week  11"
   12               = "Week  12"
   13               = "Week  13"
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
   10               = "Unoccupied site for mobile home, trailer, or tent"
   11               = "Student quarters in college dormitory"
   12               = "Other unit not specified above"
   13               = "Other unit; kind unknown"
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
   2                = " 5-17 years"
   3                = "18-24 years"
   4                = "25-44 years"
   5                = "45-64 years"
   6                = "65-69 years"
   7                = "70-74 years"
   8                = "75 years and over"
   ;
  VALUE  HIN015X
   1                = "Under 6 years"
   2                = " 6-16 years"
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
   "01"        = "January"    "07"       = "July"
   "02"        = "February"   "08"       = "August"
   "03"        = "March"      "09"       = "September"
   "04"        = "April"      "10"       = "October"
   "05"        = "May"        "11"       = "November"
   "06"        = "June"       "12"       = "December"
   "99"        = "DK or refused"
   ;
  VALUE $HIN018X
   "1800"-"1899"    = "1800-1899"
   "1900"-"1991"    = "1900-1991"
   "9999"           = "DK or refused"
   ;
  VALUE  HIN019X
   1                = "Aleut, Eskimo, or American Indian"
   2                = "Asian/Pacific Islander"
   3                = "Black"
   4                = "White"
   5                = "Other"
   6                = "Multiple race"
   7                = "Unknown"
   ;
  VALUE  HIN020X
   1                = "White"
   2                = "Black"
   3                = "Other"
   ;
  VALUE  HIN021X
   1                = "White"
   2                = "Non-white"
   ;
  VALUE  HIN022X
   1                = "Black"
   2                = "Non-black"
   ;
  VALUE  HIN023X
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
  VALUE  HIN024X
   0                = "Under 14 years"
   1                = "Married - spouse in household"
   2                = "Married - spouse not in household"
   3                = "Widowed"
   4                = "Divorced"
   5                = "Separated"
   6                = "Never married"
   7                = "Unknown"
   ;
  VALUE  HIN025X
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
  VALUE  HIN026X
   0                = "Non-veteran"
   1                = "All service in Guard/Reserve"
   2                = "Some service in Guard/Reserve"
   3                = "Unknown if all service in Guard/Reserve"
   4                = "No active service in Guard/Reserve"
   5                = "Unknown if ever active member in Guard/Reserve or served in Armed Forces"
   .                = "Under 18 years of age"
   ;
  VALUE  HIN027X
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
  VALUE  HIN028X
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
  VALUE  HIN029X
   00               = "Never attended; kindergarten only"
   01-12            = "Grades 1-12"
   13               = "1 year"
   14               = "2 years"
   15               = "3 years"
   16               = "4 years"
   17               = "5 years"
   18               = "6 years or more"
   19               = "Unknown"
   ;
  VALUE  HIN030X
   0                = "None; kindergarten only"
   1                = "1-8 years (elementary)"
   2                = "9-11 years (high school)"
   3                = "12 years (high school graduate)"
   4                = "1-3 years (college)"
   5                = "4 years (college graduate)"
   6                = "5+ years (post-college)"
   7                = "Unknown"
   ;
  VALUE  HIN031X
   1                = "Less than $20,000"
   2                = "$20,000 or more"
   3                = "Unknown"
   ;
  VALUE  HIN032X
   00               = "Less than  $1,000"
   01               = "$ 1,000 - $ 1,999"
   02               = "  2,000 -   2,999"
   03               = "  3,000 -   3,999"
   04               = "  4,000 -   4,999"
   05               = "  5,000 -   5,999"
   06               = "  6,000 -   6,999"
   07               = "  7,000 -   7,999"
   08               = "  8,000 -   8,999"
   09               = "  9,000 -   9,999"
   10               = " 10,000 -  10,999"
   11               = " 11,000 -  11,999"
   12               = " 12,000 -  12,999"
   13               = " 13,000 -  13,999"
   14               = " 14,000 -  14,999"
   15               = " 15,000 -  15,999"
   16               = " 16,000 -  16,999"
   17               = " 17,000 -  17,999"
   18               = " 18,000 -  18,999"
   19               = " 19,000 -  19,999"
   20               = " 20,000 -  24,999"
   21               = " 25,000 -  29,999"
   22               = " 30,000 -  34,999"
   23               = " 35,000 -  39,999"
   24               = " 40,000 -  44,999"
   25               = " 45,000 -  49,999"
   26               = "$50,000 and over"
   27               = "Unknown"
   ;
  VALUE  HIN033X
   0                = "Under $5,000"
   1                = "$ 5,000 - $ 6,999"
   2                = "  7,000 -   9,999"
   3                = " 10,000 -  14,999"
   4                = " 15,000 -  19,999"
   5                = " 20,000 -  24,999"
   6                = " 25,000 -  34,999"
   7                = " 35,000 -  49,999"
   8                = "$50,000 or more"
   9                = "Unknown"
   ;
  VALUE  HIN034X
   1                = "At or above poverty threshold"
   2                = "Below poverty threshold"
   3                = "Unknown"
   ;
  VALUE $HIN035X
   "&"              = "Primary individual"
   "-"              = "Secondary individual"
   "0"              = "Primary family"
   "1"-"9"          = "Secondary family"
   ;
  VALUE $HIN036X
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
  VALUE  HIN037X
   1                = "Living alone"
   2                = "Living only with non-relative"
   3                = "Living with spouse"
   4                = "Living with relative - other"
   ;
  VALUE  HIN038X
   ;
  VALUE  HIN039X
   1-8              = "Number of members"
   9                = "9+ members"
   ;
  VALUE  HIN040X
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
  VALUE  HIN041X
   1                = "Working"
   2                = "Keeping house"
   3                = "Going to school"
   4                = "Something else"
   5                = "Unknown"
   .                = "Not applicable (Under 18 years)"
   ;
  VALUE  HIN042X
   1                = "Excellent"
   2                = "Very Good"
   3                = "Good"
   4                = "Fair"
   5                = "Poor"
   6                = "Unknown"
   ;
  VALUE  HIN043X
   1                = "Unable to perform major activity"
   2                = "Limited in kind/amount major activity"
   3                = "Limited in other activities"
   4                = "Not limited (includes unknowns)"
   ;
  VALUE  HIN044X
   1                = "Unable to work"
   2                = "Limited in kind/amount of work"
   3                = "Limited in other activities"
   4                = "Not limited (includes unknowns)"
   .                = "Not applicable (under 18 years, 70+ years)"
   ;
  VALUE  HIN045X
   1                = "Unable to attend school"
   2                = "Attends special school/classes"
   3                = "Needs special school/classes"
   4                = "Limited in school attendance"
   5                = "Limited in other activities"
   6                = "Not limited (includes unknowns)"
   .                = "Not applicable (under 5 years or 18+ years)"
   ;
  VALUE  HIN046X
   1                = "Unable to perform personal care needs"
   2                = "Limited in performing other routine needs"
   3                = "Not limited in performing personal or routine needs"
   4                = "Unknown"
   .                = "Not applicable (under 5 years; 5-59 years not limited; 70+ years old)"
   ;
  VALUE  HIN047X
   1                = "Worked in past 2 weeks"
   2                = "Did not work, has job; not on lay-off and not looking for"
   3                = "Did not work, has job; looking for work"
   4                = "Did not work, has job; on lay- off"
   5                = "Did not work, has job; on lay- off and looking for work"
   6                = "Did not work, has job; unknown if looking or on lay-off"
   7                = "Did not work, no job; looking for work or on lay-off"
   8                = "Not in Labor Force (18+ years)"
   .                = "Not applicable (Under 18 years old)"
   ;
  VALUE  HIN048X
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
  VALUE  HIN049X
   010-996          = "Code number"
   .                = "Not applicable"
   ;
  VALUE  HIN050X
   ;
  VALUE  HIN051X
   ;
  VALUE  HIN052X
   003-999          = "Code number"
   .                = "Not applicable"
   ;
  VALUE  HIN053X
   ;
  VALUE  HIN054X
   ;
  VALUE  HIN055X
   0                = "Under 17"
   1                = "Self-entirely"
   2                = "Self-partly"
   3                = "Proxy"
   4                = "Unknown"
   ;
  VALUE  HIN056X
   1                = "Condition List 1, Skin and musculoskeletal"
   2                = "Condition List 2, Impairments"
   3                = "Condition List 3, Digestive"
   4                = "Condition List 4, Miscellaneous"
   5                = "Condition List 5, Circulatory"
   6                = "Condition List 6, Respiratory"
   7                = "Unknown"
   ;
  VALUE  HIN057X
   36-98            = "Number of inches"
   99               = "Unknown"
   .                = "Under 18 years of age"
   ;
  VALUE  HIN058X
   050-500          = "Number of pounds"
   501              = "Unknown"
   .                = "Under 18 years of age"
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
   00               = "None"
   01-14            = "Days"
   ;
  VALUE  HIN064X
   000              = "None"
   001-365          = "1-365 days"
   366              = "Unknown"
   ;
  VALUE  HIN065X
   0                = "None"
   1                = "1-7 days"
   2                = "8-30 days"
   3                = "31-180 days"
   4                = "181-365 days"
   5                = "Unknown"
   ;
  VALUE  HIN066X
   000              = "None"
   001-996          = "Visits"
   997              = "997+ visits"
   998              = "Unknown"
   ;
  VALUE  HIN067X
   0                = "Never"
   1                = "Less than 1 year"
   2                = "1 to less than 2 years"
   3                = "2 to less than 5 years"
   4                = "5 years or more"
   5                = "Unknown"
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
   ;
  VALUE  HIN079X
   1                = "Less than 1 year"
   2                = "1 year, less than 5 years"
   3                = "5 years, less than 10 yrs"
   4                = "10 years, less than 15 years"
   5                = "15 years or more"
   9                = "Unknown"
   .                = "Not applicable (Foreign born or less than 18 years of age)"
   ;
  VALUE  HIN080X
   1                = "Less than 1 year"
   2                = "1 year, less than 5 years"
   3                = "5 years, less than 10 yrs"
   4                = "10 years, less than 15 years"
   5                = "15 years or more"
   9                = "Unknown"
   .                = "Not applicable (US born or less than 18 years of age)"
   ;
  VALUE  HIN081X
   ;
  VALUE  HIN082X
   0                = "Permit"
   1                = "Area, oversampled for blacks"
   2                = "Area, not oversampled for blacks"
   ;
  VALUE  HIN083X
   ;
  VALUE  HIN084X
   1                = "Northeast"
   2                = "Midwest"
   3                = "South"
   4                = "West"
   ;
  VALUE  HIN085X
   1                = "1,000,000 or more"
   2                = "250,000 - 999,999"
   3                = "100,000 - 249,999"
   4                = "Under 100,000"
   .                = "Non-MSA"
   ;
  VALUE  HIN086X
   1                = "MSA - Self-representing"
   3                = "MSA - Nonself-representing"
   4                = "Non-MSA - Self-representing"
   6                = "Non-MSA - Nonself-representing"
   ;
  VALUE  HIN087X
   1                = "MSA - Central City"
   2                = "MSA - Not Central City"
   3                = "Non-MSA - Nonfarm"
   4                = "Non-MSA - Farm"
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
   1                = "Covered"
   2                = "Not covered"
   3                = "Unknown if covered"
   ;
  VALUE  HIN106X
   1                = "Covered"
   2                = "Not covered"
   3                = "Unknown if covered"
   ;
  VALUE  HIN107X
   1                = "Covered"
   2                = "Not covered"
   3                = "Unknown if covered"
   ;
  VALUE  HIN108X
   1                = "Current hospital coverage"
   2                = "Current doctor/surgeon coverage"
   3                = "Claims has a card, but it is not available"
   4                = "Current hospital and doctor/surgeon coverage"
   5                = "Unknown if person has card"
   6                = "Persons 65 years of age and over"
   7                = "Persons under 65 years of age, card not requested"
   ;
  VALUE  HIN109X
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
  VALUE  HIN110X
   1                = "Has hospital and doctor coverage"
   2                = "Has hospital or doctor coverage, but not both"
   3                = "Has coverage, extent unknown"
   4                = "No Medicare coverage"
   5                = "Unknown if Medicare coverage"
   ;
  VALUE  HIN111X
   1                = "Blue Cross and/or Blue Shield"
   2                = "Other Fee for Service Plan"
   3                = "Group HMO"
   4                = "IPA"
   5                = "Other HMO"
   6                = "Other named and identified private plan"
   7                = "Has private plan, name not given"
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
   1                = "All"
   2                = "Part"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN117X
   01-28            = "Person number"
   98               = "Person not in HH"
   99               = "Unknown"
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
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN123X
   1                = "Covered"
   2                = "Unknown if covered"
   .                = "Not applicable (not covered)"
   ;
  VALUE  HIN124X
   1                = "Blue Cross and/or Blue Shield"
   2                = "Other Fee for Service Plan"
   3                = "Group HMO"
   4                = "IPA"
   5                = "Other HMO"
   6                = "Other named and identified private plan"
   7                = "Has private plan, name not given"
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
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN129X
   1                = "All"
   2                = "Part"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN130X
   01-28            = "Person number"
   98               = "Person not in HH"
   99               = "Unknown"
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
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN135X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN136X
   1                = "Covered"
   2                = "Unknown if covered"
   .                = "Not applicable (not covered)"
   ;
  VALUE  HIN137X
   1                = "Blue Cross and/or Blue Shield"
   2                = "Other Fee for Service Plan"
   3                = "Group HMO"
   4                = "IPA"
   5                = "Other HMO"
   6                = "Other named and identified private plan"
   7                = "Has private plan, name not given"
   .                = "Not applicable"
   ;
  VALUE  HIN138X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN139X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN140X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN141X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN142X
   1                = "All"
   2                = "Part"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN143X
   01-28            = "Person number"
   98               = "Person not in HH"
   99               = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN144X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN145X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN146X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN147X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN148X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN149X
   1                = "Covered"
   2                = "Unknown if covered"
   .                = "Not applicable (not covered)"
   ;
  VALUE  HIN150X
   1                = "Blue Cross and/or Blue Shield"
   2                = "Other Fee for Service Plan"
   3                = "Group HMO"
   4                = "IPA"
   5                = "Other HMO"
   6                = "Other named and identified private plan"
   7                = "Has private plan, name not given"
   .                = "Not applicable"
   ;
  VALUE  HIN151X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN152X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN153X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN154X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN155X
   1                = "All"
   2                = "Part"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN156X
   01-28            = "Person number"
   98               = "Person not in HH"
   99               = "Unknown"
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
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN161X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN162X
   1                = "Covered"
   2                = "Unknown if covered"
   .                = "Not applicable (not covered)"
   ;
  VALUE  HIN163X
   1                = "Blue Cross and/or Blue Shield"
   2                = "Other Fee for Service Plan"
   3                = "Group HMO"
   4                = "IPA"
   5                = "Other HMO"
   6                = "Other named and identified private plan"
   7                = "Has private plan, name not given"
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
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN168X
   1                = "All"
   2                = "Part"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN169X
   01-28            = "Person number"
   98               = "Person not in HH"
   99               = "Unknown"
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
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN175X
   1                = "Covered"
   2                = "Unknown if covered"
   .                = "Not applicable (not covered)"
   ;
  VALUE  HIN176X
   1                = "Covered"
   2                = "Not covered"
   3                = "Unknown if covered"
   ;
  VALUE  HIN177X
   1                = "Covered"
   2                = "Not covered"
   3                = "Unknown if covered"
   ;
  VALUE  HIN178X
   1                = "Covered"
   2                = "Not covered"
   3                = "Unknown if covered"
   ;
  VALUE  HIN179X
   01               = "Has hospital but not doctor"
   02               = "Has hospital, doctor unknown"
   03               = "Has both hospital and doctor"
   04               = "Has doctor but not hospital"
   05               = "Has doctor, hospital unknown"
   06               = "Neither hospital nor doctor"
   07               = "Hospital unknown, does not have doctor"
   08               = "Doctor unknown, does not have hospital"
   09               = "Both hospital and doctor unknown"
   10               = "Neither hospital nor doctor"
   11               = "Neither hospital nor doctor"
   12               = "No hospital, doctor unknown"
   13               = "No doctor, hospital unknown"
   14               = "Both hospital and doctor unknown"
   15               = "Either or both hospital/doctor coverage"
   ;
  VALUE  HIN180X
   1                = "Has hospital and doctor coverage"
   2                = "Has hospital or doctor, but not both"
   3                = "Has coverage, extent unknown"
   4                = "Neither hospital nor doctor but has coverage"
   5                = "No PHI Coverage"
   6                = "Unknown if PHI Coverage"
   ;
  VALUE  HIN181X
   1                = "Covered"
   2                = "Not covered"
   3                = "Unknown if covered"
   ;
  VALUE  HIN182X
   1                = "Covered"
   2                = "Not covered"
   3                = "Unknown if covered"
   ;
  VALUE  HIN183X
   1                = "Covered"
   2                = "Not covered"
   3                = "Unknown if covered"
   ;
  VALUE  HIN184X
   1                = "Covered by one or both"
   2                = "Not covered by either"
   3                = "Unknown if covered"
   ;
  VALUE  HIN185X
   1                = "Covered by one or both"
   2                = "Not covered by either"
   3                = "Unknown if covered"
   ;
  VALUE  HIN186X
   1                = "Covered by one or both"
   2                = "Not covered by either"
   3                = "Unknown if covered"
   ;
  VALUE  HIN187X
   01               = "Has hospital but not doctor"
   02               = "Has hospital, doctor unknown"
   03               = "Has both hospital and doctor"
   04               = "Has doctor but not hospital"
   05               = "Has doctor, hospital unknown"
   06               = "Neither hospital nor doctor"
   07               = "Hospital unknown, does not have doctor"
   08               = "Doctor unknown, does not have hospital"
   09               = "Both hospital and doctor unknown"
   10               = "Neither hospital nor doctor"
   11               = "Neither hospital nor doctor"
   12               = "No hospital, doctor unknown"
   13               = "No doctor, hospital unknown"
   14               = "Both hospital and doctor unknown"
   ;
  VALUE  HIN188X
   1                = "Has hospital and doctor coverage"
   2                = "Has hospital or doctor, but not both"
   3                = "Unknown if both, just one or neither"
   4                = "Neither hospital nor doctor but has coverage"
   5                = "No PHI/Medicare Coverage"
   6                = "Unknown if PHI/Medicare Coverage"
   ;
  VALUE  HIN189X
   1                = "Blue Cross and/or Blue Shield only"
   2                = "Blue Plan and other identified plan not including prepaid"
   3                = "Blue Plan, other identified plan, and prepaid plan"
   4                = "Prepaid and Blue Plan (no other identified plan)"
   5                = "Prepaid and other identified plan (no Blue Plan)"
   6                = "Prepaid plan only"
   7                = "Other identified plan only"
   8                = "Plans include at least one for which type is unknown"
   9                = "Person's coverage status unknown for at least one plan"
   .                = "Not applicable"
   ;
  VALUE  HIN190X
   1                = "Yes"
   2                = "Reason given, but not this reason"
   .                = "Unknown or not applicable"
   ;
  VALUE  HIN191X
   1                = "Yes"
   2                = "Reason given, but not this reason"
   .                = "Unknown or not applicable"
   ;
  VALUE  HIN192X
   1                = "Yes"
   2                = "Reason given, but not this reason"
   .                = "Unknown or not applicable"
   ;
  VALUE  HIN193X
   1                = "Yes"
   2                = "Reason given, but not this reason"
   .                = "Unknown or not applicable"
   ;
  VALUE  HIN194X
   1                = "Yes"
   2                = "Reason given, but not this reason"
   .                = "Unknown or not applicable"
   ;
  VALUE  HIN195X
   1                = "Yes"
   2                = "Reason given, but not this reason"
   .                = "Unknown or not applicable"
   ;
  VALUE  HIN196X
   1                = "Yes"
   2                = "Reason given, but not this reason"
   .                = "Unknown or not applicable"
   ;
  VALUE  HIN197X
   1                = "Yes"
   2                = "Reason given, but not this reason"
   .                = "Unknown or not applicable"
   ;
  VALUE  HIN198X
   1                = "At least one reason given"
   2                = "No reason given because item refused or stated to be unknown"
   3                = "No indication of reason given, unknown or refused"
   .                = "Not applicable"
   ;
  VALUE  HIN199X
   01               = "Job layoff, job loss, or any reasons related to unemployment"
   02               = "Cannot obtain because of poor health, illness, or age"
   03               = "Too expensive, cannot afford health insurance"
   04               = "Dissatisfied with previous insurance"
   05               = "Don't believe in insurance"
   06               = "Have been healthy, haven't needed health insurance"
   07               = "Some other health plan, including military care and veteran's benefits"
   08               = "Some other reason"
   10               = "Reasons given, but main reason unknown"
   11               = "Unknown reason"
   .                = "Not applicable (has insurance or unknown"
   ;
  VALUE  HIN200X
   1                = "Covered by one or more plans"
   2                = "Not covered"
   3                = "Unknown if covered"
   ;
  VALUE  HIN201X
   1                = "Covered"
   2                = "Not covered"
   3                = "Unknown if covered"
   .                = "No single service coverage/ unknown if any single service coverage"
   ;
  VALUE  HIN202X
   1                = "Covered"
   2                = "Not covered"
   3                = "Unknown if covered"
   .                = "No single service coverage/ unknown if any single service coverage"
   ;
  VALUE  HIN203X
   1                = "Covered"
   2                = "Not covered"
   3                = "Unknown if covered"
   .                = "No single service coverage/ unknown if any single service coverage"
   ;
  VALUE  HIN204X
   1                = "Covered"
   2                = "Not covered"
   3                = "Unknown if covered"
   .                = "No single service coverage/ unknown if any single service coverage"
   ;
  VALUE  HIN205X
   1                = "Covered"
   2                = "Not covered"
   3                = "Unknown if covered"
   .                = "No single service coverage/ unknown if any single service coverage"
   ;
  VALUE  HIN206X
   1                = "Covered"
   2                = "Not covered"
   3                = "Unknown if covered"
   .                = "No single service coverage/ unknown if any single service coverage"
   ;
  VALUE  HIN207X
   1                = "Covered"
   2                = "Not covered"
   3                = "Unknown if covered"
   .                = "No single service coverage/ unknown if any single service coverage"
   ;
  VALUE  HIN208X
   1                = "Covered"
   2                = "Not covered"
   3                = "Unknown if covered"
   .                = "No single service coverage/ unknown if any single service coverage"
   ;
  VALUE  HIN209X
   1                = "Covered - Both types of Plan"
   2                = "Covered - Comprehensive Plan"
   3                = "Covered - Single Service Plan"
   4                = "Not covered"
   9                = "Unknown if Covered"
   ;
  VALUE  HIN210X
   1                = "Covered - Both types of Plan"
   2                = "Covered - Comprehensive Plan"
   3                = "Covered - Single Service Plan"
   4                = "Not covered"
   9                = "Unknown if Covered"
   ;
  VALUE  HIN211X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  HIN212X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  HIN213X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  HIN214X
   1                = "Medicaid Card - current"
   2                = "Medicaid Card - expired"
   3                = "Card seen - currency unknown"
   4                = "Says has card - card unseen"
   5                = "Card seen - unknown type"
   6                = "Unknown"
   7                = "No Medicaid Card"
   ;
  VALUE  HIN215X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  HIN216X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  HIN217X
   1                = "Armed Forces"
   2                = "Veteran's Administration"
   3                = "Both"
   9                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN218X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  HIN219X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  HIN220X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN221X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN222X
   1                = "Has some type of PA Health Insurance coverage"
   2                = "None"
   3                = "Unknown if any PA Health Insurance coverage"
   ;
  VALUE  HIN223X
   1                = "Use in past 12 months only"
   2                = "Current card only"
   3                = "Both use in past 12 months and current card"
   4                = "Neither or unknown"
   ;
  VALUE  HIN224X
   1                = "Has some type of Military Health Benefit"
   2                = "None"
   3                = "Unknown if any Military Health Benefit"
   ;
  VALUE  HIN225X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   4                = "Under 18 years of age"
   ;
  VALUE  HIN226X
   1                = "1 time"
   2                = "2 times"
   3                = "3 times"
   4                = "4 times"
   5                = "5 times"
   6                = "6 times"
   7                = "7 times"
   8                = "8+ times"
   9                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE $HIN227X
   "01"             = "January"
   "02"             = "February"
   "03"             = "March"
   "04"             = "April"
   "05"             = "May"
   "06"             = "June"
   "07"             = "July"
   "08"             = "August"
   "09"             = "September"
   "10"             = "October"
   "11"             = "November"
   "12"             = "December"
   "13"             = "Unknown"
   " "              = "Not applicable"
   ;
  VALUE $HIN228X
   "01"             = "January"
   "02"             = "February"
   "03"             = "March"
   "04"             = "April"
   "05"             = "May"
   "06"             = "June"
   "07"             = "July"
   "08"             = "August"
   "09"             = "September"
   "10"             = "October"
   "11"             = "November"
   "12"             = "December"
   "13"             = "Unknown"
   " "              = "Not applicable"
   ;
  VALUE $HIN229X
   "01"             = "January"
   "02"             = "February"
   "03"             = "March"
   "04"             = "April"
   "05"             = "May"
   "06"             = "June"
   "07"             = "July"
   "08"             = "August"
   "09"             = "September"
   "10"             = "October"
   "11"             = "November"
   "12"             = "December"
   "13"             = "Unknown"
   " "              = "Not applicable"
   ;
  VALUE  HIN230X
   1                = "Lost coverage"
   2                = "Did not lose coverage"
   3                = "DK, refused if lost coverage"
   ;
  VALUE  HIN231X
   1                = "All of the time"
   2                = "Some of the time"
   3                = "Never"
   4                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN232X
   00               = "Less than 1 month"
   01-12            = "1-12 months"
   13               = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN233X
   1                = "Yes, lost coverage, but covered by health care program"
   2                = "No, lost coverage and not covered by health care program"
   3                = "Lost coverage, unknown if covered by health care program"
   .                = "Not applicable"
   ;
  VALUE  HIN234X
   00               = "Less than 1 month"
   01-12            = "1-12 months"
   13               = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN235X
   1                = "No family member known to be laid off/lost job"
   2                = "This person laid off/lost job"
   3                = "One or more family members laid off/lost job, but not this person"
   4                = "Unknown layoff/job loss status of one or more adult family members, no one known to be laid off/lost job"
   ;
  VALUE  HIN236X
   1                = "No lost coverage"
   2                = "Lost coverage, but covered by health insurance entire time"
   3                = "Lost coverage, covered at least some of time by other health insurance, or other plan"
   4                = "Lost coverage, not covered by other health insurance or other plan"
   5                = "Lost coverage, unknown coverage by other health insurance or other plan"
   6                = "Unknown if lost coverage"
   ;
  VALUE  HIN237X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN238X
   1                = "Coded HMO, respondent said HMO"
   2                = "Coded HMO, respondent said not HMO"
   3                = "Coded HMO, respondent said doesn't know if HMO"
   4                = "Coded 'name of plan unknown,' respondent said HMO"
   5                = "Coded 'name of plan unknown,' respondent said not HMO"
   6                = "Coded 'name of plan unknown,' respondent said doesn't know if HMO"
   7                = "Coded Blue plan or other, respondent said HMO"
   8                = "Coded Blue plan or other respondent said not HMO"
   9                = "Coded Blue plan or other, respondent said doesn't know if HMO"
   .                = "Person not covered by this plan"
   ;
  VALUE  HIN239X
   1                = "Coded HMO, respondent said HMO"
   2                = "Coded HMO, respondent said not HMO"
   3                = "Coded HMO, respondent said doesn't know if HMO"
   4                = "Coded 'name of plan unknown,' respondent said HMO"
   5                = "Coded 'name of plan unknown,' respondent said not HMO"
   6                = "Coded 'name of plan unknown,' respondent said doesn't know if HMO"
   7                = "Coded Blue plan or other, respondent said HMO"
   8                = "Coded Blue plan or other respondent said not HMO"
   9                = "Coded Blue plan or other, respondent said doesn't know if HMO"
   .                = "Person not covered by this plan"
   ;
  VALUE  HIN240X
   1                = "Coded HMO, respondent said HMO"
   2                = "Coded HMO, respondent said not HMO"
   3                = "Coded HMO, respondent said doesn't know if HMO"
   4                = "Coded 'name of plan unknown,' respondent said HMO"
   5                = "Coded 'name of plan unknown,' respondent said not HMO"
   6                = "Coded 'name of plan unknown,' respondent said doesn't know if HMO"
   7                = "Coded Blue plan or other, respondent said HMO"
   8                = "Coded Blue plan or other respondent said not HMO"
   9                = "Coded Blue plan or other, respondent said doesn't know if HMO"
   .                = "Person not covered by this plan"
   ;
  VALUE  HIN241X
   1                = "Coded HMO, respondent said HMO"
   2                = "Coded HMO, respondent said not HMO"
   3                = "Coded HMO, respondent said doesn't know if HMO"
   4                = "Coded 'name of plan unknown,' respondent said HMO"
   5                = "Coded 'name of plan unknown,' respondent said not HMO"
   6                = "Coded 'name of plan unknown,' respondent said doesn't know if HMO"
   7                = "Coded Blue plan or other, respondent said HMO"
   8                = "Coded Blue plan or other respondent said not HMO"
   9                = "Coded Blue plan or other, respondent said doesn't know if HMO"
   .                = "Person not covered by this plan"
   ;
  VALUE  HIN242X
   1                = "Coded HMO, respondent said HMO"
   2                = "Coded HMO, respondent said not HMO"
   3                = "Coded HMO, respondent said doesn't know if HMO"
   4                = "Coded 'name of plan unknown,' respondent said HMO"
   5                = "Coded 'name of plan unknown,' respondent said not HMO"
   6                = "Coded 'name of plan unknown,' respondent said doesn't know if HMO"
   7                = "Coded Blue plan or other, respondent said HMO"
   8                = "Coded Blue plan or other respondent said not HMO"
   9                = "Coded Blue plan or other, respondent said doesn't know if HMO"
   .                = "Person not covered by this plan"
   ;
  VALUE  HIN243X
   1                = "HMO coverage according to list and respondent"
   2                = "HMO coverage according to list only"
   3                = "HMO coverage according to respondent only"
   4                = "No HMO coverage reported, either according to list or respondent"
   5                = "Unknown if covered by HMO"
   ;
  VALUE  HIN244X
   1                = "Service-connected disability; receives compensation"
   2                = "Service-connected disability; VA rating approved but no current compensation"
   3                = "Service-connected disability; VA rating denied"
   4                = "Service-connected disability; VA rating pending"
   5                = "Service-connected disability; application made for VA rating, results unknown"
   6                = "Service-connected disability; no VA application made or unknown if made"
   7                = "Service-connected disability; unknown if receives compensation"
   8                = "No service-connected disability"
   9                = "Unknown if service-connected disability"
   .                = "Not applicable"
   ;
  VALUE  HIN245X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   ;
  VALUE  HIN246X
   1                = "Yes"
   2                = "No"
   3                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN247X
   1                = "Approved"
   2                = "Denied"
   3                = "Pending"
   9                = "DK or refused"
   .                = "Not applicable"
   ;
  VALUE $HIN248X
   "9999"           = "Unknown or refused or time interval greater than 13 months"
   " "              = "Not applicable"
   ;
  VALUE $HIN249X
   "01"             = "January"
   "02"             = "February"
   "03"             = "March"
   "04"             = "April"
   "05"             = "May"
   "06"             = "June"
   "07"             = "July"
   "08"             = "August"
   "09"             = "September"
   "10"             = "October"
   "11"             = "November"
   "12"             = "December"
   ;
  VALUE $HIN250X
   "87"             = "1987"
   "88"             = "1988"
   "89"             = "1989"
   "90"             = "1990"
   ;
  VALUE $HIN251X
   "9999"           = "Unknown or refused or time interval greater than 13 months"
   " "              = "Not applicable"
   ;
  VALUE $HIN252X
   "01"             = "January"
   "02"             = "February"
   "03"             = "March"
   "04"             = "April"
   "05"             = "May"
   "06"             = "June"
   "07"             = "July"
   "08"             = "August"
   "09"             = "September"
   "10"             = "October"
   "11"             = "November"
   "12"             = "December"
   ;
  VALUE $HIN253X
   "87"             = "1987"
   "88"             = "1988"
   "89"             = "1989"
   "90"             = "1990"
   ;
  VALUE $HIN254X
   "9999"           = "Unknown or refused or time interval greater than 13 months"
   " "              = "Not applicable"
   ;
  VALUE $HIN255X
   "01"             = "January"
   "02"             = "February"
   "03"             = "March"
   "04"             = "April"
   "05"             = "May"
   "06"             = "June"
   "07"             = "July"
   "08"             = "August"
   "09"             = "September"
   "10"             = "October"
   "11"             = "November"
   "12"             = "December"
   ;
  VALUE $HIN256X
   "87"             = "1987"
   "88"             = "1988"
   "89"             = "1989"
   "90"             = "1990"
   ;
  VALUE  HIN257X
   1                = "Self"
   2                = "Other Person in Household"
   3                = "Person Not in Household"
   9                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN258X
   1                = "Self"
   2                = "Other Person in Household"
   3                = "Person Not in Household"
   9                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN259X
   1                = "Self"
   2                = "Other Person in Household"
   3                = "Person Not in Household"
   9                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN260X
   1                = "Self"
   2                = "Other Person in Household"
   3                = "Person Not in Household"
   9                = "Unknown"
   .                = "Not applicable"
   ;
  VALUE  HIN261X
   1                = "Self"
   2                = "Other Person in Household"
   3                = "Person Not in Household"
   9                = "Unknown"
   .                = "Not applicable"
   ;
 
DATA NHIS.HEALTHIN;
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1989';
   INFILE ASCIIDAT MISSOVER TRUNCOVER LRECL=530;
 
* DEFINE LENGTH OF NUMERIC VARIABLES;
 
LENGTH
   RECTYPE   3  YEAR      3  QUARTER   3  WEEKCEN   3  WEEKPROC  3
   LIVQTR    3  PHONE     3  SEX       3  AGE       3  AGER1     3
   AGER2     3  AGER3     3  RACE      3  RACER1    3  RACER2    3
   RACER3    3  HISPANIC  3  MARSTAT   3  VETERAN   3  RESERVE   3
   EDUC      3  EDUCR     3  EDUCAD    3  EDUCADR   3  INCFAM20  3
   INCFAM    3  INCFAMR   3  POVERTY   3  FAMRELR   3  FAMSIZE   3
   FAMSIZER  3  PARENT    3  MAJACT    3  HLTHSTAT  3  LATOTAL   3
   LAWORK    3  LASCHOOL  3  LACARE    3  EMPLOY    3  WKCLASS   3
   INDUS     3  INDUSR1   3  INDUSR2   3  OCCUP     3  OCCUPR1   3
   OCCUPR2   3  RESPOND   3  CONDLIST  3  HEIGHT    3  WEIGHT    3
   RADAY     3  BDDAY     3  WLDAY     3  SLDAY     3  OTHDAY    3
   BDDAY12   3  BDDAY12R  3  DV12      3  DVINT     3  NCOND     3
   NACUTE    3  NDV2      3  HEP12     3  HDA12     3  HEP12X    3
   HDA12X    3  DISDA5    3  DIS6X     3  DISDAY6X  3  DISDA12X  3
   YRPRERES  3  YRSINUS   3  WTINT     8  SUBTYPE   3  STRATUM   3
   REGION    3  MSASIZE   3  PSUTYPE   3  MSA       3  PSUPSEUD  3
   CCFACT    8  WTFQ      6  WTFS      6  WTFA      6  WT65      6
   RADAYWP   6  BDDAYWP   6  WLDAYWP   6  SLDAYWP   6  DV12WPQ   6
   DV12WPS   6  DV12WPA   6  HDA12WPQ  6  HDA12WPS  6  HDA12WPA  6
   HEP12WP   6  MCARC     3  MCARCH    3  MCARCDS   3  MC65      3
   MCHDSC    3  MCHDSS    3  TYPEPL1   3  HMO1      3  OBTEMUN1  3
   CAREMUN1  3  EMHEINS1  3  EMPAYAL1  3  NAMEPLA1  3  PAHOSBL1  3
   PALDOCB1  3  PAYSDS1   3  PAPREDR1  3  PAYMDAB1  3  PECOVPL1  3
   TYPEPL2   3  HMO2      3  OBTEMUN2  3  CAREMUN2  3  EMHEINS2  3
   EMPAYAL2  3  NAMEPLA2  3  PAHOSBL2  3  PALDOCB2  3  PAYSDS2   3
   PAPREDR2  3  PAYMDAB2  3  PECOVPL2  3  TYPEPL3   3  HMO3      3
   OBTEMUN3  3  CAREMUN3  3  EMHEINS3  3  EMPAYAL3  3  NAMEPLA3  3
   PAHOSBL3  3  PALDOCB3  3  PAYSDS3   3  PAPREDR3  3  PAYMDAB3  3
   PECOVPL3  3  TYPEPL4   3  HMO4      3  OBTEMUN4  3  CAREMUN4  3
   EMHEINS4  3  EMPAYAL4  3  NAMEPLA4  3  PAYALBL4  3  PAHOSBL4  3
   PAYSDS4   3  PAPREDR4  3  PAYMDAB4  3  PECOVPL4  3  TYPEPL5   3
   HMO5      3  OBTEMUN5  3  CAREMUN5  3  EMHEINS5  3  EMPAYAL5  3
   NAMEPLA5  3  PAHOSBL5  3  PALDOCB5  3  PAYSDS5   3  PAPREDR5  3
   PAYMDAB5  3  PECOVPL5  3  PHI       3  PHIHOCO   3  PHIDSC    3
   PHIHODOS  3  PHIHODSC  3  PHIDENC   3  PHIPRESC  3  PHIMHADA  3
   MEDPHI    3  MEDPHIHC  3  MEDPHIDS  3  PHIMECHS  3  PHIMEHSC  3
   TYPEPHIC  3  REAUNEMP  3  PHILLAGE  3  CAFFHI    3  DIPREVI   3
   DONTBEI   3  BEENHEA   3  MILCVETB  3  SOTHREA   3  WREAGIV   3
   NOMEDPHI  3  ASINSCOV  3  SINSCOPR  3  SISCOVEC  3  SISCOVCT  3
   SISCOVCA  3  SISCOVNH  3  SISCOVAC  3  SISCOVDC  3  SISCOVOT  3
   ADCOVSIS  3  PRCOVSIS  3  AFDC      3  SUPSECIN  3  REMEDI12  3
   MEDITYCD  3  COVASPHC  3  MILRETPA  3  TYPEMIBE  3  COVCHAVA  3
   COVHECMD  3  SEREDISA  3  SERRELDI  3  PUBASHIC  3  MEDICURR  3
   MILIHEBE  3  LAIOF12   3  TLAIOF12  3  FAMLOSS   3  COVHINS   3
   TIMEWHI   3  COVWINC   3  TCOVHCJL  3  FAMSTJLO  3  HEACOVR   3
   RECUNINS  3  HMOCOV1   3  HMOCOV2   3  HMOCOV3   3  HMOCOV4   3
   HMOCOV5   3  PHICOHMO  3  COSECOND  3  COVCHAMP  3  APSCONDC  3
   STAVAAPP  3  PL1PLREC  3  PL2PLREC  3  PL3PLREC  3  PL4PLREC  3
   PL5PLREC  3
   ;
* INPUT ALL VARIABLES;
 
INPUT
   RECTYPE       1 - 2         YEAR          3 - 4
   QUARTER       5 - 5         PSUNUMR  $    6 - 8
   WEEKCEN       9 - 10        SEGNUM   $   11 - 12
   HHNUM    $   13 - 14        PNUM     $   15 - 16
   WEEKPROC     19 - 20        LIVQTR       22 - 23
   PHONE        24 - 24        SEX          25 - 25
   AGE          27 - 28        AGER1        29 - 29
   AGER2        30 - 30        AGER3        31 - 32
   BIRTHMO  $   34 - 35        BIRTHYR  $   36 - 39
   RACE         42 - 42        RACER1       43 - 43
   RACER2       44 - 44        RACER3       45 - 45
   HISPANIC     46 - 47        MARSTAT      48 - 48
   VETERAN      49 - 49        RESERVE      50 - 50
   EDUC         51 - 52        EDUCR        53 - 53
   EDUCAD       54 - 55        EDUCADR      56 - 56
   INCFAM20     57 - 57        INCFAM       58 - 59
   INCFAMR      60 - 60        POVERTY      61 - 61
   FAMNUM   $   62 - 62        FAMREL   $   63 - 63
   FAMRELR      64 - 64        FAMSIZE      65 - 66
   FAMSIZER     67 - 67        PARENT       68 - 68
   MAJACT       69 - 69        HLTHSTAT     70 - 70
   LATOTAL      71 - 71        LAWORK       72 - 72
   LASCHOOL     73 - 73        LACARE       74 - 74
   EMPLOY       75 - 75        WKCLASS      76 - 76
   INDUS        77 - 79        INDUSR1      80 - 81
   INDUSR2      82 - 83        OCCUP        84 - 86
   OCCUPR1      87 - 88        OCCUPR2      89 - 90
   RESPOND      91 - 91        CONDLIST     92 - 92
   HEIGHT       93 - 94        WEIGHT       95 - 97
   RADAY        98 - 99        BDDAY       100 - 101
   WLDAY       102 - 103       SLDAY       104 - 105
   OTHDAY      106 - 107       BDDAY12     108 - 110
   BDDAY12R    111 - 111       DV12        112 - 114
   DVINT       115 - 115       NCOND       116 - 117
   NACUTE      118 - 119       NDV2        120 - 121
   HEP12       122 - 123       HDA12       124 - 126
   HEP12X      127 - 128       HDA12X      129 - 131
   DISDA5      132 - 133       DIS6X       134 - 136
   DISDAY6X    137 - 138       DISDA12X    139 - 141
   YRPRERES    144 - 144       YRSINUS     145 - 145
   WTINT       172 - 177 .1    SUBTYPE     178 - 178
   STRATUM     179 - 181       REGION      182 - 182
   MSASIZE     183 - 183       PSUTYPE     185 - 185
   MSA         186 - 186       PSUPSEUD    187 - 189
   CCFACT      190 - 200 .9    WTFQ        201 - 209
   WTFS        210 - 218       WTFA        219 - 227
   WT65        228 - 236       RADAYWP     237 - 245
   BDDAYWP     246 - 254       WLDAYWP     255 - 263
   SLDAYWP     264 - 272       DV12WPQ     273 - 281
   DV12WPS     282 - 290       DV12WPA     291 - 299
   HDA12WPQ    300 - 308       HDA12WPS    309 - 317
   HDA12WPA    318 - 326       HEP12WP     327 - 335
   MCARC       336 - 336       MCARCH      337 - 337
   MCARCDS     338 - 338       MC65        339 - 339
   MCHDSC      340 - 341       MCHDSS      342 - 342
   TYPEPL1     344 - 344       HMO1        345 - 345
   OBTEMUN1    346 - 346       CAREMUN1    347 - 347
   EMHEINS1    348 - 348       EMPAYAL1    349 - 349
   NAMEPLA1    350 - 351       PAHOSBL1    352 - 352
   PALDOCB1    353 - 353       PAYSDS1     354 - 354
   PAPREDR1    355 - 355       PAYMDAB1    356 - 356
   PECOVPL1    357 - 357       TYPEPL2     358 - 358
   HMO2        359 - 359       OBTEMUN2    360 - 360
   CAREMUN2    361 - 361       EMHEINS2    362 - 362
   EMPAYAL2    363 - 363       NAMEPLA2    364 - 365
   PAHOSBL2    366 - 366       PALDOCB2    367 - 367
   PAYSDS2     368 - 368       PAPREDR2    369 - 369
   PAYMDAB2    370 - 370       PECOVPL2    371 - 371
   TYPEPL3     372 - 372       HMO3        373 - 373
   OBTEMUN3    374 - 374       CAREMUN3    375 - 375
   EMHEINS3    376 - 376       EMPAYAL3    377 - 377
   NAMEPLA3    378 - 379       PAHOSBL3    380 - 380
   PALDOCB3    381 - 381       PAYSDS3     382 - 382
   PAPREDR3    383 - 383       PAYMDAB3    384 - 384
   PECOVPL3    385 - 385       TYPEPL4     386 - 386
   HMO4        387 - 387       OBTEMUN4    388 - 388
   CAREMUN4    389 - 389       EMHEINS4    390 - 390
   EMPAYAL4    391 - 391       NAMEPLA4    392 - 393
   PAYALBL4    394 - 394       PAHOSBL4    395 - 395
   PAYSDS4     396 - 396       PAPREDR4    397 - 397
   PAYMDAB4    398 - 398       PECOVPL4    399 - 399
   TYPEPL5     400 - 400       HMO5        401 - 401
   OBTEMUN5    402 - 402       CAREMUN5    403 - 403
   EMHEINS5    404 - 404       EMPAYAL5    405 - 405
   NAMEPLA5    406 - 407       PAHOSBL5    408 - 408
   PALDOCB5    409 - 409       PAYSDS5     410 - 410
   PAPREDR5    411 - 411       PAYMDAB5    412 - 412
   PECOVPL5    413 - 413       PHI         415 - 415
   PHIHOCO     416 - 416       PHIDSC      417 - 417
   PHIHODOS    418 - 419       PHIHODSC    420 - 420
   PHIDENC     421 - 421       PHIPRESC    422 - 422
   PHIMHADA    423 - 423       MEDPHI      424 - 424
   MEDPHIHC    425 - 425       MEDPHIDS    426 - 426
   PHIMECHS    427 - 428       PHIMEHSC    429 - 429
   TYPEPHIC    430 - 430       REAUNEMP    431 - 431
   PHILLAGE    432 - 432       CAFFHI      433 - 433
   DIPREVI     434 - 434       DONTBEI     435 - 435
   BEENHEA     436 - 436       MILCVETB    437 - 437
   SOTHREA     438 - 438       WREAGIV     439 - 439
   NOMEDPHI    440 - 441       ASINSCOV    442 - 442
   SINSCOPR    443 - 443       SISCOVEC    444 - 444
   SISCOVCT    445 - 445       SISCOVCA    446 - 446
   SISCOVNH    447 - 447       SISCOVAC    448 - 448
   SISCOVDC    449 - 449       SISCOVOT    450 - 450
   ADCOVSIS    451 - 451       PRCOVSIS    452 - 452
   AFDC        453 - 453       SUPSECIN    454 - 454
   REMEDI12    455 - 455       MEDITYCD    456 - 456
   COVASPHC    457 - 457       MILRETPA    458 - 458
   TYPEMIBE    459 - 459       COVCHAVA    460 - 460
   COVHECMD    461 - 461       SEREDISA    462 - 462
   SERRELDI    463 - 463       PUBASHIC    464 - 464
   MEDICURR    465 - 465       MILIHEBE    466 - 466
   LAIOF12     467 - 467       TLAIOF12    468 - 468
   MLAIOFOT $  469 - 470       MLAIOFST $  471 - 472
   MLAIOFTT $  473 - 474       FAMLOSS     475 - 475
   COVHINS     476 - 476       TIMEWHI     477 - 478
   COVWINC     479 - 479       TCOVHCJL    480 - 481
   FAMSTJLO    482 - 482       HEACOVR     483 - 483
   RECUNINS    487 - 487       HMOCOV1     488 - 488
   HMOCOV2     489 - 489       HMOCOV3     490 - 490
   HMOCOV4     491 - 491       HMOCOV5     492 - 492
   PHICOHMO    493 - 493       COSECOND    494 - 494
   COVCHAMP    495 - 495       APSCONDC    496 - 496
   STAVAAPP    497 - 497       TM1LAOFF $  498 - 501
   TIM1LAOM $  498 - 499       TIM1LAOY $  500 - 501
   TM2LAOFF $  502 - 505       TIM2LAOM $  502 - 503
   TIM2LAOY $  504 - 505       TM3LAOFF $  506 - 509
   TIM3LAOM $  506 - 507       TIM3LAOY $  508 - 509
   PL1PLREC    515 - 515       PL2PLREC    516 - 516
   PL3PLREC    517 - 517       PL4PLREC    518 - 518
   PL5PLREC    519 - 519
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
   WEEKPROC = "PROCESSING WEEK CODE"
   LIVQTR   = "TYPE OF LIVING QUARTER"
   PHONE    = "HAS TELEPHONE"
   SEX      = "SEX"
   AGE      = "AGE"
   AGER1    = "AGE RECODE #1"
   AGER2    = "AGE RECODE #2"
   AGER3    = "AGE RECODE #3"
   BIRTHMO  = "MONTH OF BIRTH"
   BIRTHYR  = "YEAR OF BIRTH"
   RACE     = "MAIN RACIAL BACKGROUND"
   RACER1   = "RACE RECODE 1"
   RACER2   = "RACE RECODE 2"
   RACER3   = "RACE RECODE 3"
   HISPANIC = "HISPANIC ORIGIN"
   MARSTAT  = "MARITAL STATUS"
   VETERAN  = "VETERAN STATUS"
   RESERVE  = "ACTIVE GUARD/RESERVE STATUS FOR PERSONS ON ACTIVE DUTY IN ARMED FORCES"
   EDUC     = "EDUCATION OF INDIVIDUAL - COMPLETED YEARS"
   EDUCR    = "EDUCATION OF INDIVIDUAL RECODE"
   EDUCAD   = "HIGHEST EDUCATION OF RESPONSIBLE ADULT FAMILY MEMBER - (DETAIL)"
   EDUCADR  = "HIGHEST EDUCATION OF RESPONSIBLE ADULT FAMILY MEMBER - RECOD"
   INCFAM20 = "FAMILY INCOME $20,000 OR MORE"
   INCFAM   = "FAMILY INCOME"
   INCFAMR  = "FAMILY INCOME RECODE"
   POVERTY  = "NHIS POVERTY INDEX"
   FAMNUM   = "TYPE OF FAMILY"
   FAMREL   = "RELATIONSHIP TO REFERENCE PERSON"
   FAMRELR  = "FAMILY RELATIONSHIP RECODE"
   FAMSIZE  = "SIZE OF FAMILY"
   FAMSIZER = "SIZE OF FAMILY RECODE"
   PARENT   = "PARENT/OTHER ADULT RELATIVE"
   MAJACT   = "MAJOR ACTIVITY"
   HLTHSTAT = "HEALTH STATUS"
   LATOTAL  = "ACTIVITY LIMITATION STATUS"
   LAWORK   = "ACTIVITY LIMITATION STATUS MEASURED BY 'ABILITY TO WORK'"
   LASCHOOL = "LIMITATION OF SCHOOL ACTIVITIES"
   LACARE   = "NEEDS HELP WITH PERSONAL CARE"
   EMPLOY   = "EMPLOYMENT STATUS IN PAST 2 WEEKS"
   WKCLASS  = "CLASS OF WORKER"
   INDUS    = "INDUSTRY DETAIL CODE"
   INDUSR1  = "INDUSTRY RECODE 1"
   INDUSR2  = "INDUSTRY RECODE 2"
   OCCUP    = "OCCUPATION DETAIL CODE"
   OCCUPR1  = "OCCUPATION RECODE 1"
   OCCUPR2  = "OCCUPATION RECODE 2"
   RESPOND  = "RESPONDENT"
   CONDLIST = "CONDITION LIST ASSIGNED AND ASKED"
   HEIGHT   = "HEIGHT WITHOUT SHOES"
   WEIGHT   = "WEIGHT WITHOUT SHOES"
   RADAY    = "TOTAL RESTRICTED ACTIVITY DAYS IN PAST TWO WEEKS"
   BDDAY    = "BED DAYS IN PAST TWO WEEKS"
   WLDAY    = "WORK-LOSS DAYS IN PAST TWO WEEKS"
   SLDAY    = "SCHOOL-LOSS DAYS IN PAST TWO WEEKS"
   OTHDAY   = "OTHER DAYS OF RESTRICTED ACTIVITY IN PAST TWO WEEKS"
   BDDAY12  = "BED DAYS IN PAST 12 MONTHS"
   BDDAY12R = "BED DAYS IN PAST 12 MONTHS - RECODE"
   DV12     = "DOCTOR VISITS IN PAST 12 MONTHS"
   DVINT    = "INTERVAL SINCE LAST DOCTOR VISIT"
   NCOND    = "NUMBER OF CONDITIONS"
   NACUTE   = "NUMBER OF ACUTE INCIDENCE CONDITIONS"
   NDV2     = "NUMBER OF TWO-WEEK DOCTOR VISITS"
   HEP12    = "NUMBER OF SHORT-STAY HOSPITAL EPISODES IN IN PAST 12 MONTHS"
   HDA12    = "SHORT-STAY HOSPITAL EPISODE DAYS IN PAST 12 MONTHS"
   HEP12X   = "NUMBER OF SHORT-STAY HOSPITAL EPISODES IN PAST 12 MONTHS EXCLUDING DELIVERY"
   HDA12X   = "SHORT-STAY HOSPITAL EPISODE DAYS IN PAST 12 MONTHS EXCLUDING DELIVERY"
   DISDA5   = "NUMBER OF SHORT-STAY HOSPITAL DISCHARGES IN PAST 6 MONTHS"
   DIS6X    = "NUMBER OF DAYS IN SHORT-STAY HOSPITAL IN PAST 12 MONTHS FOR DISCHARGES IN PAST MONTHS"
   DISDAY6X = "NUMBER OF SHORT-STAY HOSPITAL DISCHARGES IN PAST 6 MONTHS EXCLUDING DELIVERY"
   DISDA12X = "NUMBER OF DAYS IN SHORT-STAY HOSPITAL IN PAST 12 MONTHS FOR DISCHARGES IN PAST 6 MONTHS EXCLUDING DELIVERY"
   YRPRERES = "YEARS LIVED IN STATE OF PRESENT RESIDENCE"
   YRSINUS  = "YEARS LIVED IN UNITED STATES"
   WTINT    = "QUARTER BASIC WEIGHT BEFORE AGE-SEX-RACE ADJUSTMENT"
   SUBTYPE  = "TYPE OF SUBSTRATUM"
   STRATUM  = "FULL SAMPLE STRATUM IDENTIFIER"
   REGION   = "REGION"
   MSASIZE  = "GEOGRAPHIC DISTRIBUTION"
   PSUTYPE  = "TYPE OF PSU"
   MSA      = "MSA - NON-MSA RESIDENCE"
   PSUPSEUD = "PSEUDO PSU CODES"
   CCFACT   = "CHRONIC CONDITION PREVALENCE AND INCIDENCE FACTOR"
   WTFQ     = "FINAL BASIC WEIGHT   QUARTER"
   WTFS     = "FINAL BASIC WEIGHT   SEMI-ANNUAL (WT/2)"
   WTFA     = "FINAL BASIC WEIGHT   ANNUAL (WT/4)"
   WT65     = "6 5 WEIGHT   QUARTER, SEMI-ANNUAL, AND ANNUAL"
   RADAYWP  = "ESTIMATED RESTRICTED ACTIVITY DAYS PAST 2W  QUARTER, SEMI-ANNUAL AND ANNUAL"
   BDDAYWP  = "ESTIMATED BED DAYS PAST 2W  QUARTER, SEMI-ANNUAL AND ANNUAL"
   WLDAYWP  = "ESTIMATED WROK-LOSS DAYS PAST 2W  QUARTER, SEMI-ANNUAL AND ANNUAL"
   SLDAYWP  = "ESTIMATED SCHOOL-LOSS DAYS PAST 2W  QUARTER, SEMI-ANNUAL AND ANNUAL"
   DV12WPQ  = "ESTIMATED DOCTOR VISITS PAST 12M  QUARTER"
   DV12WPS  = "ESTIMATED DOCTOR VISITS PAST 12M  SEMI-ANNUAL"
   DV12WPA  = "ESTIMATED DOCTOR VISITS PAST 12M  ANNUAL"
   HDA12WPQ = "ESTIMATED SHORT-STAY HOSPITAL EPISODE DAYS PAST 12M  QUARTER"
   HDA12WPS = "ESTIMATED SHORT-STAY HOSPITAL EPISODE DAYS PAST 12M  SEMI-ANNUAL"
   HDA12WPA = "ESTIMATED SHORT-STAY HOSPITAL EPISODE DAYS PAST 12M  ANNUAL"
   HEP12WP  = "ANNUAL ESTIMATED NUMBER OF SHORT-STAY HOSPITAL EPISODES IN PAST 12 MONTHS"
   MCARC    = "MEDICARE COVERAGE"
   MCARCH   = "MEDICARE:  HOSPITAL COVERAGE"
   MCARCDS  = "MEDICARE:  DOCTOR/SURGEON COVERAGE"
   MC65     = "MEDICARE CARD (PERSONS UNDER 65 YEARS OF AGE)"
   MCHDSC   = "MEDICARE COVERAGE:  HOSPITAL AND/OR DOCTOR/SURGEON COVERAGE"
   MCHDSS   = "MEDICARE:  HOSPITAL AND/OR DOCTOR/SURGEON COVERAGE SUMMARY"
   TYPEPL1  = "PLAN 1 - TYPE OF PLAN"
   HMO1     = "PLAN 1 - HEALTH MAINTENANCE ORGANIZATION OR HMO"
   OBTEMUN1 = "PLAN 1 - PLAN OBTAINED THROUGH EMPLOYER OR UNION"
   CAREMUN1 = "PLAN 1 - NOW CARRIED THROUGH EMPLOYER OR UNION"
   EMHEINS1 = "PLAN 1 - EMPLOYER/UNION PAYS FOR HEALTH INSURANCE"
   EMPAYAL1 = "PLAN 1 - EMPLOYER/UNION PAYS ALL OR PART"
   NAMEPLA1 = "PLAN 1 - IN WHOSE NAME IS PLAN"
   PAHOSBL1 = "PLAN 1 - PLAN PAYS SOME OR ALL OF HOSPITAL BILLS"
   PALDOCB1 = "PLAN 1 - PLAN PAYS SOME OR ALL DOCTOR/SURGEON BILLS FOR OPERATIONS"
   PAYSDS1  = "PLAN 1 - PLAN PAYS DENTAL SERVICES"
   PAPREDR1 = "PLAN 1 - PLAN PAYS PRESCRIPTION DRUGS"
   PAYMDAB1 = "PLAN 1 - PLAN PAYS MENTAL HEALTH, ALCOHOLISM, DRUG ABUSE"
   PECOVPL1 = "PLAN 1 - THIS PERSON'S COVERAGE STATUS UNDER THIS PLAN"
   TYPEPL2  = "PLAN 2 - TYPE OF PLAN"
   HMO2     = "PLAN 2 - HEALTH MAINTENANCE ORGANIZATION OR HMO"
   OBTEMUN2 = "PLAN 2 - PLAN OBTAINED THROUGH EMPLOYER OR UNION"
   CAREMUN2 = "PLAN 2 - NOW CARRIED THROUGH EMPLOYER OR UNION"
   EMHEINS2 = "PLAN 2 - EMPLOYER/UNION PAYS FOR HEALTH INSURANCE"
   EMPAYAL2 = "PLAN 2 - EMPLOYER/UNION PAYS ALL OR PART"
   NAMEPLA2 = "PLAN 2 - IN WHOSE NAME IS PLAN"
   PAHOSBL2 = "PLAN 2 - PLAN PAYS SOME OR ALL OF HOSPITAL BILLS"
   PALDOCB2 = "PLAN 2 - PLAN PAYS SOME OR ALL DOCTOR/SURGEON BILLS FOR OPERATIONS"
   PAYSDS2  = "PLAN 2 - PLAN PAYS DENTAL SERVICES"
   PAPREDR2 = "PLAN 2 - PLAN PAYS PRESCRIPTION DRUGS"
   PAYMDAB2 = "PLAN 2 - PLAN PAYS MENTAL HEALTH, ALCOHOLISM, DRUG ABUSE"
   PECOVPL2 = "PLAN 2 - THIS PERSON'S COVERAGE STATUS UNDER THIS PLAN"
   TYPEPL3  = "PLAN 3 - TYPE OF PLAN"
   HMO3     = "PLAN 3 - HEALTH MAINTENANCE ORGANIZATION OR HMO"
   OBTEMUN3 = "PLAN 3 - PLAN OBTAINED THROUGH EMPLOYER OR UNION"
   CAREMUN3 = "PLAN 3 - NOW CARRIED THROUGH EMPLOYER OR UNION"
   EMHEINS3 = "PLAN 3 - EMPLOYER/UNION PAYS FOR HEALTH INSURANCE"
   EMPAYAL3 = "PLAN 3 - EMPLOYER/UNION PAYS ALL OR PART"
   NAMEPLA3 = "PLAN 3 - IN WHOSE NAME IS PLAN"
   PAHOSBL3 = "PLAN 3 - PLAN PAYS SOME OR ALL OF HOSPITAL BILLS"
   PALDOCB3 = "PLAN 3 - PLAN PAYS SOME OR ALL DOCTOR/SURGEON BILLS FOR OPERATIONS"
   PAYSDS3  = "PLAN 3 - PLAN PAYS DENTAL SERVICES"
   PAPREDR3 = "PLAN 3 - PLAN PAYS PRESCRIPTION DRUGS"
   PAYMDAB3 = "PLAN 3 - PLAN PAYS MENTAL HEALTH, ALCOHOLISM, DRUG ABUSE"
   PECOVPL3 = "PLAN 3 - THIS PERSON'S COVERAGE STATUS UNDER THIS PLAN"
   TYPEPL4  = "PLAN 4 - TYPE OF PLAN"
   HMO4     = "PLAN 4 - HEALTH MAINTENANCE ORGANIZATION OR HMO"
   OBTEMUN4 = "PLAN 4 - PLAN OBTAINED THROUGH EMPLOYER OR UNION"
   CAREMUN4 = "PLAN 4 - NOW CARRIED THROUGH EMPLOYER OR UNION"
   EMHEINS4 = "PLAN 4 - EMPLOYER/UNION PAYS FOR HEALTH INSURANCE"
   EMPAYAL4 = "PLAN 4 - EMPLOYER/UNION PAYS ALL OR PART"
   NAMEPLA4 = "PLAN 4 - IN WHOSE NAME IS PLAN"
   PAYALBL4 = "PLAN 4 - PLAN PAYS SOME OR ALL OF HOSPITAL BILLS"
   PAHOSBL4 = "PLAN 4 - PLAN PAYS SOME OR ALL DOCTOR/SURGEON BILLS FOR OPERATIONS"
   PAYSDS4  = "PLAN 4 - PLAN PAYS DENTAL SERVICES"
   PAPREDR4 = "PLAN 4 - PLAN PAYS PRESCRIPTION DRUGS"
   PAYMDAB4 = "PLAN 4 - PLAN PAYS MENTAL HEALTH, ALCOHOLISM, DRUG ABUSE"
   PECOVPL4 = "PLAN 4 - THIS PERSON'S COVERAGE STATUS UNDER THIS PLAN"
   TYPEPL5  = "PLAN 5 - TYPE OF PLAN"
   HMO5     = "PLAN 5 - HEALTH MAINTENANCE ORGANIZATION OR HMO"
   OBTEMUN5 = "PLAN 5 - PLAN OBTAINED THROUGH EMPLOYER OR UNION"
   CAREMUN5 = "PLAN 5 - NOW CARRIED THROUGH EMPLOYER OR UNION"
   EMHEINS5 = "PLAN 5 - EMPLOYER/UNION PAYS FOR HEALTH INSURANCE"
   EMPAYAL5 = "PLAN 5 - EMPLOYER/UNION PAYS ALL OR PART"
   NAMEPLA5 = "PLAN 5 - IN WHOSE NAME IS PLAN"
   PAHOSBL5 = "PLAN 5 - PLAN PAYS SOME OR ALL OF HOSPITAL BILLS"
   PALDOCB5 = "PLAN 5 - PLAN PAYS SOME OR ALL DOCTOR/SURGEON BILLS FOR OPERATIONS"
   PAYSDS5  = "PLAN 5 - PLAN PAYS DENTAL SERVICES"
   PAPREDR5 = "PLAN 5 - PLAN PAYS PRESCRIPTION DRUGS"
   PAYMDAB5 = "PLAN 5 - PLAN PAYS MENTAL HEALTH, ALCOHOLISM, DRUG ABUSE"
   PECOVPL5 = "PLAN 5 - THIS PERSON'S COVERAGE STATUS UNDER THIS PLAN"
   PHI      = "PRIVATE HEALTH INSURANCE"
   PHIHOCO  = "PRIVATE HEALTH INSURANCE:  HOSPITAL COVERAGE"
   PHIDSC   = "PRIVATE HEALTH INSURANCE:  DOCTOR/SURGEON COVERAGE"
   PHIHODOS = "PRIVATE HEALTH INSURANCE:  HOSPITAL AND/OR DOCTOR/SURGEON COVERAGE"
   PHIHODSC = "PRIVATE HEALTH INSURANCE:  HOSPITAL AND/OR DOCTOR/SURGEON COVERAGE"
   PHIDENC  = "PRIVATE HEALTH INSURANCE (NOT SINGLE SERVICE):  DENTAL COVERAGE"
   PHIPRESC = "PRIVATE HEALTH INSURANCE (NOT SINGLE SERVICE):  PRESCRIPTIONS"
   PHIMHADA = "PRIVATE HEALTH INSURANCE:  MENTAL HEALTH, ALCOHOLISM, DRUG ABUSE"
   MEDPHI   = "MEDICARE AND/OR PRIVATE HEALTH INSURANCE"
   MEDPHIHC = "MEDICARE AND/OR PRIVATE HEALTH INSURANCE: HOSPITAL COVERAGE"
   MEDPHIDS = "MEDICARE AND/OR PRIVATE HEALTH INSURANCE: DOCTOR/SURGEON COVERAGE"
   PHIMECHS = "PRIVATE HEALTH INSURANCE AND/OR MEDICARE COVERAGE - HOSPITAL AND SURGICAL"
   PHIMEHSC = "PRIVATE HEALTH INSURANCE AND/OR MEDICARE: HOSPITAL AND/OR SURGICAL COVERAGE"
   TYPEPHIC = "TYPE OF PRIVATE HEALTH INSURANCE COVERAGE"
   REAUNEMP = "WHY NO COVERAGE: JOB LAYOFF, JOB LOSS OR ANY REASONS RELATED TO UNEMPLOYMENT"
   PHILLAGE = "WHY NO COVERAGE: CAN'T OBTAIN BECAUSE OF POOR HEALTH, ILLNESS OR AGE"
   CAFFHI   = "WHY NO COVERAGE: TOO EXPENSIVE, CAN'T AFFORD HEALTH INSURANCE"
   DIPREVI  = "WHY NO COVERAGE: DISSATISFIED WITH PREVIOUS INSURANCE"
   DONTBEI  = "WHY NO COVERAGE: DON'T BELIEVE IN INSURANCE"
   BEENHEA  = "WHY NO COVERAGE: HAVE BEEN HEALTHY, HAVEN'T NEEDED HEALTH INSURANCE"
   MILCVETB = "WHY NO COVERAGE: SOME OTHER HEALTH PLAN, INCLUDING MILITARY CARE AND VETERAN'S BENEFITS"
   SOTHREA  = "WHY NO COVERAGE: SOME OTHER REASON"
   WREAGIV  = "WHETHER REASON GIVEN"
   NOMEDPHI = "MAIN REASON NO MEDICARE OR PRIVATE HEALTH INSURANCE"
   ASINSCOV = "ANY SINGLE SERVICE COVERAGE"
   SINSCOPR = "SINGLE SERVICE COVERAGE: PRESCRIPTIONS"
   SISCOVEC = "SINGLE SERVICE COVERAGE:  EYE CARE"
   SISCOVCT = "SINGLE SERVICE COVERAGE:  CANCER TREATMENT"
   SISCOVCA = "SINGLE SERVICE COVERAGE:  CATASTROPHIC"
   SISCOVNH = "SINGLE SERVICE COVERAGE:  NURSING HOME CARE"
   SISCOVAC = "SINGLE SERVICE COVERAGE:  ACCIDENTS"
   SISCOVDC = "SINGLE SERVICE COVERAGE:  DENTAL CARE"
   SISCOVOT = "SINGLE SERVICE COVERAGE:  OTHER"
   ADCOVSIS = "ANY DENTAL COVERAGE:  FROM COMPREHENSIVE OR SINGLE SERVICE PLAN"
   PRCOVSIS = "ANY PRESCRIPTION COVERAGE:  FROM COMPREHENSIVE OR SINGLE SERVICE PLAN"
   AFDC     = "AFDC OR ADC (ASSISTANCE RECEIVED BY THIS PERSON)"
   SUPSECIN = "SUPPLEMENTAL SECURITY INCOME"
   REMEDI12 = "RECEIVED MEDICAID -PAST 12 MONTHS"
   MEDITYCD = "MEDICAID - TYPE OF CARD"
   COVASPHC = "COVERED BY OTHER PUBLIC ASSISTANCE PROGRAM THAT PAYS FOR HEALTH CARE"
   MILRETPA = "NOW RECEIVES MILITARY RETIREMENT PAYMENTS"
   TYPEMIBE = "TYPE OF MILITARY BENEFITS"
   COVCHAVA = "NOW COVERED BY CHAMP-VA"
   COVHECMD = "NOW COVERED BY ANY OTHER PROGRAM PROVIDING HEALTH CARE FOR MILITARY DEPENDENTS"
   SEREDISA = "SERVICE RELATED DISABILITY"
   SERRELDI = "VA COMPENSATION FOR SERVICE RELATED DISABILITY"
   PUBASHIC = "PUBLIC ASSISTANCE HEALTH INSURANCE COVERAGE"
   MEDICURR = "MEDICAID USE AND CURRENCY"
   MILIHEBE = "MILITARY HEALTH BENEFIT"
   LAIOF12  = "LAID OFF/LOST JOB IN PAST 12 MONTHS"
   TLAIOF12 = "TIMES LAID OFF/LOST JOB IN PAST 12 MONTHS"
   MLAIOFOT = "MONTH LAID OFF/LOST JOB LAST OR ONLY TIME"
   MLAIOFST = "MONTH LAID OFF/LOST JOB SECOND TIME AGO"
   MLAIOFTT = "MONTH LAID OFF/LOST JOB THIRD TIME AGO"
   FAMLOSS  = "LOSS OF HEALTH INSURANCE COVERAGE THROUGH LAYOFF/JOB LOSS IN FAMILY"
   COVHINS  = "COVERED BY OTHER HEALTH INSURANCE PLAN AFTER LOSS OF JOB RELATED PLAN"
   TIMEWHI  = "LENGTH OF TIME WITHOUT ANY HEALTH INSURANCE"
   COVWINC  = "COVERED BY SOME HEALTH CARE PROGRAM FOR THOSE WITH TIME WITHOUT HEALTH INSURANCE COVERAGE"
   TCOVHCJL = "LENGTH OF TIME COVERED BY SOME HEALTH CARE DURING LAYOFF/JOB LOSS"
   FAMSTJLO = "LAYOFF/JOB LOSS STATUS OF FAMILY LIVING IN HOUSEHOLD"
   HEACOVR  = "HEALTH COVERAGE RECODE"
   RECUNINS = "RECEIPT OF UNEMPLOYMENT INSURANCE"
   HMOCOV1  = "HMO COVERAGE:  PLAN 1"
   HMOCOV2  = "HMO COVERAGE:  PLAN 2"
   HMOCOV3  = "HMO COVERAGE:  PLAN 3"
   HMOCOV4  = "HMO COVERAGE:  PLAN 4"
   HMOCOV5  = "HMO COVERAGE:  PLAN 5"
   PHICOHMO = "PRIVATE HEALTH INSURANCE COVERAGE HMO"
   COSECOND = "COMPENSATION FROM VA FOR SERVICE-CONNECTED DISABILITY"
   COVCHAMP = "COVERED BY CHAMPUS"
   APSCONDC = "APPLIED TO VA FOR SERVICE-CONNECTED DISABILITY COMPENSATION"
   STAVAAPP = "STATUS OF VA APPLICATION"
   TM1LAOFF = "LAID OFF OR LOST JOB 1ST TIME"
   TIM1LAOM = "MONTH LAID OFF OR LOST JOB 1ST TIME"
   TIM1LAOY = "YEAR LAID OFF OR LOST JOB 1ST TIME"
   TM2LAOFF = "LAID OFF OR LOST JOB 2ND TIME"
   TIM2LAOM = "MONTH LAID OFF OR LOST JOB 2ND TIME"
   TIM2LAOY = "YEAR LAID OFF OR LOST JOB 2ND TIME"
   TM3LAOFF = "LAID OFF OR LOST JOB 3RD TIME"
   TIM3LAOM = "MONTH LAID OFF OR LOST JOB 3RD TIME"
   TIM3LAOY = "YEAR LAID OFF OR LOST JOB 3RD TIME"
   PL1PLREC = "PLAN 1 - IN WHOSE NAME IS PLAN RECODE"
   PL2PLREC = "PLAN 2 - IN WHOSE NAME IS PLAN RECODE"
   PL3PLREC = "PLAN 3 - IN WHOSE NAME IS PLAN RECODE"
   PL4PLREC = "PLAN 4 - IN WHOSE NAME IS PLAN RECODE"
   PL5PLREC = "PLAN 5 - IN WHOSE NAME IS PLAN RECODE"
   ;
* ASSOCIATE VARIABLES WITH FORMAT VALUES;
 
FORMAT
   RECTYPE   HIN001X.    YEAR      HIN002X.    QUARTER   HIN003X.
   PSUNUMR   $HIN004X.   WEEKCEN   HIN005X.    SEGNUM    $HIN006X.
   HHNUM     $HIN007X.   PNUM      $HIN008X.   WEEKPROC  HIN009X.
   LIVQTR    HIN010X.    PHONE     HIN011X.    SEX       HIN012X.
   AGE       HIN013X.    AGER1     HIN014X.    AGER2     HIN015X.
   AGER3     HIN016X.    BIRTHMO   $HIN017X.   BIRTHYR   $HIN018X.
   RACE      HIN019X.    RACER1    HIN020X.    RACER2    HIN021X.
   RACER3    HIN022X.    HISPANIC  HIN023X.    MARSTAT   HIN024X.
   VETERAN   HIN025X.    RESERVE   HIN026X.    EDUC      HIN027X.
   EDUCR     HIN028X.    EDUCAD    HIN029X.    EDUCADR   HIN030X.
   INCFAM20  HIN031X.    INCFAM    HIN032X.    INCFAMR   HIN033X.
   POVERTY   HIN034X.    FAMNUM    $HIN035X.   FAMREL    $HIN036X.
   FAMRELR   HIN037X.    FAMSIZE   HIN038X.    FAMSIZER  HIN039X.
   PARENT    HIN040X.    MAJACT    HIN041X.    HLTHSTAT  HIN042X.
   LATOTAL   HIN043X.    LAWORK    HIN044X.    LASCHOOL  HIN045X.
   LACARE    HIN046X.    EMPLOY    HIN047X.    WKCLASS   HIN048X.
   INDUS     HIN049X.    INDUSR1   HIN050X.    INDUSR2   HIN051X.
   OCCUP     HIN052X.    OCCUPR1   HIN053X.    OCCUPR2   HIN054X.
   RESPOND   HIN055X.    CONDLIST  HIN056X.    HEIGHT    HIN057X.
   WEIGHT    HIN058X.    RADAY     HIN059X.    BDDAY     HIN060X.
   WLDAY     HIN061X.    SLDAY     HIN062X.    OTHDAY    HIN063X.
   BDDAY12   HIN064X.    BDDAY12R  HIN065X.    DV12      HIN066X.
   DVINT     HIN067X.    NCOND     HIN068X.    NACUTE    HIN069X.
   NDV2      HIN070X.    HEP12     HIN071X.    HDA12     HIN072X.
   HEP12X    HIN073X.    HDA12X    HIN074X.    DISDA5    HIN075X.
   DIS6X     HIN076X.    DISDAY6X  HIN077X.    DISDA12X  HIN078X.
   YRPRERES  HIN079X.    YRSINUS   HIN080X.    WTINT     HIN081X.
   SUBTYPE   HIN082X.    STRATUM   HIN083X.    REGION    HIN084X.
   MSASIZE   HIN085X.    PSUTYPE   HIN086X.    MSA       HIN087X.
   PSUPSEUD  HIN088X.    CCFACT    HIN089X.    WTFQ      HIN090X.
   WTFS      HIN091X.    WTFA      HIN092X.    WT65      HIN093X.
   RADAYWP   HIN094X.    BDDAYWP   HIN095X.    WLDAYWP   HIN096X.
   SLDAYWP   HIN097X.    DV12WPQ   HIN098X.    DV12WPS   HIN099X.
   DV12WPA   HIN100X.    HDA12WPQ  HIN101X.    HDA12WPS  HIN102X.
   HDA12WPA  HIN103X.    HEP12WP   HIN104X.    MCARC     HIN105X.
   MCARCH    HIN106X.    MCARCDS   HIN107X.    MC65      HIN108X.
   MCHDSC    HIN109X.    MCHDSS    HIN110X.    TYPEPL1   HIN111X.
   HMO1      HIN112X.    OBTEMUN1  HIN113X.    CAREMUN1  HIN114X.
   EMHEINS1  HIN115X.    EMPAYAL1  HIN116X.    NAMEPLA1  HIN117X.
   PAHOSBL1  HIN118X.    PALDOCB1  HIN119X.    PAYSDS1   HIN120X.
   PAPREDR1  HIN121X.    PAYMDAB1  HIN122X.    PECOVPL1  HIN123X.
   TYPEPL2   HIN124X.    HMO2      HIN125X.    OBTEMUN2  HIN126X.
   CAREMUN2  HIN127X.    EMHEINS2  HIN128X.    EMPAYAL2  HIN129X.
   NAMEPLA2  HIN130X.    PAHOSBL2  HIN131X.    PALDOCB2  HIN132X.
   PAYSDS2   HIN133X.    PAPREDR2  HIN134X.    PAYMDAB2  HIN135X.
   PECOVPL2  HIN136X.    TYPEPL3   HIN137X.    HMO3      HIN138X.
   OBTEMUN3  HIN139X.    CAREMUN3  HIN140X.    EMHEINS3  HIN141X.
   EMPAYAL3  HIN142X.    NAMEPLA3  HIN143X.    PAHOSBL3  HIN144X.
   PALDOCB3  HIN145X.    PAYSDS3   HIN146X.    PAPREDR3  HIN147X.
   PAYMDAB3  HIN148X.    PECOVPL3  HIN149X.    TYPEPL4   HIN150X.
   HMO4      HIN151X.    OBTEMUN4  HIN152X.    CAREMUN4  HIN153X.
   EMHEINS4  HIN154X.    EMPAYAL4  HIN155X.    NAMEPLA4  HIN156X.
   PAYALBL4  HIN157X.    PAHOSBL4  HIN158X.    PAYSDS4   HIN159X.
   PAPREDR4  HIN160X.    PAYMDAB4  HIN161X.    PECOVPL4  HIN162X.
   TYPEPL5   HIN163X.    HMO5      HIN164X.    OBTEMUN5  HIN165X.
   CAREMUN5  HIN166X.    EMHEINS5  HIN167X.    EMPAYAL5  HIN168X.
   NAMEPLA5  HIN169X.    PAHOSBL5  HIN170X.    PALDOCB5  HIN171X.
   PAYSDS5   HIN172X.    PAPREDR5  HIN173X.    PAYMDAB5  HIN174X.
   PECOVPL5  HIN175X.    PHI       HIN176X.    PHIHOCO   HIN177X.
   PHIDSC    HIN178X.    PHIHODOS  HIN179X.    PHIHODSC  HIN180X.
   PHIDENC   HIN181X.    PHIPRESC  HIN182X.    PHIMHADA  HIN183X.
   MEDPHI    HIN184X.    MEDPHIHC  HIN185X.    MEDPHIDS  HIN186X.
   PHIMECHS  HIN187X.    PHIMEHSC  HIN188X.    TYPEPHIC  HIN189X.
   REAUNEMP  HIN190X.    PHILLAGE  HIN191X.    CAFFHI    HIN192X.
   DIPREVI   HIN193X.    DONTBEI   HIN194X.    BEENHEA   HIN195X.
   MILCVETB  HIN196X.    SOTHREA   HIN197X.    WREAGIV   HIN198X.
   NOMEDPHI  HIN199X.    ASINSCOV  HIN200X.    SINSCOPR  HIN201X.
   SISCOVEC  HIN202X.    SISCOVCT  HIN203X.    SISCOVCA  HIN204X.
   SISCOVNH  HIN205X.    SISCOVAC  HIN206X.    SISCOVDC  HIN207X.
   SISCOVOT  HIN208X.    ADCOVSIS  HIN209X.    PRCOVSIS  HIN210X.
   AFDC      HIN211X.    SUPSECIN  HIN212X.    REMEDI12  HIN213X.
   MEDITYCD  HIN214X.    COVASPHC  HIN215X.    MILRETPA  HIN216X.
   TYPEMIBE  HIN217X.    COVCHAVA  HIN218X.    COVHECMD  HIN219X.
   SEREDISA  HIN220X.    SERRELDI  HIN221X.    PUBASHIC  HIN222X.
   MEDICURR  HIN223X.    MILIHEBE  HIN224X.    LAIOF12   HIN225X.
   TLAIOF12  HIN226X.    MLAIOFOT  $HIN227X.   MLAIOFST  $HIN228X.
   MLAIOFTT  $HIN229X.   FAMLOSS   HIN230X.    COVHINS   HIN231X.
   TIMEWHI   HIN232X.    COVWINC   HIN233X.    TCOVHCJL  HIN234X.
   FAMSTJLO  HIN235X.    HEACOVR   HIN236X.    RECUNINS  HIN237X.
   HMOCOV1   HIN238X.    HMOCOV2   HIN239X.    HMOCOV3   HIN240X.
   HMOCOV4   HIN241X.    HMOCOV5   HIN242X.    PHICOHMO  HIN243X.
   COSECOND  HIN244X.    COVCHAMP  HIN245X.    APSCONDC  HIN246X.
   STAVAAPP  HIN247X.    TM1LAOFF  $HIN248X.   TIM1LAOM  $HIN249X.
   TIM1LAOY  $HIN250X.   TM2LAOFF  $HIN251X.   TIM2LAOM  $HIN252X.
   TIM2LAOY  $HIN253X.   TM3LAOFF  $HIN254X.   TIM3LAOM  $HIN255X.
   TIM3LAOY  $HIN256X.   PL1PLREC  HIN257X.    PL2PLREC  HIN258X.
   PL3PLREC  HIN259X.    PL4PLREC  HIN260X.    PL5PLREC  HIN261X.
   ;
 
PROC CONTENTS DATA=NHIS.HEALTHIN;
 
PROC FREQ DATA=NHIS.HEALTHIN;
TITLE1 'FREQUENCY REPORT FOR 1989 NHIS HEALTH INSURANCE SUPPLEMENT PUBLIC USE FILE';
TITLE2 '(WEIGHTED)';
TABLES RECTYPE/LIST MISSING;
WEIGHT WTFA;
 
PROC FREQ DATA=NHIS.HEALTHIN;
TITLE1 'FREQUENCY REPORT FOR 1989 NHIS HEALTH INSURANCE SUPPLEMENT PUBLIC USE FILE';
TITLE2 '(UNWEIGHTED)';
TABLES RECTYPE/LIST MISSING;
 
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
              STATEMENT: FORMAT _ALL_;
RUN;
