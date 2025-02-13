DM 'CLE LOG; CLE OUT';
**************************************************************************
    April 30, 2007
 
THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
FILE FROM THE NHIS 1995 HEALTHIN.DAT ASCII FILE.
 
NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
      GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
      DOCUMENTATION.
 
THIS IS STORED IN HEALTHIN.SAS
*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;
 
LIBNAME NHIS    'C:\NHIS1995\';
LIBNAME LIBRARY 'C:\NHIS1995\';

FILENAME ASCIIDAT 'C:\NHIS1995\HEALTHIN.DAT';
 
* DEFINE VARIABLE VALUES FOR REPORT;
 
PROC FORMAT LIBRARY=LIBRARY;
  VALUE  HLT001X
   85               = "Health Insurance"
   ;
  VALUE  HLT002X
   95               = "1995"
   ;
  VALUE $HLT003X
   ;
  VALUE $HLT004X
   ;
  VALUE  HLT005X
   01               = "Week 1"
   02               = "Week 2"
   03               = "Week 3"
   04               = "Week 4"
   05               = "Week 5"
   06               = "Week 6"
   07               = "Week 7"
   08               = "Week 8"
   09               = "Week 9"
   10               = "Week 10"
   11               = "Week 11"
   12               = "Week 12"
   13               = "Week 13"
   ;
  VALUE  HLT006X
   0                = "Interview not late"
   1                = "One week late"
   2                = "Two weeks late"
   3                = "Unknown"
   ;
  VALUE  HLT007X
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
  VALUE  HLT008X
   1                = "Yes, phone number given"
   2                = "Yes, no phone number given"
   3                = "No"
   4                = "Unknown"
   ;
  VALUE  HLT009X
   1                = "Male"
   2                = "Female"
   ;
  VALUE  HLT010X
   00               = "Under 1 year"
   01-98            = "Number of years"
   99               = "99+ years of age"
   ;
  VALUE  HLT011X
   1                = "Under 5 years"
   2                = "5-17 years"
   3                = "18-24 years"
   4                = "25-44 years"
   5                = "45-64 years"
   6                = "65-69 years"
   7                = "70-74 years"
   8                = "75 years and over"
   ;
  VALUE  HLT012X
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
  VALUE  HLT013X
   00-35            = "Months"
   36               = "Over 3 years"
   ;
  VALUE $HLT014X
   ;
  VALUE $HLT015X
   "01" = "January"      "08" = "August"
   "02" = "February"     "09" = "September"
   "03" = "March"        "10" = "October"
   "04" = "April"        "11" = "November"
   "05" = "May"          "12" = "December"
   "06" = "June"         "99" = "Unknown"
   "07" = "July"
   ;
  VALUE $HLT016X
   "1800"-"1899"    = "1800-1899"
   "1900"-"1996"    = "1900-1996"
   "9999"           = " "
   ;
  VALUE  HLT017X
   0                = "Hispanic Origin Known"
   1                = "Hispanic Origin Imputed from"
   ;
  VALUE  HLT018X
   01               = "White"
   02               = "Black/African American"
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
   16               = "Other Race"
   17               = "Multiple Race"
   99               = "Unknown"
   ;
  VALUE  HLT019X
   1                = "White"
   2                = "Black"
   3                = "Other"
   ;
  VALUE  HLT020X
   1                = "White"
   2                = "Non-white"
   ;
  VALUE  HLT021X
   1                = "Black"
   2                = "Non-black"
   ;
  VALUE  HLT022X
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
  VALUE  HLT023X
   0                = "Under 14 years"
   1                = "Married - spouse in household"
   2                = "Married - spouse not in household"
   3                = "Widowed"
   4                = "Divorced"
   5                = "Separated"
   6                = "Never married"
   7                = "Unknown"
   ;
  VALUE  HLT024X
   1                = "Non-veteran"
   2                = "WW I"
   3                = "WW II"
   4                = "Korean War"
   5                = "Vietnam veteran"
   6                = "Post-Vietnam"
   7                = "Other service"
   8                = "Served in Armed Forces,unknown if war veteran"
   9                = "Unknown if served in Armed Forces"
   .                = "Under 18 years of age"
   ;
  VALUE  HLT025X
   0                = "Non-veteran"
   1                = "All service in Guard/Reserve"
   2                = "Some service in Guard/Reserve"
   3                = "Unknown if all service in Guard/Reserve"
   4                = "No active service in Guard/Reserve"
   5                = "Unknown if ever active member in Guard/Reserve or served in Armed Forces"
   .                = "Under 18 years of age"
   ;
  VALUE  HLT026X
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
  VALUE  HLT027X
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
  VALUE  HLT028X
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
  VALUE  HLT029X
   0                = "None; kindergarten only"
   1                = "1-8 years (elementary)"
   2                = "9-11 years (high school)"
   3                = "12 years (high school graduate)"
   4                = "1-3 years (college)"
   5                = "4 years (college graduate)"
   6                = "5+ years (post-college)"
   7                = "Unknown"
   ;
  VALUE  HLT030X
   1                = "Less than $20,000"
   2                = "$20,000 or more"
   3                = "Unknown"
   ;
  VALUE  HLT031X
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
  VALUE  HLT032X
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
  VALUE  HLT033X
   1                = "At or above poverty threshold"
   2                = "Below poverty threshold"
   3                = "Unknown"
   ;
  VALUE $HLT034X
   "&"              = "Primary individual"
   "-"              = "Secondary individual"
   "0"              = "Primary family"
   "1"-"9"          = "Secondary family"
   ;
  VALUE $HLT035X
   "&"              = "Reference person, living alone"
   "0"              = "Reference person, 2+ persons in household"
   "1"              = "Spouse, other spouse NOT in Armed Forces and living at home"
   "2"              = "Spouse, other spouse IN Armed Forces and living at home"
   "3"              = "Child of reference person or spouse"
   "4"              = "Grandchild of reference person or spouse"
   "5"              = "Parent of reference person or spouse"
   "6"              = "Other relative"
   "7"              = "Child of military family with no eligible reference person"
   "9"              = "Unknown"
   ;
  VALUE  HLT036X
   1                = "Living alone"
   2                = "Living only with non-relative"
   3                = "Living with spouse"
   4                = "Living with relative - other"
   ;
  VALUE  HLT037X
   ;
  VALUE  HLT038X
   1-8              = "Number of members"
   9                = "9+ members"
   ;
  VALUE  HLT039X
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
  VALUE  HLT040X
   1                = "Working"
   2                = "Keeping house"
   3                = "Going to school"
   4                = "Something else"
   5                = "Unknown"
   .                = "Not applicable (Under 18 years)"
   ;
  VALUE  HLT041X
   1                = "Excellent"
   2                = "Very Good"
   3                = "Good"
   4                = "Fair"
   5                = "Poor"
   6                = "Unknown"
   ;
  VALUE  HLT042X
   1                = "Unable to perform major activity"
   2                = "Limited in kind/amount major activity"
   3                = "Limited in other activities"
   4                = "Not limited (includes unknowns)"
   ;
  VALUE  HLT043X
   1                = "Unable to work"
   2                = "Limited in kind/amount of work"
   3                = "Limited in other activities"
   4                = "Not limited (includes unknowns)"
   .                = "Not applicable (under 18 years, 70+ years)"
   ;
  VALUE  HLT044X
   1                = "Unable to attend school"
   2                = "Attends special school/classes"
   3                = "Needs special school/classes"
   4                = "Limited in school attendance"
   5                = "Limited in other activities"
   6                = "Not limited (includes unknowns)"
   .                = "Not applicable (Under 5 years or 18+ years)"
   ;
  VALUE  HLT045X
   1                = "Unable to perform personal care needs"
   2                = "Limited in performing other routine needs"
   3                = "Not limited in performing personal or routine needs"
   4                = "Unknown"
   .                = "Not applicable (Under 5 years; 5-59 years not limited; 70+ years old)"
   ;
  VALUE  HLT046X
   1                = "Worked in past 2 weeks"
   2                = "Did not work, has job; not on lay-off and not looking for work"
   3                = "Did not work, has job; looking for work"
   4                = "Did not work, has job; on lay- off"
   5                = "Did not work, has job; on lay-off and looking for work"
   6                = "Did not work, has job; unknown if looking/on lay-off"
   7                = "Did not work, has no job; looking for work/on lay-off"
   8                = "Not in Labor Force (18+ years)"
   .                = "Not applicable (Under 18 years old)"
   ;
  VALUE  HLT047X
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
  VALUE  HLT048X
   ;
  VALUE  HLT049X
   ;
  VALUE  HLT050X
   ;
  VALUE  HLT051X
   ;
  VALUE  HLT052X
   1                = "Self-entirely"
   2                = "Self-partly"
   3                = "Proxy"
   4                = "Unknown"
   ;
  VALUE  HLT053X
   1                = "Condition List 1, Skin and musculoskeletal"
   2                = "Condition List 2, Impairments"
   3                = "Condition List 3, Digestive"
   4                = "Condition List 4, Miscellaneous"
   5                = "Condition List 5, Circulatory"
   6                = "Condition List 6, Respiratory"
   7                = "Unknown"
   ;
  VALUE  HLT054X
   36-98            = "Number of inches"
   99               = "Unknown"
   .                = "Under 18 years of age"
   ;
  VALUE  HLT055X
   050-500          = "Number of pounds"
   501              = "Unknown"
   .                = "Under 18 years of age"
   ;
  VALUE  HLT056X
   00               = "None"
   01-14            = "Days"
   ;
  VALUE  HLT057X
   00               = "None"
   01-14            = "Days"
   ;
  VALUE  HLT058X
   00               = "None"
   01-14            = "Days"
   ;
  VALUE  HLT059X
   00               = "None"
   01-14            = "Days"
   ;
  VALUE  HLT060X
   00               = "None"
   01-14            = "Days"
   ;
  VALUE  HLT061X
   000              = "None"
   001-365          = "1-365 days"
   366              = "Unknown"
   ;
  VALUE  HLT062X
   0                = "None"
   1                = "1-7 days"
   2                = "8-30 days"
   3                = "31-180 days"
   4                = "181-365 days"
   5                = "Unknown"
   ;
  VALUE  HLT063X
   000              = "None"
   001-996          = "Visits"
   997              = "997+ visits"
   998              = "Unknown"
   ;
  VALUE  HLT064X
   0                = "Never"
   1                = "Less than 1 year"
   2                = "1 to less than 2 years"
   3                = "2 to less than 5 years"
   4                = "5 years or more"
   5                = "Unknown"
   ;
  VALUE  HLT065X
   ;
  VALUE  HLT066X
   ;
  VALUE  HLT067X
   ;
  VALUE  HLT068X
   ;
  VALUE  HLT069X
   ;
  VALUE  HLT070X
   ;
  VALUE  HLT071X
   ;
  VALUE  HLT072X
   ;
  VALUE  HLT073X
   ;
  VALUE  HLT074X
   ;
  VALUE  HLT075X
   ;
  VALUE  HLT076X
   1                = "Less than 1 year"
   2                = "1 year, less than 5 years"
   3                = "5 years, less than 10 years"
   4                = "10 years, less than 15 years"
   5                = "15 years or more"
   9                = "Unknown"
   .                = "Not applicable (Foreign-born)"
   ;
  VALUE  HLT077X
   1                = "Less than 1 year"
   2                = "1 year, less than 5 years"
   3                = "5 years, less than 10 years"
   4                = "10 years, less than 15 years"
   5                = "15 years or more"
   9                = "Unknown"
   .                = "Not applicable (US born)"
   ;
  VALUE  HLT078X
   ;
  VALUE  HLT079X
   1                = "Quarter 1"
   2                = "Quarter 2"
   3                = "Quarter 3"
   4                = "Quarter 4"
   ;
  VALUE  HLT080X
   1                = "Northeast"
   2                = "Midwest"
   3                = "South"
   4                = "West"
   ;
  VALUE  HLT081X
   1                = "5,000,000 or more"
   2                = "2,500,000 - 4,999,999"
   3                = "1,000,000 - 2,499,999"
   4                = "500,000 - 999,999"
   5                = "250,000 - 499,999"
   6                = "100,000 - 249,999"
   7                = "Under 100,000"
   .                = "Non-MSA"
   ;
  VALUE  HLT082X
   1                = "In MSA; in Central City"
   2                = "In MSA; not in Central City"
   3                = "Not in MSA"
   ;
  VALUE  HLT083X
   ;
  VALUE  HLT084X
   ;
  VALUE  HLT085X
   ;
  VALUE  HLT086X
   ;
  VALUE  HLT087X
   ;
  VALUE  HLT088X
   ;
  VALUE  HLT089X
   ;
  VALUE  HLT090X
   ;
  VALUE  HLT091X
   ;
  VALUE  HLT092X
   ;
  VALUE  HLT093X
   ;
  VALUE  HLT094X
   ;
  VALUE  HLT095X
   ;
  VALUE  HLT096X
   ;
  VALUE  HLT097X
   ;
  VALUE  HLT098X
   ;
  VALUE  HLT099X
   ;
  VALUE  HLT100X
   ;
  VALUE  HLT101X
   ;
  VALUE  HLT102X
   ;
  VALUE  HLT103X
   1                = "Self representing"
   2                = "Non self representing"
   ;
  VALUE  HLT104X
   1-4              = "Code used to identify nationally representative subsamples"
   ;
  VALUE  HLT105X
   0                = "One or more sections dummied"
   1                = "Total dummy record"
   .                = "Not a dummy record"
   ;
  VALUE  HLT106X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HLT107X
   1                = "Part A - Hospital only"
   2                = "Part B - Medical only"
   3                = "Both part A and part B"
   4                = "Card NA"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if covered by Medicare"
   ;
  VALUE  HLT108X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if covered by Medicare, covered but part A/B coverage unknown from card"
   ;
  VALUE  HLT109X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if covered by Medicare, covered but part A/B coverage unknown from card"
   ;
  VALUE  HLT110X
   1                = "Less than 6 months"
   2                = "6 months, but less than 1 year"
   3                = "1 year but less than 2 years"
   4                = "2 years or more"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if covered by Medicare, covered but age 67 or older"
   ;
  VALUE  HLT111X
   1                = "Any doctor"
   2                = "Select from list/group"
   8                = "Not Ascertained"
   9                = "DK or refused"
   .                = "NA; No/DK if Medicare received; not resident of Medicare managed care state"
   ;
  VALUE  HLT112X
   01-23            = "Medicare Plan code name"
   77               = "Insurance, DK name"
   88               = "Other Insurance"
   98               = "Not ascertained"
   99               = "DK or refused to say if has medicare"
   .                = "NA; No/DK if Medicare received; not resident of Medicare managed care state; Doesn't select from list/group"
   ;
  VALUE  HLT113X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HLT114X
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
  VALUE  HLT115X
   1                = "Any doctor"
   2                = "Select from list/group"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No/DK if Medicaid received; not resident of group A Medicaid state"
   ;
  VALUE  HLT116X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No/DK if medicaid received; not resident of group A Medicaid state; doesn't select from list/group"
   ;
  VALUE  HLT117X
   0                = "Single person (not asked question)"
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HLT118X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HLT119X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   ;
  VALUE  HLT120X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   ;
  VALUE  HLT121X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HLT122X
   01-02            = ""
   04-23            = ""
   55               = ""
   77               = ""
   88               = "Refer to Health Insurance Plan Listing"
   98               = "Not ascertained"
   99               = "DK or refused to say if has insurance"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HLT123X
   0                = "Not known to be covered by this plan"
   1                = "Covered by this general purpose plan"
   2                = "Covered by this single service plan"
   8                = "Unknown which family member is covered by this plan"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HLT124X
   1                = "In own name"
   2                = "Person not in household"
   3                = "Someone else in family (HH) or unknown"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HLT125X
   1                = "Employer"
   2                = "Union"
   3                = "Through workplace but DK if employer or union"
   4                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HLT126X
   1                = "All"
   2                = "Some"
   3                = "None"
   8                = "Not Ascertained"
   9                = "DK or Refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual; coverage not obtained through workplace"
   ;
  VALUE  HLT127X
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
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual; entire premium paid by employer/union"
   ;
  VALUE  HLT128X
   1                = "Variety of service"
   2                = "Single service/care"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HLT129X
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
  VALUE  HLT130X
   1                = "HMO/IPA"
   2                = "Other"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance, this plan not mentioned  for this family/individual, single service plan"
   ;
  VALUE  HLT131X
   1                = "Any doctor"
   2                = "Select from group/list"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance, this plan not mentioned for this family/individual, single service plan"
   ;
  VALUE  HLT132X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HLT133X
   1                = "yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HLT134X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HLT135X
   0                = "No person under 18 years"
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HLT136X
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
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HLT137X
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
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HLT138X
   01               = "Coded HMO, respondent said HMO"
   02               = "Coded HMO, respondent said not HMO"
   03               = "Coded HMO, respondent said doesn't know, refused if HMO or not ascertained"
   04               = "Coded 'name of plan unknown', respondent said HMO"
   05               = "Coded 'name of plan unknown', respondent said not HMO"
   06               = "Coded 'name of plan unknown', respondent said doesn't know, refused if HMO or not ascertained"
   07               = "Coded Blue Plan or other, respondent said HMO"
   08               = "Coded Blue plan or other, respondent said not HMO"
   09               = "Coded Blue plan or other, respondent said doesn't know, refused if HMO or not ascertained"
   10               = "Coded DK, refused or not ascertained, respondent said HMO"
   11               = "Coded DK, refused or not ascertained, respondent said not HMO"
   12               = "Coded DK, refused or not ascertained, respondent doesn't know, refused HMO or not ascertained"
   .                = "NA; person/family not covered by this plan, single service plan"
   ;
  VALUE  HLT139X
   01-02            = ""
   04-23            = ""
   55               = ""
   77               = ""
   88               = "Refer to Health Insurance Plan Listing"
   98               = "Not ascertained"
   99               = "DK or refused to say if has insurance"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HLT140X
   0                = "Not known to be covered by this plan"
   1                = "Covered by this general purpose plan"
   2                = "Covered by this single service plan"
   8                = "Unknown which family member is covered by this plan"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HLT141X
   1                = "In own name"
   2                = "Person not in household"
   3                = "Someone else in family (HH) or unknown"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HLT142X
   1                = "Employer"
   2                = "Union"
   3                = "Through workplace but DK if employer or union"
   4                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HLT143X
   1                = "All"
   2                = "Some"
   3                = "None"
   8                = "Not Ascertained"
   9                = "DK or Refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual; coverage not obtained through workplace"
   ;
  VALUE  HLT144X
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
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual; entire premium paid by employer/union"
   ;
  VALUE  HLT145X
   1                = "Variety of service"
   2                = "Single service/care"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HLT146X
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
  VALUE  HLT147X
   1                = "HMO/IPA"
   2                = "Other"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance, this plan not mentioned  for this family/individual, single service plan"
   ;
  VALUE  HLT148X
   1                = "Any doctor"
   2                = "Select from group/list"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance, this plan not mentioned for this family/individual, single service plan"
   ;
  VALUE  HLT149X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HLT150X
   1                = "yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HLT151X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HLT152X
   0                = "No person under 18 years"
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HLT153X
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
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HLT154X
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
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HLT155X
   01               = "Coded HMO, respondent said HMO"
   02               = "Coded HMO, respondent said not HMO"
   03               = "Coded HMO, respondent said doesn't know, refused if HMO or not ascertained"
   04               = "Coded 'name of plan unknown', respondent said HMO"
   05               = "Coded 'name of plan unknown', respondent said not HMO"
   06               = "Coded 'name of plan unknown', respondent said doesn't know, refused if HMO or not ascertained"
   07               = "Coded Blue Plan or other, respondent said HMO"
   08               = "Coded Blue plan or other, respondent said not HMO"
   09               = "Coded Blue plan or other, respondent said doesn't know, refused if HMO or not ascertained"
   10               = "Coded DK, refused or not ascertained, respondent said HMO"
   11               = "Coded DK, refused or not ascertained, respondent said not HMO"
   12               = "Coded DK, refused or not ascertained, respondent doesn't know, refused HMO or not ascertained"
   .                = "NA; person/family not covered by this plan, single service plan"
   ;
  VALUE  HLT156X
   01-02            = ""
   04-23            = ""
   55               = ""
   77               = ""
   88               = "Refer to Health Insurance Plan Listing"
   98               = "Not ascertained"
   99               = "DK or refused to say if has insurance"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HLT157X
   0                = "Not known to be covered by this plan"
   1                = "Covered by this general purpose plan"
   2                = "Covered by this single service plan"
   8                = "Unknown which family member is covered by this plan"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HLT158X
   1                = "In own name"
   2                = "Person not in household"
   3                = "Someone else in family (HH) or unknown"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HLT159X
   1                = "Employer"
   2                = "Union"
   3                = "Through workplace but DK if employer or union"
   4                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HLT160X
   1                = "All"
   2                = "Some"
   3                = "None"
   8                = "Not Ascertained"
   9                = "DK or Refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual; coverage not obtained through workplace"
   ;
  VALUE  HLT161X
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
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual; entire premium paid by employer/union"
   ;
  VALUE  HLT162X
   1                = "Variety of service"
   2                = "Single service/care"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HLT163X
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
  VALUE  HLT164X
   1                = "HMO/IPA"
   2                = "Other"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance, this plan not mentioned  for this family/individual, single service plan"
   ;
  VALUE  HLT165X
   1                = "Any doctor"
   2                = "Select from group/list"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance, this plan not mentioned for this family/individual, single service plan"
   ;
  VALUE  HLT166X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HLT167X
   1                = "yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HLT168X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HLT169X
   0                = "No person under 18 years"
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HLT170X
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
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HLT171X
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
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HLT172X
   01               = "Coded HMO, respondent said HMO"
   02               = "Coded HMO, respondent said not HMO"
   03               = "Coded HMO, respondent said doesn't know, refused if HMO or not ascertained"
   04               = "Coded 'name of plan unknown', respondent said HMO"
   05               = "Coded 'name of plan unknown', respondent said not HMO"
   06               = "Coded 'name of plan unknown', respondent said doesn't know, refused if HMO or not ascertained"
   07               = "Coded Blue Plan or other, respondent said HMO"
   08               = "Coded Blue plan or other, respondent said not HMO"
   09               = "Coded Blue plan or other, respondent said doesn't know, refused if HMO or not ascertained"
   10               = "Coded DK, refused or not ascertained, respondent said HMO"
   11               = "Coded DK, refused or not ascertained, respondent said not HMO"
   12               = "Coded DK, refused or not ascertained, respondent doesn't know, refused HMO or not ascertained"
   .                = "NA; person/family not covered by this plan, single service plan"
   ;
  VALUE  HLT173X
   01-02            = ""
   04-23            = ""
   55               = ""
   77               = ""
   88               = "Refer to Health Insurance Plan Listing"
   98               = "Not ascertained"
   99               = "DK or refused to say if has insurance"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HLT174X
   0                = "Not known to be covered by this plan"
   1                = "Covered by this general purpose plan"
   2                = "Covered by this single service plan"
   8                = "Unknown which family member is covered by this plan"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HLT175X
   1                = "In own name"
   2                = "Person not in household"
   3                = "Someone else in family (HH) or unknown"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HLT176X
   1                = "Employer"
   2                = "Union"
   3                = "Through workplace but DK if employer or union"
   4                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HLT177X
   1                = "All"
   2                = "Some"
   3                = "None"
   8                = "Not Ascertained"
   9                = "DK or Refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual; coverage not obtained through workplace"
   ;
  VALUE  HLT178X
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
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual; entire premium paid by employer/union"
   ;
  VALUE  HLT179X
   1                = "Variety of service"
   2                = "Single service/care"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HLT180X
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
  VALUE  HLT181X
   1                = "HMO/IPA"
   2                = "Other"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance, this plan not mentioned  for this family/individual, single service plan"
   ;
  VALUE  HLT182X
   1                = "Any doctor"
   2                = "Select from group/list"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance, this plan not mentioned for this family/individual, single service plan"
   ;
  VALUE  HLT183X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HLT184X
   1                = "yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HLT185X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HLT186X
   0                = "No person under 18 years"
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HLT187X
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
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HLT188X
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
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/individual"
   ;
  VALUE  HLT189X
   01               = "Coded HMO, respondent said HMO"
   02               = "Coded HMO, respondent said not HMO"
   03               = "Coded HMO, respondent said doesn't know, refused if HMO or not ascertained"
   04               = "Coded 'name of plan unknown', respondent said HMO"
   05               = "Coded 'name of plan unknown', respondent said not HMO"
   06               = "Coded 'name of plan unknown', respondent said doesn't know, refused if HMO or not ascertained"
   07               = "Coded Blue Plan or other, respondent said HMO"
   08               = "Coded Blue plan or other, respondent said not HMO"
   09               = "Coded Blue plan or other, respondent said doesn't know, refused if HMO or not ascertained"
   10               = "Coded DK, refused or not ascertained, respondent said HMO"
   11               = "Coded DK, refused or not ascertained, respondent said not HMO"
   12               = "Coded DK, refused or not ascertained, respondent doesn't know, refused HMO or not ascertained"
   .                = "NA; person/family not covered by this plan, single service plan"
   ;
  VALUE  HLT190X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HLT191X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HLT192X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; No or unknown if unable to get insurance"
   ;
  VALUE  HLT193X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained but turned down (entire question)"
   9                = "DK any reason"
   .                = "NA; No or unknown if unable to get insurance"
   ;
  VALUE  HLT194X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; No or unknown if unable to get insurance"
   ;
  VALUE  HLT195X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; No or unknown if unable to get insurance"
   ;
  VALUE  HLT196X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; No or unknown if unable to get insurance"
   ;
  VALUE  HLT197X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HLT198X
   0                = "Not asked, person has job and has insurance in own name"
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; 70+ yrs; not employed in past 2 weeks"
   ;
  VALUE  HLT199X
   0                = "Only known coverage is single purpose plan"
   1                = "Covered by at least one general purpose health plan"
   2                = "Not covered by any plan"
   6                = "Unknown if covered by at least one particular plan"
   8                = "Not ascertained (whole question)"
   9                = "Unknown if covered (whole question)"
   ;
  VALUE  HLT200X
   0                = "No known plans"
   1-4              = "Number of plans"
   ;
  VALUE  HLT201X
   0                = "No known plans"
   1-4              = "Number of plans"
   ;
  VALUE  HLT202X
   0                = "No known plans"
   1-4              = "Number of plans"
   ;
  VALUE  HLT203X
   0                = "No known plans"
   1-4              = "Number of plans"
   ;
  VALUE  HLT204X
   1                = "Covered by one or both"
   2                = "Not covered by either"
   9                = "Unknown if covered"
   ;
  VALUE  HLT205X
   1                = "Covered by both"
   2                = "Covered by one"
   3                = "Covered by neither"
   9                = "Unknown if covered"
   ;
  VALUE  HLT206X
   0                = "Covered by CHAMPUS/CHAMP-VA"
   1                = "Covered by other military/VA"
   2                = "Covered by both CHAMPUS and other military health care"
   3                = "Not covered by any military health care"
   6                = "Not covered by other military; not ascertained if covered by CHAMP-VA"
   7                = "Not covered by CHAMP-VA; not ascertained if covered by other military"
   8                = "Not ascertaine"
   ;
  VALUE  HLT207X
   1                = "Yes, covered"
   2                = "Not known to be covered, some response to non-coverage reasons"
   3                = "Not known to be covered, no response to non-coverage items"
   ;
  VALUE  HLT208X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HLT209X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HLT210X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HLT211X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HLT212X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HLT213X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HLT214X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HLT215X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HLT216X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HLT217X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HLT218X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HLT219X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HLT220X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HLT221X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HLT222X
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
  VALUE  HLT223X
   1                = "State Plan"
   2                = "Private Plan"
   3                = "Other Plan"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; covered, not known to be covered but not response to non-coverage items."
   ;
  VALUE  HLT224X
   1                = "Less than 6 months ago"
   2                = "6 months ago, but less than 1 year ago"
   3                = "1 year ago, but less than 3 years ago"
   4                = "3 or more years ago"
   5                = "Never had health insurance"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA, Covered, not known to be covered but no response to non-coverage items; covered by other plan in Q.12a"
   ;
  VALUE  HLT225X
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
   .                = "NA"
   ;
  VALUE  HLT226X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HLT227X
   1                = "Could not afford"
   2                = "Was rejected"
   3                = "Other reason"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HLT228X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; not covered, not known to be covered"
   ;
  VALUE  HLT229X
   1                = "1 month or less"
   2                = "2-3 months"
   3                = "4-6 months"
   4                = "More than 6 months"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; not covered, not known to be covered, covered and no time without coverage in past 12 months"
   ;
  VALUE  HLT230X
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
   .                = "NA not covered, not known to be covered, covered and no time without coverage in past 12 months"
   ;
  VALUE  HLT231X
   1                = "Zero"
   2                = "Less than $500"
   3                = "$500 - $1,999"
   4                = "$2,000 - $2,999"
   5                = "$3,000 - $4,999"
   6                = "$5,000 or more"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HLT232X
   1                = "Self"
   2                = "Proxy"
   9                = "Unknown Respondent"
   ;
  VALUE  HLT233X
   00               = "Unknown respondent"
   01-28            = "Person number"
   30-97            = "Person number"
   98               = "Active duty military"
   99               = "Non household member"
   ;

 
