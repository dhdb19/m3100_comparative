DM 'CLE LOG; CLE OUT';
**************************************************************************
     November 1, 2005
 
THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
FILE FROM THE NHIS 1992 HEALTHIN.DAT ASCII FILE.
 
NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
      GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
      DOCUMENTATION.
 
THIS IS STORED IN HEALTHIN.SAS
*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;
 
LIBNAME NHIS    'C:\NHIS1992\';
LIBNAME LIBRARY 'C:\NHIS1992\';
 
FILENAME ASCIIDAT 'C:\NHIS1992\HEALTHIN.DAT';
 
* DEFINE VARIABLE VALUES FOR REPORT;
 
PROC FORMAT LIBRARY=LIBRARY;
  VALUE  HIN001X
   85               = "Health Insurance"
   ;
  VALUE  HIN002X
   91               = "1991"
   92               = "1992"
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
   "01"          = "January"         "08"     =  "August"
   "02"          = "February"        "09"     =  "September"
   "03"          = "March"           "10"     =  "October"
   "04"          = "April"           "11"     =  "November"
   "05"          = "May"             "12"     =  "December"
   "06"          = "June"            "99"     =  "Don't know or Refused"
   "07"          = "July"
   ;
  VALUE $HIN019X
   "1800"-"1899"    = "1800-1899"
   "1900"-"1993"    = "1900-1993"
   "9999"           = "DK or refused"
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
   16               = "Other race"
   17               = "Multiple race"
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
   "7"              = "Child of ineligible reference person"
   "9"              = "Unknown"
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
   .                = "Not applicable (under 5 years or 18+ years)"
   ;
  VALUE  HIN048X
   1                = "Unable to perform personal care needs"
   2                = "Limited in performing other routine needs"
   3                = "Not limited in performing personal or routine needs"
   4                = "Unknown"
   .                = "Not applicable (under 5 years; 5-59 years not limited; 70+ years old)"
   ;
  VALUE  HIN049X
   1                = "Worked in past 2 weeks"
   2                = "Did not work, has job; not on lay-off and not looking for work"
   3                = "Did not work, has job; looking for work"
   4                = "Did not work, has job; on lay-off"
   5                = "Did not work, has job; on lay- off and looking for work"
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
   1                = "Condition List 1, Skin and musculoskeletal"
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
   .                = "Not applicable (Foreign born or less than 18 years of age)"
   ;
  VALUE  HIN082X
   1                = "Less than 1 year"
   2                = "1 year, less than 5 years"
   3                = "5 years, less than 10 years"
   4                = "10 years, less than 15 years"
   5                = "15 years or more"
   9                = "Unknown"
   .                = "Not applicable (U.S. born or less than 18 years of age)"
   ;
  VALUE  HIN083X
   1                = "Yes, going to school"
   2                = "Yes, on vacation from school"
   3                = "No"
   9                = "Unknown"
   .                = "(Under 12 years or 22+ years)"
   ;
  VALUE  HIN084X
   1                = "Hispanic nonmover"
   2                = "Hispanic nonmover"
   3                = "Hispanic mover"
   4                = "Nonhispanic Unit"
   ;
  VALUE  HIN085X
   ;
  VALUE  HIN086X
   0                = "Permit"
   1                = "Area, oversampled for blacks"
   2                = "Area, not oversampled for blacks"
   ;
  VALUE  HIN087X
   ;
  VALUE  HIN088X
   1                = "Northeast"
   2                = "Midwest"
   3                = "South"
   4                = "West"
   ;
  VALUE  HIN089X
   1                = "1,000,000 or more"
   2                = "250,000 - 999,999"
   3                = "100,000 - 249,999"
   4                = "Under 100,000"
   .                = "Non-MSA"
   ;
  VALUE  HIN090X
   1                = "MSA - Self-representing"
   3                = "MSA - Nonself-representing"
   4                = "Non-MSA - Self-representing"
   6                = "Non-MSA - Nonself-representing"
   ;
  VALUE  HIN091X
   1                = "MSA - Central City"
   2                = "MSA - Not Central City"
   3                = "Non-MSA - Nonfarm"
   4                = "Non-MSA - Farm"
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
   0                = "Partial dummy (only one record type dummied)"
   1                = "Complete dummy record"
   .                = "Not dummied"
   ;
  VALUE  HIN110X
   1                = "Yes"
   2                = "No"
   7                = "Refused"
   8                = "Not ascertained"
   9                = "DK"
   ;
  VALUE  HIN111X
   1                = "Yes"
   2                = "No"
   7                = "Refused"
   8                = "Not ascertained"
   9                = "DK"
   ;
  VALUE  HIN112X
   1                = "Yes"
   2                = "No"
   7                = "Refused"
   8                = "Not ascertained"
   9                = "DK"
   ;
  VALUE  HIN113X
   1                = "Yes"
   2                = "No"
   7                = "Refused"
   8                = "Not ascertained"
   9                = "DK"
   ;
  VALUE  HIN114X
   01-02            = ""
   04-20            = "Refer to Health Insurance Plan Listing"
   77               = "Has Insurance, DK name"
   88               = "Other Insurance"
   98               = "Not ascertained"
   99               = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; family has fewer than this number of plans"
   ;
  VALUE  HIN115X
   1                = "Yes"
   2                = "No"
   7                = "Refused"
   8                = "Not ascertained"
   9                = "DK"
   .                = "NA; No or unknown if anyone in family has private health insurance; family has fewer than this number of plans"
   ;
  VALUE  HIN116X
   1                = "Any doctor"
   2                = "Select from group list"
   7                = "Refused"
   8                = "Not ascertained"
   9                = "DK"
   .                = "NA; No or unknown if anyone in family has private health insurance; family than this number of plans"
   ;
  VALUE  HIN117X
   1                = "Yes"
   2                = "No"
   7                = "Refused"
   8                = "Not ascertained"
   9                = "DK"
   .                = "NA; No or unknown if anyone in family has private health insurance; family has fewer than this number  of plans"
   ;
  VALUE  HIN118X
   1                = "All"
   2                = "Some"
   3                = "None"
   7                = "Refused"
   8                = "Not ascertained"
   9                = "DK"
   .                = "NA; No or unknown if anyone in family has private health insurance; family has fewer than this number of plans;"
   ;
  VALUE  HIN119X
   1                = "Covered"
   2                = "Not Covered"
   7                = "Refused"
   8                = "Not ascertained"
   9                = "DK"
   .                = "NA; No or unknown if anyone in family has private health insurance; family has fewer than this number of plans"
   ;
  VALUE  HIN120X
   01-02            = ""
   04-20            = "Refer to Health Insurance Plan Listing"
   77               = "Has Insurance, DK name"
   88               = "Other Insurance"
   98               = "Not ascertained"
   99               = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; family has fewer than this number of plans"
   ;
  VALUE  HIN121X
   1                = "Yes"
   2                = "No"
   7                = "Refused"
   8                = "Not ascertained"
   9                = "DK"
   .                = "NA; No or unknown if anyone in family has private health insurance; family has fewer than this number of plans"
   ;
  VALUE  HIN122X
   1                = "Any doctor"
   2                = "Select from group list"
   7                = "Refused"
   8                = "Not ascertained"
   9                = "DK"
   .                = "NA; No or unknown if anyone in family has private health insurance; family than this number of plans"
   ;
  VALUE  HIN123X
   1                = "Yes"
   2                = "No"
   7                = "Refused"
   8                = "Not ascertained"
   9                = "DK"
   .                = "NA; No or unknown if anyone in family has private health insurance; family has fewer than this number  of plans"
   ;
  VALUE  HIN124X
   1                = "All"
   2                = "Some"
   3                = "None"
   7                = "Refused"
   8                = "Not ascertained"
   9                = "DK"
   .                = "NA; No or unknown if anyone in family has private health insurance; family has fewer than this number of plans;"
   ;
  VALUE  HIN125X
   1                = "Covered"
   2                = "Not Covered"
   7                = "Refused"
   8                = "Not ascertained"
   9                = "DK"
   .                = "NA; No or unknown if anyone in family has private health insurance; family has fewer than this number of plans"
   ;
  VALUE  HIN126X
   01-02            = ""
   04-20            = "Refer to Health Insurance Plan Listing"
   77               = "Has Insurance, DK name"
   88               = "Other Insurance"
   98               = "Not ascertained"
   99               = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; family has fewer than this number of plans"
   ;
  VALUE  HIN127X
   1                = "Yes"
   2                = "No"
   7                = "Refused"
   8                = "Not ascertained"
   9                = "DK"
   .                = "NA; No or unknown if anyone in family has private health insurance; family has fewer than this number of plans"
   ;
  VALUE  HIN128X
   1                = "Any doctor"
   2                = "Select from group list"
   7                = "Refused"
   8                = "Not ascertained"
   9                = "DK"
   .                = "NA; No or unknown if anyone in family has private health insurance; family than this number of plans"
   ;
  VALUE  HIN129X
   1                = "Yes"
   2                = "No"
   7                = "Refused"
   8                = "Not ascertained"
   9                = "DK"
   .                = "NA; No or unknown if anyone in family has private health insurance; family has fewer than this number  of plans"
   ;
  VALUE  HIN130X
   1                = "All"
   2                = "Some"
   3                = "None"
   7                = "Refused"
   8                = "Not ascertained"
   9                = "DK"
   .                = "NA; No or unknown if anyone in family has private health insurance; family has fewer than this number of plans;"
   ;
  VALUE  HIN131X
   1                = "Covered"
   2                = "Not Covered"
   7                = "Refused"
   8                = "Not ascertained"
   9                = "DK"
   .                = "NA; No or unknown if anyone in family has private health insurance; family has fewer than this number of plans"
   ;
  VALUE  HIN132X
   01-02            = ""
   04-20            = "Refer to Health Insurance Plan Listing"
   77               = "Has Insurance, DK name"
   88               = "Other Insurance"
   98               = "Not ascertained"
   99               = "DK or refused"
   .                = "NA; No or unknown if anyone in family has private health insurance; family has fewer than this number of plans"
   ;
  VALUE  HIN133X
   1                = "Yes"
   2                = "No"
   7                = "Refused"
   8                = "Not ascertained"
   9                = "DK"
   .                = "NA; No or unknown if anyone in family has private health insurance; family has fewer than this number of plans"
   ;
  VALUE  HIN134X
   1                = "Any doctor"
   2                = "Select from group list"
   7                = "Refused"
   8                = "Not ascertained"
   9                = "DK"
   .                = "NA; No or unknown if anyone in family has private health insurance; family than this number of plans"
   ;
  VALUE  HIN135X
   1                = "Yes"
   2                = "No"
   7                = "Refused"
   8                = "Not ascertained"
   9                = "DK"
   .                = "NA; No or unknown if anyone in family has private health insurance; family has fewer than this number  of plans"
   ;
  VALUE  HIN136X
   1                = "All"
   2                = "Some"
   3                = "None"
   7                = "Refused"
   8                = "Not ascertained"
   9                = "DK"
   .                = "NA; No or unknown if anyone in family has private health insurance; family has fewer than this number of plans;"
   ;
  VALUE  HIN137X
   1                = "Covered"
   2                = "Not Covered"
   7                = "Refused"
   8                = "Not ascertained"
   9                = "DK"
   .                = "NA; No or unknown if anyone in family has private health insurance; family has fewer than this number of plans"
   ;
  VALUE  HIN138X
   1                = "Covered by at least one plan"
   2                = "Not covered by any plan"
   6                = "Unknown if covered by at least one particular plan"
   7                = "Refused (whole question)"
   8                = "Not ascertained (whole question)"
   9                = "Don't know if covered (whole question)"
   ;
  VALUE  HIN139X
   1                = "Covered by one or both"
   2                = "Not covered by private HI, not known to be covered by Medicare"
   9                = "Unknown if covered"
   ;
  VALUE  HIN140X
   1                = "Covered by both"
   2                = "Covered by one"
   9                = "Not known to be covered by either"
   ;
  VALUE  HIN141X
   0                = "No known plans"
   1-4              = "Number of plans"
   ;
  VALUE  HIN142X
   0                = "No known plans (Includes families with 1+ plans for whom no specific person is identified as covered)"
   1-4              = "Number of plans"
   ;
  VALUE  HIN143X
   0                = "Not covered by any plan"
   1                = "Covered by this plan"
   2                = "Not covered by this plan"
   3                = "Unknown if covered by this plan"
   4                = "No Plan 1 in family"
   .                = "NA, Unknown if have any coverage or if covered by other plan"
   ;
  VALUE  HIN144X
   0                = "Not covered by any plan"
   1                = "Covered by this plan"
   2                = "Not covered by this plan"
   3                = "Unknown if covered by this plan"
   4                = "No Plan 2 in family"
   .                = "NA, Unknown if have any coverage or if covered by other plan"
   ;
  VALUE  HIN145X
   0                = "Not covered by any plan"
   1                = "Covered by this plan"
   2                = "Not covered by this plan"
   3                = "Unknown if covered by this plan"
   4                = "No Plan 3 in family"
   .                = "NA, Unknown if have any coverage or if covered by other plan"
   ;
  VALUE  HIN146X
   0                = "Not covered by any plan"
   1                = "Covered by this plan"
   2                = "Not covered by this plan"
   3                = "Unknown if covered by this plan"
   4                = "No Plan 4 in family"
   .                = "NA, Unknown if have any coverage or if covered by other plan"
   ;
  VALUE  HIN147X
   01               = "Blue Cross and/or Blue Shield"
   02               = "Other major fee for service plan"
   03               = "Group HMO"
   04               = "Staff HMO"
   05               = "IPA"
   06               = "Network"
   07               = "Mixed HMO"
   08               = "Other HMO"
   09               = "PPO"
   77               = "Has private insurance, name not given"
   88               = "Other named private insurance"
   99               = "DK if has insurance or refused"
   .                = "NA, No or unknown if has private health insurance; has private health insurance but no family plan 1"
   ;
  VALUE  HIN148X
   01               = "Blue Cross and/or Blue Shield"
   02               = "Other major fee for service plan"
   03               = "Group HMO"
   04               = "Staff HMO"
   05               = "IPA"
   06               = "Network"
   07               = "Mixed HMO"
   08               = "Other HMO"
   09               = "PPO"
   77               = "Has private insurance, name not given"
   88               = "Other named private insurance"
   99               = "DK if has insurance or refused"
   .                = "NA, No or unknown if has private health insurance; has private health insurance but no family plan 2"
   ;
  VALUE  HIN149X
   01               = "Blue Cross and/or Blue Shield"
   02               = "Other major fee for service plan"
   03               = "Group HMO"
   04               = "Staff HMO"
   05               = "IPA"
   06               = "Network"
   07               = "Mixed HMO"
   08               = "Other HMO"
   09               = "PPO"
   77               = "Has private insurance, name not given"
   88               = "Other named private insurance"
   99               = "DK if has insurance or refused"
   .                = "NA, No or unknown if has private health insurance; has private health insurance but no family plan 3"
   ;
  VALUE  HIN150X
   01               = "Blue Cross and/or Blue Shield"
   02               = "Other major fee for service plan"
   03               = "Group HMO"
   04               = "Staff HMO"
   05               = "IPA"
   06               = "Network"
   07               = "Mixed HMO"
   08               = "Other HMO"
   09               = "PPO"
   77               = "Has private insurance, name not given"
   88               = "Other named private insurance"
   99               = "DK if has insurance or refused"
   .                = "NA, No or unknown if has private health insurance; has private health insurance but no family plan 4"
   ;
  VALUE  HIN151X
   01               = "Blue Cross and/or Blue Shield"
   02               = "Other major fee for service plan"
   03               = "Large HMO (enrollment 100,000 or more)"
   04               = "Small HMO (enrollment less than 100,000)"
   05               = "Other HMO (enrollment unknown)"
   06               = "PPO"
   77               = "Has private insurance, name not given"
   88               = "Other named private insurance"
   99               = "DK if insurance or refused"
   .                = "NA, No or unknown if has private health insurance; has private health insurance but no family plan 1"
   ;
  VALUE  HIN152X
   01               = "Blue Cross and/or Blue Shield"
   02               = "Other major fee for service plan"
   03               = "Large HMO (enrollment 100,000 or more)"
   04               = "Small HMO (enrollment less than 100,000)"
   05               = "Other HMO (enrollment unknown)"
   06               = "PPO"
   77               = "Has private insurance, name not given"
   88               = "Other named private insurance"
   99               = "DK if insurance or refused"
   .                = "NA, No or unknown if has private health insurance; has private health insurance but no family plan 2"
   ;
  VALUE  HIN153X
   01               = "Blue Cross and/or Blue Shield"
   02               = "Other major fee for service plan"
   03               = "Large HMO (enrollment 100,000 or more)"
   04               = "Small HMO (enrollment less than 100,000)"
   05               = "Other HMO (enrollment unknown)"
   06               = "PPO"
   77               = "Has private insurance, name not given"
   88               = "Other named private insurance"
   99               = "DK if insurance or refused"
   .                = "NA, No or unknown if has private health insurance; has private health insurance but no family plan 3"
   ;
  VALUE  HIN154X
   01               = "Blue Cross and/or Blue Shield"
   02               = "Other major fee for service plan"
   03               = "Large HMO (enrollment 100,000 or more)"
   04               = "Small HMO (enrollment less than 100,000)"
   05               = "Other HMO (enrollment unknown)"
   06               = "PPO"
   77               = "Has private insurance, name not given"
   88               = "Other named private insurance"
   99               = "DK if insurance or refused"
   .                = "NA, No or unknown if has private health insurance; has private health insurance but no family plan 4"
   ;
  VALUE  HIN155X
   01               = "Coded HMO, respondent said HMO"
   02               = "Coded HMO, respondent said not HMO"
   03               = "Coded HMO, respondent said doesn't know, refused if HMO or not ascertained"
   04               = "Coded 'name of plan unknown', respondent said HMO"
   05               = "Coded 'name of plan unknown', respondent said not HMO"
   06               = "Coded 'name of plan unknown', respondent said doesn't know, refused if HMO or not ascertained"
   07               = "Coded Blue Plan or other, respondent said HMO"
   08               = "Coded Blue Plan or other, respondent said not HMO"
   09               = "Coded Blue Plan or other, respondent said doesn't know, refused if HMO or not ascertained"
   10               = "Coded DK, refused, not ascertained, respondent said HMO"
   11               = "Coded DK, refused, not ascertained, respondent said not HMO"
   12               = "Coded DK, refused, not ascertained, respondent doesn't know, refused HMO"
   .                = "Not applicable, family/person not covered by this plan"
   ;
  VALUE  HIN156X
   01               = "Coded HMO, respondent said HMO"
   02               = "Coded HMO, respondent said not HMO"
   03               = "Coded HMO, respondent said doesn't know, refused if HMO or not ascertained"
   04               = "Coded 'name of plan unknown', respondent said HMO"
   05               = "Coded 'name of plan unknown', respondent said not HMO"
   06               = "Coded 'name of plan unknown', respondent said doesn't know, refused if HMO or not ascertained"
   07               = "Coded Blue Plan or other, respondent said HMO"
   08               = "Coded Blue Plan or other, respondent  said not HMO"
   09               = "Coded Blue Plan or other, respondent said doesn't know, refused if HMO or not ascertained"
   10               = "Coded DK, refused, not ascertained, respondent said HMO"
   11               = "Coded DK, refused, not ascertained, respondent said not HMO"
   12               = "Coded DK, refused, not ascertained, respondent doesn't know, refused HMO"
   .                = "Not applicable, family/person not covered by this plan"
   ;
  VALUE  HIN157X
   01               = "Coded HMO, respondent said HMO"
   02               = "Coded HMO, respondent said not HMO"
   03               = "Coded HMO, respondent said doesn't know, refused if HMO or not ascertained"
   04               = "Coded 'name of plan unknown', respondent said HMO"
   05               = "Coded 'name of plan unknown', respondent said not HMO"
   06               = "Coded 'name of plan unknown', respondent said doesn't know, refused if HMO or not ascertained"
   07               = "Coded Blue Plan or other, respondent said HMO"
   08               = "Coded Blue Plan or other, respondent said not HMO"
   09               = "Coded Blue Plan or other, respondent said doesn't know, refused if HMO or not ascertained"
   10               = "Coded DK, refused, not ascertained, respondent said HMO"
   11               = "Coded DK, refused, not ascertained, respondent said not HMO"
   12               = "Coded DK, refused, not ascertained, respondent doesn't know, refused HMO"
   .                = "Not applicable, family/person not covered by this plan"
   ;
  VALUE  HIN158X
   01               = "Coded HMO, respondent said HMO"
   02               = "Coded HMO, respondent said not HMO"
   03               = "Coded HMO, respondent said doesn't know, refused if HMO or not ascertained"
   04               = "Coded 'name of plan unknown', respondent said HMO"
   05               = "Coded 'name of plan unknown', respondent said not HMO"
   06               = "Coded 'name of plan unknown', respondent said doesn't know, refused if HMO or not ascertained"
   07               = "Coded Blue Plan or other, respondent said HMO"
   08               = "Coded Blue Plan or other, respondent said not HMO"
   09               = "Coded Blue Plan or other, respondent said doesn't know, refused if HMO or not ascertained"
   10               = "Coded DK, refused, not ascertained, respondent said HMO"
   11               = "Coded DK, refused, not ascertained, respondent said not HMO"
   12               = "Coded DK, refused, not ascertained, respondent doesn't know, refused HMO"
   .                = "Not applicable, family/person not covered by this plan"
   ;

 
