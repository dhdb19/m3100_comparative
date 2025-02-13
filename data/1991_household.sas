DM 'CLE LOG; CLE OUT';
**************************************************************************
     November 4, 2005
 
THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
FILE FROM THE NHIS 1991 HOUSEHLD.DAT ASCII FILE.
 
NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
      GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
      DOCUMENTATION.
 
THIS IS STORED IN HOUSEHLD.SAS
*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;
 
LIBNAME NHIS    'C:\NHIS1991';
LIBNAME LIBRARY 'C:\NHIS1991';
 
FILENAME ASCIIDAT 'C:\NHIS1991\HOUSEHLD.DAT';
 
* DEFINE VARIABLE VALUES FOR REPORT;
 
PROC FORMAT LIBRARY=LIBRARY;
  VALUE  HLD001X
   10               = "Household Record"
   ;
  VALUE  HLD002X
   91               = "1991"
   ;
  VALUE  HLD003X
   1                = "Quarter 1"
   2                = "Quarter 2"
   3                = "Quarter 3"
   4                = "Quarter 4"
   ;
  VALUE $HLD004X
   ;
  VALUE  HLD005X
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
  VALUE $HLD006X
   ;
  VALUE $HLD007X
   ;
  VALUE  HLD008X
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
  VALUE  HLD009X
   0                = "Interview not late"
   1                = "One week late"
   2                = "Two weeks late"
   3                = "Unknown"
   ;
  VALUE  HLD010X
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
  VALUE  HLD011X
   1                = "Yes, phone number given"
   2                = "Yes, no phone number given"
   3                = "No"
   4                = "Unknown"
   .                = "Non-interview"
   ;
  VALUE $HLD012X
   ;
  VALUE  HLD013X
   1                = "Completed interview - non-military household"
   2                = "Non-interview"
   3                = "Completed interview - military household"
   ;
  VALUE  HLD014X
   01               = "Refused"
   02               = "No one at home"
   03               = "Temporarily absent"
   04               = "Other"
   .                = "Not applicable (completed interview)"
   ;
  VALUE $HLD015X
   "01"        = "January"    "07"       = "July"
   "02"        = "February"   "08"       = "August"
   "03"        = "March"      "09"       = "September"
   "04"        = "April"      "10"       = "October"
   "05"        = "May"        "11"       = "November"
   "06"        = "June"       "12"       = "December"
   "99"        = "DK or refused"
   ;
  VALUE $HLD016X
   "01"-"31"        = "Day of Month"
   .                = ""
   ;
  VALUE  HLD017X
   .                = "Non-interview"
   ;
  VALUE  HLD018X
   00               = "Not applicable or only unrelated individuals 01+ Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HLD019X
   00               = "Not applicable or only unrelated individuals 01+ Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HLD020X
   00               = "Not applicable or only unrelated individuals 01+ Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HLD021X
   00               = "Not applicable or only unrelated individuals 01+ Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HLD022X
   00               = "Not applicable or only unrelated individuals 01+ Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HLD023X
   00               = "Not applicable or only unrelated individuals 01+ Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HLD024X
   00               = "Not applicable or only unrelated individuals 01+ Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HLD025X
   00               = "Not applicable or only unrelated individuals 01+ Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HLD026X
   00               = "Not applicable or only unrelated individuals 01+ Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HLD027X
   00               = "Not applicable or only unrelated individuals 01+ Number of persons in family"
   .                = "Non-interview"
   ;
  VALUE  HLD028X
   00               = "Not applicable 01+  Number of unrelated individuals"
   .                = "Non-interview"
   ;
  VALUE  HLD029X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
   ;
  VALUE  HLD030X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
   ;
  VALUE  HLD031X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
   ;
  VALUE  HLD032X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
   ;
  VALUE  HLD033X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
   ;
  VALUE  HLD034X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
   ;
  VALUE  HLD035X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
   ;
  VALUE  HLD036X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
   ;
  VALUE  HLD037X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
   ;
  VALUE  HLD038X
   1                = "Yes or all adult family members in Armed Forces"
   .                = "Household with unrelated individuals only or non-interviewed household"
   ;
  VALUE  HLD039X
   ;
  VALUE  HLD040X
   ;
  VALUE  HLD041X
   ;
  VALUE  HLD042X
   ;
  VALUE  HLD043X
   1                = "Condition List 1, Skin and Musculoskeletal"
   2                = "Condition List 2, Impairments"
   3                = "Condition List 3, Digestive"
   4                = "Condition List 4, Miscellaneous"
   5                = "Condition List 5, Circulatory"
   6                = "Condition List 6, Respiratory"
   7                = "Unknown"
   .                = "Non-interview"
   ;
  VALUE  HLD044X
   0                = "Permit"
   1                = "Area, oversampled for blacks"
   2                = "Area, not oversampled for blacks"
   ;
  VALUE  HLD045X
   1                = "Northeast"
   2                = "Midwest"
   3                = "South"
   4                = "West"
   ;
  VALUE  HLD046X
   1                = "1,000,000 or more"
   2                = "250,000 - 999,999"
   3                = "100,000 - 249,999"
   4                = "Under 100,000"
   .                = "Non-MSA"
   ;
  VALUE  HLD047X
   1                = "MSA - Self-representing"
   3                = "MSA - Nonself-representing"
   4                = "Non-MSA - Self-representing"
   6                = "Non-MSA - Nonself-representing"
   ;
  VALUE  HLD048X
   1                = "MSA - Centra1 City"
   2                = "MSA - Not Centra1 City"
   3                = "Non-MSA - Nonfarm"
   4                = "Non-MSA - Farm"
   .                = "Non-interview"
   ;
  VALUE  HLD049X
   ;
 
