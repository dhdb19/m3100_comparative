DM 'CLE LOG; CLE OUT';
**************************************************************************
November 29, 2005
 
THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
FILE FROM THE NHIS 1986 HOUSEHLD.DAT ASCII FILE.
 
NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
      GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
      DOCUMENTATION.
 
THIS IS STORED IN HOUSEHLD.SAS
*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;
 
LIBNAME NHIS    'C:\NHIS1986';
LIBNAME LIBRARY 'C:\NHIS1986';
 
FILENAME ASCIIDAT 'C:\NHIS1986\HOUSEHLD.DAT';
 
* DEFINE VARIABLE VALUES FOR REPORT;
 
PROC FORMAT LIBRARY=LIBRARY;
  VALUE  HHD001X
   10               = "Household Record"
   ;
  VALUE  HHD002X
   86               = "1986"
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
  VALUE $HHD006X
   ;
  VALUE $HHD007X
   ;
  VALUE  HHD008X
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
  VALUE  HHD009X
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
  VALUE  HHD010X
   1                = "Yes, phone number given"
   2                = "Yes, no phone number given"
   3                = "No"
   4                = "Unknown"
   .                = "Non-interview"
   ;
  VALUE  HHD011X
   .                = "Not applicable"
   ;
  VALUE  HHD012X
   1                = "Completed interview - non-military household"
   2                = "Non-interview"
   3                = "Completed interview - military household"
   ;
  VALUE  HHD013X
   01               = "Refused"
   02               = "No one at home"
   03               = "Temporarily absent"
   04               = "Other"
   .                = "Not applicable (completed interview)"
   ;
  VALUE $HHD014X
   "01"          = "January"         "08"     =  "August"
   "02"          = "February"        "09"     =  "September"
   "03"          = "March"           "10"     =  "October"
   "04"          = "April"           "11"     =  "November"
   "05"          = "May"             "12"     =  "December"
   "06"          = "June"            "99"     =  "Don't know or Refused"
   "07"          = "July"
   ;
  VALUE $HHD015X
   "01"-"31"        = "Day of Month"
   " "              = ""
   ;
  VALUE  HHD016X
   .                = "Non-interview"
   ;
  VALUE  HHD017X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
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
   00               = "Not applicable 01+  Number of unrelated individuals"
   .                = "Non-interview"
   ;
  VALUE  HHD028X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
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
   ;
  VALUE  HHD039X
   ;
  VALUE  HHD040X
   ;
  VALUE  HHD041X
   ;
  VALUE  HHD042X
   1                = "Condition List 1, Skin and Musculoskeletal"
   2                = "Condition List 2, Impairments"
   3                = "Condition List 3, Digestive"
   4                = "Condition List 4, Miscellaneous"
   5                = "Condition List 5, Circulatory"
   6                = "Condition List 6, Respiratory"
   7                = "Unknown"
   .                = "Non-interview"
   ;
  VALUE  HHD043X
   1                = "Northeast"
   2                = "Midwest"
   3                = "South"
   4                = "West"
   ;
  VALUE  HHD044X
   1                = "1,000,000 or more"
   2                = "250,000 - 999,999"
   3                = "100,000 - 249,999"
   4                = "Under 100,000"
   .                = "Non-MSA"
   ;
  VALUE  HHD045X
   1                = "MSA - Self-representing"
   3                = "MSA - Nonself-representing"
   4                = "Non-MSA - Self-representing"
   6                = "Non-MSA - Nonself-representing"
   ;
  VALUE  HHD046X
   1                = "MSA - Centra1 City"
   2                = "MSA - Not Centra1 City"
   3                = "Non-MSA - Nonfarm"
   4                = "Non-MSA - Farm"
   .                = "Non-interview"
   ;
  VALUE  HHD047X
   ;

 
DATA NHIS.HOUSEHLD;
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1986';
   INFILE ASCIIDAT MISSOVER TRUNCOVER LRECL=335;
 
* DEFINE LENGTH OF NUMERIC VARIABLES;
 
