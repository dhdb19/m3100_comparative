DM 'CLE LOG; CLE OUT';
**************************************************************************
    November 4, 2005
 
THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
FILE FROM THE NHIS 1990 HOUSEHLD.DAT ASCII FILE.
 
NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
      GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
      DOCUMENTATION.
 
THIS IS STORED IN HOUSEHLD.SAS
*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;
 
LIBNAME NHIS    'C:\NHIS1990';
LIBNAME LIBRARY 'C:\NHIS1990';
 
FILENAME ASCIIDAT 'C:\NHIS1990\HOUSEHLD.DAT';
 
* DEFINE VARIABLE VALUES FOR REPORT;
 
PROC FORMAT LIBRARY=LIBRARY;
  VALUE  HHD001X
   10               = "Household Record"
   ;
  VALUE  HHD002X
   90               = "1990"
   ;
  VALUE  HHD003X
   1                = "Quarter 1"
   2                = "Quarter 2"
   3                = "Quarter 3"
   4                = "Quarter 4"
   ;
  VALUE $HHD004X
   ;
  VALUE  HHD005X
   01  = "Week 01"   21  = "Week 01"   41  = "Week 01"   61  = "Week 01"   81  = "Week 01"
   02  = "Week 02"   22  = "Week 02"   42  = "Week 02"   62  = "Week 02"   82  = "Week 02"
   03  = "Week 03"   23  = "Week 03"   43  = "Week 03"   63  = "Week 03"   83  = "Week 03"
   04  = "Week 04"   24  = "Week 04"   44  = "Week 04"   64  = "Week 04"   84  = "Week 04"
   05  = "Week 05"   25  = "Week 05"   45  = "Week 05"   65  = "Week 05"   85  = "Week 05"
   06  = "Week 06"   26  = "Week 06"   46  = "Week 06"   66  = "Week 06"   86  = "Week 06"
   07  = "Week 07"   27  = "Week 07"   47  = "Week 07"   67  = "Week 07"   87  = "Week 07"
   08  = "Week 08"   28  = "Week 08"   48  = "Week 08"   68  = "Week 08"   88  = "Week 08"
   09  = "Week 09"   29  = "Week 09"   49  = "Week 09"   69  = "Week 09"   89  = "Week 09"
   10  = "Week 10"   30  = "Week 10"   50  = "Week 10"   70  = "Week 10"   90  = "Week 10"
   11  = "Week 11"   31  = "Week 11"   51  = "Week 11"   71  = "Week 11"   91  = "Week 11"
   12  = "Week 12"   32  = "Week 12"   52  = "Week 12"   72  = "Week 12"   92  = "Week 12"
   13  = "Week 13"   33  = "Week 13"   53  = "Week 13"   73  = "Week 13"   93  = "Week 13"
   ;
  VALUE $HHD006X
   ;
  VALUE $HHD007X
   ;
  VALUE  HHD008X
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
  VALUE  HHD009X
   0                = "Interview not late"
   1                = "One week late"
   2                = "Two weeks late"
   3                = "Unknown"
   ;
  VALUE  HHD010X
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
  VALUE  HHD011X
   1                = "Yes, phone number given"
   2                = "Yes, no phone number given"
   3                = "No"
   4                = "Unknown"
   .                = "Non-interview"
   ;
  VALUE $HHD012X
   " "              = "Not applicable"
   ;
  VALUE  HHD013X
   1                = "Completed interview - non-military household"
   2                = "Non-interview"
   3                = "Completed interview - military household"
   ;
  VALUE  HHD014X
   01               = "Refused"
   02               = "No one at home"
   03               = "Temporarily absent"
   04               = "Other"
   .                = "Not applicable (completed interview)"
   ;
  VALUE $HHD015X
   "01"        = "January"    "07"       = "July"
   "02"        = "February"   "08"       = "August"
   "03"        = "March"      "09"       = "September"
   "04"        = "April"      "10"       = "October"
   "05"        = "May"        "11"       = "November"
   "06"        = "June"       "12"       = "December"
   "99"        = "DK or refused"
   ;
  VALUE $HHD016X
   "01"-"31"    = "Day of the month"
   " "          = ""
   ;
  VALUE  HHD017X
   .                = "Non-interview"
   ;
  VALUE  HHD018X
   00               = "Not applicable or only unrelated individuals 01+ Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD019X
   00               = "Not applicable or only unrelated individuals 01+ Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD020X
   00               = "Not applicable or only unrelated individuals 01+ Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD021X
   00               = "Not applicable or only unrelated individuals 01+ Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD022X
   00               = "Not applicable or only unrelated individuals 01+ Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD023X
   00               = "Not applicable or only unrelated individuals 01+ Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD024X
   00               = "Not applicable or only unrelated individuals 01+ Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD025X
   00               = "Not applicable or only unrelated individuals 01+ Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD026X
   00               = "Not applicable or only unrelated individuals 01+ Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD027X
   00               = "Not applicable or only unrelated individuals 01+ Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD028X
   00               = "Not applicable"
   .                = "Non-interview"
   ;
  VALUE  HHD029X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
   ;
  VALUE  HHD030X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
   ;
  VALUE  HHD031X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
   ;
  VALUE  HHD032X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
   ;
  VALUE  HHD033X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
   ;
  VALUE  HHD034X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
   ;
  VALUE  HHD035X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
   ;
  VALUE  HHD036X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
   ;
  VALUE  HHD037X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
   ;
  VALUE  HHD038X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
   ;
  VALUE  HHD039X
   ;
  VALUE  HHD040X
   ;
  VALUE  HHD041X
   ;
  VALUE  HHD042X
   ;
  VALUE  HHD043X
   1                = "Condition List 1, Skin and Musculoskeletal"
   2                = "Condition List 2, Impairments"
   3                = "Condition List 3, Digestive"
   4                = "Condition List 4, Miscellaneous"
   5                = "Condition List 5, Circulatory"
   6                = "Condition List 6, Respiratory"
   7                = "Unknown"
   .                = "Non-interview"
   ;
  VALUE  HHD044X
   0                = "Permit"
   1                = "Area, oversampled for blacks"
   2                = "Area, not oversampled for blacks"
   ;
  VALUE  HHD045X
   1                = "Northeast"
   2                = "Midwest"
   3                = "South"
   4                = "West"
   ;
  VALUE  HHD046X
   1                = "1,000,000 or more"
   2                = "250,000 - 999,999"
   3                = "100,000 - 249,999"
   4                = "Under 100,000"
   .                = "Non-MSA"
   ;
  VALUE  HHD047X
   1                = "MSA - Self-representing"
   3                = "MSA - Nonself-representing"
   4                = "Non-MSA - Self-representing"
   6                = "Non-MSA - Nonself-representing"
   ;
  VALUE  HHD048X
   1                = "MSA - Centra1 City"
   2                = "MSA - Not Centra1 City"
   3                = "Non-MSA - Nonfarm"
   4                = "Non-MSA - Farm"
   .                = "Non-interview"
   ;
  VALUE  HHD049X
   ;

 
