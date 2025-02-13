DM 'CLE LOG; CLE OUT'; 
**************************************************************************
  October 20, 2005
 
THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
FILE FROM THE NHIS 1996 HEALTHIN.DAT ASCII FILE.
 
NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
      GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
      DOCUMENTATION.
 
THIS IS STORED IN HEALTHIN.SAS
*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;
 
LIBNAME NHIS    'C:\NHIS1996\';
LIBNAME LIBRARY 'C:\NHIS1996\';
 
FILENAME ASCII 'C:\NHIS1996\HEALTHIN.DAT';
 
* DEFINE VARIABLE VALUES FOR REPORT;
 
PROC FORMAT LIBRARY=LIBRARY;
  VALUE  HIN001X
   85               = "Health Insurance"
   ;
  VALUE  HIN002X
   96               = "1996"
   ;
  VALUE $HIN003X
   ;
  VALUE $HIN004X
   ;
  VALUE  HIN005X
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
  VALUE  HIN006X
   0                = "Interview not late"
   1                = "One week late"
   2                = "Two weeks late"
   3                = "Unknown"
   ;
  VALUE  HIN007X
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
  VALUE  HIN008X
   1                = "Yes, phone number given"
   2                = "Yes, no phone number given"
   3                = "No"
   4                = "Unknown"
   ;
  VALUE  HIN009X
   1                = "Male"
   2                = "Female"
   ;
  VALUE  HIN010X
   0                = "Age known"
   1                = "Age unknown, imputed as 34"
   ;
  VALUE  HIN011X
   00               = "Under 1 year"
   01-89            = "Number of years"
   90               = "99+ years of age"
   ;
  VALUE  HIN012X
   1                = "Under 5 years"
   2                = "5-17 years"
   3                = "18-24 years"
   4                = "25-44 years"
   5                = "45-64 years"
   6                = "65-69 years"
   7                = "70-74 years"
   8                = "75 years and over"
   ;
  VALUE  HIN013X
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
  VALUE  HIN014X
   00-35            = "Months"
   36               = "Over 3 years"
   ;
  VALUE  HIN015X
   00-35            = "Months"
   36               = "Over 3 years"
   ;
  VALUE $HIN016X
   "01"             = "January         08.  August"
   "02"             = "February        09.  September"
   "03"             = "March           10.  October"
   "04"             = "April           11.  November"
   "05"             = "May             12.  December"
   "06"             = "June            99.  Unknown"
   "07"             = "July"
   ;
  VALUE $HIN017X
   "1905"           = "1905 and before"
   "1906"-"1997"    = "1906-1997"
   "9999"           = "Unknown"
   ;
  VALUE  HIN018X
   0                = "Hispanic Origin Known"
   1                = "Hispanic Origin Imputed from Reference Person"
   ;
  VALUE  HIN019X
   01               = "White"
   02               = "Black/African American"
   03               = "Indian (American)"
   06               = "Chinese"
   07               = "Filipino"
   15               = "Other API (includes Hawaiian, Korean, Vietnamese, Japanese, Asian Indian, Samoan, and"
   16               = "Other Race (includes Eskimo and Aleut)"
   17               = "Multiple Race"
   99               = "Unknown"
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
   2                = "WW I and WW II"
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
  VALUE  HIN033X
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
   "7"              = "Child of military family with no eligible reference person"
   "9"              = "Unknown"
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
   .                = "Not applicable (Under 5 years or 18+ years)"
   ;
  VALUE  HIN046X
   1                = "Unable to perform personal care needs"
   2                = "Limited in performing other routine needs"
   3                = "Not limited in performing personal or routine needs"
   4                = "Unknown"
   .                = "Not applicable (Under 5 years; 5-59 years not limited; 70+ years old)"
   ;
  VALUE  HIN047X
   1                = "Worked in past 2 weeks"
   2                = "Did not work, has job; not on lay-off and not looking for work"
   3                = "Did not work, has job; looking for work"
   4                = "Did not work, has job; on lay-off"
   5                = "Did not work, has job; on lay-off and looking for work"
   6                = "Did not work, has job; unknown if looking/on lay-off"
   7                = "Did not work, has no job; looking for work/on lay-off"
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
   ;
  VALUE  HIN050X
   ;
  VALUE  HIN051X
   ;
  VALUE  HIN052X
   ;
  VALUE  HIN053X
   1                = "Self-entirely"
   2                = "Self-partly"
   3                = "Proxy"
   4                = "Unknown"
   ;
  VALUE  HIN054X
   1                = "Condition List 1, Skin and musculoskeletal"
   2                = "Condition List 2, Impairments"
   3                = "Condition List 3, Digestive"
   4                = "Condition List 4, Miscellaneous"
   5                = "Condition List 5, Circulatory"
   6                = "Condition List 6, Respiratory"
   7                = "Unknown"
   ;
  VALUE  HIN055X
   58               = "58 inches or less"
   59-76            = "Number of inches"
   77               = "77 inches or more"
   99               = "Unknown"
   .                = "Under 18 years of age"
   ;
  VALUE  HIN056X
   097              = "97 pounds or less"
   098-289          = "Number of pounds"
   290              = "290 pounds or more"
   999              = "Unknown"
   .                = "Under 18 years of age"
   ;
  VALUE  HIN057X
   00               = "None"
   01-14            = "Days"
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
   000              = "None"
   001-365          = "1-365 days"
   366              = "Unknown"
   ;
  VALUE  HIN063X
   0                = "None"
   1                = "1-7 days"
   2                = "8-30 days"
   3                = "31-180 days"
   4                = "181-365 days"
   5                = "Unknown"
   ;
  VALUE  HIN064X
   000              = "None"
   001-996          = "Visits"
   997              = "997+ visits"
   998              = "Unknown"
   ;
  VALUE  HIN065X
   0                = "Never"
   1                = "Less than 1 year"
   2                = "1 to less than 2 years"
   3                = "2 to less than 5 years"
   4                = "5 years or more"
   5                = "Unknown"
   ;
  VALUE  HIN066X
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
   1                = "Less than 1 year"
   2                = "1 year, less than 5 years"
   3                = "5 years, less than 10 years"
   4                = "10 years, less than 15 years"
   5                = "15 years or more"
   9                = "Unknown"
   .                = "Not applicable (Foreign-born)"
   ;
  VALUE  HIN078X
   1                = "Less than 1 year"
   2                = "1 year, less than 5 years"
   3                = "5 years, less than 10 years"
   4                = "10 years, less than 15 years"
   5                = "15 years or more"
   9                = "Unknown"
   .                = "Not applicable (US born)"
   ;
  VALUE  HIN079X
   ;
  VALUE  HIN080X
   1                = "Quarter 1"
   2                = "Quarter 2"
   3                = "Quarter 3"
   4                = "Quarter 4"
   ;
  VALUE  HIN081X
   1                = "Northeast"
   2                = "Midwest"
   3                = "South"
   4                = "West"
   ;
  VALUE  HIN082X
   1                = "5,000,000 or more"
   2                = "2,500,000 - 4,999,999"
   3                = "1,000,000 - 2,499,999"
   4                = "500,000 - 999,999"
   5                = "250,000 - 499,999"
   6                = "100,000 - 249,999"
   7                = "Under 100,000"
   .                = "Non-MSA"
   ;
  VALUE  HIN083X
   1                = "In MSA; in Central City"
   2                = "In MSA; not in Central City"
   3                = "Not in MSA"
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
   1                = "Self representing"
   2                = "Non self representing"
   ;
  VALUE  HIN105X
   1-4              = "Code used to identify nationally Representative subsamples"
   ;
  VALUE  HIN106X
   ;
  VALUE  HIN107X
   ;
  VALUE  HIN108X
   ;
  VALUE  HIN109X
   0                = "One or more sections dummied"
   1                = "Total dummy record"
   .                = "Not a dummy record"
   ;
  VALUE  HIN110X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HIN111X
   1                = "Part A - Hospital only"
   2                = "Part B - Medical only"
   3                = "Both part A and part B"
   4                = "Card N.A."
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if covered by Medicare"
   ;
  VALUE  HIN112X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if covered by Medicare, covered but part A/B coverage unknown from car"
   ;
  VALUE  HIN113X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if covered by Medicare, covered but part A/B coverage unknown from car"
   ;
  VALUE  HIN114X
   1                = "Less than 6 months"
   2                = "6 months, but less than 1 year"
   3                = "1 year but less than 2 years"
   4                = "2 years or more"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if covered by Medicare, covered but age 67 or older"
   ;
  VALUE  HIN115X
   1                = "Any doctor"
   2                = "Select from list/group"
   8                = "Not Ascertained"
   9                = "DK or refused"
   .                = "NA; No/DK if Medicare received; not resident of Medicare managed care state of Medicare managed care"
   ;
  VALUE  HIN116X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HIN117X
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
  VALUE  HIN118X
   1                = "Any doctor"
   2                = "Select from list/group"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No/DK if Medicaid received; not resident of group A Medicaid state Medicaid managed care states)"
   ;
  VALUE  HIN119X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No/DK if medicaid received; not resident of group A Medicaid state; doesn't select f"
   ;
  VALUE  HIN120X
   0                = "Single person (not asked question)"
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
   	01-02           = ""
   	04-23           = ""
   	55              = ""
   	77              = ""
   88               = "Refer to Health Insurance Plan Listing"
   98               = "Not ascertained"
   99               = "DK or refused to say if has insurance"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this fa"
   ;
  VALUE  HIN126X
   0                = "Not known to be covered by this plan"
   1                = "Covered by this general purpose plan"
   2                = "Covered by this single service plan"
   8                = "Unknown which family member is covered by this plan"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for thi"
   ;
  VALUE  HIN127X
   1                = "In own name"
   2                = "Person not in household"
   3                = "Someone else in family (HH) or unknown"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this"
   ;
  VALUE  HIN128X
   1                = "Employer"
   2                = "Union"
   3                = "Through workplace but DK if employer or union"
   4                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for thi"
   ;
  VALUE  HIN129X
   1                = "All"
   2                = "Some"
   3                = "None"
   8                = "Not Ascertained"
   9                = "DK or Refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for thi"
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
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this"
   ;
  VALUE  HIN131X
   1                = "Variety of service"
   2                = "Single service/care"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for thi"
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
   .                = "NA; No or unknown if anyone in family has private health insurance, this plan not mentioned for this"
   ;
  VALUE  HIN133X
   1                = "HMO/IPA"
   2                = "Other"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance, this plan not mentioned for this"
   ;
  VALUE  HIN134X
   1                = "Any doctor"
   2                = "Select from group/list"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance, this plan not mentioned for thi"
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
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN138X
   0                = "No person under 18 years"
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN139X
   	01-02           = ""
   	04-23           = ""
   	55              = ""
   	77              = ""
   88               = "Refer to Health Insurance Plan Listing"
   98               = "Not ascertained"
   99               = "DK or refused to say if has insurance"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for thi"
   ;
  VALUE  HIN140X
   0                = "Not known to be covered by this plan"
   1                = "Covered by this general purpose plan"
   2                = "Covered by this single service plan"
   8                = "Unknown which family member is covered by this plan"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for thi"
   ;
  VALUE  HIN141X
   1                = "In own name"
   2                = "Person not in household"
   3                = "Someone else in family (HH) or unknown"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this"
   ;
  VALUE  HIN142X
   1                = "Employer"
   2                = "Union"
   3                = "Through workplace but DK if employer or union"
   4                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for thi"
   ;
  VALUE  HIN143X
   1                = "All"
   2                = "Some"
   3                = "None"
   8                = "Not Ascertained"
   9                = "DK or Refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for thi"
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
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for thi"
   ;
  VALUE  HIN145X
   1                = "Variety of service"
   2                = "Single service/care"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this"
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
   .                = "NA; No or unknown if anyone in family has private health insurance, this plan not mentioned for thi"
   ;
  VALUE  HIN147X
   1                = "HMO/IPA"
   2                = "Other"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance, this plan not mentioned for this"
   ;
  VALUE  HIN148X
   1                = "Any doctor"
   2                = "Select from group/list"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance, this plan not mentioned for this"
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
   0                = "No person under 18 years"
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN153X
   	01-02           = ""
   	04-23           = ""
   	55              = ""
   	77              = ""
   88               = "Refer to Health Insurance Plan Listing"
   98               = "Not ascertained"
   99               = "DK or refused to say if has insurance"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for thi"
   ;
  VALUE  HIN154X
   0                = "Not known to be covered by this plan"
   1                = "Covered by this general purpose plan"
   2                = "Covered by this single service plan"
   8                = "Unknown which family member is covered by this plan"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for thi"
   ;
  VALUE  HIN155X
   1                = "In own name"
   2                = "Person not in household"
   3                = "Someone else in family (HH) or unknown"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this"
   ;
  VALUE  HIN156X
   1                = "Employer"
   2                = "Union"
   3                = "Through workplace but DK if employer or union"
   4                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for thi"
   ;
  VALUE  HIN157X
   1                = "All"
   2                = "Some"
   3                = "None"
   8                = "Not Ascertained"
   9                = "DK or Refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for th"
   ;
  VALUE  HIN158X
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
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for thi"
   ;
  VALUE  HIN159X
   1                = "Variety of service"
   2                = "Single service/care"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this"
   ;
  VALUE  HIN160X
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
   .                = "NA; No or unknown if anyone in family has private health insurance, this plan not mentioned for th"
   ;
  VALUE  HIN161X
   1                = "HMO/IPA"
   2                = "Other"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance, this plan not mentioned for this"
   ;
  VALUE  HIN162X
   1                = "Any doctor"
   2                = "Select from group/list"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance, this plan not mentioned for thi"
   ;
  VALUE  HIN163X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN164X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN165X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN166X
   0                = "No person under 18 years"
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN167X
   	01-02           = ""
   	04-23           = ""
   	55              = ""
   	77              = ""
   88               = "Refer to Health Insurance Plan Listing"
   98               = "Not ascertained"
   99               = "DK or refused to say if has insurance"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this"
   ;
  VALUE  HIN168X
   0                = "Not known to be covered by this plan"
   1                = "Covered by this general purpose plan"
   2                = "Covered by this single service plan"
   8                = "Unknown which family member is covered by this plan"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for thi"
   ;
  VALUE  HIN169X
   1                = "In own name"
   2                = "Person not in household"
   3                = "Someone else in family (HH) or unknown"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for thi"
   ;
  VALUE  HIN170X
   1                = "Employer"
   2                = "Union"
   3                = "Through workplace but DK if employer or union"
   4                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for th"
   ;
  VALUE  HIN171X
   1                = "All"
   2                = "Some"
   3                = "None"
   8                = "Not Ascertained"
   9                = "DK or Refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for thi"
   ;
  VALUE  HIN172X
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
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for thi"
   ;
  VALUE  HIN173X
   1                = "Variety of service"
   2                = "Single service/care"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; this plan not mentioned for this"
   ;
  VALUE  HIN174X
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
   .                = "NA; No or unknown if anyone in family has private health insurance, this plan not mentioned for thi"
   ;
  VALUE  HIN175X
   1                = "HMO/IPA"
   2                = "Other"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance, this plan not mentioned for thi"
   ;
  VALUE  HIN176X
   1                = "Any doctor"
   2                = "Select from group/list"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance, this plan not mentioned for thi"
   ;
  VALUE  HIN177X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN178X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN179X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN180X
   0                = "No person under 18 years"
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN181X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HIN182X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HIN183X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; No or unknown if unable to get insurance"
   ;
  VALUE  HIN184X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained but turned down (entire question)"
   9                = "DK any reason"
   .                = "NA; No or unknown if unable to get insurance"
   ;
  VALUE  HIN185X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; No or unknown if unable to get insurance"
   ;
  VALUE  HIN186X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; No or unknown if unable to get insurance"
   ;
  VALUE  HIN187X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; No or unknown if unable to get insurance"
   ;
  VALUE  HIN188X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HIN189X
   0                = "Not asked, person has job and has insurance in own name"
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; 70+ yrs; not employed in past 2 weeks"
   ;
  VALUE  HIN190X
   0                = "Only known coverage is single purpose plan"
   1                = "Covered by at least one general purpose health plan"
   2                = "Not covered by any plan"
   6                = "Unknown if covered by at least one particular plan"
   8                = "Not ascertained (whole question)"
   9                = "Unknown if covered (whole question)"
   ;
  VALUE  HIN191X
   0                = "No known plans"
   1-4              = "Number of plans"
   ;
  VALUE  HIN192X
   0                = "No known plans"
   1-4              = "Number of plans"
   ;
  VALUE  HIN193X
   0                = "No known plans"
   1-4              = "Number of plans"
   ;
  VALUE  HIN194X
   0                = "No known plans"
   1-4              = "Number of plans"
   ;
  VALUE  HIN195X
   1                = "Covered by one or both"
   2                = "Not covered by either"
   9                = "Unknown if covered"
   ;
  VALUE  HIN196X
   1                = "Covered by both"
   2                = "Covered by one"
   3                = "Covered by neither"
   9                = "Unknown if covered"
   ;
  VALUE  HIN197X
   0                = "Covered by CHAMPUS/CHAMP-VA"
   1                = "Covered by other military/VA"
   2                = "Covered by both CHAMPUS and other military health care"
   3                = "Not covered by any military health care"
   6                = "Not covered by other military; not ascertained if covered by CHAMP-VA"
   7                = "Not covered by CHAMP-VA; not ascertained if covered by other military"
   8                = "Not ascertaine"
   ;
  VALUE  HIN198X
   1                = "Yes, covered"
   2                = "Not known to be covered, some response to non-coverage reasons"
   3                = "Not known to be covered, no response to non-coverage items"
   ;
  VALUE  HIN199X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HIN200X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HIN201X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HIN202X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HIN203X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HIN204X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HIN205X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HIN206X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
   ;
  VALUE  HIN207X
   1                = "Mentioned"
   2                = "Not mentioned"
   8                = "Not ascertained (any reason)"
   9                = "DK any reason"
   .                = "NA; covered, not known to be covered but no response to non-coverage items"
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
  VALUE  HIN214X
   1                = "State Plan"
   2                = "Private Plan"
   3                = "Other Plan"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; covered, not known to be covered but not response to non-coverage items"
   ;
  VALUE  HIN215X
   1                = "Less than 6 months ago"
   2                = "6 months ago, but less than 1 year ago"
   3                = "1 year ago, but less than 3 years ago"
   4                = "3 or more years ago"
   5                = "Never had health insurance"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA, Covered, not known to be covered but no response to non-coverage items; said covered"
   ;
  VALUE  HIN216X
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
  VALUE  HIN217X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN218X
   1                = "Could not afford"
   2                = "Was rejected"
   3                = "Other reason"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA"
   ;
  VALUE  HIN219X
   1                = "Yes"
   2                = "No"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; not covered, not known to be covered"
   ;
  VALUE  HIN220X
   1                = "1 month or less"
   2                = "2-3 months"
   3                = "4-6 months"
   4                = "More than 6 months"
   8                = "Not ascertained"
   9                = "DK or refused"
   .                = "NA; not covered, not known to be covered, covered and no time without coverage in past 1"
   ;
  VALUE  HIN221X
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
   .                = "NA not covered, not known to be covered, covered and no time without coverage in past 12"
   ;
  VALUE  HIN222X
   1                = "Zero"
   2                = "Less than $500"
   3                = "$500 - $1,999"
   4                = "$2,000 - $2,999"
   5                = "$3,000 - $4,999"
   6                = "$5,000 or more"
   8                = "Not ascertained"
   9                = "DK or refused"
   ;
  VALUE  HIN223X
   1                = "Self"
   2                = "Proxy"
   9                = "Unknown Respondent"
   ;
  VALUE  HIN224X
   00               = "Unknown respondent"
   01-28            = "Person number"
   30-97            = "Person number"
   98               = "Active duty military"
   99               = "Non household member"
   ;
 