DATA NHIS.HEALTHIN;
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1992\';
   INFILE ASCIIDAT MISSOVER TRUNCOVER LRECL=405;
 
* DEFINE LENGTH OF NUMERIC VARIABLES;
 
LENGTH
   RECTYPE   3  YEAR      3  QUARTER   3  WEEKCEN   3  WEEKPROC  3
   LINTFLAG  3  LIVQTR    3  PHONE     3  SEX       3  AGE       3
   AGER1     3  AGER2     3  AGER3     3  HISPFLAG  3  RACE      3
   RACER1    3  RACER2    3  RACER3    3  HISPANIC  3  MARSTAT   3
   VETERAN   3  RESERVE   3  EDUC      3  EDUCR     3  EDUCAD    3
   EDUCADR   3  INCFAM20  3  INCFAM    3  INCFAMR   3  POVERTY   3
   FAMRELR   3  FAMSIZE   3  FAMSIZER  3  PARENT    3  MAJACT    3
   HLTHSTAT  3  LATOTAL   3  LAWORK    3  LASCHOOL  3  LACARE    3
   EMPLOY    3  WKCLASS   3  INDUS     3  INDUSR1   3  INDUSR2   3
   OCCUP     3  OCCUPR1   3  OCCUPR2   3  RESPOND   3  CONDLIST  3
   HEIGHT    3  WEIGHT    3  RADAY     3  BDDAY     3  WLDAY     3
   SLDAY     3  OTHDAY    3  BDDAY12   3  BDDAY12R  3  DV12      3
   DVINT     3  NCOND     3  NACUTE    3  NDV2      3  HEP12     3
   HDA12     3  HEP12X    3  HDA12X    3  DISDA5    3  DIS6X     3
   DISDAY6X  3  DISDA12X  3  YRPRERES  3  YRSINUS   3  GOSCHOOL  3
   HISPOVER  3  WTINT     8  SUBTYPE   3  STRATUM   3  REGION    3
   MSASIZE   3  PSUTYPE   3  MSA       3  PSUPSEUD  3  CCFACT    8
   WTFQ      6  WTFS      6  WTFA      6  WT65      6  RADAYWP   6
   BDDAYWP   6  WLDAYWP   6  SLDAYWP   6  DV12WPQ   6  DV12WPS   6
   DV12WPA   6  HDA12WPQ  6  HDA12WPS  6  HDA12WPA  6  HEP12WP   6
   DUMMYREC  3  MEDICARE  3  MEDICAID  3  MILCHAMP  3  PUBASSMD  3
   HLTHIN1   3  HMO1      3  SELDOC1   3  POEMPUN1  3  PREMIUM1  3
   COVERED1  3  HLTHIN2   3  HMO2      3  SELDOC2   3  POEMPUN2  3
   PREMIUM2  3  COVERED2  3  HLTHIN3   3  HMO3      3  SELDOC3   3
   POEMPUN3  3  PREMIUM3  3  COVERED3  3  HLTHIN4   3  HMO4      3
   SELDOC4   3  POEMPUN4  3  PREMIUM4  3  COVERED4  3  PHLTHINR  3
   HLTHINSR  3  PUBASSR   3  NOPRIVPP  3  NOPRIVPF  3  PERSCOV1  3
   PERSCOV2  3  PERSCOV3  3  PERSCOV4  3  TPLAN1R1  3  TPLAN2R1  3
   TPLAN3R1  3  TPLAN4R1  3  TPLAN1R2  3  TPLAN2R2  3  TPLAN3R2  3
   TPLAN4R2  3  HMOPLN1R  3  HMOPLN2R  3  HMOPLN3R  3  HMOPLN4R  3
   ;

