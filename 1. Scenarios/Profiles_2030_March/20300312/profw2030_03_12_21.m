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
	3.791 51.2249 89.0028 108.8935 15.1784 32.8848 28.1597 12.7753 27.0663 28.0799 51.9052 77.4324 116.5741 69.4602 175.475 66.1092 82.0244 86.9213 87.1266 66.5715 9.3866 76.7311 70.5788 86.2921 99.0453 65.122 9.3659 1198.9976 812.7254 812.7254 758.7941 110.4951 290.4219 171.3551 217.767 346.7628 1195.7446 291.1363 463.223 265.2998 116.7895 364.8016 194.002 245.9885 1208.2003;
	3.8515 52.0428 86.4511 107.361 15.1234 32.8677 28.3407 12.0117 27.335 25.8674 47.8156 71.3314 107.3891 68.9406 189.2969 71.3165 88.4853 93.768 88.5943 66.1069 9.4469 76.6913 70.4035 83.9457 99.4716 61.2848 8.0294 1217.9363 820.9637 820.9637 794.7862 114.3404 295.3144 170.1594 216.138 350.2779 1268.3187 280.2751 461.9931 266.4418 114.0076 364.6124 199.7742 239.5999 1281.5304;
	3.8682 52.2676 89.2851 95.915 14.89 33.6535 26.7739 10.7656 27.2632 26.9351 49.7892 74.2757 111.8217 68.7248 186.2769 70.1787 87.0736 92.272 87.1504 67.4714 8.9246 78.5249 71.4898 84.7105 90.8225 59.0563 8.7839 1266.6416 827.9304 827.9304 787.705 112.0671 290.5014 173.6714 215.4615 353.2503 1255.8415 268.1539 447.0229 243.2746 113.5462 373.3296 187.4904 248.7467 1268.9232;
	3.9205 52.9751 88.8091 97.4121 15.3891 33.9805 24.4305 10.8442 27.3187 27.9908 51.7405 77.1867 116.2042 68.9622 190.5816 71.8005 89.0858 94.4044 89.7506 68.5667 8.1435 79.2878 73.0595 82.3581 84.2935 52.8633 7.9059 1236.1926 852.5856 852.5856 812.7704 110.4513 299.1686 176.4908 216.2059 363.7699 1247.0245 270.8364 446.6669 225.7861 108.3433 376.9568 202.9602 247.9887 1260.0144;
	3.867 52.2517 85.6819 83.3771 15.2466 32.1246 23.112 9.5395 23.7525 27.213 50.3028 75.0419 112.9751 67.0692 185.311 69.8149 86.6221 91.7936 86.2817 67.3326 7.704 74.9575 71.4572 82.805 73.3312 53.3151 7.4407 1202.8905 806.9062 806.9062 753.8223 106.0073 287.6056 173.3142 210.2711 344.28 1128.0133 256.6141 405.8785 196.4228 109.9034 356.3691 205.8066 233.9177 1139.7634;
	3.8615 52.1768 81.7735 75.5677 15.2929 30.8842 18.7207 7.3581 24.0877 29.2667 54.0991 80.7053 121.5013 66.1795 184.5787 69.5389 86.2798 91.4308 87.9205 68.9078 6.2402 72.0632 72.6918 81.6965 54.4931 37.184 5.9539 1154.7558 718.9034 718.9034 648.802 95.9848 293.0682 177.3689 207.4815 306.7321 1075.7054 216.993 339.3002 145.9636 94.447 342.609 198.3589 187.2628 1086.9107;
	3.6303 49.0538 74.8996 65.042 15.2205 28.8507 16.3125 5.8577 19.4821 28.4987 52.6794 78.5873 118.3127 68.3735 190.1824 71.6501 88.8992 94.2066 88.3839 70.1603 5.4375 67.3184 73.1129 78.5922 50.9729 25.2226 4.5613 1165.4817 688.8284 688.8284 558.3657 62.2334 294.6131 180.5929 214.3603 293.9001 1060.4421 204.5774 282.1006 136.5345 86.5337 320.0508 173.1052 139.8394 1071.4883;
	3.7647 50.8697 70.0831 69.6812 15.2519 29.9446 18.7968 5.6833 17.72 24.764 45.7758 68.2885 102.808 68.2896 190.461 71.7551 89.0294 94.3446 89.0143 70.2944 6.2656 69.8706 59.3668 81.6839 57.6983 20.1886 3.717 1164.0413 720.2342 720.2342 660.921 65.5518 296.7144 180.9379 214.0973 307.2999 1061.8634 224.2569 258.9421 154.5491 84.9879 332.1849 165.0189 142.3556 1072.9245;
	3.351 45.2792 62.2686 68.9096 15.41 26.1769 17.7553 4.4142 20.977 22.6811 41.9256 62.5448 94.1608 66.1886 184.7657 69.6094 86.3672 91.5235 88.7328 71.9953 5.9184 61.0794 52.3011 84.2175 59.5183 17.3759 3.0324 1200.7111 821.2964 821.2964 791.0809 92.7023 295.7759 185.3161 207.5103 350.4198 1107.8381 264.3677 250.5265 159.4241 63.8786 290.389 163.0778 160.7692 1119.3781;
	2.9796 40.2609 54.1632 68.0761 15.4007 20.6513 21.5663 3.4925 21.4754 20.5324 37.9538 56.6196 85.2404 67.5638 175.8765 66.2604 82.212 87.1202 89.8286 68.5782 7.1888 48.1864 48.1658 78.2063 43.4239 10.9988 1.6625 1137.0267 827.6219 827.6219 795.4278 114.5526 299.4287 176.5204 211.8217 353.1187 1182.8457 249.2422 381.1181 116.3141 53.032 229.0918 141.3201 132.2791 1195.167;
	2.5054 33.8531 44.5404 67.0138 15.2456 15.4321 20.3326 1.6194 20.507 17.6073 32.5469 48.5536 73.0971 66.3085 163.6889 61.6688 76.515 81.0831 90.5865 70.327 6.7775 36.0083 39.1726 63.3993 27.1339 9.0246 10.671 1100.9551 801.6878 801.6878 755.3346 106.0925 301.955 181.0219 207.886 342.0535 1100.6222 227.1119 411.9877 72.6802 45.6765 171.1937 96.0094 101.7154 1112.087;
	1.5435 20.8567 30.7304 29.772 11.3999 10.5704 20.6957 1.2907 18.116 16.3683 30.2565 45.1368 67.9532 65.7419 159.1151 59.9457 74.3771 78.8175 84.2862 63.3569 6.8986 24.6643 38.3866 41.6101 19.9232 7.8366 3.2769 1048.727 744.25 744.25 724.7606 104.7796 280.9539 163.0809 206.1098 317.5467 1059.5815 198.9907 419.398 53.3658 34.3101 117.261 67.0737 74.6315 1070.6188;
	1.0598 14.3201 28.5975 29.8958 10.2075 7.8045 18.7359 1.9813 16.2146 15.6109 28.8566 43.0483 64.809 57.4377 156.8387 59.0881 73.313 77.6898 82.8973 62.2882 6.2453 18.2105 41.9124 48.3619 26.5775 11.8749 2.5151 971.1035 739.6774 739.6774 710.2668 96.2713 276.3242 160.3299 180.075 315.5957 1029.5517 201.6114 429.579 71.1898 32.2026 86.5781 49.0549 55.6436 1040.2762;
	0.9154 12.3684 26.414 37.8043 8.8283 8.7969 13.5844 2.6102 13.5317 18.0134 33.2974 49.6732 74.7828 62.4243 156.9299 59.1224 73.3556 77.735 81.2448 58.8205 4.5281 20.5262 50.8631 43.3473 29.4845 13.0809 3.7173 916.7473 680.7344 680.7344 694.2047 93.6679 270.8158 151.4042 195.7087 290.4467 877.6202 208.1152 424.7933 78.9762 30.6765 97.5873 42.2229 64.2436 886.7621;
	0.8566 11.5752 24.7059 58.5038 7.0954 8.8756 11.4697 2.1125 13.6306 16.8729 31.1893 46.5283 70.0481 60.7466 146.6938 55.266 68.5708 72.6646 70.3408 64.3267 3.8232 20.7097 52.5602 53.4266 28.9174 8.5005 3.6378 789.9119 610.5006 610.5006 582.9471 77.1558 234.4694 165.5772 190.4489 260.4803 769.5534 187.5201 345.9593 77.4574 28.6424 98.4599 34.4865 57.9105 777.5695;
	0.9699 13.1052 21.7567 34.477 7.7387 5.0147 6.4689 1.4722 11.3051 14.2217 26.2887 39.2175 59.0417 64.6359 152.7311 57.5406 71.3929 75.6552 74.3982 66.6279 2.1563 11.7009 45.083 49.185 28.1311 5.8652 2.226 777.3875 498.1994 498.1994 539.1767 77.6112 247.9939 171.5003 202.6423 212.5651 586.8177 194.5413 246.1558 75.351 29.6239 55.6293 24.0133 32.518 592.9304;
	0.665 8.9862 72.2218 81.926 6.9526 4.035 4.0786 0.9927 12.5516 16.0232 29.6187 44.1853 66.5207 64.7832 158.8529 59.8469 74.2545 78.6876 78.7913 58.4789 1.3595 9.4149 45.2155 44.4532 18.215 19.3081 1.5235 789.9771 492.1777 492.1777 558.1338 81.5832 262.6377 150.5249 203.1042 209.9958 692.5687 208.6238 242.9963 48.7901 39.1108 44.7613 74.9038 122.572 699.783;
	1.1208 15.1447 51.0995 57.4839 3.0228 0.754 1.2016 2.1616 1.403 19.5393 36.1181 53.8811 81.1177 67.2738 137.8156 51.9212 64.4208 68.2668 78.8001 50.479 0.4005 1.7593 60.5757 42.6111 17.9781 6.1223 1.7092 787.8707 513.4078 513.4078 610.7538 92.2748 262.6671 129.933 210.9125 219.054 726.696 233.0193 336.1235 48.1556 76.289 8.3644 19.5755 140.4977 734.2657;
	0.4756 6.4264 25.1198 39.9593 0.0507 0.3097 3.1997 1.5409 2.6481 21.6024 39.9316 59.5701 89.6825 62.7586 122.626 46.1986 57.3205 60.7427 5.1593 61.4433 1.0666 0.7225 66.8364 48.3973 20.6517 7.9706 1.7304 824.982 501.5374 501.5374 633.2292 88.6427 17.1976 158.1553 196.7568 213.9893 693.4662 211.9514 356.867 55.317 88.3277 3.4352 0.7569 37.4554 700.6898;
	0.234 3.1624 26.6913 46.674 1.0978 0.0 3.6426 2.1961 2.2112 22.8731 42.2806 63.0743 94.958 60.2682 112.484 42.3777 52.5797 55.7188 8.5829 64.2798 1.2142 0.0 58.934 54.8369 17.3794 18.0903 2.5751 690.578 357.5651 357.5651 619.4472 76.5639 28.6095 165.4563 188.9488 152.5611 595.3248 208.6707 193.0951 46.5521 74.1683 0.0 0.0 1.9957 601.5261;
	0.6962 9.4065 44.2781 76.2767 5.1544 1.3151 7.3306 3.8418 20.8065 25.0947 46.3872 69.2006 104.1811 54.6202 125.9568 47.4535 58.8775 62.3925 80.8994 66.3337 2.4435 3.0686 60.0133 71.4663 32.6877 12.664 2.0076 635.3216 350.1546 350.1546 533.7333 58.9391 269.6646 170.7431 171.2417 149.3993 662.9799 203.1348 290.9705 87.5562 89.8779 14.589 1.6113 42.0217 669.8859;
	0.4702 6.353 45.1082 70.3309 0.0369 3.5534 3.5303 2.7405 15.0191 20.0098 36.9877 55.1784 83.0708 40.1694 138.1023 52.0292 64.5548 68.4088 74.2469 63.2677 1.1768 8.2912 46.4872 64.0619 34.652 15.7047 1.2922 494.8591 338.1546 338.1546 496.3276 56.4782 247.4897 162.8511 125.9366 144.2793 717.1022 178.323 199.5632 92.8179 74.1486 39.4188 0.5061 33.4391 724.572;
	0.611 8.2561 38.7702 64.1216 7.4119 5.4036 1.2194 3.1539 24.4847 17.0833 31.5781 47.1084 70.9214 25.6249 142.6062 53.7261 66.6601 70.6398 81.5947 67.8687 0.4065 12.6084 38.4738 62.9482 30.1283 31.6627 1.4721 433.0202 379.0255 379.0255 539.0722 59.008 271.9824 174.6942 80.3374 161.7176 543.3631 149.2293 419.9122 80.7009 54.1299 59.9441 8.9369 6.2869 549.0231;
	0.2491 3.3657 45.2943 65.907 0.1683 3.4133 0.2713 5.5264 4.0416 20.5333 37.9555 56.6222 85.2444 9.0415 155.7315 58.6709 72.7954 77.1414 86.2037 67.9803 0.0904 7.9644 62.3109 65.4224 39.6112 38.2406 2.6161 351.1284 308.1148 308.1148 407.5809 60.5997 287.3457 174.9815 28.3463 131.4623 414.5074 126.0328 270.231 106.1013 50.5832 37.8648 8.3957 56.5825 418.8252;
];