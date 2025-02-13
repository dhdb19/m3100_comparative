DM 'CLE LOG; CLE OUT';
**************************************************************************
 November 17, 2005
 
THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
FILE FROM THE NHIS 1987 HOUSEHLD.DAT ASCII FILE.
 
NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
      GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
      DOCUMENTATION.
 
THIS IS STORED IN HOUSEHLD.SAS
*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;
 
LIBNAME NHIS    'C:\NHIS1987';
LIBNAME LIBRARY 'C:\NHIS1987';
 
FILENAME ASCIIDAT 'C:\NHIS1987\HOUSEHLD.DAT';
 
* DEFINE VARIABLE VALUES FOR REPORT;
 
PROC FORMAT LIBRARY=LIBRARY;
  VALUE  HHD001X
   10               = "Household Record"
   ;
  VALUE  HHD002X
   87               = "1987"
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
   01               = "Week   1"
   02               = "Week   2"
   03               = "Week   3"
   04               = "Week   4"
   05               = "Week   5"
   06               = "Week   6"
   07               = "Week   7"
   08               = "Week   8"
   09               = "Week   9"
   10               = "Week  10"
   11               = "Week  11"
   12               = "Week  12"
   13               = "Week  13"
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
   "06"          = "June"            " "      =  " "
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
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD019X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD020X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD021X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD022X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD023X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD024X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD025X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD026X
   00               = "Not applicable or only unrelated individuals"
   01-30            = "Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HHD027X
   00               = "Not applicable"
   01-30            = "Number of unrelated individuals"
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
   0                = "Permit"
   1                = "Area, oversampled for blacks"
   2                = "Area, not oversampled for blacks"
   ;
  VALUE  HHD044X
   1                = "Northeast"
   2                = "Midwest"
   3                = "South"
   4                = "West"
   ;
  VALUE  HHD045X
   1                = "1,000,000 or more"
   2                = "250,000 - 999,999"
   3                = "100,000 - 249,999"
   4                = "Under 100,000"
   .                = "Non-MSA"
   ;
  VALUE  HHD046X
   1                = "MSA - Self-representing"
   3                = "MSA - Nonself-representing"
   4                = "Non-MSA - Self-representing"
   6                = "Non-MSA - Nonself-representing"
   ;
  VALUE  HHD047X
   1                = "MSA - Central City"
   2                = "MSA - Not Central City"
   3                = "Non-MSA - Nonfarm"
   4                = "Non-MSA - Farm"
   .                = "Non-interview"
   ;
  VALUE  HHD048X
   ;
 
DATA NHIS.HOUSEHLD;
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1987';
   INFILE ASCIIDAT MISSOVER TRUNCOVER LRECL=335;
 
* DEFINE LENGTH OF NUMERIC VARIABLES;
 
LENGTH
   RECTYPE   3  YEAR      3  QUARTER   3  WEEKCEN   3  WEEKPROC  3
   LIVQTR    3  PHONE     3  SPLACE    3  COMIVIEW  3  NONIVIEW  3
   NFAM      3  SIZEPRIM  3  SIZESEC1  3  SIZESEC2  3  SIZESEC3  3
   SIZESEC4  3  SIZESEC5  3  SIZESEC6  3  SIZESEC7  3  SIZESEC8  3
   SIZESEC9  3  NUNREL    3  REFPRESP  3  REFPRES1  3  REFPRES2  3
   REFPRES3  3  REFPRES4  3  REFPRES5  3  REFPRES6  3  REFPRES7  3
   REFPRES8  3  REFPRES9  3  NPERSREC  3  NCONDREC  3  NDVREC    3
   NHOSPREC  3  CONDLIST  3  SUBTYPE   3  REGION    3  MSASIZE   3
   PSUTYPE   3  MSA       3  WTFQ      8
   ;
* INPUT ALL VARIABLES;
 