DATA NHIS.HOUSEHLD;
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1990';
   INFILE ASCIIDAT MISSOVER TRUNCOVER LRECL=335;
 
* DEFINE LENGTH OF NUMERIC VARIABLES;
 
LENGTH
   RECTYPE   3  YEAR      3  QUARTER   3  WEEKCEN   3  WEEKPROC  3
   LTINTER   3  LIVQTR    3  PHONE     3  COMINTER  3  NINTREAS  3
   NUMFAMHH  3  FAMSIZEP  3  FAMSIZS1  3  FAMSIZS2  3  FAMSIZS3  3
   FAMSIZS4  3  FAMSIZS5  3  FAMSIZS6  3  FAMSIZS7  3  FAMSIZS8  3
   FAMSIZS9  3  NUNRELIN  3  RPERPR    3  RPERPRS1  3  RPERPRS2  3
   RPERPRS3  3  RPERPRS4  3  RPERPRS5  3  RPERPRS6  3  RPERPRS7  3
   RPERPRS8  3  RPERPRS9  3  NPRECHH   3  NCONRCHH  3  N2WKDVHH  3
   NHOSRCHH  3  CONDLIST  3  SUBTYPE   3  REGION    3  MSASIZE   3
   PSUTYPE   3  MSA       3  WTFQ      8
   ;

