DM 'CLE LOG; CLE OUT';
**************************************************************************
  January 25, 2006
 
THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
FILE FROM THE NHIS 1978 HOUSEHLD.DAT ASCII FILE.
 
NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
      GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
      DOCUMENTATION.
 
THIS IS STORED IN HOUSEHLD.SAS
*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;
 
LIBNAME NHIS    'C:\NHIS1978\';
LIBNAME LIBRARY 'C:\NHIS1978\';
 
FILENAME ASCIIDAT 'C:\NHIS1978\HOUSEHLD.DAT';
 
* DEFINE VARIABLE VALUES FOR REPORT;
 
PROC FORMAT LIBRARY=LIBRARY;
  VALUE $HHD001X
   ;
  VALUE  HHD002X
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
  VALUE $HHD003X
   ;
  VALUE $HHD004X
   ;
  VALUE  HHD005X
   ;
  VALUE  HHD006X
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
  VALUE  HHD007X
   1                = "Quarter 1, 1978"
   2                = "Quarter 2, 1978"
   3                = "Quarter 3, 1978"
   4                = "Quarter 4, 1978"
   ;
  VALUE  HHD008X
   8                = "1978"
   ;
  VALUE  HHD009X
   0                = "The 31 Large Self-representing SMSA's"
   1                = "SMSA-Self-representing"
   3                = "SMSA-Nonself-representing"
   4                = "Non-SMSA-Self-representing"
   6                = "Non-SMSA-Nonself-representing"
   ;
  VALUE  HHD010X
   1                = "Northeast"
   2                = "North Central"
   3                = "South"
   4                = "West"
   ;
  VALUE  HHD011X
   .                = "Non self-representing sections and self-representing SMSA's other than 34-64"
   34               = "Boston"
   35               = "New York"
   36               = "Philadelphia"
   37               = "Pittsburgh"
   38               = "Detroit"
   39               = "Chicago"
   40               = "Cincinnati"
   41               = "Los Angeles-Long Beach"
   42               = "San Francisco-(Oakland)"
   43               = "Baltimore"
   44               = "Atlanta"
   45               = "Buffalo"
   46               = "Cleveland"
   47               = "Minneapolis-St. Paul"
   48               = "Milwaukee"
   49               = "Kansas City"
   50               = "St. Louis"
   51               = "Houston"
   52               = "Dallas"
   53               = "Washington, DC"
   54               = "Seattle-Everett"
   55               = "San Diego"
   56               = "Anaheim-Santa Ana Garden Grove"
   57               = "Miami"
   58               = "Denver"
   59               = "San Bernardino-Riverside-Ontario"
   60               = "Indianapolis"
   61               = "San Jose"
   62               = "New Orleans"
   63               = "Tampa-St. Petersburg"
   64               = "Portland, Oregon"
   ;
  VALUE  HHD012X
   1                = "In SMSA, in Central City"
   2                = "In SMSA, not in Central City"
   3                = "Not in SMSA"
   ;
  VALUE  HHD013X
   1                = "SMSA"
   2                = "Non-SMSA - Nonfarm"
   3                = "Non-SMSA - Farm"
   ;
  VALUE  HHD014X
   1                = "Housing Unit"
   2                = "Other"
   ;
  VALUE  HHD015X
   ;
  VALUE  HHD016X
   0                = "Not reported"
   1-8              = "Number of calls"
   9                = "9+ calls"
   .                = "Noninterview"
   ;
  VALUE $HHD017X
   "1"              = "Yes - phone"
   "2"              = "No or none"
   "3"              = "Phone,but nonumber listed, or number refused"
   "9"              = "DK if phone or refused"
   " "              = "Not reported"
   ;
  VALUE  HHD018X
   1                = "Yes"
   2                = "No"
   3                = "Yes and no"
   .                = "Not reported"
   ;
  VALUE  HHD019X
   1                = "Monday"
   2                = "Tuesday"
   3                = "Wednesday"
   4                = "Thursday"
   5                = "Friday"
   6                = "Saturday"
   7                = "Sunday"
   8                = "Unknown"
   .                = "Not reported"
   ;
  VALUE  HHD020X
   001-998          = "Number of minutes"
   999              = "999+ minutes"
   .                = "Not reported"
   ;
  VALUE  HHD021X
   1                = "6:01 am - 12:00 noon"
   2                = "12:01pm -  6:00 pm"
   3                = "6:01 pm - 12:00 midnight"
   4                = "12:01pm -  6:00 am"
   .                = "Not reported"
   ;
  VALUE  HHD022X
   1                = "Completed interview"
   2                = "Noninterview"
   ;
  VALUE  HHD023X
   1                = "Refusal"
   2                = "No one at home"
   3                = "Temporarily absent"
   4                = "Other"
   .                = "Not reported or Not applicable"
   ;
  VALUE $HHD024X
   ;
  VALUE  HHD025X
   ;
  VALUE  HHD026X
   ;
  VALUE  HHD027X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD028X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD029X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD030X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD031X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD032X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD033X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD034X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD035X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD036X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD037X
   1                = "Yes"
   .                = "No primary"
   ;
  VALUE  HHD038X
   1                = "Yes"
   .                = "No secondary family 1"
   ;
  VALUE  HHD039X
   1                = "Yes"
   .                = "No secondary family 2"
   ;
  VALUE  HHD040X
   1                = "Yes"
   .                = "No secondary family 3"
   ;
  VALUE  HHD041X
   1                = "Yes"
   .                = "No secondary family 4"
   ;
  VALUE  HHD042X
   1                = "Yes"
   .                = "No secondary family 5"
   ;
  VALUE  HHD043X
   1                = "Yes"
   .                = "No secondary family 6"
   ;
  VALUE  HHD044X
   1                = "Yes"
   .                = "No secondary family 7"
   ;
  VALUE  HHD045X
   1                = "Yes"
   .                = "No secondary family 8"
   ;
  VALUE  HHD046X
   1                = "Yes"
   .                = "No secondary family 9"
   ;
  VALUE $HHD047X
   "01"             = "January"       "07"   = "July"
   "02"             = "February"      "08"   = "August"
   "03"             = "March"         "09"   = "September"
   "04"             = "April"         "10"   = "October"
   "05"             = "May"           "11"   = "November"
   "06"             = "June"          "12"   = "December"
   " "              = "Not Reported"
   ;
  VALUE $HHD048X
   "01"-"31"        = "Day of Month"
   " "              = "Not Reported"
   ;
  VALUE  HHD049X
   1                = "Condition List 1 - Digestive"
   2                = "Condition List 2 - Bone and Muscle"
   3                = "Condition List 3 - Miscellaneous"
   4                = "Condition List 4 - Impairments"
   5                = "Condition List 5 - Circulatory"
   6                = "Condition List 6 - Respiratory"
   7                = "Unknown"
   .                = "Noninterviews"
   ;
  VALUE $HHD050X
   "1"              = "l Room"
   "2"              = "2 Rooms"
   "3"              = "3 Rooms"
   "4"              = "4 Rooms"
   "5"              = "5 Rooms"
   "6"              = "6 Rooms"
   "7"              = "7 Rooms"
   "8"              = "8 Rooms"
   "9"              = "9+ ROOIUS"
   "-"              = "DK or Not reported"
   " "              = "Not a housing unit"
   ;
  VALUE $HHD051X
   "1"              = "l Room"
   "2"              = "2 Rooms"
   "3"              = "3 Rooms"
   "4"              = "4 Rooms"
   "5"              = "5 Rooms"
   "6"              = "6 Rooms"
   "7"              = "7 Rooms"
   "8"              = "8 Rooms"
   "9"              = "9+ ROOIUS"
   "-"              = "DK or Not reported"
   " "              = "Not a housing unit"
   ;
  VALUE  HHD052X
   ;
 
