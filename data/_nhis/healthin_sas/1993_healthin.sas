DM 'CLE LOG; CLE OUT';
**************************************************************************
     April 30, 2007
 
THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
FILE FROM THE NHIS 1993 HEALTHIN.DAT ASCII FILE.
 
NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
      GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
      DOCUMENTATION.
 
THIS IS STORED IN HEALTHIN.SAS
*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;
 
LIBNAME NHIS    'C:\NHIS1993';
LIBNAME LIBRARY 'C:\NHIS1993';
 
FILENAME ASCIIDAT 'C:\NHIS1993\HEALTHIN.DAT';
 
* DEFINE VARIABLE VALUES FOR REPORT;
 
PROC FORMAT LIBRARY=LIBRARY;
  VALUE  HIN001X
   85               = "Health Insurance"
   ;
  VALUE  HIN002X
   93               = "1993"
   ;
  VALUE  HIN003X
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
   "01"          = "January"         "08"     =  "August"
   "02"          = "February"        "09"     =  "September"
   "03"          = "March"           "10"     =  "October"
   "04"          = "April"           "11"     =  "November"
   "05"          = "May"             "12"     =  "December"
   "06"          = "June"            "99"     =  "Unknown"
   "07"          = "July"
   ;
  VALUE $HIN019X
   "1800"-"1899"    = "1800-1899"
   "1900"-"1994"    = "1900-1994"
   "9999"           = "Unknown"
   ;
  VALUE  HIN020X
   0                = "Hispanic Origin Known"
   1                = "Hispanic Origin Imputed from Reference Person"
   ;
  VALUE  HIN021X
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
   16               = "Other Race"
   17               = "Multiple Race"
   99               = "Unknown"
   ;
  VALUE  HIN022X
   1                = "White"
   2                = "Black"
   3                = "Other"
   ;
  VALUE  HIN023X
   1                = "White"
   2                = "Non-white"
   ;
  VALUE  HIN024X
   1                = "Black"
   2                = "Non-black"
   ;
  VALUE  HIN025X
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
  VALUE  HIN026X
   0                = "Under 14 years"
   1                = "Married - spouse in household"
   2                = "Married - spouse not in household"
   3                = "Widowed"
   4                = "Divorced"
   5                = "Separated"
   6                = "Never married"
   7                = "Unknown"
   ;
  VALUE  HIN027X
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
  VALUE  HIN028X
   0                = "Non-veteran"
   1                = "All service in Guard/Reserve"
   2                = "Some service in Guard/Reserve"
   3                = "Unknown if all service in Guard/Reserve"
   4                = "No active service in Guard/Reserve"
   5                = "Unknown if ever active member in Guard/Reserve or served in Armed Forces"
   .                = "Under 18 years of age"
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
   .                = "Under 5 years of age"
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
   .                = "Under 5 years of age"
   ;
  VALUE  HIN031X
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
  VALUE  HIN032X
   0                = "None; kindergarten only"
   1                = "1-8 years (elementary)"
   2                = "9-11 years (high school)"
   3                = "12 years (high school graduate)"
   4                = "1-3 years (college)"
   5                = "4 years (college graduate)"
   6                = "5+ years (post-college)"
   7                = "Unknown"
   ;
  VALUE  HIN033X
   1                = "Less than $20,000"
   2                = "$20,000 or more"
   3                = "Unknown"
   ;
  VALUE  HIN034X
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
  VALUE  HIN035X
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
  VALUE  HIN036X
   1                = "At or above poverty threshold"
   2                = "Below poverty threshold"
   3                = "Unknown"
   ;
  VALUE $HIN037X
   "&"              = "Primary individual"
   "-"              = "Secondary individual"
   "0"              = "Primary family"
   "1"-"9"          = "Secondary family"
   ;
  VALUE $HIN038X
   "&"              = "Reference person, living alone"
   "0"              = "Reference person, 2+ persons in household"
   "1"              = "Spouse, other spouse NOT in Armed Forces and living at home"
   "2"              = "Spouse, other spouse IN Armed Forces and living at home"
   "3"              = "Child of reference person or spouse"
   "4"              = "Grandchild of reference person or spouse"
   "5"              = "Parent of reference person or spouse"
   "6"              = "Other relative"
   "7"              = "Child of ineligible refer. person"
   "9"              = "DK or refused"
   ;
  VALUE  HIN039X
   1                = "Living alone"
   2                = "Living only with non-relative"
   3                = "Living with spouse"
   4                = "Living with relative - other"
   ;
  VALUE  HIN040X
   ;
  VALUE  HIN041X
   1-8              = "Number of members"
   9                = "9+ members"
   ;
  VALUE  HIN042X
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
  VALUE  HIN043X
   1                = "Working"
   2                = "Keeping house"
   3                = "Going to school"
   4                = "Something else"
   5                = "Unknown"
   .                = "Not applicable (Under 18 years)"
   ;
  VALUE  HIN044X
   1                = "Excellent"
   2                = "Very Good"
   3                = "Good"
   4                = "Fair"
   5                = "Poor"
   6                = "Unknown"
   ;
  VALUE  HIN045X
   1                = "Unable to perform major activity"
   2                = "Limited in kind/amount major activity"
   3                = "Limited in other activities"
   4                = "Not limited (includes unknowns)"
   ;
  VALUE  HIN046X
   1                = "Unable to work"
   2                = "Limited in kind/amount of work"
   3                = "Limited in other activities"
   4                = "Not limited (includes unknowns)"
   .                = "Not applicable (under 18 years, 70+ years)"
   ;
  VALUE  HIN047X
   1                = "Unable to attend school"
   2                = "Attends special school/classes"
   3                = "Needs special school/classes"
   4                = "Limited in school attendance"
   5                = "Limited in other activities"
   6                = "Not limited (includes unknowns)"
   .                = "Not applicable (Under 5 years or 18+ years)"
   ;
  VALUE  HIN048X
   1                = "Unable to perform personal care needs"
   2                = "Limited in performing other routine needs"
   3                = "Not limited in performing personal or routine needs"
   4                = "Unknown"
   .                = "Not applicable(Under 5 years;5-59 years not limited; 70+ years old)"
   ;
  VALUE  HIN049X
   1                = "Worked in past 2 weeks"
   2                = "Did not work, has job; not on lay-off and not looking for work"
   3                = "Did not work, has job; looking"
   4                = "Did not work, has job; on lay-off"
   5                = "Did not work, has job; on lay-off and looking for work"
   6                = "Did not work, has job; unknown if looking or on lay-off"
   7                = "Did not work, has no job; looking for work or on lay-off"
   8                = "Not in Labor Force (18+ years)"
   .                = "Not applicable (Under 18 years old)"
   ;
  VALUE  HIN050X
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
  VALUE  HIN051X
   010-998          = "Code number"
   .                = "Not applicable"
   ;
  VALUE  HIN052X
   ;
  VALUE  HIN053X
   ;
  VALUE  HIN054X
   001-998          = "Code number"
   .                = "Not applicable"
   ;
  VALUE  HIN055X
   ;
  VALUE  HIN056X
   ;
  VALUE  HIN057X
   1                = "Self-entirely"
   2                = "Self-partly"
   3                = "Proxy"
   4                = "Unknown"
   ;
  VALUE  HIN058X
   1                = "Condition List 1, Skin and usculoskeletal"
   2                = "Condition List 2, Impairments"
   3                = "Condition List 3, Digestive"
   4                = "Condition List 4, Miscellaneous"
   5                = "Condition List 5, Circulatory"
   6                = "Condition List 6, Respiratory"
   7                = "Unknown"
   ;
  VALUE  HIN059X
   36-98            = "Number of inches"
   99               = "Unknown"
   .                = "Under 18 years of age"
   ;
  VALUE  HIN060X
   050-500          = "Number of pounds"
   501              = "Unknown"
   .                = "Under 18 years of age"
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
   00               = "None"
   01-14            = "Days"
   ;
  VALUE  HIN065X
   00               = "None"
   01-14            = "Days"
   ;
  VALUE  HIN066X
   000              = "None"
   001-365          = "1-365 days"
   366              = "Unknown"
   ;
  VALUE  HIN067X
   0                = "None"
   1                = "1-7 days"
   2                = "8-30 days"
   3                = "31-180 days"
   4                = "181-365 days"
   5                = "Unknown"
   ;
  VALUE  HIN068X
   000              = "None"
   001-996          = "Visits"
   997              = "997+ visits"
   998              = "Unknown"
   ;
  VALUE  HIN069X
   0                = "Never"
   1                = "Less than 1 year"
   2                = "1 to less than 2 years"
   3                = "2 to less than 5 years"
   4                = "5 years or more"
   5                = "Unknown"
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
   ;
  VALUE  HIN080X
   ;
  VALUE  HIN081X
   1                = "Less than 1 year"
   2                = "1 year, less than 5 years"
   3                = "5 years, less than 10 years"
   4                = "10 years, less than 15 years"
   5                = "15 years or more"
   9                = "Unknown"
   .                = "Not applicable (Foreign-born)"
   ;
  VALUE  HIN082X
   1                = "Less than 1 year"
   2                = "1 year, less than 5 years"
   3                = "5 years, less than 10 years"
   4                = "10 years, less than 15 years"
   5                = "15 years or more"
   9                = "Unknown"
   .                = "Not applicable (U.S. born)"
   ;
  VALUE  HIN083X
   1                = "Yes, going to school"
   2                = "Yes, on vacation from school"
   3                = "No"
   9                = "DK or refused"
   .                = "(under 12 years or 22+ years)"
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
   0                = "Only one record type dummied"
   1                = "Complete dummy record"
   .                = "Not dummied"
   ;
  VALUE  HIN105X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HIN106X
   1                = "Part A - Hospital only"
   2                = "Part B - Medical only"
   3                = "Both part A and part B"
   4                = "Card NA"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if covered by Medicare"
   ;
  VALUE  HIN107X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if covered by Medicare, covered but part A/B coverage unknown from card"
   ;
  VALUE  HIN108X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if covered by Medicare, covered but part A/B coverage unknown from card"
   ;
  VALUE  HIN109X
   1                = "Less than 6 months"
   2                = "6 months, but less than 1 year"
   3                = "1 year but less than 2 years"
   4                = "2 years or more"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if covered by Medicare, covered but age 67 or older"
   ;
  VALUE  HIN110X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HIN111X
   1                = "Card seen"
   2                = "No card seen"
   3                = "Other card seen"
   8                = "Not ascertained"
   .                = "NA; No or Unknown if covered by Medicaid"
   ;
  VALUE $HIN112X
   ;
  VALUE $HIN113X
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
   " "              = "NA; No or unknown if covered by Medicare, covered but card nmot seen"
   ;
  VALUE $HIN114X
  "01"-"31"         = "Day of month"
   "98"             = "Not ascertained"
   " "              = "NA; No or unknown if covered by Medicare, covered but card nmot seen"
   ;
  VALUE  HIN115X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HIN116X
   0                = "Less than 6 months"
   1                = "6 months but less than one year"
   2                = "1 year, but less than 2 years"
   3                = "2 years but less than 5 years"
   4                = "5 years or more"
   5                = "On and off for less than 2 years"
   6                = "On and off for 2 yrs but less than 5 yrs"
   7                = "On and off for 5 yrs or more"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if covered by Medicaid last month"
   ;
  VALUE  HIN117X
   0                = "Single person covered by Medicaid (not asked question)"
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HIN118X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HIN119X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   ;
  VALUE  HIN120X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   ;
  VALUE  HIN121X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HIN122X
   01-02            = ""
   04-20            = ""
   55               = ""
   77               = ""
   88               = "Refer to Health insurance Plan Listing"
   98               = "Not ascertained"
   99               = "DK or refused to say if has insurance"
   ;
  VALUE  HIN123X
   0                = "Not known to be covered by this plan"
   1                = "Covered by this general purpose plan"
   2                = "Covered by this single service plan is covered by this plan"
   8                = "Unknown which family member"
   ;
  VALUE  HIN124X
   1                = "In own name"
   2                = "Person not in household"
   3                = "Someone else in family (HH) or unknown"
   ;
  VALUE  HIN125X
   1                = "Employer"
   2                = "Union"
   3                = "Through workplace but DK if employer or union"
   4                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/ind"
   ;
  VALUE  HIN126X
   1                = "All"
   2                = "Some"
   3                = "None"
   8                = "Not Ascertained"
   9                = "DK or Refused"
   ;
  VALUE  HIN127X
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
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/ind"
   ;
  VALUE  HIN128X
   1                = "Variety of service"
   2                = "Single service/care"
   8                = "Not"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/ind"
   ;
  VALUE  HIN129X
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
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/ind"
   ;
  VALUE  HIN130X
   1                = "HMO/IPA"
   2                = "Other"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/ind"
   ;
  VALUE  HIN131X
   1                = "Any doctor"
   2                = "Select from group/list"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/ind"
   ;
  VALUE  HIN132X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN133X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN134X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN135X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN136X
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
   .                = "Not applicable, no or unknown if has private health insurance; has  private health insurance but no family plan"
   ;
  VALUE  HIN137X
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
   .                = "Not applicable, no or unknown if has private health insurance; has private health insurance but no family plan"
   ;
  VALUE  HIN138X
   01               = "Coded HMO, respondent said  HMO"
   02               = "Coded HMO, respondent said not HMO"
   03               = "Coded HMO, respondent said doesn't know, refused if HMO or not ascertained"
   04               = "Coded 'name of plan unknown',respondent said HMO"
   05               = "Coded 'name of plan unknown', respondent said HMO"
   06               = "Coded 'name of plan unknown', respondent said doesn't know, refused if HMO or not ascertained"
   07               = "Coded Blue Plan or other, respondent said HMO"
   08               = "Coded Blue plan or other, respondent said not HMO"
   09               = "Coded Blue plan or other, respondent said doesn't  know, refused if HMO or not ascertained"
   10               = "Coded DK, refused or not ascertained, respondent said HMO"
   11               = "Coded DK, refused or not ascertained, respondent said not HMO"
   12               = "Coded DK, refused or not ascertained, respondent doesn't know, refused HMO or not ascertained"
   .                = "NA; person/family not covered by this plan, single service plan"
   ;
  VALUE  HIN139X
   01-02            = ""
   04-20            = ""
   55               = ""
   77               = ""
   88               = "Refer to Health insurance Plan Listing"
   98               = "Not ascertained"
   99               = "DK or refused to say if has insurance"
   ;
  VALUE  HIN140X
   0                = "Not known to be covered by this plan"
   1                = "Covered by this general purpose plan"
   2                = "Covered by this single service plan is covered by this plan"
   8                = "Unknown which family member"
   ;
  VALUE  HIN141X
   1                = "In own name"
   2                = "Person not in household"
   3                = "Someone else in family (HH) or unknown"
   ;
  VALUE  HIN142X
   1                = "Employer"
   2                = "Union"
   3                = "Through workplace but DK if employer or union"
   4                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/ind"
   ;
  VALUE  HIN143X
   1                = "All"
   2                = "Some"
   3                = "None"
   8                = "Not Ascertained"
   9                = "DK or Refused"
   ;
  VALUE  HIN144X
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
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/ind"
   ;
  VALUE  HIN145X
   1                = "Variety of service"
   2                = "Single service/care"
   8                = "Not"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/ind"
   ;
  VALUE  HIN146X
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
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/ind"
   ;
  VALUE  HIN147X
   1                = "HMO/IPA"
   2                = "Other"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/ind"
   ;
  VALUE  HIN148X
   1                = "Any doctor"
   2                = "Select from group/list"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/ind"
   ;
  VALUE  HIN149X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN150X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN151X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN152X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN153X
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
   .                = "Not applicable, no or unknown if has private health insurance; has  private health insurance but no family plan"
   ;
  VALUE  HIN154X
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
   .                = "Not applicable, no or unknown if has private health insurance; has private health insurance but no family plan"
   ;
  VALUE  HIN155X
   01               = "Coded HMO, respondent said  HMO"
   02               = "Coded HMO, respondent said not HMO"
   03               = "Coded HMO, respondent said doesn't know, refused if HMO or not ascertained"
   04               = "Coded 'name of plan unknown',respondent said HMO"
   05               = "Coded 'name of plan unknown', respondent said HMO"
   06               = "Coded 'name of plan unknown', respondent said doesn't know, refused if HMO or not ascertained"
   07               = "Coded Blue Plan or other, respondent said HMO"
   08               = "Coded Blue plan or other, respondent said not HMO"
   09               = "Coded Blue plan or other, respondent said doesn't  know, refused if HMO or not ascertained"
   10               = "Coded DK, refused or not ascertained, respondent said HMO"
   11               = "Coded DK, refused or not ascertained, respondent said not HMO"
   12               = "Coded DK, refused or not ascertained, respondent doesn't know, refused HMO or not ascertained"
   .                = "NA; person/family not covered by this plan, single service plan"
   ;
  VALUE  HIN156X
   01-02            = ""
   04-20            = ""
   55               = ""
   77               = ""
   88               = "Refer to Health insurance Plan Listing"
   98               = "Not ascertained"
   99               = "DK or refused to say if has insurance"
   ;
  VALUE  HIN157X
   0                = "Not known to be covered by this plan"
   1                = "Covered by this general purpose plan"
   2                = "Covered by this single service plan is covered by this plan"
   8                = "Unknown which family member"
   ;
  VALUE  HIN158X
   1                = "In own name"
   2                = "Person not in household      ´"
   3                = "Someone else in family (HH) or unknown"
   ;
  VALUE  HIN159X
   1                = "Employer"
   2                = "Union"
   3                = "Through workplace but DK if employer or union"
   4                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/ind"
   ;
  VALUE  HIN160X
   1                = "All"
   2                = "Some"
   3                = "None"
   8                = "Not Ascertained"
   9                = "DK or Refused"
   ;
  VALUE  HIN161X
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
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/ind"
   ;
  VALUE  HIN162X
   1                = "Variety of service"
   2                = "Single service/care"
   8                = "Not"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/ind"
   ;
  VALUE  HIN163X
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
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/ind"
   ;
  VALUE  HIN164X
   1                = "HMO/IPA"
   2                = "Other"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/ind"
   ;
  VALUE  HIN165X
   1                = "Any doctor"
   2                = "Select from group/list"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/ind"
   ;
  VALUE  HIN166X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN167X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN168X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN169X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN170X
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
   .                = "Not applicable, no or unknown if has private health insurance; has  private health insurance but no family plan"
   ;
  VALUE  HIN171X
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
   .                = "Not applicable, no or unknown if has private health insurance; has private health insurance but no family plan"
   ;
  VALUE  HIN172X
   01               = "Coded HMO, respondent said  HMO"
   02               = "Coded HMO, respondent said not HMO"
   03               = "Coded HMO, respondent said doesn't know, refused if HMO or not ascertained"
   04               = "Coded 'name of plan unknown',respondent said HMO"
   05               = "Coded 'name of plan unknown', respondent said HMO"
   06               = "Coded 'name of plan unknown', respondent said doesn't know, refused if HMO or not ascertained"
   07               = "Coded Blue Plan or other, respondent said HMO"
   08               = "Coded Blue plan or other, respondent said not HMO"
   09               = "Coded Blue plan or other, respondent said doesn't  know, refused if HMO or not ascertained"
   10               = "Coded DK, refused or not ascertained, respondent said HMO"
   11               = "Coded DK, refused or not ascertained, respondent said not HMO"
   12               = "Coded DK, refused or not ascertained, respondent doesn't know, refused HMO or not ascertained"
   .                = "NA; person/family not covered by this plan, single service plan"
   ;
  VALUE  HIN173X
   01-02            = ""
   04-20            = ""
   55               = ""
   77               = ""
   88               = "Refer to Health insurance Plan Listing"
   98               = "Not ascertained"
   99               = "DK or refused to say if has insurance"
   ;
  VALUE  HIN174X
   0                = "Not known to be covered by this plan"
   1                = "Covered by this general purpose plan"
   2                = "Covered by this single service plan is covered by this plan"
   8                = "Unknown which family member"
   ;
  VALUE  HIN175X
   1                = "In own name"
   2                = "Person not in household      ´"
   3                = "Someone else in family (HH) or unknown"
   ;
  VALUE  HIN176X
   1                = "Employer"
   2                = "Union"
   3                = "Through workplace but DK if employer or union"
   4                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/ind"
   ;
  VALUE  HIN177X
   1                = "All"
   2                = "Some"
   3                = "None"
   8                = "Not Ascertained"
   9                = "DK or Refused"
   ;
  VALUE  HIN178X
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
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/ind"
   ;
  VALUE  HIN179X
   1                = "Variety of service"
   2                = "Single service/care"
   8                = "Not"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/ind"
   ;
  VALUE  HIN180X
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
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/ind"
   ;
  VALUE  HIN181X
   1                = "HMO/IPA"
   2                = "Other"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/ind"
   ;
  VALUE  HIN182X
   1                = "Any doctor"
   2                = "Select from group/list"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this family/ind"
   ;
  VALUE  HIN183X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN184X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN185X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN186X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN187X
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
   .                = "Not applicable, no or unknown if has private health insurance; has  private health insurance but no family plan"
   ;
  VALUE  HIN188X
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
   .                = "Not applicable, no or unknown if has private health insurance; has private health insurance but no family plan"
   ;
  VALUE  HIN189X
   01               = "Coded HMO, respondent said  HMO"
   02               = "Coded HMO, respondent said not HMO"
   03               = "Coded HMO, respondent said doesn't know, refused if HMO or not ascertained"
   04               = "Coded 'name of plan unknown',respondent said HMO"
   05               = "Coded 'name of plan unknown', respondent said HMO"
   06               = "Coded 'name of plan unknown', respondent said doesn't know, refused if HMO or not ascertained"
   07               = "Coded Blue Plan or other, respondent said HMO"
   08               = "Coded Blue plan or other, respondent said not HMO"
   09               = "Coded Blue plan or other, respondent said doesn't  know, refused if HMO or not ascertained"
   10               = "Coded DK, refused or not ascertained, respondent said HMO"
   11               = "Coded DK, refused or not ascertained, respondent said not HMO"
   12               = "Coded DK, refused or not ascertained, respondent doesn't know, refused HMO or not ascertained"
   .                = "NA; person/family not covered by this plan, single service plan"
   ;
  VALUE  HIN190X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HIN191X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HIN192X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; No or unknown if unable to get insurance"
   ;
  VALUE  HIN193X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained but turned down (entire question)"
   9                = "DK any reason"
   .                = "NA; No or unknown if unable to get insurance"
   ;
  VALUE  HIN194X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; No or unknown if unable to get insurance"
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
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; No or unknown if unable to get insurance"
   ;
  VALUE  HIN197X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HIN198X
   0                = "Not asked, person has job and has insurance in own name"
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; 70 or over, not employed in past 2 weeks"
   ;
  VALUE  HIN199X
   0                = "Only known coverage is single purpose plan"
   1                = "Covered by at least one general purpose health plan"
   2                = "Not covered by any plan"
   6                = "Unknown if covered by at least one particular plan"
   8                = "Not ascertained (whole question)"
   9                = "Unknown if covered (whole question)"
   ;
  VALUE  HIN200X
   0                = "No known plans"
   1-4              = "Number of plans"
   ;
  VALUE  HIN201X
   0                = "No known plans"
   1-4              = "Number of plans"
   ;
  VALUE  HIN202X
   0                = "No known plans"
   1-4              = "Number of plans"
   ;
  VALUE  HIN203X
   0                = "No known plans"
   1-4              = "Number of plans"
   ;
  VALUE  HIN204X
   1                = "Covered by one or both"
   2                = "Not covered by either"
   9                = "Unknown if covered"
   ;
  VALUE  HIN205X
   1                = "Covered by both"
   2                = "Not covered by one"
   3                = "Covered by neither"
   9                = "Unknown if covered"
   ;
  VALUE  HIN206X
   0                = "Covered by CHAMPUS/ CHAMP-VA only"
   1                = "Covered by other military health care only"
   2                = "Covered by both CHAMPUS and other military health care"
   3                = "Not covered by any military health care"
   6                = "Not covered by CHAMPUS/ CHAMP-VA, Unknown if covered by other military health care"
   7                = "Not covered by other military health care, Unknown if covered by CHAMPUS/CHAMP-VA"
   8                = "Not ascertained"
   ;
  VALUE  HIN207X
   1                = "Yes, covered"
   2                = "Not known to be covered, some response to non-coverage reasons"
   3                = "Not known to be covered, no response to non-coverage items"
   ;
  VALUE  HIN208X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HIN209X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HIN210X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
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
  VALUE  HIN223X
   1                = "Less than 6 months ago"
   2                = "6 months ago, but less than 1 year ago"
   3                = "1 year ago, but less than 3 years ago"
   4                = "3 or more years ago"
   5                = "Never had health insurance"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA, Covered, not known to be covered but no response to non- coverage items"
   ;
  VALUE  HIN224X
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
  VALUE  HIN225X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN226X
   1                = "Could not afford"
   2                = "Was rejected"
   3                = "Other reason"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN227X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; not covered, not known to be covered"
   ;
  VALUE  HIN228X
   1                = "1 month or less"
   2                = "2-3 months"
   3                = "4-6 months"
   4                = "More than 6 months"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; not covered, not known to be covered, covered and no time without coverage in past 12 months"
   ;
  VALUE  HIN229X
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
  VALUE  HIN230X
   1                = "Zero"
   2                = "Less than $500"
   3                = "$500 - $1,999"
   4                = "$2,000 - $2,999"
   5                = "$3,000 - $4,999"
   6                = "$5,000 or more"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HIN231X
   1                = "Self"
   2                = "Proxy"
   9                = "Unknown Respondent"
   ;
  VALUE  HIN232X
   00               = "Unknown respondent"
   01-28            = "Person number"
   30-97            = "Person number"
   98               = "Active duty military"
   99               = "Non household member"
   ;

