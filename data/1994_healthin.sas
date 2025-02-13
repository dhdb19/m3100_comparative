DM 'CLE LOG; CLE OUT';
**************************************************************************
     October 27, 2005
 
THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
FILE FROM THE NHIS 1994 HEALTHIN.DAT ASCII FILE.
 
NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
      GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
      DOCUMENTATION.
 
THIS IS STORED IN HEALTHIN.SAS
*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;
 
LIBNAME NHIS    'C:\NHIS1994\';
LIBNAME LIBRARY 'C:\NHIS1994\';

FILENAME ASCIIDAT 'C:\NHIS1994\HEALTHIN.DAT';
  
* DEFINE VARIABLE VALUES FOR REPORT;
 
PROC FORMAT LIBRARY=LIBRARY;
  VALUE  HIN001X
   85               = "Health Insurance"
   ;
  VALUE  HIN002X
   94               = "1994"
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
   01               = "Week 01"
   02               = "Week 02"
   03               = "Week 03"
   04               = "Week 04"
   05               = "Week 05"
   06               = "Week 06"
   07               = "Week 07"
   08               = "Week 08"
   09               = "Week 09"
   10               = "Week 10"
   11               = "Week 11"
   12               = "Week 12"
   13               = "Week 13"
   ;
  VALUE $HIN006X
   ;
  VALUE $HIN007X
   ;
  VALUE $HIN008X
   ;
  VALUE  HIN009X
   01               = "Week 01"
   02               = "Week 02"
   03               = "Week 03"
   04               = "Week 04"
   05               = "Week 05"
   06               = "Week 06"
   07               = "Week 07"
   08               = "Week 08"
   09               = "Week 09"
   10               = "Week 10"
   11               = "Week 11"
   12               = "Week 12"
   13               = "Week 13"
   ;
  VALUE  HIN010X
   0                = "Interview not late"
   1                = "One week late"
   2                = "Two weeks late"
   3                = "Unknown"
   ;
  VALUE  HIN011X
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
  VALUE  HIN012X
   1                = "Yes, phone number given"
   2                = "Yes, no phone number given"
   3                = "No"
   4                = "Unknown"
   ;
  VALUE  HIN013X
   1                = "Male"
   2                = "Female"
   ;
  VALUE  HIN014X
   00               = "Under 1 year"
   01-98            = "Number of years"
   99               = "99+ years of age"
   ;
  VALUE  HIN015X
   1                = "Under 5 years"
   2                = "5-17 years"
   3                = "18-24 years"
   4                = "25-44 years"
   5                = "45-64 years"
   6                = "65-69 years"
   7                = "70-74 years"
   8                = "75 years and over"
   ;
  VALUE  HIN016X
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
  VALUE  HIN017X
   00-35            = "Months"
   36               = "Over 3 years"
   ;
  VALUE $HIN018X
   ;
  VALUE $HIN019X
   "01"          = "January"         "08"     =  "August"
   "02"          = "February"        "09"     =  "September"
   "03"          = "March"           "10"     =  "October"
   "04"          = "April"           "11"     =  "November"
   "05"          = "May"             "12"     =  "December"
   "06"          = "June"            "99"     =  "Unknown"
   "07"          = "July"
   ;
  VALUE $HIN020X
   "1800"-"1899"    = "1800-1899"
   "1900"-"1995"    = "1900-1995"
   "9999"           = "Unknown"
   ;
  VALUE  HIN021X
   0                = "Hispanic Origin Known"
   1                = "Hispanic Origin Imputed from Reference Person"
   ;
  VALUE  HIN022X
   01               = "White"
   02               = "Black"
   03               = "Indian (American)"
   04               = "Eskimo"
   05               = "Aleut"
   06               = "Chinese"
   07               = "Filipino"
   08               = "Hawaiian"
   09               = "Korean"
   10               = "Vietnamese"
   11               = "Japanese"
   12               = "Asian Indian"
   13               = "Samoan"
   14               = "Guamanian"
   15               = "Other API"
   16               = "Other race"
   17               = "Multiple race"
   99               = "Unknown"
   ;
  VALUE  HIN023X
   1                = "White"
   2                = "Black"
   3                = "Other"
   ;
  VALUE  HIN024X
   1                = "White"
   2                = "Non-white"
   ;
  VALUE  HIN025X
   1                = "Black"
   2                = "Non-black"
   ;
  VALUE  HIN026X
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
  VALUE  HIN027X
   0                = "Under 14 years"
   1                = "Married - spouse in household"
   2                = "Married - spouse not in household"
   3                = "Widowed"
   4                = "Divorced"
   5                = "Separated"
   6                = "Never married"
   7                = "Unknown"
   ;
  VALUE  HIN028X
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
  VALUE  HIN029X
   0                = "Non-veteran"
   1                = "All service in Guard/Reserve"
   2                = "Some service in Guard/Reserve"
   3                = "Unknown if all service in Guard/Reserve"
   4                = "No active service in Guard/Reserve"
   5                = "Unknown if ever active member in Guard/Reserve or served in Armed Forces"
   .                = "Under 18 years of age"
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
   .                = "Under 5 years of age"
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
   .                = "Under 5 years of age"
   ;
  VALUE  HIN032X
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
  VALUE  HIN033X
   0                = "None; kindergarten only"
   1                = "1-8 years (elementary)"
   2                = "9-11 years (high school)"
   3                = "12 years (high school graduate)"
   4                = "1-3 years (college)"
   5                = "4 years (college graduate)"
   6                = "5+ years (post-college)"
   7                = "Unknown"
   ;
  VALUE  HIN034X
   1                = "Less than $20,000"
   2                = "$20,000 or more"
   3                = "Unknown"
   ;
  VALUE  HIN035X
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
  VALUE  HIN036X
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
  VALUE  HIN037X
   1                = "At or above poverty threshold"
   2                = "Below poverty threshold"
   3                = "Unknown"
   ;
  VALUE $HIN038X
   "&"              = "Primary individual"
   "-"              = "Secondary individual"
   "0"              = "Primary family"
   "1"-"9"          = "Secondary family"
   ;
  VALUE $HIN039X
   "&"              = "Reference person, living alone"
   "0"              = "Reference person, 2+ persons in household"
   "1"              = "Spouse, other spouse NOT in Armed Forces and living at home"
   "2"              = "Spouse, other spouse IN Armed Forces and living at home"
   "3"              = "Child of reference person or spouse"
   "4"              = "Grandchild of reference person or spouse"
   "5"              = "Parent of reference person or spouse"
   "6"              = "Other relative"
   "7"              = "Child of ineligible reference person"
   "9"              = "Unknown"
   ;
  VALUE  HIN040X
   1                = "Living alone"
   2                = "Living only with non-relative"
   3                = "Living with spouse"
   4                = "Living with relative - other"
   ;
  VALUE  HIN041X
   ;
  VALUE  HIN042X
   1-8              = "Number of members"
   9                = "9+ members"
   ;
  VALUE  HIN043X
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
   .                = "NA (25+ years old or never married)"
   ;
  VALUE  HIN044X
   1                = "Working"
   2                = "Keeping house"
   3                = "Going to school"
   4                = "Something else"
   5                = "Unknown"
   .                = "NA (Under 18 years)"
   ;
  VALUE  HIN045X
   1                = "Excellent"
   2                = "Very Good"
   3                = "Good"
   4                = "Fair"
   5                = "Poor"
   6                = "Unknown"
   ;
  VALUE  HIN046X
   1                = "Unable to perform major activity"
   2                = "Limited in kind/amount major activity"
   3                = "Limited in other activities"
   4                = "Not limited (includes unknowns)"
   ;
  VALUE  HIN047X
   1                = "Unable to work"
   2                = "Limited in kind/amount of work"
   3                = "Limited in other activities"
   4                = "Not limited (includes unknowns)"
   .                = "NA (under 18 years, 70+ years)"
   ;
  VALUE  HIN048X
   1                = "Unable to attend school"
   2                = "Attends special school/classes"
   3                = "Needs special school/classes"
   4                = "Limited in school attendance"
   5                = "Limited in other activities"
   6                = "Not limited (includes unknowns)"
   .                = "NA (under 5 years or 18+ years)"
   ;
  VALUE  HIN049X
   1                = "Unable to perform personal care needs"
   2                = "Limited in performing other routine needs"
   3                = "Not limited in performing personal or routine needs"
   4                = "Unknown"
   .                = "NA (under 5 years; 5-59 years not limited; 70+ years old)"
   ;
  VALUE  HIN050X
   1                = "Worked in past 2 weeks"
   2                = "Did not work, has job; not on lay-off and not looking for"
   3                = "Did not work, has job; looking for work"
   4                = "Did not work, has job; on lay-off"
   5                = "Did not work, has job; on lay- off and looking for work"
   6                = "Did not work, has job; unknown if looking or on lay-off"
   7                = "Did not work, has no job; looking for work or on lay-off"
   8                = "Not in Labor Force (18+ years)"
   .                = "NA (Under 18 years old)"
   ;
  VALUE  HIN051X
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
  VALUE  HIN052X
   010              = "Code number"
   .                = "NA"
   ;
  VALUE  HIN053X
   ;
  VALUE  HIN054X
   ;
  VALUE  HIN055X
   001              = "Code number"
   .                = "NA"
   ;
  VALUE  HIN056X
   ;
  VALUE  HIN057X
   ;
  VALUE  HIN058X
   1                = "Self-entirely"
   2                = "Self-partly"
   3                = "Proxy"
   4                = "Unknown"
   ;
  VALUE  HIN059X
   1                = "Condition List 1, Skin and musculoskeletal"
   2                = "Condition List 2, Impairments"
   3                = "Condition List 3, Digestive"
   4                = "Condition List 4, Miscellaneous"
   5                = "Condition List 5, Circulatory"
   6                = "Condition List 6, Respiratory"
   7                = "Unknown"
   ;
  VALUE  HIN060X
   36-98            = "Number of inches"
   99               = "Unknown"
   .                = "Under 18 years of age"
   ;
  VALUE  HIN061X
   050-500          = "Number of pounds"
   501              = "Unknown"
   .                = "Under 18 years of age"
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
   00               = "None"
   01-14            = "Days"
   ;
  VALUE  HIN065X
   00               = "None"
   01-14            = "Days"
   ;
  VALUE  HIN066X
   00               = "None"
   01-14            = "Days"
   ;
  VALUE  HIN067X
   000              = "None"
   001-365          = "1-365 days"
   366              = "Unknown"
   ;
  VALUE  HIN068X
   0                = "None"
   1                = "1-7 days"
   2                = "8-30 days"
   3                = "31-180 days"
   4                = "181-365 days"
   5                = "Unknown"
   ;
  VALUE  HIN069X
   000              = "None"
   001-996          = "Visits"
   997              = "997+ visits"
   998              = "Unknown"
   ;
  VALUE  HIN070X
   0                = "Never"
   1                = "Less than 1 year"
   2                = "1 to less than 2 years"
   3                = "2 to less than 5 years"
   4                = "5 years or more"
   5                = "Unknown"
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
   ;
  VALUE  HIN080X
   ;
  VALUE  HIN081X
   ;
  VALUE  HIN082X
   1                = "Less than 1 year"
   2                = "1 yr., less than 5 years"
   3                = "5 yrs., less than 10 yrs."
   4                = "10 yrs., less than 15 yrs."
   5                = "15 years or more"
   9                = "Unknown"
   .                = "NA (Foreign born)"
   ;
  VALUE  HIN083X
   1                = "Less than 1 year"
   2                = "1 yr., less than 5 years"
   3                = "5 yrs., less than 10 yrs."
   4                = "10 yrs., less than 15 yrs."
   5                = "15 years or more"
   9                = "Unknown"
   .                = "NA (U.S. born)"
   ;
  VALUE  HIN084X
   ;
  VALUE  HIN085X
   0                = "Permit"
   1                = "Area, oversampled for blacks"
   2                = "Area, not oversampled for blacks"
   ;
  VALUE  HIN086X
   ;
  VALUE  HIN087X
   1                = "Northeast"
   2                = "Midwest"
   3                = "South"
   4                = "West"
   ;
  VALUE  HIN088X
   1                = "1,000,000 or more"
   2                = "250,000 - 999,999"
   3                = "100,000 - 249,999"
   4                = "Under 100,000"
   5                = "Other Urban Areas"
   6                = "Rural Areas (except in MSA)"
   .                = "Non-MSA"
   ;
  VALUE  HIN089X
   1                = "MSA - Self-representing"
   3                = "MSA - Nonself-representing"
   4                = "Non-MSA - Self-representing"
   6                = "Non-MSA - Nonself-representing"
   ;
  VALUE  HIN090X
   1                = "MSA - Central City"
   2                = "MSA - Not Central City"
   3                = "Non-MSA - Nonfarm"
   4                = "Non-MSA - Farm"
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
   0                = "Only one record type dummied"
   1                = "Complete dummy record"
   .                = "Not dummied"
   ;
  VALUE  HIN109X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HIN110X
   1                = "Part A - Hospital only"
   2                = "Part B - Medical only"
   3                = "Both part A and part B"
   4                = "Card N.A."
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if covered by Medicare"
   ;
  VALUE  HIN111X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if covered by Medicare, covered but part A/B coverage unknown from card"
   ;
  VALUE  HIN112X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if covered by Medicare, covered but part A/B coverage unknown from card"
   ;
  VALUE  HIN113X
   1                = "Less than 6 months"
   2                = "6 months, but less than 1 year"
   3                = "1 year but less than 2 years"
   4                = "2 years or more"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if covered by Medicare, covered but age"
   ;
  VALUE  HIN114X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HIN115X
   1                = "Card seen"
   2                = "No card seen"
   3                = "Other card seen"
   8                = "Not ascertained"
   .                = "NA; No or Unknown if covered by Medicaid"
   ;
  VALUE $HIN116X
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
   "98"             = "Not ascertained"
   " "              = "NA; No or unknown if covered by Medicaid; covered but Medicaid card not seen"
   ;
  VALUE $HIN117X
   "01"-"31"        = "Day of month"
   "98"             = "Not ascertained"
   " "              = "NA; No or unknown if covered by Medicaid; covered but Medicaid card not seen"
   ;
  VALUE  HIN118X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HIN119X
   0                = "Less than 6 months"
   1                = "6 months but less than one year"
   2                = "1 yr, but less than 2 years"
   3                = "2 years but less than 5 years"
   4                = "5 years or more"
   5                = "On and off for less than 2 years"
   6                = "On and off for 2 yrs but less than 5 yrs"
   7                = "On and off for 5 yrs or more"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if covered by Medicaid last month"
   ;
  VALUE  HIN120X
   0                = "Single person covered by Medicaid"
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HIN121X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HIN122X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   ;
  VALUE  HIN123X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   ;
  VALUE  HIN124X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HIN125X
   01-20            = "Refer to HI Plan Listing"
   55               = "id"
   77               = "id"
   88               = "id"
   98               = "Not ascertained"
   99               = "DK or refused to say if has insurance"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HIN126X
   0                = "Not known to be covered by this plan"
   1                = "Covered by this general purpose plan"
   2                = "Covered by this single service plan"
   8                = "Unknown which family member is covered by this plan"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HIN127X
   1                = "In own name"
   2                = "Person not in household"
   3                = "Someone else in family or unknown"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HIN128X
   1                = "Employer"
   2                = "Union"
   3                = "Through workplace but DK if employer or union"
   4                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HIN129X
   1                = "All"
   2                = "Some"
   3                = "None"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HIN130X
   0                = "Zero"
   1                = "$1-9"
   2                = "$10-19"
   3                = "$20-49"
   4                = "$50-99"
   5                = "$100-199"
   6                = "$200-499"
   7                = "$500 or more"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual; entire premium paid by employer"
   ;
  VALUE  HIN131X
   1                = "Variety of service"
   2                = "Single service/care"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HIN132X
   01               = "Accidents"
   02               = "AIDS care"
   03               = "Cancer treatment"
   04               = "Catastrophic care"
   05               = "Dental care"
   06               = "Disability insurance"
   07               = "Hospice care"
   08               = "Hospitalization-only"
   09               = "Long term care"
   10               = "Prescriptions"
   11               = "Vision care"
   12               = "Other"
   98               = "Not ascertained"
   99               = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance, this plan not mentioned for this family/individual, not single service plan"
   ;
  VALUE  HIN133X
   1                = "HMO/IPA"
   2                = "Other"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has health insurance; this plan not mentioned for this family/individual, single service plan"
   ;
  VALUE  HIN134X
   1                = "Any doctor"
   2                = "Select from group/list"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has health insurance; this plan not mentioned for this family/individual, single service plan"
   ;
  VALUE  HIN135X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN136X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN137X
   0                = "No person under 18 years"
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN138X
   0                = "No female over 39 years"
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN139X
   00               = "Single Service Plan"
   01               = "Blue Cross and/or Blue Shield"
   02               = "Other major fee for service plan"
   03               = "Group HMO"
   04               = "Staff HMO"
   05               = "IPA"
   06               = "Network"
   07               = "Mixed HMO"
   08               = "Other HMO"
   09               = "PPO"
   77               = "Has insurance, DK name"
   88               = "Other insurance"
   99               = "DK if has insurance or refused"
   .                = "NA, no or unknown if has private health insurance; has private health insurance but no family plan"
   ;
  VALUE  HIN140X
   00               = "Single Service Plan"
   01               = "Blue Cross and/or Blue Shield"
   02               = "Other major fee for service plan"
   03               = "Large HMO (enrollment 100,000 or more)"
   04               = "Small HMO (enrollment less than 100,000)"
   05               = "Other HMO"
   06               = "PPO"
   77               = "Has insurance, DK name"
   88               = "Other insurance"
   99               = "DK if has insurance or refused"
   .                = "NA, no or unknown if has private health insurance; has private health insurance but no family plan"
   ;
  VALUE  HIN141X
   01               = "Coded HMO, respondent said HMO"
   02               = "Coded HMO, respondent said not HMO"
   03               = "Coded HMO, respondent said doesn't know, refused if HMO or not ascertained"
   04               = "Coded 'name of plan unknown',respondent said HMO"
   05               = "Coded 'name of plan unknown', respondent said HMO"
   06               = "Coded 'name of plan unknown', respondent said doesn't know, refused if HMO or not ascertained"
   07               = "Coded Blue Plan or other, respondent said HMO"
   08               = "Coded Blue plan or other, respondent said not HMO"
   09               = "Coded Blue plan or other, respondent said doesn't know, refused if HMO or not ascertained"
   10               = "Coded DK, refused or not ascertained, respondent said HMO"
   11               = "Coded DK, refused or not ascertained, respondent said not"
   12               = "Coded DK, refused or not ascertained, respondent doesn't know, refused HMO or not ascertained"
   .                = "NA; person/family not covered by this plan, single service plan"
   ;
  VALUE  HIN142X
   01-20            = "Refer to HI Plan Listing"
   55               = "id"
   77               = "id"
   88               = "id"
   98               = "Not ascertained"
   99               = "DK or refused to say if has insurance"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HIN143X
   0                = "Not known to be covered by this plan"
   1                = "Covered by this general purpose plan"
   2                = "Covered by this single service plan"
   8                = "Unknown which family member is covered by this plan"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HIN144X
   1                = "In own name"
   2                = "Person not in household"
   3                = "Someone else in family or unknown"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HIN145X
   1                = "Employer"
   2                = "Union"
   3                = "Through workplace but DK if employer or union"
   4                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HIN146X
   1                = "All"
   2                = "Some"
   3                = "None"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HIN147X
   0                = "Zero"
   1                = "$1-9"
   2                = "$10-19"
   3                = "$20-49"
   4                = "$50-99"
   5                = "$100-199"
   6                = "$200-499"
   7                = "$500 or more"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual; entire premium paid by employer"
   ;
  VALUE  HIN148X
   1                = "Variety of service"
   2                = "Single service/care"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HIN149X
   01               = "Accidents"
   02               = "AIDS care"
   03               = "Cancer treatment"
   04               = "Catastrophic care"
   05               = "Dental care"
   06               = "Disability insurance"
   07               = "Hospice care"
   08               = "Hospitalization-only"
   09               = "Long term care"
   10               = "Prescriptions"
   11               = "Vision care"
   12               = "Other"
   98               = "Not ascertained"
   99               = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance, this plan not mentioned for this family/individual, not single service plan"
   ;
  VALUE  HIN150X
   1                = "HMO/IPA"
   2                = "Other"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has health insurance; this plan not mentioned for this family/individual, single service plan"
   ;
  VALUE  HIN151X
   1                = "Any doctor"
   2                = "Select from group/list"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has health insurance; this plan not mentioned for this family/individual, single service plan"
   ;
  VALUE  HIN152X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN153X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN154X
   0                = "No person under 18 years"
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN155X
   0                = "No female over 39 years"
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN156X
   00               = "Single Service Plan"
   01               = "Blue Cross and/or Blue Shield"
   02               = "Other major fee for service plan"
   03               = "Group HMO"
   04               = "Staff HMO"
   05               = "IPA"
   06               = "Network"
   07               = "Mixed HMO"
   08               = "Other HMO"
   09               = "PPO"
   77               = "Has insurance, DK name"
   88               = "Other insurance"
   99               = "DK if has insurance or refused"
   .                = "NA, no or unknown if has private health insurance; has private health insurance but no family plan"
   ;
  VALUE  HIN157X
   00               = "Single Service Plan"
   01               = "Blue Cross and/or Blue Shield"
   02               = "Other major fee for service plan"
   03               = "Large HMO (enrollment 100,000 or more)"
   04               = "Small HMO (enrollment less than 100,000)"
   05               = "Other HMO"
   06               = "PPO"
   77               = "Has insurance, DK name"
   88               = "Other insurance"
   99               = "DK if has insurance or refused"
   .                = "NA, no or unknown if has private health insurance; has private health insurance but no family plan"
   ;
  VALUE  HIN158X
   01               = "Coded HMO, respondent said HMO"
   02               = "Coded HMO, respondent said not HMO"
   03               = "Coded HMO, respondent said doesn't know, refused if HMO or not ascertained"
   04               = "Coded 'name of plan unknown',respondent said HMO"
   05               = "Coded 'name of plan unknown', respondent said HMO"
   06               = "Coded 'name of plan unknown', respondent said doesn't know, refused if HMO or not ascertained"
   07               = "Coded Blue Plan or other, respondent said HMO"
   08               = "Coded Blue plan or other, respondent said not HMO"
   09               = "Coded Blue plan or other, respondent said doesn't know, refused if HMO or not ascertained"
   10               = "Coded DK, refused or not ascertained, respondent said HMO"
   11               = "Coded DK, refused or not ascertained, respondent said not"
   12               = "Coded DK, refused or not ascertained, respondent doesn't know, refused HMO or not ascertained"
   .                = "NA; person/family not covered by this plan, single service plan"
   ;
  VALUE  HIN159X
   01-20            = "Refer to HI Plan Listing"
   55               = "id"
   77               = "id"
   88               = "id"
   98               = "Not ascertained"
   99               = "DK or refused to say if has insurance"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HIN160X
   0                = "Not known to be covered by this plan"
   1                = "Covered by this general purpose plan"
   2                = "Covered by this single service plan"
   8                = "Unknown which family member is covered by this plan"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HIN161X
   1                = "In own name"
   2                = "Person not in household"
   3                = "Someone else in family or unknown"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HIN162X
   1                = "Employer"
   2                = "Union"
   3                = "Through workplace but DK if employer or union"
   4                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HIN163X
   1                = "All"
   2                = "Some"
   3                = "None"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HIN164X
   0                = "Zero"
   1                = "$1-9"
   2                = "$10-19"
   3                = "$20-49"
   4                = "$50-99"
   5                = "$100-199"
   6                = "$200-499"
   7                = "$500 or more"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual; entire premium paid by employer"
   ;
  VALUE  HIN165X
   1                = "Variety of service"
   2                = "Single service/care"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HIN166X
   01               = "Accidents"
   02               = "AIDS care"
   03               = "Cancer treatment"
   04               = "Catastrophic care"
   05               = "Dental care"
   06               = "Disability insurance"
   07               = "Hospice care"
   08               = "Hospitalization-only"
   09               = "Long term care"
   10               = "Prescriptions"
   11               = "Vision care"
   12               = "Other"
   98               = "Not ascertained"
   99               = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance, this plan not mentioned for this family/individual, not single service plan"
   ;
  VALUE  HIN167X
   1                = "HMO/IPA"
   2                = "Other"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has health insurance; this plan not mentioned for this family/individual, single service plan"
   ;
  VALUE  HIN168X
   1                = "Any doctor"
   2                = "Select from group/list"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has health insurance; this plan not mentioned for this family/individual, single service plan"
   ;
  VALUE  HIN169X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN170X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HIN171X
   0                = "No person under 18 years"
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN172X
   0                = "No female over 39 years"
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN173X
   00               = "Single Service Plan"
   01               = "Blue Cross and/or Blue Shield"
   02               = "Other major fee for service plan"
   03               = "Group HMO"
   04               = "Staff HMO"
   05               = "IPA"
   06               = "Network"
   07               = "Mixed HMO"
   08               = "Other HMO"
   09               = "PPO"
   77               = "Has insurance, DK name"
   88               = "Other insurance"
   99               = "DK if has insurance or refused"
   .                = "NA, no or unknown if has private health insurance; has private health insurance but no family plan"
   ;
  VALUE  HIN174X
   00               = "Single Service Plan"
   01               = "Blue Cross and/or Blue Shield"
   02               = "Other major fee for service plan"
   03               = "Large HMO (enrollment 100,000 or more)"
   04               = "Small HMO (enrollment less than 100,000)"
   05               = "Other HMO"
   06               = "PPO"
   77               = "Has insurance, DK name"
   88               = "Other insurance"
   99               = "DK if has insurance or refused"
   .                = "NA, no or unknown if has private health insurance; has private health insurance but no family plan"
   ;
  VALUE  HIN175X
   01               = "Coded HMO, respondent said HMO"
   02               = "Coded HMO, respondent said not HMO"
   03               = "Coded HMO, respondent said doesn't know, refused if HMO or not ascertained"
   04               = "Coded 'name of plan unknown',respondent said HMO"
   05               = "Coded 'name of plan unknown', respondent said HMO"
   06               = "Coded 'name of plan unknown', respondent said doesn't know, refused if HMO or not ascertained"
   07               = "Coded Blue Plan or other, respondent said HMO"
   08               = "Coded Blue plan or other, respondent said not HMO"
   09               = "Coded Blue plan or other, respondent said doesn't know, refused if HMO or not ascertained"
   10               = "Coded DK, refused or not ascertained, respondent said HMO"
   11               = "Coded DK, refused or not ascertained, respondent said not"
   12               = "Coded DK, refused or not ascertained, respondent doesn't know, refused HMO or not ascertained"
   .                = "NA; person/family not covered by this plan, single service plan"
   ;
  VALUE  HIN176X
   01-20            = "Refer to HI Plan Listing"
   55               = "id"
   77               = "id"
   88               = "id"
   98               = "Not ascertained"
   99               = "DK or refused to say if has insurance"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HIN177X
   0                = "Not known to be covered by this plan"
   1                = "Covered by this general purpose plan"
   2                = "Covered by this single service plan"
   8                = "Unknown which family member is covered by this plan"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HIN178X
   1                = "In own name"
   2                = "Person not in household"
   3                = "Someone else in family or unknown"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HIN179X
   1                = "Employer"
   2                = "Union"
   3                = "Through workplace but DK if employer or union"
   4                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HIN180X
   1                = "All"
   2                = "Some"
   3                = "None"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HIN181X
   0                = "Zero"
   1                = "$1-9"
   2                = "$10-19"
   3                = "$20-49"
   4                = "$50-99"
   5                = "$100-199"
   6                = "$200-499"
   7                = "$500 or more"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual; entire premium paid by employer"
   ;
  VALUE  HIN182X
   1                = "Variety of service"
   2                = "Single service/care"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HIN183X
   01               = "Accidents"
   02               = "AIDS care"
   03               = "Cancer treatment"
   04               = "Catastrophic care"
   05               = "Dental care"
   06               = "Disability insurance"
   07               = "Hospice care"
   08               = "Hospitalization-only"
   09               = "Long term care"
   10               = "Prescriptions"
   11               = "Vision care"
   12               = "Other"
   98               = "Not ascertained"
   99               = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance, this plan not mentioned for this family/individual, not single service plan"
   ;
  VALUE  HIN184X
   1                = "HMO/IPA"
   2                = "Other"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has health insurance; this plan not mentioned for this family/individual, single service plan"
   ;
  VALUE  HIN185X
   1                = "Any doctor"
   2                = "Select from group/list"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has health insurance; this plan not mentioned for this family/individual, single service plan"
   ;
  VALUE  HIN186X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN187X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN188X
   0                = "No person under 18 years"
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN189X
   0                = "No female over 39 years"
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN190X
   00               = "Single Service Plan"
   01               = "Blue Cross and/or Blue Shield"
   02               = "Other major fee for service plan"
   03               = "Group HMO"
   04               = "Staff HMO"
   05               = "IPA"
   06               = "Network"
   07               = "Mixed HMO"
   08               = "Other HMO"
   09               = "PPO"
   77               = "Has insurance, DK name"
   88               = "Other insurance"
   99               = "DK if has insurance or refused"
   .                = "NA, no or unknown if has private health insurance; has private health insurance but no family plan"
   ;
  VALUE  HIN191X
   00               = "Single Service Plan"
   01               = "Blue Cross and/or Blue Shield"
   02               = "Other major fee for service plan"
   03               = "Large HMO (enrollment 100,000 or more)"
   04               = "Small HMO (enrollment less than 100,000)"
   05               = "Other HMO"
   06               = "PPO"
   77               = "Has insurance, DK name"
   88               = "Other insurance"
   99               = "DK if has insurance or refused"
   .                = "NA, no or unknown if has private health insurance; has private health insurance but no family plan"
   ;
  VALUE  HIN192X
   01               = "Coded HMO, respondent said HMO"
   02               = "Coded HMO, respondent said not HMO"
   03               = "Coded HMO, respondent said doesn't know, refused if HMO or not ascertained"
   04               = "Coded 'name of plan unknown',respondent said HMO"
   05               = "Coded 'name of plan unknown', respondent said HMO"
   06               = "Coded 'name of plan unknown', respondent said doesn't know, refused if HMO or not ascertained"
   07               = "Coded Blue Plan or other, respondent said HMO"
   08               = "Coded Blue plan or other, respondent said not HMO"
   09               = "Coded Blue plan or other, respondent said doesn't know, refused if HMO or not ascertained"
   10               = "Coded DK, refused or not ascertained, respondent said HMO"
   11               = "Coded DK, refused or not ascertained, respondent said not"
   12               = "Coded DK, refused or not ascertained, respondent doesn't know, refused HMO or not ascertained"
   .                = "NA; person/family not covered by this plan, single service plan"
   ;
  VALUE  HIN193X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HIN194X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HIN195X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; No or unknown if unable to get insurance"
   ;
  VALUE  HIN196X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained but turned down (entire question)"
   9                = "DK any reason"
   .                = "NA; No or unknown if unable to get insurance"
   ;
  VALUE  HIN197X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; No or unknown if unable to get insurance"
   ;
  VALUE  HIN198X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; No or unknown if unable to get insurance"
   ;
  VALUE  HIN199X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; No or unknown if unable to get insurance"
   ;
  VALUE  HIN200X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HIN201X
   0                = "Not asked, person has job and has insurance in own name"
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; 70 or over, not employed in past 2 weeks"
   ;
  VALUE  HIN202X
   0                = "Only known coverage is single purpose plan"
   1                = "Covered by at least one general purpose health plan"
   2                = "Not covered by any plan"
   6                = "Unknown if covered by at least one particular plan"
   8                = "Not ascertained (whole question)"
   9                = "Unknown if covered (whole question)"
   ;
  VALUE  HIN203X
   0                = "No known plans"
   1-4              = "Number of plans"
   ;
  VALUE  HIN204X
   0                = "No known plans"
   1-4              = "Number of plans"
   ;
  VALUE  HIN205X
   0                = "No known plans"
   1-4              = "Number of plans"
   ;
  VALUE  HIN206X
   0                = "No known plans"
   1-4              = "Number of plans"
   ;
  VALUE  HIN207X
   1                = "Covered by one or both"
   2                = "Not covered by either"
   9                = "Unknown if covered"
   ;
  VALUE  HIN208X
   1                = "Covered by both"
   2                = "Not covered by one"
   3                = "Covered by neither"
   9                = "Unknown if covered"
   ;
  VALUE  HIN209X
   0                = "Covered by CHAMPUS/ CHAMP-VA only"
   1                = "Covered by other military health care only"
   2                = "Covered by both CHAMPUS and other military health care"
   3                = "Not covered by any military health care"
   6                = "Not covered by CHAMPUS/ CHAMP-VA, Unknown if covered by other military health care"
   7                = "Not covered by other military health care, Unknown if covered by CHAMPUS/CHAMP-VA"
   8                = "Not ascertained"
   ;
  VALUE  HIN210X
   1                = "Yes, covered"
   2                = "Not known to be covered, some response to non-coverage reasons"
   3                = "Not known to be covered, no response to non-coverage items"
   ;
  VALUE  HIN211X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HIN212X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HIN213X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HIN214X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HIN215X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HIN216X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HIN217X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HIN218X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HIN219X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HIN220X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HIN221X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HIN222X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HIN223X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HIN224X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HIN225X
   01               = "Job layoff/loss/unemployed"
   02               = "Wasn't offered by employer"
   03               = "Not eligible-part time worker"
   04               = "Family coverage not offered by employer"
   05               = "Benefits ran out"
   06               = "Can't obtain because of poor health, illness or age"
   07               = "Too expensive/can't afford"
   08               = "Dissatisfied with previous insurance"
   09               = "Don't believe in insurance"
   10               = "Healthy/haven't needed insurance"
   11               = "Covered by other plan"
   12               = "Too old for coverage under family plans"
   13               = "Free/inexpensive care available"
   14               = "Other reason"
   15               = "More than 1 reason specified, unknown which is main"
   98               = "Not ascertained (includes unknown any specific reason)"
   99               = "DK or refused"
   .                = "NA; Covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HIN226X
   1                = "State Plan"
   2                = "Private Plan"
   3                = "Other Plan"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; covered, not known to be covered but not response to non-coverage items"
   ;
  VALUE  HIN227X
   1                = "Less than 6 months ago"
   2                = "6 months ago, but less than 1 year ago"
   3                = "1 year ago, but less than 3 years ago"
   4                = "3 or more years ago"
   5                = "Never had health insurance"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA, Covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HIN228X
   01               = "Lost job/changed employers"
   02               = "Spouse/parent lost job/changed employers"
   03               = "Death of spouse or parent"
   04               = "Divorce or separation"
   05               = "Became ineligible because of age"
   06               = "Employer stopped offering coverage"
   07               = "Cut back to part time"
   08               = "Benefits from employer/ former employer ran out"
   09               = "Other reason"
   98               = "Not ascertained"
   99               = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN229X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN230X
   1                = "Could not afford"
   2                = "Was rejected"
   3                = "Other reason"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN231X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; not covered, not known to be covered"
   ;
  VALUE  HIN232X
   1                = "1 month or less"
   2                = "2-3 months"
   3                = "4-6 months"
   4                = "More than 6 months"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; not covered, not known to be covered, covered and no time without coverage in past 12 mos"
   ;
  VALUE  HIN233X
   01               = "Lost job/changed employers"
   02               = "Spouse/parent lost job/changed employers"
   03               = "Death of spouse or parent"
   04               = "Divorce or separation"
   05               = "Became ineligible because of age"
   06               = "Employer stopped offering coverage"
   07               = "Cut back to part time"
   08               = "Benefits from employer/former employer ran out"
   09               = "Other reason"
   98               = "Not ascertained"
   99               = "DK or refused"
   .                = "NA not covered, not known to be covered, covered and no time without coverage in past 12 mos"
   ;
  VALUE  HIN234X
   1                = "Zero"
   2                = "Less than $500"
   3                = "$500 - $1,999"
   4                = "$2,000 - $2,999"
   5                = "$3,000 - $4,999"
   6                = "$5,000 or more"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HIN235X
   1                = "Self"
   2                = "Proxy"
   9                = "Unknown Respondent"
   ;
  VALUE  HIN236X
   00               = "Unknown respondent"
   01-28            = "Person number"
   30-97            = "Person number"
   98               = "Active duty military"
   99               = "Non household member"
   ;

 
