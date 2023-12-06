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
	3.6957 49.9366 87.5311 105.8572 14.5689 31.8073 29.9028 17.8291 27.5785 28.2835 52.2816 77.9938 117.4193 69.9409 199.8935 75.3087 93.4386 99.017 85.8204 69.5998 9.9676 74.2169 72.5907 85.2912 99.8256 71.3428 12.8779 1303.2204 789.8455 789.8455 643.7111 120.318 286.068 179.15 219.2742 337.0007 1318.5348 247.9555 457.5295 267.3899 117.1533 352.8485 195.882 277.7797 1332.2696;
	3.7764 51.0271 86.5471 109.6029 14.961 32.149 27.1031 17.826 27.4142 29.5135 54.5552 81.3856 122.5256 69.4326 196.5131 74.0352 91.8584 97.3425 86.5306 71.0464 9.0344 75.0142 71.4124 86.1626 98.2003 69.6135 12.7976 1284.9887 776.6149 776.6149 651.759 113.9574 288.4355 182.8737 217.6806 331.3557 1312.5489 234.0903 459.4344 263.0365 118.7742 356.6392 191.1881 270.5905 1326.2212;
	3.8126 51.5167 87.6976 110.4828 15.2629 33.4935 23.2316 17.9666 27.4568 30.6925 56.7346 84.6369 127.4204 68.3854 198.4366 74.7598 92.7576 98.2953 88.6913 71.1438 7.7439 78.1515 71.7875 88.0478 99.015 73.996 13.0765 1269.6473 780.9844 780.9844 713.9686 104.755 295.6375 183.1243 214.3976 333.22 1337.5866 247.8446 443.6206 265.2189 121.1001 371.5546 195.4602 269.7062 1351.5198;
	3.8754 52.3648 90.0892 112.0055 15.3818 32.9278 24.3252 18.5178 26.7061 30.7855 56.9065 84.8932 127.8063 68.1092 201.0329 75.738 93.9712 99.5814 88.1257 71.2368 8.1084 76.8314 72.6751 88.8852 102.2416 73.6365 13.4595 1302.0557 795.018 795.018 712.8344 108.9385 293.7523 183.3637 213.5317 339.2077 1336.1446 272.0869 447.4912 273.8613 123.2078 365.2785 168.8649 277.4622 1350.0628;
	3.8066 51.4352 88.7445 111.7878 15.3991 33.5036 30.2663 17.7848 26.0167 30.8796 57.0804 85.1528 128.197 68.4235 199.5229 75.1691 93.2653 98.8334 87.4037 71.4413 10.0888 78.1752 73.1489 88.1394 100.0117 72.8886 12.8425 1253.7112 780.0248 780.0248 748.6936 108.3651 291.3457 183.8901 214.5169 332.8106 1288.6394 267.3206 467.0316 267.8886 122.1173 371.667 199.3032 264.1521 1302.0627;
	3.8455 51.9612 87.2401 111.0144 15.2072 32.9354 29.21 17.0683 26.4349 31.049 57.3936 85.6199 128.9003 67.4509 200.6769 75.6039 93.8048 99.4051 88.9362 70.1391 9.7367 76.8492 72.5612 85.0814 96.7527 70.5637 12.3941 1261.1136 759.6731 759.6731 741.2064 110.2252 296.4539 180.5382 211.4678 324.1272 1265.6077 254.3867 451.3126 259.1591 120.1586 365.3631 188.6176 266.9748 1278.7911;
	3.7071 50.0906 86.5411 109.7574 15.2882 32.3764 30.3007 16.4828 26.0101 31.0522 57.3995 85.6287 128.9136 64.7237 202.9546 76.462 94.8695 100.5333 89.5607 72.1083 10.1002 75.545 73.5282 84.029 96.3897 69.6315 12.4551 1211.1094 712.787 712.787 678.7477 104.6378 298.5358 185.6069 202.9174 304.1225 1209.3391 272.0817 452.5068 258.1868 114.7406 359.1623 164.7413 261.4878 1221.9363;
	3.778 51.0486 87.4254 115.3109 15.285 32.6318 29.4588 17.8725 25.7485 30.4817 56.345 84.0557 126.5453 66.8494 203.6715 76.7321 95.2046 100.8885 90.109 70.7481 9.8196 76.1408 72.5341 87.5681 100.0116 71.4648 12.8033 1267.083 735.4064 735.4064 658.2254 111.4693 300.3634 182.1058 209.582 313.7734 1248.4663 283.6203 447.9548 267.8881 116.2167 361.9952 177.9569 266.3147 1261.4711;
	3.8428 51.925 91.7425 119.4363 15.3596 34.4131 32.201 18.3022 27.2443 30.7274 56.7991 84.7332 127.5653 67.956 203.0638 76.5031 94.9205 100.5874 91.833 72.6806 10.7337 80.2973 72.8607 89.4196 103.3086 72.0107 12.9281 1327.3614 782.5053 782.5053 738.71 121.0165 306.1099 187.0799 213.0512 333.8689 1320.9414 317.4524 467.5167 276.7195 121.4118 381.7564 208.465 266.9718 1334.7012;
	3.8103 51.485 93.5185 118.6184 15.3366 33.8354 26.9715 18.6258 27.1518 28.4711 52.6284 78.5112 118.1981 68.638 195.4274 73.6261 91.351 96.8048 85.6311 68.664 8.9905 78.9493 72.2228 89.9101 104.8778 72.2042 13.0378 1333.3702 830.2752 830.2752 762.1565 120.6738 285.4369 176.7412 215.1895 354.2508 1331.9301 332.1582 447.55 280.9226 118.6767 375.3473 210.1442 269.4405 1345.8044;
	3.7747 51.0039 92.5109 118.9088 15.3314 33.5644 27.5033 18.0698 26.2242 29.2692 54.1037 80.7121 121.5116 67.9516 194.1585 73.1481 90.7578 96.1762 83.6467 70.4956 9.1678 78.3169 72.117 89.2348 102.4929 71.7642 13.0472 1324.5577 826.1409 826.1409 815.6081 122.9684 278.8224 181.4558 213.0374 352.4868 1343.9226 340.0139 447.9197 274.5347 121.0184 372.3411 207.835 267.6113 1357.9218;
	3.6513 49.3375 90.3931 117.8701 15.2843 33.0086 26.5542 17.6268 26.3967 27.5369 50.9016 75.9352 114.32 66.0244 198.403 74.7472 92.7419 98.2787 80.2307 67.0076 8.8514 77.0202 72.2412 87.0998 100.1519 68.1733 12.9491 1329.0687 822.8493 822.8493 811.2592 121.8302 267.4358 172.4778 206.9953 351.0824 1350.523 344.7733 452.6949 268.2641 120.0417 366.1759 203.3816 263.6139 1364.591;
	3.6987 49.977 90.0311 117.317 15.1888 33.9427 26.4162 18.0544 25.8105 29.0859 53.7649 80.2066 120.7506 68.2783 198.5747 74.8118 92.8221 98.3637 86.5243 66.8786 8.8054 79.1997 72.1275 86.8586 99.9258 72.7312 13.1616 1343.2854 827.6992 827.6992 806.3882 120.6497 288.4144 172.1458 214.0617 353.1517 1340.8053 344.5241 446.8034 267.6584 119.2174 376.5381 207.7896 256.8064 1354.772;
	3.7188 50.2494 92.2717 118.1819 14.9441 33.6257 24.3906 18.6785 25.9991 28.7684 53.1779 79.331 119.4323 68.7484 201.4471 75.894 94.1648 99.7866 87.6558 70.7539 8.1302 78.46 72.2407 89.5358 100.1496 74.7825 13.9758 1319.2109 799.7418 799.7418 805.9464 121.6245 292.1862 182.1207 215.5357 341.2231 1300.1072 334.6468 449.2005 268.2578 117.7268 373.0212 196.5605 265.4034 1313.65;
	3.6147 48.8421 92.9964 115.3922 14.365 32.6696 20.8907 17.9588 25.23 28.2894 52.2926 78.0103 117.4441 69.266 187.2617 70.5498 87.534 92.7599 84.7795 67.1868 6.9636 76.229 72.9 89.6322 98.7308 72.2588 13.6725 1310.4098 779.498 779.498 784.6032 116.4102 282.5985 172.9389 217.1584 332.5858 1264.9666 322.9809 444.74 264.4575 116.8232 362.4145 183.9784 265.2283 1278.1433;
	3.6933 49.9044 90.7401 113.4407 14.7147 32.1118 22.1873 18.1664 26.2083 28.9036 53.4279 79.7039 119.9938 69.266 175.9908 66.3035 82.2655 87.1768 78.5939 68.165 7.3958 74.9274 70.5433 87.4794 98.2822 71.9809 13.7359 1287.7419 762.0709 762.0709 720.2671 115.9153 261.9796 175.4569 217.1584 325.1502 1199.1707 304.9286 457.2899 263.2558 119.4345 356.2264 191.3501 263.1972 1211.662;
	3.6449 49.2512 87.7677 108.8241 14.2661 29.574 20.6077 15.8225 25.8837 28.0206 51.7956 77.2689 116.3278 68.7129 177.935 67.036 83.1743 88.1399 76.8227 64.5083 6.8692 69.006 69.1303 82.8813 95.1578 54.8848 12.3158 1226.6913 720.3907 720.3907 677.6481 114.2918 256.0755 166.0447 215.4243 307.3667 1106.2373 304.555 443.1795 254.8869 112.0276 328.0741 182.9273 221.2224 1117.7606;
	3.6032 48.6877 88.557 106.3345 14.5836 28.0102 18.3472 10.8166 26.0707 28.4145 52.5238 78.3552 117.9634 67.4884 180.0338 67.8267 84.1553 89.1795 83.2443 63.9897 6.1157 65.3571 70.2401 83.6403 95.5129 65.9635 9.7145 1242.4177 709.0304 709.0304 638.8333 113.4321 277.4811 164.7097 211.5854 302.5196 1132.7543 285.7718 445.2118 255.8382 112.4509 310.7265 177.7884 188.5896 1144.5539;
	3.5881 48.4827 80.3833 93.9061 14.5389 23.4308 15.5754 1.4417 24.2059 27.9683 51.699 77.1248 116.1109 67.9456 164.0882 61.8193 76.7017 81.2809 83.2507 65.8265 5.1918 54.6719 68.6745 82.5244 82.8006 57.4563 7.4035 1264.186 667.3135 667.3135 630.5776 108.0506 277.5023 169.4376 213.0186 284.7204 1151.2597 279.8827 442.5637 221.7874 112.1688 259.9258 129.7841 201.0002 1163.2519;
	2.6098 35.2639 72.4586 58.9932 14.059 19.3533 25.4613 7.1802 25.8591 29.0884 53.7694 80.2134 120.7609 68.9633 165.9201 62.5094 77.558 82.1883 70.3364 61.7197 8.4871 45.1576 69.2446 82.1097 66.9519 43.3487 7.1478 1281.8302 717.6904 717.6904 653.1281 104.7509 234.4547 158.8668 216.2093 306.2146 1164.0978 273.0207 438.4445 179.3355 106.6646 214.6923 104.6884 175.2224 1176.2238;
	1.7647 23.8453 72.6861 64.5533 14.0148 8.7233 24.9572 8.6286 25.7593 26.4843 48.9559 73.0326 109.9501 68.8564 159.8168 60.21 74.7051 79.1651 60.1061 59.5634 8.3191 20.3543 62.2245 81.669 59.762 49.5579 8.9385 1215.3935 716.9272 716.9272 614.55 101.1253 200.3536 153.3164 215.8741 305.8889 1122.2522 244.0685 422.2462 160.0769 104.1068 96.7703 74.5731 163.7381 1133.9423;
	1.7726 23.9511 76.664 82.4695 14.3831 12.9582 24.8426 10.942 25.1474 27.5455 50.9175 75.9589 114.3558 67.1986 172.6669 65.0513 80.7118 85.5304 84.6746 62.6493 8.2809 30.2358 67.4529 84.6525 84.5266 65.9337 9.9388 1171.2065 722.3669 722.3669 637.8169 94.1023 282.2485 161.2594 210.6767 308.2099 1082.0692 230.051 424.8625 226.4104 112.769 143.7497 61.3193 179.3995 1093.3408;
	2.2342 30.1888 74.8284 88.3087 13.7762 14.4491 23.9054 12.886 24.5075 29.0258 53.6537 80.0408 120.5009 67.1791 150.8999 56.8506 70.5369 74.7481 78.8562 58.6156 7.9685 33.7145 69.7874 82.456 77.5035 62.2592 9.1238 993.8143 762.1412 762.1412 677.7481 99.4125 262.8541 150.8768 210.6156 325.1802 1030.6458 242.8353 421.8279 207.5987 112.1528 160.2882 73.482 198.8637 1041.3817;
	2.5651 34.6605 82.0473 80.3594 14.2129 20.5404 20.8833 9.4231 26.0788 28.273 52.2622 77.9649 117.3757 68.2494 152.0288 57.276 71.0646 75.3073 84.0255 63.3766 6.9611 47.9276 71.0573 81.8369 70.7048 64.3163 6.2725 915.7856 680.4395 680.4395 614.5137 98.627 280.085 163.1315 213.971 290.3209 909.5485 236.9465 434.9769 189.3877 113.7603 227.8614 90.2818 224.1694 919.023;
];
