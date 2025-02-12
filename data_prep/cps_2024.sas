/* This code is for documentation of the record layout for
the ASCII replicate weight code for the 2024 ASEC Data
*/

filename link
'CPS_ASEC_ASCII_REPWGT_2024.DAT';

filename replist
'CPS_ASEC_ASCII_REPWGT_2024.LST';

* Add SAS library;
libname sas '.';

data sas.repwgt_2024;
   infile link lrecl=1456;
   input
      @1  pwwgt0 f9.4
      @10  pwwgt1 f9.4
      @19  pwwgt2 f9.4
      @28  pwwgt3 f9.4
      @37  pwwgt4 f9.4
      @46  pwwgt5 f9.4
      @55  pwwgt6 f9.4
      @64  pwwgt7 f9.4
      @73  pwwgt8 f9.4
      @82  pwwgt9 f9.4
      @91  pwwgt10 f9.4
      @100  pwwgt11 f9.4
      @109  pwwgt12 f9.4
      @118  pwwgt13 f9.4
      @127  pwwgt14 f9.4
      @136  pwwgt15 f9.4
      @145  pwwgt16 f9.4
      @154  pwwgt17 f9.4
      @163  pwwgt18 f9.4
      @172  pwwgt19 f9.4
      @181  pwwgt20 f9.4
      @190  pwwgt21 f9.4
      @199  pwwgt22 f9.4
      @208  pwwgt23 f9.4
      @217  pwwgt24 f9.4
      @226  pwwgt25 f9.4
      @235  pwwgt26 f9.4
      @244  pwwgt27 f9.4
      @253  pwwgt28 f9.4
      @262  pwwgt29 f9.4
      @271  pwwgt30 f9.4
      @280  pwwgt31 f9.4
      @289  pwwgt32 f9.4
      @298  pwwgt33 f9.4
      @307  pwwgt34 f9.4
      @316  pwwgt35 f9.4
      @325  pwwgt36 f9.4
      @334  pwwgt37 f9.4
      @343  pwwgt38 f9.4
      @352  pwwgt39 f9.4
      @361  pwwgt40 f9.4
      @370  pwwgt41 f9.4
      @379  pwwgt42 f9.4
      @388  pwwgt43 f9.4
      @397  pwwgt44 f9.4
      @406  pwwgt45 f9.4
      @415  pwwgt46 f9.4
      @424  pwwgt47 f9.4
      @433  pwwgt48 f9.4
      @442  pwwgt49 f9.4
      @451  pwwgt50 f9.4
      @460  pwwgt51 f9.4
      @469  pwwgt52 f9.4
      @478  pwwgt53 f9.4
      @487  pwwgt54 f9.4
      @496  pwwgt55 f9.4
      @505  pwwgt56 f9.4
      @514  pwwgt57 f9.4
      @523  pwwgt58 f9.4
      @532  pwwgt59 f9.4
      @541  pwwgt60 f9.4
      @550  pwwgt61 f9.4
      @559  pwwgt62 f9.4
      @568  pwwgt63 f9.4
      @577  pwwgt64 f9.4
      @586  pwwgt65 f9.4
      @595  pwwgt66 f9.4
      @604  pwwgt67 f9.4
      @613  pwwgt68 f9.4
      @622  pwwgt69 f9.4
      @631  pwwgt70 f9.4
      @640  pwwgt71 f9.4
      @649  pwwgt72 f9.4
      @658  pwwgt73 f9.4
      @667  pwwgt74 f9.4
      @676  pwwgt75 f9.4
      @685  pwwgt76 f9.4
      @694  pwwgt77 f9.4
      @703  pwwgt78 f9.4
      @712  pwwgt79 f9.4
      @721  pwwgt80 f9.4
      @730  pwwgt81 f9.4
      @739  pwwgt82 f9.4
      @748  pwwgt83 f9.4
      @757  pwwgt84 f9.4
      @766  pwwgt85 f9.4
      @775  pwwgt86 f9.4
      @784  pwwgt87 f9.4
      @793  pwwgt88 f9.4
      @802  pwwgt89 f9.4
      @811  pwwgt90 f9.4
      @820  pwwgt91 f9.4
      @829  pwwgt92 f9.4
      @838  pwwgt93 f9.4
      @847  pwwgt94 f9.4
      @856  pwwgt95 f9.4
      @865  pwwgt96 f9.4
      @874  pwwgt97 f9.4
      @883  pwwgt98 f9.4
      @892  pwwgt99 f9.4
      @901  pwwgt100 f9.4
      @910  pwwgt101 f9.4
      @919  pwwgt102 f9.4
      @928  pwwgt103 f9.4
      @937  pwwgt104 f9.4
      @946  pwwgt105 f9.4
      @955  pwwgt106 f9.4
      @964  pwwgt107 f9.4
      @973  pwwgt108 f9.4
      @982  pwwgt109 f9.4
      @991  pwwgt110 f9.4
      @1000  pwwgt111 f9.4
      @1009  pwwgt112 f9.4
      @1018  pwwgt113 f9.4
      @1027  pwwgt114 f9.4
      @1036  pwwgt115 f9.4
      @1045  pwwgt116 f9.4
      @1054  pwwgt117 f9.4
      @1063  pwwgt118 f9.4
      @1072  pwwgt119 f9.4
      @1081  pwwgt120 f9.4
      @1090  pwwgt121 f9.4
      @1099  pwwgt122 f9.4
      @1108  pwwgt123 f9.4
      @1117  pwwgt124 f9.4
      @1126  pwwgt125 f9.4
      @1135  pwwgt126 f9.4
      @1144  pwwgt127 f9.4
      @1153  pwwgt128 f9.4
      @1162  pwwgt129 f9.4
      @1171  pwwgt130 f9.4
      @1180  pwwgt131 f9.4
      @1189  pwwgt132 f9.4
      @1198  pwwgt133 f9.4
      @1207  pwwgt134 f9.4
      @1216  pwwgt135 f9.4
      @1225  pwwgt136 f9.4
      @1234  pwwgt137 f9.4
      @1243  pwwgt138 f9.4
      @1252  pwwgt139 f9.4
      @1261  pwwgt140 f9.4
      @1270  pwwgt141 f9.4
      @1279  pwwgt142 f9.4
      @1288  pwwgt143 f9.4
      @1297  pwwgt144 f9.4
      @1306  pwwgt145 f9.4
      @1315  pwwgt146 f9.4
      @1324  pwwgt147 f9.4
      @1333  pwwgt148 f9.4
      @1342  pwwgt149 f9.4
      @1351  pwwgt150 f9.4
      @1360  pwwgt151 f9.4
      @1369  pwwgt152 f9.4
      @1378  pwwgt153 f9.4
      @1387  pwwgt154 f9.4
      @1396  pwwgt155 f9.4
      @1405  pwwgt156 f9.4
      @1414  pwwgt157 f9.4
      @1423  pwwgt158 f9.4
      @1432  pwwgt159 f9.4
      @1441  pwwgt160 f9.4
      @1450 h_seq f5.0
      @1455 pppos $char2.;
