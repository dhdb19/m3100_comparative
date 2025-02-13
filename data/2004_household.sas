*********************************************************************
 JULY 21, 2005
 
 THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
 FILE FROM THE 2004 NHIS Public Use HOUSEHLD.DAT ASCII FILE
 
 THIS IS STORED IN HOUSEHLD.SAS
*********************************************************************;

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS;
LIBNAME  NHIS     "C:\NHIS2004";

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS
             IF YOU ALLOW PROGRAM TO PERMANENTLY STORE FORMATS;
LIBNAME  LIBRARY  "C:\NHIS2004";

FILENAME ASCIIDAT 'C:\NHIS2004\HOUSEHLD.DAT';

* DEFINE VARIABLE VALUES FOR REPORTS;

*  USE THE STATEMENT "PROC FORMAT LIBRARY=LIBRARY"
     TO PERMANENTLY STORE THE FORMAT DEFINITIONS;

*  USE THE STATEMENT "PROC FORMAT" IF YOU DO NOT WISH
      TO PERMANENTLY STORE THE FORMATS.;

PROC FORMAT LIBRARY=LIBRARY;
*PROC FORMAT;

   VALUE $GROUPC
      ' '< - HIGH   = "All Values"
   ;
   VALUE GROUPN
      LOW - HIGH   = "All Values"
   ;
   VALUE HHP001X
      10                 = "10 Household"
      20                 = "20 Person"
      30                 = "30 Sample Adult"
      40                 = "40 Sample Child"
      60                 = "60 Family"
      70                 = "70 Injury/Poisoning Episode"
      75                 = "75 Injury/Poisoning Verbatim"
   ;
   VALUE HHP002X
      2004               = "2004"
   ;
   VALUE HHP004X
      1                  = "1 Quarter 1"
      2                  = "2 Quarter 2"
      3                  = "3 Quarter 3"
      4                  = "4 Quarter 4"
   ;
   VALUE HHP005X
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
   VALUE HHP008X
      01                 = "01 House, apartment, flat, condo"
      02                 = "02 HU in nontransient hotel, motel"
      03                 = "03 HU-permanent in transient hotel, motel"
      04                 = "04 HU in rooming house"
      05                 = "05 Mobile home/trailer w/no permanent rooms added"
      06                 = "06 Mobile home/trailer w/1+ permanent rooms added"
      07                 = "07 HU not specified above"
      08                 = "08 Quarters not HU in room or board house"
      09                 = "09 Unit not permanent-transient hotel, motel"
      10                 = "10 Unoccupied site for mobile home/trailer/tent"
      11                 = "11 Student quarters in college dormitory"
      12                 = "12 Group quarter unit not specified above"
      98                 = "98 Not ascertained"
   ;
   VALUE HHP009X
      1                  = "1 Refused"
      2                  = "2 No one home - repeated calls"
      3                  = "3 Temporarily absent"
      4                  = "4 Language problem"
      5                  = "5 Other"
   ;
   VALUE HHP015X
      1                  = "1 Northeast"
      2                  = "2 Midwest"
      3                  = "3 South"
      4                  = "4 West"
   ;
   VALUE HHP016X     
   ;
   VALUE HHP017X     
   ;

