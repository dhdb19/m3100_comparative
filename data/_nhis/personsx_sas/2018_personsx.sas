*********************************************************************
 JUNE 13, 2019 10:37 AM
 
 This is an example of a SAS program that creates a SAS
 file from the 2018 NHIS Public Use PERSONSX.DAT ASCII file
 
 This is stored in PERSONSX.SAS
*********************************************************************;

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS;
LIBNAME  NHIS     "C:\NHIS2018";

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS
             IF YOU ALLOW PROGRAM TO PERMANENTLY STORE FORMATS;
LIBNAME  LIBRARY  "C:\NHIS2018";

FILENAME ASCIIDAT 'C:\NHIS2018\PERSONSX.dat';

* DEFINE VARIABLE VALUES FOR REPORTS;

*  USE THE STATEMENT "PROC FORMAT LIBRARY=LIBRARY"
     TO PERMANENTLY STORE THE FORMAT DEFINITIONS;

*  USE THE STATEMENT "PROC FORMAT" IF YOU DO NOT WISH
      TO PERMANENTLY STORE THE FORMATS;

PROC FORMAT LIBRARY=LIBRARY;
*PROC FORMAT;

   VALUE $GROUPC
      ' '< - HIGH   = "Range of Values"
   ;
   VALUE GROUPN
      LOW - HIGH   = "Range of Values"
   ;
   VALUE PEP001X
      10                 = "10 Household"
      20                 = "20 Person"
      25                 = "25 Income Imputation"
      30                 = "30 Sample Adult"
      40                 = "40 Sample Child"
      60                 = "60 Family"
      65                 = "65 Paradata"
   ;
   VALUE PEP002X
      .                   = '.'
      OTHER              = "Survey Year"
   ;
   VALUE PEP004X
      1                  = "1 Quarter 1"
      2                  = "2 Quarter 2"
      3                  = "3 Quarter 3"
      4                  = "4 Quarter 4"
   ;
   VALUE PEP005X
      01                 = "01 January"
      02                 = "02 February"
      03                 = "03 March"
      04                 = "04 April"
      05                 = "05 May"
      06                 = "06 June"
      07                 = "07 July"
      08                 = "08 August"
      09                 = "09 September"
      10                 = "10 October"
      11                 = "11 November"
      12                 = "12 December"
   ;
   VALUE PEP010X
      1                  = "1 Northeast"
      2                  = "2 Midwest"
      3                  = "3 South"
      4                  = "4 West"
   ;
   VALUE PEP013X
      1                  = "1 Male"
      2                  = "2 Female"
   ;
   VALUE PEP014X
      1                  = "1 Yes"
      2                  = "2 No"
   ;
   VALUE PEP015X
      00                 = "00 Multiple Hispanic"
      01                 = "01 Puerto Rico"
      02                 = "02 Mexican"
      03                 = "03 Mexican-American"
      04                 = "04 Cuban/Cuban American"
      05                 = "05 Dominican (Republic)"
      06                 = "06 Central or South American"
      07                 = "07 Other Latin American, type not specified"
      08                 = "08 Other Spanish"
      09                 = "09 Hispanic/Latino/Spanish, non-specific type"
      10                 = "10 Hispanic/Latino/Spanish, type refused"
      11                 = "11 Hispanic/Latino/Spanish, type not ascertained"
      12                 = "12 Not Hispanic/Spanish origin"
   ;
   VALUE PEP016X
      01                 = "01 White only"
      02                 = "02 Black/African American only"
      03                 = "03 AIAN only"
      04                 = "04 Asian only"
      05                 = "05 Race group not releasable (See file layout)"
      06                 = "06 Multiple race"
   ;
   VALUE PEP017X
      01                 = "01 White"
      02                 = "02 Black/African American"
      03                 = "03 Indian (American), Alaska Native"
      09                 = "09 Asian Indian"
      10                 = "10 Chinese"
      11                 = "11 Filipino"
      15                 = "15 Other Asian (See file layout)"
      16                 = "16 Primary race not releasable (See file layout)"
      17                 = "17 Multiple race, no primary race selected"
   ;
   VALUE PEP018X
      01                 = "01 White"
      02                 = "02 Black/African American"
      03                 = "03 Indian (American) (includes Eskimo, Aleut)"
      06                 = "06 Chinese"
      07                 = "07 Filipino"
      12                 = "12 Asian Indian"
      16                 = "16 Other race (See file layout)"
      17                 = "17 Multiple race, no primary race selected"
   ;
   VALUE PEP019X
      1                  = "1 White"
      2                  = "2 Black"
      3                  = "3 Asian"
      4                  = "4 All other race groups (See file layout)"
   ;
   VALUE PEP020X
      1                  = "1 Hispanic"
      2                  = "2 Non-Hispanic White"
      3                  = "3 Non-Hispanic Black"
      4                  = "4 Non-Hispanic Asian"
      5                  = "5 Non-Hispanic All other race groups"
   ;
   VALUE PEP021X
      1                  = "1 Armed Forces"
      2                  = "2 Not Armed Forces"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP022X
      01                 = "01 Household reference person"
      02                 = "02 Spouse (husband/wife)"
      03                 = "03 Unmarried Partner"
      04                 = "04 Child (biological/adoptive/in-law/step/foster)"
      05                 = "05 Child of partner"
      06                 = "06 Grandchild"
      07                 = "07 Parent (biological/adoptive/in-law/step/foster)"
      08                 = 
"08 Brother/sister (biological/adoptive/in-law/step/foster)"
      09                 = "09 Grandparent (Grandmother/Grandfather)"
      10                 = "10 Aunt/Uncle"
      11                 = "11 Niece/Nephew"
      12                 = "12 Other relative"
      13                 = "13 Housemate/roommate"
      14                 = "14 Roomer/Boarder"
      15                 = "15 Other nonrelative"
      16                 = "16 Legal guardian"
      17                 = "17 Ward"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE $PEP023X
      "8"                = "8 Not ascertained"
      "P"                = "P HH Reference person"
   ;
   VALUE PEP024X
      01                 = "01 Family reference person"
      02                 = "02 Spouse (husband/wife)"
      03                 = "03 Unmarried Partner"
      04                 = "04 Child (biological/adoptive/in-law/step/foster)"
      05                 = "05 Child of partner"
      06                 = "06 Grandchild"
      07                 = "07 Parent (biological/adoptive/in-law/step/foster)"
      08                 = 
"08 Brother/sister (biological/adoptive/in-law/step/foster)"
      09                 = "09 Grandparent (Grandmother/Grandfather)"
      10                 = "10 Aunt/Uncle"
      11                 = "11 Niece/Nephew"
      12                 = "12 Other relative"
      16                 = "16 Legal guardian"
      17                 = "17 Ward"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP025X
      00                 = "00 Under 1 year"
      85                 = "85 85+ years"
   ;
   VALUE PEP026X
      1                  = "1 Change on AGE due to data entry error"
   ;
   VALUE $PEP027X
      "8"                = "8 Not ascertained"
      "B"                = "B Family respondent"
   ;
   VALUE $PEP028X
      "8"                = "8 Not ascertained"
      "P"                = "P Family reference person"
   ;
   VALUE PEP029X
      0                  = "0 Under 14 years"
      1                  = "1 Married - spouse in household"
      2                  = "2 Married - spouse not in household"
      3                  = "3 Married - spouse in household unknown"
      4                  = "4 Widowed"
      5                  = "5 Divorced"
      6                  = "6 Separated"
      7                  = "7 Never married"
      8                  = "8 Living with partner"
      9                  = "9 Unknown marital status"
   ;
   VALUE $PEP030X
      "98"               = "98 Not ascertained"
   ;
   VALUE PEP031X
      1                  = "1 Yes"
      2                  = "2 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP032X
      1                  = "1 Married"
      2                  = "2 Widowed"
      3                  = "3 Divorced"
      4                  = "4 Separated"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP034X
      1                  = "1 Separated"
      2                  = "2 Divorced"
      3                  = "3 Married"
      4                  = "4 Single/never married"
      5                  = "5 Widowed"
      9                  = "9 Unknown marital status"
   ;
   VALUE PEP035X
      1                  = "1 Full or Adopted {brother/sister}"
      2                  = "2 Half {brother/sister}"
      3                  = "3 Step {brother/sister}"
      4                  = "4 {Brother/Sister}-in-law"
      9                  = "9 Other and unknown"
   ;
   VALUE $PEP036X
      "00"               = "00 Mother not a household member"
      "97"               = "97 Refused"
      "98"               = "98 Not ascertained"
      "99"               = "99 Don't know"
   ;
   VALUE PEP037X
      1                  = "1 Biological or adoptive"
      2                  = "2 Step"
      3                  = "3 In-law"
      9                  = "9 Other and unknown"
   ;
   VALUE $PEP038X
      "00"               = "00 Father not in household"
      "97"               = "97 Refused"
      "98"               = "98 Not ascertained"
      "99"               = "99 Don't know"
   ;
   VALUE PEP040X
      1                  = "1 Mother, no father"
      2                  = "2 Father, no mother"
      3                  = "3 Mother and father"
      4                  = "4 Neither mother nor father"
      9                  = "9 Unknown"
   ;
   VALUE PEP041X
      01                 = "01 Less than/equal to 8th grade"
      02                 = "02 9-12th grade, no high school diploma"
      03                 = "03 High school graduate/GED recipient"
      04                 = "04 Some college, no degree"
      05                 = "05 AA degree, technical or vocational"
      06                 = "06 AA degree, academic program"
      07                 = "07 Bachelor's degree"
      08                 = "08 Master's, professional, or doctoral degree"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP043X
      0                  = "0 Sample Adult - no record"
      1                  = "1 Sample Adult - has record"
      2                  = "2 Not selected as Sample Adult"
      3                  = "3 No one selected as Sample Adult"
      4                  = "4 Armed Force member"
      5                  = "5 Armed Force member - selected as Sample Adult"
   ;
   VALUE PEP044X
      0                  = "0 Sample Child - no record"
      1                  = "1 Sample Child - has record"
      2                  = "2 Not selected as Sample Child"
      3                  = "3 No one selected as Sample Child"
      4                  = "4 Emancipated minor"
   ;
   VALUE PEP045X
      1                  = "1 No sample adult record due to quality reasons"
   ;
   VALUE PEP046X
      1                  = "1 No sample child record due to quality reasons"
   ;
   VALUE PEP060X
      0                  = "0 Unable to work"
      1                  = "1 Limited in work"
      2                  = "2 Not limited in work"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP063X
      0                  = "0 Limitation previously mentioned"
      1                  = "1 Yes, limited in some other way"
      2                  = "2 Not limited in any way"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP064X
      1                  = "1 Limited in any way"
      2                  = "2 Not limited in any way"
      3                  = "3 Unknown if limited"
   ;
   VALUE PEP065X
      1                  = "1 Mentioned"
      2                  = "2 Not mentioned"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP080X
      95                 = "95 95+"
      96                 = "96 Since birth"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP081X
      1                  = "1 Day(s)"
      2                  = "2 Week(s)"
      3                  = "3 Month(s)"
      4                  = "4 Year(s)"
      6                  = "6 Since birth"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP082X
      00                 = "00 Less than 1 year"
      96                 = "96 Unknown number of years"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP083X
      0                  = "0 Since birth and child <1 year of age"
      1                  = "1 Less than 3 months"
      2                  = "2 3-5 months"
      3                  = "3 6-12 months"
      4                  = "4 More than 1 year"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP084X
      1                  = "1 Chronic"
      2                  = "2 Not chronic"
      9                  = "9 Unknown if chronic"
   ;
   VALUE PEP193X
      00                 = "00 Less than 1 year"
      85                 = "85 85+ years"
      96                 = "96 Unknown number of years"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP194X
      1                  = "1 Less than 3 months"
      2                  = "2 3-5 months"
      3                  = "3 6-12 months"
      4                  = "4 More than 1 year"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP371X
      1                  = 
"1 At least one condition causing limitation of activity is chronic"
      2                  = 
"2 No condition causing limitation of activity is chronic"
      9                  = 
"9 Unknown if any condition causing limitation of activity is chronic"
   ;
   VALUE PEP372X
      0                  = 
"0 Not limited in any way (including unknown if limited)"
      1                  = "1 Limited; caused by at least one chronic condition"
      2                  = "2 Limited; not caused by chronic condition"
      3                  = "3 Limited; unknown if condition is chronic"
   ;
   VALUE PEP373X
      1                  = "1 Excellent"
      2                  = "2 Very good"
      3                  = "3 Good"
      4                  = "4 Fair"
      5                  = "5 Poor"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP377X
      6                  = "6 6+ times"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP378X
      11                 = "11 11-15 nights"
      12                 = "12 16-20 nights"
      13                 = "13 21-25 nights"
      14                 = "14 26-30 nights"
      15                 = "15 31-50 nights"
      16                 = "16 51+ nights"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP380X
      15                 = "15 15+ home visits"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP382X
      07                 = "07 7+ calls"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP384X
      07                 = "07 7+ times"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP386X
      1                  = "1 Not covered"
      2                  = "2 Covered"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP387X
      1                  = "1 Private"
      2                  = "2 Medicaid and other public"
      3                  = "3 Other coverage"
      4                  = "4 Uninsured"
      5                  = "5 Don't know"
   ;
   VALUE PEP388X
      1                  = "1 Private"
      2                  = "2 Dual eligible"
      3                  = "3 Medicare Advantage"
      4                  = "4 Medicare only excluding Medicare Advantage"
      5                  = "5 Other coverage"
      6                  = "6 Uninsured"
      7                  = "7 Don't know"
   ;
   VALUE PEP389X
      1                  = "1 Private"
      2                  = "2 Dual eligible"
      3                  = "3 Medicare only"
      4                  = "4 Other coverage"
      5                  = "5 Uninsured"
      6                  = "6 Don't know"
   ;
   VALUE PEP390X
      1                  = "1 Yes, information"
      2                  = "2 Yes, but no information"
      3                  = "3 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP391X
      1                  = "1 Part A - Hospital only"
      2                  = "2 Part B - Medical only"
      3                  = "3 Both Part A and Part B"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP394X
      1                  = "1 Medicare Advantage"
      2                  = "2 Private plan not Medicare Advantage"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't Know"
   ;
   VALUE PEP399X
      1                  = "1 Reassigned to Medicaid from private"
   ;
   VALUE PEP400X
      1                  = "1 Any doctor"
      2                  = "2 Select from list"
      3                  = "3 Doctor is assigned"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP404X
      1                  = "1 Yes, with information"
      2                  = "2 Yes, but no information"
      3                  = "3 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP418X
      1                  = "1 Reassigned to private from public"
   ;
   VALUE PEP419X
      1                  = "1 Exchange plan"
      2                  = "2 Not exchange plan"
      8                  = "8 Not ascertained"
   ;
   VALUE PEP420X
      1                  = "1 In own name"
      2                  = "2 Someone else in family"
      3                  = "3 Person not in household"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP421X
      1                  = "1 Child (including stepchildren)"
      2                  = "2 Spouse"
      3                  = "3 Former spouse"
      4                  = "4 Some other relationship"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP423X
      01                 = "01 Through employer"
      02                 = "02 Through union"
      03                 = 
