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
	3.6681 49.5639 90.679 114.8157 14.892 14.794 16.6144 17.7893 28.0103 24.517 45.3193 67.6074 101.7826 6.1806 18.6298 7.0187 8.7084 9.2283 14.2124 26.4743 5.5381 34.5193 60.9638 87.9593 101.3416 69.1169 8.1139 677.1364 419.4331 419.4331 229.8316 39.0685 47.3745 68.1449 19.377 178.9581 539.3147 61.15 321.4832 271.4506 9.3365 164.1144 118.5075 214.9697 544.9326;
	3.5562 48.0525 90.5007 116.0143 14.7937 15.7228 14.6778 16.9619 26.4415 24.2865 44.8932 66.9718 100.8257 5.0225 7.4552 2.8087 3.4849 3.6929 11.8607 9.0513 4.8926 36.6865 65.1241 88.4415 101.5909 71.1982 7.2457 673.9352 378.381 378.381 186.9494 32.4494 39.5355 23.2981 15.7462 161.4425 502.4297 52.2871 304.7701 272.1185 8.7943 174.4183 108.4922 210.7235 507.6633;
	3.0551 41.2815 87.6639 110.4574 14.172 12.0799 12.7813 16.279 26.6463 23.81 44.0124 65.6579 98.8476 6.7079 15.6337 5.8899 7.3078 7.7441 20.4233 21.1652 4.2604 28.1864 69.6382 83.502 96.6336 70.8081 7.5057 585.0965 329.27 329.27 166.6279 33.0458 68.0776 54.4792 21.0301 140.4886 402.0465 39.4365 232.3795 258.8401 4.3549 134.0063 81.681 199.1572 406.2345;
	2.7361 36.9702 86.6281 104.1964 14.0528 11.2345 11.1282 15.7867 26.3324 23.8386 44.0653 65.7367 98.9662 9.4226 10.8681 4.0945 5.0802 5.3835 13.4223 21.3532 3.7094 26.2138 70.951 81.7752 96.4038 72.823 9.1576 467.9243 258.2203 258.2203 170.712 27.2801 44.7409 54.9632 29.5412 110.174 306.5517 26.4729 161.4858 258.2246 0.0 124.6277 66.966 190.3641 309.745;
	2.4122 32.5937 88.7924 112.1753 14.5345 13.0967 10.0761 17.8724 17.0343 20.9014 38.636 57.6373 86.7727 14.4992 15.2123 5.7311 7.1109 7.5354 22.0963 21.6473 3.3587 30.559 59.1174 83.8081 99.5273 72.8466 9.8932 357.0326 207.9082 207.9082 162.185 28.6748 73.6543 55.7203 45.4569 88.7075 188.9752 31.8598 152.1907 266.5909 5.1768 145.2863 72.6212 210.321 190.9437;
	3.0517 41.2352 91.2491 113.668 14.0736 20.6704 11.065 18.2794 11.0391 20.7325 38.3237 57.1715 86.0714 28.4186 16.49 6.2125 7.7081 8.1683 35.968 23.0913 3.6883 48.2309 62.6149 86.1324 100.8929 72.2678 8.5691 308.8609 202.3551 202.3551 149.8074 25.8005 119.8933 59.437 89.096 86.3382 166.7568 33.5535 184.1115 270.2488 4.5614 229.3035 80.1374 221.0876 168.4938;
	2.519 34.0377 86.5991 110.8058 14.0626 20.0618 11.8997 16.4069 12.4468 26.6152 49.1978 73.3934 110.4934 41.1238 25.1619 9.4796 11.7617 12.4639 40.9466 36.2669 3.9666 46.811 67.7314 82.9543 97.881 70.0468 10.7273 284.8841 226.5926 226.5926 120.5628 16.2067 136.4887 93.3511 128.9287 96.6795 185.2431 22.0146 148.3945 262.1811 5.5465 222.5528 85.4047 214.642 187.1727;
	1.5869 21.4423 61.7902 103.2473 14.1695 14.5469 10.6496 16.9795 16.7593 27.7179 51.236 76.4341 115.0711 43.7343 25.5961 9.6432 11.9647 12.679 53.1195 51.8031 3.5499 33.9427 71.2544 82.6281 97.1001 71.7357 12.0192 138.2429 167.823 167.823 90.5558 9.4869 177.065 133.3414 137.1129 71.6045 106.7999 15.3215 132.3395 260.0896 0.6316 161.3731 81.2715 194.058 107.9124;
	2.6185 35.3815 75.7393 93.8943 13.5475 21.2097 9.4803 16.4254 17.1969 28.2972 52.3069 78.0316 117.4761 47.3044 14.0489 5.2928 6.567 6.9591 63.9583 51.7051 3.1601 49.4894 71.8787 81.9774 96.003 70.2217 11.6118 127.7605 133.608 133.608 90.7119 7.5184 213.1943 133.0891 148.3057 57.0061 112.0364 18.7822 78.7331 257.1508 1.8446 235.2868 71.6919 222.9919 113.2034;
	1.8625 25.1666 76.497 96.845 10.4302 13.4406 8.3828 18.0881 20.6816 28.661 52.9794 79.0348 118.9865 45.9056 0.0 0.0 0.0 0.0 69.3073 40.9122 2.7943 31.3613 67.9755 82.153 99.3267 74.339 12.6806 260.6599 226.699 226.699 106.49 9.9636 231.0243 105.3082 143.9201 96.7249 219.3938 24.3852 0.0 266.0535 2.859 149.1006 71.0106 206.8293 221.6792;
	1.5439 20.8619 68.2861 88.9655 10.0301 23.0422 10.0136 17.7096 18.2144 27.6625 51.1337 76.2815 114.8414 51.5222 0.0 0.0 0.0 0.0 59.3526 30.9987 3.3379 53.765 66.1312 82.1064 92.4961 73.3766 11.6744 332.2759 293.2239 293.2239 149.3146 15.6316 197.8419 79.7908 161.529 125.1089 301.7563 25.8529 0.0 247.7574 8.4537 255.6143 79.6075 182.8471 304.8996;
	1.7699 23.9158 78.4903 78.54 11.1103 28.3081 14.1258 17.8182 20.9947 26.2054 48.4403 72.2634 108.7921 52.9375 0.0008 0.0003 0.0004 0.0004 68.0569 42.2271 4.7086 66.0521 68.5292 80.7545 91.3282 73.0487 11.5105 459.6399 359.2431 359.2431 282.5532 22.004 226.8562 108.6926 165.9661 153.2771 410.3987 44.7376 2.7724 244.6291 12.8013 314.0307 98.1456 187.9454 414.6737;
	2.7672 37.3907 76.2173 64.7423 10.1367 28.5129 15.752 16.8069 23.273 24.4024 45.1074 67.2914 101.3068 55.7787 36.0353 13.5761 16.8444 17.85 71.7555 53.1222 5.2507 66.5301 66.4049 79.6673 91.1387 70.5941 10.421 601.2405 425.1585 425.1585 314.6414 29.7704 239.1851 136.7366 174.8738 181.4009 558.7239 55.667 17.252 244.1216 1.0802 316.3032 119.447 208.1223 564.5439;
	3.4379 46.4538 78.6846 91.6155 13.0436 28.2478 18.1999 17.4165 24.6777 23.9552 44.2809 66.0584 99.4505 58.9991 53.1382 20.0195 24.839 26.3219 75.7854 45.0352 6.0666 65.9116 50.3018 78.1379 90.3228 70.5016 10.6552 793.1363 590.162 590.162 394.3718 32.8672 252.6181 115.9206 184.9701 251.8024 719.5828 75.5232 171.1669 241.936 0.1 313.3624 128.3435 240.2759 727.0785;
	3.5423 47.8641 73.2732 89.501 13.2867 30.7282 21.4582 17.1998 25.6646 16.6193 30.7205 45.8289 68.9952 62.9028 72.4949 27.312 33.8871 35.9103 74.418 49.0228 7.1527 71.6992 21.8826 77.0679 87.2149 69.8808 11.6653 931.4954 665.3581 665.3581 488.4323 40.2401 248.0601 126.1847 197.2087 283.8861 896.487 107.9249 298.4957 233.6114 0.0059 340.8786 152.2516 224.4485 905.8255;
	3.5937 48.5582 86.3575 98.7095 14.2234 31.6746 25.4854 17.482 25.9918 12.7012 23.478 35.0245 52.7292 62.2218 125.2077 47.1713 58.5273 62.0215 82.6509 63.2668 8.4951 73.9073 37.9669 81.9907 94.4527 69.787 12.5053 1026.3674 721.8533 721.8533 639.2113 51.6975 275.503 162.8489 195.0738 307.9908 942.6085 156.5165 329.4702 252.9982 0.3114 351.3765 169.0427 249.7998 952.4273;
	3.6298 49.047 86.8386 107.5865 14.084 31.8096 28.9065 17.3698 25.8311 11.9619 22.1114 32.9858 49.6599 63.2835 155.861 58.7197 72.856 77.2056 85.0757 69.1578 9.6355 74.2224 11.9253 84.1669 98.5478 71.3972 12.1932 1016.115 739.7168 739.7168 643.2956 86.1274 283.5858 178.0124 198.4022 315.6125 983.0298 207.3361 369.5653 263.9673 1.2148 352.8746 198.5746 268.6631 993.2697;
	3.7746 51.0027 92.05 112.7104 14.1875 32.4954 27.5817 18.0368 26.2577 7.6153 14.0767 20.9996 31.6149 65.0813 173.0993 65.2141 80.9138 85.7445 86.4333 70.9936 9.1939 75.8227 9.9092 86.0484 101.362 71.2514 13.4416 1127.3659 761.4545 761.4545 660.8108 99.944 288.111 182.7378 204.0388 324.8873 1060.5382 249.3885 428.0114 271.5053 109.4456 360.4826 200.8633 263.1295 1071.5855;
	3.7069 50.0878 89.6604 112.9151 14.1679 31.2725 29.7077 12.5626 25.0609 16.1661 29.8829 44.5794 67.114 65.3189 188.5352 71.0295 88.1293 93.3907 88.7491 72.1294 9.9026 72.9691 35.7291 85.5541 101.52 62.3489 12.7167 1237.2447 801.4506 801.4506 642.5526 106.9525 295.8302 185.6612 204.7834 341.9523 1119.6163 250.8202 421.7397 271.9286 114.4509 346.9162 204.5901 259.5896 1131.279;
	3.7845 51.1371 93.8712 112.6611 14.6995 32.9619 29.7201 9.2263 25.5109 11.2616 20.817 31.0548 46.7528 61.3818 190.603 71.8086 89.0958 94.415 85.4634 69.0561 9.9067 76.911 26.8343 45.8815 48.249 64.8027 11.4819 1221.7809 762.2819 762.2819 684.165 107.1957 284.8781 177.7505 192.4402 325.2403 1106.8325 262.0725 434.1677 129.2383 118.9796 365.6571 208.7331 242.7938 1118.362;
	3.8926 52.5982 94.1532 120.3398 14.717 33.9309 29.7323 18.9275 8.8941 16.5149 30.5276 45.5411 68.5619 60.8978 189.2998 71.3176 88.4866 93.7694 84.6058 69.404 9.9108 79.1721 22.4497 84.3347 104.4357 72.1008 13.9597 1292.2931 781.3025 781.3025 684.8394 108.5258 282.0193 178.646 190.9228 333.3558 1140.0365 260.5901 365.0242 279.7385 122.8247 376.4065 214.5686 272.4837 1151.9118;
	3.8144 51.541 91.4915 122.4268 14.4563 33.2351 30.1924 18.3319 0.0 19.8164 36.6302 54.6451 82.2679 56.6401 188.5055 71.0184 88.1154 93.376 88.074 71.9173 10.0641 77.5486 37.0929 88.7425 102.3271 72.7855 13.5473 1361.8768 809.9657 809.9657 724.1844 109.6103 293.5801 185.1154 177.5743 345.5853 1244.7661 264.4607 427.218 274.0904 122.8712 368.688 211.5696 233.8394 1257.7325;
	3.836 51.8327 93.6519 119.8776 14.5434 33.5778 30.6868 18.3523 9.6616 16.3998 30.3148 45.2237 68.084 60.5969 188.0097 70.8316 87.8836 93.1304 87.0529 69.6701 10.2289 78.3483 41.6924 88.6818 92.6262 74.6159 13.9059 1339.8878 811.7906 811.7906 718.9288 113.8089 290.1764 179.331 189.9795 346.364 1231.7947 270.5136 437.7885 248.1058 122.2806 372.4901 208.7764 256.5979 1244.6259;
	3.7926 51.2469 92.0557 117.7148 14.5062 32.8857 32.7386 18.3478 9.745 17.0195 31.4603 46.9325 70.6567 60.5068 188.3261 70.9508 88.0315 93.2871 85.03 70.1777 10.9129 76.7333 33.6828 87.9653 104.429 72.9789 13.8427 1302.0455 815.966 815.966 764.3116 114.7852 283.4334 180.6375 189.697 348.1455 1203.7655 284.9114 448.4753 279.7204 121.8577 364.812 207.2549 261.4989 1216.3047;
];
