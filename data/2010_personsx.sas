*********************************************************************
 MAY 31, 2011  8:54 AM
 
 This is an example of a SAS program that creates a SAS
 file from the 2010 NHIS Public Use PERSONSX.DAT ASCII file
 
 This is stored in PERSONSX.SAS
*********************************************************************;

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS;
LIBNAME  NHIS     "C:\NHIS2010";

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS
             IF YOU ALLOW PROGRAM TO PERMANENTLY STORE FORMATS;
LIBNAME  LIBRARY  "C:\NHIS2010";

FILENAME ASCIIDAT 'C:\NHIS2010\PERSONSX.dat';

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
      31                 = "31 Sample Adult Cancer"
      38                 = "38 Quality of Life"
      40                 = "40 Sample Child"
      60                 = "60 Family"
      63                 = "63 Disability Questions Tests 2010"
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
      01                 = "01 Week 1"
      02                 = "02 Week 2"
      03                 = "03 Week 3"
      04                 = "04 Week 4"
      05                 = "05 Week 5"
      06                 = "06 Week 6"
      07                 = "07 Week 7"
      08                 = "08 Week 8"
      09                 = "09 Week 9"
      10                 = "10 Week 10"
      11                 = "11 Week 11"
      12                 = "12 Week 12"
      13                 = "13 Week 13"
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
      1                  = "1 Imputed: was 'refused' Hispanic Origin"
      2                  = "2 Imputed: was 'not ascertained' Hispanic Origin"
      3                  = "3 Imputed: was 'does not know' Hispanic Origin"
      4                  = "4 Hispanic origin given by respondent/proxy"
   ;
   VALUE PEP016X
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
   VALUE PEP017X
      1                  = "1 Imputed: was 'refused' Hispanic Origin"
      2                  = "2 Imputed: was 'not ascertained' Hispanic Origin"
      3                  = "3 Imputed: was 'does not know' Hispanic Origin"
      4                  = "4 Hispanic Origin type given by respondent/proxy"
   ;
   VALUE PEP018X
      01                 = "01 White only"
      02                 = "02 Black/African American only"
      03                 = "03 AIAN only"
      04                 = "04 Asian only"
      05                 = "05 Race group not releasable (See file layout)"
      06                 = "06 Multiple race"
   ;
   VALUE PEP019X
      1                  = "1 Imputed: was 'refused'"
      2                  = "2 Imputed: was 'not ascertained'"
      3                  = "3 Imputed: was 'does not know'"
      4                  = "4 Imputed: was other race'"
      5                  = "5 Imputed: was 'unspecified multiple race'"
      6                  = "6 Race given by respondent/proxy"
   ;
   VALUE PEP020X
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
   VALUE PEP021X
      01                 = "01 White"
      02                 = "02 Black/African American"
      03                 = "03 Indian (American) (includes Eskimo, Aleut)"
      06                 = "06 Chinese"
      07                 = "07 Filipino"
      12                 = "12 Asian Indian"
      16                 = "16 Other race (See file layout)"
      17                 = "17 Multiple race, no primary race selected"
   ;
   VALUE PEP022X
      1                  = "1 White"
      2                  = "2 Black"
      3                  = "3 Asian"
      4                  = "4 All other race groups (See file layout)"
   ;
   VALUE PEP023X
      1                  = "1 Hispanic"
      2                  = "2 Non-Hispanic White"
      3                  = "3 Non-Hispanic Black"
      4                  = "4 Non-Hispanic Asian"
      5                  = "5 Non-Hispanic All other race groups"
   ;
   VALUE PEP024X
      1                  = "1 Ethnicity/race imputed"
      2                  = "2 Ethnicity/race given by respondent/proxy"
   ;
   VALUE PEP025X
      1                  = "1 Armed Forces"
      2                  = "2 Not Armed Forces"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP026X
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
   VALUE $PEP027X
      "8"                = "8 Not ascertained"
      "P"                = "P HH Reference person"
   ;
   VALUE PEP028X
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
   VALUE $PEP029X
      "01"               = "01 January"
      "02"               = "02 February"
      "03"               = "03 March"
      "04"               = "04 April"
      "05"               = "05 May"
      "06"               = "06 June"
      "07"               = "07 July"
      "08"               = "08 August"
      "09"               = "09 September"
      "10"               = "10 October"
      "11"               = "11 November"
      "12"               = "12 December"
      "97"               = "97 Refused"
      "98"               = "98 Not ascertained"
      "99"               = "99 Don't know"
   ;
   VALUE $PEP030X
      OTHER              = "Birth Year"
      ' '                 = ' '
      "9997"             = "9997 Refused"
      "9998"             = "9998 Not ascertained"
      "9999"             = "9999 Don't know"
   ;
   VALUE PEP031X
      00                 = "00 Under 1 year"
      85                 = "85 85+ years"
   ;
   VALUE PEP032X
      1                  = "1 Change on AGE due to data entry error"
   ;
   VALUE $PEP033X
      "8"                = "8 Not ascertained"
      "B"                = "B Family respondent"
   ;
   VALUE $PEP034X
      "8"                = "8 Not ascertained"
      "P"                = "P Family reference person"
   ;
   VALUE PEP035X
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
   VALUE $PEP036X
      "98"               = "98 Not ascertained"
   ;
   VALUE PEP037X
      1                  = "1 Yes"
      2                  = "2 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP038X
      1                  = "1 Married"
      2                  = "2 Widowed"
      3                  = "3 Divorced"
      4                  = "4 Separated"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP040X
      1                  = "1 Separated"
      2                  = "2 Divorced"
      3                  = "3 Married"
      4                  = "4 Single/never married"
      5                  = "5 Widowed"
      9                  = "9 Unknown marital status"
   ;
   VALUE PEP041X
      1                  = "1 Full {brother/sister}"
      2                  = "2 Half {brother/sister}"
      3                  = "3 Adopted {brother/sister}"
      4                  = "4 Step {brother/sister}"
      5                  = "5 Foster {brother/sister}"
      6                  = "6 {Brother/Sister}-in-law"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE $PEP042X
      "00"               = "00 Mother not a household member"
      "96"               = "96 Has legal guardian"
      "97"               = "97 Refused"
      "98"               = "98 Not ascertained"
      "99"               = "99 Don't know"
   ;
   VALUE PEP043X
      1                  = "1 Biological"
      2                  = "2 Adoptive"
      3                  = "3 Step"
      4                  = "4 Foster"
      5                  = "5 In-law"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE $PEP044X
      "00"               = "00 Father not in household"
      "96"               = "96 Has legal guardian"
      "97"               = "97 Refused"
      "98"               = "98 Not ascertained"
      "99"               = "99 Don't know"
   ;
   VALUE PEP046X
      1                  = "1 Mother, no father"
      2                  = "2 Father, no mother"
      3                  = "3 Mother and father"
      4                  = "4 Neither mother nor father"
      9                  = "9 Unknown"
   ;
   VALUE PEP047X
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
   VALUE PEP049X
      0                  = "0 Sample Adult - no record"
      1                  = "1 Sample Adult - has record"
      2                  = "2 Not selected as Sample Adult"
      3                  = "3 No one selected as Sample Adult"
      4                  = "4 Armed Force member"
      5                  = "5 Armed Force member - selected as Sample Adult"
   ;
   VALUE PEP050X
      0                  = "0 Sample Child - no record"
      1                  = "1 Sample Child - has record"
      2                  = "2 Not selected as Sample Child"
      3                  = "3 No one selected as Sample Child"
      4                  = "4 Emancipated minor"
   ;
   VALUE PEP051X
      1                  = "1 No sample adult record due to quality reasons"
   ;
   VALUE PEP052X
      1                  = "1 No sample child record due to quality reasons"
   ;
   VALUE PEP053X
      1                  = "1 Selected to receive QOL section"
      2                  = "2 Not selected to receive QOL section"
   ;
   VALUE PEP054X
      1                  = "1 Not selected to receive FDB section"
      2                  = "2 Selected to receive FDB section"
   ;
   VALUE PEP068X
      0                  = "0 Unable to work"
      1                  = "1 Limited in work"
      2                  = "2 Not limited in work"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP071X
      0                  = "0 Limitation previously mentioned"
      1                  = "1 Yes, limited in some other way"
      2                  = "2 Not limited in any way"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP072X
      1                  = "1 Limited in any way"
      2                  = "2 Not limited in any way"
      3                  = "3 Unknown if limited"
   ;
   VALUE PEP073X
      1                  = "1 Mentioned"
      2                  = "2 Not mentioned"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP088X
      95                 = "95 95+"
      96                 = "96 Since birth"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP089X
      1                  = "1 Day(s)"
      2                  = "2 Week(s)"
      3                  = "3 Month(s)"
      4                  = "4 Year(s)"
      6                  = "6 Since birth"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP090X
      00                 = "00 Less than 1 year"
      96                 = "96 Unknown number of years"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP091X
      0                  = "0 Since birth and child <1 year of age"
      1                  = "1 Less than 3 months"
      2                  = "2 3-5 months"
      3                  = "3 6-12 months"
      4                  = "4 More than 1 year"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP092X
      1                  = "1 Chronic"
      2                  = "2 Not chronic"
      9                  = "9 Unknown if chronic"
   ;
   VALUE PEP201X
      00                 = "00 Less than 1 year"
      85                 = "85 85+ years"
      96                 = "96 Unknown number of years"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP202X
      1                  = "1 Less than 3 months"
      2                  = "2 3-5 months"
      3                  = "3 6-12 months"
      4                  = "4 More than 1 year"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP379X
      1                  = 