"03 Through workplace, but don't know if employer or union"
      04                 = 
"04 Through workplace, self-employed or professional association"
      05                 = "05 Purchased directly"
      06                 = 
"06 Through Healthcare.gov or the Affordable Care Act, also known as Obamacare"
      07                 = 
"07 Through a state/local government or community program"
      08                 = "08 Other"
      09                 = "09 Through school"
      10                 = "10 Through parents"
      11                 = "11 Through relative other than parents"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP425X
      1                  = "1 Company provides exchange plans"
      2                  = "2 Not an exchange company"
      3                  = "3 Exchange Portal or exact exchange plan name"
      8                  = "8 Not ascertained"
   ;
   VALUE PEP433X
      1                  = "1 Yes"
      2                  = "2 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t know"
   ;
   VALUE PEP434X
      20000              = "20000 $20,000 or more"
      99997              = "99997 Refused"
      99998              = "99998 Not ascertained"
      99999              = "99999 Don't know"
   ;
   VALUE PEP435X
      1                  = "1 HMO/IPA"
      2                  = "2 PPO"
      3                  = "3 POS"
      4                  = "4 Fee-for-service/indemnity"
      5                  = "5 Other"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP436X
      1                  = "1 Less than [$1,350/$2,700]"
      2                  = "2 [$1,350/$2,700] or more"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP438X
      1                  = "1 Any doctor"
      2                  = "2 Select from group/list"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP448X
      1                  = "1 Any doctor"
      2                  = "2 Select from book/list"
      3                  = "3 Doctor is assigned"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP474X
      1                  = "1 Very confident"
      2                  = "2 Somewhat confident"
      3                  = "3 Not too confident"
      4                  = "4 Not confident at all"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t know"
   ;
   VALUE PEP476X
      1                  = "1 Reassigned to CHIP from private"
   ;
   VALUE PEP482X
      1                  = "1 Reassigned to other public from private"
   ;
   VALUE PEP489X
      1                  = "1 Reassigned to other government from private"
   ;
   VALUE PEP501X
      1                  = "1 TRICARE Prime"
      2                  = "2 TRICARE Select"
      3                  = "3 TRICARE Reserve"
      4                  = "4 TRICARE for Life"
      5                  = "5 TRICARE other (specify)"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP503X
      1                  = "1 6 months or less"
      2                  = "2 More than 6 months, but less than 1 year"
      3                  = "3 1 year"
      4                  = "4 More than 1 year, but less than 3 years"
      5                  = "5 3 years or more"
      6                  = "6 Never"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP520X
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP533X
      01                 = "01 Through employer"
      02                 = "02 Through union"
      03                 = 
"03 Through workplace, but don't know if employer or union"
      04                 = 
"04 Through workplace, self-employed or professional association"
      05                 = "05 Purchased directly"
      06                 = 
"06 Through a state/local government or community program"
      07                 = "07 Other"
      08                 = "08 Through school"
      09                 = "09 Through parents"
      10                 = "10 Through relative other than parents"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP534X
      0                  = "0 Zero"
      1                  = "1 Less than $500"
      2                  = "2 $500 - $1,999"
      3                  = "3 $2,000 - $2,999"
      4                  = "4 $3,000 - $4,999"
      5                  = "5 $5,000 or more"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP554X
      01                 = "01 United States"
      02                 = "02 Mexico, Central America, Caribbean Islands"
      03                 = "03 South America"
      04                 = "04 Europe"
      05                 = "05 Russia (and former USSR areas)"
      06                 = "06 Africa"
      07                 = "07 Middle East"
      08                 = "08 Indian Subcontinent"
      09                 = "09 Asia"
      10                 = "10 SE Asia"
      11                 = "11 Elsewhere"
      99                 = "99 Unknown"
   ;
   VALUE PEP555X
      1                  = "1 USA: born in one of the 50 United States or D.C."
      2                  = "2 USA: born in a U.S. territory"
      3                  = "3 Not born in the U.S. or a U.S. territory"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP556X
      1                  = "1 Less than 1 year"
      2                  = "2 1 yr., less than 5 yrs."
      3                  = "3 5 yrs., less than 10 yrs."
      4                  = "4 10 yrs., less than 15 yrs."
      5                  = "5 15 years or more"
      9                  = "9 Unknown"
   ;
   VALUE PEP557X
      1                  = "1 Yes, citizen of the United States"
      2                  = "2 No, not a citizen of the United States"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP560X
      00                 = "00 Never attended/kindergarten only"
      01                 = "01 1st grade"
      02                 = "02 2nd grade"
      03                 = "03 3rd grade"
      04                 = "04 4th grade"
      05                 = "05 5th grade"
      06                 = "06 6th grade"
      07                 = "07 7th grade"
      08                 = "08 8th grade"
      09                 = "09 9th grade"
      10                 = "10 10th grade"
      11                 = "11 11th grade"
      12                 = "12 12th grade, no diploma"
      13                 = "13 GED or equivalent"
      14                 = "14 High School Graduate"
      15                 = "15 Some college, no degree"
      16                 = 
"16 Associate degree: occupational, technical, or vocational program"
      17                 = "17 Associate degree: academic program"
      18                 = "18 Bachelor's degree (Example: BA, AB, BS, BBA)"
      19                 = "19 Master's degree (Example: MA, MS, MEng, MEd, MBA)
"
      20                 = 
"20 Professional School degree (Example: MD, DDS, DVM, JD)"
      21                 = "21 Doctoral degree (Example: PhD, EdD)"
      96                 = "96 Child under 5 years old"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP572X
      1                  = "1 Working for pay at a job or business"
      2                  = "2 With a job or business but not at work"
      3                  = "3 Looking for work"
      4                  = 
"4 Working, but not for pay, at a family-owned job or business"
      5                  = 
"5 Not working at a job or business and not looking for work"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP573X
      01                 = "01 Taking care of house or family"
      02                 = "02 Going to school"
      03                 = "03 Retired"
      04                 = "04 On a planned vacation from work"
      05                 = "05 On family or maternity leave"
      06                 = "06 Temporarily unable to work for health reasons"
      07                 = "07 Have job/contract and off-season"
      08                 = "08 On layoff"
      09                 = "09 Disabled"
      10                 = "10 Other"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP574X
      95                 = "95 95+ hours"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP577X
      01                 = "01 1 month or less"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP578X
      01                 = "01 $01-$4,999"
      02                 = "02 $5,000-$9,999"
      03                 = "03 $10,000-$14,999"
      04                 = "04 $15,000-$19,999"
      05                 = "05 $20,000-$24,999"
      06                 = "06 $25,000-$34,999"
      07                 = "07 $35,000-$44,999"
      08                 = "08 $45,000-$54,999"
      09                 = "09 $55,000-$64,999"
      10                 = "10 $65,000-$74,999"
      11                 = "11 $75,000 and over"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP580X
      1                  = "1 Enter 1 to continue"
      8                  = "8 Not ascertained"
   ;
   VALUE PEP599X
      0                  = "0 No WIC age-eligible family members"
      1                  = "1 At least 1 WIC age-eligible family member"
   ;
   VALUE PEP601X
      0                  = "0 Person not age-eligible"
      1                  = "1 Person age-eligible"
   ;
   VALUE PEP602X
      1                  = "1 Very well"
      2                  = "2 Well"
      3                  = "3 Not well"
      4                  = "4 Not at all"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t know"
   ;

