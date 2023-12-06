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
	3.8867 52.5184 95.1546 119.3285 15.2457 33.6832 28.7901 18.7138 27.2033 30.3113 56.03 83.5858 125.838 68.4421 194.5705 73.3033 90.9504 96.3803 86.893 69.4719 9.5967 78.5941 75.2469 89.6313 105.6967 72.1573 13.9015 1335.218 813.5086 813.5086 595.5042 109.9548 289.6432 178.8209 214.5752 347.097 1309.3982 230.21 440.2097 283.1163 109.2753 373.6587 205.0575 285.2819 1323.0377;
	3.8762 52.3764 94.2963 116.6827 15.1343 32.3384 24.6492 18.2812 26.556 29.3801 54.3087 81.0179 121.972 67.4242 183.7995 69.2454 85.9156 91.0449 84.0017 69.5413 8.2164 75.4562 72.9732 86.888 101.6477 69.8537 13.5828 1302.8195 798.7515 798.7515 606.3242 101.6281 280.0058 178.9994 211.384 340.8007 1262.1204 218.0212 441.7593 272.2705 109.0966 358.7402 191.562 283.0328 1275.2675;
	3.8323 51.7828 92.5772 111.7314 15.1226 32.2588 20.6397 17.6904 26.3646 28.5667 52.8052 78.7749 118.5952 65.2402 186.9689 70.4394 87.3971 92.6148 83.6647 69.1799 6.8799 75.2704 70.3136 87.5333 98.3072 73.4752 13.1496 1275.1086 783.1037 783.1037 637.5817 97.8861 278.8824 178.0693 204.5368 334.1242 1283.9863 224.1719 402.0497 263.3228 112.9767 357.8571 186.5372 278.324 1297.3612;
	3.8212 51.6329 94.2748 116.6898 15.1292 32.6944 22.8094 17.7152 26.6021 29.244 54.0571 80.6426 121.407 67.2876 192.6566 72.5823 90.0558 95.4322 85.6704 69.9469 7.6031 76.2869 71.3655 89.2387 100.0728 71.6255 13.1861 1266.8505 775.693 775.693 646.841 103.3996 285.5679 180.0434 210.9557 330.9623 1270.6552 247.6013 430.3276 268.0521 112.9502 362.6899 155.898 284.3481 1283.8912;
	3.8189 51.6014 94.2996 111.9124 14.9139 32.5063 29.0652 16.2753 26.9235 29.6758 54.8553 81.8334 123.1997 67.0812 195.1173 73.5093 91.206 96.6511 86.1888 71.9777 9.6884 75.848 73.5416 85.424 97.377 70.64 12.9491 1246.4508 773.5715 773.5715 684.9828 107.0683 287.2961 185.2707 210.3085 330.0572 1252.4141 240.746 456.6589 260.8314 115.095 360.603 189.8716 273.6088 1265.4601;
	3.824 51.6705 92.741 111.2638 15.0477 32.8309 28.301 17.7346 26.5486 30.4766 56.3355 84.0414 126.5239 67.0898 196.2449 73.9341 91.7331 97.2097 91.9041 70.4915 9.4337 76.6054 73.6162 87.7442 98.9464 70.6035 13.117 1244.6823 763.0726 763.0726 720.5234 107.2439 306.3469 181.4454 210.3356 325.5776 1216.7241 238.1652 444.5005 265.035 115.935 364.2041 178.4555 279.2549 1229.3983;
	3.635 49.1168 92.6456 114.2041 14.7803 32.775 29.6648 18.2186 26.2525 30.9838 57.273 85.4401 128.6295 66.8182 192.9869 72.7067 90.2102 95.5958 91.8451 72.1768 9.8883 76.4749 74.0565 88.2732 99.2551 70.2058 13.4918 1239.8672 727.5874 727.5874 722.8409 106.6436 306.1502 185.7832 209.484 310.4373 1212.253 271.7424 446.4676 265.8619 115.0001 363.5835 156.9374 272.3419 1224.8807;
	3.6422 49.2138 87.8753 109.5221 14.642 32.4081 28.8743 17.2974 26.102 29.6311 54.7727 81.71 123.014 66.9219 194.6366 73.3282 90.9813 96.413 86.6411 70.3961 9.6248 75.619 70.9183 86.0847 97.0781 68.7302 12.4934 1263.6962 746.4162 746.4162 733.8051 111.3807 288.8037 181.1997 209.8092 318.4709 1226.2563 279.5724 453.4435 260.0308 113.6772 359.5141 164.4801 267.7509 1239.0298;
	3.7489 50.6564 87.9992 107.397 14.6259 32.9236 29.9508 16.3416 26.0691 30.9668 57.2417 85.3933 128.5592 66.4835 192.1319 72.3846 89.8105 95.1723 88.6036 70.0711 9.9836 76.8218 73.7074 85.3315 96.8077 68.5935 11.8267 1272.4872 761.3735 761.3735 754.3162 113.0705 295.3452 180.3632 208.4349 324.8527 1241.1876 283.6935 458.0445 259.3064 119.106 365.2326 200.5227 269.315 1254.1166;
	3.809 51.4676 90.3907 110.9852 15.0417 33.2324 23.9097 17.035 26.6536 30.8154 56.9619 84.9759 127.9307 66.7357 189.3357 71.3311 88.5034 93.7872 86.1849 72.332 7.9699 77.5423 74.7766 87.2487 99.0763 69.2787 12.5349 1263.7168 788.6199 788.6199 740.2741 113.9404 287.283 186.1829 209.2255 336.4778 1223.2972 311.6781 454.3674 265.3828 117.0586 368.6583 205.0417 274.0641 1236.0399;
	3.7236 50.3137 88.179 110.1818 14.8709 32.8831 25.4681 17.1568 26.1856 30.8235 56.9768 84.9982 127.9643 64.4655 190.8265 71.8928 89.2003 94.5257 90.6929 71.4372 8.4894 76.7272 73.8031 86.2691 98.5193 70.2444 13.0317 1262.6826 789.8872 789.8872 731.5674 114.1454 302.3098 183.8795 202.108 337.0186 1249.73 305.6137 435.9599 263.8909 116.4206 364.7829 203.6567 267.9563 1262.748;
	3.5966 48.5981 87.437 111.182 14.8118 32.8609 24.4107 17.4052 26.6049 29.1679 53.9165 80.4328 121.0911 66.6531 189.6851 71.4628 88.6668 93.9603 88.2319 68.8675 8.1369 76.6755 71.4757 88.6682 99.4917 66.6421 13.0092 1275.3883 803.8315 803.8315 758.5175 116.7405 294.1064 177.2651 208.9665 342.9681 1271.7381 323.2578 445.6205 266.4956 116.4724 364.5373 197.4217 267.1353 1284.9854;
	3.6127 48.8154 89.2823 111.6582 14.9323 32.4899 26.1215 17.7329 26.5497 29.8942 55.2589 82.4355 124.1061 67.0854 188.7262 71.1015 88.2185 93.4853 89.1148 68.8068 8.7072 75.8097 71.334 88.5802 100.3431 70.6695 13.2644 1252.7351 817.4922 817.4922 762.8534 115.2745 297.0493 177.1088 210.3217 348.7967 1268.7881 335.7893 435.4475 268.7762 117.4904 360.4211 200.0953 267.1699 1282.0047;
	3.7333 50.4445 92.1131 114.8532 15.0341 32.8374 24.9005 18.1973 26.9687 28.846 53.3214 79.545 119.7546 66.1823 192.0981 72.3718 89.7947 95.1556 85.4238 71.8658 8.3002 76.6206 72.4726 90.1207 103.2369 74.1617 13.6982 1282.3173 824.349 824.349 781.4149 117.9842 284.7458 184.9826 207.4904 351.7222 1291.7268 323.5878 428.7965 276.5273 116.4139 364.2762 196.562 281.5771 1305.1823;
	3.8522 52.0515 94.6147 119.0508 15.0549 33.8561 23.9045 18.5219 27.5838 29.9801 55.4178 82.6724 124.4629 66.5112 190.6604 71.8302 89.1226 94.4434 85.2598 71.3709 7.9682 78.9975 74.4211 90.1778 105.6618 74.7189 13.7915 1280.2086 839.7979 839.7979 824.7628 116.3837 284.1992 183.709 208.5215 358.3138 1297.4349 327.9919 436.516 283.0226 121.2898 375.5768 204.2268 284.0013 1310.9498;
	3.7686 50.9221 94.0467 118.1015 14.8179 32.6181 24.277 18.7229 28.1639 30.4496 56.2857 83.9672 126.4121 64.8564 178.4121 67.2157 83.3973 88.3762 79.8448 68.7392 8.0923 76.1088 73.6341 90.1876 106.4073 69.1183 13.5337 1247.0592 821.1558 821.1558 775.5145 112.8234 266.1494 176.9349 203.3336 350.3598 1239.368 315.0022 442.5998 285.0196 118.6386 361.8429 194.2528 282.3936 1252.2781;
	3.9184 52.9467 93.9621 115.9515 15.2212 32.1033 22.9942 18.4165 28.4826 30.9143 57.1446 85.2485 128.3412 66.5275 188.3655 70.9656 88.0499 93.3066 85.9336 68.6905 7.6647 74.9077 75.041 89.8174 104.8504 59.0994 12.8854 1205.9324 784.4993 784.4993 701.8672 109.9071 286.4453 176.8095 208.5726 334.7197 1187.3658 311.1226 439.1725 280.8492 117.0309 356.1326 187.7325 273.738 1199.7342;
	3.8604 52.1618 92.8496 111.3052 14.8419 30.2955 18.7377 14.9903 28.0176 30.6345 56.6275 84.4771 127.1798 65.5102 192.3261 72.4577 89.9013 95.2685 85.1591 68.8726 6.2459 70.6894 74.3897 89.141 104.7618 72.0811 11.2039 1162.829 734.5003 734.5003 650.8135 108.7714 283.8636 177.2782 205.3835 313.3868 1182.7184 282.9336 438.1222 280.6119 117.5051 336.0778 174.3759 254.2301 1195.0384;
	3.797 51.306 86.6115 100.329 15.237 25.9563 15.4881 8.9639 27.5695 31.0032 57.3089 85.4936 128.7102 65.0369 185.1899 69.7692 86.5655 91.7336 84.868 67.8331 5.1627 60.5647 75.6418 89.3103 99.6121 64.3488 9.8421 1149.3986 693.9727 693.9727 615.4402 109.0945 282.8932 174.6026 203.8995 296.095 1094.2934 292.3793 421.3819 266.8181 114.9945 287.9419 132.6834 230.9089 1105.6923;
	3.1073 41.9862 84.7327 62.7666 15.2444 23.6789 25.971 10.2767 27.4744 31.2564 57.7771 86.192 129.7616 67.0739 191.3543 72.0916 89.447 94.7871 84.6859 69.5325 8.657 55.2509 75.7957 89.6185 95.3811 45.7535 9.1534 1226.3319 724.2893 724.2893 680.1732 108.4932 282.2864 178.977 210.2856 309.0301 1124.3561 298.9105 445.4345 255.4851 112.8787 262.6784 111.4463 201.7619 1136.0681;
	2.5931 35.0379 84.064 69.7818 14.4139 12.6573 25.76 10.0548 26.901 30.7335 56.8104 84.7499 127.5905 67.4678 186.3018 70.1881 87.0853 92.2844 82.8826 68.6006 8.5867 29.5336 75.0123 88.1654 86.9134 48.6483 9.4826 1187.692 746.1405 746.1405 694.1345 110.1596 276.2754 176.5782 211.5205 318.3533 1145.3849 286.6132 447.8469 232.8037 111.4484 140.4112 74.5961 190.6669 1157.316;
	2.1776 29.4245 83.0562 78.1007 14.1688 15.0428 25.7912 12.6943 26.9722 30.0608 55.567 82.895 124.798 68.4402 194.8452 73.4068 91.0788 96.5163 87.297 70.4727 8.5971 35.0998 74.9132 86.8861 99.1136 63.5217 10.9897 1117.5475 733.6706 733.6706 730.5326 108.4224 290.9902 181.3969 214.5694 313.0328 1088.4749 280.2722 459.5675 265.4829 115.6462 166.8747 58.7549 195.7345 1099.8132;
	2.9741 40.1865 84.0537 87.9519 14.1316 18.6164 23.4788 13.8663 26.0803 28.6633 52.9836 79.0411 118.996 68.8697 185.1798 69.7654 86.5608 91.7286 88.4803 69.5557 7.8263 43.4382 71.8185 88.2 95.7585 61.9998 9.5099 968.7765 745.2113 745.2113 736.2034 104.2079 294.9344 179.0364 215.9158 317.9568 1062.1261 286.8196 446.1721 256.496 118.3019 206.5178 75.8923 222.5047 1073.19;
	3.1477 42.5323 86.5749 77.3722 14.0422 21.6534 19.0182 10.1795 25.5681 28.5658 52.8034 78.7722 118.5912 68.6897 187.9543 70.8107 87.8577 93.1029 89.2687 70.6044 6.3394 50.5246 72.8899 84.3487 85.4215 57.7198 6.6213 806.1809 677.0289 677.0289 678.3525 103.2716 297.5622 181.7358 215.3514 288.8657 870.2608 263.8419 436.3565 228.8075 118.1003 240.2082 93.5485 238.9993 879.3261;
];