"1 At least one condition causing limitation of activity is chronic"
      2                  = 
"2 No condition causing limitation of activity is chronic"
      9                  = 
"9 Unknown if any condition causing limitation of activity is chronic"
   ;
   VALUE PEP380X
      0                  = 
"0 Not limited in any way (including unknown if limited)"
      1                  = "1 Limited; caused by at least one chronic condition"
      2                  = "2 Limited; not caused by chronic condition"
      3                  = "3 Limited; unknown if condition is chronic"
   ;
   VALUE PEP381X
      1                  = "1 Excellent"
      2                  = "2 Very good"
      3                  = "3 Good"
      4                  = "4 Fair"
      5                  = "5 Poor"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP385X
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE PEP388X
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP394X
      1                  = "1 Not covered"
      2                  = "2 Covered"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP395X
      1                  = "1 Yes, information"
      2                  = "2 Yes, but no information"
      3                  = "3 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP396X
      1                  = "1 Part A - Hospital only"
      2                  = "2 Part B - Medical only"
      3                  = "3 Both Part A and Part B"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP399X
      1                  = "1 Medicare Advantage"
      2                  = "2 Private plan not Medicare Advantage"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't Know"
   ;
   VALUE PEP404X
      1                  = "1 Any doctor"
      2                  = "2 Select from book/list"
      3                  = "3 Doctor is assigned"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP407X
      1                  = "1 Yes, with information"
      2                  = "2 Yes, but no information"
      3                  = "3 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP421X
      1                  = "1 HMO"
      2                  = "2 Non-HMO"
      3                  = "3 Unknown model type"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP422X
      1                  = "1 In own name"
      2                  = "2 Someone else in family"
      3                  = "3 Person not in household"
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
"06 Through a state/local government or community program"
      07                 = "07 Other"
      08                 = "08 Through school"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP431X
      20000              = "20000 $20,000 or more"
      99997              = "99997 Refused"
      99998              = "99998 Not ascertained"
      99999              = "99999 Don't know"
   ;
   VALUE PEP432X
      1                  = "1 HMO/IPA"
      2                  = "2 PPO"
      3                  = "3 POS"
      4                  = "4 Fee-for-service/indemnity"
      5                  = "5 Other"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP433X
      1                  = "1 Less than [$1,200/$2,400]"
      2                  = "2 [$1,200/$2,400] or more"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP435X
      1                  = "1 Any doctor"
      2                  = "2 Select from group/list"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP479X
      1                  = "1 TRICARE Prime"
      2                  = "2 TRICARE Extra"
      3                  = "3 TRICARE Standard"
      4                  = "4 TRICARE for life"
      5                  = "5 TRICARE other"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP481X
      1                  = "1 6 months or less"
      2                  = "2 More than 6 months, but not more than 1 year ago"
      3                  = "3 More than 1 year, but not more than 3 years ago"
      4                  = "4 More than 3 years"
      5                  = "5 Never"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP499X
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
   VALUE PEP516X
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
   VALUE PEP517X
      1                  = "1 USA: born in one of the 50 United States or D.C."
      2                  = "2 USA: born in a U.S. territory"
      3                  = "3 Not born in the U.S. or a U.S. territory"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP518X
      1                  = "1 Less than 1 year"
      2                  = "2 1 yr., less than 5 yrs."
      3                  = "3 5 yrs., less than 10 yrs."
      4                  = "4 10 yrs., less than 15 yrs."
      5                  = "5 15 years or more"
      9                  = "9 Unknown"
   ;
   VALUE PEP519X
      1                  = "1 Yes, citizen of the United States"
      2                  = "2 No, not a citizen of the United States"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP522X
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
   VALUE PEP524X
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
   VALUE PEP525X
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
   VALUE PEP526X
      95                 = "95 95+ hours"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP529X
      01                 = "01 1 month or less"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP530X
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
   VALUE PEP532X
      1                  = "1 Enter 1 to continue"
      8                  = "8 Not ascertained"
   ;
   VALUE PEP553X
      0                  = "0 No WIC age-eligible family members"
      1                  = "1 At least 1 WIC age-eligible family member"
   ;
   VALUE PEP555X
      0                  = "0 Person not age-eligible"
      1                  = "1 Person age-eligible"
   ;