DATA NHIS.HEALTHIN;
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1996\';
   INFILE ASCII MISSOVER TRUNCOVER LRECL=560;
 
* DEFINE LENGTH OF NUMERIC VARIABLES;
 
LENGTH
   RECTYPE   3  YEAR      3  WEEKCODE  3  LAFLAG    3  LIVQTR    3
   PHONE     3  SEX       3  AGEIF     3  AGE       3  AGER1     3
   AGER2     3  AGER3     3  BIRMOIF   3  HISPFLAG  3  RACE      3
   RACER1    3  RACER2    3  RACER3    3  HISPANIC  3  MARSTAT   3
   VETERAN   3  RESERVE   3  EDUC      3  EDUCR     3  EDUCAD    3
   EDUCADR   3  INCFAM20  3  INCFAM    3  INCFAMR   3  POVERTY   3
   FAMRELR   3  FAMSIZE   3  FAMSIZER  3  PARENT    3  MAJACT    3
   HEALTH    3  LATOTAL   3  LAWORK    3  LASCHOOL  3  LACARE    3
   EMPLOY    3  WKCLASS   3  INDUSR1   3  INDUSR2   3  OCCUPR1   3
   OCCUPR2   3  RESPOND   3  CONDLIST  3  HEIGHT    3  WEIGHT    3
   RADAY     3  BDDAY     3  WLDAY     3  SLDAY     3  OTHDAY    3
   BDDAY12   3  BDDAY12R  3  DV12      3  DVINT     3  NCOND     3
   NACUTE    3  NDV2      3  HEP12     3  HDA12     3  HEP12X    3
   HDA12X    3  DISDA6    3  DIS6X     3  DISDA6X   3  DISDA12X  3
   YRSLPRES  3  YRSLIUS   3  WTINT     8  QUARTER   3  REGION    3
   MSASIZE   3  MSA       3  CCFACT    8  WTFQ      6  WTFS      6
   WTFA      6  WT65      6  RADAYWP   6  BDDAYWP   6  WLDAYSP   6
   SLDAYWP   6  DV12WPQ   6  DV12WPS   6  DV12ANN   6  HDA12WPQ  6
   HDA12WPS  6  HDA12ANN  6  AESSHE12  6  VARSTRAR  3  VARPSUR   3
   VARSUBSR  3  UNITSS    4  TYPEPSU   3  PANEL     3  NSRSTVA   3
   COLVARST  3  VARPSU    3  DUMMYREC  3  MEDICARE  3  TYPECOV   3
   MCARPRTA  3  MCARPRTB  3  MCARTIME  3  MCARDOC   3  MAIDLAMO  3
   MAIDTIME  3  MAIDDOC   3  APPROVAL  3  MAID12M   3  OTHERPA   3
   CHAMP     3  MILITHC   3  INDIANHC  3  HLTHINP1  3  COVSTAT1  6
   INWHOSE1  6  WORKUNO1  6  EORUPAY1  6  FAMPAID1  6  VARORSI1  6
   SSTYPE1   3  PLANTYP1  6  DRCHOIC1  6  PPOPTLI1  6  OUTPLAN1  6
   DENTCAR1  6  WELCHIL1  6  HLTHINP2  3  COVSTAT2  6  INWHOSE2  6
   WORKUNO2  6  EORUPAY2  6  FAMPAID2  6  VARORSI2  6  SSTYPE2   3
   PLANTYP2  6  DRCHOIC2  6  PPOPTLI2  6  OUTPLAN2  6  DENTCAR2  6
   WELCHIL2  6  HLTHINP3  3  COVSTAT3  6  INWHOSE3  6  WORKUNO3  6
   EORUPAY3  6  FAMPAID3  6  VARORSI3  6  SSTYPE3   3  PLANTYP3  6
   DRCHOIC3  6  PPOPTLI3  6  OUTPLAN3  6  DENTCAR3  6  WELCHIL3  6
   HLTHINP4  3  COVSTAT4  6  INWHOSE4  6  WORKUNO4  6  EORUPAY4  6
   FAMPAID4  6  VARORSI4  6  SSTYPE4   3  PLANTYP4  6  DRCHOIC4  6
   PPOPTLI4  6  OUTPLAN4  6  DENTCAR4  6  WELCHIL4  6  LHIPCOND  3
   NHIDENY   3  NHIPCNDR  3  NHIHRISK  3  NHIWORK   3  NHICOST1  3
   NHIOTHR   3  STAYD2YR  3  EMPLOYHI  3  PRIVHICR  3  GHINPPER  3
   GHINPFAM  3  SHINPPER  3  SHINPFAM  3  MCARPRIV  3  MAIDOTHR  3
   MILHIR    3  COVSTATR  3  NOJOB     3  NOEMPHI   3  NHIPTIME  3
   EMPNOFAM  3  NHIRNOUT  3  NHIHLTH   3  NHICOST2  3  NHIDSSAT  3
   NHIDONTB  3  NHINNEED  3  NHIOTHCV  3  NHIOLD    3  NHICHPCR  3
   NHIOTHER  3  NHIRNOTC  3  OTHCOV    3  WLASTCOV  3  NHIRSTOP  3
   TRYFNDIN  3  NHICANTF  3  NHILAPSE  3  NHILAPMO  3  NHIMAINR  3
   MCARCOST  3  RESPSTAT  3  ANSWPERS  3
   ;

