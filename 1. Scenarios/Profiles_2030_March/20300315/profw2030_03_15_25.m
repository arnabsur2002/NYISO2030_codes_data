function windprofile = ex_wind_profilesh1
%EX_WIND_PROFILE_D  Example wind_load_nyiso profile data for deterministic unit commitment.
% 2022.03.12
% Andres F. Ramirez


%% define constants
[GEN_BUS, PG, QG, QMAX, QMIN, VG, MBASE, GEN_STATUS, PMAX, PMIN, ...
    MU_PMAX, MU_PMIN, MU_QMAX, MU_QMIN, PC1, PC2, QC1MIN, QC1MAX, ...
    QC2MIN, QC2MAX, RAMP_AGC, RAMP_10, RAMP_30, RAMP_Q, APF] = idx_gen;
[CT_LABEL, CT_PROB, CT_TABLE, CT_TBUS, CT_TGEN, CT_TBRCH, CT_TAREABUS, ...
    CT_TAREAGEN, CT_TAREABRCH, CT_ROW, CT_COL, CT_CHGTYPE, CT_REP, ...
    CT_REL, CT_ADD, CT_NEWVAL, CT_TLOAD, CT_TAREALOAD, CT_LOAD_ALL_PQ, ...
    CT_LOAD_FIX_PQ, CT_LOAD_DIS_PQ, CT_LOAD_ALL_P, CT_LOAD_FIX_P, ...
    CT_LOAD_DIS_P, CT_TGENCOST, CT_TAREAGENCOST, CT_MODCOST_F, ...
    CT_MODCOST_X] = idx_ct;

windprofile = struct( ...
    'type', 'mpcData', ...
    'table', CT_TGEN, ...
    'rows', [1:45], ...
    'col', PMAX, ...
    'chgtype', 1, ...
    'values', [] );
