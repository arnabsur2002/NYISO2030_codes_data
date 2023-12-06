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
	3.8937 52.613 86.4669 114.1147 15.0792 35.3174 32.1222 7.6475 27.8312 13.177 24.3575 36.3366 54.7046 42.9302 190.0079 71.5844 88.8177 94.1202 87.8477 71.4939 10.7074 82.4073 33.5877 37.5403 49.0757 27.2593 5.047 1215.3533 779.0777 779.0777 661.3487 84.4225 292.8256 184.0254 134.5919 332.4065 1210.7236 218.5211 467.0615 131.4529 122.1541 391.788 214.9838 119.3392 1223.3353;
	3.2765 44.2728 77.445 42.5346 15.0766 27.2374 30.7113 7.256 9.9626 13.6303 25.1953 37.5865 56.5863 41.3407 193.5935 72.9352 90.4937 95.8963 92.3994 73.3373 10.2371 63.5539 30.2073 36.4457 38.5985 28.987 5.6378 1243.1299 765.5395 765.5395 697.0194 76.9758 307.9981 188.7704 129.6087 326.6302 1239.7716 209.86 466.7113 103.3889 118.151 302.1535 214.1487 102.349 1252.6858;
	3.1969 43.1965 89.7929 43.7751 14.9134 23.4267 32.0106 6.0741 10.3718 14.0679 26.0044 38.7934 58.4033 40.6114 196.9208 74.1888 92.049 97.5445 91.6343 69.66 10.6702 54.6622 32.1179 36.3895 36.3451 26.9628 5.7903 1257.3477 793.5686 793.5686 674.1275 87.0545 305.4475 179.3049 127.3223 338.5892 1255.0909 200.6563 476.069 97.3529 34.0904 259.8798 214.6695 137.4279 1268.1648;
	3.4295 46.3407 84.9388 38.4129 14.2677 12.9446 31.3025 5.9297 10.3585 13.1878 24.3774 36.3663 54.7492 25.8868 194.7903 73.3861 91.0531 96.4891 88.2168 70.0065 10.4342 30.204 28.0473 28.8671 26.7117 26.67 5.0145 1221.0149 805.0901 805.0901 665.0104 92.0146 294.0561 180.197 81.1587 343.5051 1213.9804 222.532 468.7744 71.5493 32.1684 143.5984 212.0729 115.8669 1226.626;
	3.7188 50.2493 83.9506 35.4144 14.6422 21.3459 31.8326 5.5481 11.5806 11.8898 21.9782 32.7871 49.3608 29.7108 189.555 71.4137 88.6059 93.8958 90.5179 71.4187 10.6109 49.807 8.8183 26.4322 30.9594 59.0018 4.5173 1215.9066 806.0127 806.0127 656.7462 92.8484 301.7265 183.832 93.1475 343.8988 1247.6263 214.3904 475.2496 82.9271 25.9426 236.7967 210.9547 195.5204 1260.6224;
	3.7637 50.8556 92.4982 104.9559 14.9957 33.4495 32.0288 1.1529 11.929 13.3266 24.634 36.7491 55.3255 25.6687 200.6597 75.5974 93.7968 99.3966 92.9085 72.2496 10.6763 78.0489 19.8452 29.8175 50.3438 64.2289 2.6036 1127.3346 801.6154 801.6154 684.3534 107.9758 309.695 185.9705 80.4747 342.0226 1212.0207 215.6331 475.1551 134.8495 64.1311 371.067 207.049 235.7363 1224.646;
	3.862 52.1845 89.1043 111.171 15.0409 35.0691 31.1488 8.8843 10.9678 13.1774 24.3583 36.3378 54.7063 34.26 201.2108 75.805 94.0543 99.6695 88.3416 72.1861 10.3829 81.8278 26.1225 47.7015 98.6005 73.0244 10.1813 1091.8814 811.2682 811.2682 703.6223 114.0253 294.4722 185.8073 107.4098 346.1411 1229.2044 253.3168 445.9182 264.1086 101.5682 389.0327 214.2297 262.1216 1242.0086;
	3.7454 50.6086 89.3475 110.0301 14.847 34.4604 31.4239 18.0312 11.2197 11.0186 20.3677 30.3846 45.7438 62.8532 198.4687 74.7719 92.7726 98.3112 85.8173 60.9037 10.4746 80.4077 24.4462 53.9533 102.7439 73.1311 13.526 994.224 801.3472 801.3472 723.1845 114.0738 286.0578 156.7664 197.0534 341.9081 1188.0818 284.6267 464.1598 275.2069 115.4639 382.281 211.9789 277.799 1200.4576;
	3.8817 52.4504 90.8103 111.2888 15.2104 34.2176 31.1221 17.5839 10.5232 12.703 23.4813 35.0295 52.7368 63.1223 193.7232 72.9841 90.5543 95.9606 56.9516 63.7485 10.374 79.841 29.1407 85.5418 101.4916 70.5003 13.1843 783.6069 810.3678 810.3678 690.9213 112.3546 189.8388 164.0889 197.897 345.7569 1192.1091 286.3284 470.8219 271.8526 116.0475 379.5868 217.1219 279.1465 1204.5269;
	3.8738 52.3439 89.2405 111.581 15.0378 34.468 31.5346 18.0014 20.844 12.3467 22.8226 34.0469 51.2574 60.79 191.4889 72.1423 89.5099 94.8538 67.8211 57.7923 10.5115 80.4253 25.2024 87.7184 102.0344 69.1376 13.1154 647.1069 833.3288 833.3288 739.3934 115.2889 226.0703 148.7575 190.585 355.5536 1148.177 276.4906 473.6096 273.3064 114.8181 382.3651 212.3007 278.7237 1160.1372;
	3.786 51.1568 88.8936 111.9341 14.6485 34.0268 32.0344 17.7301 27.9353 17.6478 32.6218 48.6652 73.2653 67.6356 196.5698 74.0565 91.8849 97.3706 44.3048 64.6613 10.6781 79.3959 27.0096 84.1813 98.5906 69.7729 13.1829 434.4702 791.6293 791.6293 690.9413 104.3764 147.6827 166.4383 212.0468 337.7618 914.0388 275.7399 466.8037 264.0819 118.6103 377.4706 212.5107 269.1369 923.5601;
	2.7339 36.9407 86.2844 99.4763 14.1337 30.6253 30.5638 17.1871 27.2349 18.6935 34.5546 51.5487 77.6063 66.8369 189.7865 71.501 88.7142 94.0105 55.8823 55.8908 10.1879 71.4591 29.7138 81.4408 93.0979 70.4961 12.6364 301.4393 757.0397 757.0397 654.9739 109.8549 186.2744 143.863 209.5427 323.0036 750.761 247.7707 459.1052 249.3693 115.4939 339.7369 189.4027 251.4013 758.5814;
	1.3867 18.7379 86.387 76.9718 13.6275 17.7693 26.4307 17.1924 26.739 25.8993 47.8744 71.4192 107.5212 65.058 190.4853 71.7642 89.0408 94.3567 92.8352 57.7439 8.8102 41.4616 53.3064 81.4703 91.5032 67.8313 13.5365 230.7542 671.8405 671.8405 598.4977 111.6486 309.4506 148.6329 203.9655 286.652 643.3278 232.6619 435.3213 245.0979 115.7617 197.1202 159.6459 254.0118 650.0291;
	1.9001 25.6747 86.6285 102.1463 14.173 11.0357 25.9626 17.669 26.9403 29.9088 55.2859 82.4757 124.1667 67.4402 190.2386 71.6713 88.9255 94.2345 91.2091 59.8293 8.6542 25.7499 71.0399 82.2875 98.1741 71.5159 13.3639 262.6669 592.0457 592.0457 556.5657 105.5663 304.0302 154.0007 211.4341 252.6062 474.4937 202.2234 453.7608 262.9664 118.5347 122.4224 130.0992 251.265 479.4363;
	2.0603 27.8398 86.7626 110.1925 12.2965 0.2058 23.0606 17.7234 26.6405 28.0906 51.9251 77.462 116.6186 67.234 197.4446 74.3861 92.2939 97.804 92.3609 68.0074 7.6869 0.4801 69.1078 83.1639 97.3133 70.5225 13.4716 400.2157 470.2537 470.2537 398.7837 95.4419 307.8696 175.0513 210.7877 200.6416 399.1101 187.0531 444.5653 260.6605 117.7066 2.2826 110.3017 229.8038 403.2675;
	3.1706 42.8412 87.9493 79.3364 14.0054 22.53 16.8367 18.4749 20.742 28.2619 52.2417 77.9344 117.3298 61.3126 193.1695 72.7755 90.2955 95.6863 90.4047 68.1252 5.6122 52.57 69.4334 85.3608 100.3336 72.4902 13.6669 410.35 498.9285 498.9285 377.8457 51.8968 301.3489 175.3545 192.2232 212.8762 416.3002 166.0417 448.6302 268.7507 118.0143 249.9326 72.7718 261.325 420.6367;
	2.8219 38.1298 89.455 59.2984 14.0353 29.5012 14.4378 18.3726 25.6778 26.6299 49.2249 73.4339 110.5543 63.6841 186.7204 70.3458 87.2809 92.4917 90.6003 67.7967 4.8126 68.8361 68.7589 85.9144 102.8838 73.6222 13.7166 493.4616 509.7677 509.7677 340.0387 29.8038 302.001 174.5088 199.6581 217.5009 488.05 106.4797 176.9525 275.5816 117.0414 327.2665 90.0343 263.0694 493.1338;
	3.4437 46.5325 91.7143 59.8241 13.9645 32.0024 28.3672 18.5682 25.2721 11.4493 21.1639 31.5723 47.5319 68.1558 161.6234 60.8907 75.5495 80.06 71.4259 67.4131 9.4557 74.6722 46.0063 86.299 103.0028 74.0083 13.6511 519.135 540.2542 540.2542 305.5884 25.0387 238.0863 173.5215 213.6778 230.5085 607.3309 60.8794 408.1823 275.9004 120.0643 355.0131 107.1234 263.3656 613.6573;
	3.6912 49.8767 92.4786 52.9939 14.8103 33.7982 28.8862 18.7894 26.5777 20.4411 37.7851 56.368 84.8617 68.0331 149.5899 56.3571 69.9246 74.0992 55.0438 64.9128 9.6287 78.8625 51.3703 83.9246 104.214 75.962 13.9464 943.4441 646.8557 646.8557 386.6082 36.3606 183.4794 167.0857 213.2929 275.9918 950.0122 72.86 451.7287 279.1447 119.3634 374.9347 148.5587 261.4452 959.9081;
	3.6535 49.3667 69.1566 39.6729 14.813 32.7786 4.8122 18.722 26.6735 27.6567 51.123 76.2655 114.8173 68.7772 158.8051 59.8289 74.2321 78.6639 42.7088 67.2633 1.6041 76.4834 66.3315 83.9486 105.4206 75.7866 13.9381 1156.5471 565.5745 565.5745 470.3956 55.1538 142.3625 173.1358 215.626 241.3118 1074.1959 114.2489 455.3327 282.3765 122.4048 363.624 153.0047 248.154 1085.3854;
	3.7331 50.442 64.2092 57.6177 14.4271 32.4632 30.2349 18.4225 2.6092 26.5457 49.0693 73.2017 110.2048 67.423 180.4292 67.9757 84.3402 89.3754 59.4051 70.2167 10.0783 75.7476 62.8977 86.4012 101.3598 75.4333 13.7665 1187.457 676.2173 676.2173 403.0783 63.7885 198.0171 180.7379 211.3804 288.5194 1050.3854 182.8355 444.1549 271.4994 119.8007 360.1255 137.7562 257.7756 1061.3269;
	3.8309 51.7644 49.1612 80.003 14.4402 32.726 2.7035 18.3249 26.8536 29.4045 54.3537 81.085 122.0731 67.1559 187.1233 70.4976 87.4693 92.6913 51.6591 68.4276 0.9012 76.3607 66.0125 86.3836 102.6943 76.137 13.8935 1184.9522 672.8332 672.8332 504.2851 82.4465 172.197 176.1328 210.5429 287.0755 1114.3001 218.3476 449.6694 275.0741 123.4714 363.0408 143.3645 255.3051 1125.9074;
	3.7207 50.2749 57.1319 87.3135 14.3257 31.8068 30.0679 17.9845 27.555 29.3379 54.2307 80.9015 121.7967 66.9039 183.8098 69.2493 85.9204 91.05 50.1535 67.4569 10.0226 74.2158 64.2595 87.1944 101.9614 75.7542 13.5791 1173.8622 693.3633 693.3633 564.5376 104.0502 167.1785 173.6342 209.7529 295.835 1103.9247 241.3215 461.8164 273.1109 123.6774 352.8432 140.9993 264.4802 1115.4239;
	3.7516 50.6926 87.9215 102.3481 14.3157 32.1592 29.6402 18.2176 26.9505 28.7853 53.2093 79.3777 119.5028 67.2167 185.7859 69.9937 86.8441 92.0288 41.0125 70.6922 9.8801 75.038 62.3152 86.6607 102.0622 74.442 13.3087 1181.1951 693.3199 693.3199 579.5996 110.7976 136.7084 181.962 210.7334 295.8165 1189.5356 221.4242 458.7389 273.381 122.9183 356.7523 150.1403 268.3365 1201.9266;
];