DATA NHIS.HEALTHIN;
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1995\';
   INFILE ASCIIDAT MISSOVER TRUNCOVER LRECL=560;
 
* DEFINE LENGTH OF NUMERIC VARIABLES;
 
LENGTH
   RECTYPE   3  YEAR      3  WEEKCODE  3  LAFLAG    3  LIVQTR    3
   PHONE     3  SEX       3  AGE       3  AGER1     3  AGER2     3
   AGER3     3  HISPFLAG  3  RACE      3  RACER1    3  RACER2    3
   RACER3    3  HISPANIC  3  MARSTAT   3  VETERAN   3  RESERVE   3
   EDUC      3  EDUCR     3  EDUCAD    3  EDUCADR   3  INCFAM20  3
   INCFAM    3  INCFAMR   3  POVERTY   3  FAMRELR   3  FAMSIZE   3
   FAMSIZER  3  PARENT    3  MAJACT    3  HEALTH    3  LATOTAL   3
   LAWORK    3  LASCHOOL  3  LACARE    3  EMPLOY    3  WKCLASS   3
   INDUSR1   3  INDUSR2   3  OCCUPR1   3  OCCUPR2   3  RESPOND   3
   CONDLIST  3  HEIGHT    3  WEIGHT    3  RADAY     3  BDDAY     3
   WLDAY     3  SLDAY     3  OTHDAY    3  BDDAY12   3  BDDAY12R  3
   DV12      3  DVINT     3  NCOND     3  NACUTE    3  NDV2      3
   HEP12     3  HDA12     3  HEP12X    3  HDA12X    3  DISDA6    3
   DIS6X     3  DISDA6X   3  DISDA12X  3  YRSLPRES  3  YRSLIUS   3
   WTINT     8  QUARTER   3  REGION    3  MSASIZE   3  MSA       3
   CCFACT    8  WTFQ      8  WSFS      6  WTFA      6  WT65      6
   RADAYWP   6  BDDAYWP   6  WLDAYSP   6  SLDAYWP   6  DV12WPQ   6
   DV12WPS   6  DV12WPA   6  HDA12WPQ  6  HDA12WPS  6  HDA12WPA  6
   HEP12WP   6  VARSTRAR  3  VARPSUR   3  VARSUBSR  3  UNITSS    4
   TYPEPSU   3  PANEL     3  DUMMYREC  3  MEDICARE  3  TYPECOV   3
   MCARPRTA  3  MCARPRTB  3  MCARTIME  3  MCARDOC   3  MCARNAME  3
   MAIDLAMO  3  MAIDTIME  3  MAIDDOC   3  APPROVAL  3  MAID12M   3
   OTHERPA   3  CHAMP     3  MILITHC   3  INDIANHC  3  HLTHIN1   3
   COVSTAT1  3  INWHONA1  3  WRKUNON1  3  EORUPAY1  3  FAMPAID1  3
   VARORSI1  3  SSTYPE1   3  PLANTYP1  3  DRCHOIC1  3  PPRVLIS1  3
   OUTPLAN1  3  DENTCAR1  3  WELCHLD1  3  PLANTY11  3  PLANTY21  3
   HMOR1     3  HLTHIN2   3  COVSTAT2  3  INWHONA2  3  WRKUNON2  3
   EORUPAY2  3  FAMPAID2  3  VARORSI2  3  SSTYPE2   3  PLANTYP2  3
   DRCHOIC2  3  PPRVLIS2  3  OUTPLAN2  3  DENTCAR2  3  WELCHLD2  3
   PLANTY12  3  PLANTY22  3  HMOR2     3  HLTHIN3   3  COVSTAT3  3
   INWHONA3  3  WRKUNON3  3  EORUPAY3  3  FAMPAID3  3  VARORSI3  3
   SSTYPE3   3  PLANTYP3  3  DRCHOIC3  3  PPRVLIS3  3  OUTPLAN3  3
   DENTCAR3  3  WELCHLD3  3  PLANTY13  3  PLANTY23  3  HMOR3     3
   HLTHIN4   3  COVSTAT4  3  INWHONA4  3  WRKUNON4  3  EORUPAY4  3
   FAMPAID4  3  VARORSI4  3  SSTYPE4   3  PLANTYP4  3  DRCHOIC4  3
   PPRVLIS4  3  OUTPLAN4  3  DENTCAR4  3  WELCHLD4  3  PLANTY14  3
   PLANTY24  3  HMOR4     3  LHIPCOND  3  NHIDENY   3  NHIPCNDR  3
   NHIHRISK  3  NHIWORK   3  NHICOST1  3  NHIOTHR   3  STAYD2YR  3
   EMPLOYHI  3  PRIVHICR  3  GHINPPER  3  GHINPFAM  3  SHINPPER  3
   SHINPFAM  3  MCARPRIV  3  MAIDOTHR  3  MILHIR    3  COVSTATR  3
   NOJOB     3  NOEMPHI   3  NHIPTIME  3  EMPNOFAM  3  NHIRNOUT  3
   NHIHLTH   3  NHICOST2  3  NHIDSSAT  3  NHIDONTB  3  NHINNEED  3
   NHIOTHCV  3  NHIOLD    3  NHICHPCR  3  NHIOTHER  3  NHIRNOTC  3
   OTHCOV    3  WLASTCOV  3  NHIRSTOP  3  TRYFNDIN  3  NHICANTF  3
   NHILAPSE  3  NHILAPMO  3  NHIMAINR  3  MCARCOST  3  RESPSTAT  3
   ANSWPERS  3
   ;