* INPUT ALL VARIABLES;
 
INPUT
   RECTYPE      1 - 2          YEAR         3 - 4
   HHID     $   5 - 14         PNUM     $  15 - 16
   WEEKCODE    19 - 20         LAFLAG      21 - 21
   LIVQTR      22 - 23         PHONE       24 - 24
   SEX         25 - 25         AGEIF       26 - 26
   AGE         27 - 28         AGER1       29 - 29
   AGER2       30 - 30         AGER3       31 - 32
   BIRMOIF     33 - 33         BIRTHMO  $  34 - 35
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
   INDUSR1     80 - 81         INDUSR2     82 - 83
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
   DISDA6     132 - 133        DIS6X      134 - 136
   DISDA6X    137 - 138        DISDA12X   139 - 141
   YRSLPRES   144 - 144        YRSLIUS    145 - 145
   WTINT      172 - 177 .1     QUARTER    178 - 178   
   REGION     182 - 182        MSASIZE    183 - 183
   MSA        186 - 186        CCFACT     190 - 200 .9
   WTFQ       201 - 209        WTFS       210 - 218
   WTFA       219 - 227        WT65       228 - 236
   RADAYWP    237 - 245        BDDAYWP    246 - 254
   WLDAYSP    255 - 263        SLDAYWP    264 - 272
   DV12WPQ    273 - 281        DV12WPS    282 - 290
   DV12ANN    291 - 299        HDA12WPQ   300 - 308
   HDA12WPS   309 - 317        HDA12ANN   318 - 326
   AESSHE12   327 - 335        VARSTRAR   337 - 340
   VARPSUR    341 - 341        VARSUBSR   342 - 343
   UNITSS     344 - 350        TYPEPSU    351 - 351
   PANEL      352 - 352        NSRSTVA    353 - 353
   COLVARST   354 - 357        VARPSU     358 - 358
   DUMMYREC   401 - 401        MEDICARE   402 - 402
   TYPECOV    403 - 403        MCARPRTA   404 - 404
   MCARPRTB   405 - 405        MCARTIME   406 - 406
   MCARDOC    407 - 407        MAIDLAMO   410 - 410
   MAIDTIME   411 - 411        MAIDDOC    412 - 412
   APPROVAL   413 - 413        MAID12M    414 - 414
   OTHERPA    415 - 415        CHAMP      416 - 416
   MILITHC    417 - 417        INDIANHC   418 - 418
   HLTHINP1   419 - 420        COVSTAT1   421 - 421
   INWHOSE1   422 - 422        WORKUNO1   423 - 423
   EORUPAY1   424 - 424        FAMPAID1   425 - 425
   VARORSI1   426 - 426        SSTYPE1    427 - 428
   PLANTYP1   429 - 429        DRCHOIC1   430 - 430
   PPOPTLI1   431 - 431        OUTPLAN1   432 - 432
   DENTCAR1   433 - 433        WELCHIL1   434 - 434
   HLTHINP2   441 - 442        COVSTAT2   443 - 443
   INWHOSE2   444 - 444        WORKUNO2   445 - 445
   EORUPAY2   446 - 446        FAMPAID2   447 - 447
   VARORSI2   448 - 448        SSTYPE2    449 - 450
   PLANTYP2   451 - 451        DRCHOIC2   452 - 452
   PPOPTLI2   453 - 453        OUTPLAN2   454 - 454
   DENTCAR2   455 - 455        WELCHIL2   456 - 456
   HLTHINP3   463 - 464        COVSTAT3   465 - 465
   INWHOSE3   466 - 466        WORKUNO3   467 - 467
   EORUPAY3   468 - 468        FAMPAID3   469 - 469
   VARORSI3   470 - 470        SSTYPE3    471 - 472
   PLANTYP3   473 - 473        DRCHOIC3   474 - 474
   PPOPTLI3   475 - 475        OUTPLAN3   476 - 476
   DENTCAR3   477 - 477        WELCHIL3   478 - 478
   HLTHINP4   485 - 486        COVSTAT4   487 - 487
   INWHOSE4   488 - 488        WORKUNO4   489 - 489
   EORUPAY4   490 - 490        FAMPAID4   491 - 491
   VARORSI4   492 - 492        SSTYPE4    493 - 494
   PLANTYP4   495 - 495        DRCHOIC4   496 - 496
   PPOPTLI4   497 - 497        OUTPLAN4   498 - 498
   DENTCAR4   499 - 499        WELCHIL4   500 - 500
   LHIPCOND   507 - 507        NHIDENY    508 - 508
   NHIPCNDR   509 - 509        NHIHRISK   510 - 510
   NHIWORK    511 - 511        NHICOST1   512 - 512
   NHIOTHR    513 - 513        STAYD2YR   514 - 514
   EMPLOYHI   515 - 515        PRIVHICR   516 - 516
   GHINPPER   517 - 517        GHINPFAM   518 - 518
   SHINPPER   519 - 519        SHINPFAM   520 - 520
   MCARPRIV   521 - 521        MAIDOTHR   522 - 522
   MILHIR     523 - 523        COVSTATR   524 - 524
   NOJOB      525 - 525        NOEMPHI    526 - 526
   NHIPTIME   527 - 527        EMPNOFAM   528 - 528
   NHIRNOUT   529 - 529        NHIHLTH    530 - 530
   NHICOST2   531 - 531        NHIDSSAT   532 - 532
   NHIDONTB   533 - 533        NHINNEED   534 - 534
   NHIOTHCV   535 - 535        NHIOLD     536 - 536
   NHICHPCR   537 - 537        NHIOTHER   538 - 538
   NHIRNOTC   539 - 540        OTHCOV     541 - 541
   WLASTCOV   542 - 542        NHIRSTOP   543 - 544
   TRYFNDIN   545 - 545        NHICANTF   546 - 546
   NHILAPSE   547 - 547        NHILAPMO   548 - 548
   NHIMAINR   549 - 550        MCARCOST   551 - 551
   RESPSTAT   552 - 552        ANSWPERS   553 - 554
   ;