DATA NHIS.PERSONSX;
   * CREATE A SAS DATA SET;
   INFILE ASCIIDAT PAD LRECL=725;

   * DEFINE LENGTH OF ALL VARIABLES;

   LENGTH

      /* IDN LENGTHS */

      RECTYPE    3   SRVY_YR    4   HHX      $ 6   INTV_QRT   3
      ASSIGNWK   3   FMX      $ 2   FPX      $ 2   WTIA       8
      WTFA       8

      /* UCF LENGTHS */

      REGION     3   STRAT_P    4   PSU_P      3

      /* HHC LENGTHS */

      SEX        3   ORIGIN_I   3   ORIGIMPT   3   HISPAN_I   3
      HISPIMPT   3   RACERPI2   3   RACEIMP2   3   MRACRPI2   3
      MRACBPI2   3   RACRECI3   3   HISCODI3   3   ERIMPFLG   3
      NOWAF      3   RRP        3   HHREFLG  $ 1   FRRP       3
      DOB_M    $ 2   DOB_Y_P  $ 4   AGE_P      3   AGE_CHG    3

      /* FID LENGTHS */

      FMRPFLG  $ 1   FMREFLG  $ 1   R_MARITL   3   FSPOUS2  $ 2
      COHAB1     3   COHAB2     3   FCOHAB3  $ 2   CDCMSTAT   3
      SIB_DEG    3   FMOTHER  $ 2   MOM_DEG    3   FFATHER  $ 2
      DAD_DEG    3   PARENTS    3   MOM_ED     3   DAD_ED     3
      ASTATFLG   3   CSTATFLG   3   QCADULT    3   QCCHILD    3

      /* QOL LENGTHS */

      QOL_FLG    3

      /* FDB LENGTHS */

      FDRN_FLG   3

      /* FHS LENGTHS */

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

      /* FAU LENGTHS */

      PDMED12M   3   PNMED12M   3   PHOSPYR2   3   HOSPNO     4
      HPNITE     4   PHCHM2W    3   PHCHMN2W   3   PHCPH2WR   3
      PHCPHN2W   3   PHCDV2W    3   PHCDVN2W   3   P10DVYR    3

      /* FHI LENGTHS */

      NOTCOV     3   MEDICARE   3   MCPART     3   MCCHOICE   3
      MCHMO      3   MCADVR     3   MCPREM     3   MCREF      3
      MCPARTD    3   MEDICAID   3   MACHMD     3   MAPCMD     3
      MAREF      3   SINGLE     3   SSTYPEA    3   SSTYPEB    3
      SSTYPEC    3   SSTYPED    3   SSTYPEE    3   SSTYPEF    3
      SSTYPEG    3   SSTYPEH    3   SSTYPEI    3   SSTYPEJ    3
      SSTYPEK    3   SSTYPEL    3   PRIVATE    3   HITYPEN1   3
      WHONAM1    3   PLNWRKN1   3   PLNPAY11   3   PLNPAY21   3
      PLNPAY31   3   PLNPAY41   3   PLNPAY51   3   PLNPAY61   3
      PLNPAY71   3   HICOSTR1   4   PLNMGD1    3   HDHP1      3
      HSAHRA1    3   MGCHMD1    3   MGPRMD1    3   MGPYMD1    3
      MGPREF1    3   PRRXCOV1   3   PRDNCOV1   3   HITYPEN2   3
      WHONAM2    3   PLNWRKN2   3   PLNPAY12   3   PLNPAY22   3
      PLNPAY32   3   PLNPAY42   3   PLNPAY52   3   PLNPAY62   3
      PLNPAY72   3   HICOSTR2   4   PLNMGD2    3   HDHP2      3
      HSAHRA2    3   MGCHMD2    3   MGPRMD2    3   MGPYMD2    3
      MGPREF2    3   PRRXCOV2   3   PRDNCOV2   3   PRPLPLUS   3
      SCHIP      3   STDOC1     3   STPCMD1    3   STREF1     3
      OTHPUB     3   STDOC2     3   STPCMD2    3   STREF2     3
      OTHGOV     3   STDOC3     3   STPCMD3    3   STREF3     3
      MILCARE    3   MILSPC1    3   MILSPC2    3   MILSPC3    3
      MILSPC4    3   MILMAN     3   IHS        3   HILAST     3
      HISTOP1    3   HISTOP2    3   HISTOP3    3   HISTOP4    3
      HISTOP5    3   HISTOP6    3   HISTOP7    3   HISTOP8    3
      HISTOP9    3   HISTOP10   3   HISTOP11   3   HISTOP12   3
      HISTOP13   3   HISTOP14   3   HISTOP15   3   HINOTYR    3
      HINOTMYR   3   HCSPFYR    3   FSA        3   HIKINDNA   3
      HIKINDNB   3   HIKINDNC   3   HIKINDND   3   HIKINDNE   3
      HIKINDNF   3   HIKINDNG   3   HIKINDNH   3   HIKINDNI   3
      HIKINDNJ   3   HIKINDNK   3   MCAREPRB   3   MCAIDPRB   3
      SINCOV     3

      /* FSD LENGTHS */

      PLBORN     3   REGIONBR   3   GEOBRTH    3   YRSINUS    3
      CITIZENP   3   HEADST     3   HEADSTV1   3   EDUC1      3
      PMILTRY    3   DOINGLWP   3   WHYNOWKP   3   WRKHRS2    3
      WRKFTALL   3   WRKLYR1    3   WRKMYR     3   ERNYR_P    3
      HIEMPOF    3

      /* FIN LENGTHS */

      FINCINT    3   PSAL       3   PSEINC     3   PSSRR      3
      PSSRRDB    3   PSSRRD     3   PPENS      3   POPENS     3
      PSSI       3   PSSID      3   PTANF      3   POWBEN     3
      PINTRSTR   3   PDIVD      3   PCHLDSP    3   PINCOT     3
      PSSAPL     3   PSDAPL     3   TANFMYR    3   PFSTP      3
      FSTPMYR    3   ELIGPWIC   3   PWIC       3   WIC_FLAG   3 ;

   * INPUT ALL VARIABLES;

   INPUT

      /* IDN LOCATIONS */

      RECTYPE       1 -   2    SRVY_YR       3 -   6
      HHX      $    7 -  12    INTV_QRT     13 -  13
      ASSIGNWK     14 -  15    FMX      $   16 -  17
      FPX      $   18 -  19    WTIA         20 -  25 .1
      WTFA         26 -  31

      /* UCF LOCATIONS */

      REGION       32 -  32    STRAT_P      33 -  35
      PSU_P        36 -  37

      /* HHC LOCATIONS */

      SEX          38 -  38    ORIGIN_I     39 -  39
      ORIGIMPT     40 -  40    HISPAN_I     41 -  42
      HISPIMPT     43 -  43    RACERPI2     44 -  45
      RACEIMP2     46 -  46    MRACRPI2     47 -  48
      MRACBPI2     49 -  50    RACRECI3     51 -  51
      HISCODI3     52 -  52    ERIMPFLG     53 -  53
      NOWAF        54 -  54    RRP          55 -  56
      HHREFLG  $   57 -  57    FRRP         58 -  59
      DOB_M    $   60 -  61    DOB_Y_P  $   62 -  65
      AGE_P        66 -  67    AGE_CHG      68 -  68


      /* FID LOCATIONS */

      FMRPFLG  $   69 -  69    FMREFLG  $   70 -  70
      R_MARITL     71 -  71    FSPOUS2  $   72 -  73
      COHAB1       74 -  74    COHAB2       75 -  75
      FCOHAB3  $   76 -  77    CDCMSTAT     78 -  78
      SIB_DEG      79 -  79    FMOTHER  $   80 -  81
      MOM_DEG      82 -  82    FFATHER  $   83 -  84
      DAD_DEG      85 -  85    PARENTS      86 -  86
      MOM_ED       87 -  88    DAD_ED       89 -  90
      ASTATFLG     91 -  91    CSTATFLG     92 -  92
      QCADULT      93 -  93    QCCHILD      94 -  94


      /* QOL LOCATIONS */

      QOL_FLG      95 -  95

      /* FDB LOCATIONS */

      FDRN_FLG     96 -  96

      /* FHS LOCATIONS */

      PLAPLYLM     97 -  97    PLAPLYUN     98 -  98
      PSPEDEIS     99 -  99    PSPEDEM     100 - 100
      PLAADL      101 - 101    LABATH      102 - 102
      LADRESS     103 - 103    LAEAT       104 - 104
      LABED       105 - 105    LATOILT     106 - 106
      LAHOME      107 - 107    PLAIADL     108 - 108
      PLAWKNOW    109 - 109    PLAWKLIM    110 - 110
      PLAWALK     111 - 111    PLAREMEM    112 - 112
      PLIMANY     113 - 113    LA1AR       114 - 114
      LAHCC1      115 - 115    LAHCC2      116 - 116
      LAHCC3      117 - 117    LAHCC4      118 - 118
      LAHCC5      119 - 119    LAHCC6      120 - 120
      LAHCC7      121 - 121    LAHCC8      122 - 122
      LAHCC9      123 - 123    LAHCC10     124 - 124
      LAHCC11     125 - 125    LAHCC12     126 - 126
      LAHCC13     127 - 127    LAHCC90     128 - 128
      LAHCC91     129 - 129    LCTIME1     130 - 131
      LCUNIT1     132 - 132    LCDURA1     133 - 134
      LCDURB1     135 - 135    LCCHRC1     136 - 136
      LCTIME2     137 - 138    LCUNIT2     139 - 139
      LCDURA2     140 - 141    LCDURB2     142 - 142
      LCCHRC2     143 - 143    LCTIME3     144 - 145
      LCUNIT3     146 - 146    LCDURA3     147 - 148
      LCDURB3     149 - 149    LCCHRC3     150 - 150
      LCTIME4     151 - 152    LCUNIT4     153 - 153
      LCDURA4     154 - 155    LCDURB4     156 - 156
      LCCHRC4     157 - 157    LCTIME5     158 - 159
      LCUNIT5     160 - 160    LCDURA5     161 - 162
      LCDURB5     163 - 163    LCCHRC5     164 - 164
      LCTIME6     165 - 166    LCUNIT6     167 - 167
      LCDURA6     168 - 169    LCDURB6     170 - 170
      LCCHRC6     171 - 171    LCTIME7     172 - 173
      LCUNIT7     174 - 174    LCDURA7     175 - 176
      LCDURB7     177 - 177    LCCHRC7     178 - 178
      LCTIME8     179 - 180    LCUNIT8     181 - 181
      LCDURA8     182 - 183    LCDURB8     184 - 184
      LCCHRC8     185 - 185    LCTIME9     186 - 187
      LCUNIT9     188 - 188    LCDURA9     189 - 190
      LCDURB9     191 - 191    LCCHRC9     192 - 192
      LCTIME10    193 - 194    LCUNIT10    195 - 195
      LCDURA10    196 - 197    LCDURB10    198 - 198
      LCCHRC10    199 - 199    LCTIME11    200 - 201
      LCUNIT11    202 - 202    LCDURA11    203 - 204
      LCDURB11    205 - 205    LCCHRC11    206 - 206
      LCTIME12    207 - 208    LCUNIT12    209 - 209
      LCDURA12    210 - 211    LCDURB12    212 - 212
      LCCHRC12    213 - 213    LCTIME13    214 - 215
      LCUNIT13    216 - 216    LCDURA13    217 - 218
      LCDURB13    219 - 219    LCCHRC13    220 - 220
      LCTIME90    221 - 222    LCUNIT90    223 - 223
      LCDURA90    224 - 225    LCDURB90    226 - 226
      LCCHRC90    227 - 227    LCTIME91    228 - 229
      LCUNIT91    230 - 230    LCDURA91    231 - 232
      LCDURB91    233 - 233    LCCHRC91    234 - 234
      LAHCA1      235 - 235    LAHCA2      236 - 236
      LAHCA3      237 - 237    LAHCA4      238 - 238
      LAHCA5      239 - 239    LAHCA6      240 - 240
      LAHCA7      241 - 241    LAHCA8      242 - 242
      LAHCA9      243 - 243    LAHCA10     244 - 244
      LAHCA11     245 - 245    LAHCA12     246 - 246
      LAHCA13     247 - 247    LAHCA14     248 - 248
      LAHCA15     249 - 249    LAHCA16     250 - 250
      LAHCA17     251 - 251    LAHCA18     252 - 252
      LAHCA19_    253 - 253    LAHCA20_    254 - 254
      LAHCA21_    255 - 255    LAHCA22_    256 - 256
      LAHCA23_    257 - 257    LAHCA24_    258 - 258
      LAHCA25_    259 - 259    LAHCA26_    260 - 260
      LAHCA27_    261 - 261    LAHCA28_    262 - 262
      LAHCA29_    263 - 263    LAHCA30_    264 - 264
      LAHCA31_    265 - 265    LAHCA32_    266 - 266
      LAHCA33_    267 - 267    LAHCA34_    268 - 268
      LAHCA90     269 - 269    LAHCA91     270 - 270
      LATIME1     271 - 272    LAUNIT1     273 - 273
      LADURA1     274 - 275    LADURB1     276 - 276
      LACHRC1     277 - 277    LATIME2     278 - 279
      LAUNIT2     280 - 280    LADURA2     281 - 282
      LADURB2     283 - 283    LACHRC2     284 - 284
      LATIME3     285 - 286    LAUNIT3     287 - 287
      LADURA3     288 - 289    LADURB3     290 - 290
      LACHRC3     291 - 291    LATIME4     292 - 293
      LAUNIT4     294 - 294    LADURA4     295 - 296
      LADURB4     297 - 297    LACHRC4     298 - 298
      LATIME5     299 - 300    LAUNIT5     301 - 301
      LADURA5     302 - 303    LADURB5     304 - 304
      LACHRC5     305 - 305    LATIME6     306 - 307
      LAUNIT6     308 - 308    LADURA6     309 - 310
      LADURB6     311 - 311    LACHRC6     312 - 312
      LATIME7     313 - 314    LAUNIT7     315 - 315
      LADURA7     316 - 317    LADURB7     318 - 318
      LACHRC7     319 - 319    LATIME8     320 - 321
      LAUNIT8     322 - 322    LADURA8     323 - 324
      LADURB8     325 - 325    LACHRC8     326 - 326
      LATIME9     327 - 328    LAUNIT9     329 - 329
      LADURA9     330 - 331    LADURB9     332 - 332
      LACHRC9     333 - 333    LATIME10    334 - 335
      LAUNIT10    336 - 336    LADURA10    337 - 338
      LADURB10    339 - 339    LACHRC10    340 - 340
      LATIME11    341 - 342    LAUNIT11    343 - 343
      LADURA11    344 - 345    LADURB11    346 - 346
      LACHRC11    347 - 347    LATIME12    348 - 349
      LAUNIT12    350 - 350    LADURA12    351 - 352
      LADURB12    353 - 353    LACHRC12    354 - 354
      LATIME13    355 - 356    LAUNIT13    357 - 357
      LADURA13    358 - 359    LADURB13    360 - 360
      LACHRC13    361 - 361    LATIME14    362 - 363
      LAUNIT14    364 - 364    LADURA14    365 - 366
      LADURB14    367 - 367    LACHRC14    368 - 368
      LATIME15    369 - 370    LAUNIT15    371 - 371
      LADURA15    372 - 373    LADURB15    374 - 374
      LACHRC15    375 - 375    LATIME16    376 - 377
      LAUNIT16    378 - 378    LADURA16    379 - 380
      LADURB16    381 - 381    LACHRC16    382 - 382
      LATIME17    383 - 384    LAUNIT17    385 - 385
      LADURA17    386 - 387    LADURB17    388 - 388
      LACHRC17    389 - 389    LATIME18    390 - 391
      LAUNIT18    392 - 392    LADURA18    393 - 394
      LADURB18    395 - 395    LACHRC18    396 - 396
      LATIME19    397 - 398    LAUNIT19    399 - 399
      LADURA19    400 - 401    LADURB19    402 - 402
      LACHRC19    403 - 403    LATIME20    404 - 405
      LAUNIT20    406 - 406    LADURA20    407 - 408
      LADURB20    409 - 409    LACHRC20    410 - 410
      LATIME21    411 - 412    LAUNIT21    413 - 413
      LADURA21    414 - 415    LADURB21    416 - 416
      LACHRC21    417 - 417    LATIME22    418 - 419
      LAUNIT22    420 - 420    LADURA22    421 - 422
      LADURB22    423 - 423    LACHRC22    424 - 424
      LATIME23    425 - 426    LAUNIT23    427 - 427
      LADURA23    428 - 429    LADURB23    430 - 430
      LACHRC23    431 - 431    LATIME24    432 - 433
      LAUNIT24    434 - 434    LADURA24    435 - 436
      LADURB24    437 - 437    LACHRC24    438 - 438
      LATIME25    439 - 440    LAUNIT25    441 - 441
      LADURA25    442 - 443    LADURB25    444 - 444
      LACHRC25    445 - 445    LATIME26    446 - 447
      LAUNIT26    448 - 448    LADURA26    449 - 450
      LADURB26    451 - 451    LACHRC26    452 - 452
      LATIME27    453 - 454    LAUNIT27    455 - 455
      LADURA27    456 - 457    LADURB27    458 - 458
      LACHRC27    459 - 459    LATIME28    460 - 461
      LAUNIT28    462 - 462    LADURA28    463 - 464
      LADURB28    465 - 465    LACHRC28    466 - 466
      LATIME29    467 - 468    LAUNIT29    469 - 469
      LADURA29    470 - 471    LADURB29    472 - 472
      LACHRC29    473 - 473    LATIME30    474 - 475
      LAUNIT30    476 - 476    LADURA30    477 - 478
      LADURB30    479 - 479    LACHRC30    480 - 480
      LATIME31    481 - 482    LAUNIT31    483 - 483
      LADURA31    484 - 485    LADURB31    486 - 486
      LACHRC31    487 - 487    LATIME32    488 - 489
      LAUNIT32    490 - 490    LADURA32    491 - 492
      LADURB32    493 - 493    LACHRC32    494 - 494
      LATIME33    495 - 496    LAUNIT33    497 - 497
      LADURA33    498 - 499    LADURB33    500 - 500
      LACHRC33    501 - 501    LATIME34    502 - 503
      LAUNIT34    504 - 504    LADURA34    505 - 506
      LADURB34    507 - 507    LACHRC34    508 - 508
      LATIME90    509 - 510    LAUNIT90    511 - 511
      LADURA90    512 - 513    LADURB90    514 - 514
      LACHRC90    515 - 515    LATIME91    516 - 517
      LAUNIT91    518 - 518    LADURA91    519 - 520
      LADURB91    521 - 521    LACHRC91    522 - 522
      LCONDRT     523 - 523    LACHRONR    524 - 524
      PHSTAT      525 - 525

      /* FAU LOCATIONS */

      PDMED12M    526 - 526    PNMED12M    527 - 527
      PHOSPYR2    528 - 528    HOSPNO      529 - 531
      HPNITE      532 - 534    PHCHM2W     535 - 535
      PHCHMN2W    536 - 537    PHCPH2WR    538 - 538
      PHCPHN2W    539 - 540    PHCDV2W     541 - 541
      PHCDVN2W    542 - 543    P10DVYR     544 - 544


      /* FHI LOCATIONS */

      NOTCOV      545 - 545    MEDICARE    546 - 546
      MCPART      547 - 547    MCCHOICE    548 - 548
      MCHMO       549 - 549    MCADVR      550 - 550
      MCPREM      551 - 551    MCREF       552 - 552
      MCPARTD     553 - 553    MEDICAID    554 - 554
      MACHMD      555 - 555    MAPCMD      556 - 556
      MAREF       557 - 557    SINGLE      558 - 558
      SSTYPEA     559 - 559    SSTYPEB     560 - 560
      SSTYPEC     561 - 561    SSTYPED     562 - 562
      SSTYPEE     563 - 563    SSTYPEF     564 - 564
      SSTYPEG     565 - 565    SSTYPEH     566 - 566
      SSTYPEI     567 - 567    SSTYPEJ     568 - 568
      SSTYPEK     569 - 569    SSTYPEL     570 - 570
      PRIVATE     571 - 571    HITYPEN1    572 - 572
      WHONAM1     573 - 573    PLNWRKN1    574 - 575
      PLNPAY11    576 - 576    PLNPAY21    577 - 577
      PLNPAY31    578 - 578    PLNPAY41    579 - 579
      PLNPAY51    580 - 580    PLNPAY61    581 - 581
      PLNPAY71    582 - 582    HICOSTR1    583 - 587
      PLNMGD1     588 - 588    HDHP1       589 - 589
      HSAHRA1     590 - 590    MGCHMD1     591 - 591
      MGPRMD1     592 - 592    MGPYMD1     593 - 593
      MGPREF1     594 - 594    PRRXCOV1    595 - 595
      PRDNCOV1    596 - 596    HITYPEN2    597 - 597
      WHONAM2     598 - 598    PLNWRKN2    599 - 600
      PLNPAY12    601 - 601    PLNPAY22    602 - 602
      PLNPAY32    603 - 603    PLNPAY42    604 - 604
      PLNPAY52    605 - 605    PLNPAY62    606 - 606
      PLNPAY72    607 - 607    HICOSTR2    608 - 612
      PLNMGD2     613 - 613    HDHP2       614 - 614
      HSAHRA2     615 - 615    MGCHMD2     616 - 616
      MGPRMD2     617 - 617    MGPYMD2     618 - 618
      MGPREF2     619 - 619    PRRXCOV2    620 - 620
      PRDNCOV2    621 - 621    PRPLPLUS    622 - 622
      SCHIP       623 - 623    STDOC1      624 - 624
      STPCMD1     625 - 625    STREF1      626 - 626
      OTHPUB      627 - 627    STDOC2      628 - 628
      STPCMD2     629 - 629    STREF2      630 - 630
      OTHGOV      631 - 631    STDOC3      632 - 632
      STPCMD3     633 - 633    STREF3      634 - 634
      MILCARE     635 - 635    MILSPC1     636 - 636
      MILSPC2     637 - 637    MILSPC3     638 - 638
      MILSPC4     639 - 639    MILMAN      640 - 640
      IHS         641 - 641    HILAST      642 - 642
      HISTOP1     643 - 643    HISTOP2     644 - 644
      HISTOP3     645 - 645    HISTOP4     646 - 646
      HISTOP5     647 - 647    HISTOP6     648 - 648
      HISTOP7     649 - 649    HISTOP8     650 - 650
      HISTOP9     651 - 651    HISTOP10    652 - 652
      HISTOP11    653 - 653    HISTOP12    654 - 654
      HISTOP13    655 - 655    HISTOP14    656 - 656
      HISTOP15    657 - 657    HINOTYR     658 - 658
      HINOTMYR    659 - 660    HCSPFYR     661 - 661
      FSA         662 - 662    HIKINDNA    663 - 663
      HIKINDNB    664 - 664    HIKINDNC    665 - 665
      HIKINDND    666 - 666    HIKINDNE    667 - 667
      HIKINDNF    668 - 668    HIKINDNG    669 - 669
      HIKINDNH    670 - 670    HIKINDNI    671 - 671
      HIKINDNJ    672 - 672    HIKINDNK    673 - 673
      MCAREPRB    674 - 674    MCAIDPRB    675 - 675
      SINCOV      676 - 676

      /* FSD LOCATIONS */

      PLBORN      677 - 677    REGIONBR    678 - 679
      GEOBRTH     680 - 680    YRSINUS     681 - 681
      CITIZENP    682 - 682    HEADST      683 - 683
      HEADSTV1    684 - 684    EDUC1       685 - 686
      PMILTRY     687 - 687    DOINGLWP    688 - 688
      WHYNOWKP    689 - 690    WRKHRS2     691 - 692
      WRKFTALL    693 - 693    WRKLYR1     694 - 694
      WRKMYR      695 - 696    ERNYR_P     697 - 698
      HIEMPOF     699 - 699

      /* FIN LOCATIONS */

      FINCINT     700 - 700    PSAL        701 - 701
      PSEINC      702 - 702    PSSRR       703 - 703
      PSSRRDB     704 - 704    PSSRRD      705 - 705
      PPENS       706 - 706    POPENS      707 - 707
      PSSI        708 - 708    PSSID       709 - 709
      PTANF       710 - 710    POWBEN      711 - 711
      PINTRSTR    712 - 712    PDIVD       713 - 713
      PCHLDSP     714 - 714    PINCOT      715 - 715
      PSSAPL      716 - 716    PSDAPL      717 - 717
      TANFMYR     718 - 719    PFSTP       720 - 720
      FSTPMYR     721 - 722    ELIGPWIC    723 - 723
      PWIC        724 - 724    WIC_FLAG    725 - 725