* INPUT ALL VARIABLES;
 
INPUT
   RECTYPE      1 -   2        YEAR         3 -   4
   HHID     $   5 -  14        PNUM     $  15 -  16
   WEEKCODE    19 -  20        LAFLAG      21 -  21
   LIVQTR      22 -  23        PHONE       24 -  24
   SEX         25 -  25        AGE         27 -  28
   AGER1       29 -  29        AGER2       30 -  30
   AGER3       31 -  32        BIRTH    $  34 -  39
   BIRTHMO  $  34 -  35        BIRTHYR  $  36 -  39
   HISPFLAG    40 -  40        RACE        41 -  42
   RACER1      43 -  43        RACER2      44 -  44
   RACER3      45 -  45        HISPANIC    46 -  47
   MARSTAT     48 -  48        VETERAN     49 -  49
   RESERVE     50 -  50        EDUC        51 -  52
   EDUCR       53 -  53        EDUCAD      54 -  55
   EDUCADR     56 -  56        INCFAM20    57 -  57
   INCFAM      58 -  59        INCFAMR     60 -  60
   POVERTY     61 -  61        FAMNUM   $  62 -  62
   FAMREL   $  63 -  63        FAMRELR     64 -  64
   FAMSIZE     65 -  66        FAMSIZER    67 -  67
   PARENT      68 -  68        MAJACT      69 -  69
   HEALTH      70 -  70        LATOTAL     71 -  71
   LAWORK      72 -  72        LASCHOOL    73 -  73
   LACARE      74 -  74        EMPLOY      75 -  75
   WKCLASS     76 -  76        INDUSR1     80 -  81
   INDUSR2     82 -  83        OCCUPR1     87 -  88
   OCCUPR2     89 -  90        RESPOND     91 -  91
   CONDLIST    92 -  92        HEIGHT      93 -  94
   WEIGHT      95 -  97        RADAY       98 -  99
   BDDAY      100 - 101        WLDAY      102 - 103
   SLDAY      104 - 105        OTHDAY     106 - 107
   BDDAY12    108 - 110        BDDAY12R   111 - 111
   DV12       112 - 114        DVINT      115 - 115
   NCOND      116 - 117        NACUTE     118 - 119
   NDV2       120 - 121        HEP12      122 - 123
   HDA12      124 - 126        HEP12X     127 - 128
   HDA12X     129 - 131        DISDA6     132 - 133
   DIS6X      134 - 136        DISDA6X    137 - 138
   DISDA12X   139 - 141        YRSLPRES   144 - 144
   YRSLIUS    145 - 145        WTINT      172 - 177 .1
   QUARTER    178 - 178        REGION     182 - 182
   MSASIZE    183 - 183        MSA        186 - 186
   CCFACT     190 - 200 .9     WTFQ       201 - 209
   WSFS       210 - 218        WTFA       219 - 227
   WT65       228 - 236        RADAYWP    237 - 245
   BDDAYWP    246 - 254        WLDAYSP    255 - 263
   SLDAYWP    264 - 272        DV12WPQ    273 - 281
   DV12WPS    282 - 290        DV12WPA    291 - 299
   HDA12WPQ   300 - 308        HDA12WPS   309 - 317
   HDA12WPA   318 - 326        HEP12WP    327 - 335
   VARSTRAR   337 - 340        VARPSUR    341 - 341
   VARSUBSR   342 - 343        UNITSS     344 - 350
   TYPEPSU    351 - 351        PANEL      352 - 352
   DUMMYREC   401 - 401        MEDICARE   402 - 402
   TYPECOV    403 - 403        MCARPRTA   404 - 404
   MCARPRTB   405 - 405        MCARTIME   406 - 406
   MCARDOC    407 - 407        MCARNAME   408 - 409
   MAIDLAMO   410 - 410        MAIDTIME   411 - 411
   MAIDDOC    412 - 412        APPROVAL   413 - 413
   MAID12M    414 - 414        OTHERPA    415 - 415
   CHAMP      416 - 416        MILITHC    417 - 417
   INDIANHC   418 - 418        HLTHIN1    419 - 420
   COVSTAT1   421 - 421        INWHONA1   422 - 422
   WRKUNON1   423 - 423        EORUPAY1   424 - 424
   FAMPAID1   425 - 425        VARORSI1   426 - 426
   SSTYPE1    427 - 428        PLANTYP1   429 - 429
   DRCHOIC1   430 - 430        PPRVLIS1   431 - 431
   OUTPLAN1   432 - 432        DENTCAR1   433 - 433
   WELCHLD1   434 - 434        PLANTY11   435 - 436
   PLANTY21   437 - 438        HMOR1      439 - 440
   HLTHIN2    441 - 442        COVSTAT2   443 - 443
   INWHONA2   444 - 444        WRKUNON2   445 - 445
   EORUPAY2   446 - 446        FAMPAID2   447 - 447
   VARORSI2   448 - 448        SSTYPE2    449 - 450
   PLANTYP2   451 - 451        DRCHOIC2   452 - 452
   PPRVLIS2   453 - 453        OUTPLAN2   454 - 454
   DENTCAR2   455 - 455        WELCHLD2   456 - 456
   PLANTY12   457 - 458        PLANTY22   459 - 460
   HMOR2      461 - 462        HLTHIN3    463 - 464
   COVSTAT3   465 - 465        INWHONA3   466 - 466
   WRKUNON3   467 - 467        EORUPAY3   468 - 468
   FAMPAID3   469 - 469        VARORSI3   470 - 470
   SSTYPE3    471 - 472        PLANTYP3   473 - 473
   DRCHOIC3   474 - 474        PPRVLIS3   475 - 475
   OUTPLAN3   476 - 476        DENTCAR3   477 - 477
   WELCHLD3   478 - 478        PLANTY13   479 - 480
   PLANTY23   481 - 482        HMOR3      483 - 484
   HLTHIN4    485 - 486        COVSTAT4   487 - 487
   INWHONA4   488 - 488        WRKUNON4   489 - 489
   EORUPAY4   490 - 490        FAMPAID4   491 - 491
   VARORSI4   492 - 492        SSTYPE4    493 - 494
   PLANTYP4   495 - 495        DRCHOIC4   496 - 496
   PPRVLIS4   497 - 497        OUTPLAN4   498 - 498
   DENTCAR4   499 - 499        WELCHLD4   500 - 500
   PLANTY14   501 - 502        PLANTY24   503 - 504
   HMOR4      505 - 506        LHIPCOND   507 - 507
   NHIDENY    508 - 508        NHIPCNDR   509 - 509
   NHIHRISK   510 - 510        NHIWORK    511 - 511
   NHICOST1   512 - 512        NHIOTHR    513 - 513
   STAYD2YR   514 - 514        EMPLOYHI   515 - 515
   PRIVHICR   516 - 516        GHINPPER   517 - 517
   GHINPFAM   518 - 518        SHINPPER   519 - 519
   SHINPFAM   520 - 520        MCARPRIV   521 - 521
   MAIDOTHR   522 - 522        MILHIR     523 - 523
   COVSTATR   524 - 524        NOJOB      525 - 525
   NOEMPHI    526 - 526        NHIPTIME   527 - 527
   EMPNOFAM   528 - 528        NHIRNOUT   529 - 529
   NHIHLTH    530 - 530        NHICOST2   531 - 531
   NHIDSSAT   532 - 532        NHIDONTB   533 - 533
   NHINNEED   534 - 534        NHIOTHCV   535 - 535
   NHIOLD     536 - 536        NHICHPCR   537 - 537
   NHIOTHER   538 - 538        NHIRNOTC   539 - 540
   OTHCOV     541 - 541        WLASTCOV   542 - 542
   NHIRSTOP   543 - 544        TRYFNDIN   545 - 545
   NHICANTF   546 - 546        NHILAPSE   547 - 547
   NHILAPMO   548 - 548        NHIMAINR   549 - 550
   MCARCOST   551 - 551        RESPSTAT   552 - 552
   ANSWPERS   553 - 554
   ;