* DEFINE VARIABLE LABELS;
 
LABEL
   RECTYPE  = "RECORD TYPE"
   YEAR     = "PROCESSING YEAR"
   HHID     = "HOUSEHOLD ID"
   PNUM     = "PERSON NUMBER"
   WEEKCODE = "SAMPLING WEEK CODE"
   LAFLAG   = "LATE INTERVIEW (OR LAST ATTEMPT) FLAG"
   LIVQTR   = "TYPE OF LIVING QUARTERS"
   PHONE    = "HAS TELEPHONE"
   SEX      = "SEX"
   AGEIF    = "AGE IMPUTED FLAG"
   AGE      = "AGE"
   AGER1    = "AGE RECODE #1"
   AGER2    = "AGE RECODE #2"
   AGER3    = "AGE RECODE #3"
   BIRMOIF  = "MONTH OF BIRTH IMPUTED FLAG"
   BIRTHMO  = "MONTH OF BIRTH"
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
   DISDA6X  = "NUMBER OF SHORT-STAY HOSPITAL DISCHARGES IN PAST 6 MONTHS EXCLUDING DELIVERY"
   DISDA12X = "NUMBER OF DAYS IN SHORT-STAY HOSP PAST 12M FOR DISCHARGES IN PAST 6M EXCL. DELIVERY"
   YRSLPRES = "YEARS LIVED IN STATE OF PRESENT RESIDENCE"
   YRSLIUS  = "YEARS LIVED IN UNITED STATES"
   WTINT    = "FINAL QUARTER BASIC WEIGHT BEFORE AGE-SEX-RACE-ETHNICITY ADJUSTMENT"
   QUARTER  = "SAMPLING QUARTER"
   REGION   = "REGION"
   MSASIZE  = "GEOGRAPHIC DISTRIBUTION"
   MSA      = "MSA - NON-MSA RESIDENCE"
   CCFACT   = "CHRONIC CONDITION PREVALENCE AND INCIDENCE FACTOR"
   WTFQ     = "FINAL BASIC WEIGHT - QUARTER"
   WTFS     = "FINAL BASIC WEIGHT - SEMI-ANNUAL (WT/2)"
   WTFA     = "FINAL BASIC WEIGHT - ANNUAL (WT/4)"
   WT65     = "6.5 WEIGHT QUARTER, SEMI-ANNUAL AND ANNUAL"
   RADAYWP  = "RESTRICTED ACTIVITY DAYS IN PAST 2 WEEKS - QUARTER, SEMI-ANNUAL AND ANNUAL"
   BDDAYWP  = "BED DAYS IN PAST 2 WEEKS - QUARTER, SEMI-ANNUAL AND ANNUAL"
   WLDAYSP  = "WORK-LOSS DAYS IN PAST 2 WEEKS - QUARTER, SEMI-ANNUAL AND ANNUAL"
   SLDAYWP  = "SCHOOL-LOSS DAYS IN PAST 2 WEEKS - QUARTER,SEMI-ANNUAL AND ANNUAL"
   DV12WPQ  = "DOCTOR VISITS IN PAST 12 MONTHS - QUARTER"
   DV12WPS  = "DOCTOR VISITS IN PAST 12 MONTHS - SEMI-ANNUAL"
   DV12ANN  = "DOCTOR VISITS IN PAST 12 MONTHS - ANNUAL"
   HDA12WPQ = "SHORT-STAY HOSPITAL EPISODE DAYS IN PAST 12 MONTHS - QUARTER"
   HDA12WPS = "SHORT-STAY HOSPITAL EPISODE DAYS IN PAST 12 MONTHS - SEMI-ANNUAL"
   HDA12ANN = "SHORT-STAY HOSPITAL EPISODE DAYS IN PAST 12 MONTHS - ANNUAL"
   AESSHE12 = "ANNUAL ESTIMATED NUMBER OF SHORT-STAY HOSPITAL EPISODES IN PAST 12 MONTHS"
   VARSTRAR = "STRATA FOR VARIANCE ESTIMATION"
   VARPSUR  = "PSU FOR VARIANCE ESTIMATION"
   VARSUBSR = "SUBSTRATUM FOR VARIANCE ESTIMATION"
   UNITSS   = "SECONDARY SAMPLING UNIT"
   TYPEPSU  = "TYPE OF PSU"
   PANEL    = "PANEL"
   NSRSTVA  = "NSR STATUS VARIABLE"
   COLVARST = "COLLAPSED VARIANCE STRATUM"
   VARPSU   = "VARIANCE PSU"
   DUMMYREC = "DUMMY RECORD INDICATOR"
   MEDICARE = "COVERED BY MEDICARE LAST MONTH"
   TYPECOV  = "TYPE OF COVERAGE"
   MCARPRTA = "MEDICARE PART A"
   MCARPRTB = "MEDICARE PART B"
   MCARTIME = "LENGTH OF TIME WITH MEDICARE COVERAGE"
   MCARDOC  = "GO TO ANY DOCTOR OR CHOOSE FROM LIST OF DOCTORS"
   MAIDLAMO = "COVERED BY MEDICAID LAST MONTH"
   MAIDTIME = "LENGTH OF TIME WITH MEDICAID COVERAGE"
   MAIDDOC  = "GO TO ANY DOCTOR OR CHOOSE FROM LIST OF DOCTORS"
   APPROVAL = "NEED APPROVAL OR REFERRAL FROM USUAL DOCTOR"
   MAID12M  = "RECEIVED MEDICAID CARE IN PAST 12 MONTHS"
   OTHERPA  = "COVERED BY OTHER PUBLIC ASSISTANCE LAST MONTH"
   CHAMP    = "COVERED BY CHAMPUS OR CHAMP - VA LAST MONTH"
   MILITHC  = "COVERED BY OTHER MILITARY HEALTH CARE LAST MONTH"
   INDIANHC = "COVERED BY INDIAN HEALTH SERVICE LAST MONTH"
   HLTHINP1 = "NAME OF PLAN 1"
   COVSTAT1 = "COVERAGE STATUS"
   INWHOSE1 = "PLAN IN WHOSE NAME"
   WORKUNO1 = "ORIGINALLY OBTAINED THROUGH WORKPLACE OR UNION"
   EORUPAY1 = "EMPLOYER/UNION CURRENTLY PAY FOR PREMIUMS"
   FAMPAID1 = "LAST MONTH'S PREMIUM PAID BY FAMILY"
   VARORSI1 = "VARIETY OR SINGLE SERVICE PLAN"
   SSTYPE1  = "TYPE OF SINGLE SERVICE"
   PLANTYP1 = "TYPE OF PLAN"
   DRCHOIC1 = "CHOICE OF DOCTOR"
   PPOPTLI1 = "PREFERRED PROVIDER LIST OPTION"
   OUTPLAN1 = "PLAN PAYS FOR OUT OF PLAN USE"
   DENTCAR1 = "PLAN PAYS FOR DENTAL CARE"
   WELCHIL1 = "PLAN PAYS FOR WELL CHILD CARE"
   HLTHINP2 = "NAME OF PLAN 2"
   COVSTAT2 = "COVERAGE STATUS"
   INWHOSE2 = "PLAN IN WHOSE NAME"
   WORKUNO2 = "ORIGINALLY OBTAINED THROUGH WORKPLACE OR UNION"
   EORUPAY2 = "EMPLOYER/UNION CURRENTLY PAY FOR PREMIUMS"
   FAMPAID2 = "LAST MONTH'S PREMIUM PAID BY FAMILY"
   VARORSI2 = "VARIETY OR SINGLE SERVICE PLAN"
   SSTYPE2  = "TYPE OF SINGLE SERVICE"
   PLANTYP2 = "TYPE OF PLAN"
   DRCHOIC2 = "CHOICE OF DOCTOR"
   PPOPTLI2 = "PREFERRED PROVIDER LIST OPTION"
   OUTPLAN2 = "PLAN PAYS FOR OUT OF PLAN USE"
   DENTCAR2 = "PLAN PAYS FOR DENTAL CARE"
   WELCHIL2 = "PLAN PAYS FOR WELL CHILD CARE"
   HLTHINP3 = "NAME OF PLAN 3"
   COVSTAT3 = "COVERAGE STATUS"
   INWHOSE3 = "PLAN IN WHOSE NAME"
   WORKUNO3 = "ORIGINALLY OBTAINED THROUGH WORKPLACE OR UNION"
   EORUPAY3 = "EMPLOYER/UNION CURRENTLY PAY FOR PREMIUMS"
   FAMPAID3 = "LAST MONTH'S PREMIUM PAID BY FAMILY"
   VARORSI3 = "VARIETY OR SINGLE SERVICE PLAN"
   SSTYPE3  = "TYPE OF SINGLE SERVICE"
   PLANTYP3 = "TYPE OF PLAN"
   DRCHOIC3 = "CHOICE OF DOCTOR"
   PPOPTLI3 = "PREFERRED PROVIDER LIST OPTION"
   OUTPLAN3 = "PLAN PAYS FOR OUT OF PLAN USE"
   DENTCAR3 = "PLAN PAYS FOR DENTAL CARE"
   WELCHIL3 = "PLAN PAYS FOR WELL CHILD CARE"
   HLTHINP4 = "NAME OF PLAN 4"
   COVSTAT4 = "COVERAGE STATUS"
   INWHOSE4 = "PLAN IN WHOSE NAME"
   WORKUNO4 = "ORIGINALLY OBTAINED THROUGH WORKPLACE OR UNION"
   EORUPAY4 = "EMPLOYER/UNION CURRENTLY PAY FOR PREMIUMS"
   FAMPAID4 = "LAST MONTH'S PREMIUM PAID BY FAMILY"
   VARORSI4 = "VARIETY OR SINGLE SERVICE PLAN"
   SSTYPE4  = "TYPE OF SINGLE SERVICE"
   PLANTYP4 = "TYPE OF PLAN"
   DRCHOIC4 = "CHOICE OF DOCTOR"
   PPOPTLI4 = "PREFERRED PROVIDER LIST OPTION"
   OUTPLAN4 = "PLAN PAYS FOR OUT OF PLAN USE"
   DENTCAR4 = "PLAN PAYS FOR DENTAL CARE"
   WELCHIL4 = "PLAN PAYS FOR WELL CHILD CARE"
   LHIPCOND = "DENIED/RESTRICTED COVERAGE IN PAST TWO YEARS DUE TO PRE-EXISTING CONDITION"
   NHIDENY  = "TURNED DOWN WHEN APPLIED IN PAST 2 YEARS"
   NHIPCNDR = "PRE-EXISTING CONDITION(S)- WHY UNABLE TO GET HI"
   NHIHRISK = "HEALTH RISK - WHY UNABLE TO GET HI"
   NHIWORK  = "WORK OCCUPATION- WHY UNABLE TO GET HI"
   NHICOST1 = "PREMIUMS WERE TOO HIGH- WHY UNABLE TO GET HI"
   NHIOTHR  = "OTHER REASONS- WHY UNABLE TO GET HI"
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
   NOJOB    = "JOB LAYOFF/LOSS/UNEMPLOYED- WHY NOT COVERED"
   NOEMPHI  = "WASN'T OFFERED BY EMPLOYER- WHY NOT COVERED"
   NHIPTIME = "NOT ELIGIBLE - PART TIME WORKER- WHY NOT COVERED"
   EMPNOFAM = "FAMILY COVERAGE NOT OFFERED BY EMPLOYER- WHY NOT COVERED"
   NHIRNOUT = "BENEFITS RAN OUT- WHY NOT COVERED"
   NHIHLTH  = "CAN'T OBTAIN BECAUSE OF POOR HEALTH, ILLNESS OR AGE- WHY NOT COVERED"
   NHICOST2 = "TOO EXPENSIVE/CAN'T AFFORD- WHY NOT COVERED"
   NHIDSSAT = "DISSATISFIED WITH PREVIOUS INSURANCE- WHY NOT COVERED"
   NHIDONTB = "DON'T BELIEVE IN INSURANCE- WHY NOT COVERED"
   NHINNEED = "HEALTHY/HAVEN'T NEEDED INSURANCE- WHY NOT COVERED"
   NHIOTHCV = "COVERED BY OTHER PLAN- WHY NOT COVERED"
   NHIOLD   = "TOO OLD FOR COVERAGE UNDER FAMILY PLANS- WHY NOT COVERED"
   NHICHPCR = "FREE/INEXPENSIVE CARE AVAILABLE- WHY NOT COVERED"
   NHIOTHER = "OTHER REASONS- WHY NOT COVERED"
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
   RECTYPE   HIN001X.    YEAR      HIN002X.    HHID      $HIN003X.
   PNUM      $HIN004X.   WEEKCODE  HIN005X.    LAFLAG    HIN006X.
   LIVQTR    HIN007X.    PHONE     HIN008X.    SEX       HIN009X.
   AGEIF     HIN010X.    AGE       HIN011X.    AGER1     HIN012X.
   AGER2     HIN013X.    AGER3     HIN014X.    BIRMOIF   HIN015X.
   BIRTHMO   $HIN016X.   BIRTHYR   $HIN017X.   HISPFLAG  HIN018X.
   RACE      HIN019X.    RACER1    HIN020X.    RACER2    HIN021X.
   RACER3    HIN022X.    HISPANIC  HIN023X.    MARSTAT   HIN024X.
   VETERAN   HIN025X.    RESERVE   HIN026X.    EDUC      HIN027X.
   EDUCR     HIN028X.    EDUCAD    HIN029X.    EDUCADR   HIN030X.
   INCFAM20  HIN031X.    INCFAM    HIN032X.    INCFAMR   HIN033X.
   POVERTY   HIN034X.    FAMNUM    $HIN035X.   FAMREL    $HIN036X.
   FAMRELR   HIN037X.    FAMSIZE   HIN038X.    FAMSIZER  HIN039X.
   PARENT    HIN040X.    MAJACT    HIN041X.    HEALTH    HIN042X.
   LATOTAL   HIN043X.    LAWORK    HIN044X.    LASCHOOL  HIN045X.
   LACARE    HIN046X.    EMPLOY    HIN047X.    WKCLASS   HIN048X.
   INDUSR1   HIN049X.    INDUSR2   HIN050X.    OCCUPR1   HIN051X.
   OCCUPR2   HIN052X.    RESPOND   HIN053X.    CONDLIST  HIN054X.
   HEIGHT    HIN055X.    WEIGHT    HIN056X.    RADAY     HIN057X.
   BDDAY     HIN058X.    WLDAY     HIN059X.    SLDAY     HIN060X.
   OTHDAY    HIN061X.    BDDAY12   HIN062X.    BDDAY12R  HIN063X.
   DV12      HIN064X.    DVINT     HIN065X.    NCOND     HIN066X.
   NACUTE    HIN067X.    NDV2      HIN068X.    HEP12     HIN069X.
   HDA12     HIN070X.    HEP12X    HIN071X.    HDA12X    HIN072X.
   DISDA6    HIN073X.    DIS6X     HIN074X.    DISDA6X   HIN075X.
   DISDA12X  HIN076X.    YRSLPRES  HIN077X.    YRSLIUS   HIN078X.
   WTINT     HIN079X.    QUARTER   HIN080X.    REGION    HIN081X.
   MSASIZE   HIN082X.    MSA       HIN083X.    CCFACT    HIN084X.
   WTFQ      HIN085X.    WTFS      HIN086X.    WTFA      HIN087X.
   WT65      HIN088X.    RADAYWP   HIN089X.    BDDAYWP   HIN090X.
   WLDAYSP   HIN091X.    SLDAYWP   HIN092X.    DV12WPQ   HIN093X.
   DV12WPS   HIN094X.    DV12ANN   HIN095X.    HDA12WPQ  HIN096X.
   HDA12WPS  HIN097X.    HDA12ANN  HIN098X.    AESSHE12  HIN099X.
   VARSTRAR  HIN100X.    VARPSUR   HIN101X.    VARSUBSR  HIN102X.
   UNITSS    HIN103X.    TYPEPSU   HIN104X.    PANEL     HIN105X.
   NSRSTVA   HIN106X.    COLVARST  HIN107X.    VARPSU    HIN108X.
   DUMMYREC  HIN109X.    MEDICARE  HIN110X.    TYPECOV   HIN111X.
   MCARPRTA  HIN112X.    MCARPRTB  HIN113X.    MCARTIME  HIN114X.
   MCARDOC   HIN115X.    MAIDLAMO  HIN116X.    MAIDTIME  HIN117X.
   MAIDDOC   HIN118X.    APPROVAL  HIN119X.    MAID12M   HIN120X.
   OTHERPA   HIN121X.    CHAMP     HIN122X.    MILITHC   HIN123X.
   INDIANHC  HIN124X.    HLTHINP1  HIN125X.    COVSTAT1  HIN126X.
   INWHOSE1  HIN127X.    WORKUNO1  HIN128X.    EORUPAY1  HIN129X.
   FAMPAID1  HIN130X.    VARORSI1  HIN131X.    SSTYPE1   HIN132X.
   PLANTYP1  HIN133X.    DRCHOIC1  HIN134X.    PPOPTLI1  HIN135X.
   OUTPLAN1  HIN136X.    DENTCAR1  HIN137X.    WELCHIL1  HIN138X.
   HLTHINP2  HIN139X.    COVSTAT2  HIN140X.    INWHOSE2  HIN141X.
   WORKUNO2  HIN142X.    EORUPAY2  HIN143X.    FAMPAID2  HIN144X.
   VARORSI2  HIN145X.    SSTYPE2   HIN146X.    PLANTYP2  HIN147X.
   DRCHOIC2  HIN148X.    PPOPTLI2  HIN149X.    OUTPLAN2  HIN150X.
   DENTCAR2  HIN151X.    WELCHIL2  HIN152X.    HLTHINP3  HIN153X.
   COVSTAT3  HIN154X.    INWHOSE3  HIN155X.    WORKUNO3  HIN156X.
   EORUPAY3  HIN157X.    FAMPAID3  HIN158X.    VARORSI3  HIN159X.
   SSTYPE3   HIN160X.    PLANTYP3  HIN161X.    DRCHOIC3  HIN162X.
   PPOPTLI3  HIN163X.    OUTPLAN3  HIN164X.    DENTCAR3  HIN165X.
   WELCHIL3  HIN166X.    HLTHINP4  HIN167X.    COVSTAT4  HIN168X.
   INWHOSE4  HIN169X.    WORKUNO4  HIN170X.    EORUPAY4  HIN171X.
   FAMPAID4  HIN172X.    VARORSI4  HIN173X.    SSTYPE4   HIN174X.
   PLANTYP4  HIN175X.    DRCHOIC4  HIN176X.    PPOPTLI4  HIN177X.
   OUTPLAN4  HIN178X.    DENTCAR4  HIN179X.    WELCHIL4  HIN180X.
   LHIPCOND  HIN181X.    NHIDENY   HIN182X.    NHIPCNDR  HIN183X.
   NHIHRISK  HIN184X.    NHIWORK   HIN185X.    NHICOST1  HIN186X.
   NHIOTHR   HIN187X.    STAYD2YR  HIN188X.    EMPLOYHI  HIN189X.
   PRIVHICR  HIN190X.    GHINPPER  HIN191X.    GHINPFAM  HIN192X.
   SHINPPER  HIN193X.    SHINPFAM  HIN194X.    MCARPRIV  HIN195X.
   MAIDOTHR  HIN196X.    MILHIR    HIN197X.    COVSTATR  HIN198X.
   NOJOB     HIN199X.    NOEMPHI   HIN200X.    NHIPTIME  HIN201X.
   EMPNOFAM  HIN202X.    NHIRNOUT  HIN203X.    NHIHLTH   HIN204X.
   NHICOST2  HIN205X.    NHIDSSAT  HIN206X.    NHIDONTB  HIN207X.
   NHINNEED  HIN208X.    NHIOTHCV  HIN209X.    NHIOLD    HIN210X.
   NHICHPCR  HIN211X.    NHIOTHER  HIN212X.    NHIRNOTC  HIN213X.
   OTHCOV    HIN214X.    WLASTCOV  HIN215X.    NHIRSTOP  HIN216X.
   TRYFNDIN  HIN217X.    NHICANTF  HIN218X.    NHILAPSE  HIN219X.
   NHILAPMO  HIN220X.    NHIMAINR  HIN221X.    MCARCOST  HIN222X.
   RESPSTAT  HIN223X.    ANSWPERS  HIN224X.
   ;
 
PROC CONTENTS DATA=NHIS.HEALTHIN;
 
PROC FREQ DATA=NHIS.HEALTHIN;
TITLE1 'FREQUENCY REPORT FOR 1996 NHIS HEALTHIN FILE';
TITLE2 '(WEIGHTED)';
TABLES RECTYPE/LIST MISSING;
WEIGHT WTFA;
 
PROC FREQ DATA=NHIS.HEALTHIN;
TITLE1 'FREQUENCY REPORT FOR 1996 NHIS HEALTHIN FILE';
TITLE2 '(UNWEIGHTED)';
TABLES RECTYPE/LIST MISSING;
 
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
              STATEMENT: FORMAT _ALL_;
RUN;