INPUT
   RECTYPE       1 - 2         YEAR          3 - 4
   QUARTER       5 - 5         PSUNUMR  $    6 - 8
   WEEKCEN       9 - 10        SEGNUM   $   11 - 12
   HHNUM    $   13 - 14        WEEKPROC     19 - 20
   LIVQTR       22 - 23        PHONE        24 - 24
   SPLACE       25 - 26        COMIVIEW     27 - 27
   NONIVIEW     28 - 29        DATIVIEW $   30 - 31
   DATIVIED $   32 - 33        NFAM         34 - 35
   SIZEPRIM     36 - 37        SIZESEC1     38 - 39
   SIZESEC2     40 - 41        SIZESEC3     42 - 43
   SIZESEC4     44 - 45        SIZESEC5     46 - 47
   SIZESEC6     48 - 49        SIZESEC7     50 - 51
   SIZESEC8     52 - 53        SIZESEC9     54 - 55
   NUNREL       56 - 57        REFPRESP     58 - 58
   REFPRES1     59 - 59        REFPRES2     60 - 60
   REFPRES3     61 - 61        REFPRES4     62 - 62
   REFPRES5     63 - 63        REFPRES6     64 - 64
   REFPRES7     65 - 65        REFPRES8     66 - 66
   REFPRES9     67 - 67        NPERSREC     68 - 69
   NCONDREC     70 - 71        NDVREC       72 - 73
   NHOSPREC     74 - 75        CONDLIST     76 - 76
   SUBTYPE     178 - 178       REGION      182 - 182
   MSASIZE     183 - 183       PSUTYPE     185 - 185
   MSA         186 - 186       WTFQ        201 - 206 .1
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
   LIVQTR   = "TYPE OF LIVING QUARTERS"
   PHONE    = "HAS TELEPHONE"
   SPLACE   = "SPECIAL PLACE"
   COMIVIEW = "COMPLETED INTERVIEW"
   NONIVIEW = "NON-INTERVIEW REASON"
   DATIVIEW = "MONTH OF COMPLETION (OR LAST ATTEMPT) OF INITIAL INTERVIEW"
   DATIVIED = "DAY OF COMPLETION (OR LAST ATTEMPT) OF INITIAL INTERVIEW"
   NFAM     = "NUMBER OF FAMILIES IN THE HOUSEHOLD"
   SIZEPRIM = "SIZE OF FAMILY - PRIMARY FAMILY"
   SIZESEC1 = "SIZE OF FAMILY - SECONDARY FAMILY 1"
   SIZESEC2 = "SIZE OF FAMILY - SECONDARY FAMILY 2"
   SIZESEC3 = "SIZE OF FAMILY - SECONDARY FAMILY 3"
   SIZESEC4 = "SIZE OF FAMILY - SECONDARY FAMILY 4"
   SIZESEC5 = "SIZE OF FAMILY - SECONDARY FAMILY 5"
   SIZESEC6 = "SIZE OF FAMILY - SECONDARY FAMILY 6"
   SIZESEC7 = "SIZE OF FAMILY - SECONDARY FAMILY 7"
   SIZESEC8 = "SIZE OF FAMILY - SECONDARY FAMILY 8"
   SIZESEC9 = "SIZE OF FAMILY - SECONDARY FAMILY 9"
   NUNREL   = "NUMBER OF UNRELATED INDIVIDUALS"
   REFPRESP = "REFERENCE PERSON PRESENT - PRIMARY FAMILY"
   REFPRES1 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY 1"
   REFPRES2 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY 2"
   REFPRES3 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY 3"
   REFPRES4 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY 4"
   REFPRES5 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY 5"
   REFPRES6 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY 6"
   REFPRES7 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY 7"
   REFPRES8 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY 8"
   REFPRES9 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY 9"
   NPERSREC = "NUMBER OF PERSON RECORDS FOR THE HOUSEHOLD"
   NCONDREC = "NUMBER OF CONDITION RECORDS FOR THE HOUSEHOLD"
   NDVREC   = "NUMBER OF TWO-WEEK DOCTOR VISIT RECORDS FOR THE HOUSEHOLD"
   NHOSPREC = "NUMBER OF HOSPITAL RECORDS FOR THE HOUSEHOLD"
   CONDLIST = "CONDITION LIST ASSIGNED"
   SUBTYPE  = "TYPE OF SUBSTRATUM"
   REGION   = "REGION"
   MSASIZE  = "GEOGRAPHIC DISTRIBUTION"
   PSUTYPE  = "TYPE OF PSU"
   MSA      = "MSA - NON-MSA RESIDENCE"
   WTFQ     = "BASIC WEIGHT"
   ;
* ASSOCIATE VARIABLES WITH FORMAT VALUES;
 
FORMAT
   RECTYPE   HHD001X.    YEAR      HHD002X.    QUARTER   HHD003X.
   PSUNUMR   HHD004X.    WEEKCEN   HHD005X.    SEGNUM    HHD006X.
   HHNUM     HHD007X.    WEEKPROC  HHD008X.    LIVQTR    HHD009X.
   PHONE     HHD010X.    SPLACE    HHD011X.    COMIVIEW  HHD012X.
   NONIVIEW  HHD013X.    DATIVIEW  HHD014X.    DATIVIED  HHD015X.
   NFAM      HHD016X.    SIZEPRIM  HHD017X.    SIZESEC1  HHD018X.
   SIZESEC2  HHD019X.    SIZESEC3  HHD020X.    SIZESEC4  HHD021X.
   SIZESEC5  HHD022X.    SIZESEC6  HHD023X.    SIZESEC7  HHD024X.
   SIZESEC8  HHD025X.    SIZESEC9  HHD026X.    NUNREL    HHD027X.
   REFPRESP  HHD028X.    REFPRES1  HHD029X.    REFPRES2  HHD030X.
   REFPRES3  HHD031X.    REFPRES4  HHD032X.    REFPRES5  HHD033X.
   REFPRES6  HHD034X.    REFPRES7  HHD035X.    REFPRES8  HHD036X.
   REFPRES9  HHD037X.    NPERSREC  HHD038X.    NCONDREC  HHD039X.
   NDVREC    HHD040X.    NHOSPREC  HHD041X.    CONDLIST  HHD042X.
   SUBTYPE   HHD043X.    REGION    HHD044X.    MSASIZE   HHD045X.
   PSUTYPE   HHD046X.    MSA       HHD047X.    WTFQ      HHD048X.
   ;
 
PROC CONTENTS DATA=NHIS.HOUSEHLD;
 
PROC FREQ DATA=NHIS.HOUSEHLD;
TITLE1 'FREQUENCY REPORT FOR 1987 NHIS HOUSEHOLD PUBLIC USE FILE';
TITLE2 '(WEIGHTED)';
TABLES RECTYPE/LIST MISSING;
WEIGHT WTFA_HH;
  
PROC FREQ DATA=NHIS.HOUSEHLD;
TITLE1 'FREQUENCY REPORT FOR 1987 NHIS HOUSEHOLD PUBLIC USE FILE';
TITLE2 '(UNWEIGHTED)';
TABLES RECTYPE/LIST MISSING;
 
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
              STATEMENT: FORMAT _ALL_;
RUN;