DATA NHIS.HEALTHIN;
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1994\';
   INFILE ASCIIDAT MISSOVER TRUNCOVER LRECL=500;
 
* DEFINE LENGTH OF NUMERIC VARIABLES;
 
LENGTH
   RECTYPE   3  YEAR      3  QUARTER   3  WEEKCEN   3  WEEKPROC  3
   LAFLAG    3  LIVQTR    3  PHONE     3  SEX       3  AGE       3
   AGER1     3  AGER2     3  AGER3     3  HISPFLAG  3  RACE      3
   RACER1    3  RACER2    3  RACER3    3  HISPANIC  3  MARSTAT   3
   VETERAN   3  RESERVE   3  EDUC      3  EDUCR     3  EDUCAD    3
   EDUCADR   3  INCFAM20  3  INCFAM    3  INCFAMR   3  POVERTY   3
   FAMRELR   3  FAMSIZE   3  FAMSIZER  3  PARENT    3  MAJACT    3
   HEALTH    3  LATOTAL   3  LAWORK    3  LASCHOOL  3  LACARE    3
   EMPLOY    3  WKCLASS   3  INDUS     3  INDUSR1   3  INDUSR2   3
   OCCUP     3  OCCUPR1   3  OCCUPR2   3  RESPOND   3  CONDLIST  3
   HEIGHT    3  WEIGHT    3  RADAY     3  BDDAY     3  WLDAY     3
   SLDAY     3  OTHDAY    3  BDDAY12   3  BDDAY12R  3  DV12      3
   DVINT     3  NCOND     3  NACUTE    3  NDV2      3  HEP12     3
   HDA12     3  HEP12X    3  HDA12X    3  DISDA5    3  DIS6X     3
   DISDAY6X  3  DISDA12X  3  YRSLPRES  3  YRSLIUS   3  WTINT     8
   SUBTYPE   3  STRATUM   3  REGION    3  MSASIZE   3  PSUTYPE   3
   MSA       3  PSUPSEUD  3  CCFACT    8  WTFQ      6  WTFS      6
   WTFA      6  WT65      6  RADAYWP   6  BDDAYWP   6  WLDAYSP   6
   SLDAYWP   6  DV12WPQ   6  DV12WPS   6  DV12ANN   6  HDA12WPQ  6
   HDA12WPS  6  HDA12ANN  6  AESSHE12  6  DUMMYREC  3  MEDICARE  3
   TYPECOV   3  MCARPRTA  3  MCARPRTB  3  MCARTIME  3  MAIDNOW   3
   MAIDCRDS  3  MAIDLMO   3  MAIDTIME  3  MAID12M   3  OTHERPA   3
   CHAMP     3  MILITHC   3  INDIANHC  3  HLTHIN1   3  COVSTAT1  3
   INWHO1    3  WKUNON1   3  EOUPAY1   3  FAMPAID1  3  VARSIN1   3
   SSTYPE1   3  PLNTYP1   3  DCHOICE1  3  PPLIS1    3  OUTPUSE1  3
   WELCHLD1  3  MAMMOG1   3  PL1TYPR1  3  PL1TYPR2  3  HMOR1     3
   HLTHIN2   3  COVSTAT2  3  INWHO2    3  WKUNON2   3  EOUPAY2   3
   FAMPAID2  3  VARSIN2   3  SSTYPE2   3  PLNTYP2   3  DCHOICE2  3
   PPLIS2    3  OUTPUSE2  3  WELCHLD2  3  MAMMOG2   3  PL2TYPR1  3
   PL2TYPR2  3  HMOR2     3  HLTHIN3   3  COVSTAT3  3  INWHO3    3
   WKUNON3   3  EOUPAY3   3  FAMPAID3  3  VARSIN3   3  SSTYPE3   3
   PLNTYP3   3  DCHOICE3  3  PPLIS3    3  OUTPUSE3  3  WELCHLD3  3
   MAMMOG3   3  PL3TYPR1  3  PL3TYPR2  3  HMOR3     3  HLTHIN4   3
   COVSTAT4  3  INWHO4    3  WKUNON4   3  EOUPAY4   3  FAMPAID4  3
   VARSIN4   3  SSTYPE4   3  PLNTYP4   3  DCHOICE4  3  PPLIS4    3
   OUTPUSE4  3  WELCHLD4  3  MAMMOG4   3  PL4TYPR1  3  PL4TYPR2  3
   HMOR4     3  LHIPCOND  3  NHIDENY   3  NHIPCNDR  3  NHIHRISK  3
   NHIWORK   3  NHICOST1  3  NHIOTHR   3  STAYD2YR  3  EMPLOYHI  3
   PRIVHICR  3  GHINPPER  3  GHINPFAM  3  SHINPPER  3  SHINPFAM  3
   MCARPRIV  3  MAIDOTHR  3  MILHIR    3  COVSTATR  3  NOJOB     3
   NOEMPHI   3  NHIPTIME  3  EMPNOFAM  3  NHIRNOUT  3  NHIHLTH   3
   NHICOST2  3  NHIDSSAT  3  NHIDONTB  3  NHINNEED  3  NHIOTHCV  3
   NHIOLD    3  NHICHPCR  3  NHIOTHER  3  NHIRNOTC  3  OTHCOV    3
   WLASTCOV  3  NHIRSTOP  3  TRYFNDIN  3  NHICANTF  3  NHILAPSE  3
   NHILAPMO  3  NHIMAINR  3  MCARCOST  3  RESPSTAT  3  ANSWPERS  3
   ;

   * INPUT ALL VARIABLES;
 
