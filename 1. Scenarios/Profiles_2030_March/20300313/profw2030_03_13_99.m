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
	0.6518 8.8074 58.4372 61.4981 6.3411 0.1754 0.0 8.1587 3.7388 19.2679 35.6164 53.1326 79.9908 0.6758 121.1297 45.6349 56.6211 60.0015 73.8833 61.5297 0.0 0.4092 62.4703 70.6095 45.0257 48.0798 4.4217 233.939 307.5922 307.5922 208.6476 44.1365 246.2778 158.3777 2.1188 131.2393 412.0223 73.5464 0.2609 120.6045 59.7779 1.9456 0.0 57.7278 416.3142;
	0.5187 7.0085 58.1829 67.1523 5.507 1.5797 3.5476 11.6116 9.4063 12.2928 22.7231 33.8984 51.0339 0.1317 108.5387 40.8913 50.7355 53.7645 70.4459 63.1477 1.1825 3.6859 27.9324 73.423 53.3138 50.0301 6.7039 102.827 202.3966 202.3966 131.1934 27.437 234.8197 162.5424 0.413 86.3559 293.723 65.9891 9.4506 142.8048 77.6991 17.5238 0.0 82.9054 296.7826;
	0.3766 5.0888 65.8536 71.3799 2.3517 2.4856 2.2754 12.2708 8.8716 9.5743 17.698 26.4019 39.7479 1.1058 70.275 26.4757 32.8495 34.8106 59.0918 54.4337 0.7585 5.7998 4.1978 76.7775 58.3965 55.0725 6.9423 187.7131 13.0715 13.0715 7.9201 11.5546 196.9725 140.1124 3.467 5.5772 189.7422 0.0 28.9508 156.4192 67.913 27.5737 0.5678 92.9864 191.7187;
	0.4528 6.1178 72.4995 80.2925 7.6152 1.2521 0.0 14.5584 2.8855 13.8733 25.6447 38.2568 57.5954 0.0 88.1502 33.2101 41.2051 43.6651 45.6762 58.0213 0.0 2.9216 42.0535 81.8585 70.0706 65.1153 8.8819 11.2901 1.1498 1.1498 1.035 9.8075 152.2541 149.3469 0.0 0.4906 10.5252 0.0 0.0587 187.6892 72.4467 13.8902 0.3319 130.3984 10.6349;
	0.4423 5.976 80.0956 75.7451 8.3825 0.397 0.0 14.1996 0.0 14.15 26.156 39.0196 58.7438 0.0 119.3339 44.9584 55.7817 59.1119 56.312 64.2663 0.0 0.9263 34.6128 80.5291 78.7805 67.7262 9.3102 15.6127 0.0044 0.0044 0.051 3.7841 187.7066 165.4216 0.0 0.0019 0.8735 0.0077 0.3394 211.0193 65.1479 4.4037 0.0 126.5306 0.8826;
	0.4508 6.0908 79.124 58.1534 9.0546 3.6614 0.0 12.6192 0.4992 8.1863 15.1323 22.5744 33.9856 0.2221 132.8066 50.0341 62.0794 65.7856 76.5598 67.1469 0.0 8.5432 31.2349 78.7118 55.5829 65.0509 8.2437 18.3108 1.1095 1.1095 1.0622 7.3616 255.1993 172.8364 0.6964 0.4734 8.0325 0.3492 0.0 148.8827 50.876 40.6168 17.7256 120.6603 8.1162;
	0.3791 5.1225 55.6462 36.503 7.7416 2.7381 2.9097 8.1256 1.9182 5.8869 10.8818 16.2335 24.4395 0.0079 106.7617 40.2219 49.9049 52.8843 59.6753 65.2549 0.9699 6.3889 14.4934 55.0745 35.9303 61.6017 4.6064 22.889 29.6474 29.6474 2.5034 0.0 198.9178 167.9664 0.0249 12.6496 13.3673 0.0743 0.0 96.242 25.9907 30.3747 25.1287 127.9252 13.5065;
	0.475 6.4187 34.6333 27.6918 3.4404 2.9888 3.8947 7.4563 1.9084 4.1825 7.7312 11.5335 17.3636 4.2695 62.7872 23.6547 29.3494 31.1016 19.0637 44.0525 1.2982 6.9738 9.2506 35.2583 34.5134 61.2223 5.1002 12.4435 1.4849 1.4849 0.0 0.0 63.5457 113.3912 13.3856 0.6336 8.2461 0.0521 2.2491 92.4465 8.9159 33.1556 2.8005 95.7812 8.332;
	0.4649 6.2816 25.8955 24.772 3.079 0.0 0.0 5.6305 0.0 0.001 0.0018 0.0027 0.004 1.5523 14.543 5.479 6.798 7.2039 14.8785 16.8866 0.0 0.0 3.0397 33.1124 28.9382 52.1231 4.7279 3.1813 0.0 0.0 0.0 0.0 49.595 43.4661 4.8668 0.0 0.1555 2.5548 0.0 77.513 0.4812 0.0 0.0 64.3012 0.1571;
	0.5429 7.3361 28.1057 23.6754 6.4462 0.3592 0.5679 4.1904 0.8957 2.1218 3.922 5.8509 8.8085 3.1636 10.757 4.0526 5.0283 5.3285 3.2581 10.3735 0.1893 0.8382 11.3433 28.358 28.9304 44.7355 3.3009 25.6602 21.8851 21.8851 0.0117 0.2851 10.8604 26.7015 9.9184 9.3377 0.0 8.6335 0.3644 77.4922 0.0 3.985 48.3439 85.8859 0.0;
	0.7818 10.5642 41.2659 7.978 10.0204 0.0785 0.4445 2.673 1.5324 5.6817 10.5025 15.6676 23.5875 9.0708 0.0357 0.0135 0.0167 0.0177 0.0505 7.2414 0.1482 0.1831 33.261 34.0955 44.4932 41.8798 1.1231 57.0735 59.8712 59.8712 1.0551 0.4393 0.1682 18.6393 28.4382 25.545 45.4455 5.4006 11.7029 119.1782 0.0247 0.8706 24.0191 93.4256 45.9189;
	1.4839 20.0504 58.6981 0.918 12.5491 0.0 0.0 0.0009 0.0 1.2523 2.3148 3.4533 5.1989 12.9948 0.0109 0.0041 0.0051 0.0054 1.6145 4.6172 0.0 0.0 52.8423 47.0782 0.0867 40.2404 0.1349 133.6863 94.5367 94.5367 0.5896 2.704 5.3818 11.8846 40.7405 40.3357 106.4439 3.535 0.0 0.2321 0.0036 0.0 8.7641 123.872 107.5527;
	2.2004 29.732 78.933 4.6376 13.9424 0.4917 0.003 0.8252 0.7956 23.9377 44.2484 66.01 99.3776 14.9966 2.0846 0.7854 0.9744 1.0326 1.7429 7.0469 0.001 1.1472 35.8111 63.987 65.1359 54.7999 1.546 220.1082 173.8119 173.8119 29.0465 4.243 5.8096 18.1387 47.0165 74.1597 181.1621 22.327 1.2732 174.471 0.0002 5.4541 113.9024 163.9172 183.0492;
	1.7548 23.7107 4.8978 2.8158 14.068 18.1474 0.0 0.2147 0.0 1.4023 2.5921 3.8669 5.8216 1.4782 0.0 0.0 0.0 0.0 0.0 7.2817 0.0 42.3439 47.4554 2.553 6.8692 31.5775 0.9126 171.5772 192.2279 192.2279 7.1625 4.9556 0.0 18.743 4.6344 82.0172 180.7182 25.6732 0.1992 18.3997 0.026 201.3149 84.4826 130.3168 182.6006;
	2.1932 29.6343 2.2278 6.1924 9.2947 0.2163 0.0 0.1519 1.7949 0.0627 0.1159 0.1728 0.2602 0.0917 0.0 0.0 0.0 0.0 0.0 0.9523 0.0 0.5047 21.1865 1.1319 0.2886 0.3415 0.3909 275.9179 255.4322 255.4322 89.3901 6.9089 0.0 2.4513 0.2875 108.9844 268.0676 19.6537 12.375 0.7731 0.2941 2.3995 86.2401 102.4255 270.8599;
	3.2147 43.4371 83.5912 1.0828 13.6328 1.3184 0.0 0.0088 1.0227 0.2781 0.5142 0.767 1.1547 3.926 0.1489 0.0561 0.0696 0.0738 0.0 0.6948 0.0 3.0763 23.1656 0.011 0.4396 0.2187 0.0037 393.0384 284.2121 284.2121 172.8328 10.8419 0.0 1.7884 12.3085 121.2638 313.0489 45.5397 14.159 1.1776 0.0047 14.6256 20.6902 167.9259 316.3098;
	3.4165 46.1638 7.7587 25.5245 13.8937 4.5763 0.0226 0.0236 0.025 0.0002 0.0004 0.0006 0.001 0.7163 1.3506 0.5088 0.6313 0.669 0.0 0.1479 0.0075 10.6779 0.0 0.0243 0.511 0.0546 0.0963 358.9325 372.6278 372.6278 179.2644 21.5239 0.0 0.3806 2.2456 158.9878 449.209 75.8015 91.1528 1.3687 2.7191 50.766 137.1187 220.3774 453.8883;
	2.8028 37.8722 10.6332 26.682 13.7689 18.9653 0.0 0.3264 1.1874 0.0335 0.0619 0.0923 0.139 0.4589 0.0 0.0 0.0 0.0 0.0 0.2381 0.0 44.2524 1.3981 0.0592 1.5148 1.863 0.428 550.0966 450.7349 450.7349 324.0913 34.299 0.0 0.613 1.4386 192.3136 556.5003 99.4956 27.8916 4.0576 2.3945 210.3886 115.1918 221.7017 562.2972;
	3.0339 40.9948 84.797 7.9052 14.004 23.9163 0.0 0.0179 0.0 7.0833 13.0934 19.5327 29.4064 5.4931 0.6458 0.2433 0.3019 0.3199 0.731 39.7919 0.0 55.8047 2.004 0.0806 4.4808 56.2366 0.2145 720.2424 431.2155 431.2155 365.2141 40.493 2.4368 102.4244 17.2217 183.9853 589.6062 73.8568 2.4495 12.0023 16.2772 265.3115 112.7572 206.7442 595.7479;
	2.9635 40.0438 0.278 10.7311 14.0193 0.0 17.8518 0.0 25.8321 19.4273 35.9111 53.5723 80.6528 3.97 36.6417 13.8046 17.1279 18.1504 2.7219 18.041 5.9506 0.0 47.2439 0.0 0.8045 47.2879 0.5907 731.1066 430.8063 430.8063 349.4188 39.6337 9.073 46.4376 12.4465 183.8107 556.4176 75.4776 90.7301 2.1549 1.6211 0.0 108.5773 174.0912 562.2136;
	3.3454 45.2034 82.7038 11.4667 13.993 3.5164 17.2513 0.1941 26.5928 22.5849 41.7478 62.2795 93.7614 9.7042 27.4616 10.346 12.8367 13.6031 11.364 30.0037 5.7504 8.2049 64.1329 77.4044 1.9205 57.8918 0.2797 671.0011 416.7893 416.7893 274.3391 54.1215 37.88 77.2296 30.4241 177.8301 605.6517 77.9267 453.0949 5.1442 1.0636 39.0084 115.1314 180.8434 611.9606;
	3.4569 46.71 83.0947 5.9552 13.7812 22.431 12.1324 13.3264 25.655 24.4066 45.1152 67.3029 101.3242 12.3068 46.3925 17.4781 21.6858 22.9804 5.5905 52.4382 4.0441 52.3391 43.9328 75.5426 95.0091 68.5037 5.6694 714.8532 331.1872 331.1872 224.2156 52.9295 18.6351 134.9759 38.5835 141.3065 510.9475 102.0748 170.1319 254.4885 11.0868 248.8349 0.7199 188.9083 516.2698;
	3.535 47.7656 86.3275 110.7647 13.6778 24.2678 13.2578 16.6913 25.6407 26.2457 48.5148 72.3745 108.9595 7.8884 63.2139 23.8155 29.5488 31.3129 1.1313 65.6189 4.4193 56.6248 57.8982 83.4684 95.1655 72.3328 7.9014 756.0168 342.1521 342.1521 292.8461 39.041 3.7709 168.9032 24.7312 145.9849 455.0329 94.2708 11.7254 254.9075 11.0198 269.2104 135.2122 197.3281 459.7728;
	3.1843 43.0271 84.2312 104.1081 13.5967 15.8168 11.093 17.2106 26.6054 25.386 46.9256 70.0038 105.3903 11.5678 60.7017 22.869 28.3745 30.0685 4.5701 57.6183 3.6977 36.9059 56.5977 82.3706 96.9912 73.3229 7.4785 724.829 374.6596 374.6596 267.2506 39.5633 15.2336 148.3097 36.2665 159.8548 440.4862 77.093 324.8551 259.7978 11.3872 175.4613 127.7377 215.901 445.0746;
];