DATA NHIS.HOUSEHLD;
   * CREATE A SAS DATA SET;
   INFILE ASCIIDAT PAD LRECL=45;

   * DEFINE LENGTH OF ALL VARIABLES;

   LENGTH

      /* IDN LENGTHS */

      RECTYPE    3   SRVY_YR    4   HHX      $ 6   INTV_QRT   3
      ASSIGNWK   3   WTIA_HH    8   WTFA_HH    8

      /* COV LENGTHS */

      LIVQRT     3

      /* MHH LENGTHS */

      NON_INTV   3   ACPT_FAM   3   REJ_FAM    3   ACPT_PER   3
      REJ_PER    3   ACPTCHLD   3

      /* UCF LENGTHS */

      REGION     3   STRATUM    4   PSU        3 ;

   * INPUT ALL VARIABLES;

   INPUT

      /* IDN LOCATIONS */

      RECTYPE       1 -   2    SRVY_YR       3 -   6
      HHX      $    7 -  12    INTV_QRT     13 -  13
      ASSIGNWK     14 -  15    WTIA_HH      16 -  21 .1
      WTFA_HH      22 -  27

      /* COV LOCATIONS */

      LIVQRT       28 -  29

      /* MHH LOCATIONS */

      NON_INTV     30 -  30    ACPT_FAM     31 -  32
      REJ_FAM      33 -  34    ACPT_PER     35 -  36
      REJ_PER      37 -  38    ACPTCHLD     39 -  40

      /* UCF LOCATIONS */

      REGION       41 -  41    STRATUM      42 -  44
      PSU          45 -  45;

   * DEFINE VARIABLE LABELS;

   LABEL

      /* IDN LABELS */

      RECTYPE    ="IDN.000_00.000: File type identifier"
      SRVY_YR    ="IDN.000_02.000: Processing Year"
      HHX        ="IDN.000_04.000: Household Serial Number"
      INTV_QRT   ="IDN.000_25.000: Interviewing Quarter"
      ASSIGNWK   ="IDN.000_30.000: Assignment Week"
      WTIA_HH    ="IDN.000_65.000: Weight - Interim Annual"
      WTFA_HH    ="IDN.000_70.000: Weight - Final Annual"

      /* COV LABELS */

      LIVQRT     ="COV.260_00.000: Type of Living Quarters"

      /* MHH LABELS */

      NON_INTV   ="MHH.000_00.000.R01: Category of type A non-response"
      ACPT_FAM   ="MHH.000_00.000.R04: Number of families responding in HH"
      REJ_FAM    ="MHH.000_00.000.R05: Number of families not responding in HH"
      ACPT_PER   ="MHH.000_00.000.R06: Number of persons responding in HH"
      REJ_PER    ="MHH.000_00.000.R07: Number of persons not responding in HH"
      ACPTCHLD   ="MHH.000_00.000.R08: Number of children that responded in HH*"

      /* UCF LABELS */

      REGION     ="UCF.000_00.000.R09: Region"
      STRATUM    ="UCF.000_00.000.R18: Stratum for variance estimation"
      PSU        ="UCF.000_00.000.R19: PSU for variance estimation"
   ;

   * ASSOCIATE VARIABLES WITH FORMAT VALUES;

   FORMAT

      /* IDN FORMAT ASSOCIATIONS */

      RECTYPE     HHP001X.   SRVY_YR     HHP002X.   HHX         $GROUPC.
      INTV_QRT    HHP004X.   ASSIGNWK    HHP005X.   WTIA_HH     GROUPN.
      WTFA_HH     GROUPN.

      /* COV FORMAT ASSOCIATIONS */

      LIVQRT      HHP008X.

      /* MHH FORMAT ASSOCIATIONS */

      NON_INTV    HHP009X.

      /* UCF FORMAT ASSOCIATIONS */

      REGION      HHP015X.   STRATUM     HHP016X.   PSU         HHP017X.;
RUN;

PROC CONTENTS DATA=NHIS.HOUSEHLD;
   TITLE1 'CONTENTS OF THE 2004 NHIS HOUSEHLD FILE';

PROC FREQ DATA=NHIS.HOUSEHLD NOTITLE;
   TABLES RECTYPE/LIST MISSING;
   TITLE1 'FREQUENCY REPORT FOR 2004 NHIS HOUSEHLD FILE';
   TITLE2 '(WEIGHTED)';
   WEIGHT WTFA_HH;

PROC FREQ DATA=NHIS.HOUSEHLD NOTITLE;
   TABLES RECTYPE/LIST MISSING;
   TITLE1 'FREQUENCY REPORT FOR 2004 NHIS Household FILE';
   TITLE2 '(UNWEIGHTED)';

* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
             STATEMENT: FORMAT _ALL_;
RUN;