DATA NHIS.HOUSEHLD;
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1991';
   INFILE ASCIIDAT MISSOVER TRUNCOVER LRECL=335;
 
* DEFINE LENGTH OF NUMERIC VARIABLES;
 
LENGTH
   RECTYPE   3  YEAR      3  QUARTER   3  WEEKCEN   3  WEEKPROC  3
   LAFLAG    3  LIVQTR    3  PHONE     3  COMIVIEW  3  NONIVIEW  3
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
   RECTYPE      1 - 2          YEAR         3 - 4
   QUARTER      5 - 5          PSUNUMR  $   6 - 8
   WEEKCEN      9 - 10         SEGNUM   $  11 - 12
   HHNUM    $  13 - 14         WEEKPROC    19 - 20
   LAFLAG      21 - 21         LIVQTR      22 - 23
   PHONE       24 - 24         SPLACE   $  25 - 26
   COMIVIEW    27 - 27         NONIVIEW    28 - 29
   DATIVIEW $  30 - 31         DATIVIED $  32 - 33
   NFAM        34 - 35         SIZEPRIM    36 - 37
   SIZESEC1    38 - 39         SIZESEC2    40 - 41
   SIZESEC3    42 - 43         SIZESEC4    44 - 45
   SIZESEC5    46 - 47         SIZESEC6    48 - 49
   SIZESEC7    50 - 51         SIZESEC8    52 - 53
   SIZESEC9    54 - 55         NUNREL      56 - 57
   REFPRESP    58 - 58         REFPRES1    59 - 59
   REFPRES2    60 - 60         REFPRES3    61 - 61
   REFPRES4    62 - 62         REFPRES5    63 - 63
   REFPRES6    64 - 64         REFPRES7    65 - 65
   REFPRES8    66 - 66         REFPRES9    67 - 67
   NPERSREC    68 - 69         NCONDREC    70 - 71
   NDVREC      72 - 73         NHOSPREC    74 - 75
   CONDLIST    76 - 76         SUBTYPE    178 - 178
   REGION     182 - 182        MSASIZE    183 - 183
   PSUTYPE    185 - 185        MSA        186 - 186
   WTFQ       201 - 206 .1
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
   HHNUM    = "HOUSEHOLD NUMBERT"
   WEEKPROC = "PROCESSING WEEK CODE"
   LAFLAG   = "LATE INTERVIEW (OR LAST ATTEMPT) FLAG"
   LIVQTR   = "TYPE OF LIVING QUARTERS"
   PHONE    = "HAS TELEPHONE"
   SPLACE   = "SPECIAL PLACE"
   COMIVIEW = "COMPLETED INTERVIEW"
   NONIVIEW = "NON-INTERVIEW REASON"
   DATIVIEW = "INITIAL INTERVIEW MONTH"
   DATIVIED = "INITIAL INTERVIEW DAY"
   NFAM     = "NUMBER OF FAMILIES IN THE HOUSEHOLD"
   SIZEPRIM = "SIZE OF FAMILY - PRIMARY FAMILY"
   SIZESEC1 = "SIZE OF FAMILY - SECONDARY FAMILY  1"
   SIZESEC2 = "SIZE OF FAMILY - SECONDARY FAMILY  2"
   SIZESEC3 = "SIZE OF FAMILY - SECONDARY FAMILY  3"
   SIZESEC4 = "SIZE OF FAMILY - SECONDARY FAMILY  4"
   SIZESEC5 = "SIZE OF FAMILY - SECONDARY FAMILY  5"
   SIZESEC6 = "SIZE OF FAMILY - SECONDARY FAMILY  6"
   SIZESEC7 = "SIZE OF FAMILY - SECONDARY FAMILY  7"
   SIZESEC8 = "SIZE OF FAMILY - SECONDARY FAMILY  8"
   SIZESEC9 = "SIZE OF FAMILY - SECONDARY FAMILY  9"
   NUNREL   = "NUMBER OF UNRELATED INDIVIDUALS"
   REFPRESP = "REFERENCE PERSON PRESENT - PRIMARY FAMILY"
   REFPRES1 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY  1"
   REFPRES2 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY  2"
   REFPRES3 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY  3"
   REFPRES4 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY   4"
   REFPRES5 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY  5"
   REFPRES6 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY  6"
   REFPRES7 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY  7"
   REFPRES8 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY  8"
   REFPRES9 = "REFERENCE PERSON PRESENT - SECONDARY FAMILY  9"
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
   WTFQ     = "QUARTER BASIC WEIGHT"
   ;

