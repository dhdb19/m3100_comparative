*********************************************************************
 DECEMBER 1, 2004
 
 THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
 FILE FROM THE 2003 NHIS PUBLIC USE PERSONSX.DAT ASCII FILE
 
 NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
       PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
       GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
       DOCUMENTATION
 
 THIS IS STORED IN PERSONSX.SAS
*********************************************************************;

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS;
LIBNAME  NHIS     'C:\NHIS2003\';

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS;
*            IF YOU ALLOW PROGRAM TO PERMANENTLY STORE FORMATS;
LIBNAME  LIBRARY  'C:\NHIS2003\';

FILENAME ASCIIDAT 'C:\NHIS2003\PERSONSX.DAT';

* DEFINE VARIABLE VALUES FOR REPORTS;

*  USE THE STATEMENT "PROC FORMAT LIBRARY=LIBRARY";
*     TO PERMANENTLY STORE THE FORMAT DEFINITIONS;

*  USE THE STATEMENT "PROC FORMAT" IF YOU DO NOT WISH;
*     TO PERMANENTLY STORE THE FORMATS.;

PROC FORMAT LIBRARY=LIBRARY;
*PROC FORMAT;

  VALUE PEP001X
    20               = "Person"
   ;
  VALUE PEP002X
    2003             = "2003"
   ;
  VALUE $PEP004X
    "01" - "08"      = "Family number 1 thru 8"
   ;
  VALUE $PEP005X
    "01" - "30"      = "Person number 1 thru 30"
   ;
  VALUE PEP006X
    1                = "Quarter 1"
    2                = "Quarter 2"
    3                = "Quarter 3"
    4                = "Quarter 4"
   ;
  VALUE PEP007X
    1                = "Male"
    2                = "Female"
   ;
  VALUE PEP008X
    00               = "Under 1 year"
    01 - 84          = "1-84 years"
    85               = "85+ years"
   ;
  VALUE PEP009X
    1                = "Under 5 years"
    2                = "5-17 years"
    3                = "18-24 years"
    4                = "25-44 years"
    5                = "45-64 years"
    6                = "65-69 years"
    7                = "70-74 years"
    8                = "75 years and over"
   ;
  VALUE PEP010X
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
  VALUE $PEP011X
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
    "97"             = "Refused"
    "98"             = "Not ascertained"
    "99"             = "Don't know"
   ;
  VALUE $PEP012X
    "1919"           = "1919 or before"
    "1920" - "2004"  = "1920-2004"
    "9997"           = "Refused"
    "9998"           = "Not ascertained"
    "9999"           = "Don't know"
   ;
  VALUE PEP013X
    1                = "Yes"
    2                = "No"
   ;
  VALUE PEP014X
    1                = "Imputed: was 'refused' Hispanic Origin"
    2                = "Imputed: was 'not ascertained' Hispanic Origin"
    3                = "Imputed: was 'does not know' Hispanic Origin"
    4                = "Hispanic origin given by respondent/proxy"
   ;
  VALUE PEP015X
    00               = "Multiple Hispanic"
    01               = "Puerto Rican"
    02               = "Mexican"
    03               = "Mexican-American"
    04               = "Cuban/Cuban American"
    05               = "Dominican (Republic)"
    06               = "Central or South American"
    07               = "Other Latin American, type not specified"
    08               = "Other Spanish"
    09               = "Hispanic/Latino/Spanish, non-specific type"
    10               = "Hispanic/Latino/Spanish, type refused"
    11               = "Hispanic/Latino/Spanish, type not ascertained"
    12               = "Not Hispanic/Spanish origin"
   ;
  VALUE PEP016X
    1                = "Imputed: was 'refused' Hispanic Origin"
    2                = "Imputed: was 'not ascertained' Hispanic Origin"
    3                = "Imputed: was 'does not know' Hispanic Origin"
    4                = "Hispanic Origin type given by respondent/proxy"
   ;
  VALUE PEP017X
    01               = "White only"
    02               = "Black/African American only"
    03               = "AIAN only"
    04               = "Asian only"
    05               = "Race group not releasable*"
    06               = "Multiple race"
   ;
  VALUE PEP018X
    1                = "Imputed: was 'refused'"
    2                = "Imputed: was 'not ascertained'"
    3                = "Imputed: was 'does not know'"
    4                = "Imputed: was 'other race'"
    5                = "Imputed: was 'unspecified multiple race'"
    6                = "Race given by respondent/proxy"
   ;
  VALUE PEP019X
    01               = "White"
    02               = "Black/African American"
    03               = "Indian (American), Alaska Native"
    09               = "Asian Indian"
    10               = "Chinese"
    11               = "Filipino"
    15               = "Other Asian*"
    16               = "Primary race not releasable**"
    17               = "Multiple race, no primary race selected"
   ;
  VALUE PEP020X
    01               = "White"
    02               = "Black/African American"
    03               = "Indian (American) (includes Eskimo, Aleut)"
    06               = "Chinese"
    07               = "Filipino"
    12               = "Asian Indian"
    16               = "Other race*"
    17               = "Multiple race, no primary race selected"
   ;
  VALUE PEP021X
    1                = "White"
    2                = "Black"
    3                = "All other race groups*"
   ;
  VALUE PEP022X
    1                = "Hispanic"
    2                = "Non-Hispanic White"
    3                = "Non-Hispanic Black"
    4                = "Non-Hispanic All other race groups"
   ;
  VALUE PEP023X
    1                = "Ethnicity/race imputed"
    2                = "Ethnicity/race given by respondent/proxy"
   ;
  VALUE PEP024X
    0                = "Under 14 years"
    1                = "Married - spouse in household"
    2                = "Married - spouse not in household"
    3                = "Married - spouse in household unknown"
    4                = "Widowed"
    5                = "Divorced"
    6                = "Separated"
    7                = "Never married"
    8                = "Living with partner"
    9                = "Unknown marital status"
   ;
  VALUE PEP025X
    1                = "Yes"
    2                = "No"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't know"
    .                = "<Blank:  Not in Universe>"
   ;
  VALUE PEP026X
    1                = "Married"
    2                = "Widowed"
    3                = "Divorced"
    4                = "Separated"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't know"
    .                = "<Blank:  Not in Universe>"
   ;
  VALUE PEP027X
    1                = "Married, spouse in household"
    2                = "Married, spouse not in household"
    3                = "Married, spouse in household unknown"
    4                = "Widowed"
    5                = "Divorced"
    6                = "Separated"
    7                = "Never Married"
    9                = "Unknown marital status"
    .                = "<Blank: Not in Universe>"
   ;
  VALUE PEP028X
    1                = "Separated"
    2                = "Divorced"
    3                = "Married"
    4                = "Single/never married"
    5                = "Widowed"
    9                = "Unknown marital status"
    .                = "<Blank: Not in Universe>"
   ;
  VALUE PEP029X
    01               = "Household reference person"
    02               = "Spouse (husband/wife)"
    03               = "Unmarried Partner"
    04               = "Child (biological/adoptive/in-law/step/foster)"
    05               = "Child of partner"
    06               = "Grandchild"
    07               = "Parent (bio./adoptive/in-law/step/foster)"
    08               = "Brother/sister (bio./adop./in-law/step/foster)"
    09               = "Grandparent (Grandmother/Grandfather)"
    10               = "Aunt/Uncle"
    11               = "Niece/Nephew"
    12               = "Other relative"
    13               = "Housemate/roommate"
    14               = "Roomer/Boarder"
    15               = "Other nonrelative"
    16               = "Legal guardian"
    17               = "Ward"
    97               = "Refused"
    99               = "Don't know"
   ;
  VALUE $PEP030X
    "01" - "30"      = "Person number 1 thru 30"
    "98"             = "Not ascertained"
   ;
  VALUE $PEP031X
    "P"              = "HH Reference person"
    "8"              = "Not ascertained"
    " "              = "<Blank:  Not reference person>"
   ;
  VALUE PEP032X
    01               = "Family reference person"
    02               = "Spouse (husband/wife)"
    03               = "Unmarried Partner"
    04               = "Child (biological/adoptive/in-law/step/foster)"
    05               = "Child of partner"
    06               = "Grandchild"
    07               = "Parent (bio./adoptive/in-law/step/foster)"
    08               = "Brother/sister (bio./adop./in-law/step/foster)"
    09               = "Grandparent (Grandmother/Grandfather)"
    10               = "Aunt/Uncle"
    11               = "Niece/Nephew"
    12               = "Other relative"
    16               = "Legal guardian"
    17               = "Ward"
    97               = "Refused"
    99               = "Don't know"
   ;
  VALUE $PEP034X
    "P"              = "Family reference person"
    "8"              = "Not ascertained"
    " "              = "<Blank:  Not reference person>"
   ;
  VALUE PEP035X
    01 - 30          = "Person number 1 thru 30"
    98               = "Not ascertained"
   ;
  VALUE $PEP036X
    "B"              = "Family respondent"
    "8"              = "Not ascertained"
    " "              = "<Blank:  Not family respondent>"
   ;
  VALUE PEP037X
    1                = "Full  {brother/sister}"
    2                = "Half {brother/sister}"
    3                = "Adopted {brother/sister}"
    4                = "Step {brother/sister}"
    5                = "Foster {brother/sister}"
    6                = "{brother/sister}-in-law"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't know"
    .                = "<Blank: Not in Universe>"
   ;
  VALUE $PEP038X
    "00"             = "No mother in the household"
    "01" - "30"      = "Person number (of mother)"
    "96"             = "Has legal guardian"
    "97"             = "Refused"
    "98"             = "Not ascertained"
    "99"             = "Don't know"
   ;
  VALUE PEP039X
    1                = "Biological"
    2                = "Adoptive"
    3                = "Step"
    4                = "Foster"
    5                = "In-law"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't know"
    .                = "<Blank: Not in Universe>"
   ;
  VALUE $PEP040X
    "00"             = "No father in the household"
    "01" - "30"      = "Person number (of father)"
    "96"             = "Has legal guardian"
    "97"             = "Refused"
    "98"             = "Not ascertained"
    "99"             = "Don't know"
   ;
  VALUE $PEP042X
    "00"             = "Guardian is not a household member"
    "01" - "30"      = "Person number of guardian"
    "97"             = "Refused"
    "98"             = "Not ascertained"
    "99"             = "Don't know"
    " "              = "<Blank: Not in Universe>"
   ;
  VALUE PEP043X
    1                = "Mother, no father"
    2                = "Father, no mother"
    3                = "Mother and father"
    4                = "Neither mother nor father"
    9                = "Unknown"
   ;
  VALUE PEP044X
    01               = "Less/equal to 8th grade"
    02               = "9-12th grade, no high school diploma"
    03               = "High school graduate/GED recipient"
    04               = "Some college, no degree"
    05               = "AA degree, technical or vocational"
    06               = "AA degree, academic program"
    07               = "Bachelor's degree"
    08               = "Master's, professional, or doctoral degree"
    97               = "Refused"
    98               = "Not ascertained"
    99               = "Don't know"
    .                = "<Blank: Not in Universe>"
   ;
  VALUE PEP046X
    01 - 30          = "01-30 persons"
   ;
  VALUE PEP047X
    1                = "One adult, no child(ren) under 18"
    2                = "Multiple adults, no child(ren) under 18"
    3                = "One adult, 1+ child(ren) under 18"
    4                = "Multiple adults, 1+ child(ren) under 18"
    9                = "Unknown"
   ;
  VALUE PEP050X
    1                = "Armed Forces"
    2                = "Not Armed Forces"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't know"
    .                = "<Blank:  Not in Universe>"
   ;
  VALUE PEP051X
    0                = "Sample Adult - no record"
    1                = "Sample Adult - has record"
    2                = "Not selected as Sample Adult"
    3                = "No one selected as Sample Adult"
    4                = "Armed Force member"
    5                = "Armed Force member - selected as Sample Adult"
    .                = "<Blank:  Not in Universe>"
   ;
  VALUE PEP052X
    0                = "Sample Child - no record"
    1                = "Sample Child - has record"
    2                = "Not selected as Sample Child"
    3                = "No one selected as Sample Child"
    4                = "Emancipated Minor"
    .                = "<Blank:  Not in Universe>"
   ;
  VALUE PEP053X
    0                = "Immunization Child - no record"
    1                = "Immunization Child - has record"
    2                = "Not eligible for immunization questions"
    .                = "<Blank:  Not in Universe>"
   ;
  VALUE PEP054X
    1                = "Northeast"
    2                = "Midwest"
    3                = "South"
    4                = "West"
   ;
  VALUE PEP072X
    0                = "Unable to work"
    1                = "Limited in work"
    2                = "Not limited in work"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't know"
    .                = "<Blank:  Not in Universe>"
   ;
  VALUE PEP073X
    1                = "Yes"
    2                = "No"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't know"
   ;
  VALUE PEP075X
    0                = "Limitation previously mentioned"
    1                = "Yes, limited in some other way"
    2                = "Not limited in any way"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't know"
   ;
  VALUE PEP076X
    1                = "Limited in any way"
    2                = "Not limited in any way"
    3                = "Unknown if limited"
   ;
  VALUE PEP077X
    1                = "Mentioned"
    2                = "Not mentioned"
    6                = "No condition at all"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't know"
    .                = "<Blank: Not in Universe>"
   ;
  VALUE PEP092X
    01 - 94          = "1-94"
    95               = "95+"
    96               = "Since birth"
    97               = "Refused"
    98               = "Not ascertained"
    99               = "Don't know"
    .                = "<Blank: Not in Universe>"
   ;
  VALUE PEP093X
    1                = "Day(s)"
    2                = "Week(s)"
    3                = "Month(s)"
    4                = "Year(s)"
    6                = "Since birth"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't know"
    .                = "<Blank: Not in Universe>"
   ;
  VALUE PEP094X
    00               = "Less than 1 year"
    01 - 17          = "01-17 years"
    96               = "Unknown number of years"
    97               = "Refused"
    98               = "Not ascertained"
    99               = "Don't know"
    .                = "<Blank: Not in Universe>"
   ;
  VALUE PEP095X
    0                = "Since birth and child < 1 year of age"
    1                = "Less than 3 months"
    2                = "3 - 5 months"
    3                = "6 - 12 months"
    4                = "More than 1 year"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't know"
    .                = "<Blank: Not in Universe>"
   ;
  VALUE PEP096X
    1                = "Chronic"
    2                = "Not chronic"
    9                = "Unknown if chronic"
    .                = "<Blank: Not in Universe>"
   ;
  VALUE PEP205X
    00               = "Less than 1 year"
    01 - 84          = "01-84 years"
    85               = "85+ years"
    96               = "Unknown number of years"
    97               = "Refused"
    98               = "Not ascertained"
    99               = "Don't know"
    .                = "<Blank: Not in Universe>"
   ;
  VALUE PEP206X
    1                = "Less than 3 months"
    2                = "3 - 5 months"
    3                = "6 - 12 months"
    4                = "More than 1 year"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't know"
    .                = "<Blank: Not in Universe>"
   ;
  VALUE PEP383X
    1                = "At least one condition causing LA is chronic"
    2                = "No condition causing LA is chronic"
    9                = "Unk if any condition causing LA is chronic"
    .                = "<Blank:  Not in Universe>"
   ;
  VALUE PEP384X
    0                = "Not limited in any way (incl unk if limited)"
    1                = "Limited; caused by at least one chronic cond"
    2                = "Limited; not caused by chronic cond"
    3                = "Limited; unk if cond causing LA is chronic"
   ;
  VALUE PEP385X
    1                = "Excellent"
    2                = "Very good"
    3                = "Good"
    4                = "Fair"
    5                = "Poor"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't know"
   ;
  VALUE PEP389X
    001 - 365        = "1-365 times"
    997              = "Refused"
    998              = "Not ascertained"
    999              = "Don't know"
    .                = "<Blank:  Not in universe>"
   ;
  VALUE PEP390X
    001 - 365        = "1-365 nights"
    997              = "Refused"
    998              = "Not ascertained"
    999              = "Don't know"
    .                = "<Blank:  Not in universe>"
   ;
  VALUE PEP392X
    01 - 50          = "1-50 visits"
    97               = "Refused"
    98               = "Not ascertained"
    99               = "Don't know"
    .                = "<Blank:  Not in universe>"
   ;
  VALUE PEP394X
    01 - 50          = "1-50 calls"
    97               = "Refused"
    98               = "Not ascertained"
    99               = "Don't know"
    .                = "<Blank:  Not in universe>"
   ;
  VALUE PEP396X
    01 - 50          = "1-50 times"
    97               = "Refused"
    98               = "Not ascertained"
    99               = "Don't know"
    .                = "<Blank:  Not in universe>"
   ;
 
  VALUE PEP398X
    1                = "Mentioned"
    2                = "Not mentioned"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't know"
   ;
  VALUE PEP412X
    1                = "Yes, information"
    2                = "Yes, but no information"
    3                = "No"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't know"
   ;
  VALUE PEP413X
    1                = "Part A - Hospital Only"
    2                = "Part B - Medical Only"
    3                = "Both Part A and Part B"
    4                = "Card Not Available"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't know"
    .                = "<Blank:  Not in universe>"
   ;
  VALUE PEP416X
    04               = "Medigap plan"
    12               = "Group"
    22               = "Staff"
    32               = "IPA"
    92               = "Other"
    97               = "Refused"
    98               = "Not ascertained"
    99               = "Don't know"
    .                = "<Blank:  Not in universe>"
   ;
  VALUE PEP420X
    1                = "Any doctor"
    2                = "Select from a book/list"
    3                = "Doctor is assigned"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't know"
    .                = "<Blank:  Not in universe>"
   ;
  VALUE PEP423X
    1                = "Yes with information"
    2                = "Yes with no information"
    3                = "No"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't know"
   ;
  VALUE PEP424X
    1                = "Mentioned"
    2                = "Not mentioned"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't know"
    .                = "<Blank: Not in universe>"
   ;
  VALUE PEP437X
    01 - 92          = "Refer to Health Insurance Plan Appendix"
    98               = "Not ascertained"
    99               = "Unknown"
    .                = "<Blank: Not in universe>"
   ;
  VALUE PEP438X
    1                = "In own name"
    2                = "Someone else in family"
    3                = "Person not in household"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't know"
    .                = "<Blank:  Not in universe>"
   ;
  VALUE PEP439X
    1                = "Employer"
    2                = "Union"
    3                = "Through work, but DK if employer or union"
    4                = "Through work, self-employ or prof assoc"
    5                = "No"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't know"
    .                = "<Blank:  Not in universe>"
   ;
  VALUE PEP447X
    00001 - 19999    = "$1-$19,999"
    20000            = "$20,000 or more"
    99997            = "Refused"
    99998            = "Not ascertained"
    99999            = "Don't know"
    .                = "<Blank:  Not in universe>"
   ;
  VALUE PEP448X
    1                = "HMO/IPA"
    2                = "PPO"
    3                = "POS"
    4                = "Fee-for-service/indemnity"
    5                = "Other"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't know"
    .                = "<Blank:  Not in universe>"
   ;
  VALUE PEP449X
    1                = "Any doctor"
    2                = "Select from group/list"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't know"
    .                = "<Blank:  Not in universe>"
   ;
  VALUE PEP502X
    1                = "Yes, Military/VA only"
    2                = "Yes, TRICARE/CHAMPUS/CHAMP-VA only"
    3                = "Yes Both Military/VA + TRICARE/CHAMPUS/CHAMP-VA"
    4                = "Yes unknown type"
    5                = "No"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't know"
   ;
  VALUE PEP506X
    1                = "Not covered"
    2                = "Covered"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't know"
    .                = "<Blank:  Not in universe>"
   ;
  VALUE PEP507X
    1                = "6 months or less"
    2                = "More than 6 months, but not more than 1 year ago