;

   * DEFINE VARIABLE LABELS;

   LABEL

      /* IDN LABELS */

      RECTYPE    ="File type identifier"
      SRVY_YR    ="Year of National Health Interview Survey"
      HHX        ="Household Number"
      INTV_QRT   ="Interview Quarter"
      ASSIGNWK   ="Assignment Week"
      FMX        ="Family Number"
      FPX        ="Person Number (Within family)"
      WTIA       ="Weight - Interim Annual"
      WTFA       ="Weight - Final Annual"

      /* UCF LABELS */

      REGION     ="Region"
      STRAT_P    ="Pseudo-stratum for public-use file variance estimation"
      PSU_P      ="Pseudo-PSU for public-use file variance estimation"

      /* HHC LABELS */

      SEX        ="Sex"
      ORIGIN_I   ="Hispanic Ethnicity"
      ORIGIMPT   ="Hispanic Origin Imputation Flag"
      HISPAN_I   ="Hispanic subgroup detail"
      HISPIMPT   ="Type of Hispanic Origin Imputation Flag"
      RACERPI2   ="OMB groups w/multiple race"
      RACEIMP2   ="Race Imputation Flag"
      MRACRPI2   ="Race coded to single/multiple race group"
      MRACBPI2   ="Race coded to single/multiple race group"
      RACRECI3   ="Race Recode"
      HISCODI3   ="Race/ethnicity recode"
      ERIMPFLG   ="Ethnicity/Race Imputation Flag"
      NOWAF      ="Armed Forces Status"
      RRP        ="Relationship to the HH reference person"
      HHREFLG    ="HH Reference Person Flag"
      FRRP       ="Relationship to family ref. Person"
      DOB_M      ="Month of Birth"
      DOB_Y_P    ="Year of Birth"
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
      SIB_DEG    ="Degree of sib rel to HH ref person"
      FMOTHER    ="Person # of mother"
      MOM_DEG    ="Type of relationship with Mother"
      FFATHER    ="Person # of father"
      DAD_DEG    ="Type of relationship with Father"
      PARENTS    ="Parent(s) present in the family"
      MOM_ED     ="Education of Mother"
      DAD_ED     ="Education of Father"
      ASTATFLG   ="Sample Adult Flag"
      CSTATFLG   ="Sample Child Flag"
      QCADULT    ="Quality control flag for sample adult"
      QCCHILD    ="Quality control flag for sample child"

      /* QOL LABELS */

      QOL_FLG    ="Quality of life flag"

      /* FDB LABELS */

      FDRN_FLG   ="Disability Questions Tests flag"

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
      LAHCC7     ="Mental retardation causes limitation"
      LAHCC8     =
