DM 'CLE LOG; CLE OUT';

**************************************************************************

 February 23, 2006

 

THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS

FILE FROM THE NHIS 1970 HOUSEHLD.DAT ASCII FILE.

 

NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN

      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN

      GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT

      DOCUMENTATION.

 

THIS IS STORED IN HOUSEHLD.SAS

*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;
LIBNAME NHIS 'C:\NHIS1970\';

LIBNAME LIBRARY 'C:\NHIS1970\';

FILENAME ASCIIDAT 'C:\NHIS1970\HOUSEHLD.DAT';

* DEFINE VARIABLE VALUES FOR REPORT;
PROC FORMAT LIBRARY=LIBRARY;

   VALUE HHD001X 1="B52 (Weeks 03-13) B56 (Weeks 01-02)" 2="B53 (Weeks 01-13)" 3
      ="B54 (Weeks 01-13)" 4="B55 (Weeks 01-13)" ;

   VALUE HHD002X 0="1970" 1="1971" ;

   VALUE $HHD003X ;

   VALUE HHD004X 21="Week 01" 41="Week 01" 61="Week 01" 81="Week 01" 22=
      "Week 02" 42="Week 02" 62="Week 02" 82="Week 02" 23="Week 03" 43="Week 03"
      63="Week 03" 83="Week 03" 24="Week 04" 44="Week 04" 64="Week 04" 84=
      "Week 04" 25="Week 05" 45="Week 05" 65="Week 05" 85="Week 05" 26="Week 06"
      46="Week 06" 66="Week 06" 86="Week 06" 27="Week 07" 47="Week 07" 67=
      "Week 07" 87="Week 07" 28="Week 08" 48="Week 08" 68="Week 08" 88="Week 08"
      29="Week 09" 49="Week 09" 69="Week 09" 89="Week 09" 30="Week 10" 50=
      "Week 10" 70="Week 10" 90="Week 10" 31="Week 11" 51="Week 11" 71="Week 11"
      91="Week 11" 32="Week 12" 52="Week 12" 72="Week 12" 92="Week 12" 33=
      "Week 13" 53="Week 13" 73="Week 13" 93="Week 13" ;

   VALUE $HHD005X ;

   VALUE $HHD006X ;

   VALUE HHD007X ;

   VALUE HHD008X 21="Week 01" 41="Week 01" 61="Week 01" 81="Week 01" 22=
      "Week 02" 42="Week 02" 62="Week 02" 82="Week 02" 23="Week 03" 43="Week 03"
      63="Week 03" 83="Week 03" 24="Week 04" 44="Week 04" 64="Week 04" 84=
      "Week 04" 25="Week 05" 45="Week 05" 65="Week 05" 85="Week 05" 26="Week 06"
      46="Week 06" 66="Week 06" 86="Week 06" 27="Week 07" 47="Week 07" 67=
      "Week 07" 87="Week 07" 28="Week 08" 48="Week 08" 68="Week 08" 88="Week 08"
      29="Week 09" 49="Week 09" 69="Week 09" 89="Week 09" 30="Week 10" 50=
      "Week 10" 70="Week 10" 90="Week 10" 31="Week 11" 51="Week 11" 71="Week 11"
      91="Week 11" 32="Week 12" 52="Week 12" 72="Week 12" 92="Week 12" 33=
      "Week 13" 53="Week 13" 73="Week 13" 93="Week 13" ;

   VALUE HHD009X 1="B52 (Weeks 03-13), B53 (Weeks 01-02)" 2=
      "B53 (Weeks 03-13), B54 (Weeks 01-02)" 3=
      "B54 (Weeks 03-13), B55 (Weeks 01-02)" 4=
      "B55 (Weeks 03-13), B56 (Weeks 01-02)" ;

   VALUE HHD010X 0="1970" ;

   VALUE HHD011X 23="Week 01" 43="Week 01" 63="Week 01" 83="Week 01" 24=
      "Week 02" 44="Week 02" 64="Week 02" 84="Week 02" 25="Week 03" 45="Week 03"
      65="Week 03" 85="Week 03" 26="Week 04" 46="Week 04" 66="Week 04" 86=
      "Week 04" 27="Week 05" 47="Week 05" 67="Week 05" 87="Week 05" 28="Week 06"
      48="Week 06" 68="Week 06" 88="Week 06" 29="Week 07" 49="Week 07" 69=
      "Week 07" 89="Week 07" 30="Week 08" 50="Week 08" 70="Week 08" 90="Week 08"
      31="Week 09" 51="Week 09" 71="Week 09" 91="Week 09" 32="Week 10" 52=
      "Week 10" 72="Week 10" 92="Week 10" 33="Week 11" 53="Week 11" 73="Week 11"
      93="Week 11" 21="Week 12" 41="Week 12" 61="Week 12" 81="Week 12" 22=
      "Week 13" 42="Week 13" 62="Week 13" 82="Week 13" ;

   VALUE HHD012X 0="The 22 Large Self-representing SMSA's" 1=
      "SMSA-Self-representing" 3="SMSA-Nonself-representing" 4=
      "Non-SMSA-Self-representing" 6="Non-SMSA-Nonself-representing" ;

   VALUE HHD013X 1="Northeast" 2="North Central" 3="South" 4="West" ;

   VALUE HHD014X .="Non self-representing sections" 34="Boston" 35="New York" 36
      ="Philadelphia" 37="Pittsburgh" 38="Detroit" 39="Chicago" 40="Cincinnati"
      41="Los Angeles-Long Beach" 42="San Francisco-(Oakland)" 43="Baltimore" 44
      ="Atlanta" 45="Buffalo" 46="Cleveland" 47="Minneapolis-St. Paul" 48=
      "Milwaukee" 49="Kansas City" 50="St. Louis" 51="Houston" 52="Dallas" 53=
      "Washington, DC" 54="Seattle-Everett" 55="San Diego" ;

   VALUE HHD015X 1="In SMA, in Central City of SMA" 2=
      "In SMA, not in Central City of SMA" 4="Not in SMA" ;

   VALUE HHD016X 1="SMSA" 2="Non-SMSA - Nonfarm" 3="Non-SMSA - Farm" ;

   VALUE HHD017X 1="Housing Unit" 2="Other" ;

   VALUE $HHD018X ;

   VALUE HHD019X 1-8="Number of calls" 9="9+ calls" .="Not reported" ;

   VALUE HHD020X 1="Yes - phone" 2="None" 3="DK if phone or refused" 4="Blank" ;

   VALUE HHD021X 1="Yes" 2="No" .="Not reported" ;

   VALUE HHD022X 1="Monday" 2="Tuesday" 3="Wednesday" 4="Thursday" 5="Friday" 6=
      "Saturday" 7="Sunday" 8="Unknown" ;

   VALUE HHD023X 001-999="Minutes" .="Not reported" ;

   VALUE HHD024X 1="6:01 am - 12:00 noon" 2="12:01pm -  6:00 pm" 3=
      "6:01 pm - 12:00 midnight" 4="12:01pm -  6:00 am" .="Not reported" ;

   VALUE HHD025X 1="Completed interview" 2="Noninterview" ;

   VALUE HHD026X 1="Refusal" 2="No one at home" 3="Temporarily absent" 4="Other"
      ;

   VALUE HHD027X ;

   VALUE HHD028X ;

   VALUE HHD029X ;

   VALUE HHD030X ;

   VALUE HHD031X ;

   VALUE HHD032X ;

   VALUE HHD033X ;

   VALUE HHD034X 00="Not applicable or only unrelated individuals" 01-30=
      "Number of persons in family" .="Non-interview" ;

   VALUE HHD035X 00="Not applicable or only unrelated individuals" 01-30=
      "Number of persons in family" .="Non-interview" ;

   VALUE HHD036X 00="Not applicable or only unrelated individuals" 01-30=
      "Number of persons in family" .="Non-interview" ;

   VALUE HHD037X 00="Not applicable or only unrelated individuals" 01-30=
      "Number of persons in family" .="Non-interview" ;

   VALUE HHD038X 00="Not applicable or only unrelated individuals" 01-30=
      "Number of persons in family" .="Non-interview" ;

   VALUE HHD039X 00="Not applicable or only unrelated individuals" 01-30=
      "Number of persons in family" .="Non-interview" ;

   VALUE HHD040X 00="Not applicable or only unrelated individuals" 01-30=
      "Number of persons in family" .="Non-interview" ;

   VALUE HHD041X 00="Not applicable or only unrelated individuals" 01-30=
      "Number of persons in family" .="Non-interview" ;

   VALUE HHD042X 00="Not applicable or only unrelated individuals" 01-30=
      "Number of persons in family" .="Non-interview" ;

   VALUE HHD043X 00="Not applicable or only unrelated individuals" 01-30=
      "Number of persons in family" .="Non-interview" ;

   VALUE HHD044X 1="Yes" 2="No" ;

   VALUE HHD045X 1="Yes" 2="No" ;

   VALUE HHD046X 1="Yes" 2="No" ;

   VALUE HHD047X 1="Yes" 2="No" ;

   VALUE HHD048X 1="Yes" 2="No" ;

   VALUE HHD049X 1="Yes" 2="No" ;

   VALUE HHD050X 1="Yes" 2="No" ;

   VALUE HHD051X 1="Yes" 2="No" ;

   VALUE HHD052X 1="Yes" 2="No" ;

   VALUE HHD053X 1="Yes" 2="No" ;

   VALUE $HHD054X "01"="January" "07"="July" "02"="February" "08"="August" "03"=
      "March" "09"="September" "04"="April" "10"="October" "05"="May" "11"=
      "November" "06"="June" "12"="December" " "="Not Reported" ;

   VALUE $HHD055X "01"-"31"="Day of Month" " "="Not Reported" ;

   VALUE HHD056X 1="No X-Ray" 2="Release signed" 3="No release signed" 4="Other"
      ;

   VALUE HHD057X 01="Steam or hot water" 02="Central Hot Air" 03=
      "Built-in electric units" 04="Pipeless furnace" 05="Room heaters - Flue"
      06="Room heaters - Without flue" 07="Fireplace with stove" 08=
      "Portable room heater" 09="Other" 10="None" 99="DK or Refusal" .=
      "Non Interviewed Household" ;

   VALUE HHD058X 1="Individual room unit" 2="Central air conditioning" 3="No" 9=
      "DK or Refusal" .="Non Interviewed Household" ;

   VALUE HHD059X ;

