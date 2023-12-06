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
	4.0062 54.1323 94.792 119.4543 14.978 34.9685 32.6745 18.7059 12.1884 16.8162 31.0846 46.372 69.8128 53.2098 199.4143 75.1282 93.2146 98.7796 86.9572 70.4856 10.8915 81.5933 20.4494 87.9593 105.5802 75.1728 14.1134 1364.6928 834.3872 834.3872 725.3686 109.5673 289.8575 181.4302 166.8198 356.0052 1253.2611 251.1923 473.3089 282.8042 121.2164 387.9177 217.5217 281.5202 1266.3159;
	3.9774 53.7428 95.1834 118.8941 15.2544 34.9944 32.3258 18.978 12.0858 14.2752 26.3874 39.3648 59.2636 61.4267 191.6911 72.2185 89.6045 94.954 84.8427 71.8926 10.7753 81.6537 26.3023 85.6142 105.2308 75.4254 14.1059 1341.4489 808.1295 808.1295 744.4124 111.7717 282.8091 185.0517 192.5809 344.8019 1258.0569 253.3244 462.3933 281.8683 122.8062 388.2049 215.856 282.9503 1271.1616;
	3.903 52.7384 94.1259 117.3977 15.2747 35.1253 32.8289 18.7114 23.229 15.5341 28.7145 42.8364 64.49 43.5353 173.321 65.2977 81.0175 85.8544 86.336 71.7329 10.943 81.9591 25.4638 85.5369 104.5038 74.6204 14.1148 1268.95 790.0639 790.0639 711.0092 113.5871 287.7867 184.6406 136.489 337.0939 1174.1476 258.4697 460.0887 279.921 121.306 389.6568 218.4764 271.326 1186.3784;
	3.75 50.6703 91.8772 117.288 15.1871 34.6186 31.6528 18.0908 27.5319 29.2209 54.0145 80.579 121.3112 61.9636 195.2008 73.5408 91.245 96.6925 86.6763 65.1116 10.5509 80.7767 17.0462 82.2352 99.7203 72.9549 13.6576 1309.6416 784.2103 784.2103 714.9376 115.1166 288.9211 167.5973 194.2644 334.5964 1157.5686 268.9282 467.8952 267.1079 119.6414 384.0357 184.3878 262.9328 1169.6266;
	3.2061 43.3219 94.2025 118.7443 15.035 31.9742 31.7585 18.576 27.6685 29.8146 55.1119 82.2161 123.7759 63.4195 196.0155 73.8477 91.6259 97.0961 85.3238 66.2852 10.5862 74.6065 70.8778 84.5415 100.6171 71.4314 13.9342 1333.4272 792.9439 792.9439 778.1269 117.6481 284.4127 170.6183 198.8286 338.3227 1144.1163 313.2585 475.6359 269.5101 120.6477 354.7006 180.4771 263.4563 1156.0342;
	3.75 50.6713 94.8657 117.1594 14.824 33.7063 20.1547 18.8916 26.142 30.0883 55.6178 82.9708 124.9121 55.479 195.4423 73.6318 91.3579 96.8121 49.945 66.8926 6.7182 78.648 72.6616 85.0355 100.4295 72.9908 13.9737 1324.9946 817.9205 817.9205 801.637 120.6747 166.4832 172.1818 173.9342 348.9794 1226.5893 327.4269 471.0561 269.0077 117.5501 373.915 163.5453 262.0679 1239.3662;
	3.703 50.0354 93.0787 113.3653 14.3252 33.5434 14.3804 18.5321 25.8206 29.4898 54.5115 81.3204 122.4274 66.4665 197.9385 74.5722 92.5248 98.0486 86.3148 69.9221 4.7935 78.268 73.0958 84.9015 99.4217 72.4104 13.7184 1308.8767 826.4478 826.4478 786.7583 121.2389 287.7161 179.9797 208.3815 352.6177 1216.6746 335.6338 443.2236 266.308 119.4049 372.1086 174.4345 261.1057 1229.3483;
	3.6808 49.7359 92.1908 113.2965 14.2451 32.0787 10.9339 17.9791 2.4228 28.9687 53.5483 79.8835 120.2641 46.8151 197.9663 74.5827 92.5377 98.0624 85.2505 69.4292 3.6446 74.8502 71.5121 82.917 96.7086 70.3548 13.6164 1282.7838 801.4336 801.4336 753.3071 119.5515 284.1682 178.7109 146.7716 341.945 1186.6908 313.6552 182.0435 259.0409 119.2766 355.8595 193.0753 261.0398 1199.0521;
	3.8007 51.3561 93.0222 116.1939 14.9674 31.0744 16.5469 18.6929 17.4683 29.0581 53.7134 80.1299 120.6351 29.0708 199.3289 75.096 93.1747 98.7374 88.6654 71.0271 5.5156 72.507 72.8511 84.4803 101.195 70.5682 13.7423 1123.2925 736.8628 736.8628 758.2989 118.2814 295.5514 182.824 91.141 314.3948 1021.6034 298.7123 321.4401 271.058 121.1081 344.7189 181.6423 270.7485 1032.2451;
	3.8193 51.6066 90.2877 117.102 15.2237 31.2521 9.9991 18.4395 27.0503 26.8377 49.6091 74.007 111.4172 24.843 190.7807 71.8755 89.1789 94.503 86.9443 70.9599 3.333 72.9216 54.9429 85.5403 102.1247 70.7886 13.2972 942.3101 633.3238 633.3238 597.7827 112.7785 289.8143 182.651 77.8862 270.2182 771.6771 265.8313 295.8989 273.5482 119.7663 346.6903 156.8882 272.1117 779.7154;
	3.6557 49.3959 91.8996 118.2973 15.0113 26.8665 3.956 18.4746 18.3232 29.9107 55.2895 82.4811 124.1748 53.3282 193.3718 72.8517 90.3901 95.7865 78.4294 71.3949 1.3187 62.6886 74.7024 87.1897 104.7981 70.826 13.7269 770.1199 666.3397 666.3397 543.1202 109.8972 261.4312 183.7707 167.1912 284.3049 705.9266 201.7166 128.0373 280.7093 118.887 298.0393 148.1777 273.6918 713.28;
	3.495 47.2256 92.9757 119.4172 15.1646 20.2876 4.236 18.8691 8.6215 28.2785 52.2723 77.98 117.3984 44.3062 196.6015 74.0685 91.8998 97.3863 34.2421 71.0596 1.412 47.3378 75.3852 86.3821 103.7901 73.5168 13.9564 591.1728 715.8742 715.8742 520.7202 112.3968 114.1405 182.9075 138.906 305.4397 767.4636 211.3904 117.0732 278.0092 120.9659 225.0572 138.0473 272.039 775.458;
	3.6014 48.6627 91.577 117.1704 14.9954 20.7023 0.4112 18.4245 25.885 26.2867 48.5906 72.4875 109.1296 49.7902 195.7834 73.7603 91.5174 96.9811 52.7303 70.5482 0.1371 48.3053 75.059 84.6863 103.948 72.2649 13.7381 613.9992 651.719 651.719 508.0826 101.5266 175.7678 181.5913 156.0989 278.0668 555.6854 221.1732 29.4761 278.4321 120.9744 229.6571 135.9737 267.0004 561.4737;
	3.6428 49.2224 89.0324 114.7926 15.0279 21.2483 1.9784 18.0023 19.1825 23.2103 42.9039 64.0042 96.358 36.4392 198.8501 74.9156 92.9509 98.5002 50.2246 71.4519 0.6595 49.5793 72.6292 83.9923 102.4554 71.0671 13.4991 542.1831 677.9738 677.9738 481.4668 79.9082 167.4155 183.9173 114.2418 289.2688 648.8122 226.2055 67.6 274.4341 120.7412 235.7139 157.2694 261.1928 655.5707;
	3.6761 49.6728 88.8305 113.3833 15.1024 19.5417 1.1406 17.9196 7.7446 25.4555 47.054 70.1953 105.6787 31.2093 193.7584 72.9974 90.5708 95.978 62.3542 69.2593 0.3802 45.5974 71.1235 84.6374 100.0034 73.3701 13.5188 382.435 671.4096 671.4096 453.5437 72.6947 207.8474 178.2737 97.8455 286.4681 564.0873 215.0927 226.2507 267.8664 116.2059 216.7829 168.8565 240.1054 569.9632;
	3.5678 48.2086 92.6013 117.8764 15.4071 10.8786 12.2272 17.9933 26.0517 27.4562 50.7524 75.7127 113.985 24.3837 185.4371 69.8624 86.6811 91.8561 61.0027 68.6382 4.0757 25.3833 71.0007 87.9927 102.6631 72.7404 13.9238 435.1006 569.1725 569.1725 428.1156 73.3685 203.3424 176.6749 76.4462 242.8469 482.19 202.2271 421.237 274.9904 120.7204 120.6795 165.7079 241.7386 487.2128;
	3.5933 48.5537 92.8314 115.9107 15.3585 18.7208 5.7833 18.6748 14.5131 28.514 52.7076 78.6294 118.3762 32.5616 187.605 70.6791 87.6944 92.9299 64.386 70.3608 1.9278 43.6819 70.568 88.2078 104.6513 73.2195 14.0253 920.9329 458.6181 458.6181 295.9402 71.6464 214.6199 181.1088 102.0849 195.6771 757.9715 204.7533 139.3002 280.3158 123.4106 207.6761 140.3362 240.4299 765.867;
	3.4104 46.0821 90.7384 117.0136 15.408 22.1588 2.1241 18.1444 2.8261 28.5416 52.7587 78.7056 118.4908 57.6477 187.5946 70.6752 87.6896 92.9248 77.1416 71.8688 0.708 51.7038 71.4209 85.319 101.0978 71.083 13.9848 1140.1102 561.7081 561.7081 222.9045 61.6003 257.1386 184.9904 180.7332 239.6621 920.0888 190.6025 138.4275 270.7978 122.836 245.8147 181.4155 258.37 929.673;
	2.5578 34.5611 92.5445 118.2983 15.3942 34.1634 3.1316 18.012 7.4192 25.1501 46.4896 69.3533 104.411 63.7438 187.8756 70.7811 87.8209 93.064 56.4653 71.4773 1.0439 79.7146 53.3388 86.6092 102.4477 72.6742 13.6263 1124.6036 651.4934 651.4934 294.6074 55.7784 188.2177 183.9828 199.8454 277.9705 1084.7245 123.7048 275.2706 274.4135 122.6521 378.9861 175.213 264.9795 1096.0237;
	3.786 51.1566 93.7551 86.4853 15.4143 34.044 3.5835 17.5349 1.7343 18.0647 33.3923 49.8147 74.9957 65.0478 192.4774 72.5148 89.972 95.3435 34.3673 71.3908 1.1945 79.4361 48.0084 87.7212 105.098 74.336 13.7268 1250.7082 713.478 713.478 379.1285 52.4379 114.5576 183.76 203.9337 304.4173 1152.6638 104.2204 49.6528 281.5124 121.4277 377.6618 196.4416 265.0583 1164.6707;
	3.8978 52.6675 93.1697 118.767 15.3995 33.9748 3.2245 18.3555 1.7805 16.4814 30.4657 45.4488 68.4229 63.8857 192.9622 72.6974 90.1986 95.5836 58.9401 71.6859 1.0748 79.2746 65.8473 84.8271 105.5229 74.0602 13.8682 1196.9474 677.4417 677.4417 596.2453 49.7188 196.4669 184.5197 200.2903 289.0418 1191.8417 143.5029 107.978 282.6507 118.9304 376.8941 207.4745 276.8231 1204.2567;
	3.8672 52.2548 94.0796 120.2706 15.404 34.4705 6.3856 18.5043 27.6897 29.74 54.974 82.0104 123.4663 62.149 195.8068 73.7691 91.5283 96.9926 65.0414 71.9296 2.1285 80.4311 72.3623 89.0344 106.3516 74.0923 13.8663 1249.3552 702.4306 702.4306 538.2227 71.9844 216.8046 185.1469 194.8455 299.7037 1214.0042 198.7832 446.0485 284.8703 122.8371 382.3923 216.4381 276.761 1226.6501;
	3.849 52.009 94.1119 119.2404 15.3982 34.4445 8.3922 18.6846 27.3042 30.1889 55.8037 83.2482 125.3297 63.0117 189.5792 71.4229 88.6172 93.9078 65.1576 69.69 2.7974 80.3704 68.6418 86.414 104.4495 73.9316 14.0612 1271.2557 752.1934 752.1934 563.4465 111.277 217.1919 179.3822 197.5502 320.9359 1224.5026 223.6986 461.1599 279.7754 116.5689 382.1038 210.3375 279.9524 1237.2578;
	3.8575 52.1233 92.4831 117.5175 15.3598 34.4496 30.1348 18.0764 26.7789 27.833 51.4489 76.7516 115.5491 63.8544 180.793 68.1127 84.5102 89.5556 67.3798 68.1403 10.0449 80.3824 67.6871 84.9693 105.1536 73.0676 13.706 1253.0044 700.7728 700.7728 506.1025 110.8182 224.5994 175.3933 200.1923 298.9964 1120.431 203.9658 457.986 281.6615 116.7911 382.1611 207.4532 273.2369 1132.1021;
];