LENGTH
   RECTYPE   3  YEAR      3  QUARTER   3  WEEKCEN   3  WEEKPROC  3
   HH_22     3  HH_24     3  HH_25     3  HH_27     3  HH_28     3
   HH_34     3  HH_36     3  HH_38     3  HH_40     3  HH_42     3
   HH_44     3  HH_46     3  HH_48     3  HH_50     3  HH_52     3
   HH_54     3  HH_56     3  HH_58     3  HH_59     3  HH_60     3
   HH_61     3  HH_62     3  HH_63     3  HH_64     3  HH_65     3
   HH_66     3  HH_67     3  HH_68     3  HH_70     3  HH_72     3
   HH_74     3  HH_76     3  HH_182    3  HH_183    3  HH_185    3
   HH_186    3  WTFQ      8
   ;

* INPUT ALL VARIABLES;
 
INPUT
   RECTYPE       1 - 2         YEAR          3 - 4
   QUARTER       5 - 5         PSUNUMR  $    6 - 8
   WEEKCEN       9 - 10        SEGNUM   $   11 - 12
   HHNUM    $   13 - 14        WEEKPROC     19 - 20
   HH_22        22 - 23        HH_24        24 - 24
   HH_25        25 - 26        HH_27        27 - 27
   HH_28        28 - 29        HH_30    $   30 - 31
   HH_32    $   32 - 33        HH_34        34 - 35
   HH_36        36 - 37        HH_38        38 - 39
   HH_40        40 - 41        HH_42        42 - 43
   HH_44        44 - 45        HH_46        46 - 47
   HH_48        48 - 49        HH_50        50 - 51
   HH_52        52 - 53        HH_54        54 - 55
   HH_56        56 - 57        HH_58        58 - 58
   HH_59        59 - 59        HH_60        60 - 60
   HH_61        61 - 61        HH_62        62 - 62
   HH_63        63 - 63        HH_64        64 - 64
   HH_65        65 - 65        HH_66        66 - 66
   HH_67        67 - 67        HH_68        68 - 69
   HH_70        70 - 71        HH_72        72 - 73
   HH_74        74 - 75        HH_76        76 - 76
   HH_182      182 - 182       HH_183      183 - 183
   HH_185      185 - 185       HH_186      186 - 186
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
   WEEKPROC = "WEEK CODE"
   HH_22    = "TYPE OF LIVING QUARTERS"
   HH_24    = "HAS TELEPHONE"
   HH_25    = "SPECIAL PLACE"
   HH_27    = "COMPLETED INTERVIEW"
   HH_28    = "NON-INTERVIEW REASON TYPE A"
   HH_30    = "MONTH OF COMPLETION (OR LAST ATTEMPT) OF INITIAL INTERVIEW"
   HH_32    = "DAY  OF COMPLETION (OR LAST ATTEMPT) OF INITIAL INTERVIEW"
   HH_34    = "NUMBER OF FAMILIES IN THE HOUSEHOLD"
   HH_36    = "SIZE OF FAMILY - PRIMARY FAMILY"
   HH_38    = "SIZE OF FAMILY - SECONDARY FAMILY  1"
   HH_40    = "SIZE OF FAMILY - SECONDARY FAMILY  2"
   HH_42    = "SIZE OF FAMILY - SECONDARY FAMILY  3"
   HH_44    = "SIZE OF FAMILY - SECONDARY FAMILY  4"
   HH_46    = "SIZE OF FAMILY - SECONDARY FAMILY  5"
   HH_48    = "SIZE OF FAMILY - SECONDARY FAMILY  6"
   HH_50    = "SIZE OF FAMILY - SECONDARY FAMILY  7"
   HH_52    = "SIZE OF FAMILY - SECONDARY FAMILY  8"
   HH_54    = "SIZE OF FAMILY - SECONDARY FAMILY  9"
   HH_56    = "NUMBER OF UNRELATED INDIVIDUALS"
   HH_58    = "REFERENCE PERSON PRESENT - PRIMARY FAMILY"
   HH_59    = "REFERENCE PERSON PRESENT - SECONDARY FAMILY  1"
   HH_60    = "REFERENCE PERSON PRESENT -  SECONDARY FAMILY  2"
   HH_61    = "REFERENCE PERSON PRESENT - SECONDARY FAMILY  3"
   HH_62    = "REFERENCE PERSON PRESENT - SECONDARY FAMILY  4"
   HH_63    = "REFERENCE PERSON PRESENT - SECONDARY FAMILY  5"
   HH_64    = "REFERENCE PERSON PRESENT - SECONDARY FAMILY  6"
   HH_65    = "REFERENCE PERSON PRESENT - SECONDARY FAMILY  7"
   HH_66    = "REFERENCE PERSON PRESENT -  SECONDARY FAMILY  8"
   HH_67    = "REFERENCE PERSON PRESENT -  SECONDARY FAMILY  9"
   HH_68    = "NUMBER OF PERSON RECORDS FOR THE HOUSEHOLD"
   HH_70    = "NUMBER OF CONDITION RECORDS FOR THE HOUSEHOLD"
   HH_72    = "NUMBER OF TWO-WEEK DOCTOR VISIT RECORDS FOR THE HOUSEHOLD"
   HH_74    = "NUMBER OF HOSPITAL RECORDS FOR THE HOUSEHOLD"
   HH_76    = "CONDITION LIST ASSIGNED"
   HH_182   = "REGION"
   HH_183   = "GEOGRAPHIC DISTRIBUTION"
   HH_185   = "TYPE OF PSU"
   HH_186   = "MSA - NON-MSA RESIDENCE"
   WTFQ     = "BASIC WEIGHT"
   ;