INPUT
   RECTYPE      1 - 2          YEAR         3 - 4
   QUARTER      5 - 5          PSUNUMR  $   6 - 8
   WEEKCEN      9 - 10         SEGNUM   $  11 - 12
   HHNUM    $  13 - 14         PNUM     $  15 - 16
   WEEKPROC    19 - 20         LAFLAG      21 - 21
   LIVQTR      22 - 23         PHONE       24 - 24
   SEX         25 - 25         AGE         27 - 28
   AGER1       29 - 29         AGER2       30 - 30
   AGER3       31 - 32         BIRTH    $  34 - 39
   BIRTHMO  $  34 - 35         BIRTHYR  $  36 - 39
   HISPFLAG    40 - 40         RACE        41 - 42
   RACER1      43 - 43         RACER2      44 - 44
   RACER3      45 - 45         HISPANIC    46 - 47
   MARSTAT     48 - 48         VETERAN     49 - 49
   RESERVE     50 - 50         EDUC        51 - 52
   EDUCR       53 - 53         EDUCAD      54 - 55
   EDUCADR     56 - 56         INCFAM20    57 - 57
   INCFAM      58 - 59         INCFAMR     60 - 60
   POVERTY     61 - 61         FAMNUM   $  62 - 62
   FAMREL   $  63 - 63         FAMRELR     64 - 64
   FAMSIZE     65 - 66         FAMSIZER    67 - 67
   PARENT      68 - 68         MAJACT      69 - 69
   HEALTH      70 - 70         LATOTAL     71 - 71
   LAWORK      72 - 72         LASCHOOL    73 - 73
   LACARE      74 - 74         EMPLOY      75 - 75
   WKCLASS     76 - 76         INDUS       77 - 79
   INDUSR1     80 - 81         INDUSR2     82 - 83
   OCCUP       84 - 86         OCCUPR1     87 - 88
   OCCUPR2     89 - 90         RESPOND     91 - 91
   CONDLIST    92 - 92         HEIGHT      93 - 94
   WEIGHT      95 - 97         RADAY       98 - 99
   BDDAY      100 - 101        WLDAY      102 - 103
   SLDAY      104 - 105        OTHDAY     106 - 107
   BDDAY12    108 - 110        BDDAY12R   111 - 111
   DV12       112 - 114        DVINT      115 - 115
   NCOND      116 - 117        NACUTE     118 - 119
   NDV2       120 - 121        HEP12      122 - 123
   HDA12      124 - 126        HEP12X     127 - 128
   HDA12X     129 - 131        DISDA5     132 - 133
   DIS6X      134 - 136        DISDAY6X   137 - 138
   DISDA12X   139 - 141        YRSLPRES   144 - 144
   YRSLIUS    145 - 145        WTINT      172 - 177 .1
   SUBTYPE    178 - 178        STRATUM    179 - 181
   REGION     182 - 182        MSASIZE    183 - 183
   PSUTYPE    185 - 185        MSA        186 - 186
   PSUPSEUD   187 - 189        CCFACT     190 - 200 .9
   WTFQ       201 - 209        WTFS       210 - 218
   WTFA       219 - 227        WT65       228 - 236
   RADAYWP    237 - 245        BDDAYWP    246 - 254
   WLDAYSP    255 - 263        SLDAYWP    264 - 272
   DV12WPQ    273 - 281        DV12WPS    282 - 290
   DV12ANN    291 - 299        HDA12WPQ   300 - 308
   HDA12WPS   309 - 317        HDA12ANN   318 - 326
   AESSHE12   327 - 335        DUMMYREC   336 - 336
   MEDICARE   337 - 337        TYPECOV    338 - 338
   MCARPRTA   339 - 339        MCARPRTB   340 - 340
   MCARTIME   341 - 341        MAIDNOW    342 - 342
   MAIDCRDS   343 - 343        EXPMDCMO $ 344 - 345
   EXPMDCDA $ 346 - 347        MAIDLMO    348 - 348
   MAIDTIME   349 - 349        MAID12M    350 - 350
   OTHERPA    351 - 351        CHAMP      352 - 352
   MILITHC    353 - 353        INDIANHC   355 - 355
   HLTHIN1    356 - 357        COVSTAT1   358 - 358
   INWHO1     359 - 359        WKUNON1    360 - 360
   EOUPAY1    361 - 361        FAMPAID1   362 - 362
   VARSIN1    363 - 363        SSTYPE1    364 - 365
   PLNTYP1    366 - 366        DCHOICE1   367 - 367
   PPLIS1     368 - 368        OUTPUSE1   369 - 369
   WELCHLD1   370 - 370        MAMMOG1    371 - 371
   PL1TYPR1   372 - 373        PL1TYPR2   374 - 375
   HMOR1      376 - 377        HLTHIN2    378 - 379
   COVSTAT2   380 - 380        INWHO2     381 - 381
   WKUNON2    382 - 382        EOUPAY2    383 - 383
   FAMPAID2   384 - 384        VARSIN2    385 - 385
   SSTYPE2    386 - 387        PLNTYP2    388 - 388
   DCHOICE2   389 - 389        PPLIS2     390 - 390
   OUTPUSE2   391 - 391        WELCHLD2   392 - 392
   MAMMOG2    393 - 393        PL2TYPR1   394 - 395
   PL2TYPR2   396 - 397        HMOR2      398 - 399
   HLTHIN3    400 - 401        COVSTAT3   402 - 402
   INWHO3     403 - 403        WKUNON3    404 - 404
   EOUPAY3    405 - 405        FAMPAID3   406 - 406
   VARSIN3    407 - 407        SSTYPE3    408 - 409
   PLNTYP3    410 - 410        DCHOICE3   411 - 411
   PPLIS3     412 - 412        OUTPUSE3   413 - 413
   WELCHLD3   414 - 414        MAMMOG3    415 - 415
   PL3TYPR1   416 - 417        PL3TYPR2   418 - 419
   HMOR3      420 - 421        HLTHIN4    422 - 423
   COVSTAT4   424 - 424        INWHO4     425 - 425
   WKUNON4    426 - 426        EOUPAY4    427 - 427
   FAMPAID4   428 - 428        VARSIN4    429 - 429
   SSTYPE4    430 - 431        PLNTYP4    432 - 432
   DCHOICE4   433 - 433        PPLIS4     434 - 434
   OUTPUSE4   435 - 435        WELCHLD4   436 - 436
   MAMMOG4    437 - 437        PL4TYPR1   438 - 439
   PL4TYPR2   440 - 441        HMOR4      442 - 443
   LHIPCOND   444 - 444        NHIDENY    445 - 445
   NHIPCNDR   446 - 446        NHIHRISK   447 - 447
   NHIWORK    448 - 448        NHICOST1   449 - 449
   NHIOTHR    450 - 450        STAYD2YR   451 - 451
   EMPLOYHI   452 - 452        PRIVHICR   453 - 453
   GHINPPER   454 - 454        GHINPFAM   455 - 455
   SHINPPER   456 - 456        SHINPFAM   457 - 457
   MCARPRIV   458 - 458        MAIDOTHR   459 - 459
   MILHIR     460 - 460        COVSTATR   461 - 461
   NOJOB      462 - 462        NOEMPHI    463 - 463
   NHIPTIME   464 - 464        EMPNOFAM   465 - 465
   NHIRNOUT   466 - 466        NHIHLTH    467 - 467
   NHICOST2   468 - 468        NHIDSSAT   469 - 469
   NHIDONTB   470 - 470        NHINNEED   471 - 471
   NHIOTHCV   472 - 472        NHIOLD     473 - 473
   NHICHPCR   474 - 474        NHIOTHER   475 - 475
   NHIRNOTC   476 - 477        OTHCOV     478 - 478
   WLASTCOV   479 - 479        NHIRSTOP   480 - 481
   TRYFNDIN   482 - 482        NHICANTF   483 - 483
   NHILAPSE   484 - 484        NHILAPMO   485 - 485
   NHIMAINR   486 - 487        MCARCOST   488 - 488
   RESPSTAT   489 - 489        ANSWPERS   490 - 491
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
   LAFLAG   = "LATE INTERVIEW (OR LAST ATTEMPT) FLAG"
   LIVQTR   = "TYPE OF LIVING QUARTERS"
   PHONE    = "HAS TELEPHONE"
   SEX      = "SEX"
   AGE      = "AGE"
   AGER1    = "AGE RECODE #1"
   AGER2    = "AGE RECODE #2"
   AGER3    = "AGE RECODE #3"
   BIRTH    = "MONTH AND YEAR OF BIRTH"
   BIRTHMO  = "MONTH"
   BIRTHYR  = "YEAR OF BIRTH"
   HISPFLAG = "HISPANIC ORIGIN IMPUTED FLAG"
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
   EDUCAD   = "HIGHEST EDUCATION OF RESPONSIBLE ADULT FAMILY MEMBER (DETAIL)"
   EDUCADR  = "HIGHEST EDUCATION OF RESPONSIBLE ADULT FAMILY MEMBER RECODE"
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
   MAJACT   = "MAJOR ACTIVITY (18+ YEARS OLD)"
   HEALTH   = "HEALTH STATUS"
   LATOTAL  = "ACTIVITY LIMITATION STATUS- (ALL AGES)"
   LAWORK   = "ACTIVITY LIMITATION STATUS MEASURED BY 'ABILITY TO WORK' (18-69 YEARS)"
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
   RESPOND  = "RESPONDENT FOR CORE"
   CONDLIST = "CONDITION LIST ASSIGNED AND ASKED"
   HEIGHT   = "HEIGHT WITHOUT SHOES (18+ YEARS)"
   WEIGHT   = "WEIGHT WITHOUT SHOES (18+ YEARS)"
   RADAY    = "TOTAL RESTRICTED ACTIVITY DAYS IN PAST TWO WEEKS"
   BDDAY    = "BED DAYS IN PAST TWO WEEKS"
   WLDAY    = "WORK-LOSS DAYS IN PAST TWO WEEKS (CONTROL"
   SLDAY    = "SCHOOL-LOSS DAYS IN PAST TWO WEEKS"
   OTHDAY   = "OTHER DAYS OF RESTRICTED ACTIVITY IN PAST TWO WEEKS"
   BDDAY12  = "BED DAYS IN PAST 12 MONTHS"
   BDDAY12R = "BED DAYS IN PAST 12 MONTHS - RECODE"
   DV12     = "DOCTOR VISITS IN PAST 12 MONTHS"
   DVINT    = "INTERVAL SINCE LAST DOCTOR VISIT"
   NCOND    = "NUMBER OF CONDITIONS"
   NACUTE   = "NUMBER OF ACUTE INCIDENCE CONDITIONS"
   NDV2     = "NUMBER OF TWO-WEEK DOCTOR VISITS"
   HEP12    = "NUMBER OF SHORT-STAY HOSPITAL EPISODES IN PAST 12 MONTHS"
   HDA12    = "SHORT-STAY HOSPITAL EPISODE DAYS IN PAST 12 MONTHS"
   HEP12X   = "NUMBER OF SHORT-STAY HOSPITAL EPISODES IN PAST 12 MONTHS EXCLUDING DELIVERY"
   HDA12X   = "SHORT-STAY HOSPITAL EPISODE DAYS IN PAST 12 MONTHS EXCLUDING DELIVERY"
   DISDA5   = "NUMBER OF SHORT-STAY HOSPITAL DISCHARGES IN PAST 6 MONTHS"
   DIS6X    = "NUMBER OF DAYS IN SHORT-STAY HOSPITAL IN PAST 12 MONTHS FOR DISCHARGES IN PAST 6 MONTHS"
   DISDAY6X = "NUMBER OF SHORT-STAY HOSPITAL DISCHARGES IN PAST 6 MONTHS EXCLUDING DELIVERY"
   DISDA12X = "NUMBER OF DAYS IN SHORT-STAY HOSPITAL IN PAST 12 MONTHS FOR DISCHARGES IN PAST 6 MONTHS EXCLUDING DELIVERY"
   YRSLPRES = "YEARS LIVED IN STATE OF PRESENT RESIDENCE"
   YRSLIUS  = "YEARS LIVED IN UNITED STATES"
   WTINT    = "QUARTER BASIC WEIGHT BEFORE AGE-SEX-RACE ADJUSTMENT"
   SUBTYPE  = "TYPE OF SUBSTRATUM RECORD"
   STRATUM  = "FULL SAMPLE STRATUM IDENTIFIER"
   REGION   = "REGION RECORD"
   MSASIZE  = "GEOGRAPHIC DISTRIBUTION"
   PSUTYPE  = "TYPE OF PSU RECORD"
   MSA      = "MSA - NON-MSA RESIDENCE"
   PSUPSEUD = "PSEUDO PSU CODES"
   CCFACT   = "CHRONIC CONDITION PREVALENCE AND INCIDENCE FACTOR"
   WTFQ     = "FINAL BASIC WEIGHT - QUARTER"
   WTFS     = "FINAL BASIC WEIGHT - SEMI-ANNUAL (WT/2)"
   WTFA     = "FINAL BASIC WEIGHT - ANNUAL (WT/4)"
   WT65     = "6 5 WEIGHT - RTER SEMI-ANNUAL AND ANNUAL"
   RADAYWP  = "RESTRICTED ACTIVITY DAYS PASS 2W - QUARTER SEMI-ANNUAL AND ANNUAL"
   BDDAYWP  = "BED DAYS PAST 2W - QUARTER SEMI-ANNUAL AND ANNUAL"
   WLDAYSP  = "WORK-LOSS DAYS PAST 2W - QUARTER SEMI-ANNUAL AND ANNUAL"
   SLDAYWP  = "SCHOOL-LOSS DAYS PAST 2W - QUARTER SEMI-ANNUAL AND ANNUAL"
   DV12WPQ  = "DOCTOR VISITS PAST 12M - QUARTER"
   DV12WPS  = "DOCTOR VISITS PAST 12M - SEMI-ANNUAL"
   DV12ANN  = "DOCTOR VISITS PAST 12M - ANNUAL"
   HDA12WPQ = "SHORT-STAY HOSPITAL EPISODE DAYS PASS 12M - QUARTER"
   HDA12WPS = "SHORT-STAY HOSPITAL EPISODE DAYS PASS 12M - SEMI-ANNUAL"
   HDA12ANN = "SHORT-STAY HOSPITAL EPISODE DAYS PASS 12M - ANNUAL"
   AESSHE12 = "ANNUAL ESTIMATED NUMBER OF SHORT-STAY HOSPITAL EPISODES PAST 12M"
   DUMMYREC = "DUMMY FLAG"
   MEDICARE = "COVERED BY MEDICARE LAST MONTH"
   TYPECOV  = "TYPE OF COVERAGE"
   MCARPRTA = "MEDICARE PART A (NO CARD SEEN)"
   MCARPRTB = "MEDICARE PART B (NO CARD SEEN)"
   MCARTIME = "LENGTH OF TIME WITH MEDICARE COVERAGE"
   MAIDNOW  = "HAS MEDICAID CARD NOW"
   MAIDCRDS = "MEDICAID CARD SEEN"
   EXPMDCMO = "MONTH"
   EXPMDCDA = "DAY"
   MAIDLMO  = "COVERED BY MEDICAID LAST MONTH"
   MAIDTIME = "LENGTH OF TIME WITH MEDICAID COVERAGE"
   MAID12M  = "RECEIVED MEDICAID CARE IN PAST 12 MONTHS"
   OTHERPA  = "COVERED BY OTHER PUBLIC ASSISTANCE LAST MONTH"
   CHAMP    = "COVERED BY CHAMPUS OR CHAMP - VA LAST MONTH"
   MILITHC  = "COVERED BY OTHER MILITARY HEALTH CARE LAST MONTH"
   INDIANHC = "COVERED BY INDIAN HEALTH SERVICE"
   HLTHIN1  = "NAME OF PLAN - PLAN 1"
   COVSTAT1 = "COVERAGE STATUS - PLAN 1"
   INWHO1   = "PLAN IN WHOSE NAME - PLAN 1"
   WKUNON1  = "ORIGINALLY OBTAINED THROUGH WORKPLACE OR UNION - PLAN 1"
   EOUPAY1  = "EMPLOYER/UNION CURRENTLY PAY FOR PREMIUMS - PLAN 1"
   FAMPAID1 = "LAST MONTH'S PREMIUM PAID BY FAMILY - PLAN 1"
   VARSIN1  = "VARIETY OR SINGLE SERVICE PLAN - PLAN 1   ´"
   SSTYPE1  = "TYPE OF SINGLE SERVICE - PLAN 1"
   PLNTYP1  = "TYPE OF PLAN - PLAN 1"
   DCHOICE1 = "CHOICE OF DOCTOR - PLAN 1"
   PPLIS1   = "PREFERRED PROVIDER LIST OPTION - PLAN 1"
   OUTPUSE1 = "PLAN PAYS FOR OUT OF PLAN USE - PLAN 1"
   WELCHLD1 = "PLAN PAYS FOR WELL CHILD CARE - PLAN 1"
   MAMMOG1  = "PLAN PAYS FOR MAMMOGRAM - PLAN 1"
   PL1TYPR1 = "TYPE OF PLAN - RECODE 1 - PLAN 1"
   PL1TYPR2 = "TYPE OF PLAN - RECODE 2 - PLAN 1"
   HMOR1    = "HMO RECODE 1 - PLAN 1   ´"
   HLTHIN2  = "NAME OF PLAN - PLAN 2"
   COVSTAT2 = "COVERAGE STATUS - PLAN 2"
   INWHO2   = "PLAN IN WHOSE NAME - PLAN 2"
   WKUNON2  = "ORIGINALLY OBTAINED THROUGH WORKPLACE OR UNION - PLAN 2"
   EOUPAY2  = "EMPLOYER/UNION CURRENTLY PAY FOR PREMIUMS - PLAN 2"
   FAMPAID2 = "LAST MONTH'S PREMIUM PAID BY FAMILY - PLAN 2"
   VARSIN2  = "VARIETY OR SINGLE SERVICE PLAN - PLAN 2"
   SSTYPE2  = "TYPE OF SINGLE SERVICE - PLAN 2"
   PLNTYP2  = "TYPE OF PLAN - PLAN 2"
   DCHOICE2 = "CHOICE OF DOCTOR - PLAN 2"
   PPLIS2   = "PREFERRED PROVIDER LIST OPTION - PLAN 2"
   OUTPUSE2 = "PLAN PAYS FOR OUT OF PLAN USE - PLAN 2"
   WELCHLD2 = "PLAN PAYS FOR WELL CHILD CARE - PLAN 2"
   MAMMOG2  = "PLAN PAYS FOR MAMMOGRAM - PLAN 2"
   PL2TYPR1 = "TYPE OF PLAN - RECODE 1 - PLAN 2"
   PL2TYPR2 = "TYPE OF PLAN - RECODE 2 - PLAN 2"
   HMOR2    = "HMO RECODE 1 - PLAN 2     ´"
   HLTHIN3  = "NAME OF PLAN - PLAN 3"
   COVSTAT3 = "COVERAGE STATUS - PLAN 3"
   INWHO3   = "PLAN IN WHOSE NAME - PLAN 3"
   WKUNON3  = "ORIGINALLY OBTAINED THROUGH WORKPLACE OR UNION - PLAN 3"
   EOUPAY3  = "EMPLOYER/UNION CURRENTLY PAY FOR PREMIUMS - PLAN 3"
   FAMPAID3 = "LAST MONTH'S PREMIUM PAID BY FAMILY - PLAN 3"
   VARSIN3  = "VARIETY OR SINGLE SERVICE PLAN - PLAN 3"
   SSTYPE3  = "TYPE OF SINGLE SERVICE - PLAN 3"
   PLNTYP3  = "TYPE OF PLAN - PLAN 3"
   DCHOICE3 = "CHOICE OF DOCTOR - PLAN 3"
   PPLIS3   = "PREFERRED PROVIDER LIST OPTION - PLAN 3"
   OUTPUSE3 = "PLAN PAYS FOR OUT OF PLAN USE - PLAN 3"
   WELCHLD3 = "PLAN PAYS FOR WELL CHILD CARE - PLAN 3"
   MAMMOG3  = "PLAN PAYS FOR MAMMOGRAM - PLAN 3"
   PL3TYPR1 = "TYPE OF PLAN - RECODE 1 - PLAN 3"
   PL3TYPR2 = "TYPE OF PLAN - RECODE 2 - PLAN 3"
   HMOR3    = "HMO RECODE 1 - PLAN 3     ´"
   HLTHIN4  = "NAME OF PLAN - PLAN 4"
   COVSTAT4 = "COVERAGE STATUS - PLAN 4"
   INWHO4   = "PLAN IN WHOSE NAME - PLAN 4"
   WKUNON4  = "ORIGINALLY OBTAINED THROUGH WORKPLACE OR UNION - PLAN 4"
   EOUPAY4  = "EMPLOYER/UNION CURRENTLY PAY FOR PREMIUMS - PLAN 4"
   FAMPAID4 = "LAST MONTH'S PREMIUM PAID BY FAMILY - PLAN 4"
   VARSIN4  = "VARIETY OR SINGLE SERVICE PLAN - PLAN 4"
   SSTYPE4  = "TYPE OF SINGLE SERVICE - PLAN 4"
   PLNTYP4  = "TYPE OF PLAN - PLAN 4"
   DCHOICE4 = "CHOICE OF DOCTOR - PLAN 4"
   PPLIS4   = "PREFERRED PROVIDER LIST OPTION - PLAN 4"
   OUTPUSE4 = "PLAN PAYS FOR OUT OF PLAN USE - PLAN 4"
   WELCHLD4 = "PLAN PAYS FOR WELL CHILD CARE - PLAN 4"
   MAMMOG4  = "PLAN PAYS FOR MAMMOGRAM - PLAN 4"
   PL4TYPR1 = "TYPE OF PLAN - RECODE 1 - PLAN 4"
   PL4TYPR2 = "TYPE OF PLAN - RECODE 2 - PLAN 4"
   HMOR4    = "HMO RECODE 1 - PLAN 4     ´"
   LHIPCOND = "DENIED/RESTRICTED COVERAGE IN PAST TWO YEARS DUE TO PRE-EXISTING CONDITION"
   NHIDENY  = "TURNED DOWN WHEN APPLIED IN PAST 2 YEARS"
   NHIPCNDR = "PRE-EXISTING CONDITION(S) - REASONS UNABLE TO GET HI"
   NHIHRISK = "HEALTH RISK (SMOKING/OVERWEIGHT) - REASONS UNABLE TO GET HI"
   NHIWORK  = "WORK OCCUPATION  - REASONS UNABLE TO GET HI"
   NHICOST1 = "PREMIUMS WERE TOO HIGH - REASONS UNABLE TO GET HI"
   NHIOTHR  = "OTHER REASONS - REASONS UNABLE TO GET HI"
   STAYD2YR = "STAYED IN JOB IN PAST 2 YEARS BECAUSE OF HEALTH INSURANCE"
   EMPLOYHI = "HEALTH INSURANCE OFFERED BY EMPLOYER"
   PRIVHICR = "PRIVATE HEALTH INSURANCE COVERAGE RECODE"
   GHINPPER = "NUMBER OF PRIVATE GENERAL PURPOSE HEALTH INSURANCE PLANS PER PERSON"
   GHINPFAM = "NUMBER OF PRIVATE GENERAL PURPOSE HEALTH INSURANCE PLANS PER FAMILY"
   SHINPPER = "NUMBER OF SINGLE PURPOSE PLANS PER PERSON"
   SHINPFAM = "NUMBER OF SINGLE PURPOSE PLANS PER FAMILY"
   MCARPRIV = "MEDICARE AND/OR PRIVATE HEALTH INSURANCE"
   MAIDOTHR = "MEDICAID OR OTHER PUBLIC ASSISTANCE"
   MILHIR   = "MILITARY COVERAGE"
   COVSTATR = "COVERAGE STATUS"
   NOJOB    = "JOB LAYOFF/LOSS/UNEMPLOYED - WHY NOT COVERED BY HI"
   NOEMPHI  = "WASN'T OFFERED BY EMPLOYER - WHY NOT COVERED BY HI"
   NHIPTIME = "NOT ELIGIBLE - PART TIME WORKER - WHY NOT COVERED BY HI"
   EMPNOFAM = "FAMILY COVERAGE NOT OFFERED BY EMPLOYER - WHY NOT COVERED BY HI"
   NHIRNOUT = "BENEFITS RAN OUT - WHY NOT COVERED BY HI"
   NHIHLTH  = "CAN'T OBTAIN BECAUSE OF POOR HEALTH, ILLNESS OR AGE - WHY NOT COVERED BY HI"
   NHICOST2 = "TOO EXPENSIVE/CAN'T AFFORD - WHY NOT COVERED BY HI"
   NHIDSSAT = "DISSATISFIED WITH PREVIOUS INSURANCE - WHY NOT COVERED BY HI"
   NHIDONTB = "DON'T BELIEVE IN INSURANCE - WHY NOT COVERED BY HI"
   NHINNEED = "HEALTHY/HAVEN'T NEEDED INSURANCE - WHY NOT COVERED BY HI"
   NHIOTHCV = "COVERED BY OTHER PLAN - WHY NOT COVERED BY HI"
   NHIOLD   = "TOO OLD FOR COVERAGE UNDER FAMILY PLANS - WHY NOT COVERED BY HI"
   NHICHPCR = "FREE/INEXPENSIVE CARE AVAILABLE - WHY NOT COVERED BY HI"
   NHIOTHER = "OTHER REASONS - WHY NOT COVERED BY HI"
   NHIRNOTC = "MAIN REASON NOT COVERED"
   OTHCOV   = "COVERED BY STATE SPONSORED HEALTH, PRIVATE, OR OTHER TYPE OF PLAN"
   WLASTCOV = "WHEN LAST HAD COVERAGE"
   NHIRSTOP = "MAIN REASON STOPPED BEING COVERED"
   TRYFNDIN = "TRIED TO FIND OTHER HEALTH INSURANCE"
   NHICANTF = "REASON UNABLE TO FIND HEALTH INSURANCE"
   NHILAPSE = "ANY TIME WITHOUT COVERAGE"
   NHILAPMO = "NUMBER OF MONTHS WITHOUT COVERAGE"
   NHIMAINR = "MAIN REASON WITHOUT COVERAGE"
   MCARCOST = "AMOUNT FAMILY SPENT FOR MEDICAL CARE"
   RESPSTAT = "RESPONSE STATUS"
   ANSWPERS = "PERSON WHO ANSWERED MOST QUESTIONS"
   ;