DATA NHIS.HOUSEHLD;
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1978\';
   INFILE ASCIIDAT MISSOVER TRUNCOVER LRECL=516;
 
* DEFINE LENGTH OF NUMERIC VARIABLES;
 
LENGTH
   WEEKCEN   3  RECTYPE   3  HH_17     3  QUARTER   3  YEAR      3
   HH_28     3  HH_29     3  HH_30     3  HH_33     3  HH_36     3
   HH_37     3  HH_40     3  HH_42     3  HH_44     3  HH_45     3
   HH_46     3  HH_49     3  HH_50     3  HH_51     3  HH_56     3
   HH_58     3  HH_66     3  HH_68     3  HH_70     3  HH_72     3
   HH_74     3  HH_76     3  HH_78     3  HH_80     3  HH_82     3
   HH_84     3  HH_86     3  HH_87     3  HH_88     3  HH_89     3
   HH_90     3  HH_91     3  HH_92     3  HH_93     3  HH_94     3
   HH_95     3  HH_108    3  WTFQ      8
   ;
* INPUT ALL VARIABLES;
 
INPUT
   PSUNUMR  $   3 - 5          WEEKCEN      6 - 7
   SEGNUM   $   8 - 9          HHNUM    $  10 - 11
   RECTYPE     14 - 14         HH_17       17 - 18
   QUARTER     19 - 19         YEAR        20 - 20
   HH_28       28 - 28         HH_29       29 - 29
   HH_30       30 - 31         HH_33       33 - 33
   HH_36       36 - 36         HH_37       37 - 37
   HH_40       40 - 41         HH_42       42 - 42
   HH_43    $  43 - 43         HH_44       44 - 44
   HH_45       45 - 45         HH_46       46 - 48
   HH_49       49 - 49         HH_50       50 - 50
   HH_51       51 - 51         HH_52    $  52 - 53
   HH_56       56 - 57         HH_58       58 - 59
   HH_66       66 - 67         HH_68       68 - 69
   HH_70       70 - 71         HH_72       72 - 73
   HH_74       74 - 75         HH_76       76 - 77
   HH_78       78 - 79         HH_80       80 - 81
   HH_82       82 - 83         HH_84       84 - 85
   HH_86       86 - 86         HH_87       87 - 87
   HH_88       88 - 88         HH_89       89 - 89
   HH_90       90 - 90         HH_91       91 - 91
   HH_92       92 - 92         HH_93       93 - 93
   HH_94       94 - 94         HH_95       95 - 95
   HH_96    $  96 - 97         HH_98    $  98 - 99
   HH_108     108 - 108        HH_180   $ 180 - 180
   HH_181   $ 181 - 181        WTFQ       188 - 193 .1
   ;
   WTFA_HH=WTFQ/4;