DATA NHIS.PERSONSX;
   * CREATE A SAS DATA SET;
   INFILE ASCIIDAT PAD LRECL=766;

   * DEFINE LENGTH OF ALL VARIABLES;

   LENGTH

      /* IDN LENGTHS */

      RECTYPE    3   SRVY_YR    4   HHX      $ 6   INTV_QRT   3
      INTV_MON   3   FMX      $ 2   FPX      $ 2   WTIA       8
      WTFA       8

      /* UCF LENGTHS */

      REGION     3   PSTRAT     4   PPSU       4

      /* HHC LENGTHS */

      SEX        3   ORIGIN_I   3   HISPAN_I   3   RACERPI2   3
      MRACRPI2   3   MRACBPI2   3   RACRECI3   3   HISCODI3   3
      NOWAF      3   RRP        3   HHREFLG  $ 1   FRRP       3
      AGE_P      3   AGE_CHG    3

      /* FID LENGTHS */

      FMRPFLG  $ 1   FMREFLG  $ 1   R_MARITL   3   FSPOUS2  $ 2
      COHAB1     3   COHAB2     3   FCOHAB3  $ 2   CDCMSTAT   3
      SIB_DEGP   3   FMOTHER1 $ 2   MOM_DEGP   3   FFATHER1 $ 2
      DAD_DEGP   3   PARENTS    3   MOM_ED     3   DAD_ED     3
      ASTATFLG   3   CSTATFLG   3   QCADULT    3   QCCHILD    3

      /* FHS LENGTHS */

      PLAPLYLM   3   PLAPLYUN   3   PSPEDEIS   3   PSPEDEM    3
      PLAADL     3   LABATH     3   LADRESS    3   LAEAT      3
      LABED      3   LATOILT    3   LAHOME     3   PLAIADL    3
      PLAWKNOW   3   PLAWKLIM   3   PLAWALK    3   PLAREMEM   3
      PLIMANY    3   LA1AR      3   LAHCC1     3   LAHCC2     3
      LAHCC3     3   LAHCC4     3   LAHCC5     3   LAHCC6     3
      LAHCC7A    3   LAHCC8     3   LAHCC9     3   LAHCC10    3
      LAHCC11    3   LAHCC12    3   LAHCC13    3   LAHCC90    3
      LAHCC91    3   LCTIME1    3   LCUNIT1    3   LCDURA1    3
      LCDURB1    3   LCCHRC1    3   LCTIME2    3   LCUNIT2    3
      LCDURA2    3   LCDURB2    3   LCCHRC2    3   LCTIME3    3
      LCUNIT3    3   LCDURA3    3   LCDURB3    3   LCCHRC3    3
      LCTIME4    3   LCUNIT4    3   LCDURA4    3   LCDURB4    3
      LCCHRC4    3   LCTIME5    3   LCUNIT5    3   LCDURA5    3
      LCDURB5    3   LCCHRC5    3   LCTIME6    3   LCUNIT6    3
      LCDURA6    3   LCDURB6    3   LCCHRC6    3   LCTIME7A   3
      LCUNIT7A   3   LCDURA7A   3   LCDURB7A   3   LCCHRC7A   3
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
      LAHCA13    3   LAHCA14A   3   LAHCA15    3   LAHCA16    3
      LAHCA17    3   LAHCA18    3   LAHCA19_   3   LAHCA20_   3
      LAHCA21_   3   LAHCA22_   3   LAHCA23_   3   LAHCA24_   3
      LAHCA25_   3   LAHCA26_   3   LAHCA27_   3   LAHCA28_   3
      LAHCA29_   3   LAHCA30_   3   LAHCA31_   3   LAHCA32_   3
      LAHCA33_   3   LAHCA34_   3   LAHCA90    3   LAHCA91    3
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
      LACHRC13   3   LTIME14A   3   LUNIT14A   3   LDURA14A   3
      LDURB14A   3   LCHRC14A   3   LATIME15   3   LAUNIT15   3
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

      /* FAU LENGTHS */

      PDMED12M   3   PNMED12M   3   PHOSPYR2   3   HOSPNO_P   3
      HPNITE_P   3   PHCHM2W    3   PHCHN2WP   3   PHCPH2WR   3
      PHCPN2WP   3   PHCDV2W    3   PHCDN2WP   3   P10DVYR    3

      /* FHI LENGTHS */

      NOTCOV     3   COVER      3   COVER65    3   COVER65O   3
      MEDICARE   3   MCPART     3   MCCHOICE   3   MCHMO      3
      MCADVR     3   MCPREM     3   MCREF      3   MCPARTD    3
      MEDICAID   3   MAFLG      3   MACHMD     3   MXCHNG     3
      MEDPREM    3   MDPRINC    3   SINGLE     3   SSTYPEA    3
      SSTYPEB    3   SSTYPEC    3   SSTYPED    3   SSTYPEE    3
      SSTYPEF    3   SSTYPEG    3   SSTYPEH    3   SSTYPEI    3
      SSTYPEJ    3   SSTYPEK    3   SSTYPEL    3   PRIVATE    3
      PRFLG      3   EXCHANGE   3   WHONAM1    3   PRPOLH1    3
      PRCOOH1    3   PLNWRKS1   3   PLNEXCH1   3   EXCHPR1    3
      PLNPAY11   3   PLNPAY21   3   PLNPAY31   3   PLNPAY41   3
      PLNPAY51   3   PLNPAY61   3   PLNPAY71   3   PLNPRE1    3
      HICOSTR1   4   PLNMGD1    3   HDHP1      3   HSAHRA1    3
      MGCHMD1    3   MGPRMD1    3   MGPYMD1    3   PCPREQ1    3
      PRRXCOV1   3   PRDNCOV1   3   PXCHNG     3   PLEXCHPR   3
      PSTRFPRM   3   PSSPRINC   3   PSTDOC     3   WHONAM2    3
      PRPOLH2    3   PRCOOH2    3   PLNWRKS2   3   PLNEXCH2   3
      EXCHPR2    3   PLNPAY12   3   PLNPAY22   3   PLNPAY32   3
      PLNPAY42   3   PLNPAY52   3   PLNPAY62   3   PLNPAY72   3
      PLNPRE2    3   HICOSTR2   4   PLNMGD2    3   HDHP2      3
      HSAHRA2    3   MGCHMD2    3   MGPRMD2    3   MGPYMD2    3
      PCPREQ2    3   PRRXCOV2   3   PRDNCOV2   3   PRPLPLUS   3
      FCOVCONF   3   SCHIP      3   CHFLG      3   CHXCHNG    3
      STRFPRM1   3   CHPRINC    3   STDOC1     3   OTHPUB     3
      OPFLG      3   OPXCHNG    3   PLEXCHOP   3   STRFPRM2   3
      SSPRINC    3   STDOC2     3   OTHGOV     3   OGFLG      3
      OGXCHNG    3   PLEXCHOG   3   STRFPRM3   3   OGPRINC    3
      STDOC3     3   MILITARN   3   MILSPC1    3   MILSPC2N   3
      MILSPC2I   3   MILSPC3    3   MILSPC4    3   MILMANN    3
      IHS        3   HILAST2    3   HISTOP1    3   HISTOP2    3
      HISTOP3    3   HISTOP4    3   HISTOP5    3   HISTOP6    3
      HISTOP7    3   HISTOP8    3   HISTOP9    3   HISTOP10   3
      HISTOP11   3   HISTOP12   3   HISTOP13   3   HISTOP14   3
      HISTOP15   3   HINOTYR    3   HINOTMYR   3   FHICHNG    3
      FHIKDBA    3   FHIKDBB    3   FHIKDBC    3   FHIKDBD    3
      FHIKDBE    3   FHIKDBF    3   FHIKDBG    3   FHIKDBH    3
      FHIKDBI    3   FHIKDBJ    3   FHIKDBK    3   PWRKBR1    3
      HCSPFYR    3   MEDBILL    3   MEDBPAY    3   MEDBNOP    3
      FSA        3   HIKINDNA   3   HIKINDNB   3   HIKINDNC   3
      HIKINDND   3   HIKINDNE   3   HIKINDNF   3   HIKINDNG   3
      HIKINDNH   3   HIKINDNI   3   HIKINDNJ   3   HIKINDNK   3
      MCAREPRB   3   MCAIDPRB   3   SINCOV     3

      /* FSD LENGTHS */

      PLBORN     3   REGIONBR   3   GEOBRTH    3   YRSINUS    3
      CITIZENP   3   HEADST     3   HEADSTV1   3   EDUC1      3
      ARMFVER    3   ARMFEV     3   ARMFFC     3   ARMFTM1P   3
      ARMFTM2P   3   ARMFTM3P   3   ARMFTM4P   3   ARMFTM5P   3
      ARMFTM6P   3   ARMFTM7P   3   VACOV      3   DOINGLWP   3
      WHYNOWKP   3   WRKHRS2    3   WRKFTALL   3   WRKLYR1    3
      WRKMYR     3   ERNYR_P    3   HIEMPOF    3

      /* FIN LENGTHS */

      FINCINT    3   PSAL       3   PSEINC     3   PSSRR      3
      PSSRRDB    3   PSSRRD     3   PPENS      3   POPENS     3
      PSSI       3   PSSID      3   PTANF      3   POWBEN     3
      PINTRSTR   3   PDIVD      3   PCHLDSP    3   PINCOT     3
      PSSAPL     3   PSDAPL     3   TANFMYR    3   ELIGPWIC   3
      PWIC       3   WIC_FLAG   3

      /* FLG LENGTHS */

      ENGLANG    3 ;

   * INPUT ALL VARIABLES;

   INPUT

      /* IDN LOCATIONS */

      RECTYPE       1 -   2    SRVY_YR       3 -   6
      HHX      $    7 -  12    INTV_QRT     13 -  13
      INTV_MON     14 -  15    FMX      $   16 -  17
      FPX      $   18 -  19    WTIA         20 -  25 .1
      WTFA         26 -  31

      /* UCF LOCATIONS */

      REGION       32 -  32    PSTRAT       33 -  35
      PPSU         36 -  38

      /* HHC LOCATIONS */

      SEX          39 -  39    ORIGIN_I     40 -  40
      HISPAN_I     41 -  42    RACERPI2     43 -  44
      MRACRPI2     45 -  46    MRACBPI2     47 -  48
      RACRECI3     49 -  49    HISCODI3     50 -  50
      NOWAF        51 -  51    RRP          52 -  53
      HHREFLG  $   54 -  54    FRRP         55 -  56
      AGE_P        57 -  58    AGE_CHG      59 -  59


      /* FID LOCATIONS */

      FMRPFLG  $   60 -  60    FMREFLG  $   61 -  61
      R_MARITL     62 -  62    FSPOUS2  $   63 -  64
      COHAB1       65 -  65    COHAB2       66 -  66
      FCOHAB3  $   67 -  68    CDCMSTAT     69 -  69
      SIB_DEGP     70 -  70    FMOTHER1 $   71 -  72
      MOM_DEGP     73 -  73    FFATHER1 $   74 -  75
      DAD_DEGP     76 -  76    PARENTS      77 -  77
      MOM_ED       78 -  79    DAD_ED       80 -  81
      ASTATFLG     82 -  82    CSTATFLG     83 -  83
      QCADULT      84 -  84    QCCHILD      85 -  85


      /* FHS LOCATIONS */

      PLAPLYLM     86 -  86    PLAPLYUN     87 -  87
      PSPEDEIS     88 -  88    PSPEDEM      89 -  89
      PLAADL       90 -  90    LABATH       91 -  91
      LADRESS      92 -  92    LAEAT        93 -  93
      LABED        94 -  94    LATOILT      95 -  95
      LAHOME       96 -  96    PLAIADL      97 -  97
      PLAWKNOW     98 -  98    PLAWKLIM     99 -  99
      PLAWALK     100 - 100    PLAREMEM    101 - 101
      PLIMANY     102 - 102    LA1AR       103 - 103
      LAHCC1      104 - 104    LAHCC2      105 - 105
      LAHCC3      106 - 106    LAHCC4      107 - 107
      LAHCC5      108 - 108    LAHCC6      109 - 109
      LAHCC7A     110 - 110    LAHCC8      111 - 111
      LAHCC9      112 - 112    LAHCC10     113 - 113
      LAHCC11     114 - 114    LAHCC12     115 - 115
      LAHCC13     116 - 116    LAHCC90     117 - 117
      LAHCC91     118 - 118    LCTIME1     119 - 120
      LCUNIT1     121 - 121    LCDURA1     122 - 123
      LCDURB1     124 - 124    LCCHRC1     125 - 125
      LCTIME2     126 - 127    LCUNIT2     128 - 128
      LCDURA2     129 - 130    LCDURB2     131 - 131
      LCCHRC2     132 - 132    LCTIME3     133 - 134
      LCUNIT3     135 - 135    LCDURA3     136 - 137
      LCDURB3     138 - 138    LCCHRC3     139 - 139
      LCTIME4     140 - 141    LCUNIT4     142 - 142
      LCDURA4     143 - 144    LCDURB4     145 - 145
      LCCHRC4     146 - 146    LCTIME5     147 - 148
      LCUNIT5     149 - 149    LCDURA5     150 - 151
      LCDURB5     152 - 152    LCCHRC5     153 - 153
      LCTIME6     154 - 155    LCUNIT6     156 - 156
      LCDURA6     157 - 158    LCDURB6     159 - 159
      LCCHRC6     160 - 160    LCTIME7A    161 - 162
      LCUNIT7A    163 - 163    LCDURA7A    164 - 165
      LCDURB7A    166 - 166    LCCHRC7A    167 - 167
      LCTIME8     168 - 169    LCUNIT8     170 - 170
      LCDURA8     171 - 172    LCDURB8     173 - 173
      LCCHRC8     174 - 174    LCTIME9     175 - 176
      LCUNIT9     177 - 177    LCDURA9     178 - 179
      LCDURB9     180 - 180    LCCHRC9     181 - 181
      LCTIME10    182 - 183    LCUNIT10    184 - 184
      LCDURA10    185 - 186    LCDURB10    187 - 187
      LCCHRC10    188 - 188    LCTIME11    189 - 190
      LCUNIT11    191 - 191    LCDURA11    192 - 193
      LCDURB11    194 - 194    LCCHRC11    195 - 195
      LCTIME12    196 - 197    LCUNIT12    198 - 198
      LCDURA12    199 - 200    LCDURB12    201 - 201
      LCCHRC12    202 - 202    LCTIME13    203 - 204
      LCUNIT13    205 - 205    LCDURA13    206 - 207
      LCDURB13    208 - 208    LCCHRC13    209 - 209
      LCTIME90    210 - 211    LCUNIT90    212 - 212
      LCDURA90    213 - 214    LCDURB90    215 - 215
      LCCHRC90    216 - 216    LCTIME91    217 - 218
      LCUNIT91    219 - 219    LCDURA91    220 - 221
      LCDURB91    222 - 222    LCCHRC91    223 - 223
      LAHCA1      224 - 224    LAHCA2      225 - 225
      LAHCA3      226 - 226    LAHCA4      227 - 227
      LAHCA5      228 - 228    LAHCA6      229 - 229
      LAHCA7      230 - 230    LAHCA8      231 - 231
      LAHCA9      232 - 232    LAHCA10     233 - 233
      LAHCA11     234 - 234    LAHCA12     235 - 235
      LAHCA13     236 - 236    LAHCA14A    237 - 237
      LAHCA15     238 - 238    LAHCA16     239 - 239
      LAHCA17     240 - 240    LAHCA18     241 - 241
      LAHCA19_    242 - 242    LAHCA20_    243 - 243
      LAHCA21_    244 - 244    LAHCA22_    245 - 245
      LAHCA23_    246 - 246    LAHCA24_    247 - 247
      LAHCA25_    248 - 248    LAHCA26_    249 - 249
      LAHCA27_    250 - 250    LAHCA28_    251 - 251
      LAHCA29_    252 - 252    LAHCA30_    253 - 253
      LAHCA31_    254 - 254    LAHCA32_    255 - 255
      LAHCA33_    256 - 256    LAHCA34_    257 - 257
      LAHCA90     258 - 258    LAHCA91     259 - 259
      LATIME1     260 - 261    LAUNIT1     262 - 262
      LADURA1     263 - 264    LADURB1     265 - 265
      LACHRC1     266 - 266    LATIME2     267 - 268
      LAUNIT2     269 - 269    LADURA2     270 - 271
      LADURB2     272 - 272    LACHRC2     273 - 273
      LATIME3     274 - 275    LAUNIT3     276 - 276
      LADURA3     277 - 278    LADURB3     279 - 279
      LACHRC3     280 - 280    LATIME4     281 - 282
      LAUNIT4     283 - 283    LADURA4     284 - 285
      LADURB4     286 - 286    LACHRC4     287 - 287
      LATIME5     288 - 289    LAUNIT5     290 - 290
      LADURA5     291 - 292    LADURB5     293 - 293
      LACHRC5     294 - 294    LATIME6     295 - 296
      LAUNIT6     297 - 297    LADURA6     298 - 299
      LADURB6     300 - 300    LACHRC6     301 - 301
      LATIME7     302 - 303    LAUNIT7     304 - 304
      LADURA7     305 - 306    LADURB7     307 - 307
      LACHRC7     308 - 308    LATIME8     309 - 310
      LAUNIT8     311 - 311    LADURA8     312 - 313
      LADURB8     314 - 314    LACHRC8     315 - 315
      LATIME9     316 - 317    LAUNIT9     318 - 318
      LADURA9     319 - 320    LADURB9     321 - 321
      LACHRC9     322 - 322    LATIME10    323 - 324
      LAUNIT10    325 - 325    LADURA10    326 - 327
      LADURB10    328 - 328    LACHRC10    329 - 329
      LATIME11    330 - 331    LAUNIT11    332 - 332
      LADURA11    333 - 334    LADURB11    335 - 335
      LACHRC11    336 - 336    LATIME12    337 - 338
      LAUNIT12    339 - 339    LADURA12    340 - 341
      LADURB12    342 - 342    LACHRC12    343 - 343
      LATIME13    344 - 345    LAUNIT13    346 - 346
      LADURA13    347 - 348    LADURB13    349 - 349
      LACHRC13    350 - 350    LTIME14A    351 - 352
      LUNIT14A    353 - 353    LDURA14A    354 - 355
      LDURB14A    356 - 356    LCHRC14A    357 - 357
      LATIME15    358 - 359    LAUNIT15    360 - 360
      LADURA15    361 - 362    LADURB15    363 - 363
      LACHRC15    364 - 364    LATIME16    365 - 366
      LAUNIT16    367 - 367    LADURA16    368 - 369
      LADURB16    370 - 370    LACHRC16    371 - 371
      LATIME17    372 - 373    LAUNIT17    374 - 374
      LADURA17    375 - 376    LADURB17    377 - 377
      LACHRC17    378 - 378    LATIME18    379 - 380
      LAUNIT18    381 - 381    LADURA18    382 - 383
      LADURB18    384 - 384    LACHRC18    385 - 385
      LATIME19    386 - 387    LAUNIT19    388 - 388
      LADURA19    389 - 390    LADURB19    391 - 391
      LACHRC19    392 - 392    LATIME20    393 - 394
      LAUNIT20    395 - 395    LADURA20    396 - 397
      LADURB20    398 - 398    LACHRC20    399 - 399
      LATIME21    400 - 401    LAUNIT21    402 - 402
      LADURA21    403 - 404    LADURB21    405 - 405
      LACHRC21    406 - 406    LATIME22    407 - 408
      LAUNIT22    409 - 409    LADURA22    410 - 411
      LADURB22    412 - 412    LACHRC22    413 - 413
      LATIME23    414 - 415    LAUNIT23    416 - 416
      LADURA23    417 - 418    LADURB23    419 - 419
      LACHRC23    420 - 420    LATIME24    421 - 422
      LAUNIT24    423 - 423    LADURA24    424 - 425
      LADURB24    426 - 426    LACHRC24    427 - 427
      LATIME25    428 - 429    LAUNIT25    430 - 430
      LADURA25    431 - 432    LADURB25    433 - 433
      LACHRC25    434 - 434    LATIME26    435 - 436
      LAUNIT26    437 - 437    LADURA26    438 - 439
      LADURB26    440 - 440    LACHRC26    441 - 441
      LATIME27    442 - 443    LAUNIT27    444 - 444
      LADURA27    445 - 446    LADURB27    447 - 447
      LACHRC27    448 - 448    LATIME28    449 - 450
      LAUNIT28    451 - 451    LADURA28    452 - 453
      LADURB28    454 - 454    LACHRC28    455 - 455
      LATIME29    456 - 457    LAUNIT29    458 - 458
      LADURA29    459 - 460    LADURB29    461 - 461
      LACHRC29    462 - 462    LATIME30    463 - 464
      LAUNIT30    465 - 465    LADURA30    466 - 467
      LADURB30    468 - 468    LACHRC30    469 - 469
      LATIME31    470 - 471    LAUNIT31    472 - 472
      LADURA31    473 - 474    LADURB31    475 - 475
      LACHRC31    476 - 476    LATIME32    477 - 478
      LAUNIT32    479 - 479    LADURA32    480 - 481
      LADURB32    482 - 482    LACHRC32    483 - 483
      LATIME33    484 - 485    LAUNIT33    486 - 486
      LADURA33    487 - 488    LADURB33    489 - 489
      LACHRC33    490 - 490    LATIME34    491 - 492
      LAUNIT34    493 - 493    LADURA34    494 - 495
      LADURB34    496 - 496    LACHRC34    497 - 497
      LATIME90    498 - 499    LAUNIT90    500 - 500
      LADURA90    501 - 502    LADURB90    503 - 503
      LACHRC90    504 - 504    LATIME91    505 - 506
      LAUNIT91    507 - 507    LADURA91    508 - 509
      LADURB91    510 - 510    LACHRC91    511 - 511
      LCONDRT     512 - 512    LACHRONR    513 - 513
      PHSTAT      514 - 514

      /* FAU LOCATIONS */

      PDMED12M    515 - 515    PNMED12M    516 - 516
      PHOSPYR2    517 - 517    HOSPNO_P    518 - 518
      HPNITE_P    519 - 520    PHCHM2W     521 - 521
      PHCHN2WP    522 - 523    PHCPH2WR    524 - 524
      PHCPN2WP    525 - 526    PHCDV2W     527 - 527
      PHCDN2WP    528 - 529    P10DVYR     530 - 530


      /* FHI LOCATIONS */

      NOTCOV      531 - 531    COVER       532 - 532
      COVER65     533 - 533    COVER65O    534 - 534
      MEDICARE    535 - 535    MCPART      536 - 536
      MCCHOICE    537 - 537    MCHMO       538 - 538
      MCADVR      539 - 539    MCPREM      540 - 540
      MCREF       541 - 541    MCPARTD     542 - 542
      MEDICAID    543 - 543    MAFLG       544 - 544
      MACHMD      545 - 545    MXCHNG      546 - 546
      MEDPREM     547 - 547    MDPRINC     548 - 548
      SINGLE      549 - 549    SSTYPEA     550 - 550
      SSTYPEB     551 - 551    SSTYPEC     552 - 552
      SSTYPED     553 - 553    SSTYPEE     554 - 554
      SSTYPEF     555 - 555    SSTYPEG     556 - 556
      SSTYPEH     557 - 557    SSTYPEI     558 - 558
      SSTYPEJ     559 - 559    SSTYPEK     560 - 560
      SSTYPEL     561 - 561    PRIVATE     562 - 562
      PRFLG       563 - 563    EXCHANGE    564 - 564
      WHONAM1     565 - 565    PRPOLH1     566 - 566
      PRCOOH1     567 - 567    PLNWRKS1    568 - 569
      PLNEXCH1    570 - 570    EXCHPR1     571 - 571
      PLNPAY11    572 - 572    PLNPAY21    573 - 573
      PLNPAY31    574 - 574    PLNPAY41    575 - 575
      PLNPAY51    576 - 576    PLNPAY61    577 - 577
      PLNPAY71    578 - 578    PLNPRE1     579 - 579
      HICOSTR1    580 - 584    PLNMGD1     585 - 585
      HDHP1       586 - 586    HSAHRA1     587 - 587
      MGCHMD1     588 - 588    MGPRMD1     589 - 589
      MGPYMD1     590 - 590    PCPREQ1     591 - 591
      PRRXCOV1    592 - 592    PRDNCOV1    593 - 593
      PXCHNG      594 - 594    PLEXCHPR    595 - 595
      PSTRFPRM    596 - 596    PSSPRINC    597 - 597
      PSTDOC      598 - 598    WHONAM2     599 - 599
      PRPOLH2     600 - 600    PRCOOH2     601 - 601
      PLNWRKS2    602 - 603    PLNEXCH2    604 - 604
      EXCHPR2     605 - 605    PLNPAY12    606 - 606
      PLNPAY22    607 - 607    PLNPAY32    608 - 608
      PLNPAY42    609 - 609    PLNPAY52    610 - 610
      PLNPAY62    611 - 611    PLNPAY72    612 - 612
      PLNPRE2     613 - 613    HICOSTR2    614 - 618
      PLNMGD2     619 - 619    HDHP2       620 - 620
      HSAHRA2     621 - 621    MGCHMD2     622 - 622
      MGPRMD2     623 - 623    MGPYMD2     624 - 624
      PCPREQ2     625 - 625    PRRXCOV2    626 - 626
      PRDNCOV2    627 - 627    PRPLPLUS    628 - 628
      FCOVCONF    629 - 629    SCHIP       630 - 630
      CHFLG       631 - 631    CHXCHNG     632 - 632
      STRFPRM1    633 - 633    CHPRINC     634 - 634
      STDOC1      635 - 635    OTHPUB      636 - 636
      OPFLG       637 - 637    OPXCHNG     638 - 638
      PLEXCHOP    639 - 639    STRFPRM2    640 - 640
      SSPRINC     641 - 641    STDOC2      642 - 642
      OTHGOV      643 - 643    OGFLG       644 - 644
      OGXCHNG     645 - 645    PLEXCHOG    646 - 646
      STRFPRM3    647 - 647    OGPRINC     648 - 648
      STDOC3      649 - 649    MILITARN    650 - 650
      MILSPC1     651 - 651    MILSPC2N    652 - 652
      MILSPC2I    653 - 653    MILSPC3     654 - 654
      MILSPC4     655 - 655    MILMANN     656 - 656
      IHS         657 - 657    HILAST2     658 - 658
      HISTOP1     659 - 659    HISTOP2     660 - 660
      HISTOP3     661 - 661    HISTOP4     662 - 662
      HISTOP5     663 - 663    HISTOP6     664 - 664
      HISTOP7     665 - 665    HISTOP8     666 - 666
      HISTOP9     667 - 667    HISTOP10    668 - 668
      HISTOP11    669 - 669    HISTOP12    670 - 670
      HISTOP13    671 - 671    HISTOP14    672 - 672
      HISTOP15    673 - 673    HINOTYR     674 - 674
      HINOTMYR    675 - 676    FHICHNG     677 - 677
      FHIKDBA     678 - 678    FHIKDBB     679 - 679
      FHIKDBC     680 - 680    FHIKDBD     681 - 681
      FHIKDBE     682 - 682    FHIKDBF     683 - 683
      FHIKDBG     684 - 684    FHIKDBH     685 - 685
      FHIKDBI     686 - 686    FHIKDBJ     687 - 687
      FHIKDBK     688 - 688    PWRKBR1     689 - 690
      HCSPFYR     691 - 691    MEDBILL     692 - 692
      MEDBPAY     693 - 693    MEDBNOP     694 - 694
      FSA         695 - 695    HIKINDNA    696 - 696
      HIKINDNB    697 - 697    HIKINDNC    698 - 698
      HIKINDND    699 - 699    HIKINDNE    700 - 700
      HIKINDNF    701 - 701    HIKINDNG    702 - 702
      HIKINDNH    703 - 703    HIKINDNI    704 - 704
      HIKINDNJ    705 - 705    HIKINDNK    706 - 706
      MCAREPRB    707 - 707    MCAIDPRB    708 - 708
      SINCOV      709 - 709

      /* FSD LOCATIONS */

      PLBORN      710 - 710    REGIONBR    711 - 712
      GEOBRTH     713 - 713    YRSINUS     714 - 714
      CITIZENP    715 - 715    HEADST      716 - 716
      HEADSTV1    717 - 717    EDUC1       718 - 719
      ARMFVER     720 - 720    ARMFEV      721 - 721
      ARMFFC      722 - 722    ARMFTM1P    723 - 723
      ARMFTM2P    724 - 724    ARMFTM3P    725 - 725
      ARMFTM4P    726 - 726    ARMFTM5P    727 - 727
      ARMFTM6P    728 - 728    ARMFTM7P    729 - 729
      VACOV       730 - 730    DOINGLWP    731 - 731
      WHYNOWKP    732 - 733    WRKHRS2     734 - 735
      WRKFTALL    736 - 736    WRKLYR1     737 - 737
      WRKMYR      738 - 739    ERNYR_P     740 - 741
      HIEMPOF     742 - 742

      /* FIN LOCATIONS */

      FINCINT     743 - 743    PSAL        744 - 744
      PSEINC      745 - 745    PSSRR       746 - 746
      PSSRRDB     747 - 747    PSSRRD      748 - 748
      PPENS       749 - 749    POPENS      750 - 750
      PSSI        751 - 751    PSSID       752 - 752
      PTANF       753 - 753    POWBEN      754 - 754
      PINTRSTR    755 - 755    PDIVD       756 - 756
      PCHLDSP     757 - 757    PINCOT      758 - 758
      PSSAPL      759 - 759    PSDAPL      760 - 760
      TANFMYR     761 - 762    ELIGPWIC    763 - 763
      PWIC        764 - 764    WIC_FLAG    765 - 765


      /* FLG LOCATIONS */

      ENGLANG     766 - 766;

   * DEFINE VARIABLE LABELS;

   LABEL

      /* IDN LABELS */

      RECTYPE    ="File type identifier"
      SRVY_YR    ="Year of National Health Interview Survey"
      HHX        ="Household Number"
      INTV_QRT   ="Interview Quarter"
      INTV_MON   ="Assignment/Interview Month"
      FMX        ="Family Number"
      FPX        ="Person Number (Within family)"
      WTIA       ="Weight - Interim Annual"
      WTFA       ="Weight - Final Annual"

      /* UCF LABELS */

      REGION     ="Region"
      PSTRAT     ="Pseudo-stratum for public-use file variance estimation"
      PPSU       ="Pseudo-PSU for public-use file variance estimation"

      /* HHC LABELS */

      SEX        ="Sex"
      ORIGIN_I   ="Hispanic Ethnicity"
      HISPAN_I   ="Hispanic subgroup detail"
      RACERPI2   ="OMB groups w/multiple race"
      MRACRPI2   ="Race coded to single/multiple race group"
      MRACBPI2   ="Race coded to single/multiple race group"
      RACRECI3   ="Race Recode"
      HISCODI3   ="Race/ethnicity recode"
      NOWAF      ="Armed Forces Status"
      RRP        ="Relationship to the HH reference person"
      HHREFLG    ="HH Reference Person Flag"
      FRRP       ="Relationship to family ref. Person"
      AGE_P      ="Age"
      AGE_CHG    ="Indication of AGE correction due to data entry error"

      /* FID LABELS */

      FMRPFLG    ="Family Respondent Flag"
      FMREFLG    ="Family Reference Person Flag"
      R_MARITL   ="Marital Status"
      FSPOUS2    ="Person # of spouse"
      COHAB1     ="Cohabiting person ever married"
      COHAB2     ="Cohabiting person's current marital status"
      FCOHAB3    ="Person # of partner"
      CDCMSTAT   ="CDC standard for legal marital status"
      SIB_DEGP   ="Degree of sibling relationship to HH reference person"
      FMOTHER1   ="Person # of mother"
      MOM_DEGP   ="Type of relationship with Mother"
      FFATHER1   ="Person # of father"
      DAD_DEGP   ="Type of relationship with Father"
      PARENTS    ="Parent(s) present in the family"
      MOM_ED     ="Education of Mother"
      DAD_ED     ="Education of Father"
      ASTATFLG   ="Sample Adult Flag"
      CSTATFLG   ="Sample Child Flag"
      QCADULT    ="Quality control flag for sample adult"
      QCCHILD    ="Quality control flag for sample child"

      /* FHS LABELS */

      PLAPLYLM   ="Is - - limited in kind/amount play?"
      PLAPLYUN   ="Is - - able to play at all?"
      PSPEDEIS   ="Does - - receive Special Education or EIS?"
      PSPEDEM    =
