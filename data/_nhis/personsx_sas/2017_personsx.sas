*********************************************************************
 JUNE 11, 2018  4:18 PM
 
 This is an example of a SAS program that creates a SAS
 file from the 2017 NHIS Public Use PERSONSX.DAT ASCII file
 
 This is stored in PERSONSX.SAS
*********************************************************************;

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS;
LIBNAME  NHIS     "C:\NHIS2017";

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS
             IF YOU ALLOW PROGRAM TO PERMANENTLY STORE FORMATS;
LIBNAME  LIBRARY  "C:\NHIS2017";

FILENAME ASCIIDAT 'C:\NHIS2017\PERSONSX.dat';

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
      38                 = "38 Functioning and Disability"
      40                 = "40 Sample Child"
      60                 = "60 Family"
      63                 = "63 Family Disability Questions"
      65                 = "65 Paradata"
      70                 = "70 Injury/Poisoning Episode"
      75                 = "75 Injury/Poisoning Verbatim"
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
   VALUE PEP047X
      1                  = 
"1 Families selected to receive AFD (sample adults) section"
      2                  = 
"2 Families selected to receive FDB (all persons 1 year and older) section"
   ;
   VALUE PEP061X
      0                  = "0 Unable to work"
      1                  = "1 Limited in work"
      2                  = "2 Not limited in work"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP064X
      0                  = "0 Limitation previously mentioned"
      1                  = "1 Yes, limited in some other way"
      2                  = "2 Not limited in any way"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP065X
      1                  = "1 Limited in any way"
      2                  = "2 Not limited in any way"
      3                  = "3 Unknown if limited"
   ;
   VALUE PEP066X
      1                  = "1 Mentioned"
      2                  = "2 Not mentioned"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP081X
      95                 = "95 95+"
      96                 = "96 Since birth"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP082X
      1                  = "1 Day(s)"
      2                  = "2 Week(s)"
      3                  = "3 Month(s)"
      4                  = "4 Year(s)"
      6                  = "6 Since birth"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP083X
      00                 = "00 Less than 1 year"
      96                 = "96 Unknown number of years"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP084X
      0                  = "0 Since birth and child <1 year of age"
      1                  = "1 Less than 3 months"
      2                  = "2 3-5 months"
      3                  = "3 6-12 months"
      4                  = "4 More than 1 year"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP085X
      1                  = "1 Chronic"
      2                  = "2 Not chronic"
      9                  = "9 Unknown if chronic"
   ;
   VALUE PEP194X
      00                 = "00 Less than 1 year"
      85                 = "85 85+ years"
      96                 = "96 Unknown number of years"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP195X
      1                  = "1 Less than 3 months"
      2                  = "2 3-5 months"
      3                  = "3 6-12 months"
      4                  = "4 More than 1 year"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP372X
      1                  = 
"1 At least one condition causing limitation of activity is chronic"
      2                  = 
"2 No condition causing limitation of activity is chronic"
      9                  = 
"9 Unknown if any condition causing limitation of activity is chronic"
   ;
   VALUE PEP373X
      0                  = 