* INPUT ALL VARIABLES;
 
INPUT
   RECTYPE      1 - 2          YEAR         3 - 4
   QUARTER      5 - 5          PSUNUMR  $   6 - 8
   WEEKCEN      9 - 10         SEGNUM   $  11 - 12
   HHNUM    $  13 - 14         PNUM     $  15 - 16
   WEEKPROC    19 - 20         LINTFLAG    21 - 21
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
   MAJACT      69 - 69         HLTHSTAT    70 - 70
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
   YRPRERES   144 - 144        YRSINUS    145 - 145
   GOSCHOOL   146 - 146        HISPOVER   169 - 169
   WTINT      172 - 177        SUBTYPE    178 - 178
   STRATUM    179 - 181        REGION     182 - 182
   MSASIZE    183 - 183        PSUTYPE    185 - 185
   MSA        186 - 186        PSUPSEUD   187 - 189
   CCFACT     190 - 200        WTFQ       201 - 209
   WTFS       210 - 218        WTFA       219 - 227
   WT65       228 - 236        RADAYWP    237 - 245
   BDDAYWP    246 - 254        WLDAYWP    255 - 263
   SLDAYWP    264 - 272        DV12WPQ    273 - 281
   DV12WPS    282 - 290        DV12WPA    291 - 299
   HDA12WPQ   300 - 308        HDA12WPS   309 - 317
   HDA12WPA   318 - 326        HEP12WP    327 - 335
   DUMMYREC   336 - 336        MEDICARE   337 - 337
   MEDICAID   338 - 338        MILCHAMP   339 - 339
   PUBASSMD   340 - 340        HLTHIN1    341 - 342
   HMO1       343 - 343        SELDOC1    344 - 344
   POEMPUN1   345 - 345        PREMIUM1   346 - 346
   COVERED1   347 - 347        HLTHIN2    348 - 349
   HMO2       350 - 350        SELDOC2    351 - 351
   POEMPUN2   352 - 352        PREMIUM2   353 - 353
   COVERED2   354 - 354        HLTHIN3    355 - 356
   HMO3       357 - 357        SELDOC3    358 - 358
   POEMPUN3   359 - 359        PREMIUM3   360 - 360
   COVERED3   361 - 361        HLTHIN4    362 - 363
   HMO4       364 - 364        SELDOC4    365 - 365
   POEMPUN4   366 - 366        PREMIUM4   367 - 367
   COVERED4   368 - 368        PHLTHINR   369 - 369
   HLTHINSR   370 - 370        PUBASSR    371 - 371
   NOPRIVPP   372 - 372        NOPRIVPF   373 - 373
   PERSCOV1   374 - 374        PERSCOV2   375 - 375
   PERSCOV3   376 - 376        PERSCOV4   377 - 377
   TPLAN1R1   378 - 379        TPLAN2R1   380 - 381
   TPLAN3R1   382 - 383        TPLAN4R1   384 - 385
   TPLAN1R2   386 - 387        TPLAN2R2   388 - 389
   TPLAN3R2   390 - 391        TPLAN4R2   392 - 393
   HMOPLN1R   394 - 395        HMOPLN2R   396 - 397
   HMOPLN3R   398 - 399        HMOPLN4R   400 - 401
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
   LINTFLAG = "LATE INTERVIEW (OR LAST ATTEMPT) FLAG"
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
   EDUCADR  = "HIGHEST EDUCATION OF RESPONSIBLE ADULT FAMILY MEMBER - RECODE"
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
   LATOTAL  = "ACTIVITY LIMITATION STATUS - (ALL AGES)"
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
   DISDA5   = "NUMBER OF SHORT-STAY HOSPITAL DISCHARGES IN PAST 6 MONTHS"
   DIS6X    = "NUMBER OF DAYS IN SHORT-STAY HOSPITAL IN PAST 12 MONTHS FOR DISCHARGES IN PAST 6 MONTHS"
   DISDAY6X = "NUMBER OF SHORT-STAY HOSPITAL DISCHARGES IN PAST 6 MONTHS EXCLUDING DELIVERY"
   DISDA12X = "NUMBER OF DAYS IN SHORT-STAY HOSPITAL IN PAST 12 MONTHS FOR DISCHARGES IN PAST 6 MONTHS EXCLUDING DELIVERY"
   YRPRERES = "YEARS LIVED IN STATE OF PRESENT RESIDENCE"
   YRSINUS  = "YEARS LIVED IN UNITED STATES"
   GOSCHOOL = "NOW GOING TO SCHOOL OR ON VACATION FROM SCHOOL"
   HISPOVER = "HISPANIC OVERSAMPLE RECODE"
   WTINT    = "QUARTER BASIC WEIGHT BEFORE AGE-SEX-RACE ADJUSTMENT"
   SUBTYPE  = "TYPE OF SUBSTRATUM"
   STRATUM  = "FULL SAMPLE STRATUM IDENTIFIER"
   REGION   = "REGION"
   MSASIZE  = "GEOGRAPHIC DISTRIBUTION MSA SIZE"
   PSUTYPE  = "TYPE OF PSU"
   MSA      = "MSA - NON-MSA RESIDENCE"
   PSUPSEUD = "PSEUDO PSU CODES"
   CCFACT   = "CHRONIC CONDITION PREVALENCE AND INCIDENCE FACTOR"
   WTFQ     = "FINAL BASIC WEIGHT QUARTER"
   WTFS     = "FINAL BASIC WEIGHT SEMI-ANNUAL (WT/2)"
   WTFA     = "FINAL BASIC WEIGHT ANNUAL (WT/4)"
   WT65     = "6.5 WEIGHT QUARTER, SEMI-ANNUAL, AND ANNUAL"
   RADAYWP  = "ESTIMATED RESTRICTED ACTIVITY DAYS PAST 2W QUARTER, SEMI-ANNUAL AND ANNUAL"
   BDDAYWP  = "ESTIMATED BED DAYS PAST 2W QUARTER, SEMI-ANNUAL AND ANNUAL"
   WLDAYWP  = "ESTIMATED WORK-LOSS DAYS PAST 2W QUARTER, SEMI-ANNUAL AND ANNUAL"
   SLDAYWP  = "ESTIMATED SCHOOL-LOSS DAYS PAST 2W QUARTER, SEMI-ANNUAL AND ANNUAL"
   DV12WPQ  = "ESTIMATED DOCTOR VISITS IN PAST 12M  QUARTER"
   DV12WPS  = "ESTIMATED DOCTOR VISITS IN PAST 12M  SEMI-ANNUAL"
   DV12WPA  = "ESTIMATED DOCTOR VISITS IN PAST 12M  ANNUAL DAYS IN PAST 12 MONTHS"
   HDA12WPQ = "ESTIMATED SHORT-STAY HOSPITAL EPISODE DAYS PAST 12M QUARTER"
   HDA12WPS = "ESTIMATED SHORT-STAY HOSPITAL EPISODE DAYS PAST 12M SEMI-ANNUAL"
   HDA12WPA = "ESTIMATED SHORT-STAY HOSPITAL EPISODE DAYS PAST 12M ANNUAL"
   HEP12WP  = "ANNUAL ESTIMATED NUMBER OF SHORT-STAY HOSPITAL EPISODES PAST 12M"
   DUMMYREC = "DUMMY RECORD INDICATOR"
   MEDICARE = "COVERED BY MEDICARE"
   MEDICAID = "COVERED BY MEDICAID"
   MILCHAMP = "COVERED BY MILITARY/CHAMPUS/CHAMP-VA"
   PUBASSMD = "COVERED BY OTHER PUBLIC ASSISTANCE MEDICAL COVERAGE"
   HLTHIN1  = "HI PLAN 1"
   HMO1     = "HEALTH MAINTENANCE ORGANIZATION"
   SELDOC1  = "PLAN LET YOU SELECT YOUR DOCTOR"
   POEMPUN1 = "PLAN OBTAINED THROUGH EMPLOYER OR UNION"
   PREMIUM1 = "EMPLOYER OR UNION PAY PART/ALL OF PREMIUM"
   COVERED1 = "WHO IS COVERED BY PLAN"
   HLTHIN2  = "HI PLAN 2"
   HMO2     = "HEALTH MAINTENANCE ORGANIZATION"
   SELDOC2  = "PLAN LET YOU SELECT YOUR DOCTOR"
   POEMPUN2 = "PLAN OBTAINED THROUGH EMPLOYER OR UNION"
   PREMIUM2 = "EMPLOYER OR UNION PAY PART/ALL OF PREMIUM"
   COVERED2 = "WHO IS COVERED BY PLAN"
   HLTHIN3  = "HI PLAN 3"
   HMO3     = "HEALTH MAINTENANCE ORGANIZATION"
   SELDOC3  = "PLAN LET YOU SELECT YOUR DOCTOR"
   POEMPUN3 = "PLAN OBTAINED THROUGH EMPLOYER OR UNION"
   PREMIUM3 = "EMPLOYER OR UNION PAY PART/ALL OF PREMIUM"
   COVERED3 = "WHO IS COVERED BY PLAN"
   HLTHIN4  = "HI PLAN 4"
   HMO4     = "HEALTH MAINTENANCE ORGANIZATION"
   SELDOC4  = "PLAN LET YOU SELECT YOUR DOCTOR"
   POEMPUN4 = "PLAN OBTAINED THROUGH EMPLOYER OR UNION"
   PREMIUM4 = "EMPLOYER OR UNION PAY PART/ALL OF PREMIUM"
   COVERED4 = "WHO IS COVERED BY PLAN"
   PHLTHINR = "PRIVATE HEALTH INSURANCE COVERAGE RECODE"
   HLTHINSR = "MEDICARE AND/OR PRIVATE HI RECODE"
   PUBASSR  = "MEDICAID OR OTHER PUBLIC ASSISTANCE RECODE"
   NOPRIVPP = "NUMBER OF PRIVATE HI PLANS PER PERSON"
   NOPRIVPF = "NUMBER OF PRIVATE HI PLANS PER FAMILY"
   PERSCOV1 = "PERSON'S COVERAGE UNDER PLAN 1"
   PERSCOV2 = "PERSON'S COVERAGE UNDER PLAN 2"
   PERSCOV3 = "PERSON'S COVERAGE UNDER PLAN 3"
   PERSCOV4 = "PERSON'S COVERAGE UNDER PLAN 4"
   TPLAN1R1 = "TYPE OF PLAN - PLAN 1 RECODE 1"
   TPLAN2R1 = "TYPE OF PLAN - PLAN 2 RECODE 1"
   TPLAN3R1 = "TYPE OF PLAN - PLAN 3 RECODE 1"
   TPLAN4R1 = "TYPE OF PLAN - PLAN 4 RECODE 1"
   TPLAN1R2 = "TYPE OF PLAN - PLAN 1 RECODE 2"
   TPLAN2R2 = "TYPE OF PLAN - PLAN 2 RECODE 2"
   TPLAN3R2 = "TYPE OF PLAN - PLAN 3 RECODE 2"
   TPLAN4R2 = "TYPE OF PLAN - PLAN 4 RECODE 2"
   HMOPLN1R = "HMO PLAN 1 RECODE"
   HMOPLN2R = "HMO PLAN 2 RECODE"
   HMOPLN3R = "HMO PLAN 3 RECODE"
   HMOPLN4R = "HMO PLAN 4 RECODE"
   ;