* ASSOCIATE VARIABLES WITH FORMAT VALUES;
 
FORMAT
   RECTYPE   HIN001X.    YEAR      HIN002X.    QUARTER   HIN003X.
   PSUNUMR   $HIN004X.   WEEKCEN   HIN005X.    SEGNUM    $HIN006X.
   HHNUM     $HIN007X.   PNUM      $HIN008X.   WEEKPROC  HIN009X.
   LAFLAG    HIN010X.    LIVQTR    HIN011X.    PHONE     HIN012X.
   SEX       HIN013X.    AGE       HIN014X.    AGER1     HIN015X.
   AGER2     HIN016X.    AGER3     HIN017X.    BIRTH     $HIN018X.
   BIRTHMO   $HIN019X.   BIRTHYR   $HIN020X.   HISPFLAG  HIN021X.
   RACE      HIN022X.    RACER1    HIN023X.    RACER2    HIN024X.
   RACER3    HIN025X.    HISPANIC  HIN026X.    MARSTAT   HIN027X.
   VETERAN   HIN028X.    RESERVE   HIN029X.    EDUC      HIN030X.
   EDUCR     HIN031X.    EDUCAD    HIN032X.    EDUCADR   HIN033X.
   INCFAM20  HIN034X.    INCFAM    HIN035X.    INCFAMR   HIN036X.
   POVERTY   HIN037X.    FAMNUM    $HIN038X.   FAMREL    $HIN039X.
   FAMRELR   HIN040X.    FAMSIZE   HIN041X.    FAMSIZER  HIN042X.
   PARENT    HIN043X.    MAJACT    HIN044X.    HEALTH    HIN045X.
   LATOTAL   HIN046X.    LAWORK    HIN047X.    LASCHOOL  HIN048X.
   LACARE    HIN049X.    EMPLOY    HIN050X.    WKCLASS   HIN051X.
   INDUS     HIN052X.    INDUSR1   HIN053X.    INDUSR2   HIN054X.
   OCCUP     HIN055X.    OCCUPR1   HIN056X.    OCCUPR2   HIN057X.
   RESPOND   HIN058X.    CONDLIST  HIN059X.    HEIGHT    HIN060X.
   WEIGHT    HIN061X.    RADAY     HIN062X.    BDDAY     HIN063X.
   WLDAY     HIN064X.    SLDAY     HIN065X.    OTHDAY    HIN066X.
   BDDAY12   HIN067X.    BDDAY12R  HIN068X.    DV12      HIN069X.
   DVINT     HIN070X.    NCOND     HIN071X.    NACUTE    HIN072X.
   NDV2      HIN073X.    HEP12     HIN074X.    HDA12     HIN075X.
   HEP12X    HIN076X.    HDA12X    HIN077X.    DISDA5    HIN078X.
   DIS6X     HIN079X.    DISDAY6X  HIN080X.    DISDA12X  HIN081X.
   YRSLPRES  HIN082X.    YRSLIUS   HIN083X.    WTINT     HIN084X.
   SUBTYPE   HIN085X.    STRATUM   HIN086X.    REGION    HIN087X.
   MSASIZE   HIN088X.    PSUTYPE   HIN089X.    MSA       HIN090X.
   PSUPSEUD  HIN091X.    CCFACT    HIN092X.    WTFQ      HIN093X.
   WTFS      HIN094X.    WTFA      HIN095X.    WT65      HIN096X.
   RADAYWP   HIN097X.    BDDAYWP   HIN098X.    WLDAYSP   HIN099X.
   SLDAYWP   HIN100X.    DV12WPQ   HIN101X.    DV12WPS   HIN102X.
   DV12ANN   HIN103X.    HDA12WPQ  HIN104X.    HDA12WPS  HIN105X.
   HDA12ANN  HIN106X.    AESSHE12  HIN107X.    DUMMYREC  HIN108X.
   MEDICARE  HIN109X.    TYPECOV   HIN110X.    MCARPRTA  HIN111X.
   MCARPRTB  HIN112X.    MCARTIME  HIN113X.    MAIDNOW   HIN114X.
   MAIDCRDS  HIN115X.    EXPMDCMO  $HIN116X.   EXPMDCDA  $HIN117X.
   MAIDLMO   HIN118X.    MAIDTIME  HIN119X.    MAID12M   HIN120X.
   OTHERPA   HIN121X.    CHAMP     HIN122X.    MILITHC   HIN123X.
   INDIANHC  HIN124X.    HLTHIN1   HIN125X.    COVSTAT1  HIN126X.
   INWHO1    HIN127X.    WKUNON1   HIN128X.    EOUPAY1   HIN129X.
   FAMPAID1  HIN130X.    VARSIN1   HIN131X.    SSTYPE1   HIN132X.
   PLNTYP1   HIN133X.    DCHOICE1  HIN134X.    PPLIS1    HIN135X.
   OUTPUSE1  HIN136X.    WELCHLD1  HIN137X.    MAMMOG1   HIN138X.
   PL1TYPR1  HIN139X.    PL1TYPR2  HIN140X.    HMOR1     HIN141X.
   HLTHIN2   HIN142X.    COVSTAT2  HIN143X.    INWHO2    HIN144X.
   WKUNON2   HIN145X.    EOUPAY2   HIN146X.    FAMPAID2  HIN147X.
   VARSIN2   HIN148X.    SSTYPE2   HIN149X.    PLNTYP2   HIN150X.
   DCHOICE2  HIN151X.    PPLIS2    HIN152X.    OUTPUSE2  HIN153X.
   WELCHLD2  HIN154X.    MAMMOG2   HIN155X.    PL2TYPR1  HIN156X.
   PL2TYPR2  HIN157X.    HMOR2     HIN158X.    HLTHIN3   HIN159X.
   COVSTAT3  HIN160X.    INWHO3    HIN161X.    WKUNON3   HIN162X.
   EOUPAY3   HIN163X.    FAMPAID3  HIN164X.    VARSIN3   HIN165X.
   SSTYPE3   HIN166X.    PLNTYP3   HIN167X.    DCHOICE3  HIN168X.
   PPLIS3    HIN169X.    OUTPUSE3  HIN170X.    WELCHLD3  HIN171X.
   MAMMOG3   HIN172X.    PL3TYPR1  HIN173X.    PL3TYPR2  HIN174X.
   HMOR3     HIN175X.    HLTHIN4   HIN176X.    COVSTAT4  HIN177X.
   INWHO4    HIN178X.    WKUNON4   HIN179X.    EOUPAY4   HIN180X.
   FAMPAID4  HIN181X.    VARSIN4   HIN182X.    SSTYPE4   HIN183X.
   PLNTYP4   HIN184X.    DCHOICE4  HIN185X.    PPLIS4    HIN186X.
   OUTPUSE4  HIN187X.    WELCHLD4  HIN188X.    MAMMOG4   HIN189X.
   PL4TYPR1  HIN190X.    PL4TYPR2  HIN191X.    HMOR4     HIN192X.
   LHIPCOND  HIN193X.    NHIDENY   HIN194X.    NHIPCNDR  HIN195X.
   NHIHRISK  HIN196X.    NHIWORK   HIN197X.    NHICOST1  HIN198X.
   NHIOTHR   HIN199X.    STAYD2YR  HIN200X.    EMPLOYHI  HIN201X.
   PRIVHICR  HIN202X.    GHINPPER  HIN203X.    GHINPFAM  HIN204X.
   SHINPPER  HIN205X.    SHINPFAM  HIN206X.    MCARPRIV  HIN207X.
   MAIDOTHR  HIN208X.    MILHIR    HIN209X.    COVSTATR  HIN210X.
   NOJOB     HIN211X.    NOEMPHI   HIN212X.    NHIPTIME  HIN213X.
   EMPNOFAM  HIN214X.    NHIRNOUT  HIN215X.    NHIHLTH   HIN216X.
   NHICOST2  HIN217X.    NHIDSSAT  HIN218X.    NHIDONTB  HIN219X.
   NHINNEED  HIN220X.    NHIOTHCV  HIN221X.    NHIOLD    HIN222X.
   NHICHPCR  HIN223X.    NHIOTHER  HIN224X.    NHIRNOTC  HIN225X.
   OTHCOV    HIN226X.    WLASTCOV  HIN227X.    NHIRSTOP  HIN228X.
   TRYFNDIN  HIN229X.    NHICANTF  HIN230X.    NHILAPSE  HIN231X.
   NHILAPMO  HIN232X.    NHIMAINR  HIN233X.    MCARCOST  HIN234X.
   ;
 
PROC CONTENTS DATA=NHIS.HEALTHIN;
 
PROC FREQ DATA=NHIS.HEALTHIN;
TITLE1 'FREQUENCY REPORT FOR 1994 NHIS HEALTH INSURANCE FILE';
TITLE2 '(WEIGHTED)';
TABLES RECTYPE/LIST MISSING;
WEIGHT WTFA;
 
PROC FREQ DATA=NHIS.HEALTHIN;
TITLE1 'FREQUENCY REPORT FOR 1994 NHIS HEALTH INSURANCE FILE';
TITLE2 '(UNWEIGHTED)';
TABLES RECTYPE/LIST MISSING;
 
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
              STATEMENT: FORMAT _ALL_;
RUN;

