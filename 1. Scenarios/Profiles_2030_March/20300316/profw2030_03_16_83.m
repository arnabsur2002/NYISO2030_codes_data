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
	3.5634 48.1487 87.697 112.5276 14.0906 31.9008 28.6252 17.7536 26.1438 28.6134 52.8914 78.9035 118.7888 65.6202 189.8138 71.5112 88.7269 94.024 88.9468 72.4918 9.5417 74.4352 74.6131 83.8748 104.0257 72.3418 13.3568 1259.6394 717.8285 717.8285 549.5027 112.5095 296.4893 186.5941 205.7281 306.2735 1176.197 223.2831 445.1477 278.6401 120.9411 353.8864 191.2299 284.3652 1188.4491;
	3.6541 49.3749 88.259 111.3651 14.0749 32.5911 25.3822 17.511 25.1636 28.5465 52.7679 78.7193 118.5114 66.4116 177.5926 66.907 83.0142 87.9703 87.2377 72.0643 8.4607 76.046 71.9453 86.3797 101.0189 71.9627 13.0119 1271.9539 742.1675 742.1675 576.679 101.8701 290.7925 185.4936 208.2094 316.6581 1187.899 211.279 451.9109 270.5863 117.0067 361.5442 188.4304 277.9603 1200.273;
	3.599 48.631 86.5459 110.6073 14.0114 32.804 20.9036 17.3639 24.4746 28.664 52.9851 79.0433 118.9992 64.9743 189.9521 71.5633 88.7915 94.0925 88.4473 71.2592 6.9679 76.5426 71.5619 86.3654 99.8717 74.0029 13.0505 1270.8212 691.7265 691.7265 560.0695 95.0039 294.8245 183.4215 203.7031 295.1366 1222.4315 208.2997 391.4318 267.5135 120.1016 363.9055 193.53 266.9357 1235.1652;
	3.5493 47.9593 86.3598 110.0981 14.3374 32.014 22.8273 14.3181 24.4715 28.973 53.5561 79.8951 120.2817 67.7096 192.3466 72.4655 89.9109 95.2787 87.5221 70.7957 7.6091 74.6994 70.9334 86.4437 97.2969 68.9428 12.1163 1301.1026 694.8904 694.8904 555.8446 102.334 291.7403 182.2283 212.2789 296.4866 1219.6809 233.883 419.1022 260.6167 115.7838 355.1425 154.3719 263.4113 1232.3859;
	3.637 49.1432 86.3024 109.1272 14.1458 32.0296 29.1733 16.1987 24.0738 29.7635 55.0173 82.075 123.5635 66.0605 202.317 76.2218 94.5714 100.2175 87.5482 73.8352 9.7244 74.7358 73.5391 84.8468 98.1464 72.479 12.4325 1285.2628 670.6065 670.6065 540.3107 106.6397 291.8275 190.052 207.1085 286.1255 1192.6648 232.8374 448.1462 262.892 114.5295 355.3155 189.1341 267.0385 1205.0884;
	3.6981 49.9692 87.744 113.3858 14.334 32.188 27.7005 17.4156 23.7998 29.0687 53.733 80.159 120.679 65.3644 199.4242 75.1319 93.2192 98.7846 87.6826 73.6154 9.2335 75.1054 70.6134 87.4309 99.2451 70.9242 12.6759 1260.9851 630.2517 630.2517 605.2831 109.5135 292.2754 189.4863 204.9261 268.9074 1120.9009 229.0416 439.7993 265.8352 117.1921 357.0726 177.1367 271.0541 1132.5769;
	3.5787 48.3567 88.9407 115.281 14.0189 31.4162 27.937 18.002 19.6225 29.3021 54.1644 80.8026 121.6479 65.7402 196.1723 73.9068 91.6992 97.1737 88.3955 73.6342 9.3123 73.3045 70.4504 86.2261 98.1538 72.5957 12.8698 1236.4133 661.8773 661.8773 521.79 103.0777 294.6517 189.5346 206.1044 282.401 1137.6136 243.1794 440.2475 262.9119 112.6907 348.5105 158.8099 265.3257 1149.4637;
	3.6898 49.8573 88.8781 118.5814 14.2711 33.0576 28.1156 18.0628 25.3606 29.0741 53.7431 80.1741 120.7017 67.4819 199.3771 75.1142 93.1972 98.7612 88.4741 72.6426 9.3719 77.1345 71.4031 87.4554 99.5371 73.0218 12.5595 1265.8466 736.9787 736.9787 641.3258 111.805 294.9137 186.9822 211.565 314.4442 1189.9996 276.9023 438.9911 266.6172 112.7773 366.7193 170.2089 265.9991 1202.3955;
	3.7058 50.074 90.8462 118.1549 14.776 34.1902 30.1993 17.7364 26.0736 29.8061 55.0962 82.1927 123.7406 67.3218 198.9175 74.941 92.9823 98.5335 88.4976 71.6577 10.0664 79.7772 71.6597 87.7171 102.0124 71.6347 12.5294 1263.6632 773.7618 773.7618 680.818 115.6549 294.9921 184.447 211.0629 330.1384 1213.1394 277.3204 446.989 273.2474 116.5632 379.2838 203.5343 268.4671 1225.7763;
	3.631 49.0624 89.7795 115.7105 14.7229 33.6056 23.6475 17.9145 26.1983 29.5122 54.5528 81.382 122.5202 66.2491 191.1229 72.0044 89.3389 94.6725 87.6647 68.9012 7.8825 78.4131 73.004 87.9457 102.4033 70.9525 12.843 1248.3634 788.1613 788.1613 690.3288 116.4217 292.2158 177.3519 207.6997 336.2822 1193.5309 302.2672 448.6659 274.2946 115.0837 372.7983 206.2036 269.5956 1205.9635;
	3.7015 50.0155 89.4 115.954 14.8319 34.061 26.9024 17.1658 26.3586 30.1562 55.7432 83.1579 125.1938 65.4077 192.3649 72.4724 89.9194 95.2877 90.7331 70.4696 8.9675 79.4757 72.9529 86.8376 101.8701 69.8013 12.0113 1253.2312 804.2135 804.2135 708.7049 116.4081 302.4436 181.389 205.062 343.1311 1247.1902 315.7607 449.2527 272.8664 119.6293 377.8504 212.4867 265.5942 1260.1818;
	3.6561 49.4014 87.8162 116.6713 14.854 33.8136 26.2829 17.5017 26.3821 29.0303 53.6621 80.0533 120.5198 68.3082 194.3171 73.2078 90.8319 96.2547 90.1601 68.7051 8.761 78.8983 73.6367 87.385 101.553 70.0194 12.5304 1249.9996 801.5554 801.5554 693.0971 119.5394 300.5335 176.8472 214.1554 341.997 1235.723 315.5444 460.8675 272.0169 120.5207 375.1051 209.9261 267.2785 1248.5951;
	3.5825 48.4073 86.694 111.2175 14.7658 32.9952 25.9138 17.7161 25.9938 29.8811 55.2348 82.3995 124.052 66.9291 196.9741 74.2089 92.074 97.5709 91.3652 69.901 8.6379 76.9889 72.8355 82.5676 100.2135 72.1245 12.8303 1267.5643 803.0674 803.0674 684.6033 113.451 304.5506 179.9254 209.8318 342.6421 1238.8332 299.0001 444.4491 268.4291 120.5037 366.0271 205.8821 261.1891 1251.7377;
	3.5542 48.0252 86.3055 111.57 14.7553 32.9439 26.021 18.149 26.4647 29.4355 54.411 81.1706 122.2019 67.6029 191.6442 72.2008 89.5825 94.9307 89.7014 71.2614 8.6737 76.869 73.8225 85.0513 100.7882 73.0186 13.5438 1284.9205 808.5331 808.5331 695.8636 116.1081 299.0046 183.4271 211.9444 344.9741 1249.5969 310.722 453.8312 269.9683 120.2898 365.4571 200.6416 264.7938 1262.6135;
	3.3903 45.8106 86.9144 111.3259 14.7216 33.3293 22.7666 17.8199 26.3679 28.8225 53.278 79.4803 119.6571 65.0856 191.9803 72.3275 89.7396 95.0972 89.2013 70.653 7.5889 77.7684 74.2741 87.0574 99.541 73.3377 13.7343 1270.7214 764.9801 764.9801 659.2417 111.5026 297.3377 181.8611 204.0523 326.3915 1208.2713 292.7634 449.2977 266.6276 118.4185 369.7334 197.6682 266.7554 1220.8575;
	3.4663 46.8377 87.598 110.7587 14.9749 32.9597 23.4162 18.2271 26.2522 29.1357 53.8568 80.3438 120.9572 67.1858 188.8736 71.157 88.2874 93.5583 87.6218 71.0706 7.8054 76.9059 70.5703 87.2897 98.8867 72.2995 13.7171 1234.2623 749.8547 749.8547 654.5995 109.2415 292.0726 182.9358 210.6367 319.938 1138.8093 290.2171 452.4954 264.875 118.634 365.6329 194.8035 267.7587 1150.6719;
	3.5285 47.6777 86.3072 107.2679 14.4326 30.8051 20.3262 17.004 26.283 29.5184 54.5643 81.3992 122.5461 68.3529 193.8979 73.0499 90.636 96.0471 89.6642 71.19 6.7754 71.8785 70.9014 81.8482 96.6748 57.9396 12.096 1155.276 730.7409 730.7409 626.3658 104.9909 298.8807 183.2432 214.2956 311.7828 1115.9403 302.3627 440.9712 258.9503 114.8896 341.7307 182.7774 248.5065 1127.5647;
	3.6168 48.8713 86.9309 104.4249 14.3652 27.7983 16.955 13.9444 26.3701 28.6439 52.9478 78.9877 118.9155 65.6074 193.3917 72.8592 90.3994 95.7964 86.605 70.4594 5.6517 64.8628 72.4654 82.1121 98.5558 70.2639 10.5332 1205.3611 679.3553 679.3553 569.2432 104.8415 288.6832 181.3626 205.6881 289.8583 1133.0141 288.8178 441.7909 263.9888 116.9745 308.3762 177.7758 218.4429 1144.8164;
	3.5138 47.4788 82.0405 100.0961 14.034 23.7211 14.4426 8.1272 26.098 29.3096 54.1783 80.8233 121.6791 66.2328 179.9586 67.7983 84.1202 89.1423 85.2673 67.9329 4.8142 55.3493 72.485 83.1722 95.6432 65.6939 9.3019 1187.9576 699.3885 699.3885 587.0235 104.4381 284.2243 174.8594 207.6489 298.4057 1146.982 294.7938 442.5596 256.1871 116.5122 263.1463 125.196 224.6336 1158.9297;
	2.6296 35.5316 75.9198 61.1617 13.9996 20.9726 23.1219 9.0822 26.1468 28.7147 53.0787 79.1831 119.2096 64.523 184.8789 69.6521 86.4201 91.5795 79.9934 69.3821 7.7073 48.936 71.7304 82.0521 86.8147 41.004 7.8423 1143.5612 714.45 714.45 638.1836 101.5596 266.6447 178.5897 202.2882 304.832 1105.6379 299.8451 437.7645 232.5394 110.6227 232.6556 107.5375 195.3524 1117.1549;
	2.467 33.3349 82.9346 73.3996 14.6489 13.654 23.0094 10.1729 27.5959 29.3276 54.2117 80.8732 121.7541 65.1706 180.1948 67.8873 84.2306 89.2593 74.3161 69.1696 7.6698 31.8592 73.5424 83.4618 84.4577 51.6271 9.5782 1089.4927 712.9443 712.9443 591.9142 105.0243 247.7202 178.0427 204.3186 304.1896 1097.3746 269.9095 455.8411 226.2261 109.751 151.4679 84.0887 200.221 1108.8056;
	2.0623 27.8656 81.5098 81.1338 13.884 16.5022 24.7559 12.6742 27.0205 29.1572 53.8967 80.4032 121.0466 64.0371 176.6538 66.5533 82.5754 87.5053 78.7982 67.4759 8.252 38.5051 72.9018 83.3315 97.1693 69.7447 10.5543 1072.9767 684.9264 684.9264 619.1692 101.1117 262.6606 173.6832 200.7651 292.2353 1022.7975 248.7609 464.4588 260.2749 118.0937 183.0644 70.9913 189.3992 1033.4516;
	2.5852 34.9313 78.621 84.8367 13.1607 17.9575 23.9152 13.5903 26.7401 28.6243 52.9116 78.9336 118.8342 63.8612 165.0556 62.1837 77.1539 81.7601 75.0117 67.2057 7.9717 41.9009 71.5298 81.5519 91.2846 65.607 9.948 923.7896 717.665 717.665 634.3855 96.8823 250.039 172.9876 200.2135 306.2037 991.843 250.9527 449.9396 244.5122 116.7142 199.2089 77.8914 208.6145 1002.1747;
	2.8769 38.873 84.2005 75.4624 13.4859 21.9283 19.7739 10.1506 27.4946 28.4765 52.6384 78.5261 118.2206 65.6077 173.988 65.549 81.3293 86.1847 76.9654 69.7669 6.5913 51.1661 72.2596 81.9378 84.172 64.2945 7.1781 773.901 648.2798 648.2798 593.2795 98.1505 256.5512 179.5802 205.689 276.5994 805.8259 240.3942 437.9997 225.4607 119.7669 243.2583 93.6774 228.7434 814.2199;
];