* DEFINE VARIABLE LABELS;
 
LABEL
   PSUNUMR  = "RANDOM RECODE OF PSU"
   WEEKCEN  = "WEEK - CENSUS CODE"
   SEGNUM   = "SEGMENT NUMBER"
   HHNUM    = "HOUSEHOLD NUMBER"
   RECTYPE  = "RECORD TYPE (1)"
   HH_17    = "PROCESSING WEEK CODE"
   QUARTER  = "PROCESSING QUARTER CODE"
   YEAR     = "PROCESSING YEAR"
   HH_28    = "TYPE OF PSU"
   HH_29    = "REGION"
   HH_30    = "TABULATION AREA"
   HH_33    = "GEOGRAPHIC IDENTIFICATION"
   HH_36    = "SMSA - NON-SMSA RESIDENCE"
   HH_37    = "TYPE OF LIVING QUARTERS"
   HH_40    = "INTERVIEWER NUMBER"
   HH_42    = "NUMBER OF CALLS"
   HH_43    = "TELEPHONE"
   HH_44    = "OBSERVED INTERVIEW"
   HH_45    = "DAY OF WEEK INTERVIEW COMPLETED"
   HH_46    = "LENGTH OF INTERVIEW"
   HH_49    = "TIME OF DAY OF INTERVIEW"
   HH_50    = "COMPLETED INTERVIEW"
   HH_51    = "NONINTERVIEW REASON - TYPE A"
   HH_52    = "SPECIAL PLACE"
   HH_56    = "NUMBER OF UNRELATED INDIVIDUALS"
   HH_58    = "NUMBER OF PERSON IN THE HOUSEHOLD"
   HH_66    = "SIZE OF FAMILY - PRIMARY FAMILY"
   HH_68    = "SIZE OF FAMILY - SECONDARY FAMILY 1"
   HH_70    = "SIZE OF FAMILY - SECONDARY FAMILY 2"
   HH_72    = "SIZE OF FAMILY - SECONDARY FAMILY 3"
   HH_74    = "SIZE OF FAMILY - SECONDARY FAMILY 4"
   HH_76    = "SIZE OF FAMILY - SECONDARY FAMILY 5"
   HH_78    = "SIZE OF FAMILY - SECONDARY FAMILY 6"
   HH_80    = "SIZE OF FAMILY - SECONDARY FAMILY 7"
   HH_82    = "SIZE OF FAMILY - SECONDARY FAMILY 8"
   HH_84    = "SIZE OF FAMILY - SECONDARY FAMILY 9"
   HH_86    = "HEAD PRESENT - PRIMARY FAMILY"
   HH_87    = "HEAD PRESENT - SECONDARY FAMILY 1"
   HH_88    = "HEAD PRESENT - SECONDARY FAMILY 2"
   HH_89    = "HEAD PRESENT - SECONDARY FAMILY 3"
   HH_90    = "HEAD PRESENT - SECONDARY FAMILY 4"
   HH_91    = "HEAD PRESENT - SECONDARY FAMILY 5"
   HH_92    = "HEAD PRESENT - SECONDARY FAMILY 6"
   HH_93    = "HEAD PRESENT - SECONDARY FAMILY 7"
   HH_94    = "HEAD PRESENT - SECONDARY FAMILY 8"
   HH_95    = "HEAD PRESENT - SECONDARY FAMILY 9"
   HH_96    = "MONTH OF COMPLETION OF INTERVIEW"
   HH_98    = "DAY OF COMPLETION"
   HH_108   = "CONDITION LIST ASSIGNED"
   HH_180   = "TOTAL ROOMS"
   HH_181   = "TOTAL NUMBER OF BEDROOMS"
   WTFQ     = "WTFQ"
   ;