run;

/* SUM of Weights for Verification:

All replicate weights, PWWGT0 - PWWGT160, should
be slightly different due to the inclusion of Armed Forces
members in the ASEC estimates.  Use these totals to
verify that your file is created correctly.

   PWWGT0 =     332382477.1839
   PWWGT1 =     332390088.9758
   PWWGT2 =     332413597.8742
   PWWGT3 =     332405522.2854
   PWWGT4 =     332392208.5933
   PWWGT5 =     332355358.7332
   PWWGT6 =     332407468.2786
   PWWGT7 =     332345183.0081
   PWWGT8 =     332411577.8501
   PWWGT9 =     332413375.9308
   PWWGT10 =    332408134.8161
   PWWGT11 =    332348508.0341
   PWWGT12 =    332403062.5882
   PWWGT13 =    332468550.4233
   PWWGT14 =    332324641.9746
   PWWGT15 =    332397858.1243
   PWWGT16 =    332387033.0202
   PWWGT17 =    332411770.1307
   PWWGT18 =    332392118.8436
   PWWGT19 =    332311609.3911
   PWWGT20 =    332374742.7876
   PWWGT21 =    332410459.8160
   PWWGT22 =    332399826.4564
   PWWGT23 =    332366366.4074
   PWWGT24 =    332344997.9592
   PWWGT25 =    332404965.1130
   PWWGT26 =    332357970.8862
   PWWGT27 =    332406287.6350
   PWWGT28 =    332355693.7189
   PWWGT29 =    332398280.0223
   PWWGT30 =    332388185.2945
   PWWGT31 =    332409280.1120
   PWWGT32 =    332442004.1986
   PWWGT33 =    332353036.8283
   PWWGT34 =    332383205.1239
   PWWGT35 =    332385892.5417
   PWWGT36 =    332442196.9690
   PWWGT37 =    332275370.5589
   PWWGT38 =    332388371.3680
   PWWGT39 =    332423669.8928
   PWWGT40 =    332404679.4456
   PWWGT41 =    332412076.3893
   PWWGT42 =    332355768.1233
   PWWGT43 =    332375617.4290
   PWWGT44 =    332363555.2793
   PWWGT45 =    332369548.0967
   PWWGT46 =    332390102.2345
   PWWGT47 =    332399029.3323
   PWWGT48 =    332347310.5014
   PWWGT49 =    332343045.0841
   PWWGT50 =    332400570.2308
   PWWGT51 =    332277712.8672
   PWWGT52 =    332365304.0146
   PWWGT53 =    332450076.6558
   PWWGT54 =    332354081.4966
   PWWGT55 =    332418693.5924
   PWWGT56 =    332384792.7359
   PWWGT57 =    332393561.7489
   PWWGT58 =    332408959.5882
   PWWGT59 =    332341495.1826
   PWWGT60 =    332399141.0593
   PWWGT61 =    332356136.8373
   PWWGT62 =    332388712.7765
   PWWGT63 =    332391780.9843
   PWWGT64 =    332395143.5792
   PWWGT65 =    332428066.0518
   PWWGT66 =    332311386.0590
   PWWGT67 =    332369034.5602
   PWWGT68 =    332395348.0858
   PWWGT69 =    332417432.5754
   PWWGT70 =    332375001.7026
   PWWGT71 =    332464604.8799
   PWWGT72 =    332370212.5516
   PWWGT73 =    332299978.6351
   PWWGT74 =    332379008.4413
   PWWGT75 =    332373904.1683
   PWWGT76 =    332311522.9727
   PWWGT77 =    332445862.4678
   PWWGT78 =    332396758.0765
   PWWGT79 =    332398189.8709
   PWWGT80 =    332359113.4892
   PWWGT81 =    332362207.7848
   PWWGT82 =    332368784.3573
   PWWGT83 =    332386669.0453
   PWWGT84 =    332397431.6966
   PWWGT85 =    332430129.6251
   PWWGT86 =    332408788.9623
   PWWGT87 =    332383081.3636
   PWWGT88 =    332327410.4853
   PWWGT89 =    332436795.1998
   PWWGT90 =    332438228.3222
   PWWGT91 =    332316614.2254
   PWWGT92 =    332390063.8767
   PWWGT93 =    332417656.0564
   PWWGT94 =    332385386.9534
   PWWGT95 =    332423762.0083
   PWWGT96 =    332375950.7308
   PWWGT97 =    332353472.2622
   PWWGT98 =    332436605.9018
   PWWGT99 =    332361328.0069
   PWWGT100 =   332350441.2832
   PWWGT101 =   332411842.7547
   PWWGT102 =   332428864.0469
   PWWGT103 =   332451635.8275
   PWWGT104 =   332382213.2046
   PWWGT105 =   332381380.4418
   PWWGT106 =   332395144.2850
   PWWGT107 =   332342167.5300
   PWWGT108 =   332416151.3849
   PWWGT109 =   332294175.5830
   PWWGT110 =   332305389.0305
   PWWGT111 =   332358563.1356
   PWWGT112 =   332363361.9186
   PWWGT113 =   332376137.0043
   PWWGT114 =   332393167.0393
   PWWGT115 =   332357213.1059
   PWWGT116 =   332436501.8926
   PWWGT117 =   332408549.0641
   PWWGT118 =   332348199.5690
   PWWGT119 =   332375158.8477
   PWWGT120 =   332418374.7549
   PWWGT121 =   332346437.2918
   PWWGT122 =   332381161.7634
   PWWGT123 =   332416144.4642
   PWWGT124 =   332423689.9042
   PWWGT125 =   332440272.6627
   PWWGT126 =   332407604.5025
   PWWGT127 =   332336223.1426
   PWWGT128 =   332385864.2047
   PWWGT129 =   332392903.5608
   PWWGT130 =   332396115.1347
   PWWGT131 =   332396609.1015
   PWWGT132 =   332443949.2603
   PWWGT133 =   332404016.8347
   PWWGT134 =   332259705.2773
   PWWGT135 =   332363834.3508
   PWWGT136 =   332339788.7384
   PWWGT137 =   332345459.2446
   PWWGT138 =   332406137.5768
   PWWGT139 =   332427079.3601
   PWWGT140 =   332299226.3547
   PWWGT141 =   332446566.2662
   PWWGT142 =   332393896.1895
   PWWGT143 =   332375261.0337
   PWWGT144 =   332315760.9705
   PWWGT145 =   332338427.6372
   PWWGT146 =   332352866.5459
   PWWGT147 =   332449463.5664
   PWWGT148 =   332381833.5245
   PWWGT149 =   332396009.3929
   PWWGT150 =   332360643.1825
   PWWGT151 =   332397076.0167
   PWWGT152 =   332310798.3223
   PWWGT153 =   332332216.2986
   PWWGT154 =   332442245.0663
   PWWGT155 =   332374802.6676
   PWWGT156 =   332401261.1716
   PWWGT157 =   332416344.7430
   PWWGT158 =   332401946.1700
   PWWGT159 =   332365717.6072
   PWWGT160 =   332410744.3955
*/

%macro total;
data _null_;
   retain tot_pwwgt0-tot_pwwgt160 0;
   set sas.repwgt_2024 end = last;
   %do i = 0 %to 160;
      tot_pwwgt&i + pwwgt&i;
   %end;
   if last then do;
      file replist;
      put 'Sum of replicate weights';
      put;
      %do i = 0 %to 160;
          put "   PWWGT&i = " @16 tot_pwwgt&i f15.4;
      %end;
   end;
run;
%mend total;
%total;