"Other developmental problem (e.g., cerebral palsy) causes limitation"
      LAHCC9     =
"Other mental, emotional, or behavioral problem causes limitation"
      LAHCC10    ="Bone, joint, or muscle problem causes limitation"
      LAHCC11    ="Epilepsy or seizures cause limitation"
      LAHCC12    ="Learning disability causes  limitation"
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
      LCTIME7    ="Duration of mental retardation: Number of units"
      LCUNIT7    ="Duration of mental retardation: Time unit"
      LCDURA7    ="Duration of mental retardation (in years)"
      LCDURB7    ="Duration of mental retardation recode 2"
      LCCHRC7    ="Mental retardation condition status"
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
      LAHCA14    ="Mental retardation causes limitation"
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
      LATIME9    ="Duration of hypertension/high blood pressure: Number of units
"
      LAUNIT9    ="Duration of hypertension/high blood pressure: Time unit"
      LADURA9    ="Duration of hypertension/high blood pressure (in years)"
      LADURB9    ="Duration of hypertension/high blood pressure recode 2"
      LACHRC9    ="Hypertension/high blood pressure condition status"
      LATIME10   ="Duration of diabetes: Number of units"
      LAUNIT10   ="Duration of diabetes: Time unit"
      LADURA10   ="Duration of diabetes (in years)"
      LADURB10   ="Duration of diabetes recode 2"
      LACHRC10   ="Diabetes condition status"
      LATIME11   =
"Duration of lung/breathing problem (e.g., asthma and emphysema): Number of unit
s"
      LAUNIT11   =
"Duration of lung/breathing problem(e.g., asthma and emphysema): Time unit"
      LADURA11   =
"Duration of lung/breathing problem (e.g., asthma and emphysema) (in years)"
      LADURB11   =
"Duration of lung/breathing problem (e.g., asthma and emphysema) recode 2"
      LACHRC11   =
"Lung/breathing problem (e.g., asthma and emphysema) condition status"
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
      LATIME14   ="Duration of mental retardation: Number of units"
      LAUNIT14   ="Duration of mental retardation: Time unit"
      LADURA14   ="Duration of mental retardation (in years)"
      LADURB14   ="Duration of mental retardation recode 2"
      LACHRC14   ="Mental retardation condition status"
      LATIME15   =
"Duration of other developmental problem (e.g. cerebral palsy): Number of units"
      LAUNIT15   =
"Duration of other developmental problem(e.g. cerebral palsy): Time unit"
      LADURA15   =
"Duration of other developmental problem (e.g. cerebral palsy) (in years)"
      LADURB15   =
"Duration of other developmental problem (e.g. cerebral palsy) recode 2"
      LACHRC15   =
"Other developmental problem (e.g. cerebral palsy) condition status"
      LATIME16   ="Duration of senility: Number of units"
      LAUNIT16   ="Duration of senility: Time unit"
      LADURA16   ="Duration of senility (in years)"
      LADURB16   ="Duration of senility recode 2"
      LACHRC16   ="Senility condition status"
      LATIME17   =
"Duration of depression/anxiety/emotional problem: Number of units"
      LAUNIT17   ="Duration of depression/anxiety/emotional problem: Time unit"
      LADURA17   ="Duration of depression/anxiety/emotional problem (in years)"
      LADURB17   ="Duration of depression/anxiety/emotional problem recode 2"
      LACHRC17   ="Depression/anxiety/emotional problem condition status"
      LATIME18   ="Duration of weight problem: Number of units"
      LAUNIT18   ="Duration of weight problem: Time unit"
      LADURA18   ="Duration of weight problem (in years)"
      LADURB18   ="Duration of weight problem recode 2"
      LACHRC18   ="Weight problem condition status"
      LATIME19   =