* DEFINE VARIABLE LABELS;
 
LABEL
   RECTYPE  = "RECORD TYPE"
   YEAR     = "PROCESSING YEAR"
   HHID     = "HOUSEHOLD ID"
   PNUM     = "PERSON NUMBER"
   WEEKCODE = "SAMPLING WEEK CODE"
   LAFLAG   = "LATE INTERVIEW (OR LAST ATTEMPT) FLAG"
   LIVQTR   = "TYPE OF LIVING QUARTERS:"
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
   RACER1   = "RECODE 1"
   RACER2   = "RECODE 2"
   RACER3   = "RECODE 3"
   HISPANIC = "HISPANIC ORIGIN"
   MARSTAT  = "MARITAL STATUS"
   VETERAN  = "VETERAN STATUS"
   RESERVE  = "ACTIVE GUARD/RESERVE STATUS FOR PERSONS ON ACTIVE DUTY IN ARMED FORCES"
   EDUC     = "EDUCATION OF INDIVIDUAL - COMPLETED YEARS"
   EDUCR    = "EDUCATION OF INDIVIDUAL RECODE"
   EDUCAD   = "HIGHEST EDUCATION OF RESPONSIBLE ADULT FAMILY MEMBER"
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
   MAJACT   = "MAJOR ACTIVITY"
   HEALTH   = "HEALTH STATUS"
   LATOTAL  = "ACTIVITY LIMITATION STATUS"
   LAWORK   = "ACTIVITY LIMITATION STATUS MEASURED BY 'ABILITY TO WORK'"
   LASCHOOL = "LIMITATION OF SCHOOL ACTIVITIES"
   LACARE   = "NEEDS HELP WITH PERSONAL CARE"
   EMPLOY   = "EMPLOYMENT STATUS IN PAST 2 WEEKS"
   WKCLASS  = "CLASS OF WORKER"
   INDUSR1  = "INDUSTRY RECODE 1"
   INDUSR2  = "INDUSTRY RECODE 2"
   OCCUPR1  = "OCCUPATION RECODE 1"
   OCCUPR2  = "OCCUPATION RECODE 2"
   RESPOND  = "RESPONDENT FOR CORE"
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
   HEP12    = "NUMBER OF SHORT-STAY HOSPITAL EPISODES IN PAST 12 MONTHS"
   HDA12    = "SHORT-STAY HOSPITAL EPISODE DAYS IN PAST 12 MONTHS"
   HEP12X   = "NUMBER OF SHORT-STAY HOSPITAL EPISODES IN PAST 12 MONTHS EXCLUDING DELIVERY"
   HDA12X   = "SHORT-STAY HOSPITAL EPISODE DAYS IN PAST 12 MONTHS EXCLUDING DELIVERY"
   DISDA6   = "NUMBER OF SHORT-STAY HOSPITAL DISCHARGES IN PAST 6 MONTHS"
   DIS6X    = "NUMBER OF DAYS IN SHORT-STAY HOSPITAL DISCHARGES IN PAST 6 MONTHS"
   DISDA6X  = "NUMBER OF SHORT-STAY HOSPITAL DISCHARGES  IN PAST 6 MONTHS EXCLUDING DELIVERY"
   DISDA12X = "NUMBER OF DAYS IN SHORT-STAY HOSPITAL IN PAST 12 MONTHS FOR DISCHARGES IN PAST 6 MONTHS EXCLUDING DELIVERY"
   YRSLPRES = "YEARS LIVED IN STATE OF PRESENT RESIDENCE"
   YRSLIUS  = "YEARS LIVED IN UNITED STATES"
   WTINT    = "FINAL QUARTER BASIC WEIGHT BEFORE AGE-SEX-RACE-ETHNICITY ADJUSTMENT"
   QUARTER  = "SAMPLING QUARTER"
   REGION   = "REGION"
   MSASIZE  = "GEOGRAPHIC DISTRIBUTION"
   MSA      = "MSA - NON-MSA RESIDENCE"
   CCFACT   = "CHRONIC CONDITION PREVALENCE AND INCIDENCE FACTOR"
   WTFQ     = "FINAL BASIC WEIGHT - QUARTER"
   WSFS     = "FINAL BASIC WEIGHT - SEMI-ANNUAL (WT/2)"
   WTFA   = "FINAL BASIC WEIGHT - ANNUAL (WT/4)"
   WT65     = "6.5 WEIGHT - QUARTER, SEMI-ANNUAL AND ANNUAL"
   RADAYWP  = "RESTRICTED ACTIVITY DAYS IN PAST 2 WEEKS - QUARTER, SEMI-ANNUAL AND ANNUAL"
   BDDAYWP  = "BED DAYS IN PAST 2 WEEKS - QUARTER, SEMI-ANNUAL AND ANNUAL"
   WLDAYSP  = "WORK-LOSS DAYS IN PAST 2 WEEKS - QUARTER, SEMI-ANNUAL AND ANNUAL"
   SLDAYWP  = "SCHOOL-LOSS DAYS IN PAST 2 WEEKS - QUARTER, SEMI-ANNUAL AND ANNUAL"
   DV12WPQ  = "DOCTOR VISITS IN PAST 12 MONTHS - QUARTER"
   DV12WPS  = "DOCTOR VISITS IN PAST 12 MONTHS - SEMI-ANNUAL"
   DV12WPA  = "DOCTOR VISITS IN PAST 12 MONTHS - ANNUAL"
   HDA12WPQ = "SHORT-STAY HOSPITAL EPISODE DAYS IN PAST 12 MONTHS - QUARTER"
   HDA12WPS = "SHORT-STAY HOSPITAL EPISODE DAYS IN PAST 12 MONTHS - SEMI-ANNUAL"
   HDA12WPA = "SHORT-STAY HOSPITAL EPISODE DAYS IN PAST 12 MONTHS - ANNUAL"
   HEP12WP  = "ANNUAL NUMBER OF SHORT-STAY OSPITAL EPISODES IN PAST 12 MONTHS"
   VARSTRAR = "STRATA FOR VARIANCE ESTIMATION"
   VARPSUR  = "PSU FOR VARIANCE ESTIMATION"
   VARSUBSR = "SUBSTRATUM FOR VARIANCE ESTIMATION"
   UNITSS   = "SECONDARY SAMPLING UNIT"
   TYPEPSU  = "TYPE OF PSU"
   PANEL    = "PANEL"
   DUMMYREC = "DUMMY RECORD INDICATOR"
   MEDICARE = "COVERED BY MEDICARE LAST MONTH"
   TYPECOV  = "TYPE OF COVERAGE"
   MCARPRTA = "MEDICARE PART A (NO CARD SEEN)"
   MCARPRTB = "MEDICARE PART B (NO CARD SEEN)"
   MCARTIME = "LENGTH OF TIME WITH MEDICARE COVERAGE"
   MCARDOC  = "GO TO ANY DOCTOR OR CHOOSE FROM LIST OF DOCTORS"
   MCARNAME = "SPECIFIC NAME OF MEDICARE HEALTH PLAN"
   MAIDLAMO = "COVERED BY MEDICAID LAST MONTH"
   MAIDTIME = "LENGTH OF TIME WITH MEDICAID COVERAGE"
   MAIDDOC  = "GO TO ANY DOCTOR OR CHOOSE FROM LIST OF DOCTORS"
   APPROVAL = "NEED APPROVAL OR REFERRAL FROM USUAL DOCTOR"
   MAID12M  = "RECEIVED MEDICAID CARE IN PAST 12 MONTHS"
   OTHERPA  = "COVERED BY OTHER PUBLIC ASSISTANCE  LAST MONTH"
   CHAMP    = "COVERED BY CHAMPUS OR CHAMP - VA LAST MONTH"
   MILITHC  = "COVERED BY OTHER MILITARY HEALTH CARE LAST MONTH"
   INDIANHC = "COVERED BY INDIAN HEALTH SERVICE LAST MONTH"
   HLTHIN1  = "NAME OF PLAN 1"
   COVSTAT1 = "COVERAGE STATUS"
   INWHONA1 = "PLAN IN WHOSE NAME"
   WRKUNON1 = "ORIGINALLY OBTAINED THROUGH WORKPLACE OR UNION"
   EORUPAY1 = "EMPLOYER/UNION CURRENTLY PAY FOR PREMIUMS"
   FAMPAID1 = "LAST MONTH'S PREMIUM PAID BY FAMILY"
   VARORSI1 = "VARIETY OR SINGLE SERVICE PLAN"
   SSTYPE1  = "TYPE OF SINGLE SERVICE"
   PLANTYP1 = "TYPE OF PLAN"
   DRCHOIC1 = "CHOICE OF DOCTOR"
   PPRVLIS1 = "PREFERRED PROVIDER LIST OPTION"
   OUTPLAN1 = "PLAN PAYS FOR OUT OF PLAN USE"
   DENTCAR1 = "PLAN PAYS FOR DENTAL CARE"
   WELCHLD1 = "PLAN PAYS FOR WELL CHILD CARE"
   PLANTY11 = "TYPE OF PLAN"
   PLANTY21 = "TYPE OF PLAN - RECODE 2"
   HMOR1    = "HMO RECODE"
   HLTHIN2  = "NAME OF PLAN 2"
   COVSTAT2 = "COVERAGE STATUS"
   INWHONA2 = "PLAN IN WHOSE NAME"
   WRKUNON2 = "ORIGINALLY OBTAINED THROUGH WORKPLACE OR UNION"
   EORUPAY2 = "EMPLOYER/UNION CURRENTLY PAY FOR PREMIUMS"
   FAMPAID2 = "LAST MONTH'S PREMIUM PAID BY FAMILY"
   VARORSI2 = "VARIETY OR SINGLE SERVICE PLAN"
   SSTYPE2  = "TYPE OF SINGLE SERVICE"
   PLANTYP2 = "TYPE OF PLAN"
   DRCHOIC2 = "CHOICE OF DOCTOR"
   PPRVLIS2 = "PREFERRED PROVIDER LIST OPTION"
   OUTPLAN2 = "PLAN PAYS FOR OUT OF PLAN USE"
   DENTCAR2 = "PLAN PAYS FOR DENTAL CARE"
   WELCHLD2 = "PLAN PAYS FOR WELL CHILD CARE"
   PLANTY12 = "TYPE OF PLAN"
   PLANTY22 = "TYPE OF PLAN - RECODE 2"
   HMOR2    = "HMO RECODE"
   HLTHIN3  = "NAME OF PLAN 3"
   COVSTAT3 = "COVERAGE STATUS"
   INWHONA3 = "PLAN IN WHOSE NAME"
   WRKUNON3 = "ORIGINALLY OBTAINED THROUGH WORKPLACE OR UNION"
   EORUPAY3 = "EMPLOYER/UNION CURRENTLY PAY FOR PREMIUMS"
   FAMPAID3 = "LAST MONTH'S PREMIUM PAID BY FAMILY"
   VARORSI3 = "VARIETY OR SINGLE SERVICE PLAN"
   SSTYPE3  = "TYPE OF SINGLE SERVICE"
   PLANTYP3 = "TYPE OF PLAN"
   DRCHOIC3 = "CHOICE OF DOCTOR"
   PPRVLIS3 = "PREFERRED PROVIDER LIST OPTION"
   OUTPLAN3 = "PLAN PAYS FOR OUT OF PLAN USE"
   DENTCAR3 = "PLAN PAYS FOR DENTAL CARE"
   WELCHLD3 = "PLAN PAYS FOR WELL CHILD CARE"
   PLANTY13 = "TYPE OF PLAN"
   PLANTY23 = "TYPE OF PLAN - RECODE 2"
   HMOR3    = "HMO RECODE"
   HLTHIN4  = "NAME OF PLAN 4"
   COVSTAT4 = "COVERAGE STATUS"
   INWHONA4 = "PLAN IN WHOSE NAME"
   WRKUNON4 = "ORIGINALLY OBTAINED THROUGH WORKPLACE OR UNION"
   EORUPAY4 = "EMPLOYER/UNION CURRENTLY PAY FOR PREMIUMS"
   FAMPAID4 = "LAST MONTH'S PREMIUM PAID BY FAMILY"
   VARORSI4 = "VARIETY OR SINGLE SERVICE PLAN"
   SSTYPE4  = "TYPE OF SINGLE SERVICE"
   PLANTYP4 = "TYPE OF PLAN"
   DRCHOIC4 = "CHOICE OF DOCTOR"
   PPRVLIS4 = "PREFERRED PROVIDER LIST OPTION"
   OUTPLAN4 = "PLAN PAYS FOR OUT OF PLAN USE"
   DENTCAR4 = "PLAN PAYS FOR DENTAL CARE"
   WELCHLD4 = "PLAN PAYS FOR WELL CHILD CARE"
   PLANTY14 = "TYPE OF PLAN"
   PLANTY24 = "TYPE OF PLAN - RECODE 2"
   HMOR4    = "HMO RECODE"
   LHIPCOND = "DENIED/RESTRICTED COVERAGE IN PAST TWO YEARS DUE TO PRE-EXISTING CONDITION"
   NHIDENY  = "TURNED DOWN WHEN APPLIED IN PAST 2 YEARS"
   NHIPCNDR = "UNABLE TO GET HI: PRE-EXISTING CONDITION(S)"
   NHIHRISK = "UNABLE TO GET HI: HEALTH RISK (SMOKING/OVERWEIGHT)"
   NHIWORK  = "UNABLE TO GET HI: WORK OCCUPATION (CONSTRUCTION, BEAUTICIAN, FARM WORKER)"
   NHICOST1 = "UNABLE TO GET HI: PREMIUMS WERE TOO HIGH"
   NHIOTHR  = "OTHER REASONS"
   STAYD2YR = "STAYED IN JOB BECAUSE OF HEALTH INSURANCE"
   EMPLOYHI = "HEALTH INSURANCE OFFERED BY EMPLOYER"
   PRIVHICR = "PRIVATE HEALTH INSURANCE COVERAGE RECODE"
   GHINPPER = "NUMBER OF PRIVATE, GENERAL PURPOSE HEALTH INSURANCE PLANS PER PERSON"
   GHINPFAM = "NUMBER OF PRIVATE HEALTH INSURANCE PLANS PER FAMILY"
   SHINPPER = "NUMBER OF SINGLE PURPOSE PLANS PER PERSON"
   SHINPFAM = "NUMBER OF SINGLE PURPOSE PLANS PER FAMILY"
   MCARPRIV = "MEDICARE AND/OR PRIVATE HEALTH INSURANCE"
   MAIDOTHR = "MEDICAID OR OTHER PUBLIC ASSISTANCE"
   MILHIR   = "MILITARY COVERAGE"
   COVSTATR = "COVERAGE STATUS"
   NOJOB    = "WHY NOT COVERED BY HI: JOB LAYOFF/LOSS/UNEMPLOYED"
   NOEMPHI  = "WHY NOT COVERED BY HI: WASN'T OFFERED BY EMPLOYER"
   NHIPTIME = "WHY NOT COVERED BY HI: NOT ELIGIBLE - PART TIME WORKER"
   EMPNOFAM = "WHY NOT COVERED BY HI: FAMILY COVERAGE NOT OFFERED BY EMPLOYER"
   NHIRNOUT = "WHY NOT COVERED BY HI: BENEFITS RAN OUT"
   NHIHLTH  = "WHY NOT COVERED BY HI: CAN'T OBTAIN BECAUSE OF POOR HEALTH, ILLNESS OR AGE"
   NHICOST2 = "WHY NOT COVERED BY HI: TOO EXPENSIVE/CAN'T AFFORD"
   NHIDSSAT = "WHY NOT COVERED BY HI: DISSATISFIED WITH PREVIOUS INSURANCE"
   NHIDONTB = "WHY NOT COVERED BY HI: DON'T BELIEVE IN INSURANCE"
   NHINNEED = "WHY NOT COVERED BY HI: HEALTHY/HAVEN'T NEEDED INSURANCE"
   NHIOTHCV = "WHY NOT COVERED BY HI: COVERED BY OTHER PLAN"
   NHIOLD   = "WHY NOT COVERED BY HI: TOO OLD FOR COVERAGE UNDER FAMILY PLANS"
   NHICHPCR = "WHY NOT COVERED BY HI: FREE/INEXPENSIVE CARE AVAILABLE"
   NHIOTHER = "WHY NOT COVERED BY HI: OTHER REASONS"
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
   RECTYPE   HLT001X.    YEAR      HLT002X.    HHID      $HLT003X.
   PNUM      $HLT004X.   WEEKCODE  HLT005X.    LAFLAG    HLT006X.
   LIVQTR    HLT007X.    PHONE     HLT008X.    SEX       HLT009X.
   AGE       HLT010X.    AGER1     HLT011X.    AGER2     HLT012X.
   AGER3     HLT013X.    BIRTH     $HLT014X.   BIRTHMO   $HLT015X.
   BIRTHYR   $HLT016X.   HISPFLAG  HLT017X.    RACE      HLT018X.
   RACER1    HLT019X.    RACER2    HLT020X.    RACER3    HLT021X.
   HISPANIC  HLT022X.    MARSTAT   HLT023X.    VETERAN   HLT024X.
   RESERVE   HLT025X.    EDUC      HLT026X.    EDUCR     HLT027X.
   EDUCAD    HLT028X.    EDUCADR   HLT029X.    INCFAM20  HLT030X.
   INCFAM    HLT031X.    INCFAMR   HLT032X.    POVERTY   HLT033X.
   FAMNUM    $HLT034X.   FAMREL    $HLT035X.   FAMRELR   HLT036X.
   FAMSIZE   HLT037X.    FAMSIZER  HLT038X.    PARENT    HLT039X.
   MAJACT    HLT040X.    HEALTH    HLT041X.    LATOTAL   HLT042X.
   LAWORK    HLT043X.    LASCHOOL  HLT044X.    LACARE    HLT045X.
   EMPLOY    HLT046X.    WKCLASS   HLT047X.    INDUSR1   HLT048X.
   INDUSR2   HLT049X.    OCCUPR1   HLT050X.    OCCUPR2   HLT051X.
   RESPOND   HLT052X.    CONDLIST  HLT053X.    HEIGHT    HLT054X.
   WEIGHT    HLT055X.    RADAY     HLT056X.    BDDAY     HLT057X.
   WLDAY     HLT058X.    SLDAY     HLT059X.    OTHDAY    HLT060X.
   BDDAY12   HLT061X.    BDDAY12R  HLT062X.    DV12      HLT063X.
   DVINT     HLT064X.    NCOND     HLT065X.    NACUTE    HLT066X.
   NDV2      HLT067X.    HEP12     HLT068X.    HDA12     HLT069X.
   HEP12X    HLT070X.    HDA12X    HLT071X.    DISDA6    HLT072X.
   DIS6X     HLT073X.    DISDA6X   HLT074X.    DISDA12X  HLT075X.
   YRSLPRES  HLT076X.    YRSLIUS   HLT077X.    WTINT     HLT078X.
   QUARTER   HLT079X.    REGION    HLT080X.    MSASIZE   HLT081X.
   MSA       HLT082X.    CCFACT    HLT083X.    WTFQ      HLT084X.
   WSFS      HLT085X.    WTFA    HLT086X.    WT65      HLT087X.
   RADAYWP   HLT088X.    BDDAYWP   HLT089X.    WLDAYSP   HLT090X.
   SLDAYWP   HLT091X.    DV12WPQ   HLT092X.    DV12WPS   HLT093X.
   DV12WPA   HLT094X.    HDA12WPQ  HLT095X.    HDA12WPS  HLT096X.
   HDA12WPA  HLT097X.    HEP12WP   HLT098X.    VARSTRAR  HLT099X.
   VARPSUR   HLT100X.    VARSUBSR  HLT101X.    UNITSS    HLT102X.
   TYPEPSU   HLT103X.    PANEL     HLT104X.    DUMMYREC  HLT105X.
   MEDICARE  HLT106X.    TYPECOV   HLT107X.    MCARPRTA  HLT108X.
   MCARPRTB  HLT109X.    MCARTIME  HLT110X.    MCARDOC   HLT111X.
   MCARNAME  HLT112X.    MAIDLAMO  HLT113X.    MAIDTIME  HLT114X.
   MAIDDOC   HLT115X.    APPROVAL  HLT116X.    MAID12M   HLT117X.
   OTHERPA   HLT118X.    CHAMP     HLT119X.    MILITHC   HLT120X.
   INDIANHC  HLT121X.    HLTHIN1   HLT122X.    COVSTAT1  HLT123X.
   INWHONA1  HLT124X.    WRKUNON1  HLT125X.    EORUPAY1  HLT126X.
   FAMPAID1  HLT127X.    VARORSI1  HLT128X.    SSTYPE1   HLT129X.
   PLANTYP1  HLT130X.    DRCHOIC1  HLT131X.    PPRVLIS1  HLT132X.
   OUTPLAN1  HLT133X.    DENTCAR1  HLT134X.    WELCHLD1  HLT135X.
   PLANTY11  HLT136X.    PLANTY21  HLT137X.    HMOR1     HLT138X.
   HLTHIN2   HLT139X.    COVSTAT2  HLT140X.    INWHONA2  HLT141X.
   WRKUNON2  HLT142X.    EORUPAY2  HLT143X.    FAMPAID2  HLT144X.
   VARORSI2  HLT145X.    SSTYPE2   HLT146X.    PLANTYP2  HLT147X.
   DRCHOIC2  HLT148X.    PPRVLIS2  HLT149X.    OUTPLAN2  HLT150X.
   DENTCAR2  HLT151X.    WELCHLD2  HLT152X.    PLANTY12  HLT153X.
   PLANTY22  HLT154X.    HMOR2     HLT155X.    HLTHIN3   HLT156X.
   COVSTAT3  HLT157X.    INWHONA3  HLT158X.    WRKUNON3  HLT159X.
   EORUPAY3  HLT160X.    FAMPAID3  HLT161X.    VARORSI3  HLT162X.
   SSTYPE3   HLT163X.    PLANTYP3  HLT164X.    DRCHOIC3  HLT165X.
   PPRVLIS3  HLT166X.    OUTPLAN3  HLT167X.    DENTCAR3  HLT168X.
   WELCHLD3  HLT169X.    PLANTY13  HLT170X.    PLANTY23  HLT171X.
   HMOR3     HLT172X.    HLTHIN4   HLT173X.    COVSTAT4  HLT174X.
   INWHONA4  HLT175X.    WRKUNON4  HLT176X.    EORUPAY4  HLT177X.
   FAMPAID4  HLT178X.    VARORSI4  HLT179X.    SSTYPE4   HLT180X.
   PLANTYP4  HLT181X.    DRCHOIC4  HLT182X.    PPRVLIS4  HLT183X.
   OUTPLAN4  HLT184X.    DENTCAR4  HLT185X.    WELCHLD4  HLT186X.
   PLANTY14  HLT187X.    PLANTY24  HLT188X.    HMOR4     HLT189X.
   LHIPCOND  HLT190X.    NHIDENY   HLT191X.    NHIPCNDR  HLT192X.
   NHIHRISK  HLT193X.    NHIWORK   HLT194X.    NHICOST1  HLT195X.
   NHIOTHR   HLT196X.    STAYD2YR  HLT197X.    EMPLOYHI  HLT198X.
   PRIVHICR  HLT199X.    GHINPPER  HLT200X.    GHINPFAM  HLT201X.
   SHINPPER  HLT202X.    SHINPFAM  HLT203X.    MCARPRIV  HLT204X.
   MAIDOTHR  HLT205X.    MILHIR    HLT206X.    COVSTATR  HLT207X.
   NOJOB     HLT208X.    NOEMPHI   HLT209X.    NHIPTIME  HLT210X.
   EMPNOFAM  HLT211X.    NHIRNOUT  HLT212X.    NHIHLTH   HLT213X.
   NHICOST2  HLT214X.    NHIDSSAT  HLT215X.    NHIDONTB  HLT216X.
   NHINNEED  HLT217X.    NHIOTHCV  HLT218X.    NHIOLD    HLT219X.
   NHICHPCR  HLT220X.    NHIOTHER  HLT221X.    NHIRNOTC  HLT222X.
   OTHCOV    HLT223X.    WLASTCOV  HLT224X.    NHIRSTOP  HLT225X.
   TRYFNDIN  HLT226X.    NHICANTF  HLT227X.    NHILAPSE  HLT228X.
   NHILAPMO  HLT229X.    NHIMAINR  HLT230X.    MCARCOST  HLT231X.
   RESPSTAT  HLT232X.    ANSWPERS  HLT233X.
   ;
 
PROC CONTENTS DATA=NHIS.HEALTHIN;
 
PROC FREQ DATA=NHIS.HEALTHIN;
TITLE1 'FREQUENCY REPORT FOR 1995 NHIS HEALTH INSURANCE FILE';
TITLE2 '(WEIGHTED)';
TABLES RECTYPE/LIST MISSING;
WEIGHT WTFA;
 
PROC FREQ DATA=NHIS.HEALTHIN;
TITLE1 'FREQUENCY REPORT FOR 1995 NHIS HEALTH INSURANCE FILE';
TITLE2 '(UNWEIGHTED)';
TABLES RECTYPE/LIST MISSING;
 
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
              STATEMENT: FORMAT _ALL_;
RUN;
