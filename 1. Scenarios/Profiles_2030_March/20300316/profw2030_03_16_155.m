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
	3.8199 51.6147 93.335 118.1534 14.7602 32.744 30.1815 18.155 27.559 29.5544 54.6308 81.4984 122.6953 68.0874 205.9723 77.5989 96.2801 102.0282 88.1756 73.9602 10.0605 76.4026 74.2258 86.4716 101.0922 71.2222 13.1736 1279.1476 804.8254 804.8254 639.0064 112.8214 293.9188 190.3739 213.4631 343.3922 1273.0799 246.2626 471.4722 270.7827 113.8211 363.2398 199.3438 276.398 1286.3412;
	3.7731 50.9827 93.4817 116.7958 14.473 32.7135 26.6703 17.9414 26.3612 30.3688 56.1362 83.7442 126.0764 67.6141 200.5874 75.5701 93.7629 99.3607 85.7873 73.7061 8.8901 76.3315 73.0422 86.2901 100.1898 70.2817 13.2092 1281.4134 806.8306 806.8306 679.2824 108.5169 285.9576 189.7197 211.9793 344.2477 1246.0236 246.97 475.132 268.3656 113.155 362.9016 193.4945 271.6694 1259.0031;
	3.7652 50.8762 91.5982 119.4477 14.3328 34.3378 21.7645 17.4878 25.8828 30.3299 56.0643 83.6369 125.9149 65.5818 200.3357 75.4753 93.6453 99.2361 89.8483 72.8323 7.2548 80.1215 72.2673 86.9189 98.9773 73.1722 13.19 1301.3277 791.1796 791.1796 673.7959 100.1565 299.4943 187.4706 205.6079 337.57 1274.7797 230.0212 438.9338 265.1177 115.575 380.9204 198.3961 266.3256 1288.0587;
	3.6476 49.2877 92.1418 119.2744 14.1549 33.4964 22.4347 17.3659 25.7983 30.6011 56.5656 84.3847 127.0407 67.2264 201.1448 75.7801 94.0235 99.6368 89.0991 73.1685 7.4782 78.1583 72.4948 87.8256 100.3913 71.0903 12.8406 1326.2759 783.4194 783.4194 670.2847 104.5089 296.997 188.336 210.7638 334.259 1279.1925 244.9448 427.063 268.9054 118.2473 371.587 162.2488 263.5392 1292.5175;
	3.733 50.4404 93.7949 119.9241 14.4934 34.3649 30.2453 18.0808 26.12 31.0666 57.4262 85.6686 128.9735 67.1215 200.7434 75.6289 93.8359 99.438 88.6991 73.4636 10.0818 80.1848 74.7617 88.9698 103.2694 74.3758 13.3323 1291.8726 776.9666 776.9666 714.5997 103.3101 295.6637 189.0956 210.4349 331.5058 1264.8538 240.7558 455.462 276.6145 122.2578 381.2212 196.0138 274.5984 1278.0293;
	3.6408 49.1948 94.3323 120.1723 14.3974 34.3679 29.2917 18.4747 26.5484 30.2253 55.871 83.3486 125.4808 68.5797 199.2991 75.0848 93.1607 98.7226 89.802 71.095 9.7639 80.1917 73.7383 89.6216 103.7254 74.4084 13.3123 1258.2024 779.4164 779.4164 715.1475 102.4042 299.34 182.9988 215.0066 332.551 1211.4598 243.3343 447.428 277.8359 121.0128 381.2542 187.4326 274.03 1224.0792;
	3.6307 49.0588 93.7258 120.4931 14.6609 34.4369 30.3129 18.2909 26.9698 29.8654 55.2057 82.3561 123.9867 68.599 193.6484 72.9559 90.5194 95.9235 88.9544 71.1921 10.1043 80.3527 73.343 89.606 104.0222 73.2917 13.3203 1290.7841 769.3954 769.3954 693.6725 101.1597 296.5147 183.2486 215.0672 328.2754 1262.1532 265.8103 445.9985 278.6308 121.2109 382.0196 171.8584 266.2496 1275.3007;
	3.7453 50.6069 92.6488 120.59 15.0221 34.7105 29.912 18.1364 27.3108 29.8754 55.2242 82.3837 124.0282 69.4908 196.7292 74.1166 91.9595 97.4496 89.1334 70.1314 9.9707 80.9913 73.205 89.2284 101.1875 70.3531 13.2228 1328.4346 786.6557 786.6557 728.6831 105.0636 297.1113 180.5184 217.8631 335.6398 1313.8152 290.3038 453.2804 271.0379 118.448 385.0556 183.0391 277.532 1327.5008;
	3.7731 50.9834 93.7063 120.5159 15.1311 34.4354 31.5218 17.846 27.484 30.4556 56.2968 83.9837 126.4371 68.2214 196.9954 74.2169 92.0839 97.5814 89.2167 70.6901 10.5073 80.3493 73.8196 89.5954 103.8378 72.8911 12.8761 1324.5531 810.8553 810.8553 780.4033 115.655 297.3891 181.9564 213.8834 345.9649 1330.4206 324.1934 460.6417 278.1369 122.8413 382.0035 209.6772 276.385 1344.2792;
	3.6939 49.9133 93.5437 120.4338 15.013 33.7966 26.1455 18.485 26.4168 29.4323 54.4051 81.1617 122.1884 68.1643 195.1405 73.5181 91.2169 96.6626 86.3387 69.3496 8.7152 78.8588 73.9186 89.9687 104.9953 75.4305 13.4288 1326.4368 811.4529 811.4529 771.1924 117.6566 287.7956 178.506 213.7042 346.2199 1315.6641 335.3425 454.2462 281.2375 123.3409 374.9175 209.0615 281.3634 1329.369;
	3.6148 48.8436 88.8853 118.4025 14.6715 32.5417 27.6757 18.2464 26.094 28.7478 53.1399 79.2743 119.347 67.7244 194.9925 73.4623 91.1476 96.5893 86.4288 70.5175 9.2252 75.9307 71.0788 88.8018 103.2968 74.3229 13.5031 1352.5265 808.847 808.847 790.4572 117.3082 288.0959 181.5123 212.3252 345.1081 1347.1507 340.6914 444.9889 276.6879 123.955 360.9963 204.9048 271.4997 1361.1835;
	3.6839 49.7773 91.9426 118.8651 14.8705 33.3727 27.3883 18.3762 26.5708 24.0833 44.5176 66.4115 99.9821 67.9562 190.8728 71.9102 89.222 94.5486 87.2965 66.6061 9.1294 77.8697 71.2473 88.8582 104.3923 72.5265 13.4872 1323.41 819.6078 819.6078 801.1253 116.2743 290.9882 171.4443 213.0519 349.6993 1342.452 345.0683 463.5862 279.6223 123.9301 370.2146 211.7336 264.5229 1356.4358;
	3.8318 51.7763 93.6671 118.9244 15.1573 34.0946 27.2482 18.9495 26.7294 28.105 51.9517 77.5017 116.6783 67.4903 192.4973 72.5222 89.9813 95.3533 88.3755 66.7846 9.0827 79.554 70.7287 86.9069 105.3323 75.4666 13.9818 1322.7231 818.3179 818.3179 775.1991 116.9748 294.5849 171.9037 211.5912 349.149 1332.4168 348.1173 452.9684 282.1402 123.7414 378.2226 212.2022 281.4141 1346.2962;
	3.8005 51.3527 94.6212 120.3862 15.0754 33.6891 24.4036 19.1136 26.6634 28.8523 53.333 79.5624 119.7807 67.1298 191.8596 72.282 89.6832 95.0374 87.8598 69.3029 8.1345 78.6079 73.5699 89.6691 106.5815 76.1953 14.1664 1307.5455 810.0779 810.0779 765.0594 117.4822 292.8658 178.386 210.4611 345.6332 1335.3369 334.6842 435.152 285.4862 121.251 373.7246 204.2746 284.0393 1349.2467;
	3.7346 50.463 93.1577 118.9365 14.5553 33.6616 20.5919 18.946 26.0175 29.0255 53.6531 80.0399 120.4996 65.5814 189.8978 71.5429 88.7662 94.0656 88.0427 68.0976 6.864 78.5437 74.8728 89.7002 105.8823 76.2202 14.1572 1260.8357 779.2624 779.2624 736.1322 113.9244 293.4755 175.2833 205.6066 332.4853 1288.4474 326.6192 434.1332 283.6133 121.6283 373.4191 198.7518 283.3637 1301.8688;
	3.7682 50.9163 92.7165 117.6269 14.4076 33.1356 22.045 18.4844 25.9672 25.9905 48.0431 71.6708 107.9 64.8432 175.8173 66.2381 82.1844 87.0909 90.1013 68.2594 7.3483 77.3163 69.6621 88.7481 105.0213 75.1952 13.7858 1245.9212 778.9753 778.9753 712.4134 114.6095 300.3377 175.6999 203.2921 332.3628 1252.7589 341.7384 440.8005 281.3071 117.4731 367.5839 197.1326 284.1897 1265.8085;
	3.6974 49.9596 90.3845 110.4471 14.1767 31.2669 20.2133 18.1942 25.4637 23.1293 42.7541 63.7807 96.0215 64.3052 188.7004 71.0918 88.2064 93.4725 87.772 67.0089 6.7378 72.956 69.2156 87.0687 104.2118 62.4813 13.0483 1173.8697 674.8336 674.8336 567.4918 103.3979 292.5733 172.4812 201.6056 287.929 1139.1681 316.7761 433.4078 279.1387 112.0209 346.8536 188.5364 254.4986 1151.0344;
	3.7476 50.6381 89.8523 105.5192 14.2407 29.5397 18.1355 13.4319 26.2594 27.1672 50.2182 74.9157 112.7851 65.6074 187.1106 70.4928 87.4633 92.685 90.7926 65.7391 6.0452 68.9261 73.1805 84.7132 101.1323 68.972 9.8797 1148.5164 639.0611 639.0611 557.717 105.3294 302.642 169.2127 205.688 272.6661 1173.4891 283.9986 438.7687 270.8901 111.1517 327.6942 177.5019 235.2884 1185.713;
	3.6427 49.2211 76.7308 90.4633 14.0337 23.9821 15.0015 7.6196 25.9358 27.3149 50.4913 75.323 113.3984 66.6752 179.2793 67.5424 83.8027 88.8058 89.7108 66.8852 5.0005 55.9582 72.086 82.3147 92.1547 54.2498 6.1591 1183.423 655.0119 655.0119 581.9019 101.8829 299.036 172.1626 209.0358 279.4718 1187.0004 283.4594 437.0121 246.8428 99.8575 266.0412 125.6856 212.5277 1199.365;
	2.8049 37.9001 74.4582 59.1675 14.3755 22.1303 24.1385 9.2571 26.1162 28.6518 52.9624 79.0095 118.9484 68.0981 184.9466 69.6775 86.4518 91.6131 85.4539 69.2534 8.0462 51.6373 72.9951 83.9018 89.0542 43.1119 7.3134 1191.2806 705.5216 705.5216 623.4263 102.1852 284.8463 178.2585 213.4967 301.0225 1168.6335 291.1716 405.1595 238.5381 102.465 245.4983 100.4318 186.8461 1180.8067;
	2.156 29.1328 72.4207 58.3379 13.9102 10.7882 24.0629 9.708 25.8846 28.2307 52.184 77.8483 117.2002 66.1169 183.7144 69.2133 85.8758 91.0027 84.2806 67.4148 8.021 25.1726 72.7182 82.3618 80.0959 50.6114 8.6892 1138.3612 693.2856 693.2856 611.8484 101.3595 280.9354 173.5258 207.2855 295.8019 1128.957 267.8222 432.3319 214.5425 99.9249 119.6775 64.7443 162.0506 1140.7169;
	2.1048 28.4399 76.8369 79.4387 14.3279 14.687 23.5039 11.5602 26.4071 28.0394 51.8303 77.3207 116.4058 68.5406 187.8394 70.7674 87.804 93.046 87.2532 67.9009 7.8346 34.2696 73.267 83.0317 96.6096 63.9262 10.0322 1089.6022 680.4275 680.4275 626.0865 100.3245 290.8442 174.7771 214.8842 290.3157 1090.1838 265.7667 442.3631 258.7758 114.3315 162.9273 63.1526 182.0465 1101.5399;
	2.8365 38.3275 81.7806 85.2774 14.5126 18.0185 22.2195 14.2421 26.3025 28.0029 51.763 77.2203 116.2547 68.7943 185.9473 70.0546 86.9195 92.1088 88.4835 70.7418 7.4065 42.0432 72.1989 87.3124 98.5327 67.9767 9.9253 975.9772 732.2386 732.2386 672.2615 106.9781 294.9451 182.0896 215.6793 312.4218 1081.6919 277.8614 436.2622 263.9268 121.0982 199.8855 73.4754 212.5712 1092.9595;
	2.9794 40.2578 83.4663 75.3968 14.0757 20.9286 19.4928 9.9469 26.0386 27.7424 51.2814 76.5018 115.173 67.0287 183.3704 69.0837 85.715 90.8323 85.3846 70.6319 6.4976 48.8334 72.2552 84.8021 88.2 63.3725 6.3392 850.6393 631.3633 631.3633 586.4488 107.617 284.6155 181.8068 210.1441 269.3817 882.2174 257.7504 418.2379 236.25 113.9234 232.168 89.9692 224.6997 891.4072;
];