* ASSOCIATE VARIABLES WITH FORMAT VALUES;
 
FORMAT
   RECTYPE   HIN001X.    YEAR      HIN002X.    QUARTER   HIN003X.
   PSUNUMR   $HIN004X.   WEEKCEN   HIN005X.    SEGNUM    $HIN006X.
   HHNUM     $HIN007X.   PNUM      $HIN008X.   WEEKPROC  HIN009X.
   LINTFLAG  HIN010X.    LIVQTR    HIN011X.    PHONE     HIN012X.
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
   MAJACT    HIN043X.    HLTHSTAT  HIN044X.    LATOTAL   HIN045X.
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
   DISDAY6X  HIN079X.    DISDA12X  HIN080X.    YRPRERES  HIN081X.
   YRSINUS   HIN082X.    GOSCHOOL  HIN083X.    HISPOVER  HIN084X.
   WTINT     HIN085X.    SUBTYPE   HIN086X.    STRATUM   HIN087X.
   REGION    HIN088X.    MSASIZE   HIN089X.    PSUTYPE   HIN090X.
   MSA       HIN091X.    PSUPSEUD  HIN092X.    CCFACT    HIN093X.
   WTFQ      HIN094X.    WTFS      HIN095X.    WTFA      HIN096X.
   WT65      HIN097X.    RADAYWP   HIN098X.    BDDAYWP   HIN099X.
   WLDAYWP   HIN100X.    SLDAYWP   HIN101X.    DV12WPQ   HIN102X.
   DV12WPS   HIN103X.    DV12WPA   HIN104X.    HDA12WPQ  HIN105X.
   HDA12WPS  HIN106X.    HDA12WPA  HIN107X.    HEP12WP   HIN108X.
   DUMMYREC  HIN109X.    MEDICARE  HIN110X.    MEDICAID  HIN111X.
   MILCHAMP  HIN112X.    PUBASSMD  HIN113X.    HLTHIN1   HIN114X.
   HMO1      HIN115X.    SELDOC1   HIN116X.    POEMPUN1  HIN117X.
   PREMIUM1  HIN118X.    COVERED1  HIN119X.    HLTHIN2   HIN120X.
   HMO2      HIN121X.    SELDOC2   HIN122X.    POEMPUN2  HIN123X.
   PREMIUM2  HIN124X.    COVERED2  HIN125X.    HLTHIN3   HIN126X.
   HMO3      HIN127X.    SELDOC3   HIN128X.    POEMPUN3  HIN129X.
   PREMIUM3  HIN130X.    COVERED3  HIN131X.    HLTHIN4   HIN132X.
   HMO4      HIN133X.    SELDOC4   HIN134X.    POEMPUN4  HIN135X.
   PREMIUM4  HIN136X.    COVERED4  HIN137X.    PHLTHINR  HIN138X.
   HLTHINSR  HIN139X.    PUBASSR   HIN140X.    NOPRIVPP  HIN141X.
   NOPRIVPF  HIN142X.    PERSCOV1  HIN143X.    PERSCOV2  HIN144X.
   PERSCOV3  HIN145X.    PERSCOV4  HIN146X.    TPLAN1R1  HIN147X.
   TPLAN2R1  HIN148X.    TPLAN3R1  HIN149X.    TPLAN4R1  HIN150X.
   TPLAN1R2  HIN151X.    TPLAN2R2  HIN152X.    TPLAN3R2  HIN153X.
   TPLAN4R2  HIN154X.    HMOPLN1R  HIN155X.    HMOPLN2R  HIN156X.
   HMOPLN3R  HIN157X.    HMOPLN4R  HIN158X.
   ;
 
PROC CONTENTS DATA=NHIS.HEALTHIN;
 
PROC FREQ DATA=NHIS.HEALTHIN;
TITLE1 'FREQUENCY REPORT FOR 1992 NHIS HEALTH INSURANCE FILE';
TITLE2 '(WEIGHTED)';
TABLES RECTYPE/LIST MISSING;
WEIGHT WTFA;

PROC FREQ DATA=NHIS.HEALTHIN;
TITLE1 'FREQUENCY REPORT FOR 1992 NHIS HEALTH INSURANCE FILE';
TITLE2 '(UNWEIGHTED)';
TABLES RECTYPE/LIST MISSING;
 
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
              STATEMENT: FORMAT _ALL_;
RUN;