"
    3                = "More than 1 year, but not more than 3 years ago"
    4                = "More than 3 years"
    5                = "Never"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't know"
    .                = "<Blank:  Not in universe>"
   ;
  VALUE PEP524X
    01 - 12          = "1-12 months"
    97               = "Refused"
    98               = "Not ascertained"
    99               = "Don't know"
    .                = "<Blank:  Not in universe>"
   ;
  VALUE PEP525X
    0                = "Zero"
    1                = "Less than $500"
    2                = "$500-$1,999"
    3                = "$2,000-$2,999"
    4                = "$3,000-$4,999"
    5                = "$5,000 or more"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't Know"
   ;
 
  VALUE PEP526X
    01               = "United States"
    02               = "Mexico, Central America, Caribbean Islands"
    03               = "South America"
    04               = "Europe"
    05               = "Russia (and former USSR areas)"
    06               = "Africa"
    07               = "Middle East"
    08               = "Indian Subcontinent"
    09               = "Asia"
    10               = "SE Asia"
    11               = "Elsewhere"
    99               = "Unknown"
   ;
  VALUE PEP527X
    1                = "USA: born in one of the 50 United States or D.C"
    2                = "USA: born in a U.S. territory"
    3                = "Not born in the U.S. or a U.S. territory"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't know"
   ;
  VALUE PEP528X
    1                = "Less than 1 year"
    2                = "1 yr., less than 5 yrs."
    3                = "5 yrs., less than 10 yrs."
    4                = "10 yrs., less than 15 yrs."
    5                = "15 years or more"
    9                = "Unknown"
    .                = "<Blank: Not in universe>"
   ;
  VALUE PEP529X
    1                = "Yes, citizen of the United States"
    2                = "No, not a citizen of the United States"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't know"
   ;
  VALUE PEP532X
    00               = "Never attended/ kindergarten only"
    01 - 11          = "Grades 1 - 11"
    12               = "12th grade, no diploma"
    13               = "HIGH SCHOOL GRADUATE"
    14               = "GED or equivalent"
    15               = "Some college, no degree"
    16               = "AA degree: technical or vocational"
    17               = "AA degree: academic program"
    18               = "Bachelor's degree (BA, AB, BS, BBA)"
    19               = "Master's degree (MA, MS, MEng, MEd, MBA)"
    20               = "Professional degree (MD, DDS, DVM, JD)"
    21               = "Doctoral degree (PhD, EdD)"
    96               = "Child under 5 years old"
    97               = "Refused"
    98               = "Not ascertained"
    99               = "Don't know"
   ;
  VALUE PEP533X
    01               = "Less/equal to 8th grade"
    02               = "9-12th grade, no high school diploma"
    03               = "High school graduate"
    04               = "GED recipient"
    05               = "Some college, no degree"
    06               = "AA degree, technical or vocational"
    07               = "AA degree, academic program"
    08               = "Bachelor's degree (BA, BS, AB, BBA)"
    09               = "Master's, professional, or doctoral degree"
    96               = "Child under 5 years of age"
    97               = "Refused"
    98               = "Not ascertained"
    99               = "Don't know"
   ;
  VALUE PEP535X
    1                = "Working for pay at a job or business"
    2                = "With a job or business but not at work"
    3                = "Looking for work"
    4                = "Working, but not for pay, at a job or business"
    5                = "Not working and not looking for work"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't know"
    .                = "<Blank: Not in universe>"
   ;
  VALUE PEP536X
    01               = "Taking care of house or family"
    02               = "Going to school"
    03               = "Retired"
    04               = "On a planned vacation from work"
    05               = "On family or maternity leave"
    06               = "Temporarily unable to work for health reasons"
    07               = "On layoff"
    08               = "Disabled"
    09               = "Have job/contract; off-season"
    10               = "Other"
    97               = "Refused"
    98               = "Not ascertained"
    99               = "Don't know"
    .                = "<Blank: Not in Universe>"
   ;
  VALUE PEP537X
    01 - 94          = "1-94 hours"
    95               = "95+ hours"
    97               = "Refused"
    98               = "Not ascertained"
    99               = "Don't know"
    .                = "<Blank: Not in Universe>"
   ;
  VALUE PEP541X
    1                = "Working at a job or business"
    2                = "Keeping house"
    3                = "Going to school"
    4                = "Something else"
    5                = "Unknown"
    .                = "<Blank: Not in universe>"
   ;
  VALUE PEP542X
    01               = "$01-$4999"
    02               = "$5000-$9999"
    03               = "$10000-$14999"
    04               = "$15000-$19999"
    05               = "$20000-$24999"
    06               = "$25000-$34999"
    07               = "$35000-$44999"
    08               = "$45000-$54999"
    09               = "$55000-$64999"
    10               = "$65000-$74999"
    11               = "$75000 and over"
    97               = "Refused"
    98               = "Not ascertained"
    99               = "Don't know"
    .                = "<Blank: Not in universe>"
   ;
  VALUE PEP559X
    01               = "0-$4999"
    02               = "$5000-$9999"
    03               = "$10000-$14999"
    04               = "$15000-$19999"
    05               = "$20000-$24999"
    06               = "$25000-$34999"
    07               = "$35000-$44999"
    08               = "$45000-$54999"
    09               = "$55000-$64999"
    10               = "$65000-$74999"
    11               = "$75000 and over"
    12               = "$20000 or more (no detail)"
    13               = "Less than $20000 (no detail)"
    97               = "Refused"
    98               = "Not ascertained"
    99               = "Don't know"
   ;
  VALUE PEP560X
    1                = "$20,000 or more"
    2                = "Less than $20,000"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't know"
   ;
  VALUE PEP561X
    01               = "Under .50"
    02               = ".50 to .74"
    03               = ".75 to .99"
    04               = "1.00 to 1.24"
    05               = "1.25 to 1.49"
    06               = "1.50 to 1.74"
    07               = "1.75 to 1.99"
    08               = "2.00 to 2.49"
    09               = "2.50 to 2.99"
    10               = "3.00 to 3.49"
    11               = "3.50 to 3.99"
    12               = "4.00 to 4.49"
    13               = "4.50 to 4.99"
    14               = "5.00 and over"
    96               = "Undefinable"
    99               = "Unknown"
   ;
  VALUE PEP562X
    1                = "Owned or being bought"
    2                = "Rented"
    3                = "Other arrangement"
    7                = "Refused"
    8                = "Not ascertained"
    9                = "Don't know"
   ;
  VALUE PEP566X
    01 - 12          = "01-12 months"
    97               = "Refused"
    98               = "Not ascertained"
    99               = "Don't know"
    .                = "<Blank:  Not in Universe>"
   ;
  VALUE PEP569X
    0                = "No WIC age-eligible family members"
    1                = "At least 1 WIC age-eligible family member"
   ;
  VALUE PEP571X
    0                = "Person not age-eligible"
    1                = "Person age-eligible"
    .                = "<Blank:  Not in universe>"
   ;

