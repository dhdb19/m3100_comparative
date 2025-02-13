*********************************************************************
 JUNE 20, 2001  3:05 PM
 
 THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
 FILE FROM THE 1999 NHIS PUBLIC USE HOUSEHLD.DAT ASCII FILE
 
 NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
       PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
       GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
       DOCUMENTATION
 
 THIS IS STORED IN HOUSEHLD.SAS
*********************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;

LIBNAME NHIS    'C:\NHIS1999\';
LIBNAME LIBRARY 'C:\NHIS1999\';

* DEFINE VARIABLE VALUES FOR REPORTS;

PROC FORMAT LIBRARY=LIBRARY;
  VALUE HHP001X
    10              = "Household"
   ;
  VALUE HHP002X
    1999            = "1999"
   ;
  VALUE HHP004X
    1               = "Quarter 1"
    2               = "Quarter 2"
    3               = "Quarter 3"
    4               = "Quarter 4"
   ;
  VALUE HHP005X
    01              = "Week 1"
    02              = "Week 2"
    03              = "Week 3"
    04              = "Week 4"
    05              = "Week 5"
    06              = "Week 6"
    07              = "Week 7"
    08              = "Week 8"
    09              = "Week 9"
    10              = "Week 10"
    11              = "Week 11"
    12              = "Week 12"
    13              = "Week 13"
   ;
  VALUE $HHP006X
    "01"            = "January"
    "02"            = "February"
    "03"            = "March"
    "04"            = "April"
    "05"            = "May"
    "06"            = "June"
    "07"            = "July"
    "08"            = "August"
    "09"            = "September"
    "10"            = "October"
    "11"            = "November"
    "12"            = "December"
    "98"            = "Not ascertained"
   ;
  VALUE HHP008X
    01              = "House, apartment, flat, condo"
    02              = "HU in nontransient hotel, motel"
    03              = "HU-permanent in transient hotel, motel"
    04              = "HU in rooming house"
    05              = "Mobile home/trailer w/no permanent rooms added"
    06              = "Mobile home/trailer w/1+ permanent rooms added"
    07              = "HU not specified above"
    08              = "Quarters not HU in room or board house"
    09              = "Unit not permanent-transient hotel, motel"
    10              = "Unoccupied site for mobile home/trailer/tent"
    11              = "Student quarters in college dormitory"
    12              = "Group quarter unit not specified above"
    98              = "Not ascertained*"
   ;
  VALUE HHP009X
    1               = "Refused"
    2               = "No one home - repeated calls"
    3               = "Temporarily absent"
    4               = "Language problem"
    5               = "Other"
    .               = "<Blank:  Not in Universe>"
   ;
  VALUE HHP010X
    1               = "Gave a telephone number"
    2               = "No telephone service"
    7               = "Refused"
    8               = "Not ascertained"
    9               = "Don't know"
    .               = "<Blank:  Not in Universe>"
   ;
  VALUE HHP011X
    1               = "Yes"
    2               = "No"
    7               = "Refused"
    8               = "Not ascertained"
    9               = "Don't know"
    .               = "<Blank:  Not in Universe>"
   ;
  VALUE HHP013X
    00              = "One week or less"
    01              = "More than one week, up to two weeks"
    02              = "More than two weeks, up to three weeks"
    03 - 51         = "See note below*"
    97              = "Refused"
    98              = "Not ascertained"
    99              = "Don't know"
    .               = "<Blank: Not in universe>"
   ;
  VALUE HHP014X
    1               = "Armed Forces member in HH"
    2               = "No Armed Forces member in HH*"
    .               = "<Blank:  Not in Universe>"
   ;
  VALUE HHP015X
    01 - 30         = "01-30"
    .               = "<Blank:  Not in Universe>"
   ;
  VALUE HHP016X
    00 - 29         = "00-29"
    .               = "<Blank:  Not in Universe>"
   ;
  VALUE HHP020X
    1               = "English"
    2               = "Spanish"
    3               = "English and Spanish"
    4               = "Other"
    8               = "Not ascertained"
    .               = "<Blank:  Not in Universe>"
   ;
  VALUE HHP021X
    1               = "Northeast"
    2               = "Midwest"
    3               = "South"
    4               = "West"
   ;
  VALUE HHP022X
    1               = "5,000,000 or more"
    2               = "2,500,000 - 4,999,999"
    3               = "1,000,000 - 2,499,999"
    4               = "500,000 - 999,999"
    5               = "250,000 - 499,999"
    6               = "Under 250,000"
    7               = "Non-MSA"
   ;