windprofile.values(:,1,:) = [
	3.9832 53.8211 95.4026 120.7926 15.3133 35.117 32.7414 18.5129 11.9088 16.0701 29.7053 44.3145 66.7152 53.6939 202.8813 76.4344 94.8352 100.497 86.4729 71.1198 10.9138 81.9397 10.081 90.1582 105.5995 74.8232 13.6846 1277.1283 819.6933 819.6933 753.8929 114.6868 288.2431 183.0625 168.3377 349.7358 1166.8433 268.2472 479.2882 282.8557 123.3748 389.5648 219.5261 286.5017 1178.9979;
	3.9196 52.962 95.1446 120.2457 15.2975 35.1444 33.0994 18.5537 12.8897 12.9554 23.9478 35.7255 53.7845 64.0255 199.3367 75.0989 93.1783 98.7412 89.4255 73.238 11.0331 82.0036 12.5482 89.759 105.2268 71.7418 13.1119 1286.8224 830.6046 830.6046 793.6916 119.6255 298.0851 188.5147 200.7287 354.3913 1269.9722 276.0008 478.826 281.8574 121.9273 389.8686 218.1071 283.2377 1283.2011;
	3.7505 50.6771 90.8925 115.6307 15.0344 34.9738 33.7468 18.1484 23.8722 11.5723 21.3913 31.9115 48.0427 60.8908 186.0171 70.0809 86.9522 92.1434 88.4063 70.684 11.2489 81.6055 1.5032 87.5323 101.7341 71.1505 12.896 1235.786 818.2327 818.2327 796.4497 115.7978 294.6876 181.9408 190.9009 349.1126 1253.4334 298.3024 478.1246 272.502 116.8063 387.9757 218.4726 261.7818 1266.49;
	3.6854 49.7981 91.4864 117.5585 15.0651 34.8905 32.6554 18.1394 28.1247 27.897 51.5671 76.928 115.8146 66.9353 201.6766 75.9805 94.2721 99.9003 86.2068 68.7349 10.8851 81.4111 7.2156 88.6428 100.8714 72.9224 12.8436 1244.4332 787.8384 787.8384 787.8866 112.4735 287.3559 176.9239 209.8512 336.1444 1170.4523 310.1355 470.9442 270.1911 118.3599 387.0517 192.1731 261.0906 1182.6446;
	3.0761 41.5648 90.8206 116.409 14.896 32.7127 31.747 17.6702 27.5962 29.085 53.7632 80.2042 120.7469 63.8341 198.6116 74.8258 92.8394 98.382 85.4389 69.0757 10.5823 76.3297 69.1418 87.6736 99.453 70.2521 12.7314 1194.715 734.814 734.814 737.6365 112.7111 284.7964 177.8009 200.1286 313.5206 1010.483 313.6816 457.8588 266.3919 118.8749 362.893 184.228 263.3567 1021.0089;
	3.6866 49.8144 93.7966 111.7672 15.1572 33.9418 19.6064 17.4997 26.0288 28.0581 51.865 77.3724 116.4837 49.7896 196.906 74.1832 92.0421 97.5372 54.9493 67.7167 6.5355 79.1975 62.333 89.2398 100.5565 70.8376 12.9983 1216.9738 746.6859 746.6859 691.1136 114.9642 183.1644 174.3029 156.0972 318.586 1087.6899 308.6659 445.425 269.3478 116.0253 376.5276 168.2658 269.4013 1099.02;
	3.6621 49.4832 94.0098 115.0524 15.1482 34.3128 13.526 18.226 24.7068 27.6171 51.0497 76.1561 114.6527 64.0262 193.1 72.7493 90.263 95.6518 77.6279 69.4397 4.5087 80.0632 66.5909 89.879 103.8939 73.1492 13.2386 1250.7155 749.0341 749.0341 647.4857 114.2498 258.7598 178.738 200.7308 319.5879 1104.3549 304.6685 374.4118 278.2872 117.8374 380.6434 181.5298 273.0631 1115.8586;
	3.6212 48.9309 95.1238 116.3436 15.1473 34.8364 0.002 18.1139 1.5877 27.5316 50.8917 75.9204 114.2977 43.33 194.671 73.3412 90.9974 96.43 81.6894 68.5962 0.0007 81.285 68.2989 89.8237 101.1984 74.0847 13.5194 1187.6327 710.5709 710.5709 647.9984 113.2098 272.298 176.5668 135.8454 303.1769 1063.9792 300.481 146.438 271.067 119.2276 386.4519 197.6272 272.1197 1075.0623;
	3.6665 49.5419 94.8707 117.2662 15.2003 32.8943 0.5138 18.1197 7.4198 28.1881 52.1052 77.7308 117.0232 25.4528 179.8243 67.7478 84.0574 89.0758 84.7079 69.9393 0.1713 76.7533 70.1023 89.8456 103.428 74.8113 13.1872 1067.3067 609.5937 609.5937 646.5207 112.8885 282.3597 180.0239 79.798 260.0933 847.457 271.8265 0.6883 277.0393 118.9476 364.9073 183.7487 270.2339 856.2847;
	3.7179 50.2364 94.4042 114.8933 15.3798 30.3904 2.1445 18.1954 19.3264 25.9114 47.8969 71.4527 107.5717 23.9531 187.0568 70.4726 87.4382 92.6584 90.0146 71.377 0.7148 70.9109 53.8577 89.7268 103.8117 74.4721 12.9382 867.617 529.1699 529.1699 542.1954 112.2715 300.0486 183.7246 75.0962 225.7792 683.83 239.4002 24.8847 278.067 119.918 337.1305 157.3262 266.2073 690.9532;
	3.456 46.6985 93.7336 113.4068 15.0229 26.1827 0.293 17.6017 0.8006 28.4036 52.5036 78.325 117.9179 5.7307 190.7061 71.8474 89.144 94.466 81.3462 70.7185 0.0977 61.093 73.9785 89.6128 102.1198 72.7524 13.0785 705.2092 592.2257 592.2257 489.8858 113.3806 271.154 182.0296 17.9665 252.683 640.344 201.7863 152.8391 273.5352 118.4072 290.4534 147.4229 259.7229 647.0142;
	3.2872 44.4178 92.8092 115.8106 15.0155 20.221 1.14 17.4737 2.6301 26.3876 48.7771 72.7658 109.5486 6.5268 196.5734 74.0579 91.8866 97.3724 40.7391 72.6112 0.38 47.1823 73.3755 88.6569 100.2809 72.4753 12.9227 540.7188 657.2655 657.2655 486.082 114.9635 135.7971 186.9013 20.4625 280.4333 733.1147 200.6436 206.8701 268.6096 123.0554 224.3183 139.2178 267.0204 740.7514;
	3.804 51.4009 93.8669 116.3771 15.1383 22.9234 0.9649 17.358 24.8018 22.1218 40.8919 61.0026 91.8391 50.7303 192.2745 72.4383 89.8771 95.2429 57.5857 70.7936 0.3216 53.488 71.0808 86.3147 100.1662 72.6115 13.0775 573.1116 677.2151 677.2151 518.9364 117.0172 191.9522 182.223 159.0464 288.9451 587.3509 239.6071 278.4119 268.3022 121.9237 254.2971 147.1649 263.7317 593.4692;
	3.6922 49.8898 87.5338 111.3442 14.822 20.6563 0.0 17.3685 18.6516 20.3493 37.6153 56.1147 84.4803 38.4484 195.7261 73.7387 91.4906 96.9527 56.9868 71.876 0.0 48.198 68.8488 84.2717 96.5542 73.1855 12.9333 478.9098 672.912 672.912 499.0625 98.6289 189.9559 185.009 120.541 287.1091 649.8468 261.9334 135.1181 258.6273 118.3042 229.1468 154.7258 258.218 656.6161;
	3.7116 50.1521 87.3824 112.3217 15.0422 18.4312 0.0 17.6356 1.9058 25.1299 46.4522 69.2976 104.3272 36.0358 192.7318 72.6106 90.0909 95.4695 73.9682 70.8939 0.0 43.0061 69.0184 86.1566 98.1259 73.4619 13.1654 373.8027 676.572 676.572 470.1905 86.2725 246.5605 182.4811 112.9771 288.6707 582.0816 258.42 109.1247 262.8372 116.7938 204.4632 156.6829 237.7463 588.1449;
	3.4988 47.2771 87.9826 115.4942 14.5592 9.7849 1.2247 17.6897 3.3902 27.2832 50.4325 75.2354 113.2665 24.8121 188.1996 70.9031 87.9724 93.2245 64.933 71.4014 0.4082 22.8314 69.8597 88.5604 100.4401 72.7157 13.2587 428.3581 545.1516 545.1516 447.0063 89.4113 216.4435 183.7873 77.7893 232.598 481.3463 226.8088 55.3657 269.036 122.6065 108.5468 151.7949 237.5077 486.3603;
	3.4398 46.4797 89.2195 116.0131 14.7811 18.224 0.0 18.466 1.8386 27.6522 51.1148 76.2532 114.7987 31.7951 175.4308 66.0925 82.0037 86.8994 68.3214 68.8732 0.0 42.5227 69.3887 89.4412 103.161 73.9275 13.1924 949.3515 470.787 470.787 331.8805 88.2929 227.738 177.2797 99.682 200.8691 817.3243 232.0528 97.9158 276.324 118.0734 202.1648 129.9044 241.3955 825.8381;
	3.3976 45.9093 91.2065 118.0953 14.6173 22.5237 1.2894 18.8599 5.2577 28.9887 53.5851 79.9384 120.3469 55.3165 187.3333 70.5767 87.5674 92.7953 78.8128 69.7714 0.4298 52.5552 71.0915 89.6672 100.0156 75.4371 13.6234 1230.2957 590.4609 590.4609 244.5235 68.2326 262.7094 179.5919 173.4247 251.93 1048.907 211.9726 143.2492 267.899 121.8016 249.8624 179.1908 260.9632 1059.8331;
	2.5945 35.0571 93.9371 119.5035 14.6274 34.1974 5.0592 18.7487 10.2774 25.6131 47.3454 70.6301 106.3332 64.6288 192.9915 72.7084 90.2123 95.5981 56.7289 71.832 1.6864 79.7939 56.5677 89.4103 101.5924 75.7658 13.5112 1257.9075 714.139 714.139 319.0145 57.2645 189.0962 184.8956 202.6201 304.6993 1198.4247 137.9343 285.5197 272.1225 123.7527 379.3629 175.336 268.9865 1210.9083;
	3.9264 53.0543 94.4166 91.9407 15.1881 34.5079 10.7364 18.5377 23.8747 17.3849 32.1357 47.9401 72.1736 67.7018 201.9343 76.0776 94.3926 100.0279 49.8943 72.8203 3.5788 80.5184 48.4671 89.2604 104.7411 76.2477 13.5347 1339.8218 739.1462 739.1462 394.7233 53.1195 166.3142 187.4396 212.2544 315.3691 1238.7207 112.4718 292.7241 280.5564 123.7802 382.8073 200.1732 276.6211 1251.6241;
	3.8799 52.4263 92.6522 117.0853 15.2634 33.1514 10.7281 18.642 23.3499 15.2557 28.1999 42.0688 63.3343 62.7672 193.6805 72.968 90.5344 95.9394 69.8448 70.116 3.576 77.3532 60.7216 87.5117 102.9616 74.4796 13.4343 1314.8296 687.1647 687.1647 644.7702 45.8033 232.8159 180.4788 196.7836 293.1903 1232.1578 142.8901 66.8997 275.79 122.2117 367.7593 198.2338 278.4301 1244.9928;
	3.8085 51.4609 93.6169 115.1157 14.8166 33.2044 4.3233 18.6549 27.9359 29.8763 55.2259 82.3862 124.0319 61.1669 195.4548 73.6365 91.3638 96.8183 74.137 69.8057 1.4411 77.4769 73.2592 89.1464 103.3815 74.2487 13.5153 1310.8202 666.1941 666.1941 533.0105 69.1466 247.1235 179.6799 191.7666 284.2428 1206.6857 194.5436 416.3004 276.9149 121.4153 368.3473 199.6615 271.8869 1219.2554;
	3.817 51.5761 93.7448 118.3589 15.1615 32.5455 4.7899 18.9646 27.7774 31.0911 57.4714 85.736 129.0751 65.5089 193.6404 72.9529 90.5156 95.9196 72.1082 71.0291 1.5966 75.9394 73.387 89.599 103.9579 73.0474 13.695 1327.9335 750.8865 750.8865 594.845 105.9096 240.3605 182.8292 205.3794 320.3782 1209.6605 228.6889 444.8272 278.4587 122.7506 361.0376 198.8216 273.4652 1222.2611;
	3.882 52.454 93.6469 118.8644 15.206 33.5686 29.9863 18.7038 27.6993 29.6092 54.7322 81.6497 122.9232 65.4247 199.7709 75.2625 93.3813 98.9563 80.6754 71.6545 9.9954 78.3267 71.0451 89.3864 104.7614 72.3755 13.5697 1304.8421 730.034 730.034 576.6985 107.725 268.918 184.4388 205.1153 311.4812 1153.1604 216.8084 463.5587 280.6108 122.3412 372.3875 199.2075 274.7548 1165.1724;
];
