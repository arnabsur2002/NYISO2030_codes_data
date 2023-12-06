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
	3.7105 50.1374 88.4337 108.2047 14.1792 32.4053 26.4404 11.691 25.7841 28.7912 53.2201 79.3939 119.527 68.0951 201.1664 75.7883 94.0336 99.6475 86.2489 72.6486 8.8135 75.6123 70.7034 82.5671 91.7884 63.0746 9.2592 1184.512 812.3965 812.3965 789.0552 116.5405 287.4963 186.9978 213.4875 346.6225 1164.3018 319.646 449.7933 245.8619 113.5694 359.4826 196.4696 223.9372 1176.4299;
	3.8556 52.0978 86.5141 107.3478 14.4894 33.2494 26.8676 10.2971 25.2141 26.7223 49.3957 73.6887 110.9379 68.9548 196.9802 74.2111 92.0768 97.5739 87.8776 70.8676 8.9559 77.582 68.9742 81.4525 90.0437 59.4277 7.648 1244.4065 822.5667 822.5667 807.8153 116.4236 292.9253 182.4135 216.1827 350.9618 1237.9876 305.2835 459.6702 241.1884 114.1567 368.8472 203.4563 232.3081 1250.8833;
	3.8569 52.1153 89.471 101.01 14.2121 34.0469 25.0968 9.7 26.1643 27.0697 50.038 74.6468 112.3804 69.1113 195.0895 73.4988 91.193 96.6374 88.499 71.6951 8.3656 79.4427 65.9992 84.6872 83.0834 59.4464 8.1999 1237.7992 835.6591 835.6591 784.4005 114.2281 294.9968 184.5434 216.6732 356.5479 1208.2727 283.6853 461.1862 222.5448 111.6064 377.6931 187.5271 245.9993 1220.8588;
	3.8072 51.4441 91.5582 109.1378 14.0973 33.2006 23.1959 11.7948 27.0105 27.9701 51.7023 77.1296 116.1182 69.5482 202.4184 76.26 94.6188 100.2677 90.4172 73.4 7.732 77.4681 70.1398 87.4652 87.4652 58.1979 8.5657 1255.0806 851.9852 851.9852 767.0141 111.0874 301.3908 188.9317 218.0431 363.5137 1223.0952 273.8676 460.8602 234.2818 112.7165 368.3055 187.8029 255.4954 1235.8358;
	3.7034 50.0408 87.1636 92.1544 14.4208 32.0147 19.2546 10.0348 24.4099 27.3949 50.639 75.5434 113.7302 69.4734 198.6807 74.8518 92.8717 98.4162 90.2091 72.8294 6.4182 74.701 69.341 89.1536 77.6251 53.1365 7.8338 1230.6608 843.1038 843.1038 733.9372 105.285 300.697 187.4631 217.8084 359.7243 1176.8375 259.4427 417.7898 207.9244 111.8275 355.1498 190.5842 224.3838 1189.0962;
	3.7443 50.5939 83.0715 82.2807 14.0938 30.7702 18.4606 6.8265 26.3852 28.4445 52.5793 78.4379 118.0879 69.2978 198.7728 74.8865 92.9147 98.4619 90.0085 72.0262 6.1535 71.7971 69.5006 83.0692 55.967 31.7428 5.6786 1248.2663 792.8262 792.8262 677.0797 92.2459 300.0282 185.3956 217.2581 338.2725 1170.6389 229.8319 391.5697 149.9115 93.0678 341.3441 189.4529 177.9233 1182.8331;
	3.5264 47.6496 72.8484 67.64 14.0369 28.6445 15.4228 5.5112 19.3932 26.2783 48.5751 72.4645 109.0949 69.4835 201.1501 75.7821 94.026 99.6395 89.1867 72.1921 5.1409 66.8371 66.8468 79.1515 50.398 25.5939 4.8054 1185.4583 724.1213 724.1213 558.0684 53.5477 297.2889 185.8227 217.8402 308.9584 1061.9609 199.5563 286.7767 134.9946 76.1648 317.7625 157.8979 129.2572 1073.023;
	3.7737 50.9905 72.5394 74.7801 14.52 31.0066 17.9567 5.0117 17.752 22.8751 42.2843 63.0798 94.9663 69.3354 201.5474 75.9318 94.2117 99.8363 89.5949 71.7425 5.9856 72.3488 55.9899 82.7212 57.0429 16.3112 3.4443 1187.6079 731.6654 731.6654 637.7686 61.3877 298.6497 184.6653 217.3759 312.1772 1074.9036 212.5535 272.2612 152.7936 84.6284 343.9668 164.8515 139.1346 1086.1005;
	3.316 44.8068 61.9322 76.5969 14.5069 26.5844 18.0723 3.8067 20.9083 21.6211 39.9662 59.6217 89.7601 69.7343 197.0025 74.2195 92.0872 97.5849 87.0653 70.0295 6.0241 62.0302 48.1584 81.826 58.5556 12.0939 2.494 1185.994 822.3872 822.3872 770.869 80.6091 290.2176 180.2562 218.6264 350.8852 1103.2528 251.3684 271.2584 156.8454 59.6609 294.9094 154.3553 154.4244 1114.745;
	3.1689 42.8191 52.7565 68.729 14.8048 22.4607 21.6128 2.1187 21.826 18.0666 33.3958 49.8199 75.0036 69.5157 191.9198 72.3047 89.7114 95.0673 88.3042 69.3248 7.2043 52.4084 41.6078 65.5399 35.078 6.0342 1.1892 1110.6836 797.6042 797.6042 782.4149 98.3789 294.3472 178.4422 217.9413 340.3111 1110.1238 251.4361 377.4154 93.9589 48.0959 249.1645 146.7003 135.0662 1121.6875;
	2.4756 33.4509 44.8309 62.147 13.9106 16.5376 19.7571 1.234 20.085 15.5634 28.7687 42.9173 64.6118 69.2475 184.3549 69.4546 86.1752 91.32 86.5918 69.9736 6.5857 38.5877 28.9721 55.5588 24.8772 4.2895 1.6841 1103.4221 810.0879 810.0879 774.0735 102.1674 288.6393 180.1123 217.1003 345.6375 1103.7057 249.6809 420.9021 66.6353 40.5323 183.4569 101.6709 103.5309 1115.2026;
	2.1529 29.09 31.6997 37.9276 10.2103 15.9311 19.8859 1.0096 17.0981 15.9871 29.5518 44.0855 66.3705 69.2948 182.6776 68.8227 85.3912 90.4891 88.3251 69.7225 6.6286 37.1726 35.9701 40.0278 21.273 5.1293 1.2324 1032.6736 786.0316 786.0316 725.3337 106.3022 294.4169 179.4658 217.2484 335.3735 1067.9274 222.3631 410.4468 56.9811 30.9505 176.729 78.2501 86.9346 1079.0516;
	1.3471 18.2023 28.8342 32.0818 8.9454 10.4324 18.8529 1.8437 14.5451 12.2496 22.6432 33.7791 50.8543 65.7981 178.5273 67.2591 83.4511 88.4333 86.1267 66.8977 6.2843 24.3424 13.5906 37.6495 22.3669 5.7699 2.5816 980.25 784.5754 784.5754 717.274 102.2547 287.0891 172.1947 206.2858 334.7522 1040.0003 221.9569 435.6539 59.9114 29.3515 115.7305 58.0318 58.3948 1050.8336;
	0.9778 13.2126 23.8763 32.9197 7.0684 8.6216 13.854 1.2237 12.2391 14.3169 26.4647 39.4801 59.437 66.9133 173.1661 65.2393 80.9451 85.7776 84.9482 66.1885 4.618 20.1171 25.8663 35.939 21.1068 6.7798 3.3457 1009.2733 740.9052 740.9052 728.2462 95.6989 283.1605 170.3694 209.7822 316.1196 877.0327 219.0668 414.0744 56.536 27.2881 95.6423 42.8083 66.4809 886.1685;
	0.9014 12.1797 26.4775 84.8163 5.9962 8.5752 12.1316 1.7717 12.8782 15.6758 28.9764 43.2271 65.0782 66.3255 167.4631 63.0908 78.2793 82.9527 74.2268 67.7994 4.0439 20.0089 40.4671 50.5329 26.612 4.72 3.3211 871.2266 658.8037 658.8037 652.1207 81.8422 247.4227 174.5158 207.9395 281.0896 786.839 198.2954 334.3039 71.2823 24.9654 95.1279 37.0133 59.8864 795.0353;
	1.1057 14.941 22.1106 36.3508 6.8403 7.015 6.4968 1.2914 9.819 14.5237 26.8468 40.0501 60.2952 66.218 173.5288 65.376 81.1146 85.9573 78.811 67.0739 2.1656 16.3683 40.3633 47.9468 27.9843 4.1344 2.4452 834.9714 566.0514 566.0514 575.5885 77.7939 262.7033 172.6483 207.6024 241.5152 590.6869 191.8813 236.6237 74.958 21.4066 77.8196 52.3789 35.9491 596.8399;
	0.6543 8.8412 25.4698 40.1674 5.8671 6.935 3.7619 0.0809 10.6951 17.1955 31.7855 47.4178 71.3872 63.4791 168.6979 63.5559 78.8564 83.5643 82.4392 65.1055 1.254 16.1817 49.7321 41.608 15.4515 4.6214 1.7848 822.593 536.6802 536.6802 588.5936 75.8107 274.7974 167.5816 199.0156 228.9835 705.4617 194.9389 207.4002 41.3881 23.3233 76.9325 50.7612 35.337 712.8103;
	1.0848 14.6583 5.7849 14.2269 1.4659 0.4027 0.073 0.0 0.0248 19.6715 36.3624 54.2455 81.6664 63.3306 132.5501 49.9375 61.9594 65.6585 83.7607 55.8337 0.0243 0.9397 64.606 35.9276 12.2 2.0124 1.5782 732.9706 538.9548 538.9548 620.4536 83.2539 279.2023 143.7162 198.5501 229.9541 676.6334 196.7932 282.1058 32.6786 59.2795 4.4677 4.0575 17.5857 683.6816;
	0.6102 8.2458 26.8284 45.5482 1.8884 8.2184 4.7307 1.5392 8.4688 23.5892 43.6042 65.0489 97.9308 62.6189 119.9245 45.1808 56.0577 59.4044 20.8465 61.6279 1.5769 19.1764 66.0883 48.683 21.6602 5.6744 2.0418 796.0289 512.6606 512.6606 627.6906 81.4055 69.4884 158.6305 196.3187 218.7352 665.1463 190.7216 335.6171 58.0185 77.0446 91.1699 25.9316 135.7541 672.0749;
	0.3279 4.4312 30.7718 56.0194 1.9838 0.5783 0.0 2.7261 0.0 21.2974 39.3678 58.7291 88.4163 56.0659 103.0514 38.824 48.1705 51.0464 11.144 64.6106 0.0 1.3493 39.6862 64.2095 34.0967 15.931 2.8256 645.6122 330.1743 330.1743 564.5081 66.069 37.1468 166.3078 175.774 140.8744 542.0391 184.9381 0.0 91.3305 80.6203 6.4148 5.3056 69.1533 547.6853;
	0.6812 9.2045 45.0529 77.0025 5.3569 3.6432 0.3778 4.1192 0.0 23.8097 44.0118 65.6569 98.8462 45.2097 117.0584 44.1011 54.718 57.9847 81.3542 67.9478 0.1259 8.5007 51.6732 73.0404 35.8309 13.5329 2.1795 580.5168 338.5931 338.5931 512.268 54.8413 271.1806 174.8979 141.7384 144.4664 593.9514 185.7555 1.2079 95.9757 87.83 40.4148 3.5897 50.9141 600.1384;
	0.5015 6.7768 45.4328 67.8864 0.5458 4.1294 0.2082 2.1701 0.7429 20.9414 38.7098 57.7474 86.9384 32.5626 126.2514 47.5645 59.0152 62.5385 77.2164 66.9163 0.0694 9.6352 50.7246 70.1901 36.8571 14.9721 1.108 455.836 329.1691 329.1691 481.6017 51.8095 257.3881 172.2428 102.0882 140.4455 654.5151 158.8416 15.4343 98.7244 72.2486 45.8087 8.0644 38.8317 661.3329;
	0.5957 8.0488 46.183 71.0867 7.5203 14.1896 6.0205 3.5092 2.2667 17.3948 32.154 47.9674 72.2146 19.5403 140.4703 52.9214 65.6617 69.5818 83.5891 68.3395 2.0068 33.1091 31.6902 70.4201 38.0632 33.2425 1.8398 425.8289 382.5463 382.5463 541.1399 55.4536 278.6304 175.906 61.2615 163.2198 537.4567 143.6857 52.6231 101.955 59.7817 157.4103 39.4005 36.423 543.0552;
	0.1122 1.5161 54.8566 73.8433 9.8369 14.4052 0.08 6.1692 4.0485 21.7022 40.1162 59.8455 90.097 8.0687 156.7866 59.0684 73.2886 77.6641 89.9458 69.5425 0.0267 33.6122 65.707 77.2074 46.4419 41.8111 3.4355 331.3316 305.4983 305.4983 409.1049 52.7603 299.8194 179.0027 25.2965 130.3459 396.8837 118.6154 44.0362 124.3979 60.1906 159.8022 45.463 65.3338 401.018;
];
