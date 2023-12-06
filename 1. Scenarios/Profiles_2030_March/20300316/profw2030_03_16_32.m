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
	3.8135 51.529 90.4004 117.8886 14.2436 34.544 30.7562 18.0987 27.7035 29.5283 54.5825 81.4264 122.587 69.3903 186.7979 70.375 87.3171 92.5301 76.3629 69.0129 10.2521 80.6026 75.768 85.8079 104.0514 71.8408 13.4063 1330.8829 796.3108 796.3108 552.6603 112.3772 254.543 177.6394 217.548 339.7593 1319.7569 225.1599 452.9237 278.7091 121.8323 383.2079 199.3444 272.5177 1333.5043;
	3.7903 51.2151 91.9238 118.2431 14.4571 33.2161 28.4647 18.3535 27.4175 30.942 57.1957 85.3248 128.456 68.4813 165.9723 62.5291 77.5824 82.2142 65.7108 67.3708 9.4882 77.5042 75.6458 87.7502 104.5304 70.25 13.6956 1333.0817 801.5667 801.5667 578.5197 95.4954 219.0361 173.4127 214.6981 342.0018 1313.9422 211.1899 463.2038 279.992 121.1784 368.4771 190.0595 266.3576 1327.6291;
	3.8796 52.4213 90.387 120.2536 14.7985 34.5641 22.5436 18.8468 27.1237 31.3216 57.8974 86.3716 130.0319 66.9267 188.1609 70.8885 87.9543 93.2053 77.5697 68.5554 7.5145 80.6495 75.7169 88.5141 104.8806 74.9157 13.6476 1315.2306 795.576 795.576 592.283 92.8479 258.5656 176.4618 209.8242 339.4458 1311.8366 212.6556 440.9768 280.9303 123.1928 383.4307 196.2137 266.757 1325.5016;
	3.7168 50.2227 88.8392 119.1223 14.6689 33.7617 23.376 18.9055 26.7345 31.2455 57.7569 86.1619 129.7162 68.3181 196.0892 73.8755 91.6603 97.1326 84.9954 69.2048 7.792 78.7773 75.6318 88.3144 105.1234 74.1193 13.7542 1315.3001 810.5879 810.5879 629.8132 102.8993 283.318 178.1333 214.1865 345.8508 1312.7147 248.009 442.6948 281.5805 119.9691 374.5299 159.3379 271.5275 1326.3888;
	3.7177 50.2337 89.2065 118.3913 14.9511 34.3269 30.4488 18.0294 27.4635 31.2811 57.8226 86.26 129.8639 67.8161 202.4419 76.2688 94.6298 100.2794 87.8995 72.3819 10.1496 80.0962 75.7595 88.0539 104.7051 72.7764 13.4246 1259.5416 791.0779 791.0779 662.3777 102.8167 292.9983 186.3111 212.6126 337.5266 1283.7764 238.7832 466.693 280.4602 120.3931 380.8002 189.404 263.28 1297.1491;
	3.768 50.9145 89.8138 116.9829 14.9637 34.4398 30.108 17.9011 28.0036 31.0869 57.4637 85.7245 129.0578 68.7114 205.05 77.2514 95.849 101.5713 89.6892 71.4653 10.036 80.3596 75.3776 87.1643 102.5038 71.6017 13.3162 1240.2812 755.9145 755.9145 685.6808 105.233 298.964 183.9518 215.4195 322.5235 1203.9628 232.5329 473.4834 274.5637 118.3493 382.0527 182.3596 268.9762 1216.5041;
	3.7004 50.0 87.4414 113.1551 15.2101 33.976 30.7523 17.9293 26.7455 31.0131 57.3272 85.5208 128.7512 67.4506 201.9125 76.0694 94.3823 100.0171 91.0045 72.8841 10.2508 79.2773 75.4573 83.3721 98.3873 69.7896 13.1895 1200.5646 723.2198 723.2198 654.8021 104.195 303.3484 187.6039 211.4667 308.5738 1151.5199 261.3206 472.373 263.5374 121.5078 376.907 169.3894 256.4163 1163.5149;
	3.8466 51.9765 89.4825 114.086 15.148 33.7498 30.3697 17.6201 27.3019 29.4313 54.4033 81.1591 122.1846 67.809 202.2028 76.1787 94.5181 100.1609 91.9303 72.6624 10.1232 78.7494 72.8513 86.3943 97.9596 70.4222 12.9147 1268.9534 748.1106 748.1106 674.9542 113.0924 306.4342 187.0333 212.5905 319.1939 1215.9522 279.3897 473.6317 262.3919 115.7365 374.3973 180.8004 266.7426 1228.6184;
	3.8634 52.2035 91.6438 112.4543 15.3685 34.4058 31.7664 17.8452 28.1179 30.2933 55.9967 83.5361 125.7631 67.5257 202.488 76.2862 94.6514 100.3022 92.6525 73.047 10.5888 80.2801 73.1309 86.6654 100.2389 69.0991 13.0522 1312.9278 766.6635 766.6635 699.3601 116.1932 308.8418 188.0231 211.7022 327.1097 1273.0754 311.4717 470.4144 268.497 118.4042 381.6747 213.315 267.6751 1286.3366;
	3.9023 52.7288 92.9339 114.249 15.403 33.7939 27.605 17.7563 28.1129 30.1153 55.6676 83.0452 125.0241 66.5954 204.8414 77.1728 95.7515 101.468 92.1345 71.1757 9.2017 78.8525 74.0911 89.207 102.4023 69.7954 13.1626 1283.0936 788.6803 788.6803 734.3516 117.115 307.1151 183.2064 208.7856 336.5036 1251.9858 339.0952 473.1555 274.2919 117.7948 374.8874 215.8498 265.6109 1265.0273;
	3.9221 52.9966 94.3795 115.6511 15.3777 34.1726 28.31 18.0813 27.2874 30.4731 56.3291 84.0319 126.5096 67.5351 200.8968 75.6867 93.9076 99.514 91.791 71.5921 9.4367 79.7361 72.6711 89.4789 104.5192 70.7024 13.1651 1265.7378 799.4566 799.4566 741.0709 117.4461 305.9699 184.2781 211.7318 341.1015 1266.1323 340.6338 472.5708 279.962 118.3291 379.0881 216.9783 267.2796 1279.3211;
	3.8686 52.2732 89.767 112.7087 15.0869 33.8635 27.726 17.6792 27.589 29.3389 54.2326 80.9043 121.801 68.5299 200.9802 75.7181 93.9466 99.5553 90.5365 69.1507 9.242 79.0149 73.3127 89.4412 104.5417 66.5254 12.8437 1300.9559 786.5714 786.5714 750.7337 120.0699 301.7884 177.9941 214.8504 335.6038 1296.8653 345.8928 473.7322 280.0225 119.4284 375.6593 215.0148 267.4553 1310.3743;
	3.8675 52.258 90.3073 111.9105 15.2597 33.9982 28.8506 17.767 27.406 30.799 56.9316 84.9307 127.8627 66.8298 197.0466 74.2361 92.1078 97.6068 92.6186 68.0397 9.6169 79.3291 72.9876 88.6876 105.3375 70.6775 12.9314 1291.622 819.5054 819.5054 734.3915 117.4522 308.7288 175.1344 209.5205 349.6556 1293.9685 345.7013 473.908 282.1541 120.5025 377.1534 217.2615 275.7542 1307.4474;
	3.8255 51.691 90.7303 113.5248 15.1173 33.2414 27.9253 18.2517 26.7801 29.4945 54.5201 81.3332 122.4467 68.2004 197.6209 74.4525 92.3763 97.8913 92.6335 70.9317 9.3084 77.5634 71.9759 89.3934 106.2356 71.1336 13.4427 1303.1142 763.5295 763.5295 713.2318 113.8529 308.7783 182.5783 213.8173 325.7726 1269.3574 340.7516 464.6212 284.5596 119.7368 368.7584 213.7049 278.7906 1282.5799;
	3.69 49.86 90.3346 111.7501 15.0803 33.8351 24.6899 17.5106 27.6247 28.8718 53.3691 79.6162 119.8617 67.0424 195.9181 73.811 91.5803 97.0478 91.8639 71.0958 8.23 78.9486 73.3104 89.024 105.7997 69.0532 13.1594 1259.3759 782.8579 782.8579 759.6222 116.6178 306.2129 183.0007 210.1871 334.0194 1272.435 353.075 463.3113 283.392 120.9697 375.344 216.9404 275.4252 1285.6895;
	3.6911 49.875 89.7874 113.0367 15.0548 31.7838 24.8366 18.3259 27.9239 29.1096 53.8087 80.272 120.849 64.6704 188.0067 70.8304 87.8822 93.1289 87.1698 69.6762 8.2789 74.1622 71.8477 89.286 105.7841 68.3169 13.2812 1233.1326 728.8556 728.8556 735.4674 115.0023 290.566 179.3466 202.7505 310.9784 1161.6411 336.2583 462.0126 283.3502 118.2303 352.5882 208.2512 274.6149 1173.7415;
	3.7915 51.2314 90.566 114.5555 14.8091 30.5291 23.2834 17.7648 28.041 27.8586 51.4963 76.8223 115.6556 65.5744 191.8021 72.2603 89.6563 95.0089 86.9065 68.0286 7.7611 71.2345 70.2076 86.7625 104.5952 54.4373 12.648 1214.3839 747.9103 747.9103 673.3234 114.102 289.6882 175.1059 205.5847 319.1084 1198.039 339.8101 465.4406 280.1657 118.3381 338.6694 207.7299 255.0365 1210.5186;
	3.7368 50.4927 87.8297 107.5766 14.0576 28.7366 19.603 11.9604 27.2623 28.1575 52.0487 77.6464 116.8962 65.2099 188.1597 70.8881 87.9537 93.2047 84.7351 67.8052 6.5343 67.0521 70.1018 84.8807 98.2635 65.2868 8.9217 1180.136 715.0069 715.0069 620.1085 106.0216 282.4505 174.5308 204.442 305.0696 1189.5757 299.8917 460.2985 263.2059 114.1671 318.785 189.127 239.3007 1201.9671;
	3.7293 50.3906 84.9543 101.095 14.2045 25.6115 16.2776 7.7645 27.5093 28.6987 53.0492 79.139 119.1433 68.3981 174.9876 65.9256 81.7965 86.6799 86.4588 67.0123 5.4259 59.7601 68.7468 85.7146 95.3849 60.4275 8.7823 1204.6184 697.5779 697.5779 607.5386 103.9808 288.1959 172.4899 214.4372 297.6332 1168.6943 297.0069 461.3382 255.4952 111.6291 284.1164 138.0309 234.4712 1180.8682;
	2.7805 37.571 79.6272 60.5813 13.9993 22.1157 27.132 8.5892 27.1315 27.7563 51.3071 76.5402 115.2308 68.7907 176.9119 66.6505 82.696 87.6331 85.0081 67.4743 9.044 51.6033 67.0231 81.4085 83.5058 30.9761 7.5837 1175.5897 718.5151 718.5151 663.6708 100.6122 283.3603 173.6789 215.6681 306.5664 1125.3236 309.2604 450.6275 223.6763 103.0481 245.3367 108.0357 198.1156 1137.0457;
	2.4708 33.386 75.8593 69.2137 14.448 12.7198 26.5594 8.9914 27.0968 25.8247 47.7366 71.2137 107.2118 68.1048 174.6661 65.8044 81.6462 86.5206 85.2546 66.2777 8.8531 29.6794 58.6393 81.479 74.57 38.2831 8.8944 1178.5954 720.3773 720.3773 631.0983 104.2696 284.182 170.599 213.5177 307.361 1134.4163 291.4719 456.3406 199.7412 104.4593 141.1045 78.1432 188.8082 1146.2332;
	2.1542 29.1075 74.5171 78.5147 14.3549 17.2706 27.141 9.1875 26.9941 21.7769 40.2542 60.0514 90.4071 65.5067 184.3971 69.4705 86.1949 91.3409 87.251 67.0982 9.047 40.2981 52.6215 69.7791 77.8595 50.3609 8.661 1113.2116 699.2301 699.2301 671.1265 102.6585 290.8368 172.7109 205.3725 298.3382 1078.721 276.7876 469.662 208.5522 110.9178 191.5889 68.2277 196.1738 1089.9577;
	2.7405 37.0307 73.3426 84.4858 14.3474 19.2285 25.0501 12.4977 26.8064 23.2177 42.9176 64.0246 96.3886 65.0801 149.3955 56.2839 69.8337 74.0029 79.4032 62.7829 8.35 44.8666 63.8198 80.5014 81.1595 58.0303 9.7643 945.6226 676.836 676.836 689.9462 99.1761 264.6773 161.6034 204.0349 288.7834 1001.3862 282.14 449.7983 217.3914 115.915 213.3085 78.9832 211.9889 1011.8173;
	3.3232 44.9038 85.353 80.9115 14.9118 24.4036 22.1388 10.1977 27.7557 26.2221 48.4712 72.3095 108.8615 66.6421 164.7835 62.0812 77.0267 81.6253 84.4518 67.868 7.3796 56.9417 66.3728 82.5908 77.7261 60.8382 7.222 851.3636 676.2238 676.2238 633.2601 99.1926 281.5061 174.6924 208.9318 288.5221 887.0601 261.8986 453.8878 208.195 116.1869 270.7173 105.9058 239.4086 896.3004;
];