DATA NHIS.HOUSEHLD;

   * CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1970\';
   INFILE ASCIIDAT MISSOVER TRUNCOVER LRECL=516;

   * DEFINE LENGTH OF NUMERIC VARIABLES;
   LENGTH HH_1 3 HH_2 3 WEEKCEN 3 RECTYPE 3 HH_17 3 QUARTER 3 YEAR 3 WEEKPROC 3
      HH_28 3 HH_29 3 HH_30 3 HH_33 3 HH_36 3 HH_37 3 HH_42 3 HH_43 3 HH_44 3
      HH_45 3 HH_46 3 HH_49 3 HH_50 3 HH_51 3 HH_52 3 HH_54 3 HH_56 3 HH_58 3
      HH_60 3 HH_62 3 HH_64 3 HH_66 3 HH_68 3 HH_70 3 HH_72 3 HH_74 3 HH_76 3
      HH_78 3 HH_80 3 HH_82 3 HH_84 3 HH_86 3 HH_87 3 HH_88 3 HH_89 3 HH_90 3
      HH_91 3 HH_92 3 HH_93 3 HH_94 3 HH_95 3 HH_178 3 HH_179 3 HH_181 3 WTFQ 8
      ;

   * INPUT ALL VARIABLES;
   INPUT HH_1 1 - 1 HH_2 2 - 2 PSUNUMR $ 3 - 5 WEEKCEN 6 - 7 SEGNUM $ 8 - 9
      HHNUM $ 10 - 11 RECTYPE 14 - 14 HH_17 17 - 18 QUARTER 19 - 19 YEAR 20 - 20
      WEEKPROC 21 - 22 HH_28 28 - 28 HH_29 29 - 29 HH_30 30 - 31 HH_33 33 - 33
      HH_36 36 - 36 HH_37 37 - 37 HH_38 $ 38 - 41 HH_42 42 - 42 HH_43 43 - 43
      HH_44 44 - 44 HH_45 45 - 45 HH_46 46 - 48 HH_49 49 - 49 HH_50 50 - 50
      HH_51 51 - 51 HH_52 52 - 53 HH_54 54 - 55 HH_56 56 - 57 HH_58 58 - 59
      HH_60 60 - 61 HH_62 62 - 63 HH_64 64 - 65 HH_66 66 - 67 HH_68 68 - 69
      HH_70 70 - 71 HH_72 72 - 73 HH_74 74 - 75 HH_76 76 - 77 HH_78 78 - 79
      HH_80 80 - 81 HH_82 82 - 83 HH_84 84 - 85 HH_86 86 - 86 HH_87 87 - 87
      HH_88 88 - 88 HH_89 89 - 89 HH_90 90 - 90 HH_91 91 - 91 HH_92 92 - 92
      HH_93 93 - 93 HH_94 94 - 94 HH_95 95 - 95 HH_96 $ 96 - 97 HH_98 $ 98 - 99
      HH_178 178 - 178 HH_179 179 - 180 HH_181 181 - 181 WTFQ 188 - 193 .1 ;

   WTFA_HH=WTFQ/4;

   * DEFINE VARIABLE LABELS;
   LABEL HH_1="SAMPLE - RECODE OF CENSUS CODE" HH_2="YEAR OF COLLECTION OF DATA"
      PSUNUMR="RANDOM RECODES OF PSU" WEEKCEN="WEEK - CENSUS CODE" SEGNUM=
      "SEGMENT NUMBER" HHNUM="HOUSEHOLD NUMBER" RECTYPE="RECORD TYPE (1)" HH_17=
      "CENSUS WEEK RECODE" QUARTER="PROCESSING QUARTER CODE" YEAR=
      "PROCESSING YEAR" WEEKPROC="PROCESSING WEEK CODE" HH_28="PSU RECODE" HH_29
      ="REGION" HH_30="TABULATION AREA" HH_33="GEOGRAPHIC IDENTIFICATION" HH_36=
      "SMSA - NON-SMSA RESIDENCE" HH_37="TYPE OF LIVING QUARTERS" HH_38=
      "INTERVIEWER NUMBER" HH_42="NUMBER OF CALLS" HH_43="TELEPHONE" HH_44=
      "OBSERVED INTERVIEW" HH_45="DAY OF WEEK INTERVIEW COMPLETED" HH_46=
      "LENGTH OF INTERVIEW" HH_49="TIME OF DAY OF INTERVIEW" HH_50=
      "COMPLETED INTERVIEW" HH_51="NONINTERVIEW REASON - TYPE A" HH_52=
      "SPECIAL DWELLING PLACE" HH_54="NUMBER OF FAMILIES IN THE HOUSEHOLD" HH_56
      ="NUMBER OF UNRELATED INDIVIDUALS" HH_58=
      "NUMBER OF PERSONS IN THE HOUSEHOLD" HH_60=
      "NUMBER OF CONDITIONS IN THE HOUSEHOLD" HH_62=
      "NUMBER OF HOSPITAL EPISODES" HH_64="NUMBER OF DOCTOR VISITS" HH_66=
      "SIZE OF FAMILY - PRIMARY FAMILY" HH_68=
      "SIZE OF FAMILY - SECONDARY FAMILY 1" HH_70=
      "SIZE OF FAMILY - SECONDARY FAMILY 2" HH_72=
      "SIZE OF FAMILY - SECONDARY FAMILY 3" HH_74=
      "SIZE OF FAMILY - SECONDARY FAMILY 4" HH_76=
      "SIZE OF FAMILY - SECONDARY FAMILY 5" HH_78=
      "SIZE OF FAMILY - SECONDARY FAMILY 6" HH_80=
      "SIZE OF FAMILY - SECONDARY FAMILY 7" HH_82=
      "SIZE OF FAMILY - SECONDARY FAMILY 8" HH_84=
      "SIZE OF FAMILY - SECONDARY FAMILY 9" HH_86=
      "HEAD PRESENT - PRIMARY FAMILY" HH_87="HEAD PRESENT - SECONDARY FAMILY 1"
      HH_88="HEAD PRESENT - SECONDARY FAMILY 2" HH_89=
      "HEAD PRESENT - SECONDARY FAMILY 3" HH_90=
      "HEAD PRESENT - SECONDARY FAMILY 4" HH_91=
      "HEAD PRESENT - SECONDARY FAMILY 5" HH_92=
      "HEAD PRESENT - SECONDARY FAMILY 6" HH_93=
      "HEAD PRESENT - SECONDARY FAMILY 7" HH_94=
      "HEAD PRESENT - SECONDARY FAMILY 8" HH_95=
      "HEAD PRESENT - SECONDARY FAMILY 9" HH_96=
      "MONTH OF COMPLETION OF INTERVIEW" HH_98="DAY OF COMPLETION" HH_178=
      "X-RAY" HH_179="TYPE OF HEATING UNIT" HH_181="TYPE OF AIR CONDITIONING"
      WTFQ="BASIC WEIGHT XXXXX,X" ;

   * ASSOCIATE VARIABLES WITH FORMAT VALUES;
   FORMAT HH_1 HHD001X. HH_2 HHD002X. PSUNUMR $HHD003X. WEEKCEN HHD004X. SEGNUM
      $HHD005X. HHNUM $HHD006X. RECTYPE HHD007X. HH_17 HHD008X. QUARTER HHD009X.
      YEAR HHD010X. WEEKPROC HHD011X. HH_28 HHD012X. HH_29 HHD013X. HH_30
      HHD014X. HH_33 HHD015X. HH_36 HHD016X. HH_37 HHD017X. HH_38 $HHD018X.
      HH_42 HHD019X. HH_43 HHD020X. HH_44 HHD021X. HH_45 HHD022X. HH_46 HHD023X.
      HH_49 HHD024X. HH_50 HHD025X. HH_51 HHD026X. HH_52 HHD027X. HH_54 HHD028X.
      HH_56 HHD029X. HH_58 HHD030X. HH_60 HHD031X. HH_62 HHD032X. HH_64 HHD033X.
      HH_66 HHD034X. HH_68 HHD035X. HH_70 HHD036X. HH_72 HHD037X. HH_74 HHD038X.
      HH_76 HHD039X. HH_78 HHD040X. HH_80 HHD041X. HH_82 HHD042X. HH_84 HHD043X.
      HH_86 HHD044X. HH_87 HHD045X. HH_88 HHD046X. HH_89 HHD047X. HH_90 HHD048X.
      HH_91 HHD049X. HH_92 HHD050X. HH_93 HHD051X. HH_94 HHD052X. HH_95 HHD053X.
      HH_96 $HHD054X. HH_98 $HHD055X. HH_178 HHD056X. HH_179 HHD057X. HH_181
      HHD058X. WTFQ HHD059X. ;

PROC CONTENTS DATA=NHIS.HOUSEHLD;

PROC FREQ DATA=NHIS.HOUSEHLD;

   TITLE1 'FREQUENCY REPORT FOR 1970 NHIS HOUSEHOLD FILE';

   TITLE2 '(WEIGHTED)';

   TABLES RECTYPE/LIST MISSING;

   WEIGHT WTFA_HH;

PROC FREQ DATA=NHIS.HOUSEHLD;

   TITLE1 'FREQUENCY REPORT FOR 1970 NHIS HOUSEHOLD FILE';

   TITLE2 '(UNWEIGHTED)';

   TABLES RECTYPE/LIST MISSING;

   * USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE

              STATEMENT: FORMAT _ALL_;
RUN;