"Receive Special Education/EIS due to emotional/behavioral problem"
      PLAADL     ="Does - - need help with personal care?"
      LABATH     ="Does - - need help with bathing/showering?"
      LADRESS    ="Does - - need help dressing?"
      LAEAT      ="Does - - need help eating?"
      LABED      ="Does - - need help in/out of bed or chairs?"
      LATOILT    ="Does - - need help using the toilet?"
      LAHOME     ="Does - - need help to get around in the home?"
      PLAIADL    ="Does - - need help with routine needs?"
      PLAWKNOW   ="Is - - unable to work NOW due to health problem?"
      PLAWKLIM   ="Is - - limited in kind/amount of work?"
      PLAWALK    ="Does - - have difficulty walking without equipment?"
      PLAREMEM   ="Is - - limited by difficulty remembering?"
      PLIMANY    ="Is - - limited in any (other) way?"
      LA1AR      ="Any limitation - all persons, all conditions"
      LAHCC1     ="Vision/problem seeing causes limitation"
      LAHCC2     ="Hearing problem causes limitation"
      LAHCC3     ="Speech problem causes limitation"
      LAHCC4     ="Asthma/breathing problem causes limitation"
      LAHCC5     ="Birth defect causes limitation"
      LAHCC6     ="Injury causes limitation"
      LAHCC7A    =
"Intellectual disability, also known as mental retardation causes limitation"
      LAHCC8     =
"Other developmental problem (e.g., cerebral palsy) causes limitation"
      LAHCC9     =
"Other mental, emotional, or behavioral problem causes limitation"
      LAHCC10    ="Bone, joint, or muscle problem causes limitation"
      LAHCC11    ="Epilepsy or seizures cause limitation"
      LAHCC12    ="Learning disability causes limitation"
      LAHCC13    =
"Attention Deficit/Hyperactivity Disorder (ADD/ADHD) causes limitation"
      LAHCC90    ="Other impairment/problem (1) causes limitation"
      LAHCC91    ="Other impairment/problem (2) causes limitation"
      LCTIME1    ="Duration of vision problem: Number of units"
      LCUNIT1    ="Duration of vision problem: Time unit"
      LCDURA1    ="Duration of vision problem (in years)"
      LCDURB1    ="Duration of vision problem recode 2"
      LCCHRC1    ="Vision problem condition status"
      LCTIME2    ="Duration of hearing problem: Number of units"
      LCUNIT2    ="Duration of hearing problem: Time unit"
      LCDURA2    ="Duration of hearing problem (in years)"
      LCDURB2    ="Duration of hearing problem recode 2"
      LCCHRC2    ="Hearing problem condition status"
      LCTIME3    ="Duration of speech problem: Number of units"
      LCUNIT3    ="Duration of speech problem: Time unit"
      LCDURA3    ="Duration of speech problem (in years)"
      LCDURB3    ="Duration of speech problem recode 2"
      LCCHRC3    ="Speech problem condition status"
      LCTIME4    ="Duration of asthma/breathing problem: Number of units"
      LCUNIT4    ="Duration of asthma/breathing problem: Time unit"
      LCDURA4    ="Duration of asthma/breathing problem (in years)"
      LCDURB4    ="Duration of asthma/breathing problem recode 2"
      LCCHRC4    ="Asthma/breathing problem condition status"
      LCTIME5    ="Duration of birth defect: Number of units"
      LCUNIT5    ="Duration of birth defect: Time unit"
      LCDURA5    ="Duration of birth defect (in years)"
      LCDURB5    ="Duration of birth defect recode 2"
      LCCHRC5    ="Birth defect condition status"
      LCTIME6    ="Duration of injury: Number of units"
      LCUNIT6    ="Duration of injury: Time unit"
      LCDURA6    ="Duration of injury (in years)"
      LCDURB6    ="Duration of injury recode 2"
      LCCHRC6    ="Injury condition status"
      LCTIME7A   =