* ASSOCIATE VARIABLES WITH FORMAT VALUES;
 
FORMAT
   RECTYPE   HHD001X.    YEAR      HHD002X.    QUARTER   HHD003X.
   PSUNUMR  $HHD004X.    WEEKCEN   HHD005X.    SEGNUM   $HHD006X.
   HHNUM    $HHD007X.    WEEKPROC  HHD008X.    HH_22     HHD009X.
   HH_24     HHD010X.    HH_25     HHD011X.    HH_27     HHD012X.
   HH_28     HHD013X.    HH_30    $HHD014X.    HH_32    $HHD015X.
   HH_34     HHD016X.    HH_36     HHD017X.    HH_38     HHD018X.
   HH_40     HHD019X.    HH_42     HHD020X.    HH_44     HHD021X.
   HH_46     HHD022X.    HH_48     HHD023X.    HH_50     HHD024X.
   HH_52     HHD025X.    HH_54     HHD026X.    HH_56     HHD027X.
   HH_58     HHD028X.    HH_59     HHD029X.    HH_60     HHD030X.
   HH_61     HHD031X.    HH_62     HHD032X.    HH_63     HHD033X.
   HH_64     HHD034X.    HH_65     HHD035X.    HH_66     HHD036X.
   HH_67     HHD037X.    HH_68     HHD038X.    HH_70     HHD039X.
   HH_72     HHD040X.    HH_74     HHD041X.    HH_76     HHD042X.
   HH_182    HHD043X.    HH_183    HHD044X.    HH_185    HHD045X.
   HH_186    HHD046X.    WTFQ      HHD047X.
   ;
 
PROC CONTENTS DATA=NHIS.HOUSEHLD;
 
PROC FREQ DATA=NHIS.HOUSEHLD;
TITLE1 'FREQUENCY REPORT FOR 1986 NHIS HOUSEHOLD PUBLIC USE FILE';
TITLE2 '(WEIGHTED)';
TABLES RECTYPE/LIST MISSING;
WEIGHT WTFA_HH;
  
PROC FREQ DATA=NHIS.HOUSEHLD;
TITLE1 'FREQUENCY REPORT FOR 1986 NHIS HOUSEHOLD PUBLIC USE FILE';
TITLE2 '(UNWEIGHTED)';
TABLES RECTYPE/LIST MISSING;
 
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
              STATEMENT: FORMAT _ALL_;
RUN;