DATA NHIS.HEALTHINS;
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1993';
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
   DISDAY6X  3  DISDA12X  3  YRSLPRES  3  YRSLIUS   3  GOSCHOOL  3
   WTINT     8  SUBTYPE   3  STRATUM   3  REGION    3  MSASIZE   3
   PSUTYPE   3  MSA       3  PSUPSEUD  3  CCFACT    8  WTFQ      6
   WTFS      6  WT65      6  RADAYWP   6  BDDAYWP   6  WLDAYSP   6
   SLDAYWP   6  DV12WPQ   6  DV12WPS   6  HDA12WPQ  6  HDA12WPS  6
   DUMMYREC  3  MEDICARE  3  TYPECOV   3  MCARPRTA  3  MCARPRTB  3
   MCARTIME  3  MAIDNOW   3  MAIDCRDS  3  MAIDLMO   3  MAIDTIME  3
   MAID12M   3  OTHERPA   3  CHAMP     3  MILITHC   3  INDIANHC  3
   HLTHIN1   3  COVSTAT1  3  INWHOSE1  3  WORKUNO1  3  EORUPAY1  3
   FAMPAID1  3  VARORSI1  3  SSTYPE1   3  PLANTYP1  3  DRCHOIC1  3
   PPOPTLI1  3  OUTPLAN1  3  WELCH1LD  3  MAMMOGR1  3  PLANTYR1  3
   PLANTP12  3  HMOR1     3  HLTHIN2   3  COVSTAT2  3  INWHOSE2  3
   WORKUNO2  3  EORUPAY2  3  FAMPAID2  3  VARORSI2  3  SSTYPE2   3
   PLANTYR2  3  DRCHOIC2  3  PPOPTLI2  3  OUTPLAN2  3  WELCH2LD  3
   MAMMOGR2  3  PLANTYR2  3  PLANTP22  3  HMOR2     3  HLTHIN3   3
   COVSTAT3  3  INWHOSE3  3  WORKUNO3  3  EORUPAY3  3  FAMPAID3  3
   VARORSI3  3  SSTYPE3   3  PLANTYR3  3  DRCHOIC3  3  PPOPTLI3  3
   OUTPLAN3  3  WELCH3LD  3  MAMMOGR3  3  PLANTYR3  3  PLANTP32  3
   HMOR3     3  HLTHIN4   3  COVSTAT4  3  INWHOSE4  3  WORKUNO4  3
   EORUPAY4  3  FAMPAID4  3  VARORSI4  3  SSTYPE4   3  PLANTYP4  3
   DRCHOIC4  3  PPOPTLI4  3  OUTPLAN4  3  WELCH4LD  3  MAMMOGR4  3
   PLANTYR4  3  PLANTP42  3  HMOR4     3  LHIPCOND  3  NHIDENY   3
   NHIPCNDR  3  NHIHRISK  3  NHIWORK   3  NHICOST1  3  NHIOTHR   3
   STAYD2YR  3  EMPLOYHI  3  PRIVHICR  3  GHINPPER  3  GHINPFAM  3
   SHINPPER  3  SHINPFAM  3  MCARPRIV  3  MAIDOTHR  3  MILHIR    3
   COVSTATR  3  NOJOB     3  NOEMPHI   3  NHIPTIME  3  EMPNOFAM  3
   NHIRNOUT  3  NHIHLTH   3  NHICOST2  3  NHIDSSAT  3  NHIDONTB  3
   NHINNEED  3  NHIOTHCV  3  NHIOLD    3  NHICHPCR  3  NHIOTHER  3
   NHIRNOTC  3  LASTCOV   3  NHIRSTOP  3  TRYFNDIN  3  NHICANTF  3
   NHILAPSE  3  NHILAPMO  3  NHIMAINR  3  MCARCOST  3  RESPSTAT  3
   ANSWPERS  3
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
   AGER3       31 - 32         BIRTHMO  $  34 - 35
   BIRTHYR  $  36 - 39         HISPFLAG    40 - 40
   RACE        41 - 42         RACER1      43 - 43
   RACER2      44 - 44         RACER3      45 - 45
   HISPANIC    46 - 47         MARSTAT     48 - 48
   VETERAN     49 - 49         RESERVE     50 - 50
   EDUC        51 - 52         EDUCR       53 - 53
   EDUCAD      54 - 55         EDUCADR     56 - 56
   INCFAM20    57 - 57         INCFAM      58 - 59
   INCFAMR     60 - 60         POVERTY     61 - 61
   FAMNUM   $  62 - 62         FAMREL   $  63 - 63
   FAMRELR     64 - 64         FAMSIZE     65 - 66
   FAMSIZER    67 - 67         PARENT      68 - 68
   MAJACT      69 - 69         HEALTH      70 - 70
   LATOTAL     71 - 71         LAWORK      72 - 72
   LASCHOOL    73 - 73         LACARE      74 - 74
   EMPLOY      75 - 75         WKCLASS     76 - 76
   INDUS       77 - 79         INDUSR1     80 - 81
   INDUSR2     82 - 83         OCCUP       84 - 86
   OCCUPR1     87 - 88         OCCUPR2     89 - 90
   RESPOND     91 - 91         CONDLIST    92 - 92
   HEIGHT      93 - 94         WEIGHT      95 - 97
   RADAY       98 - 99         BDDAY      100 - 101
   WLDAY      102 - 103        SLDAY      104 - 105
   OTHDAY     106 - 107        BDDAY12    108 - 110
   BDDAY12R   111 - 111        DV12       112 - 114
   DVINT      115 - 115        NCOND      116 - 117
   NACUTE     118 - 119        NDV2       120 - 121
   HEP12      122 - 123        HDA12      124 - 126
   HEP12X     127 - 128        HDA12X     129 - 131
   DISDA5     132 - 133        DIS6X      134 - 136
   DISDAY6X   137 - 138        DISDA12X   139 - 141
   YRSLPRES   144 - 144        YRSLIUS    145 - 145
   GOSCHOOL   146 - 146        WTINT      172 - 177 .1
   SUBTYPE    178 - 178        STRATUM    179 - 181
   REGION     182 - 182        MSASIZE    183 - 183
   PSUTYPE    185 - 185        MSA        186 - 186
   PSUPSEUD   187 - 189        CCFACT     190 - 200 .9
   WTFQ       201 - 209        WTFS       210 - 218
   WT65       228 - 236        RADAYWP    237 - 245
   BDDAYWP    246 - 254        WLDAYSP    255 - 263
   SLDAYWP    264 - 272        DV12WPQ    273 - 281
   DV12WPS    282 - 290        HDA12WPQ   300 - 308
   HDA12WPS   309 - 317        DUMMYREC   336 - 336
   MEDICARE   337 - 337        TYPECOV    338 - 338
   MCARPRTA   339 - 339        MCARPRTB   340 - 340
   MCARTIME   341 - 341        MAIDNOW    342 - 342
   MAIDCRDS   343 - 343        EXPMDC   $ 344 - 347
   EXPMDCMO $ 344 - 345        EXPMDCDA $ 346 - 347
   MAIDLMO    348 - 348        MAIDTIME   349 - 349
   MAID12M    350 - 350        OTHERPA    351 - 351
   CHAMP      352 - 352        MILITHC    353 - 353
   INDIANHC   355 - 355        HLTHIN1    356 - 357
   COVSTAT1   358 - 358        INWHOSE1   359 - 359
   WORKUNO1   360 - 360        EORUPAY1   361 - 361
   FAMPAID1   362 - 362        VARORSI1   363 - 363
   SSTYPE1    364 - 365        PLANTYP1   366 - 366
   DRCHOIC1   367 - 367        PPOPTLI1   368 - 368
   OUTPLAN1   369 - 369        WELCH1LD   370 - 370
   MAMMOGR1   371 - 371        PLANTYR1   372 - 373
   PLANTP12   374 - 375        HMOR1      376 - 377
   HLTHIN2    378 - 379        COVSTAT2   380 - 380
   INWHOSE2   381 - 381        WORKUNO2   382 - 382
   EORUPAY2   383 - 383        FAMPAID2   384 - 384
   VARORSI2   385 - 385        SSTYPE2    386 - 387
   PLANTYP2   388 - 388        DRCHOIC2   389 - 389
   PPOPTLI2   390 - 390        OUTPLAN2   391 - 391
   WELCH2LD   392 - 392        MAMMOGR2   393 - 393
   PLANTYR2   394 - 395        PLANTP22   396 - 397
   HMOR2      398 - 399        HLTHIN3    400 - 401
   COVSTAT3   402 - 402        INWHOSE3   403 - 403
   WORKUNO3   404 - 404        EORUPAY3   405 - 405
   FAMPAID3   406 - 406        VARORSI3   407 - 407
   SSTYPE3    408 - 409        PLANTYP3   410 - 410
   DRCHOIC3   411 - 411        PPOPTLI3   412 - 412
   OUTPLAN3   413 - 413        WELCH3LD   414 - 414
   MAMMOGR3   415 - 415        PLANTYR3   416 - 417
   PLANTP32   418 - 419        HMOR3      420 - 421
   HLTHIN4    422 - 423        COVSTAT4   424 - 424
   INWHOSE4   425 - 425        WORKUNO4   426 - 426
   EORUPAY4   427 - 427        FAMPAID4   428 - 428
   VARORSI4   429 - 429        SSTYPE4    430 - 431
   PLANTYP4   432 - 432        DRCHOIC4   433 - 433
   PPOPTLI4   434 - 434        OUTPLAN4   435 - 435
   WELCH4LD   436 - 436        MAMMOGR4   437 - 437
   PLANTYR4   438 - 439        PLANTP42   440 - 441
   HMOR4      442 - 443        LHIPCOND   444 - 444
   NHIDENY    445 - 445        NHIPCNDR   446 - 446
   NHIHRISK   447 - 447        NHIWORK    448 - 448
   NHICOST1   449 - 449        NHIOTHR    450 - 450
   STAYD2YR   451 - 451        EMPLOYHI   452 - 452
   PRIVHICR   453 - 453        GHINPPER   454 - 454
   GHINPFAM   455 - 455        SHINPPER   456 - 456
   SHINPFAM   457 - 457        MCARPRIV   458 - 458
   MAIDOTHR   459 - 459        MILHIR     460 - 460
   COVSTATR   461 - 461        NOJOB      462 - 462
   NOEMPHI    463 - 463        NHIPTIME   464 - 464
   EMPNOFAM   465 - 465        NHIRNOUT   466 - 466
   NHIHLTH    467 - 467        NHICOST2   468 - 468
   NHIDSSAT   469 - 469        NHIDONTB   470 - 470
   NHINNEED   471 - 471        NHIOTHCV   472 - 472
   NHIOLD     473 - 473        NHICHPCR   474 - 474
   NHIOTHER   475 - 475        NHIRNOTC   476 - 477
   LASTCOV    478 - 478        NHIRSTOP   479 - 480
   TRYFNDIN   481 - 481        NHICANTF   482 - 482
   NHILAPSE   483 - 483        NHILAPMO   484 - 484
   NHIMAINR   485 - 486        MCARCOST   487 - 487
   RESPSTAT   488 - 488        ANSWPERS   489 - 490
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
   BIRTHMO  = "MONTH OF BIRTH"
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
   EDUCAD   = "HIGHEST EDUCATION OF RESPONSIBLE ADULT FAMILY MEMBER (DETAIL)"
   EDUCADR  = "HIGHEST EDUCATION OF RESPONSIBLE ADULT FAMILY MEMBER RECODE"
   INCFAM20 = "FAMILY INCOME $20,000 OR MORE"
   INCFAM   = "FAMILY INCOME"
   INCFAMR  = "FAMILY INCOME RECODE"
   POVERTY  = "NHIS POVERTY INDEX"
   FAMNUM   = "TYPE OF FAMILY"
   FAMREL   = "RELATIONSHIP TO REFERENCE PERSON"
   FAMRELR  = "FAMILY RELATIONSHIP RECODE"
   FAMSIZE  = "SIZE OF FAMILY UNRELATED INDIVIDUALS ARE CODED 01"
   FAMSIZER = "SIZE OF FAMILY RECODE"
   PARENT   = "PARENT/OTHER ADULT RELATIVE (UNDER 25 YEARS OLD AND NEVER MARRIED)"
   MAJACT   = "MAJOR ACTIVITY (18+ YEARS OLD)"
   HEALTH   = "HEALTH STATUS"
   LATOTAL  = "ACTIVITY LIMITATION STATUS - (ALL AGES)"
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
   RESPOND  = "RESPONDENT (NHIS CORE QUESTIONNAIRE)"
   CONDLIST = "CONDITION LIST ASSIGNED AND ASKED"
   HEIGHT   = "HEIGHT WITHOUT SHOES (18+ YEARS)"
   WEIGHT   = "WEIGHT WITHOUT SHOES (18+ YEARS)"
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
   DISDA5   = "NUMBER OF SHORT-STAY HOSPITAL DISCHARGES IN PAST 6 MONTHS"
   DIS6X    = "NUMBER OF DAYS IN SHORT-STAY HOSPITAL IN PAST 12 MONTHS FOR DISCHARGES IN PAST 6 MONTHS"
   DISDAY6X = "NUMBER OF SHORT-STAY HOSPITAL DISCHARGES IN PAST 6 MONTHS EXCLUDING DELIVERY"
   DISDA12X = "NUMBER OF DAYS IN SHORT-STAY HOSPITAL IN PAST 12 MONTHS FOR DISCHARGES IN PAST 6 MONTHS EXCLUDING DELIVERY"
   YRSLPRES = "YEARS LIVED IN STATE OF PRESENT RESIDENCE"
   YRSLIUS  = "YEARS LIVED IN UNITED STATES"
   GOSCHOOL = "NOW GOING TO SCHOOL OR ON VACATION FROM SCHOOL"
   WTINT    = "QUARTER BASIC WEIGHT BEFORE AGE-SEX-RACE ADJUSTMENT"
   SUBTYPE  = "TYPE OF SUBSTRATUM"
   STRATUM  = "FULL SAMPLE STRATUM IDENTIFIER"
   REGION   = "REGION"
   MSASIZE  = "GEOGRAPHIC DISTRIBUTION"
   PSUTYPE  = "TYPE OF PSU"
   MSA      = "MSA - NON-MSA RESIDENCE"
   PSUPSEUD = "PSEUDO PSU CODES"
   CCFACT   = "CHRONIC CONDITION PREVALENCE AND INCIDENCE FACTOR"
   WTFQ     = "FINAL BASIC WEIGHT - QUARTER"
   WTFS     = "FINAL BASIC WEIGHT - SEMI-ANNUAL (WT/2)"
   WT65     = "6 5 WEIGHT - QUARTER AND SEMI-ANNUAL"
   RADAYWP  = "ESTIMATED RESTRICTED ACTIVITY DAYS PAST 2W - QUARTER AND SEMI-ANNUAL"
   BDDAYWP  = "ESTIMATED BED DAYS PAST 2W - QUARTER AND SEMI-ANNUAL"
   WLDAYSP  = "ESTIMATED WORK-LOSS DAYSPAST 2W - QUARTER AND SEMI-ANNUAL"
   SLDAYWP  = "ESTIMATED SCHOOL-LOSS DAYS PAST 2W - QUARTER AND SEMI-ANNUAL"
   DV12WPQ  = "ESTIMATED DOCTOR VISITS PAST 12M - QUARTER"
   DV12WPS  = "ESTIMATED DOCTOR VISITS PAST 12M - SEMI-ANNUAL DAYS IN PAST 12 MONTHS"
   HDA12WPQ = "ESTIMATED SHORT-STAY HOSPITAL EPISODE DAYS PAST 12M - QUARTER"
   HDA12WPS = "ESTIMATED SHORT-STAY HOSPITAL EPISODE DAYS PAST 12M - SEMI-ANNUAL"
   DUMMYREC = "DUMMY FLAG"
   MEDICARE = "COVERED BY MEDICARE LAST MONTH"
   TYPECOV  = "TYPE OF COVERAGE"
   MCARPRTA = "MEDICARE PART A (NO CARD SEEN)"
   MCARPRTB = "MEDICARE PART B (NO CARD SEEN)"
   MCARTIME = "LENGTH OF TIME WITH MEDICARE COVERAGE"
   MAIDNOW  = "HAS MEDICAID CARD NOW"
   MAIDCRDS = "MEDICAID CARD SEEN"
   EXPMDC   = "EXPIRATION DATE OF MEDICAID CARD"
   EXPMDCMO = "MONTH"
   EXPMDCDA = "DAY"
   MAIDLMO  = "COVERED BY MEDICAID LAST MONTH"
   MAIDTIME = "LENGTH OF TIME WITH MEDICAID COVERAGE"
   MAID12M  = "RECEIVED MEDICAID CARE IN PAST 12 MONTHS"
   OTHERPA  = "COVERED BY OTHER PUBLIC ASSISTANCE LAST MONTH"
   CHAMP    = "COVERED BY CHAMPUS OR CHAMP - VA LAST MONTH"
   MILITHC  = "COVERED BY OTHER MILITARY HEALTH CARE LAST MONTH"
   INDIANHC = "COVERED BY INDIAN HEALTH SERVICE"
   HLTHIN1  = "NAME OF PLAN 1"
   COVSTAT1 = "COVERAGE STATUS"
   INWHOSE1 = "PLAN IN WHOSE NAME"
   WORKUNO1 = "ORIGINALLY OBTAINED THROUGH WORKPLACE OR UNION"
   EORUPAY1 = "EMPLOYER/UNION CURRENTLY PAY FOR PREMIUMS"
   FAMPAID1 = "LAST MONTH'S PREMIUM PAID BY FAMILY  ´"
   VARORSI1 = "VARIETY OR SINGLE SERVICE PLAN 1"
   SSTYPE1  = "TYPE OF SINGLE SERVICE 1"
   PLANTYP1 = "TYPE OF PLAN 1"
   DRCHOIC1 = "CHOICE OF DOCTOR"
   PPOPTLI1 = "PREFERRED PROVIDER LIST OPTION"
   OUTPLAN1 = "PLAN PAYS FOR OUT OF PLAN USE"
   WELCH1LD = "PLAN PAYS FOR WELL CHILD CARE"
   MAMMOGR1 = "PLAN PAYS FOR MAMMOGRAM"
   PLANTYR1 = "TYPE OF PLAN 1 - RECODE 1"
   PLANTP12 = "TYPE OF PLAN 1 - RECODE 2"
   HMOR1    = "HMO  RECODE"
   HLTHIN2  = "NAME OF PLAN 2"
   COVSTAT2 = "COVERAGE STATUS 2"
   INWHOSE2 = "PLAN 2 IN WHOSE NAME"
   WORKUNO2 = "ORIGINALLY OBTAINED THROUGH WORKPLACE OR UNION 2"
   EORUPAY2 = "EMPLOYER/UNION CURRENTLY PAY FOR PREMIUMS 2"
   FAMPAID2 = "LAST MONTH'S PREMIUM PAID BY FAMILY"
   VARORSI2 = "VARIETY OR SINGLE SERVICE PLAN 2"
   SSTYPE2  = "TYPE OF SINGLE SERVICE 2"
   PLANTYP2 = "TYPE OF PLAN 2"
   DRCHOIC2 = "CHOICE OF DOCTOR 2"
   PPOPTLI2 = "PREFERRED PROVIDER LIST OPTION PLAN 2"
   OUTPLAN2 = "PLAN PAYS FOR OUT OF PLAN USE PLAN 2"
   WELCH2LD = "PLAN PAYS FOR WELL CHILD CARE PLAN 2"
   MAMMOGR2 = "PLAN PAYS FOR MAMMOGRAM  PLAN 2"
   PLANTYR2 = "TYPE OF PLAN 2 - RECODE 1"
   PLANTP22 = "TYPE OF PLAN 2 - RECODE 2"
   HMOR2    = "HMO  RECODE PLAN 2"
   HLTHIN3  = "NAME OF PLAN 3"
   COVSTAT3 = "COVERAGE STATUS 3"
   INWHOSE3 = "PLAN 3 IN WHOSE NAME"
   WORKUNO3 = "ORIGINALLY OBTAINED THROUGH WORKPLACE OR UNION 3"
   EORUPAY3 = "EMPLOYER/UNION CURRENTLY PAY FOR PREMIUMS 3"
   FAMPAID3 = "LAST MONTH'S PREMIUM PAID BY FAMILY PLAN 3"
   VARORSI3 = "VARIETY OR SINGLE SERVICE PLAN 3"
   SSTYPE3  = "TYPE OF SINGLE SERVICE 3"
   PLANTYP3 = "TYPE OF PLAN 3"
   DRCHOIC3 = "CHOICE OF DOCTOR 3"
   PPOPTLI3 = "PREFERRED PROVIDER LIST OPTION PLAN 3"
   OUTPLAN3 = "PLAN PAYS FOR OUT OF PLAN USE PLAN 3"
   WELCH3LD = "PLAN PAYS FOR WELL CHILD CARE PLAN 3"
   MAMMOGR3 = "PLAN PAYS FOR MAMMOGRAM  PLAN 3"
   PLANTYR3 = "TYPE OF PLAN 3 - RECODE 1"
   PLANTP32 = "TYPE OF PLAN 3 - RECODE 2"
   HMOR3    = "HMO  RECODE PLAN 3"
   HLTHIN4  = "NAME OF PLAN 4"
   COVSTAT4 = "COVERAGE STATUS 4"
   INWHOSE4 = "PLAN 4 IN WHOSE NAME"
   WORKUNO4 = "ORIGINALLY OBTAINED THROUGH WORKPLACE OR UNION 4"
   EORUPAY4 = "EMPLOYER/UNION CURRENTLY PAY FOR PREMIUMS 4"
   FAMPAID4 = "LAST MONTH'S PREMIUM PAID BY FAMILY PLAN 4"
   VARORSI4 = "VARIETY OR SINGLE SERVICE PLAN 4"
   SSTYPE4  = "TYPE OF SINGLE SERVICE 4"
   PLANTYP4 = "TYPE OF PLAN 4"
   DRCHOIC4 = "CHOICE OF DOCTOR 4"
   PPOPTLI4 = "PREFERRED PROVIDER LIST OPTION PLAN 4"
   OUTPLAN4 = "PLAN PAYS FOR OUT OF PLAN USE PLAN 4"
   WELCH4LD = "PLAN PAYS FOR WELL CHILD CARE PLAN 4"
   MAMMOGR4 = "PLAN PAYS FOR MAMMOGRAM  PLAN 4"
   PLANTYR4 = "TYPE OF PLAN 4 - RECODE 1"
   PLANTP42 = "TYPE OF PLAN 4 - RECODE 2"
   HMOR4    = "HMO  RECODE PLAN 4"
   LHIPCOND = "DENIED/RESTRICTED COVERAGE IN PAST TWO YEARS DUE TO PRE-EXISTING CONDITION"
   NHIDENY  = "TURNED DOWN WHEN APPLIED IN PAST 2 YEARS"
   NHIPCNDR = "PRE-EXISTING CONDITION(S) - WHY HI UNABLE"
   NHIHRISK = "HEALTH RISK (SMOKING/OVERWEIGHT) - WHY HI UNABLE"
   NHIWORK  = "WORK OCCUPATION  - WHY HI UNABLE"
   NHICOST1 = "PREMIUMS WERE TOO HIGH - WHY HI UNABLE"
   NHIOTHR  = "OTHER REASONS - WHY HI UNABLE"
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
   NOJOB    = "JOB LAYOFF/LOSS/UNEMPLOYED - WHY NOT COVERED"
   NOEMPHI  = "WASN'T OFFERED BY EMPLOYER - WHY NOT COVERED"
   NHIPTIME = "NOT ELIGIBLE - PART TIME WORKER - WHY NOT COVERED"
   EMPNOFAM = "FAMILY COVERAGE NOT OFFERED BY EMPLOYER - WHY NOT COVERED"
   NHIRNOUT = "BENEFITS RAN OUT - WHY NOT COVERED"
   NHIHLTH  = "CAN'T OBTAIN BECAUSE OF POOR HEALTH, ILLNESS OR AGE - WHY NOT COVERED"
   NHICOST2 = "TOO EXPENSIVE/CAN'T AFFORD - WHY NOT COVERED"
   NHIDSSAT = "DISSATISFIED WITH PREVIOUS INSURANCE - WHY NOT COVERED"
   NHIDONTB = "DON'T BELIEVE IN INSURANCE - WHY NOT COVERED"
   NHINNEED = "HEALTHY/HAVEN'T NEEDED INSURANCE - WHY NOT COVERED"
   NHIOTHCV = "COVERED BY OTHER PLAN - WHY NOT COVERED"
   NHIOLD   = "TOO OLD FOR COVERAGE UNDER FAMILY PLANS - WHY NOT COVERED"
   NHICHPCR = "FREE/INEXPENSIVE CARE AVAILABLE - WHY NOT COVERED"
   NHIOTHER = "OTHER REASONS - WHY NOT COVERED"
   NHIRNOTC = "MAIN REASON NOT COVERED"
   LASTCOV  = "WHEN LAST HAD COVERAGE"
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
   AGER2     HIN016X.    AGER3     HIN017X.    BIRTHMO   $HIN018X.
   BIRTHYR   $HIN019X.   HISPFLAG  HIN020X.    RACE      HIN021X.
   RACER1    HIN022X.    RACER2    HIN023X.    RACER3    HIN024X.
   HISPANIC  HIN025X.    MARSTAT   HIN026X.    VETERAN   HIN027X.
   RESERVE   HIN028X.    EDUC      HIN029X.    EDUCR     HIN030X.
   EDUCAD    HIN031X.    EDUCADR   HIN032X.    INCFAM20  HIN033X.
   INCFAM    HIN034X.    INCFAMR   HIN035X.    POVERTY   HIN036X.
   FAMNUM    $HIN037X.   FAMREL    $HIN038X.   FAMRELR   HIN039X.
   FAMSIZE   HIN040X.    FAMSIZER  HIN041X.    PARENT    HIN042X.
   MAJACT    HIN043X.    HEALTH    HIN044X.    LATOTAL   HIN045X.
   LAWORK    HIN046X.    LASCHOOL  HIN047X.    LACARE    HIN048X.
   EMPLOY    HIN049X.    WKCLASS   HIN050X.    INDUS     HIN051X.
   INDUSR1   HIN052X.    INDUSR2   HIN053X.    OCCUP     HIN054X.
   OCCUPR1   HIN055X.    OCCUPR2   HIN056X.    RESPOND   HIN057X.
   CONDLIST  HIN058X.    HEIGHT    HIN059X.    WEIGHT    HIN060X.
   RADAY     HIN061X.    BDDAY     HIN062X.    WLDAY     HIN063X.
   SLDAY     HIN064X.    OTHDAY    HIN065X.    BDDAY12   HIN066X.
   BDDAY12R  HIN067X.    DV12      HIN068X.    DVINT     HIN069X.
   NCOND     HIN070X.    NACUTE    HIN071X.    NDV2      HIN072X.
   HEP12     HIN073X.    HDA12     HIN074X.    HEP12X    HIN075X.
   HDA12X    HIN076X.    DISDA5    HIN077X.    DIS6X     HIN078X.
   DISDAY6X  HIN079X.    DISDA12X  HIN080X.    YRSLPRES  HIN081X.
   YRSLIUS   HIN082X.    GOSCHOOL  HIN083X.    WTINT     HIN084X.
   SUBTYPE   HIN085X.    STRATUM   HIN086X.    REGION    HIN087X.
   MSASIZE   HIN088X.    PSUTYPE   HIN089X.    MSA       HIN090X.
   PSUPSEUD  HIN091X.    CCFACT    HIN092X.    WTFQ      HIN093X.
   WTFS      HIN094X.    WT65      HIN095X.    RADAYWP   HIN096X.
   BDDAYWP   HIN097X.    WLDAYSP   HIN098X.    SLDAYWP   HIN099X.
   DV12WPQ   HIN100X.    DV12WPS   HIN101X.    HDA12WPQ  HIN102X.
   HDA12WPS  HIN103X.    DUMMYREC  HIN104X.    MEDICARE  HIN105X.
   TYPECOV   HIN106X.    MCARPRTA  HIN107X.    MCARPRTB  HIN108X.
   MCARTIME  HIN109X.    MAIDNOW   HIN110X.    MAIDCRDS  HIN111X.
   EXPMDC    $HIN112X.   EXPMDCMO  $HIN113X.   EXPMDCDA  $HIN114X.
   MAIDLMO   HIN115X.    MAIDTIME  HIN116X.    MAID12M   HIN117X.
   OTHERPA   HIN118X.    CHAMP     HIN119X.    MILITHC   HIN120X.
   INDIANHC  HIN121X.    HLTHIN1   HIN122X.    COVSTAT1  HIN123X.
   INWHOSE1  HIN124X.    WORKUNO1  HIN125X.    EORUPAY1  HIN126X.
   FAMPAID1  HIN127X.    VARORSI1  HIN128X.    SSTYPE1   HIN129X.
   PLANTYP1  HIN130X.    DRCHOIC1  HIN131X.    PPOPTLI1  HIN132X.
   OUTPLAN1  HIN133X.    WELCH1LD  HIN134X.    MAMMOGR1  HIN135X.
   PLANTYR1  HIN136X.    PLANTP12  HIN137X.    HMOR1     HIN138X.
   HLTHIN2   HIN139X.    COVSTAT2  HIN140X.    INWHOSE2  HIN141X.
   WORKUNO2  HIN142X.    EORUPAY2  HIN143X.    FAMPAID2  HIN144X.
   VARORSI2  HIN145X.    SSTYPE2   HIN146X.    PLANTYP2  HIN147X.
   DRCHOIC2  HIN148X.    PPOPTLI2  HIN149X.    OUTPLAN2  HIN150X.
   WELCH2LD  HIN151X.    MAMMOGR2  HIN152X.    PLANTYR2  HIN153X.
   PLANTP22  HIN154X.    HMOR2     HIN155X.    HLTHIN3   HIN156X.
   COVSTAT3  HIN157X.    INWHOSE3  HIN158X.    WORKUNO3  HIN159X.
   EORUPAY3  HIN160X.    FAMPAID3  HIN161X.    VARORSI3  HIN162X.
   SSTYPE3   HIN163X.    PLANTYP3  HIN164X.    DRCHOIC3  HIN165X.
   PPOPTLI3  HIN166X.    OUTPLAN3  HIN167X.    WELCH3LD  HIN168X.
   MAMMOGR3  HIN169X.    PLANTYR3  HIN170X.    PLANTP32  HIN171X.
   HMOR3     HIN172X.    HLTHIN4   HIN173X.    COVSTAT4  HIN174X.
   INWHOSE4  HIN175X.    WORKUNO4  HIN176X.    EORUPAY4  HIN177X.
   FAMPAID4  HIN178X.    VARORSI4  HIN179X.    SSTYPE4   HIN180X.
   PLANTYP4  HIN181X.    DRCHOIC4  HIN182X.    PPOPTLI4  HIN183X.
   OUTPLAN4  HIN184X.    WELCH4LD  HIN185X.    MAMMOGR4  HIN186X.
   PLANTYR4  HIN187X.    PLANTP42  HIN188X.    HMOR4     HIN189X.
   LHIPCOND  HIN190X.    NHIDENY   HIN191X.    NHIPCNDR  HIN192X.
   NHIHRISK  HIN193X.    NHIWORK   HIN194X.    NHICOST1  HIN195X.
   NHIOTHR   HIN196X.    STAYD2YR  HIN197X.    EMPLOYHI  HIN198X.
   PRIVHICR  HIN199X.    GHINPPER  HIN200X.    GHINPFAM  HIN201X.
   SHINPPER  HIN202X.    SHINPFAM  HIN203X.    MCARPRIV  HIN204X.
   MAIDOTHR  HIN205X.    MILHIR    HIN206X.    COVSTATR  HIN207X.
   NOJOB     HIN208X.    NOEMPHI   HIN209X.    NHIPTIME  HIN210X.
   EMPNOFAM  HIN211X.    NHIRNOUT  HIN212X.    NHIHLTH   HIN213X.
   NHICOST2  HIN214X.    NHIDSSAT  HIN215X.    NHIDONTB  HIN216X.
   NHINNEED  HIN217X.    NHIOTHCV  HIN218X.    NHIOLD    HIN219X.
   NHICHPCR  HIN220X.    NHIOTHER  HIN221X.    NHIRNOTC  HIN222X.
   LASTCOV   HIN223X.    NHIRSTOP  HIN224X.    TRYFNDIN  HIN225X.
   NHICANTF  HIN226X.    NHILAPSE  HIN227X.    NHILAPMO  HIN228X.
   NHIMAINR  HIN229X.    MCARCOST  HIN230X.    RESPSTAT  HIN231X.
   ANSWPERS  HIN232X.
   ;
 
PROC CONTENTS DATA=NHIS.HEALTHINS;
 
PROC FREQ DATA=NHIS.HEALTHINS;
TITLE1 'FREQUENCY REPORT FOR 1993 NHIS HEALTH INSURANCE SUPPLEMENT FILE';
TITLE2 '(UNWEIGHTED)';
TABLES RECTYPE/LIST MISSING;
 
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
              STATEMENT: FORMAT _ALL_;
RUN;