"Duration of intellectual disability, AKA mental retardation: Number of units"
      LCUNIT7A   =
"Duration of intellectual disability, also known as mental retardation: Time uni
t"
      LCDURA7A   =
"Duration of intellectual disability, also known as mental retardation (in years
)"
      LCDURB7A   =
"Duration of intellectual disability, also known as mental retardation recode 2"
      LCCHRC7A   =
"Intellectual disability, also known as mental retardation condition status"
      LCTIME8    ="Duration of other developmental problem: Number of units"
      LCUNIT8    ="Duration of other developmental problem: Time unit"
      LCDURA8    ="Duration of other developmental problem (in years)"
      LCDURB8    ="Duration of other developmental problem recode 2"
      LCCHRC8    ="Other developmental problem condition status"
      LCTIME9    =
"Duration of other mental/emotional/behavioral problem: Number of units"
      LCUNIT9    =
"Duration of other mental, emotional, or behavioral problem: Number of units"
      LCDURA9    =
"Duration of other mental, emotional, or behavioral problem (in years)"
      LCDURB9    =
"Duration of other mental, emotional, or behavioral problem recode 2"
      LCCHRC9    =
"Other mental, emotional, or behavioral problem condition status"
      LCTIME10   ="Duration of bone, joint, or muscle problem: Number of units"
      LCUNIT10   ="Duration of bone, joint, or muscle problem: Time unit"
      LCDURA10   ="Duration of bone, joint, or muscle problem (in years)"
      LCDURB10   ="Duration of bone, joint, or muscle problem recode 2"
      LCCHRC10   ="Bone, joint, or muscle problem condition status"
      LCTIME11   ="Duration of epilepsy or seizures: Number of units"
      LCUNIT11   ="Duration of epilepsy or seizures: Time unit"
      LCDURA11   ="Duration of epilepsy or seizures (in years)"
      LCDURB11   ="Duration of epilepsy or seizures recode 2"
      LCCHRC11   ="Epilepsy or seizures condition status"
      LCTIME12   ="Duration of learning disability: Number of units"
      LCUNIT12   ="Duration of learning disability: Time unit"
      LCDURA12   ="Duration of learning disability (in years)"
      LCDURB12   ="Duration of learning disability recode 2"
      LCCHRC12   ="Learning disability condition status"
      LCTIME13   =
"Duration of attention deficit/hyperactivity disorder (ADD/ADHD): Number of unit
s"
      LCUNIT13   =
"Duration of attention deficit/hyperactivity disorder (ADD/ADHD): Time unit"
      LCDURA13   =
"Duration of attention deficit/hyperactivity disorder (ADD/ADHD) (in years)"
      LCDURB13   =
"Duration of attention deficit/hyperactivity disorder (ADD/ADHD) recode 2"
      LCCHRC13   =
"Attention deficit/hyperactivity disorder (ADD/ADHD) condition status"
      LCTIME90   ="Duration of other impairment problem (1): Number of units"
      LCUNIT90   ="Duration of other impairment/problem (1): Time unit"
      LCDURA90   ="Duration of other impairment/problem (1) (in years)"
      LCDURB90   ="Duration of other impairment/problem (1) recode 2"
      LCCHRC90   ="Other impairment/problem (1) condition status"
      LCTIME91   ="Duration of other impairment/problem (2): Number of units"
      LCUNIT91   ="Duration of other impairment/problem (2): Time unit"
      LCDURA91   ="Duration of other impairment/problem (2) (in years)"
      LCDURB91   ="Duration of other impairment/problem (2) recode 2"
      LCCHRC91   ="Other impairment/problem (2) condition status"
      LAHCA1     ="Vision/problem seeing causes limitation"
      LAHCA2     ="Hearing problem causes limitation"
      LAHCA3     ="Arthritis/rheumatism causes limitation"
      LAHCA4     ="Back or neck problem causes limitation"
      LAHCA5     ="Fracture, bone/joint injury causes limitation"
      LAHCA6     ="Other injury causes limitation"
      LAHCA7     ="Heart problem causes limitation"
      LAHCA8     ="Stroke problem causes limitation"
      LAHCA9     ="Hypertension/high blood pressure causes limitation"
      LAHCA10    ="Diabetes causes limitation"
      LAHCA11    =
"Lung/breathing problem (e.g., asthma and emphysema) causes limitation"
      LAHCA12    ="Cancer causes limitation"
      LAHCA13    ="Birth defect causes limitation"
      LAHCA14A   =
"Intellectual disability, also known as mental retardation causes limitation"
      LAHCA15    =
"Other developmental problem (e.g., cerebral palsy) causes limitation"
      LAHCA16    ="Senility causes limitation"
      LAHCA17    ="Depression/anxiety/emotional problem causes limitation"
      LAHCA18    ="Weight problem causes limitation"
      LAHCA19_   ="Missing or amputated limb/finger/digit causes limitation"
      LAHCA20_   ="Musculoskeletal/connective tissue problem causes limitation"
      LAHCA21_   ="Circulation problems (including blood clots) cause limitation
"
      LAHCA22_   ="Endocrine/nutritional/metabolic problem causes limitation"
      LAHCA23_   ="Nervous system/sensory organ condition causes limitation"
      LAHCA24_   ="Digestive system problem causes limitation"
      LAHCA25_   ="Genitourinary system problem causes limitation"
      LAHCA26_   ="Skin/subcutaneous system problem causes limitation"
      LAHCA27_   ="Blood or blood-forming organ problem causes limitation"
      LAHCA28_   ="Benign tumor/cyst causes limitation"
      LAHCA29_   ="Alcohol/drug/substance abuse problem causes limitation"
      LAHCA30_   =
"Other mental problem/ADD/bipolar/schizophrenia causes limitation"
      LAHCA31_   ="Surgical after-effects/medical treatment causes limitation"
      LAHCA32_   ='"Old age"/elderly/aging-related problem causes limitation'
      LAHCA33_   ="Fatigue/tiredness/weakness causes limitation"
      LAHCA34_   ="Pregnancy-related problem causes limitation"
      LAHCA90    ="Other impairment/problem (1) causes limitation"
      LAHCA91    ="Other impairment/problem (2) causes limitation"
      LATIME1    ="Duration of vision problem: Number of units"
      LAUNIT1    ="Duration of vision problem: Time unit"
      LADURA1    ="Duration of vision problem (in years)"
      LADURB1    ="Duration of vision problem recode 2"
      LACHRC1    ="Vision problem condition status"
      LATIME2    ="Duration of hearing problem: Number of units"
      LAUNIT2    ="Duration of hearing problem: Time unit"
      LADURA2    ="Duration of hearing problem (in years)"
      LADURB2    ="Duration of hearing problem recode 2"
      LACHRC2    ="Hearing problem condition status"
      LATIME3    ="Duration of arthritis/rheumatism: Number of units"
      LAUNIT3    ="Duration of arthritis/rheumatism: Time unit"
      LADURA3    ="Duration of arthritis/rheumatism (in years)"
      LADURB3    ="Duration of arthritis/rheumatism recode 2"
      LACHRC3    ="Arthritis/rheumatism condition status"
      LATIME4    ="Duration of back or neck problem: Number of units"
      LAUNIT4    ="Duration of back or neck problem: Time unit"
      LADURA4    ="Duration of back or neck problem (in years)"
      LADURB4    ="Duration of back or neck problem recode 2"
      LACHRC4    ="Back or neck problem condition status"
      LATIME5    ="Duration of fracture, bone/joint injury: Number of units"
      LAUNIT5    ="Duration of fracture, bone/joint injury: Time unit"
      LADURA5    ="Duration of fracture, bone/joint injury (in years)"
      LADURB5    ="Duration of fracture, bone/joint injury recode 2"
      LACHRC5    ="Fracture, bone/joint injury condition status"
      LATIME6    ="Duration of other injury: Number of units"
      LAUNIT6    ="Duration of other injury: Time unit"
      LADURA6    ="Duration of other injury (in years)"
      LADURB6    ="Duration of other injury recode 2"
      LACHRC6    ="Other injury condition status"
      LATIME7    ="Duration of heart problem: Number of units"
      LAUNIT7    ="Duration of heart problem: Time unit"
      LADURA7    ="Duration of heart problem (in years)"
      LADURB7    ="Duration of heart problem recode 2"
      LACHRC7    ="Heart problem condition status"
      LATIME8    ="Duration of stroke problem: Number of units"
      LAUNIT8    ="Duration of stroke problem: Time unit"
      LADURA8    ="Duration of stroke problem (in years)"
      LADURB8    ="Duration of stroke problem recode 2"
      LACHRC8    ="Stroke problem condition status"
      LATIME9    =
"Duration of hypertension or high blood pressure: Number of units"
      LAUNIT9    ="Duration of hypertension or high blood pressure: Time unit"
      LADURA9    ="Duration of hypertension or high blood pressure (in years)"
      LADURB9    ="Duration of hypertension or high blood pressure: recode 2"
      LACHRC9    ="Hypertension or high blood pressure condition status"
      LATIME10   ="Duration of diabetes: Number of units"
      LAUNIT10   ="Duration of diabetes: Time unit"
      LADURA10   ="Duration of diabetes (in years)"
      LADURB10   ="Duration of diabetes recode 2"
      LACHRC10   ="Diabetes condition status"
      LATIME11   =
"Duration of lung or breathing problem (eg asthma and emphysema): Number of unit
s"
      LAUNIT11   =
"Duration of lung or breathing problem (e.g., asthma and emphysema): Time unit"
      LADURA11   =
"Duration of lung or breathing problem (e.g., asthma and emphysema) (in years)"
      LADURB11   =
"Duration of lung or breathing problem (e.g., asthma and emphysema): recode 2"
      LACHRC11   =
"Lung or breathing problem (e.g., asthma and emphysema): condition status"
      LATIME12   ="Duration of cancer: Number of units"
      LAUNIT12   ="Duration of cancer: Time unit"
      LADURA12   ="Duration of cancer (in years)"
      LADURB12   ="Duration of cancer recode 2"
      LACHRC12   ="Cancer condition status"
      LATIME13   ="Duration of birth defect: Number of units"
      LAUNIT13   ="Duration of birth defect: Time unit"
      LADURA13   ="Duration of birth defect (in years)"
      LADURB13   ="Duration of birth defect recode 2"
      LACHRC13   ="Birth defect condition status"
      LTIME14A   =
"Duration of intellectual disability, AKA mental retardation: Number of units"
      LUNIT14A   =
"Duration of intellectual disability, also known as mental retardation: Time uni
t"
      LDURA14A   =
"Duration of intellectual disability, also known as mental retardation (in years
)"
      LDURB14A   =
"Duration of intellectual disability, also known as mental retardation recode 2"
      LCHRC14A   =
"Intellectual disability, also known as mental retardation condition status"
      LATIME15   =
"Duration of other developmental problem (e.g., cerebral palsy): Number of units
"
      LAUNIT15   =
"Duration of other developmental problem (e.g., cerebral palsy): Time unit"
      LADURA15   =
"Duration of other developmental problem (e.g., cerebral palsy) (in years)"
      LADURB15   =
"Duration of other developmental problem (e.g., cerebral palsy) recode 2"
      LACHRC15   =
"Other developmental problem (e.g., cerebral palsy) condition status"
      LATIME16   ="Duration of senility: Number of units"
      LAUNIT16   ="Duration of senility: Time unit"
      LADURA16   ="Duration of senility (in years)"
      LADURB16   ="Duration of senility recode 2"
      LACHRC16   ="Senility condition status"
      LATIME17   =
"Duration of depression, anxiety, or emotional problem: Number of units"
      LAUNIT17   =
"Duration of depression, anxiety, or emotional problem: Time unit"
      LADURA17   =
"Duration of depression, anxiety, or emotional problem (in years)"
      LADURB17   =
"Duration of depression, anxiety, or emotional problem recode 2"
      LACHRC17   ="Depression/anxiety/emotional problem condition status"
      LATIME18   ="Duration of weight problem: Number of units"
      LAUNIT18   ="Duration of weight problem: Time unit"
      LADURA18   ="Duration of weight problem (in years)"
      LADURB18   ="Duration of weight problem recode 2"
      LACHRC18   ="Weight problem condition status"
      LATIME19   =
"Duration of missing limbs (fingers, toes); amputation: Number of units"
      LAUNIT19   =
"Duration of missing limbs (fingers, toes, or digits); amputation: Time unit"
      LADURA19   =
"Duration of missing limbs (fingers, toes, or digits); amputation (in years)"
      LADURB19   =
"Duration of missing limbs (fingers, toes, or digits); amputation recode 2"
      LACHRC19   =
"Missing limbs (fingers, toes, or digits); amputation condition status"
      LATIME20   =
"Duration of musculoskeletal/connective tissue problem: Number of units"
      LAUNIT20   =
"Duration of musculoskeletal/connective tissue problem: Time unit"
      LADURA20   =
"Duration of musculoskeletal/connective tissue problem (in years)"
      LADURB20   =
"Duration of musculoskeletal/connective tissue problem recode 2"
      LACHRC20   ="Musculoskeletal/connective tissue problem condition status"
      LATIME21   =
"Duration of circulation problems (including blood clots) : Number of units"
      LAUNIT21   =
"Duration of circulation problems (including blood clots): Time unit"
      LADURA21   =
"Duration of circulation problems (including blood clots) (in years)"
      LADURB21   =
"Duration of circulation problems (including blood clots) recode 2"
      LACHRC21   ="Circulation problems (including blood clots) condition status
"
      LATIME22   =