"Duration of missing limbs (fingers, toes, or digits); amputation: Number of uni
ts"
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

      PDMED12M   ="Was medical care delayed for - - (cost), 12m"
      PNMED12M   ="Did - - need and NOT get medical care (cost), 12m"
      PHOSPYR2   ="Was - - in a hospital OVERNIGHT, 12m"
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
      MEDICARE   ="Medicare coverage recode"
      MCPART     ="Type of Medicare coverage"
      MCCHOICE   ="Enrolled in Medicare Advantage Plan"
      MCHMO      ="Is - - signed up with an HMO"
      MCADVR     ="Medicare Advantage Plan"
      MCPREM     ="Premium for Medicare Advantage/Medicare HMO"
      MCREF      ="Need a referral for special care"
      MCPARTD    ="Medicare Part D"
      MEDICAID   ="Medicaid coverage recode"
      MACHMD     ="Any doc, chooses from a list, doc assigned"
      MAPCMD     ="Primary care physician for routine care"
      MAREF      ="Need a referral for special care"
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
      HITYPEN1   ="Name of plan (Plan 1)"
      WHONAM1    ="Plan in whose name (Plan 1)"
      PLNWRKN1   ="How plan was originally obtained (plan 1)"
      PLNPAY11   ="Paid for by self or family (Plan 1)"
      PLNPAY21   ="Paid for by employer or union (Plan 1)"
      PLNPAY31   ="Paid for by someone outside the household (Plan 1)"
      PLNPAY41   ="Paid for by Medicare (Plan 1)"
      PLNPAY51   ="Paid for by Medicaid (Plan 1)"
      PLNPAY61   ="Paid for by CHIP (Plan 1)"
      PLNPAY71   ="Paid for by government program (Plan 1)"
      HICOSTR1   ="Out-of-pocket premium cost (Plan 1)"
      PLNMGD1    ="Type of private plan (Plan 1)"
      HDHP1      ="High deductible health plan (plan 1)"
      HSAHRA1    =
"Health Savings Accounts/Health Reimbursement Accounts (plan 1)"
      MGCHMD1    ="Doctor choice (Plan 1)"
      MGPRMD1    ="Preferred list (Plan 1)"
      MGPYMD1    ="Out of plan use (Plan 1)"
      MGPREF1    ="Private referral (Plan 1)"
      PRRXCOV1   ="Prescription drug benefit (Plan 1)"
      PRDNCOV1   ="Dental Coverage (Plan 1)"
      HITYPEN2   ="Name of plan (Plan 2)"
      WHONAM2    ="Plan in whose name (Plan 2)"
      PLNWRKN2   ="How plan was originally obtained (Plan 2)"
      PLNPAY12   ="Paid for by self or family (Plan 2)"
      PLNPAY22   ="Paid for by employer or union (Plan 2)"
      PLNPAY32   ="Paid for by someone outside the household (Plan 2)"
      PLNPAY42   ="Paid for by Medicare (Plan 2)"
      PLNPAY52   ="Paid for by Medicaid (Plan 2)"
      PLNPAY62   ="Paid for by CHIP (Plan 2)"
      PLNPAY72   ="Paid for by government program (Plan 2)"
      HICOSTR2   ="Out-of-pocket premium cost (Plan 2)"
      PLNMGD2    ="Type of private plan (plan 2)"
      HDHP2      ="High deductible health plan (plan 2)"
      HSAHRA2    =
"Health Savings Accounts/Health Reimbursement Accounts (plan 2)"
      MGCHMD2    ="Doctor choice (Plan 2)"
      MGPRMD2    ="Preferred list (Plan 2)"
      MGPYMD2    ="Out of plan use (Plan 2)"
      MGPREF2    ="Private referral (Plan 2)"
      PRRXCOV2   ="Prescription drug benefit (Plan 2)"
      PRDNCOV2   ="Dental Coverage (Plan 2)"
      PRPLPLUS   ="Person has more than two private plans"
      SCHIP      ="SCHIP coverage recode"
      STDOC1     ="Any doc, chooses from a list, doc assigned (SCHIP)"
      STPCMD1    ="Primary care physician for routine care (SCHIP)"
      STREF1     ="Need a referral for special care (SCHIP)"
      OTHPUB     ="State-sponsored health plan recode"
      STDOC2     ="Any doc, chooses from a list, doc assigned (OTHPUB)"
      STPCMD2    ="Primary care physician for routine care (OTHPUB)"
      STREF2     ="Need a referral for special care (OTHPUB)"
      OTHGOV     ="Other government program recode"
      STDOC3     ="Any doc, chooses from a list, doc assigned (OTHGOV)"
      STPCMD3    ="Primary care physician for routine care (OTHGOV)"
      STREF3     ="Need a referral for special care (OTHGOV)"
      MILCARE    ="Military health care coverage recode"
      MILSPC1    ="TRICARE coverage"
      MILSPC2    ="VA coverage"
      MILSPC3    ="CHAMP-VA coverage"
      MILSPC4    ="Other military coverage"
      MILMAN     ="Type of TRICARE coverage"
      IHS        ="Indian Health Service recode"
      HILAST     ="How long since last had health coverage"
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
      HCSPFYR    ="Amount family spent for medical care"
      FSA        ="Flexible Spending Accounts"
      HIKINDNA   ="Private health insurance"
      HIKINDNB   ="Medicare"
      HIKINDNC   ="Medi-Gap"
      HIKINDND   ="Medicaid"
      HIKINDNE   ="SCHIP"
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
      PMILTRY    ="Did - - receive honorable discharge"
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
      PSAL       ="Receive income from wages or salary (last CY)"
      PSEINC     ="Receive income from self-employment (last CY)"
      PSSRR      =
"Receive income from Social Security or Railroad Retirement (last CY)"
      PSSRRDB    =
"Receive Social Security or Railroad Retirement income as a disability benefit"
      PSSRRD     ="Received benefit due to disability"
      PPENS      ="Receive income from other disability pensions"
      POPENS     ="Receive income from any other pension"
      PSSI       ="Received income from SSI"
      PSSID      ="Received SSI due to disability"
      PTANF      =
