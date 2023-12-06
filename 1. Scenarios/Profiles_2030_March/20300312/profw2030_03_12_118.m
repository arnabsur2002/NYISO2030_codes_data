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
	3.6166 48.8688 86.4766 104.6885 14.8837 32.3109 27.4548 8.2866 27.727 28.4819 52.6483 78.5409 118.2429 68.4781 185.7771 69.9904 86.84 92.0245 90.215 69.6972 9.1516 75.392 73.9819 82.6592 93.7768 54.5234 7.565 1174.8878 759.9109 759.9109 733.6852 122.0713 300.7165 179.4009 214.6879 324.2286 1086.9478 288.194 450.455 251.1879 111.8001 358.4351 186.7101 233.497 1098.2702;
	3.6976 49.9622 84.1067 106.9393 14.6683 32.3635 28.2741 10.0275 28.0915 26.7693 49.4826 73.8183 111.133 69.101 188.1184 70.8725 87.9344 93.1842 88.1633 69.1904 9.4247 75.5147 71.74 81.1577 94.5156 55.2865 7.1096 1192.3826 785.5203 785.5203 786.4254 119.7485 293.8777 178.0963 216.6409 335.1553 1187.948 284.0681 453.6636 253.1669 115.3005 359.0187 189.0863 241.4353 1200.3224;
	3.7284 50.3788 88.0748 99.7783 15.3029 33.6549 27.1138 9.8086 27.9954 26.3457 48.6996 72.6502 109.3745 68.3793 190.8702 71.9092 89.2207 94.5473 89.6498 69.6085 9.0379 78.5281 67.2399 85.9026 88.2401 56.0254 8.2846 1233.1221 786.7826 786.7826 792.2611 119.9384 298.8328 179.1723 214.3783 335.6939 1192.6897 270.6309 458.7252 236.3574 116.1068 373.3451 184.7802 246.6778 1205.1136;
	3.6115 48.7989 83.9618 98.8186 14.8503 32.1649 22.4441 9.2345 26.8196 25.857 47.7963 71.3027 107.3458 66.0496 178.9519 67.4191 83.6496 88.6436 86.7596 67.5008 7.4814 75.0514 67.8983 83.4741 82.9242 46.8756 6.5569 1146.1093 774.5326 774.5326 770.2041 117.5111 289.1985 173.7471 207.0745 330.4672 1184.9875 265.7245 411.658 222.1183 105.5668 356.816 181.0477 238.3303 1197.3312;
	3.5974 48.6092 79.4365 82.3026 14.6293 31.9647 18.8275 8.8081 23.516 25.8429 47.7703 71.2639 107.2874 61.6403 183.7468 69.2255 85.8909 91.0187 86.2052 70.2373 6.2758 74.5843 69.5128 82.9429 69.0461 44.1557 6.6811 1213.8089 755.3869 755.3869 714.9863 111.8768 287.3507 180.791 193.2506 322.2984 1162.1375 247.0335 367.0197 184.9448 105.1238 354.5952 185.5473 211.5389 1174.243;
	3.5568 48.0608 78.7474 76.0417 14.3278 31.2836 17.0946 6.6324 24.4265 25.5677 47.2614 70.5048 106.1446 51.5036 162.7061 61.2986 76.0556 80.5963 84.8408 67.9083 5.6982 72.9952 65.1294 80.1896 51.7281 34.6787 5.0663 1225.5112 721.3061 721.3061 677.0777 101.7227 282.8028 174.796 161.4706 307.7573 1150.2775 227.8272 316.2207 138.5575 88.9596 347.0399 180.1121 175.896 1162.2595;
	3.2535 43.9625 66.08 57.5741 14.1337 28.8398 14.2496 5.0407 18.048 24.3883 45.0814 67.2526 101.2484 59.6247 182.2793 68.6727 85.205 90.2918 89.1367 70.3531 4.7499 67.2928 63.0922 73.4663 44.9575 21.5788 4.043 1260.4646 714.2719 714.2719 576.7431 71.0845 297.1222 181.089 186.9315 304.756 1110.9501 208.9746 249.2573 120.4218 74.7024 319.9292 154.1177 114.4466 1122.5225;
	3.4636 46.8006 64.7495 65.786 14.4331 28.5373 14.8037 5.0996 15.7054 20.7296 38.3184 57.1634 86.0593 62.959 189.8202 71.5137 88.7299 94.0272 91.1977 71.034 4.9346 66.5871 52.8765 79.3173 54.7536 20.1318 3.5668 1245.2392 703.6171 703.6171 645.4985 73.111 303.9922 182.8417 197.3848 300.2099 1089.5006 217.4994 244.0304 146.6614 75.3847 316.5739 149.7137 133.7579 1100.8495;
	2.8244 38.1643 57.6064 62.5063 14.2504 23.0841 13.8232 3.9731 19.6156 17.2085 31.8096 47.4537 71.4412 63.7781 184.2801 69.4265 86.1402 91.2829 90.4469 69.9516 4.6077 53.863 50.1165 81.1364 56.5857 14.2254 2.7218 1235.6103 800.8114 800.8114 746.9016 94.3179 301.4896 180.0556 199.9528 341.6795 1149.6183 242.5235 237.9324 151.5689 52.5316 256.08 136.3106 152.8412 1161.5935;
	2.5765 34.8147 50.5556 59.1821 14.1071 17.4154 17.4828 2.3898 16.9542 7.2971 13.4886 20.1223 30.294 64.0825 170.9788 64.4153 79.9227 84.6942 85.1516 67.5643 5.8276 40.636 37.727 71.2157 37.6008 8.7404 1.4669 1159.4743 805.1302 805.1302 710.8877 114.4281 283.8387 173.9107 200.9074 343.5222 1120.1245 225.383 348.8028 100.7163 45.4741 193.1951 122.2284 135.5081 1131.7925;
	2.0231 27.3371 32.1896 33.4932 12.6626 11.9898 16.9999 1.0007 12.7976 3.1756 5.8701 8.757 13.1837 59.9091 161.3906 60.803 75.4407 79.9446 84.1995 68.5525 5.6666 27.9763 8.1644 48.832 20.5793 5.7876 2.6726 1139.2533 764.5501 764.5501 681.4819 106.2181 280.6651 176.4542 187.823 326.208 1042.7982 224.7034 378.036 55.1232 34.9474 133.0074 87.7753 86.4194 1053.6607;
	1.4695 19.8565 27.4088 18.9913 7.4915 9.6318 17.4911 1.3287 8.3029 6.9883 12.9178 19.2708 29.0121 59.2279 165.1195 62.2078 77.1838 81.7918 82.3329 68.3051 5.8304 22.4742 32.762 35.5486 19.2662 8.4011 5.6905 968.3332 667.8742 667.8742 613.1717 102.956 274.443 175.8176 185.6876 284.9596 940.4155 187.1509 394.2274 51.6058 20.5496 106.8487 64.1027 68.5273 950.2115;
	1.0422 14.0826 24.6982 23.1806 7.5588 7.8193 18.2663 2.3288 14.5714 11.3201 20.925 31.216 46.9955 58.2458 163.8431 61.7269 76.5871 81.1595 78.6254 66.9021 6.0888 18.245 35.8762 34.9087 22.0472 12.6955 2.8763 972.4633 692.2955 692.2955 577.705 90.2095 262.0846 172.2061 182.6084 295.3794 951.9903 190.4754 434.3798 59.0551 23.3334 86.7421 46.9098 35.8657 961.9069;
	0.8836 11.939 23.931 31.5489 7.9456 9.1036 13.6905 3.2285 12.9353 17.22 31.8309 47.4854 71.4891 61.1366 158.8451 59.844 74.2508 78.6837 78.2387 68.1787 4.5635 21.2417 52.4554 41.0755 26.3129 15.4329 4.256 915.3728 622.614 622.614 575.403 79.4816 260.7958 175.4921 191.6714 265.6486 792.4534 177.5721 428.2649 70.4811 29.0482 100.9891 39.4248 54.9438 800.7081;
	0.907 12.2554 22.305 9.1772 6.7148 8.8949 11.1172 2.5149 11.7385 17.4786 32.3089 48.1985 72.5626 63.3127 156.6457 59.0154 73.2228 77.5943 70.8728 68.7567 3.7057 20.7548 59.8847 49.2779 28.364 9.1376 3.9966 805.0196 565.9114 565.9114 535.2218 61.4905 236.2426 176.9799 198.4938 241.4555 706.1583 158.6761 349.224 75.9749 28.3035 98.674 36.9861 54.8509 713.5142;
	0.8834 11.9365 16.9531 28.2619 7.413 0.9552 4.9415 1.74 6.6616 15.4331 28.5278 42.5579 64.0707 63.1669 157.3708 59.2885 73.5617 77.9534 71.9977 70.0357 1.6472 2.2289 57.2692 42.6475 24.2522 6.5746 2.4561 812.4057 450.7004 450.7004 464.222 71.1067 239.9922 180.272 198.0367 192.2988 543.6892 161.5986 218.7182 64.9614 23.7781 10.5967 0.0032 27.5281 549.3526;
	0.4758 6.4287 13.828 33.6033 6.5312 2.302 3.774 4.8628 11.9809 19.0844 35.2773 52.6268 79.2293 63.3184 158.7996 59.8268 74.2296 78.6612 74.7073 67.26 1.258 5.3712 57.2768 42.2131 18.0587 51.7321 1.7268 783.4262 480.2592 480.2592 539.2456 75.1885 249.0244 173.1273 198.5118 204.9106 684.1412 176.8967 241.7225 48.3716 20.209 25.5363 0.0 8.0706 691.2676;
	0.816 11.0257 1.6753 7.476 2.1659 1.3747 3.2641 0.1635 2.7969 21.2572 39.2937 58.6185 88.2498 66.125 122.5134 46.1562 57.2679 60.6869 77.1041 55.6716 1.088 3.2077 69.7234 34.3959 14.5251 4.5079 1.2837 757.6493 508.1454 508.1454 579.7258 83.13 257.0136 143.2988 207.3107 216.8087 704.5341 181.4406 341.4309 38.9066 52.3814 15.2504 0.0 0.0016 711.873;
	0.4113 5.557 22.7533 38.9827 0.0054 4.098 5.5358 1.917 4.8116 24.5372 45.3566 67.6632 101.8665 64.2163 98.6293 37.158 46.1034 48.8559 0.1472 64.0267 1.8453 9.5619 72.62 41.8009 22.0423 8.9266 2.0472 797.4754 477.877 477.877 596.4009 80.9223 0.4906 164.805 201.3267 203.8942 667.5348 181.1507 363.7377 59.0419 62.8263 45.46 0.0053 5.8126 674.4883;
	0.1207 1.6307 24.1998 52.4649 0.5104 0.1652 5.9733 3.0295 0.4761 26.3037 48.622 72.5345 109.2003 63.2103 96.2818 36.2736 45.0061 47.6931 11.1496 67.5343 1.9911 0.3855 71.7792 58.9304 36.2867 21.9565 2.7447 699.2114 362.6526 362.6526 595.3747 69.942 37.1654 173.8336 198.1727 154.7318 592.3082 190.1643 75.1471 97.1964 72.4839 1.8327 0.0 0.1481 598.478;
	0.3352 4.5291 39.0214 74.202 0.0 0.0 0.3712 4.6744 0.0 25.0196 46.2483 68.9934 103.8692 52.9473 104.5254 39.3793 48.8595 51.7765 80.0914 67.8862 0.1237 0.0 70.8163 69.4833 37.7445 16.3414 2.3769 574.5285 344.1885 344.1885 466.5687 54.2373 266.9715 174.7393 165.9971 146.8538 610.7467 170.0296 11.2403 101.1013 75.3142 0.0 0.0 39.9609 617.1086;
	0.4118 5.5648 38.3943 70.552 0.2218 0.0 1.4722 3.2097 0.4689 23.6406 43.6994 65.1908 98.1444 41.316 119.6778 45.0879 55.9424 59.2823 81.3939 67.0087 0.4907 0.0 69.5721 66.453 40.6169 18.9476 1.4843 432.438 313.6701 313.6701 414.3172 48.2416 271.3129 172.4806 129.5313 133.8326 630.7273 148.659 52.9423 108.7953 66.2123 0.0 0.0 28.656 637.2974;
	0.5552 7.5022 33.5826 67.9846 7.0722 0.0 1.6709 3.345 1.5359 16.8473 31.1419 46.4576 69.9417 24.8675 123.4912 46.5246 57.7249 61.1712 79.5012 66.9633 0.557 0.0 42.2757 57.1397 34.1179 26.9566 1.6736 414.6465 374.2341 374.2341 444.5064 52.1073 265.0041 172.3637 77.963 159.6732 518.9926 127.205 18.0472 91.3872 47.8528 0.0 0.0 0.6874 524.3987;
	0.0082 0.111 47.2789 73.904 11.8737 0.0146 0.8395 6.259 3.7974 21.6488 40.0174 59.6981 89.8752 9.9882 138.3205 52.1114 64.6568 68.5169 83.8869 66.8394 0.2798 0.0341 68.6904 65.0864 45.4106 39.6167 3.1633 310.2128 303.5096 303.5096 347.8413 50.3367 279.623 172.0448 31.3145 129.4974 395.037 114.7645 30.1765 121.6357 49.0581 0.1622 0.0 58.3959 399.152;
];