"Duration of endocrine/nutritional/metabolic problem: Number of units"
      LAUNIT22   =
"Duration of endocrine/nutritional/metabolic problem: Time unit"
      LADURA22   =
"Duration of endocrine/nutritional/metabolic problem (in years)"
      LADURB22   ="Duration of endocrine/nutritional/metabolic problem recode 2"
      LACHRC22   ="Endocrine/nutritional/metabolic problem condition status"
      LATIME23   =
"Duration of nervous system /sensory organ condition: Number of units"
      LAUNIT23   ="Duration of nervous system/sensory organ condition: Time unit
"
      LADURA23   ="Duration of nervous system/sensory organ condition (in years)
"
      LADURB23   ="Duration of nervous system/sensory organ condition recode 2"
      LACHRC23   ="Nervous system/sensory organ condition status"
      LATIME24   ="Duration of digestive system problems: Number of units"
      LAUNIT24   ="Duration of digestive system problems: Number of units"
      LADURA24   ="Duration of digestive system problems (in years)"
      LADURB24   ="Duration of digestive system problems recode 2"
      LACHRC24   ="Digestive system problems condition status"
      LATIME25   ="Duration of genitourinary system problem: Number of units"
      LAUNIT25   ="Duration of genitourinary system problem: Time unit"
      LADURA25   ="Duration of genitourinary system problem (in years)"
      LADURB25   ="Duration of genitourinary system problem recode 2"
      LACHRC25   ="Genitourinary system problem condition status"
      LATIME26   =
"Duration of skin/subcutaneous system problems: Number of units"
      LAUNIT26   ="Duration of skin/subcutaneous system problems: Time unit"
      LADURA26   ="Duration of skin/subcutaneous system problems (in years)"
      LADURB26   ="Duration of skin/subcutaneous system problem recode 2"
      LACHRC26   ="Skin/subcutaneous system problems condition status"
      LATIME27   =
"Duration of blood or blood-forming organ problem: Number of units"
      LAUNIT27   ="Duration of blood or blood-forming organ problem: Time unit"
      LADURA27   ="Duration of blood or blood-forming organ problem (in years)"
      LADURB27   ="Duration of blood or blood-forming organ problem recode 2"
      LACHRC27   ="Blood or blood-forming organ problem condition status"
      LATIME28   ="Duration of benign tumor/cyst: Number of units"
      LAUNIT28   ="Duration of benign tumor/cyst: Time unit"
      LADURA28   ="Duration of benign tumor/cyst (in years)"
      LADURB28   ="Duration of benign tumor/cyst recode 2"
      LACHRC28   ="Benign tumor/cyst condition status"
      LATIME29   =
"Duration of alcohol/drug/substance abuse problem: Number of units"
      LAUNIT29   ="Duration of alcohol/drug/substance abuse problem: Time unit"
      LADURA29   ="Duration of alcohol/drug/substance abuse problem (in years)"
      LADURB29   ="Duration of alcohol/drug/substance abuse problem recode 2"
      LACHRC29   ="Alcohol/drug/substance abuse problem condition status"
      LATIME30   =
"Duration of other mental problem/ADD/Bipolar/Schizophrenia: Number of units"
      LAUNIT30   =
"Duration of other mental problem/ADD/Bipolar/Schizophrenia: Time unit"
      LADURA30   =
"Duration of other mental problem/ADD/Bipolar/Schizophrenia (in years)"
      LADURB30   =
"Duration of other mental problem/ADD/Bipolar/Schizophrenia recode 2"
      LACHRC30   =
"Other mental problem/ADD/Bipolar/Schizophrenia condition status"
      LATIME31   =
"Duration of surgical after-effects/medical treatment problems: Number of units"
      LAUNIT31   =
"Duration of surgical after-effects/medical treatment problems: Time unit"
      LADURA31   =
"Duration of surgical after-effects/medical treatment problems (in years)"
      LADURB31   =
"Duration of surgical after-effects/medical treatment problems recode 2"
      LACHRC31   =
"Surgical after-effects/medical treatment problems condition status"
      LATIME32   =
'Duration of "old age"/elderly/aging-related problems: Number of units'
      LAUNIT32   =
'Duration of "old age"/elderly/aging-related problems: Number of units'
      LADURA32   =
'Duration of "old age"/elderly/aging-related problems (in years)'
      LADURB32   ='Duration of "old age"/elderly/aging-related problems recode 2
'
      LACHRC32   ='"Old age"/elderly/aging-related problems condition status'
      LATIME33   =
"Duration of fatigue/tiredness/weakness problem: Number of units"
      LAUNIT33   ="Duration of fatigue/tiredness/weakness problem: Time unit"
      LADURA33   ="Duration of fatigue/tiredness/weakness problem (in years)"
      LADURB33   ="Duration of fatigue/tiredness/weakness problem recode 2"
      LACHRC33   ="Fatigue/tiredness/weakness problem condition status"
      LATIME34   ="Duration of pregnancy-related problem: Number of units"
      LAUNIT34   ="Duration of pregnancy-related problem: Time unit"
      LADURA34   ="Duration of pregnancy-related problem (in years)"
      LADURB34   ="Duration of pregnancy-related problem recode 2"
      LACHRC34   ="Pregnancy-related condition status"
      LATIME90   =
"Duration of other impairment/problem N.E.C. (1): Number of units"
      LAUNIT90   ="Duration of other impairment/problem N.E.C. (1): Time unit"
      LADURA90   ="Duration of other impairment/problem N.E.C. (1) (in years)"
      LADURB90   ="Duration of other impairment/problem N.E.C. (1) recode 2"
      LACHRC90   ="Other impairment/problem N.E.C. (1) condition status"
      LATIME91   =
"Duration of other impairment/problem N.E.C. (2): Number of units"
      LAUNIT91   ="Duration of other impairment/problem N.E.C. (2): Time unit"
      LADURA91   ="Duration of other impairment/problem N.E.C. (2) (in years)"
      LADURB91   ="Duration of other impairment/problem N.E.C. (2) recode 2"
      LACHRC91   ="Other impairment/problem N.E.C. (2) condition status"
      LCONDRT    =
"Chronic condition recode for person with limitation of activity"
      LACHRONR   ="Limitation of activity recode by chronic condition status"
      PHSTAT     ="Reported health status"

      /* FAU LABELS */

      PDMED12M   ="Has medical care been delayed for - - (cost), 12m"
      PNMED12M   ="Did - - need and NOT get medical care (cost), 12m"
      PHOSPYR2   ="Has - - been in a hospital OVERNIGHT, 12m"
      HOSPNO_P   ="Number of times in hospital overnight, 12m"
      HPNITE_P   ="Number of nights in hospital, 12m"
      PHCHM2W    ="Did - - receive HOME care by health professional, 2 wk"
      PHCHN2WP   ="Number of HOME visits by health professional, 2wk"
      PHCPH2WR   ="Did--get advice/test results by phone, 2wk"
      PHCPN2WP   ="Number of PHONE calls to health professional, 2wk"
      PHCDV2W    ="Did - - see health professional in office, etc, 2wk"
      PHCDN2WP   ="Number of times VISITED health professional, 2wk"
      P10DVYR    ="Did - - receive care 10+ times, 12m"

      /* FHI LABELS */

      NOTCOV     ="Cov stat as used in Health United States"
      COVER      ="Health insurance hierarchy under 65"
      COVER65    ="Health insurance hierarchy 65+"
      COVER65O   ="Original health insurance hierarchy 65+"
      MEDICARE   ="Medicare coverage recode"
      MCPART     ="Type of Medicare coverage"
      MCCHOICE   ="Enrolled in Medicare Advantage Plan"
      MCHMO      ="Is - - signed up with an HMO"
      MCADVR     ="Medicare Advantage Plan"
      MCPREM     ="Premium for Medicare Advantage/ Medicare HMO"
      MCREF      ="Need a referral for special care"
      MCPARTD    ="Medicare Part D"
      MEDICAID   ="Medicaid coverage recode"
      MAFLG      ="Medicaid reassignment flag"
      MACHMD     ="Any doc, chooses from a list, doc assigned"
      MXCHNG     ="Medicaid Exchange"
      MEDPREM    ="Medicaid Premium"
      MDPRINC    ="Medicaid Premium based on income"
      SINGLE     ="Single service plan recode"
      SSTYPEA    ="Accidents"
      SSTYPEB    ="AIDS care"
      SSTYPEC    ="Cancer treatment"
      SSTYPED    ="Catastrophic care"
      SSTYPEE    ="Dental care"
      SSTYPEF    ="Disability insurance"
      SSTYPEG    ="Hospice care"
      SSTYPEH    ="Hospitalization only"
      SSTYPEI    ="Long-term care"
      SSTYPEJ    ="Prescriptions"
      SSTYPEK    ="Vision care"
      SSTYPEL    ="Other"
      PRIVATE    ="Private health insurance recode"
      PRFLG      ="Private reassignment flag"
      EXCHANGE   ="Plan through Health Insurance Exchange, NCHS algorithm"
      WHONAM1    ="Plan in whose name (Plan 1)"
      PRPOLH1    ="Relationship to outside policyholder (Plan 1)"
      PRCOOH1    ="Covered persons outside family roster (Plan 1)"
      PLNWRKS1   ="How plan was originally obtained (Plan 1)"
      PLNEXCH1   ="Health Plan obtained through the MarketPlace (Plan 1)"
      EXCHPR1    ="Exchange company coding, NCHS (Plan 1)"
      PLNPAY11   ="Paid for by self or family (Plan 1)"
      PLNPAY21   ="Paid for by employer or union (Plan 1)"
      PLNPAY31   ="Paid for by someone outside the household (Plan 1)"
      PLNPAY41   ="Paid for by Medicare (Plan 1)"
      PLNPAY51   ="Paid for by Medicaid (Plan 1)"
      PLNPAY61   ="Paid for by CHIP (Plan 1)"
      PLNPAY71   ="Paid for by government program (Plan 1)"
      PLNPRE1    ="Premium based on income (Plan 1)"
      HICOSTR1   ="Out-of-pocket premium cost (Plan 1)"
      PLNMGD1    ="Type of private plan (Plan 1)"
      HDHP1      ="High deductible health plan (Plan 1)"
      HSAHRA1    =
"Health Savings Accounts/Health Reimbursement Accounts (plan 1)"
      MGCHMD1    ="Doctor choice (Plan 1)"
      MGPRMD1    ="Preferred list (Plan 1)"
      MGPYMD1    ="Out of plan use (Plan 1)"
      PCPREQ1    ="Primary care doctor required (Plan 1)"
      PRRXCOV1   ="Prescription drug benefit (Plan 1)"
      PRDNCOV1   ="Dental Coverage (Plan 1)"
      PXCHNG     =
"Marketplace or state exchange, reassigned from public to private"
      PLEXCHPR   =
"Exchange company coding, NCHS, reassigned from public to private"
      PSTRFPRM   =
"Premium or enrollment fee on plan reassigned from public to private"
      PSSPRINC   =
"Premium based on income on plan reassigned from public to private"
      PSTDOC     =
"Any dr, chooses from list, dr assigned on plan reassigned from public to privat
e"
      WHONAM2    ="Plan in whose name (Plan 2)"
      PRPOLH2    ="Relationship to outside policyholder (Plan 2)"
      PRCOOH2    ="Covered persons outside family roster (Plan 2)"
      PLNWRKS2   ="How plan was originally obtained (Plan 2)"
      PLNEXCH2   ="Health Plan obtained through the MarketPlace (Plan 2)"
      EXCHPR2    ="Exchange company coding, NCHS (Plan 2)"
      PLNPAY12   ="Paid for by self or family (Plan 2)"
      PLNPAY22   ="Paid for by employer or union (Plan 2)"
      PLNPAY32   ="Paid for by someone outside the household (Plan 2)"
      PLNPAY42   ="Paid for by Medicare (Plan 2)"
      PLNPAY52   ="Paid for by Medicaid (Plan 2)"
      PLNPAY62   ="Paid for by CHIP (Plan 2)"
      PLNPAY72   ="Paid for by government program (Plan 2)"
      PLNPRE2    ="Premium based on income (Plan 2)"
      HICOSTR2   ="Out-of-pocket premium cost (Plan 2)"
      PLNMGD2    ="Type of private plan (plan 2)"
      HDHP2      ="High deductible health plan (Plan 2)"
      HSAHRA2    =
"Health Savings Accounts/Health Reimbursement Accounts (plan 2)"
      MGCHMD2    ="Doctor choice (Plan 2)"
      MGPRMD2    ="Preferred list (Plan 2)"
      MGPYMD2    ="Out of plan use (Plan 2)"
      PCPREQ2    ="Primary care doctor required (Plan 2)"
      PRRXCOV2   ="Prescription drug benefit (Plan 2)"
      PRDNCOV2   ="Dental Coverage (Plan 2)"
      PRPLPLUS   ="Person has more than two private plans"
      FCOVCONF   ="Obtaining affordable coverage"
      SCHIP      ="CHIP coverage recode"
      CHFLG      ="CHIP reassignment flag"
      CHXCHNG    ="CHIP Exchange"
      STRFPRM1   ="CHIP Premium"
      CHPRINC    ="CHIP Premium based on income"
      STDOC1     ="Any doc, chooses from a list, doc assigned (SCHIP)"
      OTHPUB     ="State-sponsored health plan recode"
      OPFLG      ="Other public reassignment flag"
      OPXCHNG    ="Other state program Exchange"
      PLEXCHOP   ="Exchange company coding, NCHS (OTHPUB)"
      STRFPRM2   ="Other state program premium"
      SSPRINC    ="Other state program premium based on income"
      STDOC2     ="Any doc, chooses from a list, doc assigned (OTHPUB)"
      OTHGOV     ="Other government program recode"
      OGFLG      ="Other government reassignment flag"
      OGXCHNG    ="Other government program Exchange"
      PLEXCHOG   ="Exchange company coding, NCHS (OTHGOV)"
      STRFPRM3   ="Other government program Premium"
      OGPRINC    ="Other government program Premium based on income"
      STDOC3     ="Any doc, chooses from a list, doc assigned (OTHGOV)"
      MILITARN   ="Military health care coverage recode"
      MILSPC1    ="TRICARE coverage"
      MILSPC2N   ="VA coverage"
      MILSPC2I   ="VA coverage original responses"
      MILSPC3    ="CHAMP-VA coverage"
      MILSPC4    ="Other military coverage"
      MILMANN    ="Type of TRICARE coverage"
      IHS        ="Indian Health Service recode"
      HILAST2    ="How long since last had health coverage"
      HISTOP1    ="Lost job or changed employers"
      HISTOP2    ="Divorced/sep/death of spouse or parent"
      HISTOP3    ="Ineligible because of age/left school"
      HISTOP4    ="Employer does not offer/not eligible for cov"
      HISTOP5    ="Cost is too high"
      HISTOP6    ="Insurance company refused coverage"
      HISTOP7    ="Medicaid/medi plan stopped after pregnancy"
      HISTOP8    ="Lost Medicaid/new job/increase in income"
      HISTOP9    ="Lost Medicaid (other)"
      HISTOP10   ="Other"
      HISTOP11   ="Never had health insurance"
      HISTOP12   ="Moved from another county/state/country"
      HISTOP13   ="Self-employed"
      HISTOP14   ="No need for it/chooses not to have"
      HISTOP15   ="Got married"
      HINOTYR    ="No health coverage during past 12 months"
      HINOTMYR   ="Months without coverage in past 12 months"
      FHICHNG    ="No change in coverage in past 12 months"
      FHIKDBA    ="Had private health insurance coverage in the past 12 months"
      FHIKDBB    ="Had Medicare coverage in the past 12 months"
      FHIKDBC    ="Had Medi-Gap coverage in the past 12 months"
      FHIKDBD    ="Had Medicaid coverage in the past 12 months"
      FHIKDBE    ="Had CHIP coverage in the past 12 months"
      FHIKDBF    ="Had Military health care coverage in the past 12 months"
      FHIKDBG    ="Had Indian Health Service coverage in the past 12 months"
      FHIKDBH    =