"Received income from a state or county welfare program (e.g., TANF)"
      POWBEN     ="Received other government assistance"
      PINTRSTR   ="Receive interest income"
      PDIVD      ="Receive dividends from stocks, funds, etc."
      PCHLDSP    ="Receive income from child support"
      PINCOT     ="Received income from any other source"
      PSSAPL     ="Ever applied for Supplemental Security Income (SSI)"
      PSDAPL     ="Ever applied for Social Security Disability Insurance (SSDI)"
      TANFMYR    ="Months received welfare/TANF (last CY)"
      PFSTP      ="Person authorized to receive food stamps (last CY)"
      FSTPMYR    ="Months received food stamps (last CY)"
      ELIGPWIC   ="Anyone age-eligible for the WIC program?"
      PWIC       ="Received WIC benefits"
      WIC_FLAG   ="WIC recipient age-eligible"
   ;

   * ASSOCIATE VARIABLES WITH FORMAT VALUES;
   *    (PUT ASTERISK (*) BEFORE WORD "FORMAT"
        IN NEXT STATEMENT TO PREVENT FORMAT
        ASSOCIATIONS BEING STORED WITH DATA SET);
   FORMAT

      /* IDN FORMAT ASSOCIATIONS */

      RECTYPE   PEP001X.   SRVY_YR   PEP002X.   HHX       $GROUPC.
      INTV_QRT  PEP004X.   ASSIGNWK  PEP005X.   WTIA      GROUPN.
      WTFA      GROUPN.

      /* UCF FORMAT ASSOCIATIONS */

      REGION    PEP010X.

      /* HHC FORMAT ASSOCIATIONS */

      SEX       PEP013X.   ORIGIN_I  PEP014X.   ORIGIMPT  PEP015X.
      HISPAN_I  PEP016X.   HISPIMPT  PEP017X.   RACERPI2  PEP018X.
      RACEIMP2  PEP019X.   MRACRPI2  PEP020X.   MRACBPI2  PEP021X.
      RACRECI3  PEP022X.   HISCODI3  PEP023X.   ERIMPFLG  PEP024X.
      NOWAF     PEP025X.   RRP       PEP026X.   HHREFLG   $PEP027X.
      FRRP      PEP028X.   DOB_M     $PEP029X.  DOB_Y_P   $PEP030X.
      AGE_P     PEP031X.   AGE_CHG   PEP032X.

      /* FID FORMAT ASSOCIATIONS */

      FMRPFLG   $PEP033X.  FMREFLG   $PEP034X.  R_MARITL  PEP035X.
      FSPOUS2   $PEP036X.  COHAB1    PEP037X.   COHAB2    PEP038X.
      CDCMSTAT  PEP040X.   SIB_DEG   PEP041X.   FMOTHER   $PEP042X.
      MOM_DEG   PEP043X.   FFATHER   $PEP044X.  DAD_DEG   PEP043X.
      PARENTS   PEP046X.   MOM_ED    PEP047X.   DAD_ED    PEP047X.
      ASTATFLG  PEP049X.   CSTATFLG  PEP050X.   QCADULT   PEP051X.
      QCCHILD   PEP052X.

      /* QOL FORMAT ASSOCIATIONS */

      QOL_FLG   PEP053X.

      /* FDB FORMAT ASSOCIATIONS */

      FDRN_FLG  PEP054X.

      /* FHS FORMAT ASSOCIATIONS */

      PLAPLYLM  PEP037X.   PLAPLYUN  PEP037X.   PSPEDEIS  PEP037X.
      PSPEDEM   PEP037X.   PLAADL    PEP037X.   LABATH    PEP037X.
      LADRESS   PEP037X.   LAEAT     PEP037X.   LABED     PEP037X.
      LATOILT   PEP037X.   LAHOME    PEP037X.   PLAIADL   PEP037X.
      PLAWKNOW  PEP037X.   PLAWKLIM  PEP068X.   PLAWALK   PEP037X.
      PLAREMEM  PEP037X.   PLIMANY   PEP071X.   LA1AR     PEP072X.
      LAHCC1    PEP073X.   LAHCC2    PEP073X.   LAHCC3    PEP073X.
      LAHCC4    PEP073X.   LAHCC5    PEP073X.   LAHCC6    PEP073X.
      LAHCC7    PEP073X.   LAHCC8    PEP073X.   LAHCC9    PEP073X.
      LAHCC10   PEP073X.   LAHCC11   PEP073X.   LAHCC12   PEP073X.
      LAHCC13   PEP073X.   LAHCC90   PEP073X.   LAHCC91   PEP073X.
      LCTIME1   PEP088X.   LCUNIT1   PEP089X.   LCDURA1   PEP090X.
      LCDURB1   PEP091X.   LCCHRC1   PEP092X.   LCTIME2   PEP088X.
      LCUNIT2   PEP089X.   LCDURA2   PEP090X.   LCDURB2   PEP091X.
      LCCHRC2   PEP092X.   LCTIME3   PEP088X.   LCUNIT3   PEP089X.
      LCDURA3   PEP090X.   LCDURB3   PEP091X.   LCCHRC3   PEP092X.
      LCTIME4   PEP088X.   LCUNIT4   PEP089X.   LCDURA4   PEP090X.
      LCDURB4   PEP091X.   LCCHRC4   PEP092X.   LCTIME5   PEP088X.
      LCUNIT5   PEP089X.   LCDURA5   PEP090X.   LCDURB5   PEP091X.
      LCCHRC5   PEP092X.   LCTIME6   PEP088X.   LCUNIT6   PEP089X.
      LCDURA6   PEP090X.   LCDURB6   PEP091X.   LCCHRC6   PEP092X.
      LCTIME7   PEP088X.   LCUNIT7   PEP089X.   LCDURA7   PEP090X.
      LCDURB7   PEP091X.   LCCHRC7   PEP092X.   LCTIME8   PEP088X.
      LCUNIT8   PEP089X.   LCDURA8   PEP090X.   LCDURB8   PEP091X.
      LCCHRC8   PEP092X.   LCTIME9   PEP088X.   LCUNIT9   PEP089X.
      LCDURA9   PEP090X.   LCDURB9   PEP091X.   LCCHRC9   PEP092X.
      LCTIME10  PEP088X.   LCUNIT10  PEP089X.   LCDURA10  PEP090X.
      LCDURB10  PEP091X.   LCCHRC10  PEP092X.   LCTIME11  PEP088X.
      LCUNIT11  PEP089X.   LCDURA11  PEP090X.   LCDURB11  PEP091X.
      LCCHRC11  PEP092X.   LCTIME12  PEP088X.   LCUNIT12  PEP089X.
      LCDURA12  PEP090X.   LCDURB12  PEP091X.   LCCHRC12  PEP092X.
      LCTIME13  PEP088X.   LCUNIT13  PEP089X.   LCDURA13  PEP090X.
      LCDURB13  PEP091X.   LCCHRC13  PEP092X.   LCTIME90  PEP088X.
      LCUNIT90  PEP089X.   LCDURA90  PEP090X.   LCDURB90  PEP091X.
      LCCHRC90  PEP092X.   LCTIME91  PEP088X.   LCUNIT91  PEP089X.
      LCDURA91  PEP090X.   LCDURB91  PEP091X.   LCCHRC91  PEP092X.
      LAHCA1    PEP073X.   LAHCA2    PEP073X.   LAHCA3    PEP073X.
      LAHCA4    PEP073X.   LAHCA5    PEP073X.   LAHCA6    PEP073X.
      LAHCA7    PEP073X.   LAHCA8    PEP073X.   LAHCA9    PEP073X.
      LAHCA10   PEP073X.   LAHCA11   PEP073X.   LAHCA12   PEP073X.
      LAHCA13   PEP073X.   LAHCA14   PEP073X.   LAHCA15   PEP073X.
      LAHCA16   PEP073X.   LAHCA17   PEP073X.   LAHCA18   PEP073X.
      LAHCA19_  PEP073X.   LAHCA20_  PEP073X.   LAHCA21_  PEP073X.
      LAHCA22_  PEP073X.   LAHCA23_  PEP073X.   LAHCA24_  PEP073X.
      LAHCA25_  PEP073X.   LAHCA26_  PEP073X.   LAHCA27_  PEP073X.
      LAHCA28_  PEP073X.   LAHCA29_  PEP073X.   LAHCA30_  PEP073X.
      LAHCA31_  PEP073X.   LAHCA32_  PEP073X.   LAHCA33_  PEP073X.
      LAHCA34_  PEP073X.   LAHCA90   PEP073X.   LAHCA91   PEP073X.
      LATIME1   PEP088X.   LAUNIT1   PEP089X.   LADURA1   PEP201X.
      LADURB1   PEP202X.   LACHRC1   PEP092X.   LATIME2   PEP088X.
      LAUNIT2   PEP089X.   LADURA2   PEP201X.   LADURB2   PEP202X.
      LACHRC2   PEP092X.   LATIME3   PEP088X.   LAUNIT3   PEP089X.
      LADURA3   PEP201X.   LADURB3   PEP202X.   LACHRC3   PEP092X.
      LATIME4   PEP088X.   LAUNIT4   PEP089X.   LADURA4   PEP201X.
      LADURB4   PEP202X.   LACHRC4   PEP092X.   LATIME5   PEP088X.
      LAUNIT5   PEP089X.   LADURA5   PEP201X.   LADURB5   PEP202X.
      LACHRC5   PEP092X.   LATIME6   PEP088X.   LAUNIT6   PEP089X.
      LADURA6   PEP201X.   LADURB6   PEP202X.   LACHRC6   PEP092X.
      LATIME7   PEP088X.   LAUNIT7   PEP089X.   LADURA7   PEP201X.
      LADURB7   PEP202X.   LACHRC7   PEP092X.   LATIME8   PEP088X.
      LAUNIT8   PEP089X.   LADURA8   PEP201X.   LADURB8   PEP202X.
      LACHRC8   PEP092X.   LATIME9   PEP088X.   LAUNIT9   PEP089X.
      LADURA9   PEP201X.   LADURB9   PEP202X.   LACHRC9   PEP092X.
      LATIME10  PEP088X.   LAUNIT10  PEP089X.   LADURA10  PEP201X.
      LADURB10  PEP202X.   LACHRC10  PEP092X.   LATIME11  PEP088X.
      LAUNIT11  PEP089X.   LADURA11  PEP201X.   LADURB11  PEP202X.
      LACHRC11  PEP092X.   LATIME12  PEP088X.   LAUNIT12  PEP089X.
      LADURA12  PEP201X.   LADURB12  PEP202X.   LACHRC12  PEP092X.
      LATIME13  PEP088X.   LAUNIT13  PEP089X.   LADURA13  PEP201X.
      LADURB13  PEP202X.   LACHRC13  PEP092X.   LATIME14  PEP088X.
      LAUNIT14  PEP089X.   LADURA14  PEP201X.   LADURB14  PEP202X.
      LACHRC14  PEP092X.   LATIME15  PEP088X.   LAUNIT15  PEP089X.
      LADURA15  PEP201X.   LADURB15  PEP202X.   LACHRC15  PEP092X.
      LATIME16  PEP088X.   LAUNIT16  PEP089X.   LADURA16  PEP201X.
      LADURB16  PEP202X.   LACHRC16  PEP092X.   LATIME17  PEP088X.
      LAUNIT17  PEP089X.   LADURA17  PEP201X.   LADURB17  PEP202X.
      LACHRC17  PEP092X.   LATIME18  PEP088X.   LAUNIT18  PEP089X.
      LADURA18  PEP201X.   LADURB18  PEP202X.   LACHRC18  PEP092X.
      LATIME19  PEP088X.   LAUNIT19  PEP089X.   LADURA19  PEP201X.
      LADURB19  PEP202X.   LACHRC19  PEP092X.   LATIME20  PEP088X.
      LAUNIT20  PEP089X.   LADURA20  PEP201X.   LADURB20  PEP202X.
      LACHRC20  PEP092X.   LATIME21  PEP088X.   LAUNIT21  PEP089X.
      LADURA21  PEP201X.   LADURB21  PEP202X.   LACHRC21  PEP092X.
      LATIME22  PEP088X.   LAUNIT22  PEP089X.   LADURA22  PEP201X.
      LADURB22  PEP202X.   LACHRC22  PEP092X.   LATIME23  PEP088X.
      LAUNIT23  PEP089X.   LADURA23  PEP201X.   LADURB23  PEP202X.
      LACHRC23  PEP092X.   LATIME24  PEP088X.   LAUNIT24  PEP089X.
      LADURA24  PEP201X.   LADURB24  PEP202X.   LACHRC24  PEP092X.
      LATIME25  PEP088X.   LAUNIT25  PEP089X.   LADURA25  PEP201X.
      LADURB25  PEP202X.   LACHRC25  PEP092X.   LATIME26  PEP088X.
      LAUNIT26  PEP089X.   LADURA26  PEP201X.   LADURB26  PEP202X.
      LACHRC26  PEP092X.   LATIME27  PEP088X.   LAUNIT27  PEP089X.
      LADURA27  PEP201X.   LADURB27  PEP202X.   LACHRC27  PEP092X.
      LATIME28  PEP088X.   LAUNIT28  PEP089X.   LADURA28  PEP201X.
      LADURB28  PEP202X.   LACHRC28  PEP092X.   LATIME29  PEP088X.
      LAUNIT29  PEP089X.   LADURA29  PEP201X.   LADURB29  PEP202X.
      LACHRC29  PEP092X.   LATIME30  PEP088X.   LAUNIT30  PEP089X.
      LADURA30  PEP201X.   LADURB30  PEP202X.   LACHRC30  PEP092X.
      LATIME31  PEP088X.   LAUNIT31  PEP089X.   LADURA31  PEP201X.
      LADURB31  PEP202X.   LACHRC31  PEP092X.   LATIME32  PEP088X.
      LAUNIT32  PEP089X.   LADURA32  PEP201X.   LADURB32  PEP202X.
      LACHRC32  PEP092X.   LATIME33  PEP088X.   LAUNIT33  PEP089X.
      LADURA33  PEP201X.   LADURB33  PEP202X.   LACHRC33  PEP092X.
      LATIME34  PEP088X.   LAUNIT34  PEP089X.   LADURA34  PEP201X.
      LADURB34  PEP202X.   LACHRC34  PEP092X.   LATIME90  PEP088X.
      LAUNIT90  PEP089X.   LADURA90  PEP201X.   LADURB90  PEP202X.
      LACHRC90  PEP092X.   LATIME91  PEP088X.   LAUNIT91  PEP089X.
      LADURA91  PEP201X.   LADURB91  PEP202X.   LACHRC91  PEP092X.
      LCONDRT   PEP379X.   LACHRONR  PEP380X.   PHSTAT    PEP381X.

      /* FAU FORMAT ASSOCIATIONS */

      PDMED12M  PEP037X.   PNMED12M  PEP037X.   PHOSPYR2  PEP037X.
      HOSPNO    PEP385X.   HPNITE    PEP385X.   PHCHM2W   PEP037X.
      PHCHMN2W  PEP388X.   PHCPH2WR  PEP037X.   PHCPHN2W  PEP388X.
      PHCDV2W   PEP037X.   PHCDVN2W  PEP388X.   P10DVYR   PEP037X.

      /* FHI FORMAT ASSOCIATIONS */

      NOTCOV    PEP394X.   MEDICARE  PEP395X.   MCPART    PEP396X.
      MCCHOICE  PEP037X.   MCHMO     PEP037X.   MCADVR    PEP399X.
      MCPREM    PEP037X.   MCREF     PEP037X.   MCPARTD   PEP037X.
      MEDICAID  PEP395X.   MACHMD    PEP404X.   MAPCMD    PEP037X.
      MAREF     PEP037X.   SINGLE    PEP407X.   SSTYPEA   PEP073X.
      SSTYPEB   PEP073X.   SSTYPEC   PEP073X.   SSTYPED   PEP073X.
      SSTYPEE   PEP073X.   SSTYPEF   PEP073X.   SSTYPEG   PEP073X.
      SSTYPEH   PEP073X.   SSTYPEI   PEP073X.   SSTYPEJ   PEP073X.
      SSTYPEK   PEP073X.   SSTYPEL   PEP073X.   PRIVATE   PEP395X.
      HITYPEN1  PEP421X.   WHONAM1   PEP422X.   PLNWRKN1  PEP423X.
      PLNPAY11  PEP073X.   PLNPAY21  PEP073X.   PLNPAY31  PEP073X.
      PLNPAY41  PEP073X.   PLNPAY51  PEP073X.   PLNPAY61  PEP073X.
      PLNPAY71  PEP073X.   HICOSTR1  PEP431X.   PLNMGD1   PEP432X.
      HDHP1     PEP433X.   HSAHRA1   PEP037X.   MGCHMD1   PEP435X.
      MGPRMD1   PEP037X.   MGPYMD1   PEP037X.   MGPREF1   PEP037X.
      PRRXCOV1  PEP037X.   PRDNCOV1  PEP037X.   HITYPEN2  PEP421X.
      WHONAM2   PEP422X.   PLNWRKN2  PEP423X.   PLNPAY12  PEP073X.
      PLNPAY22  PEP073X.   PLNPAY32  PEP073X.   PLNPAY42  PEP073X.
      PLNPAY52  PEP073X.   PLNPAY62  PEP073X.   PLNPAY72  PEP073X.
      HICOSTR2  PEP431X.   PLNMGD2   PEP432X.   HDHP2     PEP433X.
      HSAHRA2   PEP037X.   MGCHMD2   PEP435X.   MGPRMD2   PEP037X.
      MGPYMD2   PEP037X.   MGPREF2   PEP037X.   PRRXCOV2  PEP037X.
      PRDNCOV2  PEP037X.   PRPLPLUS  PEP037X.   SCHIP     PEP395X.
      STDOC1    PEP404X.   STPCMD1   PEP037X.   STREF1    PEP037X.
      OTHPUB    PEP395X.   STDOC2    PEP404X.   STPCMD2   PEP037X.
      STREF2    PEP037X.   OTHGOV    PEP395X.   STDOC3    PEP404X.
      STPCMD3   PEP037X.   STREF3    PEP037X.   MILCARE   PEP395X.
      MILSPC1   PEP073X.   MILSPC2   PEP073X.   MILSPC3   PEP073X.
      MILSPC4   PEP073X.   MILMAN    PEP479X.   IHS       PEP037X.
      HILAST    PEP481X.   HISTOP1   PEP073X.   HISTOP2   PEP073X.
      HISTOP3   PEP073X.   HISTOP4   PEP073X.   HISTOP5   PEP073X.
      HISTOP6   PEP073X.   HISTOP7   PEP073X.   HISTOP8   PEP073X.
      HISTOP9   PEP073X.   HISTOP10  PEP073X.   HISTOP11  PEP073X.
      HISTOP12  PEP073X.   HISTOP13  PEP073X.   HISTOP14  PEP073X.
      HISTOP15  PEP073X.   HINOTYR   PEP037X.   HINOTMYR  PEP388X.
      HCSPFYR   PEP499X.   FSA       PEP037X.   HIKINDNA  PEP073X.
      HIKINDNB  PEP073X.   HIKINDNC  PEP073X.   HIKINDND  PEP073X.
      HIKINDNE  PEP073X.   HIKINDNF  PEP073X.   HIKINDNG  PEP073X.
      HIKINDNH  PEP073X.   HIKINDNI  PEP073X.   HIKINDNJ  PEP073X.
      HIKINDNK  PEP073X.   MCAREPRB  PEP037X.   MCAIDPRB  PEP037X.
      SINCOV    PEP037X.

      /* FSD FORMAT ASSOCIATIONS */

      PLBORN    PEP037X.   REGIONBR  PEP516X.   GEOBRTH   PEP517X.
      YRSINUS   PEP518X.   CITIZENP  PEP519X.   HEADST    PEP037X.
      HEADSTV1  PEP037X.   EDUC1     PEP522X.   PMILTRY   PEP037X.
      DOINGLWP  PEP524X.   WHYNOWKP  PEP525X.   WRKHRS2   PEP526X.
      WRKFTALL  PEP037X.   WRKLYR1   PEP037X.   WRKMYR    PEP529X.
      ERNYR_P   PEP530X.   HIEMPOF   PEP037X.

      /* FIN FORMAT ASSOCIATIONS */

      FINCINT   PEP532X.   PSAL      PEP037X.   PSEINC    PEP037X.
      PSSRR     PEP037X.   PSSRRDB   PEP037X.   PSSRRD    PEP037X.
      PPENS     PEP037X.   POPENS    PEP037X.   PSSI      PEP037X.
      PSSID     PEP037X.   PTANF     PEP037X.   POWBEN    PEP037X.
      PINTRSTR  PEP037X.   PDIVD     PEP037X.   PCHLDSP   PEP037X.
      PINCOT    PEP037X.   PSSAPL    PEP037X.   PSDAPL    PEP037X.
      TANFMYR   PEP388X.   PFSTP     PEP037X.   FSTPMYR   PEP388X.
      ELIGPWIC  PEP553X.   PWIC      PEP037X.   WIC_FLAG  PEP555X.;
RUN;

PROC CONTENTS DATA=NHIS.PERSONSX;
   TITLE1 'CONTENTS OF THE 2010 NHIS Person FILE';

PROC FREQ DATA=NHIS.PERSONSX NOTITLE;
   TABLES RECTYPE/LIST MISSING;
   TITLE1 'FREQUENCY REPORT FOR 2010 NHIS Person FILE';
   TITLE2 '(WEIGHTED)';
   WEIGHT WTFA;

PROC FREQ DATA=NHIS.PERSONSX NOTITLE;
   TABLES RECTYPE/LIST MISSING;
   TITLE1 'FREQUENCY REPORT FOR 2010 NHIS Person FILE';
   TITLE2 '(UNWEIGHTED)';

* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
             STATEMENT: FORMAT _ALL_;
RUN;