"0 Not limited in any way (including unknown if limited)"
      1                  = "1 Limited; caused by at least one chronic condition"
      2                  = "2 Limited; not caused by chronic condition"
      3                  = "3 Limited; unknown if condition is chronic"
   ;
   VALUE PEP374X
      1                  = "1 Excellent"
      2                  = "2 Very good"
      3                  = "3 Good"
      4                  = "4 Fair"
      5                  = "5 Poor"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP378X
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE PEP381X
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP387X
      1                  = "1 Not covered"
      2                  = "2 Covered"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP388X
      1                  = "1 Private"
      2                  = "2 Medicaid and other public"
      3                  = "3 Other coverage"
      4                  = "4 Uninsured"
      5                  = "5 Don't know"
   ;
   VALUE PEP389X
      1                  = "1 Private"
      2                  = "2 Dual eligible"
      3                  = "3 Medicare Advantage"
      4                  = "4 Medicare only excluding Medicare Advantage"
      5                  = "5 Other coverage"
      6                  = "6 Uninsured"
      7                  = "7 Don't know"
   ;
   VALUE PEP390X
      1                  = "1 Private"
      2                  = "2 Dual eligible"
      3                  = "3 Medicare only"
      4                  = "4 Other coverage"
      5                  = "5 Uninsured"
      6                  = "6 Don't know"
   ;
   VALUE PEP391X
      1                  = "1 Yes, information"
      2                  = "2 Yes, but no information"
      3                  = "3 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP392X
      1                  = "1 Part A - Hospital only"
      2                  = "2 Part B - Medical only"
      3                  = "3 Both Part A and Part B"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP395X
      1                  = "1 Medicare Advantage"
      2                  = "2 Private plan not Medicare Advantage"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't Know"
   ;
   VALUE PEP400X
      1                  = "1 Reassigned to Medicaid from private"
   ;
   VALUE PEP401X
      1                  = "1 Any doctor"
      2                  = "2 Select from list"
      3                  = "3 Doctor is assigned"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP405X
      1                  = "1 Yes, with information"
      2                  = "2 Yes, but no information"
      3                  = "3 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP419X
      1                  = "1 Reassigned to private from public"
   ;
   VALUE PEP420X
      1                  = "1 Exchange plan"
      2                  = "2 Not exchange plan"
      8                  = "8 Not ascertained"
   ;
   VALUE PEP421X
      1                  = "1 In own name"
      2                  = "2 Someone else in family"
      3                  = "3 Person not in household"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP422X
      1                  = "1 Child (including stepchildren)"
      2                  = "2 Spouse"
      3                  = "3 Former spouse"
      4                  = "4 Some other relationship"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP424X
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
   VALUE PEP426X
      1                  = "1 Company provides exchange plans"
      2                  = "2 Not an exchange company"
      3                  = "3 Exchange Portal or exact exchange plan name"
      8                  = "8 Not ascertained"
   ;
   VALUE PEP434X
      1                  = "1 Yes"
      2                  = "2 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t know"
   ;
   VALUE PEP435X
      20000              = "20000 $20,000 or more"
      99997              = "99997 Refused"
      99998              = "99998 Not ascertained"
      99999              = "99999 Don't know"
   ;
   VALUE PEP436X
      1                  = "1 HMO/IPA"
      2                  = "2 PPO"
      3                  = "3 POS"
      4                  = "4 Fee-for-service/indemnity"
      5                  = "5 Other"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP437X
      1                  = "1 Less than [$1,300/$2,600]"
      2                  = "2 [$1,300/$2,600] or more"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP439X
      1                  = "1 Any doctor"
      2                  = "2 Select from group/list"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP449X
      1                  = "1 Any doctor"
      2                  = "2 Select from book/list"
      3                  = "3 Doctor is assigned"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP475X
      1                  = "1 Very confident"
      2                  = "2 Somewhat confident"
      3                  = "3 Not too confident"
      4                  = "4 Not confident at all"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don’t know"
   ;
   VALUE PEP477X
      1                  = "1 Reassigned to CHIP from private"
   ;
   VALUE PEP483X
      1                  = "1 Reassigned to other public from private"
   ;
   VALUE PEP490X
      1                  = "1 Reassigned to other government from private"
   ;
   VALUE PEP501X
      1                  = "1 TRICARE Prime"
      2                  = "2 TRICARE Standard and Extra"
      3                  = "3 Blank"
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
   VALUE PEP571X
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
   VALUE PEP572X
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
   VALUE PEP573X
      95                 = "95 95+ hours"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP576X
      01                 = "01 1 month or less"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP577X
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
   VALUE PEP579X
      1                  = "1 Enter 1 to continue"
      8                  = "8 Not ascertained"
   ;
   VALUE PEP598X
      0                  = "0 No WIC age-eligible family members"
      1                  = "1 At least 1 WIC age-eligible family member"
   ;
   VALUE PEP600X
      0                  = "0 Person not age-eligible"
      1                  = "1 Person age-eligible"
   ;
   VALUE PEP601X
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
   INFILE ASCIIDAT PAD LRECL=768;

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

      /* FDB LENGTHS */

      FDRN_FLG   3

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

      PDMED12M   3   PNMED12M   3   PHOSPYR2   3   HOSPNO     4
      HPNITE     4   PHCHM2W    3   PHCHMN2W   3   PHCPH2WR   3
      PHCPHN2W   3   PHCDV2W    3   PHCDVN2W   3   P10DVYR    3

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
      STDOC3     3   MILCARE    3   MILSPC1    3   MILSPC2    3
      MILSPC3    3   MILSPC4    3   MILMANR    3   IHS        3
      HILAST2    3   HISTOP1    3   HISTOP2    3   HISTOP3    3
      HISTOP4    3   HISTOP5    3   HISTOP6    3   HISTOP7    3
      HISTOP8    3   HISTOP9    3   HISTOP10   3   HISTOP11   3
      HISTOP12   3   HISTOP13   3   HISTOP14   3   HISTOP15   3
      HINOTYR    3   HINOTMYR   3   FHICHNG    3   FHIKDBA    3
      FHIKDBB    3   FHIKDBC    3   FHIKDBD    3   FHIKDBE    3
      FHIKDBF    3   FHIKDBG    3   FHIKDBH    3   FHIKDBI    3
      FHIKDBJ    3   FHIKDBK    3   PWRKBR1    3   HCSPFYR    3
      MEDBILL    3   MEDBPAY    3   MEDBNOP    3   FSA        3
      HIKINDNA   3   HIKINDNB   3   HIKINDNC   3   HIKINDND   3
      HIKINDNE   3   HIKINDNF   3   HIKINDNG   3   HIKINDNH   3
      HIKINDNI   3   HIKINDNJ   3   HIKINDNK   3   MCAREPRB   3
      MCAIDPRB   3   SINCOV     3

      /* FSD LENGTHS */

      PLBORN     3   REGIONBR   3   GEOBRTH    3   YRSINUS    3
      CITIZENP   3   HEADST     3   HEADSTV1   3   EDUC1      3
      ARMFVER    3   ARMFEV     3   ARMFFC     3   ARMFTM1P   3
      ARMFTM2P   3   ARMFTM3P   3   ARMFTM4P   3   ARMFTM5P   3
      ARMFTM6P   3   ARMFTM7P   3   DOINGLWP   3   WHYNOWKP   3
      WRKHRS2    3   WRKFTALL   3   WRKLYR1    3   WRKMYR     3
      ERNYR_P    3   HIEMPOF    3

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


      /* FDB LOCATIONS */

      FDRN_FLG     86 -  86

      /* FHS LOCATIONS */

      PLAPLYLM     87 -  87    PLAPLYUN     88 -  88
      PSPEDEIS     89 -  89    PSPEDEM      90 -  90
      PLAADL       91 -  91    LABATH       92 -  92
      LADRESS      93 -  93    LAEAT        94 -  94
      LABED        95 -  95    LATOILT      96 -  96
      LAHOME       97 -  97    PLAIADL      98 -  98
      PLAWKNOW     99 -  99    PLAWKLIM    100 - 100
      PLAWALK     101 - 101    PLAREMEM    102 - 102
      PLIMANY     103 - 103    LA1AR       104 - 104
      LAHCC1      105 - 105    LAHCC2      106 - 106
      LAHCC3      107 - 107    LAHCC4      108 - 108
      LAHCC5      109 - 109    LAHCC6      110 - 110
      LAHCC7A     111 - 111    LAHCC8      112 - 112
      LAHCC9      113 - 113    LAHCC10     114 - 114
      LAHCC11     115 - 115    LAHCC12     116 - 116
      LAHCC13     117 - 117    LAHCC90     118 - 118
      LAHCC91     119 - 119    LCTIME1     120 - 121
      LCUNIT1     122 - 122    LCDURA1     123 - 124
      LCDURB1     125 - 125    LCCHRC1     126 - 126
      LCTIME2     127 - 128    LCUNIT2     129 - 129
      LCDURA2     130 - 131    LCDURB2     132 - 132
      LCCHRC2     133 - 133    LCTIME3     134 - 135
      LCUNIT3     136 - 136    LCDURA3     137 - 138
      LCDURB3     139 - 139    LCCHRC3     140 - 140
      LCTIME4     141 - 142    LCUNIT4     143 - 143
      LCDURA4     144 - 145    LCDURB4     146 - 146
      LCCHRC4     147 - 147    LCTIME5     148 - 149
      LCUNIT5     150 - 150    LCDURA5     151 - 152
      LCDURB5     153 - 153    LCCHRC5     154 - 154
      LCTIME6     155 - 156    LCUNIT6     157 - 157
      LCDURA6     158 - 159    LCDURB6     160 - 160
      LCCHRC6     161 - 161    LCTIME7A    162 - 163
      LCUNIT7A    164 - 164    LCDURA7A    165 - 166
      LCDURB7A    167 - 167    LCCHRC7A    168 - 168
      LCTIME8     169 - 170    LCUNIT8     171 - 171
      LCDURA8     172 - 173    LCDURB8     174 - 174
      LCCHRC8     175 - 175    LCTIME9     176 - 177
      LCUNIT9     178 - 178    LCDURA9     179 - 180
      LCDURB9     181 - 181    LCCHRC9     182 - 182
      LCTIME10    183 - 184    LCUNIT10    185 - 185
      LCDURA10    186 - 187    LCDURB10    188 - 188
      LCCHRC10    189 - 189    LCTIME11    190 - 191
      LCUNIT11    192 - 192    LCDURA11    193 - 194
      LCDURB11    195 - 195    LCCHRC11    196 - 196
      LCTIME12    197 - 198    LCUNIT12    199 - 199
      LCDURA12    200 - 201    LCDURB12    202 - 202
      LCCHRC12    203 - 203    LCTIME13    204 - 205
      LCUNIT13    206 - 206    LCDURA13    207 - 208
      LCDURB13    209 - 209    LCCHRC13    210 - 210
      LCTIME90    211 - 212    LCUNIT90    213 - 213
      LCDURA90    214 - 215    LCDURB90    216 - 216
      LCCHRC90    217 - 217    LCTIME91    218 - 219
      LCUNIT91    220 - 220    LCDURA91    221 - 222
      LCDURB91    223 - 223    LCCHRC91    224 - 224
      LAHCA1      225 - 225    LAHCA2      226 - 226
      LAHCA3      227 - 227    LAHCA4      228 - 228
      LAHCA5      229 - 229    LAHCA6      230 - 230
      LAHCA7      231 - 231    LAHCA8      232 - 232
      LAHCA9      233 - 233    LAHCA10     234 - 234
      LAHCA11     235 - 235    LAHCA12     236 - 236
      LAHCA13     237 - 237    LAHCA14A    238 - 238
      LAHCA15     239 - 239    LAHCA16     240 - 240
      LAHCA17     241 - 241    LAHCA18     242 - 242
      LAHCA19_    243 - 243    LAHCA20_    244 - 244
      LAHCA21_    245 - 245    LAHCA22_    246 - 246
      LAHCA23_    247 - 247    LAHCA24_    248 - 248
      LAHCA25_    249 - 249    LAHCA26_    250 - 250
      LAHCA27_    251 - 251    LAHCA28_    252 - 252
      LAHCA29_    253 - 253    LAHCA30_    254 - 254
      LAHCA31_    255 - 255    LAHCA32_    256 - 256
      LAHCA33_    257 - 257    LAHCA34_    258 - 258
      LAHCA90     259 - 259    LAHCA91     260 - 260
      LATIME1     261 - 262    LAUNIT1     263 - 263
      LADURA1     264 - 265    LADURB1     266 - 266
      LACHRC1     267 - 267    LATIME2     268 - 269
      LAUNIT2     270 - 270    LADURA2     271 - 272
      LADURB2     273 - 273    LACHRC2     274 - 274
      LATIME3     275 - 276    LAUNIT3     277 - 277
      LADURA3     278 - 279    LADURB3     280 - 280
      LACHRC3     281 - 281    LATIME4     282 - 283
      LAUNIT4     284 - 284    LADURA4     285 - 286
      LADURB4     287 - 287    LACHRC4     288 - 288
      LATIME5     289 - 290    LAUNIT5     291 - 291
      LADURA5     292 - 293    LADURB5     294 - 294
      LACHRC5     295 - 295    LATIME6     296 - 297
      LAUNIT6     298 - 298    LADURA6     299 - 300
      LADURB6     301 - 301    LACHRC6     302 - 302
      LATIME7     303 - 304    LAUNIT7     305 - 305
      LADURA7     306 - 307    LADURB7     308 - 308
      LACHRC7     309 - 309    LATIME8     310 - 311
      LAUNIT8     312 - 312    LADURA8     313 - 314
      LADURB8     315 - 315    LACHRC8     316 - 316
      LATIME9     317 - 318    LAUNIT9     319 - 319
      LADURA9     320 - 321    LADURB9     322 - 322
      LACHRC9     323 - 323    LATIME10    324 - 325
      LAUNIT10    326 - 326    LADURA10    327 - 328
      LADURB10    329 - 329    LACHRC10    330 - 330
      LATIME11    331 - 332    LAUNIT11    333 - 333
      LADURA11    334 - 335    LADURB11    336 - 336
      LACHRC11    337 - 337    LATIME12    338 - 339
      LAUNIT12    340 - 340    LADURA12    341 - 342
      LADURB12    343 - 343    LACHRC12    344 - 344
      LATIME13    345 - 346    LAUNIT13    347 - 347
      LADURA13    348 - 349    LADURB13    350 - 350
      LACHRC13    351 - 351    LTIME14A    352 - 353
      LUNIT14A    354 - 354    LDURA14A    355 - 356
      LDURB14A    357 - 357    LCHRC14A    358 - 358
      LATIME15    359 - 360    LAUNIT15    361 - 361
      LADURA15    362 - 363    LADURB15    364 - 364
      LACHRC15    365 - 365    LATIME16    366 - 367
      LAUNIT16    368 - 368    LADURA16    369 - 370
      LADURB16    371 - 371    LACHRC16    372 - 372
      LATIME17    373 - 374    LAUNIT17    375 - 375
      LADURA17    376 - 377    LADURB17    378 - 378
      LACHRC17    379 - 379    LATIME18    380 - 381
      LAUNIT18    382 - 382    LADURA18    383 - 384
      LADURB18    385 - 385    LACHRC18    386 - 386
      LATIME19    387 - 388    LAUNIT19    389 - 389
      LADURA19    390 - 391    LADURB19    392 - 392
      LACHRC19    393 - 393    LATIME20    394 - 395
      LAUNIT20    396 - 396    LADURA20    397 - 398
      LADURB20    399 - 399    LACHRC20    400 - 400
      LATIME21    401 - 402    LAUNIT21    403 - 403
      LADURA21    404 - 405    LADURB21    406 - 406
      LACHRC21    407 - 407    LATIME22    408 - 409
      LAUNIT22    410 - 410    LADURA22    411 - 412
      LADURB22    413 - 413    LACHRC22    414 - 414
      LATIME23    415 - 416    LAUNIT23    417 - 417
      LADURA23    418 - 419    LADURB23    420 - 420
      LACHRC23    421 - 421    LATIME24    422 - 423
      LAUNIT24    424 - 424    LADURA24    425 - 426
      LADURB24    427 - 427    LACHRC24    428 - 428
      LATIME25    429 - 430    LAUNIT25    431 - 431
      LADURA25    432 - 433    LADURB25    434 - 434
      LACHRC25    435 - 435    LATIME26    436 - 437
      LAUNIT26    438 - 438    LADURA26    439 - 440
      LADURB26    441 - 441    LACHRC26    442 - 442
      LATIME27    443 - 444    LAUNIT27    445 - 445
      LADURA27    446 - 447    LADURB27    448 - 448
      LACHRC27    449 - 449    LATIME28    450 - 451
      LAUNIT28    452 - 452    LADURA28    453 - 454
      LADURB28    455 - 455    LACHRC28    456 - 456
      LATIME29    457 - 458    LAUNIT29    459 - 459
      LADURA29    460 - 461    LADURB29    462 - 462
      LACHRC29    463 - 463    LATIME30    464 - 465
      LAUNIT30    466 - 466    LADURA30    467 - 468
      LADURB30    469 - 469    LACHRC30    470 - 470
      LATIME31    471 - 472    LAUNIT31    473 - 473
      LADURA31    474 - 475    LADURB31    476 - 476
      LACHRC31    477 - 477    LATIME32    478 - 479
      LAUNIT32    480 - 480    LADURA32    481 - 482
      LADURB32    483 - 483    LACHRC32    484 - 484
      LATIME33    485 - 486    LAUNIT33    487 - 487
      LADURA33    488 - 489    LADURB33    490 - 490
      LACHRC33    491 - 491    LATIME34    492 - 493
      LAUNIT34    494 - 494    LADURA34    495 - 496
      LADURB34    497 - 497    LACHRC34    498 - 498
      LATIME90    499 - 500    LAUNIT90    501 - 501
      LADURA90    502 - 503    LADURB90    504 - 504
      LACHRC90    505 - 505    LATIME91    506 - 507
      LAUNIT91    508 - 508    LADURA91    509 - 510
      LADURB91    511 - 511    LACHRC91    512 - 512
      LCONDRT     513 - 513    LACHRONR    514 - 514
      PHSTAT      515 - 515

      /* FAU LOCATIONS */

      PDMED12M    516 - 516    PNMED12M    517 - 517
      PHOSPYR2    518 - 518    HOSPNO      519 - 521
      HPNITE      522 - 524    PHCHM2W     525 - 525
      PHCHMN2W    526 - 527    PHCPH2WR    528 - 528
      PHCPHN2W    529 - 530    PHCDV2W     531 - 531
      PHCDVN2W    532 - 533    P10DVYR     534 - 534


      /* FHI LOCATIONS */

      NOTCOV      535 - 535    COVER       536 - 536
      COVER65     537 - 537    COVER65O    538 - 538
      MEDICARE    539 - 539    MCPART      540 - 540
      MCCHOICE    541 - 541    MCHMO       542 - 542
      MCADVR      543 - 543    MCPREM      544 - 544
      MCREF       545 - 545    MCPARTD     546 - 546
      MEDICAID    547 - 547    MAFLG       548 - 548
      MACHMD      549 - 549    MXCHNG      550 - 550
      MEDPREM     551 - 551    MDPRINC     552 - 552
      SINGLE      553 - 553    SSTYPEA     554 - 554
      SSTYPEB     555 - 555    SSTYPEC     556 - 556
      SSTYPED     557 - 557    SSTYPEE     558 - 558
      SSTYPEF     559 - 559    SSTYPEG     560 - 560
      SSTYPEH     561 - 561    SSTYPEI     562 - 562
      SSTYPEJ     563 - 563    SSTYPEK     564 - 564
      SSTYPEL     565 - 565    PRIVATE     566 - 566
      PRFLG       567 - 567    EXCHANGE    568 - 568
      WHONAM1     569 - 569    PRPOLH1     570 - 570
      PRCOOH1     571 - 571    PLNWRKS1    572 - 573
      PLNEXCH1    574 - 574    EXCHPR1     575 - 575
      PLNPAY11    576 - 576    PLNPAY21    577 - 577
      PLNPAY31    578 - 578    PLNPAY41    579 - 579
      PLNPAY51    580 - 580    PLNPAY61    581 - 581
      PLNPAY71    582 - 582    PLNPRE1     583 - 583
      HICOSTR1    584 - 588    PLNMGD1     589 - 589
      HDHP1       590 - 590    HSAHRA1     591 - 591
      MGCHMD1     592 - 592    MGPRMD1     593 - 593
      MGPYMD1     594 - 594    PCPREQ1     595 - 595
      PRRXCOV1    596 - 596    PRDNCOV1    597 - 597
      PXCHNG      598 - 598    PLEXCHPR    599 - 599
      PSTRFPRM    600 - 600    PSSPRINC    601 - 601
      PSTDOC      602 - 602    WHONAM2     603 - 603
      PRPOLH2     604 - 604    PRCOOH2     605 - 605
      PLNWRKS2    606 - 607    PLNEXCH2    608 - 608
      EXCHPR2     609 - 609    PLNPAY12    610 - 610
      PLNPAY22    611 - 611    PLNPAY32    612 - 612
      PLNPAY42    613 - 613    PLNPAY52    614 - 614
      PLNPAY62    615 - 615    PLNPAY72    616 - 616
      PLNPRE2     617 - 617    HICOSTR2    618 - 622
      PLNMGD2     623 - 623    HDHP2       624 - 624
      HSAHRA2     625 - 625    MGCHMD2     626 - 626
      MGPRMD2     627 - 627    MGPYMD2     628 - 628
      PCPREQ2     629 - 629    PRRXCOV2    630 - 630
      PRDNCOV2    631 - 631    PRPLPLUS    632 - 632
      FCOVCONF    633 - 633    SCHIP       634 - 634
      CHFLG       635 - 635    CHXCHNG     636 - 636
      STRFPRM1    637 - 637    CHPRINC     638 - 638
      STDOC1      639 - 639    OTHPUB      640 - 640
      OPFLG       641 - 641    OPXCHNG     642 - 642
      PLEXCHOP    643 - 643    STRFPRM2    644 - 644
      SSPRINC     645 - 645    STDOC2      646 - 646
      OTHGOV      647 - 647    OGFLG       648 - 648
      OGXCHNG     649 - 649    PLEXCHOG    650 - 650
      STRFPRM3    651 - 651    OGPRINC     652 - 652
      STDOC3      653 - 653    MILCARE     654 - 654
      MILSPC1     655 - 655    MILSPC2     656 - 656
      MILSPC3     657 - 657    MILSPC4     658 - 658
      MILMANR     659 - 659    IHS         660 - 660
      HILAST2     661 - 661    HISTOP1     662 - 662
      HISTOP2     663 - 663    HISTOP3     664 - 664
      HISTOP4     665 - 665    HISTOP5     666 - 666
      HISTOP6     667 - 667    HISTOP7     668 - 668
      HISTOP8     669 - 669    HISTOP9     670 - 670
      HISTOP10    671 - 671    HISTOP11    672 - 672
      HISTOP12    673 - 673    HISTOP13    674 - 674
      HISTOP14    675 - 675    HISTOP15    676 - 676
      HINOTYR     677 - 677    HINOTMYR    678 - 679
      FHICHNG     680 - 680    FHIKDBA     681 - 681
      FHIKDBB     682 - 682    FHIKDBC     683 - 683
      FHIKDBD     684 - 684    FHIKDBE     685 - 685
      FHIKDBF     686 - 686    FHIKDBG     687 - 687
      FHIKDBH     688 - 688    FHIKDBI     689 - 689
      FHIKDBJ     690 - 690    FHIKDBK     691 - 691
      PWRKBR1     692 - 693    HCSPFYR     694 - 694
      MEDBILL     695 - 695    MEDBPAY     696 - 696
      MEDBNOP     697 - 697    FSA         698 - 698
      HIKINDNA    699 - 699    HIKINDNB    700 - 700
      HIKINDNC    701 - 701    HIKINDND    702 - 702
      HIKINDNE    703 - 703    HIKINDNF    704 - 704
      HIKINDNG    705 - 705    HIKINDNH    706 - 706
      HIKINDNI    707 - 707    HIKINDNJ    708 - 708
      HIKINDNK    709 - 709    MCAREPRB    710 - 710
      MCAIDPRB    711 - 711    SINCOV      712 - 712


      /* FSD LOCATIONS */

      PLBORN      713 - 713    REGIONBR    714 - 715
      GEOBRTH     716 - 716    YRSINUS     717 - 717
      CITIZENP    718 - 718    HEADST      719 - 719
      HEADSTV1    720 - 720    EDUC1       721 - 722
      ARMFVER     723 - 723    ARMFEV      724 - 724
      ARMFFC      725 - 725    ARMFTM1P    726 - 726
      ARMFTM2P    727 - 727    ARMFTM3P    728 - 728
      ARMFTM4P    729 - 729    ARMFTM5P    730 - 730
      ARMFTM6P    731 - 731    ARMFTM7P    732 - 732
      DOINGLWP    733 - 733    WHYNOWKP    734 - 735
      WRKHRS2     736 - 737    WRKFTALL    738 - 738
      WRKLYR1     739 - 739    WRKMYR      740 - 741
      ERNYR_P     742 - 743    HIEMPOF     744 - 744


      /* FIN LOCATIONS */

      FINCINT     745 - 745    PSAL        746 - 746
      PSEINC      747 - 747    PSSRR       748 - 748
      PSSRRDB     749 - 749    PSSRRD      750 - 750
      PPENS       751 - 751    POPENS      752 - 752
      PSSI        753 - 753    PSSID       754 - 754
      PTANF       755 - 755    POWBEN      756 - 756
      PINTRSTR    757 - 757    PDIVD       758 - 758
      PCHLDSP     759 - 759    PINCOT      760 - 760
      PSSAPL      761 - 761    PSDAPL      762 - 762
      TANFMYR     763 - 764    ELIGPWIC    765 - 765
      PWIC        766 - 766    WIC_FLAG    767 - 767


      /* FLG LOCATIONS */

      ENGLANG     768 - 768;

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

      /* FDB LABELS */

      FDRN_FLG   ="Disability Questions flag"

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
      HOSPNO     ="Number of times in hospital overnight, 12m"
      HPNITE     ="Number of nights in hospital, 12m"
      PHCHM2W    ="Did - - receive HOME care by health professional, 2 wk"
      PHCHMN2W   ="Number of HOME visits by health professional, 2wk"
      PHCPH2WR   ="Did--get advice/test results by phone, 2wk"
      PHCPHN2W   ="Number of PHONE calls to health professional, 2wk"
      PHCDV2W    ="Did - - see health professional in office, etc, 2wk"
      PHCDVN2W   ="Number of times VISITED health professional, 2wk"
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
      MILCARE    ="Military health care coverage recode"
      MILSPC1    ="TRICARE coverage"
      MILSPC2    ="VA coverage"
      MILSPC3    ="CHAMP-VA coverage"
      MILSPC4    ="Other military coverage"
      MILMANR    ="Type of TRICARE coverage"
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

      /* FDB FORMAT ASSOCIATIONS */

      FDRN_FLG  PEP047X.

      /* FHS FORMAT ASSOCIATIONS */

      PLAPLYLM  PEP031X.   PLAPLYUN  PEP031X.   PSPEDEIS  PEP031X.
      PSPEDEM   PEP031X.   PLAADL    PEP031X.   LABATH    PEP031X.
      LADRESS   PEP031X.   LAEAT     PEP031X.   LABED     PEP031X.
      LATOILT   PEP031X.   LAHOME    PEP031X.   PLAIADL   PEP031X.
      PLAWKNOW  PEP031X.   PLAWKLIM  PEP061X.   PLAWALK   PEP031X.
      PLAREMEM  PEP031X.   PLIMANY   PEP064X.   LA1AR     PEP065X.
      LAHCC1    PEP066X.   LAHCC2    PEP066X.   LAHCC3    PEP066X.
      LAHCC4    PEP066X.   LAHCC5    PEP066X.   LAHCC6    PEP066X.
      LAHCC7A   PEP066X.   LAHCC8    PEP066X.   LAHCC9    PEP066X.
      LAHCC10   PEP066X.   LAHCC11   PEP066X.   LAHCC12   PEP066X.
      LAHCC13   PEP066X.   LAHCC90   PEP066X.   LAHCC91   PEP066X.
      LCTIME1   PEP081X.   LCUNIT1   PEP082X.   LCDURA1   PEP083X.
      LCDURB1   PEP084X.   LCCHRC1   PEP085X.   LCTIME2   PEP081X.
      LCUNIT2   PEP082X.   LCDURA2   PEP083X.   LCDURB2   PEP084X.
      LCCHRC2   PEP085X.   LCTIME3   PEP081X.   LCUNIT3   PEP082X.
      LCDURA3   PEP083X.   LCDURB3   PEP084X.   LCCHRC3   PEP085X.
      LCTIME4   PEP081X.   LCUNIT4   PEP082X.   LCDURA4   PEP083X.
      LCDURB4   PEP084X.   LCCHRC4   PEP085X.   LCTIME5   PEP081X.
      LCUNIT5   PEP082X.   LCDURA5   PEP083X.   LCDURB5   PEP084X.
      LCCHRC5   PEP085X.   LCTIME6   PEP081X.   LCUNIT6   PEP082X.
      LCDURA6   PEP083X.   LCDURB6   PEP084X.   LCCHRC6   PEP085X.
      LCTIME7A  PEP081X.   LCUNIT7A  PEP082X.   LCDURA7A  PEP083X.
      LCDURB7A  PEP084X.   LCCHRC7A  PEP085X.   LCTIME8   PEP081X.
      LCUNIT8   PEP082X.   LCDURA8   PEP083X.   LCDURB8   PEP084X.
      LCCHRC8   PEP085X.   LCTIME9   PEP081X.   LCUNIT9   PEP082X.
      LCDURA9   PEP083X.   LCDURB9   PEP084X.   LCCHRC9   PEP085X.
      LCTIME10  PEP081X.   LCUNIT10  PEP082X.   LCDURA10  PEP083X.
      LCDURB10  PEP084X.   LCCHRC10  PEP085X.   LCTIME11  PEP081X.
      LCUNIT11  PEP082X.   LCDURA11  PEP083X.   LCDURB11  PEP084X.
      LCCHRC11  PEP085X.   LCTIME12  PEP081X.   LCUNIT12  PEP082X.
      LCDURA12  PEP083X.   LCDURB12  PEP084X.   LCCHRC12  PEP085X.
      LCTIME13  PEP081X.   LCUNIT13  PEP082X.   LCDURA13  PEP083X.
      LCDURB13  PEP084X.   LCCHRC13  PEP085X.   LCTIME90  PEP081X.
      LCUNIT90  PEP082X.   LCDURA90  PEP083X.   LCDURB90  PEP084X.
      LCCHRC90  PEP085X.   LCTIME91  PEP081X.   LCUNIT91  PEP082X.
      LCDURA91  PEP083X.   LCDURB91  PEP084X.   LCCHRC91  PEP085X.
      LAHCA1    PEP066X.   LAHCA2    PEP066X.   LAHCA3    PEP066X.
      LAHCA4    PEP066X.   LAHCA5    PEP066X.   LAHCA6    PEP066X.
      LAHCA7    PEP066X.   LAHCA8    PEP066X.   LAHCA9    PEP066X.
      LAHCA10   PEP066X.   LAHCA11   PEP066X.   LAHCA12   PEP066X.
      LAHCA13   PEP066X.   LAHCA14A  PEP066X.   LAHCA15   PEP066X.
      LAHCA16   PEP066X.   LAHCA17   PEP066X.   LAHCA18   PEP066X.
      LAHCA19_  PEP066X.   LAHCA20_  PEP066X.   LAHCA21_  PEP066X.
      LAHCA22_  PEP066X.   LAHCA23_  PEP066X.   LAHCA24_  PEP066X.
      LAHCA25_  PEP066X.   LAHCA26_  PEP066X.   LAHCA27_  PEP066X.
      LAHCA28_  PEP066X.   LAHCA29_  PEP066X.   LAHCA30_  PEP066X.
      LAHCA31_  PEP066X.   LAHCA32_  PEP066X.   LAHCA33_  PEP066X.
      LAHCA34_  PEP066X.   LAHCA90   PEP066X.   LAHCA91   PEP066X.
      LATIME1   PEP081X.   LAUNIT1   PEP082X.   LADURA1   PEP194X.
      LADURB1   PEP195X.   LACHRC1   PEP085X.   LATIME2   PEP081X.
      LAUNIT2   PEP082X.   LADURA2   PEP194X.   LADURB2   PEP195X.
      LACHRC2   PEP085X.   LATIME3   PEP081X.   LAUNIT3   PEP082X.
      LADURA3   PEP194X.   LADURB3   PEP195X.   LACHRC3   PEP085X.
      LATIME4   PEP081X.   LAUNIT4   PEP082X.   LADURA4   PEP194X.
      LADURB4   PEP195X.   LACHRC4   PEP085X.   LATIME5   PEP081X.
      LAUNIT5   PEP082X.   LADURA5   PEP194X.   LADURB5   PEP195X.
      LACHRC5   PEP085X.   LATIME6   PEP081X.   LAUNIT6   PEP082X.
      LADURA6   PEP194X.   LADURB6   PEP195X.   LACHRC6   PEP085X.
      LATIME7   PEP081X.   LAUNIT7   PEP082X.   LADURA7   PEP194X.
      LADURB7   PEP195X.   LACHRC7   PEP085X.   LATIME8   PEP081X.
      LAUNIT8   PEP082X.   LADURA8   PEP194X.   LADURB8   PEP195X.
      LACHRC8   PEP085X.   LATIME9   PEP081X.   LAUNIT9   PEP082X.
      LADURA9   PEP194X.   LADURB9   PEP195X.   LACHRC9   PEP085X.
      LATIME10  PEP081X.   LAUNIT10  PEP082X.   LADURA10  PEP194X.
      LADURB10  PEP195X.   LACHRC10  PEP085X.   LATIME11  PEP081X.
      LAUNIT11  PEP082X.   LADURA11  PEP194X.   LADURB11  PEP195X.
      LACHRC11  PEP085X.   LATIME12  PEP081X.   LAUNIT12  PEP082X.
      LADURA12  PEP194X.   LADURB12  PEP195X.   LACHRC12  PEP085X.
      LATIME13  PEP081X.   LAUNIT13  PEP082X.   LADURA13  PEP194X.
      LADURB13  PEP195X.   LACHRC13  PEP085X.   LTIME14A  PEP081X.
      LUNIT14A  PEP082X.   LDURA14A  PEP194X.   LDURB14A  PEP195X.
      LCHRC14A  PEP085X.   LATIME15  PEP081X.   LAUNIT15  PEP082X.
      LADURA15  PEP194X.   LADURB15  PEP195X.   LACHRC15  PEP085X.
      LATIME16  PEP081X.   LAUNIT16  PEP082X.   LADURA16  PEP194X.
      LADURB16  PEP195X.   LACHRC16  PEP085X.   LATIME17  PEP081X.
      LAUNIT17  PEP082X.   LADURA17  PEP194X.   LADURB17  PEP195X.
      LACHRC17  PEP085X.   LATIME18  PEP081X.   LAUNIT18  PEP082X.
      LADURA18  PEP194X.   LADURB18  PEP195X.   LACHRC18  PEP085X.
      LATIME19  PEP081X.   LAUNIT19  PEP082X.   LADURA19  PEP194X.
      LADURB19  PEP195X.   LACHRC19  PEP085X.   LATIME20  PEP081X.
      LAUNIT20  PEP082X.   LADURA20  PEP194X.   LADURB20  PEP195X.
      LACHRC20  PEP085X.   LATIME21  PEP081X.   LAUNIT21  PEP082X.
      LADURA21  PEP194X.   LADURB21  PEP195X.   LACHRC21  PEP085X.
      LATIME22  PEP081X.   LAUNIT22  PEP082X.   LADURA22  PEP194X.
      LADURB22  PEP195X.   LACHRC22  PEP085X.   LATIME23  PEP081X.
      LAUNIT23  PEP082X.   LADURA23  PEP194X.   LADURB23  PEP195X.
      LACHRC23  PEP085X.   LATIME24  PEP081X.   LAUNIT24  PEP082X.
      LADURA24  PEP194X.   LADURB24  PEP195X.   LACHRC24  PEP085X.
      LATIME25  PEP081X.   LAUNIT25  PEP082X.   LADURA25  PEP194X.
      LADURB25  PEP195X.   LACHRC25  PEP085X.   LATIME26  PEP081X.
      LAUNIT26  PEP082X.   LADURA26  PEP194X.   LADURB26  PEP195X.
      LACHRC26  PEP085X.   LATIME27  PEP081X.   LAUNIT27  PEP082X.
      LADURA27  PEP194X.   LADURB27  PEP195X.   LACHRC27  PEP085X.
      LATIME28  PEP081X.   LAUNIT28  PEP082X.   LADURA28  PEP194X.
      LADURB28  PEP195X.   LACHRC28  PEP085X.   LATIME29  PEP081X.
      LAUNIT29  PEP082X.   LADURA29  PEP194X.   LADURB29  PEP195X.
      LACHRC29  PEP085X.   LATIME30  PEP081X.   LAUNIT30  PEP082X.
      LADURA30  PEP194X.   LADURB30  PEP195X.   LACHRC30  PEP085X.
      LATIME31  PEP081X.   LAUNIT31  PEP082X.   LADURA31  PEP194X.
      LADURB31  PEP195X.   LACHRC31  PEP085X.   LATIME32  PEP081X.
      LAUNIT32  PEP082X.   LADURA32  PEP194X.   LADURB32  PEP195X.
      LACHRC32  PEP085X.   LATIME33  PEP081X.   LAUNIT33  PEP082X.
      LADURA33  PEP194X.   LADURB33  PEP195X.   LACHRC33  PEP085X.
      LATIME34  PEP081X.   LAUNIT34  PEP082X.   LADURA34  PEP194X.
      LADURB34  PEP195X.   LACHRC34  PEP085X.   LATIME90  PEP081X.
      LAUNIT90  PEP082X.   LADURA90  PEP194X.   LADURB90  PEP195X.
      LACHRC90  PEP085X.   LATIME91  PEP081X.   LAUNIT91  PEP082X.
      LADURA91  PEP194X.   LADURB91  PEP195X.   LACHRC91  PEP085X.
      LCONDRT   PEP372X.   LACHRONR  PEP373X.   PHSTAT    PEP374X.

      /* FAU FORMAT ASSOCIATIONS */

      PDMED12M  PEP031X.   PNMED12M  PEP031X.   PHOSPYR2  PEP031X.
      HOSPNO    PEP378X.   HPNITE    PEP378X.   PHCHM2W   PEP031X.
      PHCHMN2W  PEP381X.   PHCPH2WR  PEP031X.   PHCPHN2W  PEP381X.
      PHCDV2W   PEP031X.   PHCDVN2W  PEP381X.   P10DVYR   PEP031X.

      /* FHI FORMAT ASSOCIATIONS */

      NOTCOV    PEP387X.   COVER     PEP388X.   COVER65   PEP389X.
      COVER65O  PEP390X.   MEDICARE  PEP391X.   MCPART    PEP392X.
      MCCHOICE  PEP031X.   MCHMO     PEP031X.   MCADVR    PEP395X.
      MCPREM    PEP031X.   MCREF     PEP031X.   MCPARTD   PEP031X.
      MEDICAID  PEP391X.   MAFLG     PEP400X.   MACHMD    PEP401X.
      MXCHNG    PEP031X.   MEDPREM   PEP031X.   MDPRINC   PEP031X.
      SINGLE    PEP405X.   SSTYPEA   PEP066X.   SSTYPEB   PEP066X.
      SSTYPEC   PEP066X.   SSTYPED   PEP066X.   SSTYPEE   PEP066X.
      SSTYPEF   PEP066X.   SSTYPEG   PEP066X.   SSTYPEH   PEP066X.
      SSTYPEI   PEP066X.   SSTYPEJ   PEP066X.   SSTYPEK   PEP066X.
      SSTYPEL   PEP066X.   PRIVATE   PEP391X.   PRFLG     PEP419X.
      EXCHANGE  PEP420X.   WHONAM1   PEP421X.   PRPOLH1   PEP422X.
      PRCOOH1   PEP031X.   PLNWRKS1  PEP424X.   PLNEXCH1  PEP031X.
      EXCHPR1   PEP426X.   PLNPAY11  PEP066X.   PLNPAY21  PEP066X.
      PLNPAY31  PEP066X.   PLNPAY41  PEP066X.   PLNPAY51  PEP066X.
      PLNPAY61  PEP066X.   PLNPAY71  PEP066X.   PLNPRE1   PEP434X.
      HICOSTR1  PEP435X.   PLNMGD1   PEP436X.   HDHP1     PEP437X.
      HSAHRA1   PEP031X.   MGCHMD1   PEP439X.   MGPRMD1   PEP031X.
      MGPYMD1   PEP031X.   PCPREQ1   PEP031X.   PRRXCOV1  PEP031X.
      PRDNCOV1  PEP031X.   PXCHNG    PEP031X.   PLEXCHPR  PEP426X.
      PSTRFPRM  PEP031X.   PSSPRINC  PEP031X.   PSTDOC    PEP449X.
      WHONAM2   PEP421X.   PRPOLH2   PEP422X.   PRCOOH2   PEP031X.
      PLNWRKS2  PEP424X.   PLNEXCH2  PEP031X.   EXCHPR2   PEP426X.
      PLNPAY12  PEP066X.   PLNPAY22  PEP066X.   PLNPAY32  PEP066X.
      PLNPAY42  PEP066X.   PLNPAY52  PEP066X.   PLNPAY62  PEP066X.
      PLNPAY72  PEP066X.   PLNPRE2   PEP434X.   HICOSTR2  PEP435X.
      PLNMGD2   PEP436X.   HDHP2     PEP437X.   HSAHRA2   PEP031X.
      MGCHMD2   PEP439X.   MGPRMD2   PEP031X.   MGPYMD2   PEP031X.
      PCPREQ2   PEP031X.   PRRXCOV2  PEP031X.   PRDNCOV2  PEP031X.
      PRPLPLUS  PEP031X.   FCOVCONF  PEP475X.   SCHIP     PEP391X.
      CHFLG     PEP477X.   CHXCHNG   PEP031X.   STRFPRM1  PEP031X.
      CHPRINC   PEP031X.   STDOC1    PEP401X.   OTHPUB    PEP391X.
      OPFLG     PEP483X.   OPXCHNG   PEP031X.   PLEXCHOP  PEP426X.
      STRFPRM2  PEP031X.   SSPRINC   PEP031X.   STDOC2    PEP401X.
      OTHGOV    PEP391X.   OGFLG     PEP490X.   OGXCHNG   PEP031X.
      PLEXCHOG  PEP426X.   STRFPRM3  PEP031X.   OGPRINC   PEP031X.
      STDOC3    PEP401X.   MILCARE   PEP391X.   MILSPC1   PEP066X.
      MILSPC2   PEP066X.   MILSPC3   PEP066X.   MILSPC4   PEP066X.
      MILMANR   PEP501X.   IHS       PEP031X.   HILAST2   PEP503X.
      HISTOP1   PEP066X.   HISTOP2   PEP066X.   HISTOP3   PEP066X.
      HISTOP4   PEP066X.   HISTOP5   PEP066X.   HISTOP6   PEP066X.
      HISTOP7   PEP066X.   HISTOP8   PEP066X.   HISTOP9   PEP066X.
      HISTOP10  PEP066X.   HISTOP11  PEP066X.   HISTOP12  PEP066X.
      HISTOP13  PEP066X.   HISTOP14  PEP066X.   HISTOP15  PEP066X.
      HINOTYR   PEP031X.   HINOTMYR  PEP381X.   FHICHNG   PEP031X.
      FHIKDBA   PEP066X.   FHIKDBB   PEP066X.   FHIKDBC   PEP066X.
      FHIKDBD   PEP066X.   FHIKDBE   PEP066X.   FHIKDBF   PEP066X.
      FHIKDBG   PEP066X.   FHIKDBH   PEP066X.   FHIKDBI   PEP066X.
      FHIKDBJ   PEP066X.   FHIKDBK   PEP066X.   PWRKBR1   PEP533X.
      HCSPFYR   PEP534X.   MEDBILL   PEP031X.   MEDBPAY   PEP031X.
      MEDBNOP   PEP031X.   FSA       PEP031X.   HIKINDNA  PEP066X.
      HIKINDNB  PEP066X.   HIKINDNC  PEP066X.   HIKINDND  PEP066X.
      HIKINDNE  PEP066X.   HIKINDNF  PEP066X.   HIKINDNG  PEP066X.
      HIKINDNH  PEP066X.   HIKINDNI  PEP066X.   HIKINDNJ  PEP066X.
      HIKINDNK  PEP066X.   MCAREPRB  PEP031X.   MCAIDPRB  PEP031X.
      SINCOV    PEP031X.

      /* FSD FORMAT ASSOCIATIONS */

      PLBORN    PEP031X.   REGIONBR  PEP554X.   GEOBRTH   PEP555X.
      YRSINUS   PEP556X.   CITIZENP  PEP557X.   HEADST    PEP031X.
      HEADSTV1  PEP031X.   EDUC1     PEP560X.   ARMFVER   PEP031X.
      ARMFEV    PEP031X.   ARMFFC    PEP031X.   ARMFTM1P  PEP066X.
      ARMFTM2P  PEP066X.   ARMFTM3P  PEP066X.   ARMFTM4P  PEP066X.
      ARMFTM5P  PEP066X.   ARMFTM6P  PEP066X.   ARMFTM7P  PEP066X.
      DOINGLWP  PEP571X.   WHYNOWKP  PEP572X.   WRKHRS2   PEP573X.
      WRKFTALL  PEP031X.   WRKLYR1   PEP031X.   WRKMYR    PEP576X.
      ERNYR_P   PEP577X.   HIEMPOF   PEP031X.

      /* FIN FORMAT ASSOCIATIONS */

      FINCINT   PEP579X.   PSAL      PEP031X.   PSEINC    PEP031X.
      PSSRR     PEP031X.   PSSRRDB   PEP031X.   PSSRRD    PEP031X.
      PPENS     PEP031X.   POPENS    PEP031X.   PSSI      PEP031X.
      PSSID     PEP031X.   PTANF     PEP031X.   POWBEN    PEP031X.
      PINTRSTR  PEP031X.   PDIVD     PEP031X.   PCHLDSP   PEP031X.
      PINCOT    PEP031X.   PSSAPL    PEP031X.   PSDAPL    PEP031X.
      TANFMYR   PEP381X.   ELIGPWIC  PEP598X.   PWIC      PEP031X.
      WIC_FLAG  PEP600X.

      /* FLG FORMAT ASSOCIATIONS */

      ENGLANG   PEP601X.;
RUN;

PROC CONTENTS DATA=NHIS.PERSONSX;
   TITLE1 'CONTENTS OF THE 2017 NHIS Person FILE';

PROC FREQ DATA=NHIS.PERSONSX NOTITLE;
   TABLES RECTYPE/LIST MISSING;
   TITLE1 'FREQUENCY REPORT FOR 2017 NHIS Person FILE';
   TITLE2 '(WEIGHTED)';
   WEIGHT WTFA;

PROC FREQ DATA=NHIS.PERSONSX NOTITLE;
   TABLES RECTYPE/LIST MISSING;
   TITLE1 'FREQUENCY REPORT FOR 2017 NHIS Person FILE';
   TITLE2 '(UNWEIGHTED)';

* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
             STATEMENT: FORMAT _ALL_;
RUN;