* ASSOCIATE VARIABLES WITH FORMAT VALUES;
 
FORMAT
   RECTYPE   HLD001X.    YEAR      HLD002X.    QUARTER   HLD003X.
   PSUNUMR   $HLD004X.   WEEKCEN   HLD005X.    SEGNUM    $HLD006X.
   HHNUM     $HLD007X.   WEEKPROC  HLD008X.    LAFLAG    HLD009X.
   LIVQTR    HLD010X.    PHONE     HLD011X.    SPLACE    $HLD012X.
   COMIVIEW  HLD013X.    NONIVIEW  HLD014X.    DATIVIEW  $HLD015X.
   DATIVIED  $HLD016X.   NFAM      HLD017X.    SIZEPRIM  HLD018X.
   SIZESEC1  HLD019X.    SIZESEC2  HLD020X.    SIZESEC3  HLD021X.
   SIZESEC4  HLD022X.    SIZESEC5  HLD023X.    SIZESEC6  HLD024X.
   SIZESEC7  HLD025X.    SIZESEC8  HLD026X.    SIZESEC9  HLD027X.
   NUNREL    HLD028X.    REFPRESP  HLD029X.    REFPRES1  HLD030X.
   REFPRES2  HLD031X.    REFPRES3  HLD032X.    REFPRES4  HLD033X.
   REFPRES5  HLD034X.    REFPRES6  HLD035X.    REFPRES7  HLD036X.
   REFPRES8  HLD037X.    REFPRES9  HLD038X.    NPERSREC  HLD039X.
   NCONDREC  HLD040X.    NDVREC    HLD041X.    NHOSPREC  HLD042X.
   CONDLIST  HLD043X.    SUBTYPE   HLD044X.    REGION    HLD045X.
   MSASIZE   HLD046X.    PSUTYPE   HLD047X.    MSA       HLD048X.
   WTFQ      HLD049X.
   ;
 
PROC CONTENTS DATA=NHIS.HOUSEHLD;
 
PROC FREQ DATA=NHIS.HOUSEHLD;
TITLE1 'FREQUENCY REPORT FOR 1991 NHIS HOUSEHOLD FILE';
TITLE2 '(WEIGHTED)';
TABLES RECTYPE/LIST MISSING;
WEIGHT WTFA_HH;
 
PROC FREQ DATA=NHIS.HOUSEHLD;
TITLE1 'FREQUENCY REPORT FOR 1991 NHIS HOUSEHOLD FILE';
TITLE2 '(UNWEIGHTED)';
TABLES RECTYPE/LIST MISSING;
 
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
              STATEMENT: FORMAT _ALL_;
RUN;