* INPUT ALL VARIABLES;
 
INPUT
   RECTYPE       1 - 2         YEAR          3 - 4
   QUARTER       5 - 5         PSUNUMR  $    6 - 8
   WEEKCEN       9 - 10        SEGNUM   $   11 - 12
   HHNUM    $   13 - 14        WEEKPROC     19 - 20
   LTINTER      21 - 21        LIVQTR       22 - 23
   PHONE        24 - 24        SPLACE   $   25 - 26
   COMINTER     27 - 27        NINTREAS     28 - 29
   COMPMON  $   30 - 31        COMPDAY  $   32 - 33
   NUMFAMHH     34 - 35        FAMSIZEP     36 - 37
   FAMSIZS1     38 - 39        FAMSIZS2     40 - 41
   FAMSIZS3     42 - 43        FAMSIZS4     44 - 45
   FAMSIZS5     46 - 47        FAMSIZS6     48 - 49
   FAMSIZS7     50 - 51        FAMSIZS8     52 - 53
   FAMSIZS9     54 - 55        NUNRELIN     56 - 57
   RPERPR       58 - 58        RPERPRS1     59 - 59
   RPERPRS2     60 - 60        RPERPRS3     61 - 61
   RPERPRS4     62 - 62        RPERPRS5     63 - 63
   RPERPRS6     64 - 64        RPERPRS7     65 - 65
   RPERPRS8     66 - 66        RPERPRS9     67 - 67
   NPRECHH      68 - 69        NCONRCHH     70 - 71
   N2WKDVHH     72 - 73        NHOSRCHH     74 - 75
   CONDLIST     76 - 76        SUBTYPE     178 - 178
   REGION      182 - 182       MSASIZE     183 - 183
   PSUTYPE     185 - 185       MSA         186 - 186
   WTFQ        201 - 206 .1
   ;
   WTFA_HH=WTFQ/4;

* DEFINE VARIABLE LABELS;
 
LABEL
   RECTYPE  = "RECORD TYPE"
   YEAR     = "PROCESSING YEAR"
   QUARTER  = "PROCESSING QUARTER"
   PSUNUMR  = "RANDOM RECODE OF PSU NUMBER"
   WEEKCEN  = "WEEK - CENSUS CODE"
   SEGNUM   = "SEGMENT NUMBER"
   HHNUM    = "HOUSEHOLD NUMBER"
   WEEKPROC = "PROCESSING WEEK CODE"
   LTINTER  = "LATE INTERVIEW (OR LAST ATTEMPT) FLAG"
   LIVQTR   = "TYPE OF LIVING QUARTERS"
   PHONE    = "HAS TELEPHONE"
   SPLACE   = "SPECIAL PLACE"
   COMINTER = "COMPLETED INTERVIEW"
   NINTREAS = "NON-INTERVIEW REASON"
   COMPMON  = "MONTH OF COMPLETION (OR LAST ATTEMPT)"
   COMPDAY  = "DAY OF COMPLETION (OR LAST ATTEMPT)"
   NUMFAMHH = "NUMBER OF FAMILIES IN THE HOUSEHOLD"
   FAMSIZEP = "SIZE OF FAMILY - PRIMARY FAMILY"
   FAMSIZS1 = "SIZE OF FAMILY - SECONDARY FAMILY 1"
   FAMSIZS2 = "SIZE OF FAMILY - SECONDARY FAMILY 2"
   FAMSIZS3 = "SIZE OF FAMILY - SECONDARY FAMILY 3"
   FAMSIZS4 = "SIZE OF FAMILY - SECONDARY FAMILY 4"
   FAMSIZS5 = "SIZE OF FAMILY - SECONDARY FAMILY 5"
   FAMSIZS6 = "SIZE OF FAMILY - SECONDARY FAMILY 6"
   FAMSIZS7 = "SIZE OF FAMILY - SECONDARY FAMILY 7"
   FAMSIZS8 = "SIZE OF FAMILY - SECONDARY FAMILY 8"
   FAMSIZS9 = "SIZE OF FAMILY - SECONDARY FAMILY 9"
   NUNRELIN = "NUMBER OF UNRELATED INDIVIDUALS"
   RPERPR   = "REFERENCE PERSON PRESENT - PRIMARY FAMILY"
   RPERPRS1 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY 1"
   RPERPRS2 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY 2"
   RPERPRS3 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY 3"
   RPERPRS4 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY 4"
   RPERPRS5 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY 5"
   RPERPRS6 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY 6"
   RPERPRS7 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY 7"
   RPERPRS8 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY 8"
   RPERPRS9 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY 9"
   NPRECHH  = "NUMBER OF PERSON RECORDS FOR THE HOUSEHOLD"
   NCONRCHH = "NUMBER OF CONDITION RECORDS FOR THE HOUSEHOLD"
   N2WKDVHH = "NUMBER OF TWO-WEEK DOCTOR VISIT RECORDS FOR THE HOUSEHOLD"
   NHOSRCHH = "NUMBER OF HOSPITAL RECORDS FOR THE HOUSEHOLD"
   CONDLIST = "CONDITION LIST ASSIGNED"
   SUBTYPE  = "TYPE OF SUBSTRATUM"
   REGION   = "REGION"
   MSASIZE  = "GEOGRAPHIC DISTRIBUTION"
   PSUTYPE  = "TYPE OF PSU"
   MSA      = "MSA - NON-MSA RESIDENCE"
   WTFQ     = "QUARTER BASIC WEIGHT"
   ;