* ASSOCIATE VARIABLES WITH FORMAT VALUES;
 
FORMAT
   PSUNUMR   $HHD001X.   WEEKCEN   HHD002X.    SEGNUM    $HHD003X.
   HHNUM     $HHD004X.   RECTYPE   HHD005X.    HH_17     HHD006X.
   QUARTER   HHD007X.    YEAR      HHD008X.    HH_28     HHD009X.
   HH_29     HHD010X.    HH_30     HHD011X.    HH_33     HHD012X.
   HH_36     HHD013X.    HH_37     HHD014X.    HH_40     HHD015X.
   HH_42     HHD016X.    HH_43     $HHD017X.   HH_44     HHD018X.
   HH_45     HHD019X.    HH_46     HHD020X.    HH_49     HHD021X.
   HH_50     HHD022X.    HH_51     HHD023X.    HH_52     $HHD024X.
   HH_56     HHD025X.    HH_58     HHD026X.    HH_66     HHD027X.
   HH_68     HHD028X.    HH_70     HHD029X.    HH_72     HHD030X.
   HH_74     HHD031X.    HH_76     HHD032X.    HH_78     HHD033X.
   HH_80     HHD034X.    HH_82     HHD035X.    HH_84     HHD036X.
   HH_86     HHD037X.    HH_87     HHD038X.    HH_88     HHD039X.
   HH_89     HHD040X.    HH_90     HHD041X.    HH_91     HHD042X.
   HH_92     HHD043X.    HH_93     HHD044X.    HH_94     HHD045X.
   HH_95     HHD046X.    HH_96     $HHD047X.   HH_98     $HHD048X.
   HH_108    HHD049X.    HH_180    $HHD050X.   HH_181    $HHD051X.
   WTFQ      HHD052X.
   ;
 
PROC CONTENTS DATA=NHIS.HOUSEHLD;
 
PROC FREQ DATA=NHIS.HOUSEHLD;
TITLE1 'FREQUENCY REPORT FOR 1978 NHIS HOUSEHOLD FILE';
TITLE2 '(WEIGHTED)';
TABLES RECTYPE/LIST MISSING;
WEIGHT WTFA_HH;
 
PROC FREQ DATA=NHIS.HOUSEHLD;
TITLE1 'FREQUENCY REPORT FOR 1978 NHIS HOUSEHOLD FILE';
TITLE2 '(UNWEIGHTED)';
TABLES RECTYPE/LIST MISSING;
 
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
              STATEMENT: FORMAT _ALL_;
RUN;