"Had State-sponsored health plan coverage in the past 12 months"
      FHIKDBI    ="Had Other government program coverage in the past 12 months"
      FHIKDBJ    ="Had Single service plan coverage in the past 12 months"
      FHIKDBK    ="Had no coverage in the past 12 months"
      PWRKBR1    ="How previous private coverage was obtained"
      HCSPFYR    ="Amount family spent for medical care"
      MEDBILL    ="Problems paying medical bills"
      MEDBPAY    ="Medical bills being paid off over time"
      MEDBNOP    ="Unable to pay medical bills"
      FSA        ="Flexible Spending Accounts"
      HIKINDNA   ="Private health insurance"
      HIKINDNB   ="Medicare"
      HIKINDNC   ="Medi-Gap"
      HIKINDND   ="Medicaid"
      HIKINDNE   ="CHIP"
      HIKINDNF   ="Military health care"
      HIKINDNG   ="Indian Health Service"
      HIKINDNH   ="State-sponsored health plan"
      HIKINDNI   ="Other government plan"
      HIKINDNJ   ="Single service plan"
      HIKINDNK   ="No coverage of any type"
      MCAREPRB   ="Medicare coverage probe"
      MCAIDPRB   ="Medicaid coverage probe"
      SINCOV     ="Single service plan probe"

      /* FSD LABELS */

      PLBORN     ="Born in the United States"
      REGIONBR   ="Geographic region of birth recode"
      GEOBRTH    ="Geographic place of birth recode"
      YRSINUS    ="Years that - - has been in the U.S."
      CITIZENP   ="U.S. citizenship status"
      HEADST     ="Now attending Head Start"
      HEADSTV1   ="Ever attended Head Start"
      EDUC1      ="Highest level of school completed"
      ARMFVER    ="Currently on full-time active duty with the Armed Forces"
      ARMFEV     =
"Has - - ever served in U.S. Armed Forces, Reserves, or National Guard?"
      ARMFFC     =
"Active duty personnel who served on a humanitarian or peacekeeping mission?"
      ARMFTM1P   =
"Was - - active duty in the U.S. military in September, 2001 or later?"
      ARMFTM2P   =
"Was - - active duty in U.S. military in Aug 1990 to Aug 2001 (Persian Gulf War)
?"
      ARMFTM3P   =
"Was - - active duty in the U.S. military in May, 1975 to July, 1990?"
      ARMFTM4P   =
"Was - - active duty in U.S. military in Aug 1964 to April 1975 (Vietnam War)?"
      ARMFTM5P   =
"Was - - active duty in the U.S. military in February, 1955 to July, 1964?"
      ARMFTM6P   =
"Was - - active duty in U.S. military in July 1950 to Jan 1955 (Korean War)?"
      ARMFTM7P   =
"Was - - active duty in the U.S. military in June, 1950 or earlier?"
      VACOV      ="Ever enrolled in or used VA health care"
      DOINGLWP   ="What was - - doing last week"
      WHYNOWKP   ="Main reason for not working last week"
      WRKHRS2    ="Hours worked last week"
      WRKFTALL   ="Usually work full time"
      WRKLYR1    ="Work for pay last year"
      WRKMYR     ="Months worked last year"
      ERNYR_P    ="Total earnings last year"
      HIEMPOF    ="Health insurance offered at workplace"

      /* FIN LABELS */

      FINCINT    ="Introduction to the family income section"
      PSAL       ="Received income from wages or salary (last CY)"
      PSEINC     ="Received income from self-employment (last CY)"
      PSSRR      =
"Received income from Social Security or Railroad Retirement (last CY)"
      PSSRRDB    =
"Received Social Security or Railroad Retirement income as a disability benefit"
      PSSRRD     ="Received benefit due to disability"
      PPENS      =
"Received income from disability pension exp. Soc Security or Railroad Retiremen
t"
      POPENS     ="Received income from any other pension"
      PSSI       ="Received income from SSI"
      PSSID      ="Received SSI due to disability"
      PTANF      =