* ASSOCIATE VARIABLES WITH FORMAT VALUES;
 
FORMAT
   RECTYPE   HHD001X.    YEAR      HHD002X.    QUARTER   HHD003X.
   PSUNUMR   $HHD004X.   WEEKCEN   HHD005X.    SEGNUM    $HHD006X.
   HHNUM     $HHD007X.   WEEKPROC  HHD008X.    LTINTER   HHD009X.
   LIVQTR    HHD010X.    PHONE     HHD011X.    SPLACE    $HHD012X.
   COMINTER  HHD013X.    NINTREAS  HHD014X.    COMPMON   $HHD015X.
   COMPDAY   $HHD016X.   NUMFAMHH  HHD017X.    FAMSIZEP  HHD018X.
   FAMSIZS1  HHD019X.    FAMSIZS2  HHD020X.    FAMSIZS3  HHD021X.
   FAMSIZS4  HHD022X.    FAMSIZS5  HHD023X.    FAMSIZS6  HHD024X.
   FAMSIZS7  HHD025X.    FAMSIZS8  HHD026X.    FAMSIZS9  HHD027X.
   NUNRELIN  HHD028X.    RPERPR    HHD029X.    RPERPRS1  HHD030X.
   RPERPRS2  HHD031X.    RPERPRS3  HHD032X.    RPERPRS4  HHD033X.
   RPERPRS5  HHD034X.    RPERPRS6  HHD035X.    RPERPRS7  HHD036X.
   RPERPRS8  HHD037X.    RPERPRS9  HHD038X.    NPRECHH   HHD039X.
   NCONRCHH  HHD040X.    N2WKDVHH  HHD041X.    NHOSRCHH  HHD042X.
   CONDLIST  HHD043X.    SUBTYPE   HHD044X.    REGION    HHD045X.
   MSASIZE   HHD046X.    PSUTYPE   HHD047X.    MSA       HHD048X.
   WTFQ      HHD049X.
   ;
 
PROC CONTENTS DATA=NHIS.HOUSEHLD;
 
PROC FREQ DATA=NHIS.HOUSEHLD;
TITLE1 'FREQUENCY REPORT FOR 1990 NHIS PUBLIC USE HOUSEHOLD FILE';
TITLE2 '(WEIGHTED)';
TABLES RECTYPE/LIST MISSING;
WEIGHT WTFA_HH;
 
PROC FREQ DATA=NHIS.HOUSEHLD;
TITLE1 'FREQUENCY REPORT FOR 1990 NHIS PUBLIC USE HOUSEHOLD FILE';
TITLE2 '(UNWEIGHTED)';
TABLES RECTYPE/LIST MISSING;
 
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
              STATEMENT: FORMAT _ALL_;
RUN;