DATA NHIS.PERSONSX;
   * CREATE A SAS DATA SET;
   INFILE ASCIIDAT PAD LRECL=758;

   * DEFINE LENGTH OF ALL VARIABLES;

   LENGTH
      RECTYPE    3   SRVY_YR    4   HHX      $ 6   FMX      $ 2
      PX       $ 2   INTV_QRT   3   SEX        3   AGE_P      3
      R_AGE1     3   R_AGE2     3   DOB_M    $ 2   DOB_Y_P  $ 4
      ORIGIN_I   3   ORIGIMPT   3   HISPAN_I   3   HISPIMPT   3
      RACERPI2   3   RACEIMP2   3   MRACRPI2   3   MRACBPI2   3
      RACRECI2   3   HISCODI2   3   ERIMPFLG   3   R_MARITL   3
      COHAB1     3   COHAB2     3   LG_MSTAT   3   CDCMSTAT   3
      RRP        3   HH_REF   $ 2   HHREFLG  $ 1   FRRP       3
      FM_REF   $ 2   FMREFLG  $ 1   FM_RESP    3   FMRPFLG  $ 1
      SIB_DEG    3   MOTHER   $ 2   MOM_DEG    3   FATHER   $ 2
      DAD_DEG    3   GUARD    $ 2   PARENTS    3   MOM_ED     3
      DAD_ED     3   FM_SIZE    3   FM_TYPE    3   FM_STRCP   3
      FM_STRP    3   NOWAF      3   ASTATFLG   3   CSTATFLG   3
      IMMUNFLG   3   REGION     3   WTIA       8   WTFA       8
      STRATUM    4   PSU        3

      PLAPLYLM   3   PLAPLYUN   3   PSPEDEIS   3   PSPEDEM    3
      PLAADL     3   LABATH     3   LADRESS    3   LAEAT      3
      LABED      3   LATOILT    3   LAHOME     3   PLAIADL    3
      PLAWKNOW   3   PLAWKLIM   3   PLAWALK    3   PLAREMEM   3
      PLIMANY    3   LA1AR      3   LAHCC1     3   LAHCC2     3
      LAHCC3     3   LAHCC4     3   LAHCC5     3   LAHCC6     3
      LAHCC7     3   LAHCC8     3   LAHCC9     3   LAHCC10    3
      LAHCC11    3   LAHCC12    3   LAHCC13    3   LAHCC90    3
      LAHCC91    3   LCTIME1    3   LCUNIT1    3   LCDURA1    3
      LCDURB1    3   LCCHRC1    3   LCTIME2    3   LCUNIT2    3
      LCDURA2    3   LCDURB2    3   LCCHRC2    3   LCTIME3    3
      LCUNIT3    3   LCDURA3    3   LCDURB3    3   LCCHRC3    3
      LCTIME4    3   LCUNIT4    3   LCDURA4    3   LCDURB4    3
      LCCHRC4    3   LCTIME5    3   LCUNIT5    3   LCDURA5    3
      LCDURB5    3   LCCHRC5    3   LCTIME6    3   LCUNIT6    3
      LCDURA6    3   LCDURB6    3   LCCHRC6    3   LCTIME7    3
      LCUNIT7    3   LCDURA7    3   LCDURB7    3   LCCHRC7    3
      LCTIME8    3   LCUNIT8    3   LCDURA8    3   LCDURB8    3
      LCCHRC8    3   LCTIME9    3   LCUNIT9    3   LCDURA9    3
      LCDURB9    3   LCCHRC9    3   LCTIME10   3   LCUNIT10   3
      LCDURA10   3   LCDURB10   3   LCCHRC10   3   LCTIME11   3
      LCUNIT11   3   LCDURA11   3   LCDURB11   3   LCCHRC11   3
      LCTIME12   3   LCUNIT12   3   LCDURA12   3   LCDURB12   3
      LCCHRC12   3   LCTIME13   3   LCUNIT13   3   LCDURA13   3
      LCDURB13   3   LCCHRC13   3   LCTIME90   3   LCUNIT90   3
      LCDURA90   3   LCDURB90   3   LCCHRC90   3   LCTIME91   3
      LCUNIT91   3   LCDURA91   3   LCDURB91   3   LCCHRC91   3
      LAHCA1     3   LAHCA2     3   LAHCA3     3   LAHCA4     3
      LAHCA5     3   LAHCA6     3   LAHCA7     3   LAHCA8     3
      LAHCA9     3   LAHCA10    3   LAHCA11    3   LAHCA12    3
      LAHCA13    3   LAHCA14    3   LAHCA15    3   LAHCA16    3
      LAHCA17    3   LAHCA18    3   LAHCA19    3   LAHCA20    3
      LAHCA21    3   LAHCA22    3   LAHCA23    3   LAHCA24    3
      LAHCA25    3   LAHCA26    3   LAHCA27    3   LAHCA28    3
      LAHCA29    3   LAHCA30    3   LAHCA31    3   LAHCA32    3
      LAHCA33    3   LAHCA34    3   LAHCA90    3   LAHCA91    3
      LATIME1    3   LAUNIT1    3   LADURA1    3   LADURB1    3
      LACHRC1    3   LATIME2    3   LAUNIT2    3   LADURA2    3
      LADURB2    3   LACHRC2    3   LATIME3    3   LAUNIT3    3
      LADURA3    3   LADURB3    3   LACHRC3    3   LATIME4    3
      LAUNIT4    3   LADURA4    3   LADURB4    3   LACHRC4    3
      LATIME5    3   LAUNIT5    3   LADURA5    3   LADURB5    3
      LACHRC5    3   LATIME6    3   LAUNIT6    3   LADURA6    3
      LADURB6    3   LACHRC6    3   LATIME7    3   LAUNIT7    3
      LADURA7    3   LADURB7    3   LACHRC7    3   LATIME8    3
      LAUNIT8    3   LADURA8    3   LADURB8    3   LACHRC8    3
      LATIME9    3   LAUNIT9    3   LADURA9    3   LADURB9    3
      LACHRC9    3   LATIME10   3   LAUNIT10   3   LADURA10   3
      LADURB10   3   LACHRC10   3   LATIME11   3   LAUNIT11   3
      LADURA11   3   LADURB11   3   LACHRC11   3   LATIME12   3
      LAUNIT12   3   LADURA12   3   LADURB12   3   LACHRC12   3
      LATIME13   3   LAUNIT13   3   LADURA13   3   LADURB13   3
      LACHRC13   3   LATIME14   3   LAUNIT14   3   LADURA14   3
      LADURB14   3   LACHRC14   3   LATIME15   3   LAUNIT15   3
      LADURA15   3   LADURB15   3   LACHRC15   3   LATIME16   3
      LAUNIT16   3   LADURA16   3   LADURB16   3   LACHRC16   3
      LATIME17   3   LAUNIT17   3   LADURA17   3   LADURB17   3
      LACHRC17   3   LATIME18   3   LAUNIT18   3   LADURA18   3
      LADURB18   3   LACHRC18   3   LATIME19   3   LAUNIT19   3
      LADURA19   3   LADURB19   3   LACHRC19   3   LATIME20   3
      LAUNIT20   3   LADURA20   3   LADURB20   3   LACHRC20   3
      LATIME21   3   LAUNIT21   3   LADURA21   3   LADURB21   3
      LACHRC21   3   LATIME22   3   LAUNIT22   3   LADURA22   3
      LADURB22   3   LACHRC22   3   LATIME23   3   LAUNIT23   3
      LADURA23   3   LADURB23   3   LACHRC23   3   LATIME24   3
      LAUNIT24   3   LADURA24   3   LADURB24   3   LACHRC24   3
      LATIME25   3   LAUNIT25   3   LADURA25   3   LADURB25   3
      LACHRC25   3   LATIME26   3   LAUNIT26   3   LADURA26   3
      LADURB26   3   LACHRC26   3   LATIME27   3   LAUNIT27   3
      LADURA27   3   LADURB27   3   LACHRC27   3   LATIME28   3
      LAUNIT28   3   LADURA28   3   LADURB28   3   LACHRC28   3
      LATIME29   3   LAUNIT29   3   LADURA29   3   LADURB29   3
      LACHRC29   3   LATIME30   3   LAUNIT30   3   LADURA30   3
      LADURB30   3   LACHRC30   3   LATIME31   3   LAUNIT31   3
      LADURA31   3   LADURB31   3   LACHRC31   3   LATIME32   3
      LAUNIT32   3   LADURA32   3   LADURB32   3   LACHRC32   3
      LATIME33   3   LAUNIT33   3   LADURA33   3   LADURB33   3
      LACHRC33   3   LATIME34   3   LAUNIT34   3   LADURA34   3
      LADURB34   3   LACHRC34   3   LATIME90   3   LAUNIT90   3
      LADURA90   3   LADURB90   3   LACHRC90   3   LATIME91   3
      LAUNIT91   3   LADURA91   3   LADURB91   3   LACHRC91   3
      LCONDRT    3   LACHRONR   3   PHSTAT     3

      PDMED12M   3   PNMED12M   3   PHOSPYR    3   HOSPNO     4
      HPNITE     4   PHCHM2W    3   PHCHMN2W   3   PHCPH2WR   3
      PHCPHN2W   3   PHCDV2W    3   PHCDVN2W   3   P10DVYR    3

      HIKINDA    3   HIKINDB    3   HIKINDC    3   HIKINDD    3
      HIKINDE    3   HIKINDF    3   HIKINDG    3   HIKINDH    3
      HIKINDI    3   HIKINDJ    3   HIKINDK    3   HIKINDL    3
      HIKINDM    3   HIKINDN    3   MEDICARE   3   MCPART     3
      MCCHOICE   3   MCHMO      3   MCNAME     3   MCREF      3
      MCPAYPRE   3   MEDICAID   3   MACHMD     3   MAPCMD     3
      MAREF      3   SINGLE     3   SSTYPEA    3   SSTYPEB    3
      SSTYPEC    3   SSTYPED    3   SSTYPEE    3   SSTYPEF    3
      SSTYPEG    3   SSTYPEH    3   SSTYPEI    3   SSTYPEJ    3
      SSTYPEK    3   SSTYPEL    3   PRIVATE    3   HITYPE1    3
      WHONAM1    3   PLNWRK1    3   PLNPAY11   3   PLNPAY21   3
      PLNPAY31   3   PLNPAY41   3   PLNPAY51   3   PLNPAY61   3
      PLNPAY71   3   HICOSTR1   4   PLNMGD1    3   MGCHMD1    3
      MGPRMD1    3   MGPYMD1    3   MGPREF1    3   HITYPE2    3
      WHONAM2    3   PLNWRK2    3   PLNPAY12   3   PLNPAY22   3
      PLNPAY32   3   PLNPAY42   3   PLNPAY52   3   PLNPAY62   3
      PLNPAY72   3   HICOSTR2   4   PLNMGD2    3   MGCHMD2    3
      MGPRMD2    3   MGPYMD2    3   MGPREF2    3   HITYPE3    3
      WHONAM3    3   PLNWRK3    3   PLNPAY13   3   PLNPAY23   3
      PLNPAY33   3   PLNPAY43   3   PLNPAY53   3   PLNPAY63   3
      PLNPAY73   3   HICOSTR3   4   PLNMGD3    3   MGCHMD3    3
      MGPRMD3    3   MGPYMD3    3   MGPREF3    3   HITYPE4    3
      WHONAM4    3   PLNWRK4    3   PLNPAY14   3   PLNPAY24   3
      PLNPAY34   3   PLNPAY44   3   PLNPAY54   3   PLNPAY64   3
      PLNPAY74   3   HICOSTR4   4   PLNMGD4    3   MGCHMD4    3
      MGPRMD4    3   MGPYMD4    3   MGPREF4    3   IHS        3
      MILITARY   3   CHIP       3   OTHERPUB   3   OTHERGOV   3
      NOTCOV     3   HILAST     3   HISTOP1    3   HISTOP2    3
      HISTOP3    3   HISTOP4    3   HISTOP5    3   HISTOP6    3
      HISTOP7    3   HISTOP8    3   HISTOP9    3   HISTOP10   3
      HISTOP11   3   HISTOP12   3   HISTOP13   3   HISTOP14   3
      HISTOP15   3   HINOTYR    3   HINOTMYR   3   HCSPFYR    3

      REGIONBR   3   GEOBRTH    3   YRSINUS    3   CITIZENP   3
      HEADST     3   HEADSTV1   3   EDUC       3   EDUC_R1    3
      MILTRYDS   3   DOINGLW1   3   WHYNOWK1   3   WRKHRS     3
      WRKFTALL   3   WRKLYR1    3   WRKMYR     3   MAJR_ACT   3
      ERNYR_P    3   HIEMPOF    3

      PSAL       3   PSEINC     3   PSSRR      3   PSSRRDB    3
      PSSRRD     3   PPENS      3   POPENS     3   PSSI       3
      PSSID      3   PTANF      3   POWBEN     3   PINTRSTR   3
      PDIVD      3   PCHLDSP    3   PINCOT     3   INCGRP     3
      AB_BL20K   3   RAT_CAT    3   HOUSEOWN   3   FGAH       3
      PSSAPL     3   PSDAPL     3   TANFMYR    3   PFSTP      3
      FSTPMYR    3   ELIGPWIC   3   PWIC       3   WIC_FLAG   3 ;

   * INPUT ALL VARIABLES;

   INPUT
      RECTYPE       1 -   2    SRVY_YR       3 -   6
      HHX      $    7 -  12    FMX      $   13 -  14
      PX       $   15 -  16    INTV_QRT     17 -  17
      SEX          18 -  18    AGE_P        19 -  20
      R_AGE1       21 -  21    R_AGE2       22 -  22
      DOB_M    $   23 -  24    DOB_Y_P  $   25 -  28
      ORIGIN_I     29 -  29    ORIGIMPT     30 -  30
      HISPAN_I     31 -  32    HISPIMPT     33 -  33
      RACERPI2     34 -  35    RACEIMP2     36 -  36
      MRACRPI2     37 -  38    MRACBPI2     39 -  40
      RACRECI2     41 -  41    HISCODI2     42 -  42
      ERIMPFLG     43 -  43    R_MARITL     44 -  44
      COHAB1       45 -  45    COHAB2       46 -  46
      LG_MSTAT     47 -  47    CDCMSTAT     48 -  48
      RRP          49 -  50    HH_REF   $   51 -  52
      HHREFLG  $   53 -  53    FRRP         54 -  55
      FM_REF   $   56 -  57    FMREFLG  $   58 -  58
      FM_RESP      59 -  60    FMRPFLG  $   61 -  61
      SIB_DEG      62 -  62    MOTHER   $   63 -  64
      MOM_DEG      65 -  65    FATHER   $   66 -  67
      DAD_DEG      68 -  68    GUARD    $   69 -  70
      PARENTS      71 -  71    MOM_ED       72 -  73
      DAD_ED       74 -  75    FM_SIZE      76 -  77
      FM_TYPE      78 -  78    FM_STRCP     79 -  80
      FM_STRP      81 -  82    NOWAF        83 -  83
      ASTATFLG     84 -  84    CSTATFLG     85 -  85
      IMMUNFLG     86 -  86    REGION       87 -  87
      WTIA         88 -  93 .1 WTFA         94 -  99
      STRATUM     100 - 102    PSU         103 - 103

      PLAPLYLM    104 - 104    PLAPLYUN    105 - 105
      PSPEDEIS    106 - 106    PSPEDEM     107 - 107
      PLAADL      108 - 108    LABATH      109 - 109
      LADRESS     110 - 110    LAEAT       111 - 111
      LABED       112 - 112    LATOILT     113 - 113
      LAHOME      114 - 114    PLAIADL     115 - 115
      PLAWKNOW    116 - 116    PLAWKLIM    117 - 117
      PLAWALK     118 - 118    PLAREMEM    119 - 119
      PLIMANY     120 - 120    LA1AR       121 - 121
      LAHCC1      122 - 122    LAHCC2      123 - 123
      LAHCC3      124 - 124    LAHCC4      125 - 125
      LAHCC5      126 - 126    LAHCC6      127 - 127
      LAHCC7      128 - 128    LAHCC8      129 - 129
      LAHCC9      130 - 130    LAHCC10     131 - 131
      LAHCC11     132 - 132    LAHCC12     133 - 133
      LAHCC13     134 - 134    LAHCC90     135 - 135
      LAHCC91     136 - 136    LCTIME1     137 - 138
      LCUNIT1     139 - 139    LCDURA1     140 - 141
      LCDURB1     142 - 142    LCCHRC1     143 - 143
      LCTIME2     144 - 145    LCUNIT2     146 - 146
      LCDURA2     147 - 148    LCDURB2     149 - 149
      LCCHRC2     150 - 150    LCTIME3     151 - 152
      LCUNIT3     153 - 153    LCDURA3     154 - 155
      LCDURB3     156 - 156    LCCHRC3     157 - 157
      LCTIME4     158 - 159    LCUNIT4     160 - 160
      LCDURA4     161 - 162    LCDURB4     163 - 163
      LCCHRC4     164 - 164    LCTIME5     165 - 166
      LCUNIT5     167 - 167    LCDURA5     168 - 169
      LCDURB5     170 - 170    LCCHRC5     171 - 171
      LCTIME6     172 - 173    LCUNIT6     174 - 174
      LCDURA6     175 - 176    LCDURB6     177 - 177
      LCCHRC6     178 - 178    LCTIME7     179 - 180
      LCUNIT7     181 - 181    LCDURA7     182 - 183
      LCDURB7     184 - 184    LCCHRC7     185 - 185
      LCTIME8     186 - 187    LCUNIT8     188 - 188
      LCDURA8     189 - 190    LCDURB8     191 - 191
      LCCHRC8     192 - 192    LCTIME9     193 - 194
      LCUNIT9     195 - 195    LCDURA9     196 - 197
      LCDURB9     198 - 198    LCCHRC9     199 - 199
      LCTIME10    200 - 201    LCUNIT10    202 - 202
      LCDURA10    203 - 204    LCDURB10    205 - 205
      LCCHRC10    206 - 206    LCTIME11    207 - 208
      LCUNIT11    209 - 209    LCDURA11    210 - 211
      LCDURB11    212 - 212    LCCHRC11    213 - 213
      LCTIME12    214 - 215    LCUNIT12    216 - 216
      LCDURA12    217 - 218    LCDURB12    219 - 219
      LCCHRC12    220 - 220    LCTIME13    221 - 222
      LCUNIT13    223 - 223    LCDURA13    224 - 225
      LCDURB13    226 - 226    LCCHRC13    227 - 227
      LCTIME90    228 - 229    LCUNIT90    230 - 230
      LCDURA90    231 - 232    LCDURB90    233 - 233
      LCCHRC90    234 - 234    LCTIME91    235 - 236
      LCUNIT91    237 - 237    LCDURA91    238 - 239
      LCDURB91    240 - 240    LCCHRC91    241 - 241
      LAHCA1      242 - 242    LAHCA2      243 - 243
      LAHCA3      244 - 244    LAHCA4      245 - 245
      LAHCA5      246 - 246    LAHCA6      247 - 247
      LAHCA7      248 - 248    LAHCA8      249 - 249
      LAHCA9      250 - 250    LAHCA10     251 - 251
      LAHCA11     252 - 252    LAHCA12     253 - 253
      LAHCA13     254 - 254    LAHCA14     255 - 255
      LAHCA15     256 - 256    LAHCA16     257 - 257
      LAHCA17     258 - 258    LAHCA18     259 - 259
      LAHCA19     260 - 260    LAHCA20     261 - 261
      LAHCA21     262 - 262    LAHCA22     263 - 263
      LAHCA23     264 - 264    LAHCA24     265 - 265
      LAHCA25     266 - 266    LAHCA26     267 - 267
      LAHCA27     268 - 268    LAHCA28     269 - 269
      LAHCA29     270 - 270    LAHCA30     271 - 271
      LAHCA31     272 - 272    LAHCA32     273 - 273
      LAHCA33     274 - 274    LAHCA34     275 - 275
      LAHCA90     276 - 276    LAHCA91     277 - 277
      LATIME1     278 - 279    LAUNIT1     280 - 280
      LADURA1     281 - 282    LADURB1     283 - 283
      LACHRC1     284 - 284    LATIME2     285 - 286
      LAUNIT2     287 - 287    LADURA2     288 - 289
      LADURB2     290 - 290    LACHRC2     291 - 291
      LATIME3     292 - 293    LAUNIT3     294 - 294
      LADURA3     295 - 296    LADURB3     297 - 297
      LACHRC3     298 - 298    LATIME4     299 - 300
      LAUNIT4     301 - 301    LADURA4     302 - 303
      LADURB4     304 - 304    LACHRC4     305 - 305
      LATIME5     306 - 307    LAUNIT5     308 - 308
      LADURA5     309 - 310    LADURB5     311 - 311
      LACHRC5     312 - 312    LATIME6     313 - 314
      LAUNIT6     315 - 315    LADURA6     316 - 317
      LADURB6     318 - 318    LACHRC6     319 - 319
      LATIME7     320 - 321    LAUNIT7     322 - 322
      LADURA7     323 - 324    LADURB7     325 - 325
      LACHRC7     326 - 326    LATIME8     327 - 328
      LAUNIT8     329 - 329    LADURA8     330 - 331
      LADURB8     332 - 332    LACHRC8     333 - 333
      LATIME9     334 - 335    LAUNIT9     336 - 336
      LADURA9     337 - 338    LADURB9     339 - 339
      LACHRC9     340 - 340    LATIME10    341 - 342
      LAUNIT10    343 - 343    LADURA10    344 - 345
      LADURB10    346 - 346    LACHRC10    347 - 347
      LATIME11    348 - 349    LAUNIT11    350 - 350
      LADURA11    351 - 352    LADURB11    353 - 353
      LACHRC11    354 - 354    LATIME12    355 - 356
      LAUNIT12    357 - 357    LADURA12    358 - 359
      LADURB12    360 - 360    LACHRC12    361 - 361
      LATIME13    362 - 363    LAUNIT13    364 - 364
      LADURA13    365 - 366    LADURB13    367 - 367
      LACHRC13    368 - 368    LATIME14    369 - 370
      LAUNIT14    371 - 371    LADURA14    372 - 373
      LADURB14    374 - 374    LACHRC14    375 - 375
      LATIME15    376 - 377    LAUNIT15    378 - 378
      LADURA15    379 - 380    LADURB15    381 - 381
      LACHRC15    382 - 382    LATIME16    383 - 384
      LAUNIT16    385 - 385    LADURA16    386 - 387
      LADURB16    388 - 388    LACHRC16    389 - 389
      LATIME17    390 - 391    LAUNIT17    392 - 392
      LADURA17    393 - 394    LADURB17    395 - 395
      LACHRC17    396 - 396    LATIME18    397 - 398
      LAUNIT18    399 - 399    LADURA18    400 - 401
      LADURB18    402 - 402    LACHRC18    403 - 403
      LATIME19    404 - 405    LAUNIT19    406 - 406
      LADURA19    407 - 408    LADURB19    409 - 409
      LACHRC19    410 - 410    LATIME20    411 - 412
      LAUNIT20    413 - 413    LADURA20    414 - 415
      LADURB20    416 - 416    LACHRC20    417 - 417
      LATIME21    418 - 419    LAUNIT21    420 - 420
      LADURA21    421 - 422    LADURB21    423 - 423
      LACHRC21    424 - 424    LATIME22    425 - 426
      LAUNIT22    427 - 427    LADURA22    428 - 429
      LADURB22    430 - 430    LACHRC22    431 - 431
      LATIME23    432 - 433    LAUNIT23    434 - 434
      LADURA23    435 - 436    LADURB23    437 - 437
      LACHRC23    438 - 438    LATIME24    439 - 440
      LAUNIT24    441 - 441    LADURA24    442 - 443
      LADURB24    444 - 444    LACHRC24    445 - 445
      LATIME25    446 - 447    LAUNIT25    448 - 448
      LADURA25    449 - 450    LADURB25    451 - 451
      LACHRC25    452 - 452    LATIME26    453 - 454
      LAUNIT26    455 - 455    LADURA26    456 - 457
      LADURB26    458 - 458    LACHRC26    459 - 459
      LATIME27    460 - 461    LAUNIT27    462 - 462
      LADURA27    463 - 464    LADURB27    465 - 465
      LACHRC27    466 - 466    LATIME28    467 - 468
      LAUNIT28    469 - 469    LADURA28    470 - 471
      LADURB28    472 - 472    LACHRC28    473 - 473
      LATIME29    474 - 475    LAUNIT29    476 - 476
      LADURA29    477 - 478    LADURB29    479 - 479
      LACHRC29    480 - 480    LATIME30    481 - 482
      LAUNIT30    483 - 483    LADURA30    484 - 485
      LADURB30    486 - 486    LACHRC30    487 - 487
      LATIME31    488 - 489    LAUNIT31    490 - 490
      LADURA31    491 - 492    LADURB31    493 - 493
      LACHRC31    494 - 494    LATIME32    495 - 496
      LAUNIT32    497 - 497    LADURA32    498 - 499
      LADURB32    500 - 500    LACHRC32    501 - 501
      LATIME33    502 - 503    LAUNIT33    504 - 504
      LADURA33    505 - 506    LADURB33    507 - 507
      LACHRC33    508 - 508    LATIME34    509 - 510
      LAUNIT34    511 - 511    LADURA34    512 - 513
      LADURB34    514 - 514    LACHRC34    515 - 515
      LATIME90    516 - 517    LAUNIT90    518 - 518
      LADURA90    519 - 520    LADURB90    521 - 521
      LACHRC90    522 - 522    LATIME91    523 - 524
      LAUNIT91    525 - 525    LADURA91    526 - 527
      LADURB91    528 - 528    LACHRC91    529 - 529
      LCONDRT     530 - 530    LACHRONR    531 - 531
      PHSTAT      532 - 532

      PDMED12M    533 - 533    PNMED12M    534 - 534
      PHOSPYR     535 - 535    HOSPNO      536 - 538
      HPNITE      539 - 541    PHCHM2W     542 - 542
      PHCHMN2W    543 - 544    PHCPH2WR    545 - 545
      PHCPHN2W    546 - 547    PHCDV2W     548 - 548
      PHCDVN2W    549 - 550    P10DVYR     551 - 551

      HIKINDA     552 - 552    HIKINDB     553 - 553
      HIKINDC     554 - 554    HIKINDD     555 - 555
      HIKINDE     556 - 556    HIKINDF     557 - 557
      HIKINDG     558 - 558    HIKINDH     559 - 559
      HIKINDI     560 - 560    HIKINDJ     561 - 561
      HIKINDK     562 - 562    HIKINDL     563 - 563
      HIKINDM     564 - 564    HIKINDN     565 - 565
      MEDICARE    566 - 566    MCPART      567 - 567
      MCCHOICE    568 - 568    MCHMO       569 - 569
      MCNAME      570 - 571    MCREF       572 - 572
      MCPAYPRE    573 - 573    MEDICAID    574 - 574
      MACHMD      575 - 575    MAPCMD      576 - 576
      MAREF       577 - 577    SINGLE      578 - 578
      SSTYPEA     579 - 579    SSTYPEB     580 - 580
      SSTYPEC     581 - 581    SSTYPED     582 - 582
      SSTYPEE     583 - 583    SSTYPEF     584 - 584
      SSTYPEG     585 - 585    SSTYPEH     586 - 586
      SSTYPEI     587 - 587    SSTYPEJ     588 - 588
      SSTYPEK     589 - 589    SSTYPEL     590 - 590
      PRIVATE     591 - 591    HITYPE1     592 - 593
      WHONAM1     594 - 594    PLNWRK1     595 - 595
      PLNPAY11    596 - 596    PLNPAY21    597 - 597
      PLNPAY31    598 - 598    PLNPAY41    599 - 599
      PLNPAY51    600 - 600    PLNPAY61    601 - 601
      PLNPAY71    602 - 602    HICOSTR1    603 - 607
      PLNMGD1     608 - 608    MGCHMD1     609 - 609
      MGPRMD1     610 - 610    MGPYMD1     611 - 611
      MGPREF1     612 - 612    HITYPE2     613 - 614
      WHONAM2     615 - 615    PLNWRK2     616 - 616
      PLNPAY12    617 - 617    PLNPAY22    618 - 618
      PLNPAY32    619 - 619    PLNPAY42    620 - 620
      PLNPAY52    621 - 621    PLNPAY62    622 - 622
      PLNPAY72    623 - 623    HICOSTR2    624 - 628
      PLNMGD2     629 - 629    MGCHMD2     630 - 630
      MGPRMD2     631 - 631    MGPYMD2     632 - 632
      MGPREF2     633 - 633    HITYPE3     634 - 635
      WHONAM3     636 - 636    PLNWRK3     637 - 637
      PLNPAY13    638 - 638    PLNPAY23    639 - 639
      PLNPAY33    640 - 640    PLNPAY43    641 - 641
      PLNPAY53    642 - 642    PLNPAY63    643 - 643
      PLNPAY73    644 - 644    HICOSTR3    645 - 649
      PLNMGD3     650 - 650    MGCHMD3     651 - 651
      MGPRMD3     652 - 652    MGPYMD3     653 - 653
      MGPREF3     654 - 654    HITYPE4     655 - 656
      WHONAM4     657 - 657    PLNWRK4     658 - 658
      PLNPAY14    659 - 659    PLNPAY24    660 - 660
      PLNPAY34    661 - 661    PLNPAY44    662 - 662
      PLNPAY54    663 - 663    PLNPAY64    664 - 664
      PLNPAY74    665 - 665    HICOSTR4    666 - 670
      PLNMGD4     671 - 671    MGCHMD4     672 - 672
      MGPRMD4     673 - 673    MGPYMD4     674 - 674
      MGPREF4     675 - 675    IHS         676 - 676
      MILITARY    677 - 677    CHIP        678 - 678
      OTHERPUB    679 - 679    OTHERGOV    680 - 680
      NOTCOV      681 - 681    HILAST      682 - 682
      HISTOP1     683 - 683    HISTOP2     684 - 684
      HISTOP3     685 - 685    HISTOP4     686 - 686
      HISTOP5     687 - 687    HISTOP6     688 - 688
      HISTOP7     689 - 689    HISTOP8     690 - 690
      HISTOP9     691 - 691    HISTOP10    692 - 692
      HISTOP11    693 - 693    HISTOP12    694 - 694
      HISTOP13    695 - 695    HISTOP14    696 - 696
      HISTOP15    697 - 697    HINOTYR     698 - 698
      HINOTMYR    699 - 700    HCSPFYR     701 - 701

      REGIONBR    702 - 703    GEOBRTH     704 - 704
      YRSINUS     705 - 705    CITIZENP    706 - 706
      HEADST      707 - 707    HEADSTV1    708 - 708
      EDUC        709 - 710    EDUC_R1     711 - 712
      MILTRYDS    713 - 713    DOINGLW1    714 - 714
      WHYNOWK1    715 - 716    WRKHRS      717 - 718
      WRKFTALL    719 - 719    WRKLYR1     720 - 720
      WRKMYR      721 - 722    MAJR_ACT    723 - 723
      ERNYR_P     724 - 725    HIEMPOF     726 - 726

      PSAL        727 - 727    PSEINC      728 - 728
      PSSRR       729 - 729    PSSRRDB     730 - 730
      PSSRRD      731 - 731    PPENS       732 - 732
      POPENS      733 - 733    PSSI        734 - 734
      PSSID       735 - 735    PTANF       736 - 736
      POWBEN      737 - 737    PINTRSTR    738 - 738
      PDIVD       739 - 739    PCHLDSP     740 - 740
      PINCOT      741 - 741    INCGRP      742 - 743
      AB_BL20K    744 - 744    RAT_CAT     745 - 746
      HOUSEOWN    747 - 747    FGAH        748 - 748
      PSSAPL      749 - 749    PSDAPL      750 - 750
      TANFMYR     751 - 752    PFSTP       753 - 753
      FSTPMYR     754 - 755    ELIGPWIC    756 - 756
      PWIC        757 - 757    WIC_FLAG    758 - 758;

   * DEFINE VARIABLE LABELS;

   LABEL
      RECTYPE  ="Record Type"
      SRVY_YR  ="Survey Year"
      HHX      ="Household Serial Number"
      FMX      ="Family Serial Number"
      PX       ="Person Number"
      INTV_QRT ="Interview Quarter"
      SEX      ="Sex"
      AGE_P    ="Age"
      R_AGE1   ="Age Recode #1"
      R_AGE2   ="Age Recode #2"
      DOB_M    ="Month of Birth"
      DOB_Y_P  ="Year of Birth"
      ORIGIN_I ="Hispanic Ethnicity"
      ORIGIMPT ="Hispanic Origin Imputation Flag"
      HISPAN_I ="Hispanic subgroup detail"
      HISPIMPT ="Type of Hispanic Origin Imputation Flag"
      RACERPI2 ="OMB groups w/multiple race"
      RACEIMP2 ="Race Imputation Flag"
      MRACRPI2 ="Race coded to single/multiple race group"
      MRACBPI2 ="Race coded to single/multiple race group"
      RACRECI2 ="Race Recode"
      HISCODI2 ="Race/ethnicity recode"
      ERIMPFLG ="Ethnicity/Race Imputation Flag"
      R_MARITL ="Marital status"
      COHAB1   ="Cohabitor ever married?"
      COHAB2   ="Legal marital status/cohab. respondent"
      LG_MSTAT ="Legal marital status"
      CDCMSTAT ="CDC standard for legal marital status"
      RRP      ="Relationship to HH reference person"
      HH_REF   ="Person # of HH reference person"
      HHREFLG  ="HH Reference Person Flag"
      FRRP     ="Rel to family ref person"
      FM_REF   ="Person # of family reference person"
      FMREFLG  ="Family Reference Person Flag"
      FM_RESP  ="Person # of family respondent"
      FMRPFLG  ="Family Respondent Flag"
      SIB_DEG  ="Degree of sib rel to HH ref person"
      MOTHER   ="Mother's person number"
      MOM_DEG  ="Type of relationship with Mother"
      FATHER   ="Father's person number"
      DAD_DEG  ="Type of relationship with Father"
      GUARD    ="Person number of guardian"
      PARENTS  ="Parent(s) present in the family"
      MOM_ED   ="Education of Mother"
      DAD_ED   ="Education of Father"
      FM_SIZE  ="Number of persons in family"
      FM_TYPE  ="Family Type (on the person-level)"
      FM_STRCP ="Family Structure (at the person-level)"
      FM_STRP  ="Family Structure (on the person-level)"
      NOWAF    ="Armed Forces - active duty"
      ASTATFLG ="Sample Adult Flag"
      CSTATFLG ="Sample Child Flag"
      IMMUNFLG ="Child Immunization Flag"
      REGION   ="Region"
      WTIA     ="Weight - Interim Annual"
      WTFA     ="Weight - Final Annual"
      STRATUM  ="Stratum for variance estimation"
      PSU      ="PSU for variance estimation"
 
      PLAPLYLM ="Limited in kind/amount play"
      PLAPLYUN ="Is -- able to play AT ALL"
      PSPEDEIS ="Does -- receive Spec Ed or EIS"
      PSPEDEM  ="Rec services due to emot or behav prob"
      PLAADL   ="Does -- need help w/ADL"
      LABATH   ="Need help with bath/shower"
      LADRESS  ="Need help dressing"
      LAEAT    ="Need help eating"
      LABED    ="Need help in/out of bed or chairs"
      LATOILT  ="Need help using the toilet"
      LAHOME   ="Need help getting around in home"
      PLAIADL  ="Need help with IADL"
      PLAWKNOW ="Is -- unable to work due to health prob"
      PLAWKLIM ="Limited in kind/amt of work"
      PLAWALK  ="Difficulty walking w/o equip"
      PLAREMEM ="Limited by dif remembering"
      PLIMANY  ="Is -- limited in ANY (other) WAY?"
      LA1AR    ="Any limitation - all persons, all conds"
      LAHCC1   ="Vision problem"
      LAHCC2   ="Hearing problem"
      LAHCC3   ="Speech problem"
      LAHCC4   ="Asthma/breathing problem"
      LAHCC5   ="Birth defect"
      LAHCC6   ="Injury"
      LAHCC7   ="Mental retardation"
      LAHCC8   ="Other developmental problem"
      LAHCC9   ="Other emotional/behavioral problem"
      LAHCC10  ="Bone/joint/muscle problem"
      LAHCC11  ="Epilepsy/seizures"
      LAHCC12  ="Learning disability"
      LAHCC13  ="ADD/ADHD"
      LAHCC90  ="Other impairment/problem (1)"
      LAHCC91  ="Other impairment/problem (2)"
      LCTIME1  ="Duration of vision prob: # of units"
      LCUNIT1  ="Duration of vision prob: Time unit"
      LCDURA1  ="Duration of vision prob (in years)"
      LCDURB1  ="Duration of vision prob recode 2"
      LCCHRC1  ="Vision problem condition status"
      LCTIME2  ="Duration of hearing prob: # of units"
      LCUNIT2  ="Duration of hearing prob: Time unit"
      LCDURA2  ="Duration of hearing prob (in years)"
      LCDURB2  ="Duration of hearing prob recode 2"
      LCCHRC2  ="Hearing problem condition status"
      LCTIME3  ="Duration of speech prob: # of units"
      LCUNIT3  ="Duration of speech prob: Time unit"
      LCDURA3  ="Duration of speech prob (in years)"
      LCDURB3  ="Duration of speech prob recode 2"
      LCCHRC3  ="Speech problem condition status"
      LCTIME4  ="Dur of asthma/breathing prob: # of units"
      LCUNIT4  ="Dur of asthma/breathing prob: Time unit"
      LCDURA4  ="Dur of asthma/breathing prob (in years)"
      LCDURB4  ="Dur of asthma/breathing prob recode 2"
      LCCHRC4  ="Asthma/breathing prob condition status"
      LCTIME5  ="Duration of birth defect: # of units"
      LCUNIT5  ="Duration of birth defect: Time unit"
      LCDURA5  ="Duration of birth defect (in years)"
      LCDURB5  ="Duration of birth defect recode 2"
      LCCHRC5  ="Birth defect condition status"
      LCTIME6  ="Duration of injury: # of units"
      LCUNIT6  ="Duration of injury: Time unit"
      LCDURA6  ="Duration of injury (in years)"
      LCDURB6  ="Duration of injury recode 2"
      LCCHRC6  ="Injury condition status"
      LCTIME7  ="Dur of mental retardation: # of units"
      LCUNIT7  ="Dur of mental retardation: Time unit"
      LCDURA7  ="Dur of mental retardation (in years)"
      LCDURB7  ="Duration of mental retardation recode 2"
      LCCHRC7  ="Mental retardation condition status"
      LCTIME8  ="Duration of other dev prob: # of units"
      LCUNIT8  ="Duration of other dev prob: Time unit"
      LCDURA8  ="Duration of other dev prob (in years)"
      LCDURB8  ="Duration of other dev prob recode 2"
      LCCHRC8  ="Other dev problem condition status"
      LCTIME9  ="Dur of otr emot/behav prob: # of units"
      LCUNIT9  ="Dur of otr emot/behav prob: Time unit"
      LCDURA9  ="Dur of otr emot/behav prob (in years)"
      LCDURB9  ="Duration of otr emot/behav prob recode 2"
      LCCHRC9  ="Otr emot/behav problem condition status"
      LCTIME10 ="Dur of bone/joint/muscl prob: # of units"
      LCUNIT10 ="Dur of bone/joint/muscl prob: Time unit"
      LCDURA10 ="Dur of bone/joint/muscl prob (in years)"
      LCDURB10 ="Dur of bone/joint/muscl prob recode 2"
      LCCHRC10 ="Bone/joint/muscl prob condition status"
      LCTIME11 ="Dur of epilepsy/seizures: # of units"
      LCUNIT11 ="Duration of epilepsy/seizures: Time unit"
      LCDURA11 ="Duration of epilepsy/seizures (in years)"
      LCDURB11 ="Duration of epilepsy/seizures recode 2"
      LCCHRC11 ="Epilepsy/seizures condition status"
      LCTIME12 ="Dur of learning disability: # of units"
      LCUNIT12 ="Dur of learning disability: Time unit"
      LCDURA12 ="Dur of learning disability (in years)"
      LCDURB12 ="Duration of learning disability recode 2"
      LCCHRC12 ="Learning disability condition status"
      LCTIME13 ="Duration of ADD/ADHD: # of units"
      LCUNIT13 ="Duration of ADD/ADHD: Time unit"
      LCDURA13 ="Duration of ADD/ADHD (in years)"
      LCDURB13 ="Duration of ADD/ADHD recode 2"
      LCCHRC13 ="ADD/ADHD condition status"
      LCTIME90 ="Dur of oth impair/prob (1): # of units"
      LCUNIT90 ="Dur of oth impair/prob (1): Time unit"
      LCDURA90 ="Dur of oth impair/prob (1) (in years)"
      LCDURB90 ="Dur of oth impair/prob (1) recode 2"
      LCCHRC90 ="Other impair/prob (1) condition status"
      LCTIME91 ="Dur of oth impair/prob (2): # of units"
      LCUNIT91 ="Dur of oth impair/prob (2): Time unit"
      LCDURA91 ="Dur of oth impair/prob (2) (in years)"
      LCDURB91 ="Dur of oth impair/prob (2) recode 2"
      LCCHRC91 ="Other impair/prob (2) condition status"
      LAHCA1   ="Vision problem"
      LAHCA2   ="Hearing problem"
      LAHCA3   ="Arthritis/rheumatism"
      LAHCA4   ="Back/neck problem"
      LAHCA5   ="Fracture/bone/joint injury"
      LAHCA6   ="Other injury"
      LAHCA7   ="Heart problem"
      LAHCA8   ="Stroke"
      LAHCA9   ="Hypertension/high blood pressure"
      LAHCA10  ="Diabetes"
      LAHCA11  ="Lung/breathing prob/asthma/emphysema"
      LAHCA12  ="Cancer"
      LAHCA13  ="Birth defect"
      LAHCA14  ="Mental retardation"
      LAHCA15  ="Otr developmental prob/cerebral palsy"
      LAHCA16  ="Senility/dementia/alzheimers"
      LAHCA17  ="Depression/anxiety/emotional problem"
      LAHCA18  ="Weight problem/overweight/obesity"
      LAHCA19  ="Missing or amputated limb/finger/digit"
      LAHCA20  ="Musculoskeletal/connective tissue prob"
      LAHCA21  ="Circulation problem"
      LAHCA22  ="Endocrine/nutritional/metabolic prob"
      LAHCA23  ="Nervous system/sensory organ condition"
      LAHCA24  ="Digestive system problem"
      LAHCA25  ="Genitourinary system problem"
      LAHCA26  ="Skin/subcutaneous system problem"
      LAHCA27  ="Blood or blood-forming organ problem"
      LAHCA28  ="Benign tumor/cyst"
      LAHCA29  ="Alcohol/drug/substance abuse problem"
      LAHCA30  ="Otr mental prob/ADD/bipolar/schizophreni"
      LAHCA31  ="Surgical after-effects/medical treatment"
      LAHCA32  ='"Old age"/elderly/aging-related problem'
      LAHCA33  ="Fatigue/tiredness/weakness"
      LAHCA34  ="Pregnancy-related problem"
      LAHCA90  ="Other prob 1, not elsewhere classified"
      LAHCA91  ="Other prob 2, not elsewhere classified"
      LATIME1  ="Duration of vision prob: # of units"
      LAUNIT1  ="Duration of vision prob: Time unit"
      LADURA1  ="Duration of vision prob (in years)"
      LADURB1  ="Duration of vision prob recode 2"
      LACHRC1  ="Vision problem condition status"
      LATIME2  ="Duration of hearing prob: # of units"
      LAUNIT2  ="Duration of hearing prob: Time unit"
      LADURA2  ="Duration of hearing prob (in years)"
      LADURB2  ="Duration of hearing prob recode 2"
      LACHRC2  ="Hearing problem condition status"
      LATIME3  ="Duration of arthritis/rheum: # of units"
      LAUNIT3  ="Duration of arthritis/rheum: Time unit"
      LADURA3  ="Duration of arthritis/rheum (in years)"
      LADURB3  ="Duration of arthritis/rheum recode 2"
      LACHRC3  ="Arthritis/rheum condition status"
      LATIME4  ="Duration of back/neck prob: # of units"
      LAUNIT4  ="Duration of back/neck prob: Time unit"
      LADURA4  ="Duration of back/neck prob (in years)"
      LADURB4  ="Duration of back/neck prob recode 2"
      LACHRC4  ="Back/neck problem condition status"
      LATIME5  ="Dur of fract/bone/joint inj: # of units"
      LAUNIT5  ="Dur of fract/bone/joint inj: Time unit"
      LADURA5  ="Dur of fract/bone/joint inj (in years)"
      LADURB5  ="Dur of fract/bone/joint inj recode 2"
      LACHRC5  ="Fract/bone/joint inj condition status"
      LATIME6  ="Duration of other injury: # of units"
      LAUNIT6  ="Duration of other injury: Time unit"
      LADURA6  ="Duration of other injury (in years)"
      LADURB6  ="Duration of other injury recode 2"
      LACHRC6  ="Other injury condition status"
      LATIME7  ="Duration of heart prob: # of units"
      LAUNIT7  ="Duration of heart prob: Time unit"
      LADURA7  ="Duration of heart prob (in years)"
      LADURB7  ="Duration of heart prob recode 2"
      LACHRC7  ="Heart problem condition status"
      LATIME8  ="Duration of stroke: # of units"
      LAUNIT8  ="Duration of stroke: Time unit"
      LADURA8  ="Duration of stroke (in years)"
      LADURB8  ="Duration of stroke recode 2"
      LACHRC8  ="Stroke condition status"
      LATIME9  ="Duration of hypertension: # of units"
      LAUNIT9  ="Duration of hypertension: Time unit"
      LADURA9  ="Duration of hypertension (in years)"
      LADURB9  ="Duration of hypertension recode 2"
      LACHRC9  ="Hypertension condition status"
      LATIME10 ="Duration of diabetes: # of units"
      LAUNIT10 ="Duration of diabetes: Time unit"
      LADURA10 ="Duration of diabetes (in years)"
      LADURB10 ="Duration of diabetes recode 2"
      LACHRC10 ="Diabetes condition status"
      LATIME11 ="Duration of lung/breath prob: # of units"
      LAUNIT11 ="Duration of lung/breath prob: Time unit"
      LADURA11 ="Duration of lung/breath prob (in years)"
      LADURB11 ="Duration of lung/breath prob recode 2"
      LACHRC11 ="Lung/breath prob condition status"
      LATIME12 ="Duration of cancer: # of units"
      LAUNIT12 ="Duration of cancer: Time unit"
      LADURA12 ="Duration of cancer (in years)"
      LADURB12 ="Duration of cancer recode 2"
      LACHRC12 ="Cancer condition status"
      LATIME13 ="Duration of birth defect: # of units"
      LAUNIT13 ="Duration of birth defect: Time unit"
      LADURA13 ="Duration of birth defect (in years)"
      LADURB13 ="Duration of birth defect recode 2"
      LACHRC13 ="Birth defect condition status"
      LATIME14 ="Dur of mental retardation: # of units"
      LAUNIT14 ="Dur of mental retardation: Time unit"
      LADURA14 ="Dur of mental retardation (in years)"
      LADURB14 ="Duration of mental retardation recode 2"
      LACHRC14 ="Mental retardation condition status"
      LATIME15 ="Duration of otr dev prob: # of units"
      LAUNIT15 ="Duration of otr dev prob: Time unit"
      LADURA15 ="Duration of otr dev prob (in years)"
      LADURB15 ="Duration of otr dev prob recode 2"
      LACHRC15 ="Otr dev problem condition status"
      LATIME16 ="Duration of senility: # of units"
      LAUNIT16 ="Duration of senility: Time unit"
      LADURA16 ="Duration of senility (in years)"
      LADURB16 ="Duration of senility recode 2"
      LACHRC16 ="Senility condition status"
      LATIME17 ="Dur of dep/anx/emot prob: # of units"
      LAUNIT17 ="Duration of dep/anx/emot prob: Time unit"
      LADURA17 ="Duration of dep/anx/emot prob (in years)"
      LADURB17 ="Duration of dep/anx/emot prob recode 2"
      LACHRC17 ="Dep/anx/emot problem condition status"
      LATIME18 ="Duration of weight prob: # of units"
      LAUNIT18 ="Duration of weight prob: Time unit"
      LADURA18 ="Duration of weight prob (in years)"
      LADURB18 ="Duration of weight prob recode 2"
      LACHRC18 ="Weight problem condition status"
      LATIME19 ="Dur of miss limb/amputation: # of units"
      LAUNIT19 ="Dur of miss limb/amputation: Time unit"
      LADURA19 ="Dur of miss limb/amputation (in years)"
      LADURB19 ="Dur of miss limb/amputation recode 2"
      LACHRC19 ="Missing limb/amputation condition status"
      LATIME20 ="Dur of musculoskeletal prob: # of units"
      LAUNIT20 ="Dur of musculoskeletal prob: Time unit"
      LADURA20 ="Dur of musculoskeletal prob: (in years)"
      LADURB20 ="Dur of musculoskeletal prob recode 2"
      LACHRC20 ="Musculoskeletal problem condition status"
      LATIME21 ="Duration of circulatory prob: # of units"
      LAUNIT21 ="Duration of circulatory prob: Time unit"
      LADURA21 ="Duration of circulatory prob (in years)"
      LADURB21 ="Duration of circulatory prob recode 2"
      LACHRC21 ="Circulatory problem condition status"
      LATIME22 ="Duration of endocrine prob: # of units"
      LAUNIT22 ="Duration of endocrine problem: Time unit"
      LADURA22 ="Duration of endocrine problem (in years)"
      LADURB22 ="Duration of endocrine problem recode 2"
      LACHRC22 ="Endocrine problem condition status"
      LATIME23 ="Duration of nervous sys cond: # of units"
      LAUNIT23 ="Duration of nervous sys cond: Time unit"
      LADURA23 ="Duration of nervous sys cond (in years)"
      LADURB23 ="Duration of nervous sys cond recode 2"
      LACHRC23 ="Nervous sys condition status"
      LATIME24 ="Dur of digestive prob: # of units"
      LAUNIT24 ="Dur of digestive prob: Time unit"
      LADURA24 ="Dur of digestive prob (in years)"
      LADURB24 ="Duration of digestive prob recode 2"
      LACHRC24 ="Digestive problem condition status"
      LATIME25 ="Dur of genitourinary prob: # of units"
      LAUNIT25 ="Dur of genitourinary prob: Time unit"
      LADURA25 ="Dur of genitourinary prob (in years)"
      LADURB25 ="Duration of genitourinary prob recode 2"
      LACHRC25 ="Genitourinary prob condition status"
      LATIME26 ="Duration of skin problem: # of units"
      LAUNIT26 ="Duration of skin problem: Time unit"
      LADURA26 ="Duration of skin problem (in years)"
      LADURB26 ="Duration of skin problem recode 2"
      LACHRC26 ="Skin problem condition status"
      LATIME27 ="Duration of blood problem: # of units"
      LAUNIT27 ="Duration of blood problem: Time unit"
      LADURA27 ="Duration of blood problem (in years)"
      LADURB27 ="Blood problem recode 2"
      LACHRC27 ="Blood problem condition status"
      LATIME28 ="Duration of benign tumor: # of units"
      LAUNIT28 ="Duration of benign tumor: Time unit"
      LADURA28 ="Duration of benign tumor (in years)"
      LADURB28 ="Duration of benign tumor recode 2"
      LACHRC28 ="Benign tumor condition status"
      LATIME29 ="Dur of alcohol/drug prob: # of units"
      LAUNIT29 ="Duration of alcohol/drug prob: Time unit"
      LADURA29 ="Duration of alcohol/drug prob (in years)"
      LADURB29 ="Duration of alcohol/drug prob recode 2"
      LACHRC29 ="Alcohol or drug prob condition status"
      LATIME30 ="Duration of oth mental prob: # of units"
      LAUNIT30 ="Duration of oth mental prob: Time unit"
      LADURA30 ="Duration of oth mental prob (in years)"
      LADURB30 ="Duration of oth mental prob recode 2"
      LACHRC30 ="Oth mental prob condition status"
      LATIME31 ="Dur of surg after-effects: # of units"
      LAUNIT31 ="Dur of surg after-effects: Time unit"
      LADURA31 ="Dur of surg after-effects (in years)"
      LADURB31 ="Duration of surg after-effects recode 2"
      LACHRC31 ="Surgical after-effects condition status"
      LATIME32 ='Duration of "old age": # of units'
      LAUNIT32 ='Duration of "old age": Time unit'
      LADURA32 ='Duration of "old age" (in years)'
      LADURB32 ='Duration of "old age" recode 2'
      LACHRC32 ='"Old age" condition status'
      LATIME33 ="Duration of fatigue prob: # of units"
      LAUNIT33 ="Duration of fatigue prob: Time unit"
      LADURA33 ="Duration of fatigue prob (in years)"
      LADURB33 ="Duration of fatigue prob recode 2"
      LACHRC33 ="Fatigue problem condition status"
      LATIME34 ="Dur of preg-related prob: # of units"
      LAUNIT34 ="Duration of preg-related prob: Time unit"
      LADURA34 ="Duration of preg-related prob (in years)"
      LADURB34 ="Duration of preg-related prob recode 2"
      LACHRC34 ="Pregnancy-related prob condition status"
      LATIME90 ="Dur of oth N.E.C. prob (1): # of units"
      LAUNIT90 ="Dur of oth N.E.C. prob (1): Time unit"
      LADURA90 ="Dur of oth N.E.C. prob (1) (in years)"
      LADURB90 ="Dur of oth N.E.C. prob (1) recode 2"
      LACHRC90 ="Other N.E.C. prob (1) condition status"
      LATIME91 ="Dur of oth N.E.C. prob (2): # of units"
      LAUNIT91 ="Dur of oth N.E.C. prob (2): Time unit"
      LADURA91 ="Dur of oth N.E.C. prob (2) (in years)"
      LADURB91 ="Dur of oth N.E.C. prob (2) recode 2"
      LACHRC91 ="Other N.E.C. prob (2) condition status"
      LCONDRT  ="Chronic cond rec for person with LA"
      LACHRONR ="Lim of activ recode by chron cond status"
      PHSTAT   ="Reported health status"
 
      PDMED12M ="Was med care delayed for - - (cost), 12m"
      PNMED12M ="Did--need+NOT get med care (cost), 12m"
      PHOSPYR  ="Was - - in a hospital OVERNIGHT, 12m"
      HOSPNO   ="Number of times in hosp overnight, 12m"
      HPNITE   ="Number of nights in hospital, 12m"
      PHCHM2W  ="Did - - rec HOME care by hlth prof, 2 wk"
      PHCHMN2W ="Number of HOME visits by hlth prof, 2wk"
      PHCPH2WR ="Did--get adv/test results by phone, 2wk"
      PHCPHN2W ="Number of PHONE calls to hlth prof, 2wk"
      PHCDV2W  ="Did - - see hlth prof in office etc, 2wk"
      PHCDVN2W ="Number of times VISITED hlth prof, 2wk"
      P10DVYR  ="Did - - receive care 10+ times, 12m"
 
      HIKINDA  ="Private hlth ins from employer or work"
      HIKINDB  ="Private hlth ins purchased directly"
      HIKINDC  ="Private health insurance through gov/com"
      HIKINDD  ="Medicare"
      HIKINDE  ="Medi-Gap"
      HIKINDF  ="Medicaid"
      HIKINDG  ="Children's Health Insurance Program"
      HIKINDH  ="Military hlth care/VA"
      HIKINDI  ="TRICARE/CHAMPUS/CHAMP-VA"
      HIKINDJ  ="Indian Health Service"
      HIKINDK  ="State-sponsored health plan"
      HIKINDL  ="Other government program"
      HIKINDM  ="Single service plan"
      HIKINDN  ="No Health Insurance"
      MEDICARE ="Medicare coverage recode"
      MCPART   ="Type of Medicare coverage"
      MCCHOICE ="Enrolled in Medicare Plus Choice"
      MCHMO    ="Is - - signed up with an HMO?"
      MCNAME   ="Type of Medicare HMO"
      MCREF    ="Need a referral for special care"
      MCPAYPRE ="More comprehensive benefit plan"
      MEDICAID ="Medicaid coverage recode"
      MACHMD   ="Any doc, choose from list, doc assigned"
      MAPCMD   ="Primary care physician for routine care"
      MAREF    ="Need a referral for special care"
      SINGLE   ="Single service plan recode"
      SSTYPEA  ="Accidents"
      SSTYPEB  ="AIDS care"
      SSTYPEC  ="Cancer treatment"
      SSTYPED  ="Catastrophic care"
      SSTYPEE  ="Dental care"
      SSTYPEF  ="Disability insurance"
      SSTYPEG  ="Hospice care"
      SSTYPEH  ="Hospitalization only"
      SSTYPEI  ="Long-term care"
      SSTYPEJ  ="Prescriptions"
      SSTYPEK  ="Vision care"
      SSTYPEL  ="Other"
      PRIVATE  ="Private health insurance coverage recode"
      HITYPE1  ="Name of plan (Plan 1)"
      WHONAM1  ="Plan in whose name (Plan 1)"
      PLNWRK1  ="Originally thrgh work or union (Plan 1)"
      PLNPAY11 ="Paid for by self or family (Plan 1)"
      PLNPAY21 ="Paid for by employer or union (Plan 1)"
      PLNPAY31 ="Paid by someone outside household Plan 1"
      PLNPAY41 ="Paid for by Medicare (Plan 1)"
      PLNPAY51 ="Paid for by Medicaid (Plan 1)"
      PLNPAY61 ="Paid for by CHIP (Plan 1)"
      PLNPAY71 ="Paid for by government program (Plan 1)"
      HICOSTR1 ="Out-of-pocket premium cost (Plan 1)"
      PLNMGD1  ="Type of plan (Plan 1)"
      MGCHMD1  ="Doctor choice (Plan 1)"
      MGPRMD1  ="Preferred list (Plan 1)"
      MGPYMD1  ="Out of plan use (Plan 1)"
      MGPREF1  ="Private referral (plan 1)"
      HITYPE2  ="Name of plan (Plan 2)"
      WHONAM2  ="Plan in whose name (Plan 2)"
      PLNWRK2  ="Originally thrgh work or union (Plan 2)"
      PLNPAY12 ="Paid for by self or family (Plan 2)"
      PLNPAY22 ="Paid for by employer or union (Plan 2)"
      PLNPAY32 ="Paid by someone outside household Plan 2"
      PLNPAY42 ="Paid for by Medicare (Plan 2)"
      PLNPAY52 ="Paid for by Medicaid (Plan 2)"
      PLNPAY62 ="Paid for by CHIP (Plan 2)"
      PLNPAY72 ="Paid for by government program (Plan 2)"
      HICOSTR2 ="Out-of-pocket premium cost (Plan 2)"
      PLNMGD2  ="Type of plan (Plan 2)"
      MGCHMD2  ="Doctor choice (Plan 2)"
      MGPRMD2  ="Preferred list (Plan 2)"
      MGPYMD2  ="Out of plan use (Plan 2)"
      MGPREF2  ="Private referral (plan 2)"
      HITYPE3  ="Name of plan (Plan 3)"
      WHONAM3  ="Plan in whose name (Plan 3)"
      PLNWRK3  ="Originally thrgh work or union (Plan 3)"
      PLNPAY13 ="Paid for by self or family (Plan 3)"
      PLNPAY23 ="Paid for by employer or union (Plan 3)"
      PLNPAY33 ="Paid by someone outside household Plan 3"
      PLNPAY43 ="Paid for by Medicare (Plan 3)"
      PLNPAY53 ="Paid for by Medicaid (Plan 3)"
      PLNPAY63 ="Paid for by CHIP (Plan 3)"
      PLNPAY73 ="Paid for by government program (Plan 3)"
      HICOSTR3 ="Out-of-pocket premium cost (Plan 3)"
      PLNMGD3  ="Type of plan (Plan 3)"
      MGCHMD3  ="Doctor choice (Plan 3)"
      MGPRMD3  ="Preferred list (Plan 3)"
      MGPYMD3  ="Out of plan use (Plan 3)"
      MGPREF3  ="Private referral (plan 3)"
      HITYPE4  ="Name of plan (Plan 4)"
      WHONAM4  ="Plan in whose name (Plan 4)"
      PLNWRK4  ="Originally thrgh work or union (Plan 4)"
      PLNPAY14 ="Paid for by self or family (Plan 4)"
      PLNPAY24 ="Paid for by employer or union (Plan 4)"
      PLNPAY34 ="Paid by someone outside household Plan 4"
      PLNPAY44 ="Paid for by Medicare (Plan 4)"
      PLNPAY54 ="Paid for by Medicaid (Plan 4)"
      PLNPAY64 ="Paid for by CHIP (Plan 4)"
      PLNPAY74 ="Paid for by government program (Plan 4)"
      HICOSTR4 ="Out-of-pocket premium cost (Plan 4)"
      PLNMGD4  ="Type of plan (Plan 4)"
      MGCHMD4  ="Doctor choice (Plan 4)"
      MGPRMD4  ="Preferred list (Plan 4)"
      MGPYMD4  ="Out of plan use (Plan 4)"
      MGPREF4  ="Private referral (plan 4)"
      IHS      ="Indian Health Service Recode"
      MILITARY ="Military coverage recode"
      CHIP     ="Children's Hlth Ins Program Recode"
      OTHERPUB ="Other State-Sponsored Health Plan Recode"
      OTHERGOV ="Other government programs Recode"
      NOTCOV   ="Cov stat as used in Health United States"
      HILAST   ="How long since last had hlth coverage"
      HISTOP1  ="Lost job or changed employers"
      HISTOP2  ="Divorced/sep/death of spouse or parent"
      HISTOP3  ="Ineligible because of age/left school"
      HISTOP4  ="Employer not offer/not eligible for cov"
      HISTOP5  ="Cost is too high"
      HISTOP6  ="Insurance company refused coverage"
      HISTOP7  ="Medicaid/Medi plan stop after pregnancy"
      HISTOP8  ="Lost Medicaid new job/increase in income"
      HISTOP9  ="Lost Medicaid (other)"
      HISTOP10 ="Other"
      HISTOP11 ="Never had health insurance"
      HISTOP12 ="Moved from another county/state/country"
      HISTOP13 ="Self-employed"
      HISTOP14 ="No need for it/chooses not to have"
      HISTOP15 ="Got married"
      HINOTYR  ="No hlth coverage during past 12 months"
      HINOTMYR ="Months without coverage in past 12 month"
      HCSPFYR  ="Amount family spent for medical care"
 
      REGIONBR ="Geographic region of birth recode"
      GEOBRTH  ="Geographic place of birth recode"
      YRSINUS  ="Years that -- has been in the U.S."
      CITIZENP ="Citizenship Status"
      HEADST   ="Now attending Head Start?"
      HEADSTV1 ="Ever attended Head Start?"
      EDUC     ="Highest level of school completed"
      EDUC_R1  ="Education Recode"
      MILTRYDS ="Ever honorably discharged (active duty)?"
      DOINGLW1 ="What was -- doing last week?"
      WHYNOWK1 ="Main reason for not working last week"
      WRKHRS   ="Total hrs worked last week/usually"
      WRKFTALL ="Does -- usually work full time?"
      WRKLYR1  ="Did -- work for pay in last year?"
      WRKMYR   ="Months in {last yr} person had 1+ jobs"
      MAJR_ACT ="Major activity in last week"
      ERNYR_P  ="{Person's} total earnings in 2002"
      HIEMPOF  ="Was health ins offered thru workplace?"
 
      PSAL     ="Rec inc from wage/sal (last CY)"
      PSEINC   ="Rec inc from self-employment (last CY)"
      PSSRR    ="Rec inc from SS or RR (last CY)"
      PSSRRDB  ="Rec'd SS or RR a disability benefit"
      PSSRRD   ="Rec'd benefit due to disability"
      PPENS    ="Rec inc from otr disab pens (last CY)"
      POPENS   ="Rec inc from any otr pens (last CY)"
      PSSI     ="Rec'd inc from SSI (last CY)"
      PSSID    ="Rec'd SSI due to disability"
      PTANF    ="Rec'd inc from Welfare/TANF (last CY)"
      POWBEN   ="Rec'd otr govt assistance (last CY)"
      PINTRSTR ="Rec int fr sav/bank accts (last CY)"
      PDIVD    ="Rec div from stocks/funds/etc. (last CY)"
      PCHLDSP  ="Rec'd inc from child support (last CY)"
      PINCOT   ="Rec'd inc from any other source (last CY"
      INCGRP   ="Total Combined Family Income (Grouped)"
      AB_BL20K ="Fam inc at/above vs. below $20,000"
      RAT_CAT  ="Ratio of fam inc to poverty threshold"
      HOUSEOWN ="Home Tenure Status"
      FGAH     ="Paying lower rent due to govt prgm"
      PSSAPL   ="Ever applied for SSI"
      PSDAPL   ="Ever applied for SSDI"
      TANFMYR  ="Months rec Welfare/TANF (last CY)"
      PFSTP    ="Person auth to rec food stmps (last CY)"
      FSTPMYR  ="Months rec food stamps (last CY)"
      ELIGPWIC ="Anyone age-eligible for the WIC program?"
      PWIC     ="Rec'd WIC benefits (last CY)"
      WIC_FLAG ="WIC recipient age-eligible"
   ;

   * ASSOCIATE VARIABLES WITH FORMAT VALUES;

   FORMAT
      RECTYPE  PEP001X.    SRVY_YR  PEP002X.    FMX      $PEP004X.
      PX       $PEP005X.   INTV_QRT PEP006X.    SEX      PEP007X.
      AGE_P    PEP008X.    R_AGE1   PEP009X.    R_AGE2   PEP010X.
      DOB_M    $PEP011X.   DOB_Y_P  $PEP012X.   ORIGIN_I PEP013X.
      ORIGIMPT PEP014X.    HISPAN_I PEP015X.    HISPIMPT PEP016X.
      RACERPI2 PEP017X.    RACEIMP2 PEP018X.    MRACRPI2 PEP019X.
      MRACBPI2 PEP020X.    RACRECI2 PEP021X.    HISCODI2 PEP022X.
      ERIMPFLG PEP023X.    R_MARITL PEP024X.    COHAB1   PEP025X.
      COHAB2   PEP026X.    LG_MSTAT PEP027X.    CDCMSTAT PEP028X.
      RRP      PEP029X.    HH_REF   $PEP030X.   HHREFLG  $PEP031X.
      FRRP     PEP032X.    FM_REF   $PEP030X.   FMREFLG  $PEP034X.
      FM_RESP  PEP035X.    FMRPFLG  $PEP036X.   SIB_DEG  PEP037X.
      MOTHER   $PEP038X.   MOM_DEG  PEP039X.    FATHER   $PEP040X.
      DAD_DEG  PEP039X.    GUARD    $PEP042X.   PARENTS  PEP043X.
      MOM_ED   PEP044X.    DAD_ED   PEP044X.    FM_SIZE  PEP046X.
      FM_TYPE  PEP047X.    NOWAF    PEP050X.    ASTATFLG PEP051X.
      CSTATFLG PEP052X.    IMMUNFLG PEP053X.    REGION   PEP054X.

      PLAPLYLM PEP025X.    PLAPLYUN PEP025X.    PSPEDEIS PEP025X.
      PSPEDEM  PEP025X.    PLAADL   PEP025X.    LABATH   PEP025X.
      LADRESS  PEP025X.    LAEAT    PEP025X.    LABED    PEP025X.
      LATOILT  PEP025X.    LAHOME   PEP025X.    PLAIADL  PEP025X.
      PLAWKNOW PEP025X.    PLAWKLIM PEP072X.    PLAWALK  PEP073X.
      PLAREMEM PEP073X.    PLIMANY  PEP075X.    LA1AR    PEP076X.
      LAHCC1   PEP077X.    LAHCC2   PEP077X.    LAHCC3   PEP077X.
      LAHCC4   PEP077X.    LAHCC5   PEP077X.    LAHCC6   PEP077X.
      LAHCC7   PEP077X.    LAHCC8   PEP077X.    LAHCC9   PEP077X.
      LAHCC10  PEP077X.    LAHCC11  PEP077X.    LAHCC12  PEP077X.
      LAHCC13  PEP077X.    LAHCC90  PEP077X.    LAHCC91  PEP077X.
      LCTIME1  PEP092X.    LCUNIT1  PEP093X.    LCDURA1  PEP094X.
      LCDURB1  PEP095X.    LCCHRC1  PEP096X.    LCTIME2  PEP092X.
      LCUNIT2  PEP093X.    LCDURA2  PEP094X.    LCDURB2  PEP095X.
      LCCHRC2  PEP096X.    LCTIME3  PEP092X.    LCUNIT3  PEP093X.
      LCDURA3  PEP094X.    LCDURB3  PEP095X.    LCCHRC3  PEP096X.
      LCTIME4  PEP092X.    LCUNIT4  PEP093X.    LCDURA4  PEP094X.
      LCDURB4  PEP095X.    LCCHRC4  PEP096X.    LCTIME5  PEP092X.
      LCUNIT5  PEP093X.    LCDURA5  PEP094X.    LCDURB5  PEP095X.
      LCCHRC5  PEP096X.    LCTIME6  PEP092X.    LCUNIT6  PEP093X.
      LCDURA6  PEP094X.    LCDURB6  PEP095X.    LCCHRC6  PEP096X.
      LCTIME7  PEP092X.    LCUNIT7  PEP093X.    LCDURA7  PEP094X.
      LCDURB7  PEP095X.    LCCHRC7  PEP096X.    LCTIME8  PEP092X.
      LCUNIT8  PEP093X.    LCDURA8  PEP094X.    LCDURB8  PEP095X.
      LCCHRC8  PEP096X.    LCTIME9  PEP092X.    LCUNIT9  PEP093X.
      LCDURA9  PEP094X.    LCDURB9  PEP095X.    LCCHRC9  PEP096X.
      LCTIME10 PEP092X.    LCUNIT10 PEP093X.    LCDURA10 PEP094X.
      LCDURB10 PEP095X.    LCCHRC10 PEP096X.    LCTIME11 PEP092X.
      LCUNIT11 PEP093X.    LCDURA11 PEP094X.    LCDURB11 PEP095X.
      LCCHRC11 PEP096X.    LCTIME12 PEP092X.    LCUNIT12 PEP093X.
      LCDURA12 PEP094X.    LCDURB12 PEP095X.    LCCHRC12 PEP096X.
      LCTIME13 PEP092X.    LCUNIT13 PEP093X.    LCDURA13 PEP094X.
      LCDURB13 PEP095X.    LCCHRC13 PEP096X.    LCTIME90 PEP092X.
      LCUNIT90 PEP093X.    LCDURA90 PEP094X.    LCDURB90 PEP095X.
      LCCHRC90 PEP096X.    LCTIME91 PEP092X.    LCUNIT91 PEP093X.
      LCDURA91 PEP094X.    LCDURB91 PEP095X.    LCCHRC91 PEP096X.
      LAHCA1   PEP077X.    LAHCA2   PEP077X.    LAHCA3   PEP077X.
      LAHCA4   PEP077X.    LAHCA5   PEP077X.    LAHCA6   PEP077X.
      LAHCA7   PEP077X.    LAHCA8   PEP077X.    LAHCA9   PEP077X.
      LAHCA10  PEP077X.    LAHCA11  PEP077X.    LAHCA12  PEP077X.
      LAHCA13  PEP077X.    LAHCA14  PEP077X.    LAHCA15  PEP077X.
      LAHCA16  PEP077X.    LAHCA17  PEP077X.    LAHCA18  PEP077X.
      LAHCA19  PEP077X.    LAHCA20  PEP077X.    LAHCA21  PEP077X.
      LAHCA22  PEP077X.    LAHCA23  PEP077X.    LAHCA24  PEP077X.
      LAHCA25  PEP077X.    LAHCA26  PEP077X.    LAHCA27  PEP077X.
      LAHCA28  PEP077X.    LAHCA29  PEP077X.    LAHCA30  PEP077X.
      LAHCA31  PEP077X.    LAHCA32  PEP077X.    LAHCA33  PEP077X.
      LAHCA34  PEP077X.    LAHCA90  PEP077X.    LAHCA91  PEP077X.
      LATIME1  PEP092X.    LAUNIT1  PEP093X.    LADURA1  PEP205X.
      LADURB1  PEP206X.    LACHRC1  PEP096X.    LATIME2  PEP092X.
      LAUNIT2  PEP093X.    LADURA2  PEP205X.    LADURB2  PEP206X.
      LACHRC2  PEP096X.    LATIME3  PEP092X.    LAUNIT3  PEP093X.
      LADURA3  PEP205X.    LADURB3  PEP206X.    LACHRC3  PEP096X.
      LATIME4  PEP092X.    LAUNIT4  PEP093X.    LADURA4  PEP205X.
      LADURB4  PEP206X.    LACHRC4  PEP096X.    LATIME5  PEP092X.
      LAUNIT5  PEP093X.    LADURA5  PEP205X.    LADURB5  PEP206X.
      LACHRC5  PEP096X.    LATIME6  PEP092X.    LAUNIT6  PEP093X.
      LADURA6  PEP205X.    LADURB6  PEP206X.    LACHRC6  PEP096X.
      LATIME7  PEP092X.    LAUNIT7  PEP093X.    LADURA7  PEP205X.
      LADURB7  PEP206X.    LACHRC7  PEP096X.    LATIME8  PEP092X.
      LAUNIT8  PEP093X.    LADURA8  PEP205X.    LADURB8  PEP206X.
      LACHRC8  PEP096X.    LATIME9  PEP092X.    LAUNIT9  PEP093X.
      LADURA9  PEP205X.    LADURB9  PEP206X.    LACHRC9  PEP096X.
      LATIME10 PEP092X.    LAUNIT10 PEP093X.    LADURA10 PEP205X.
      LADURB10 PEP206X.    LACHRC10 PEP096X.    LATIME11 PEP092X.
      LAUNIT11 PEP093X.    LADURA11 PEP205X.    LADURB11 PEP206X.
      LACHRC11 PEP096X.    LATIME12 PEP092X.    LAUNIT12 PEP093X.
      LADURA12 PEP205X.    LADURB12 PEP206X.    LACHRC12 PEP096X.
      LATIME13 PEP092X.    LAUNIT13 PEP093X.    LADURA13 PEP205X.
      LADURB13 PEP206X.    LACHRC13 PEP096X.    LATIME14 PEP092X.
      LAUNIT14 PEP093X.    LADURA14 PEP205X.    LADURB14 PEP206X.
      LACHRC14 PEP096X.    LATIME15 PEP092X.    LAUNIT15 PEP093X.
      LADURA15 PEP205X.    LADURB15 PEP206X.    LACHRC15 PEP096X.
      LATIME16 PEP092X.    LAUNIT16 PEP093X.    LADURA16 PEP205X.
      LADURB16 PEP206X.    LACHRC16 PEP096X.    LATIME17 PEP092X.
      LAUNIT17 PEP093X.    LADURA17 PEP205X.    LADURB17 PEP206X.
      LACHRC17 PEP096X.    LATIME18 PEP092X.    LAUNIT18 PEP093X.
      LADURA18 PEP205X.    LADURB18 PEP206X.    LACHRC18 PEP096X.
      LATIME19 PEP092X.    LAUNIT19 PEP093X.    LADURA19 PEP205X.
      LADURB19 PEP206X.    LACHRC19 PEP096X.    LATIME20 PEP092X.
      LAUNIT20 PEP093X.    LADURA20 PEP205X.    LADURB20 PEP206X.
      LACHRC20 PEP096X.    LATIME21 PEP092X.    LAUNIT21 PEP093X.
      LADURA21 PEP205X.    LADURB21 PEP206X.    LACHRC21 PEP096X.
      LATIME22 PEP092X.    LAUNIT22 PEP093X.    LADURA22 PEP205X.
      LADURB22 PEP206X.    LACHRC22 PEP096X.    LATIME23 PEP092X.
      LAUNIT23 PEP093X.    LADURA23 PEP205X.    LADURB23 PEP206X.
      LACHRC23 PEP096X.    LATIME24 PEP092X.    LAUNIT24 PEP093X.
      LADURA24 PEP205X.    LADURB24 PEP206X.    LACHRC24 PEP096X.
      LATIME25 PEP092X.    LAUNIT25 PEP093X.    LADURA25 PEP205X.
      LADURB25 PEP206X.    LACHRC25 PEP096X.    LATIME26 PEP092X.
      LAUNIT26 PEP093X.    LADURA26 PEP205X.    LADURB26 PEP206X.
      LACHRC26 PEP096X.    LATIME27 PEP092X.    LAUNIT27 PEP093X.
      LADURA27 PEP205X.    LADURB27 PEP206X.    LACHRC27 PEP096X.
      LATIME28 PEP092X.    LAUNIT28 PEP093X.    LADURA28 PEP205X.
      LADURB28 PEP206X.    LACHRC28 PEP096X.    LATIME29 PEP092X.
      LAUNIT29 PEP093X.    LADURA29 PEP205X.    LADURB29 PEP206X.
      LACHRC29 PEP096X.    LATIME30 PEP092X.    LAUNIT30 PEP093X.
      LADURA30 PEP205X.    LADURB30 PEP206X.    LACHRC30 PEP096X.
      LATIME31 PEP092X.    LAUNIT31 PEP093X.    LADURA31 PEP205X.
      LADURB31 PEP206X.    LACHRC31 PEP096X.    LATIME32 PEP092X.
      LAUNIT32 PEP093X.    LADURA32 PEP205X.    LADURB32 PEP206X.
      LACHRC32 PEP096X.    LATIME33 PEP092X.    LAUNIT33 PEP093X.
      LADURA33 PEP205X.    LADURB33 PEP206X.    LACHRC33 PEP096X.
      LATIME34 PEP092X.    LAUNIT34 PEP093X.    LADURA34 PEP205X.
      LADURB34 PEP206X.    LACHRC34 PEP096X.    LATIME90 PEP092X.
      LAUNIT90 PEP093X.    LADURA90 PEP205X.    LADURB90 PEP206X.
      LACHRC90 PEP096X.    LATIME91 PEP092X.    LAUNIT91 PEP093X.
      LADURA91 PEP205X.    LADURB91 PEP206X.    LACHRC91 PEP096X.
      LCONDRT  PEP383X.    LACHRONR PEP384X.    PHSTAT   PEP385X.

      PDMED12M PEP073X.    PNMED12M PEP073X.    PHOSPYR  PEP073X.
      HOSPNO   PEP389X.    HPNITE   PEP390X.    PHCHM2W  PEP073X.
      PHCHMN2W PEP392X.    PHCPH2WR PEP073X.    PHCPHN2W PEP394X.
      PHCDV2W  PEP073X.    PHCDVN2W PEP396X.    P10DVYR  PEP073X.

      HIKINDA  PEP398X.    HIKINDB  PEP398X.    HIKINDC  PEP398X.
      HIKINDD  PEP398X.    HIKINDE  PEP398X.    HIKINDF  PEP398X.
      HIKINDG  PEP398X.    HIKINDH  PEP398X.    HIKINDI  PEP398X.
      HIKINDJ  PEP398X.    HIKINDK  PEP398X.    HIKINDL  PEP398X.
      HIKINDM  PEP398X.    HIKINDN  PEP398X.    MEDICARE PEP412X.
      MCPART   PEP413X.    MCCHOICE PEP025X.    MCHMO    PEP025X.
      MCNAME   PEP416X.    MCREF    PEP025X.    MCPAYPRE PEP025X.
      MEDICAID PEP412X.    MACHMD   PEP420X.    MAPCMD   PEP025X.
      MAREF    PEP025X.    SINGLE   PEP423X.    SSTYPEA  PEP424X.
      SSTYPEB  PEP424X.    SSTYPEC  PEP424X.    SSTYPED  PEP424X.
      SSTYPEE  PEP424X.    SSTYPEF  PEP424X.    SSTYPEG  PEP424X.
      SSTYPEH  PEP424X.    SSTYPEI  PEP424X.    SSTYPEJ  PEP424X.
      SSTYPEK  PEP424X.    SSTYPEL  PEP424X.    PRIVATE  PEP412X.
      HITYPE1  PEP437X.    WHONAM1  PEP438X.    PLNWRK1  PEP439X.
      PLNPAY11 PEP424X.    PLNPAY21 PEP424X.    PLNPAY31 PEP424X.
      PLNPAY41 PEP424X.    PLNPAY51 PEP424X.    PLNPAY61 PEP424X.
      PLNPAY71 PEP424X.    HICOSTR1 PEP447X.    PLNMGD1  PEP448X.
      MGCHMD1  PEP449X.    MGPRMD1  PEP025X.    MGPYMD1  PEP025X.
      MGPREF1  PEP025X.    HITYPE2  PEP437X.    WHONAM2  PEP438X.
      PLNWRK2  PEP439X.    PLNPAY12 PEP424X.    PLNPAY22 PEP424X.
      PLNPAY32 PEP424X.    PLNPAY42 PEP424X.    PLNPAY52 PEP424X.
      PLNPAY62 PEP424X.    PLNPAY72 PEP424X.    HICOSTR2 PEP447X.
      PLNMGD2  PEP448X.    MGCHMD2  PEP449X.    MGPRMD2  PEP025X.
      MGPYMD2  PEP025X.    MGPREF2  PEP025X.    HITYPE3  PEP437X.
      WHONAM3  PEP438X.    PLNWRK3  PEP439X.    PLNPAY13 PEP424X.
      PLNPAY23 PEP424X.    PLNPAY33 PEP424X.    PLNPAY43 PEP424X.
      PLNPAY53 PEP424X.    PLNPAY63 PEP424X.    PLNPAY73 PEP424X.
      HICOSTR3 PEP447X.    PLNMGD3  PEP448X.    MGCHMD3  PEP449X.
      MGPRMD3  PEP025X.    MGPYMD3  PEP025X.    MGPREF3  PEP025X.
      HITYPE4  PEP437X.    WHONAM4  PEP438X.    PLNWRK4  PEP439X.
      PLNPAY14 PEP424X.    PLNPAY24 PEP424X.    PLNPAY34 PEP424X.
      PLNPAY44 PEP424X.    PLNPAY54 PEP424X.    PLNPAY64 PEP424X.
      PLNPAY74 PEP424X.    HICOSTR4 PEP447X.    PLNMGD4  PEP448X.
      MGCHMD4  PEP449X.    MGPRMD4  PEP025X.    MGPYMD4  PEP025X.
      MGPREF4  PEP025X.    IHS      PEP073X.    MILITARY PEP502X.
      CHIP     PEP073X.    OTHERPUB PEP073X.    OTHERGOV PEP073X.
      NOTCOV   PEP506X.    HILAST   PEP507X.    HISTOP1  PEP424X.
      HISTOP2  PEP424X.    HISTOP3  PEP424X.    HISTOP4  PEP424X.
      HISTOP5  PEP424X.    HISTOP6  PEP424X.    HISTOP7  PEP424X.
      HISTOP8  PEP424X.    HISTOP9  PEP424X.    HISTOP10 PEP424X.
      HISTOP11 PEP424X.    HISTOP12 PEP424X.    HISTOP13 PEP424X.
      HISTOP14 PEP424X.    HISTOP15 PEP424X.    HINOTYR  PEP025X.
      HINOTMYR PEP524X.    HCSPFYR  PEP525X.

      REGIONBR PEP526X.    GEOBRTH  PEP527X.    YRSINUS  PEP528X.
      CITIZENP PEP529X.    HEADST   PEP025X.    HEADSTV1 PEP025X.
      EDUC     PEP532X.    EDUC_R1  PEP533X.    MILTRYDS PEP025X.
      DOINGLW1 PEP535X.    WHYNOWK1 PEP536X.    WRKHRS   PEP537X.
      WRKFTALL PEP025X.    WRKLYR1  PEP025X.    WRKMYR   PEP524X.
      MAJR_ACT PEP541X.    ERNYR_P  PEP542X.    HIEMPOF  PEP025X.

      PSAL     PEP025X.    PSEINC   PEP025X.    PSSRR    PEP073X.
      PSSRRDB  PEP025X.    PSSRRD   PEP025X.    PPENS    PEP073X.
      POPENS   PEP073X.    PSSI     PEP073X.    PSSID    PEP025X.
      PTANF    PEP073X.    POWBEN   PEP073X.    PINTRSTR PEP073X.
      PDIVD    PEP073X.    PCHLDSP  PEP073X.    PINCOT   PEP073X.
      INCGRP   PEP559X.    AB_BL20K PEP560X.    RAT_CAT  PEP561X.
      HOUSEOWN PEP562X.    FGAH     PEP025X.    PSSAPL   PEP073X.
      PSDAPL   PEP073X.    TANFMYR  PEP566X.    PFSTP    PEP073X.
      FSTPMYR  PEP566X.    ELIGPWIC PEP569X.    PWIC     PEP025X.
      WIC_FLAG PEP571X.;

PROC CONTENTS DATA=NHIS.PERSONSX;
   TITLE1 'CONTENTS OF THE 2003 NHIS PERSONSX FILE';

PROC FREQ DATA=NHIS.PERSONSX;
   TITLE1 'FREQUENCY REPORT FOR 2003 NHIS PERSONSX FILE';
   TITLE2 '(WEIGHTED)';
   TABLES EDUC * SEX/LIST MISSING;
   WEIGHT WTFA ;

PROC FREQ DATA=NHIS.PERSONSX;
   TITLE1 'FREQUENCY REPORT FOR 2003 NHIS PERSONSX FILE';
   TITLE2 '(UNWEIGHTED)';
   TABLES EDUC * SEX/LIST MISSING;
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
        STATEMENT: FORMAT _ALL_;
RUN;