"Received income from a state or county welfare program (e.g., TANF)"
      POWBEN     ="Received other government assistance"
      PINTRSTR   ="Received interest income"
      PDIVD      ="Received dividends from stocks, funds, etc."
      PCHLDSP    ="Received income from child support"
      PINCOT     ="Received income from any other source"
      PSSAPL     ="Ever applied for Supplemental Security Income (SSI)"
      PSDAPL     ="Ever applied for Social Security Disability Insurance (SSDI)"
      TANFMYR    ="Months received welfare/TANF (last CY)"
      ELIGPWIC   ="Anyone age-eligible for the WIC program?"
      PWIC       ="Received WIC benefits"
      WIC_FLAG   ="WIC recipient age-eligible"

      /* FLG LABELS */

      ENGLANG    ="How well English is spoken"
   ;

   * ASSOCIATE VARIABLES WITH FORMAT VALUES;
   *    (PUT ASTERISK (*) BEFORE WORD "FORMAT"
        IN NEXT STATEMENT TO PREVENT FORMAT
        ASSOCIATIONS BEING STORED WITH DATA SET);
   FORMAT

      /* IDN FORMAT ASSOCIATIONS */

      RECTYPE   PEP001X.   SRVY_YR   PEP002X.   HHX       $GROUPC.
      INTV_QRT  PEP004X.   INTV_MON  PEP005X.   WTIA      GROUPN.
      WTFA      GROUPN.

      /* UCF FORMAT ASSOCIATIONS */

      REGION    PEP010X.

      /* HHC FORMAT ASSOCIATIONS */

      SEX       PEP013X.   ORIGIN_I  PEP014X.   HISPAN_I  PEP015X.
      RACERPI2  PEP016X.   MRACRPI2  PEP017X.   MRACBPI2  PEP018X.
      RACRECI3  PEP019X.   HISCODI3  PEP020X.   NOWAF     PEP021X.
      RRP       PEP022X.   HHREFLG   $PEP023X.  FRRP      PEP024X.
      AGE_P     PEP025X.   AGE_CHG   PEP026X.

      /* FID FORMAT ASSOCIATIONS */

      FMRPFLG   $PEP027X.  FMREFLG   $PEP028X.  R_MARITL  PEP029X.
      FSPOUS2   $PEP030X.  COHAB1    PEP031X.   COHAB2    PEP032X.
      CDCMSTAT  PEP034X.   SIB_DEGP  PEP035X.   FMOTHER1  $PEP036X.
      MOM_DEGP  PEP037X.   FFATHER1  $PEP038X.  DAD_DEGP  PEP037X.
      PARENTS   PEP040X.   MOM_ED    PEP041X.   DAD_ED    PEP041X.
      ASTATFLG  PEP043X.   CSTATFLG  PEP044X.   QCADULT   PEP045X.
      QCCHILD   PEP046X.

      /* FHS FORMAT ASSOCIATIONS */

      PLAPLYLM  PEP031X.   PLAPLYUN  PEP031X.   PSPEDEIS  PEP031X.
      PSPEDEM   PEP031X.   PLAADL    PEP031X.   LABATH    PEP031X.
      LADRESS   PEP031X.   LAEAT     PEP031X.   LABED     PEP031X.
      LATOILT   PEP031X.   LAHOME    PEP031X.   PLAIADL   PEP031X.
      PLAWKNOW  PEP031X.   PLAWKLIM  PEP060X.   PLAWALK   PEP031X.
      PLAREMEM  PEP031X.   PLIMANY   PEP063X.   LA1AR     PEP064X.
      LAHCC1    PEP065X.   LAHCC2    PEP065X.   LAHCC3    PEP065X.
      LAHCC4    PEP065X.   LAHCC5    PEP065X.   LAHCC6    PEP065X.
      LAHCC7A   PEP065X.   LAHCC8    PEP065X.   LAHCC9    PEP065X.
      LAHCC10   PEP065X.   LAHCC11   PEP065X.   LAHCC12   PEP065X.
      LAHCC13   PEP065X.   LAHCC90   PEP065X.   LAHCC91   PEP065X.
      LCTIME1   PEP080X.   LCUNIT1   PEP081X.   LCDURA1   PEP082X.
      LCDURB1   PEP083X.   LCCHRC1   PEP084X.   LCTIME2   PEP080X.
      LCUNIT2   PEP081X.   LCDURA2   PEP082X.   LCDURB2   PEP083X.
      LCCHRC2   PEP084X.   LCTIME3   PEP080X.   LCUNIT3   PEP081X.
      LCDURA3   PEP082X.   LCDURB3   PEP083X.   LCCHRC3   PEP084X.
      LCTIME4   PEP080X.   LCUNIT4   PEP081X.   LCDURA4   PEP082X.
      LCDURB4   PEP083X.   LCCHRC4   PEP084X.   LCTIME5   PEP080X.
      LCUNIT5   PEP081X.   LCDURA5   PEP082X.   LCDURB5   PEP083X.
      LCCHRC5   PEP084X.   LCTIME6   PEP080X.   LCUNIT6   PEP081X.
      LCDURA6   PEP082X.   LCDURB6   PEP083X.   LCCHRC6   PEP084X.
      LCTIME7A  PEP080X.   LCUNIT7A  PEP081X.   LCDURA7A  PEP082X.
      LCDURB7A  PEP083X.   LCCHRC7A  PEP084X.   LCTIME8   PEP080X.
      LCUNIT8   PEP081X.   LCDURA8   PEP082X.   LCDURB8   PEP083X.
      LCCHRC8   PEP084X.   LCTIME9   PEP080X.   LCUNIT9   PEP081X.
      LCDURA9   PEP082X.   LCDURB9   PEP083X.   LCCHRC9   PEP084X.
      LCTIME10  PEP080X.   LCUNIT10  PEP081X.   LCDURA10  PEP082X.
      LCDURB10  PEP083X.   LCCHRC10  PEP084X.   LCTIME11  PEP080X.
      LCUNIT11  PEP081X.   LCDURA11  PEP082X.   LCDURB11  PEP083X.
      LCCHRC11  PEP084X.   LCTIME12  PEP080X.   LCUNIT12  PEP081X.
      LCDURA12  PEP082X.   LCDURB12  PEP083X.   LCCHRC12  PEP084X.
      LCTIME13  PEP080X.   LCUNIT13  PEP081X.   LCDURA13  PEP082X.
      LCDURB13  PEP083X.   LCCHRC13  PEP084X.   LCTIME90  PEP080X.
      LCUNIT90  PEP081X.   LCDURA90  PEP082X.   LCDURB90  PEP083X.
      LCCHRC90  PEP084X.   LCTIME91  PEP080X.   LCUNIT91  PEP081X.
      LCDURA91  PEP082X.   LCDURB91  PEP083X.   LCCHRC91  PEP084X.
      LAHCA1    PEP065X.   LAHCA2    PEP065X.   LAHCA3    PEP065X.
      LAHCA4    PEP065X.   LAHCA5    PEP065X.   LAHCA6    PEP065X.
      LAHCA7    PEP065X.   LAHCA8    PEP065X.   LAHCA9    PEP065X.
      LAHCA10   PEP065X.   LAHCA11   PEP065X.   LAHCA12   PEP065X.
      LAHCA13   PEP065X.   LAHCA14A  PEP065X.   LAHCA15   PEP065X.
      LAHCA16   PEP065X.   LAHCA17   PEP065X.   LAHCA18   PEP065X.
      LAHCA19_  PEP065X.   LAHCA20_  PEP065X.   LAHCA21_  PEP065X.
      LAHCA22_  PEP065X.   LAHCA23_  PEP065X.   LAHCA24_  PEP065X.
      LAHCA25_  PEP065X.   LAHCA26_  PEP065X.   LAHCA27_  PEP065X.
      LAHCA28_  PEP065X.   LAHCA29_  PEP065X.   LAHCA30_  PEP065X.
      LAHCA31_  PEP065X.   LAHCA32_  PEP065X.   LAHCA33_  PEP065X.
      LAHCA34_  PEP065X.   LAHCA90   PEP065X.   LAHCA91   PEP065X.
      LATIME1   PEP080X.   LAUNIT1   PEP081X.   LADURA1   PEP193X.
      LADURB1   PEP194X.   LACHRC1   PEP084X.   LATIME2   PEP080X.
      LAUNIT2   PEP081X.   LADURA2   PEP193X.   LADURB2   PEP194X.
      LACHRC2   PEP084X.   LATIME3   PEP080X.   LAUNIT3   PEP081X.
      LADURA3   PEP193X.   LADURB3   PEP194X.   LACHRC3   PEP084X.
      LATIME4   PEP080X.   LAUNIT4   PEP081X.   LADURA4   PEP193X.
      LADURB4   PEP194X.   LACHRC4   PEP084X.   LATIME5   PEP080X.
      LAUNIT5   PEP081X.   LADURA5   PEP193X.   LADURB5   PEP194X.
      LACHRC5   PEP084X.   LATIME6   PEP080X.   LAUNIT6   PEP081X.
      LADURA6   PEP193X.   LADURB6   PEP194X.   LACHRC6   PEP084X.
      LATIME7   PEP080X.   LAUNIT7   PEP081X.   LADURA7   PEP193X.
      LADURB7   PEP194X.   LACHRC7   PEP084X.   LATIME8   PEP080X.
      LAUNIT8   PEP081X.   LADURA8   PEP193X.   LADURB8   PEP194X.
      LACHRC8   PEP084X.   LATIME9   PEP080X.   LAUNIT9   PEP081X.
      LADURA9   PEP193X.   LADURB9   PEP194X.   LACHRC9   PEP084X.
      LATIME10  PEP080X.   LAUNIT10  PEP081X.   LADURA10  PEP193X.
      LADURB10  PEP194X.   LACHRC10  PEP084X.   LATIME11  PEP080X.
      LAUNIT11  PEP081X.   LADURA11  PEP193X.   LADURB11  PEP194X.
      LACHRC11  PEP084X.   LATIME12  PEP080X.   LAUNIT12  PEP081X.
      LADURA12  PEP193X.   LADURB12  PEP194X.   LACHRC12  PEP084X.
      LATIME13  PEP080X.   LAUNIT13  PEP081X.   LADURA13  PEP193X.
      LADURB13  PEP194X.   LACHRC13  PEP084X.   LTIME14A  PEP080X.
      LUNIT14A  PEP081X.   LDURA14A  PEP193X.   LDURB14A  PEP194X.
      LCHRC14A  PEP084X.   LATIME15  PEP080X.   LAUNIT15  PEP081X.
      LADURA15  PEP193X.   LADURB15  PEP194X.   LACHRC15  PEP084X.
      LATIME16  PEP080X.   LAUNIT16  PEP081X.   LADURA16  PEP193X.
      LADURB16  PEP194X.   LACHRC16  PEP084X.   LATIME17  PEP080X.
      LAUNIT17  PEP081X.   LADURA17  PEP193X.   LADURB17  PEP194X.
      LACHRC17  PEP084X.   LATIME18  PEP080X.   LAUNIT18  PEP081X.
      LADURA18  PEP193X.   LADURB18  PEP194X.   LACHRC18  PEP084X.
      LATIME19  PEP080X.   LAUNIT19  PEP081X.   LADURA19  PEP193X.
      LADURB19  PEP194X.   LACHRC19  PEP084X.   LATIME20  PEP080X.
      LAUNIT20  PEP081X.   LADURA20  PEP193X.   LADURB20  PEP194X.
      LACHRC20  PEP084X.   LATIME21  PEP080X.   LAUNIT21  PEP081X.
      LADURA21  PEP193X.   LADURB21  PEP194X.   LACHRC21  PEP084X.
      LATIME22  PEP080X.   LAUNIT22  PEP081X.   LADURA22  PEP193X.
      LADURB22  PEP194X.   LACHRC22  PEP084X.   LATIME23  PEP080X.
      LAUNIT23  PEP081X.   LADURA23  PEP193X.   LADURB23  PEP194X.
      LACHRC23  PEP084X.   LATIME24  PEP080X.   LAUNIT24  PEP081X.
      LADURA24  PEP193X.   LADURB24  PEP194X.   LACHRC24  PEP084X.
      LATIME25  PEP080X.   LAUNIT25  PEP081X.   LADURA25  PEP193X.
      LADURB25  PEP194X.   LACHRC25  PEP084X.   LATIME26  PEP080X.
      LAUNIT26  PEP081X.   LADURA26  PEP193X.   LADURB26  PEP194X.
      LACHRC26  PEP084X.   LATIME27  PEP080X.   LAUNIT27  PEP081X.
      LADURA27  PEP193X.   LADURB27  PEP194X.   LACHRC27  PEP084X.
      LATIME28  PEP080X.   LAUNIT28  PEP081X.   LADURA28  PEP193X.
      LADURB28  PEP194X.   LACHRC28  PEP084X.   LATIME29  PEP080X.
      LAUNIT29  PEP081X.   LADURA29  PEP193X.   LADURB29  PEP194X.
      LACHRC29  PEP084X.   LATIME30  PEP080X.   LAUNIT30  PEP081X.
      LADURA30  PEP193X.   LADURB30  PEP194X.   LACHRC30  PEP084X.
      LATIME31  PEP080X.   LAUNIT31  PEP081X.   LADURA31  PEP193X.
      LADURB31  PEP194X.   LACHRC31  PEP084X.   LATIME32  PEP080X.
      LAUNIT32  PEP081X.   LADURA32  PEP193X.   LADURB32  PEP194X.
      LACHRC32  PEP084X.   LATIME33  PEP080X.   LAUNIT33  PEP081X.
      LADURA33  PEP193X.   LADURB33  PEP194X.   LACHRC33  PEP084X.
      LATIME34  PEP080X.   LAUNIT34  PEP081X.   LADURA34  PEP193X.
      LADURB34  PEP194X.   LACHRC34  PEP084X.   LATIME90  PEP080X.
      LAUNIT90  PEP081X.   LADURA90  PEP193X.   LADURB90  PEP194X.
      LACHRC90  PEP084X.   LATIME91  PEP080X.   LAUNIT91  PEP081X.
      LADURA91  PEP193X.   LADURB91  PEP194X.   LACHRC91  PEP084X.
      LCONDRT   PEP371X.   LACHRONR  PEP372X.   PHSTAT    PEP373X.

      /* FAU FORMAT ASSOCIATIONS */

      PDMED12M  PEP031X.   PNMED12M  PEP031X.   PHOSPYR2  PEP031X.
      HOSPNO_P  PEP377X.   HPNITE_P  PEP378X.   PHCHM2W   PEP031X.
      PHCHN2WP  PEP380X.   PHCPH2WR  PEP031X.   PHCPN2WP  PEP382X.
      PHCDV2W   PEP031X.   PHCDN2WP  PEP384X.   P10DVYR   PEP031X.

      /* FHI FORMAT ASSOCIATIONS */

      NOTCOV    PEP386X.   COVER     PEP387X.   COVER65   PEP388X.
      COVER65O  PEP389X.   MEDICARE  PEP390X.   MCPART    PEP391X.
      MCCHOICE  PEP031X.   MCHMO     PEP031X.   MCADVR    PEP394X.
      MCPREM    PEP031X.   MCREF     PEP031X.   MCPARTD   PEP031X.
      MEDICAID  PEP390X.   MAFLG     PEP399X.   MACHMD    PEP400X.
      MXCHNG    PEP031X.   MEDPREM   PEP031X.   MDPRINC   PEP031X.
      SINGLE    PEP404X.   SSTYPEA   PEP065X.   SSTYPEB   PEP065X.
      SSTYPEC   PEP065X.   SSTYPED   PEP065X.   SSTYPEE   PEP065X.
      SSTYPEF   PEP065X.   SSTYPEG   PEP065X.   SSTYPEH   PEP065X.
      SSTYPEI   PEP065X.   SSTYPEJ   PEP065X.   SSTYPEK   PEP065X.
      SSTYPEL   PEP065X.   PRIVATE   PEP390X.   PRFLG     PEP418X.
      EXCHANGE  PEP419X.   WHONAM1   PEP420X.   PRPOLH1   PEP421X.
      PRCOOH1   PEP031X.   PLNWRKS1  PEP423X.   PLNEXCH1  PEP031X.
      EXCHPR1   PEP425X.   PLNPAY11  PEP065X.   PLNPAY21  PEP065X.
      PLNPAY31  PEP065X.   PLNPAY41  PEP065X.   PLNPAY51  PEP065X.
      PLNPAY61  PEP065X.   PLNPAY71  PEP065X.   PLNPRE1   PEP433X.
      HICOSTR1  PEP434X.   PLNMGD1   PEP435X.   HDHP1     PEP436X.
      HSAHRA1   PEP031X.   MGCHMD1   PEP438X.   MGPRMD1   PEP031X.
      MGPYMD1   PEP031X.   PCPREQ1   PEP031X.   PRRXCOV1  PEP031X.
      PRDNCOV1  PEP031X.   PXCHNG    PEP031X.   PLEXCHPR  PEP425X.
      PSTRFPRM  PEP031X.   PSSPRINC  PEP031X.   PSTDOC    PEP448X.
      WHONAM2   PEP420X.   PRPOLH2   PEP421X.   PRCOOH2   PEP031X.
      PLNWRKS2  PEP423X.   PLNEXCH2  PEP031X.   EXCHPR2   PEP425X.
      PLNPAY12  PEP065X.   PLNPAY22  PEP065X.   PLNPAY32  PEP065X.
      PLNPAY42  PEP065X.   PLNPAY52  PEP065X.   PLNPAY62  PEP065X.
      PLNPAY72  PEP065X.   PLNPRE2   PEP433X.   HICOSTR2  PEP434X.
      PLNMGD2   PEP435X.   HDHP2     PEP436X.   HSAHRA2   PEP031X.
      MGCHMD2   PEP438X.   MGPRMD2   PEP031X.   MGPYMD2   PEP031X.
      PCPREQ2   PEP031X.   PRRXCOV2  PEP031X.   PRDNCOV2  PEP031X.
      PRPLPLUS  PEP031X.   FCOVCONF  PEP474X.   SCHIP     PEP390X.
      CHFLG     PEP476X.   CHXCHNG   PEP031X.   STRFPRM1  PEP031X.
      CHPRINC   PEP031X.   STDOC1    PEP400X.   OTHPUB    PEP390X.
      OPFLG     PEP482X.   OPXCHNG   PEP031X.   PLEXCHOP  PEP425X.
      STRFPRM2  PEP031X.   SSPRINC   PEP031X.   STDOC2    PEP400X.
      OTHGOV    PEP390X.   OGFLG     PEP489X.   OGXCHNG   PEP031X.
      PLEXCHOG  PEP425X.   STRFPRM3  PEP031X.   OGPRINC   PEP031X.
      STDOC3    PEP400X.   MILITARN  PEP390X.   MILSPC1   PEP065X.
      MILSPC2N  PEP065X.   MILSPC2I  PEP065X.   MILSPC3   PEP065X.
      MILSPC4   PEP065X.   MILMANN   PEP501X.   IHS       PEP031X.
      HILAST2   PEP503X.   HISTOP1   PEP065X.   HISTOP2   PEP065X.
      HISTOP3   PEP065X.   HISTOP4   PEP065X.   HISTOP5   PEP065X.
      HISTOP6   PEP065X.   HISTOP7   PEP065X.   HISTOP8   PEP065X.
      HISTOP9   PEP065X.   HISTOP10  PEP065X.   HISTOP11  PEP065X.
      HISTOP12  PEP065X.   HISTOP13  PEP065X.   HISTOP14  PEP065X.
      HISTOP15  PEP065X.   HINOTYR   PEP031X.   HINOTMYR  PEP520X.
      FHICHNG   PEP031X.   FHIKDBA   PEP065X.   FHIKDBB   PEP065X.
      FHIKDBC   PEP065X.   FHIKDBD   PEP065X.   FHIKDBE   PEP065X.
      FHIKDBF   PEP065X.   FHIKDBG   PEP065X.   FHIKDBH   PEP065X.
      FHIKDBI   PEP065X.   FHIKDBJ   PEP065X.   FHIKDBK   PEP065X.
      PWRKBR1   PEP533X.   HCSPFYR   PEP534X.   MEDBILL   PEP031X.
      MEDBPAY   PEP031X.   MEDBNOP   PEP031X.   FSA       PEP031X.
      HIKINDNA  PEP065X.   HIKINDNB  PEP065X.   HIKINDNC  PEP065X.
      HIKINDND  PEP065X.   HIKINDNE  PEP065X.   HIKINDNF  PEP065X.
      HIKINDNG  PEP065X.   HIKINDNH  PEP065X.   HIKINDNI  PEP065X.
      HIKINDNJ  PEP065X.   HIKINDNK  PEP065X.   MCAREPRB  PEP031X.
      MCAIDPRB  PEP031X.   SINCOV    PEP031X.

      /* FSD FORMAT ASSOCIATIONS */

      PLBORN    PEP031X.   REGIONBR  PEP554X.   GEOBRTH   PEP555X.
      YRSINUS   PEP556X.   CITIZENP  PEP557X.   HEADST    PEP031X.
      HEADSTV1  PEP031X.   EDUC1     PEP560X.   ARMFVER   PEP031X.
      ARMFEV    PEP031X.   ARMFFC    PEP031X.   ARMFTM1P  PEP065X.
      ARMFTM2P  PEP065X.   ARMFTM3P  PEP065X.   ARMFTM4P  PEP065X.
      ARMFTM5P  PEP065X.   ARMFTM6P  PEP065X.   ARMFTM7P  PEP065X.
      VACOV     PEP031X.   DOINGLWP  PEP572X.   WHYNOWKP  PEP573X.
      WRKHRS2   PEP574X.   WRKFTALL  PEP031X.   WRKLYR1   PEP031X.
      WRKMYR    PEP577X.   ERNYR_P   PEP578X.   HIEMPOF   PEP031X.

      /* FIN FORMAT ASSOCIATIONS */

      FINCINT   PEP580X.   PSAL      PEP031X.   PSEINC    PEP031X.
      PSSRR     PEP031X.   PSSRRDB   PEP031X.   PSSRRD    PEP031X.
      PPENS     PEP031X.   POPENS    PEP031X.   PSSI      PEP031X.
      PSSID     PEP031X.   PTANF     PEP031X.   POWBEN    PEP031X.
      PINTRSTR  PEP031X.   PDIVD     PEP031X.   PCHLDSP   PEP031X.
      PINCOT    PEP031X.   PSSAPL    PEP031X.   PSDAPL    PEP031X.
      TANFMYR   PEP520X.   ELIGPWIC  PEP599X.   PWIC      PEP031X.
      WIC_FLAG  PEP601X.

      /* FLG FORMAT ASSOCIATIONS */

      ENGLANG   PEP602X.;
RUN;

PROC CONTENTS DATA=NHIS.PERSONSX;
   TITLE1 'CONTENTS OF THE 2018 NHIS Person FILE';

PROC FREQ DATA=NHIS.PERSONSX NOTITLE;
   TABLES RECTYPE/LIST MISSING;
   TITLE1 'FREQUENCY REPORT FOR 2018 NHIS Person FILE';
   TITLE2 '(WEIGHTED)';
   WEIGHT WTFA;

PROC FREQ DATA=NHIS.PERSONSX NOTITLE;
   TABLES RECTYPE/LIST MISSING;
   TITLE1 'FREQUENCY REPORT FOR 2018 NHIS Person FILE';
   TITLE2 '(UNWEIGHTED)';

* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
             STATEMENT: FORMAT _ALL_;
RUN;