DATA NHIS.HOUSEHLD;
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1999\';
   INFILE 'C:\NHIS1999\HOUSEHLD.DAT' MISSOVER TRUNCOVER LRECL=59;

   * DEFINE LENGTH OF ALL VARIABLES;

   LENGTH
      RECTYPE    3   SRVY_YR    4   HHX      $ 6   INTV_QRT   3
      ASSIGNWK   3   INT_M_P  $ 2   INT_Y_P  $ 4   LIVQRT     3
      NON_INTV   3   TELENUM    3   INSIDE     3   NOSERV     3
      HOWLNGWK   3   NOWAF_HH   3   ACPT_FAM   3   REJ_FAM    3
      ACPT_PER   3   REJ_PER    3   ACPTCHLD   3   LNG_INTV   3
      REGION     3   MSASIZEP   3   WTIA_HH    8   WTFA_HH    8
      STRATUM    4   PSU        3 ;

   * INPUT ALL VARIABLES;

   INPUT
      RECTYPE       1 -   2    SRVY_YR       3 -   6
      HHX      $    7 -  12    INTV_QRT     13 -  13
      ASSIGNWK     14 -  15    INT_M_P  $   16 -  17
      INT_Y_P  $   18 -  21    LIVQRT       22 -  23
      NON_INTV     24 -  24    TELENUM      25 -  25
      INSIDE       26 -  26    NOSERV       27 -  27
      HOWLNGWK     28 -  29    NOWAF_HH     30 -  30
      ACPT_FAM     31 -  32    REJ_FAM      33 -  34
      ACPT_PER     35 -  36    REJ_PER      37 -  38
      ACPTCHLD     39 -  40    LNG_INTV     41 -  41
      REGION       42 -  42    MSASIZEP     43 -  43
      WTIA_HH      44 -  49 .1 WTFA_HH      50 -  55
      STRATUM      56 -  58    PSU          59 -  59;

   * DEFINE VARIABLE LABELS;

   LABEL
      RECTYPE  ="Record Type"
      SRVY_YR  ="Processing Year"
      HHX      ="Household Serial Number"
      INTV_QRT ="Interviewing Quarter"
      ASSIGNWK ="Assignment Week"
      INT_M_P  ="Date of Interview - Month"
      INT_Y_P  ="Date of Interview - Year"
      LIVQRT   ="Type of Living Quarters"
      NON_INTV ="Category of type A non-response"
      TELENUM  ="Telephone number"
      INSIDE   ="Working phone inside home"
      NOSERV   ="Without telephone service past 12 months"
      HOWLNGWK ="Number of weeks w/o telephone service"
      NOWAF_HH ="Armed Forces member in HH"
      ACPT_FAM ="Number of families responding in HH"
      REJ_FAM  ="Number of families not responding in HH"
      ACPT_PER ="Number of persons responding in HH"
      REJ_PER  ="Number of persons not responding in HH"
      ACPTCHLD ="Number of children that responded in HH*"
      LNG_INTV ="Language of interview"
      REGION   ="Region"
      MSASIZEP ="Geographic Distribution - MSA size"
      WTIA_HH  ="Weight - Interim Annual"
      WTFA_HH  ="Weight - Final Annual"
      STRATUM  ="Stratum for variance estimation"
      PSU      ="PSU for variance estimation"
   ;

   * ASSOCIATE VARIABLES WITH FORMAT VALUES;

   FORMAT
      RECTYPE  HHP001X.    SRVY_YR  HHP002X.    INTV_QRT HHP004X.
      ASSIGNWK HHP005X.    INT_M_P  $HHP006X.   LIVQRT   HHP008X.
      NON_INTV HHP009X.    TELENUM  HHP010X.    INSIDE   HHP011X.
      NOSERV   HHP011X.    HOWLNGWK HHP013X.    NOWAF_HH HHP014X.
      ACPT_FAM HHP015X.    REJ_FAM  HHP016X.    ACPT_PER HHP015X.
      REJ_PER  HHP016X.    ACPTCHLD HHP016X.    LNG_INTV HHP020X.
      REGION   HHP021X.    MSASIZEP HHP022X.;

PROC CONTENTS DATA=NHIS.HOUSEHLD;

PROC FREQ DATA=NHIS.HOUSEHLD;
   TITLE1 'FREQUENCY REPORT FOR 1999 NHIS HOUSEHLD FILE';
   TITLE2 '(WEIGHTED)';
   TABLES RECTYPE/LIST MISSING;
   WEIGHT WTFA_HH ;

PROC FREQ DATA=NHIS.HOUSEHLD;
   TITLE1 'FREQUENCY REPORT FOR 1999 NHIS HOUSEHLD FILE';
   TITLE2 '(UNWEIGHTED)';
   TABLES RECTYPE/LIST MISSING;
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
        STATEMENT: FORMAT _ALL_;
RUN;
