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
	3.7672 50.9028 87.9288 107.4887 14.7898 33.1288 30.1038 17.6736 27.651 30.5206 56.4168 84.1628 126.7066 64.9436 193.785 73.0074 90.5832 95.9912 39.2327 69.829 10.0346 77.3006 68.8974 87.5149 100.7424 72.1557 13.5307 1179.7868 706.6316 706.6316 605.6204 100.0519 130.7757 179.7399 203.6071 301.4962 1170.2451 229.7357 472.598 269.8456 119.1191 367.5092 146.6954 257.6173 1182.4351;
	3.7399 50.5348 90.3454 114.5766 14.537 32.0445 30.0174 18.2251 27.6853 29.8585 55.1929 82.3369 123.9578 65.3699 189.1578 71.2641 88.4203 93.6991 32.3494 71.3479 10.0058 74.7706 68.6472 88.5669 103.68 72.0429 13.4868 1163.4589 714.0302 714.0302 585.9922 99.3296 107.8314 183.6497 204.9436 304.6529 1140.6437 234.7032 456.418 277.7143 120.923 355.4807 136.1592 264.244 1152.5254;
	3.6867 49.8159 89.6944 59.3309 14.1152 32.0347 30.3656 17.4681 27.2965 29.2402 54.05 80.632 121.391 65.7401 193.5895 72.9337 90.4918 95.8943 34.7003 69.8379 10.1219 74.7477 61.5646 87.2079 101.1497 72.2272 13.39 1127.0529 695.6108 695.6108 578.7743 104.4931 115.6677 179.7629 206.1042 296.794 1140.4796 231.6571 456.9237 270.9367 118.6794 355.372 127.1377 259.2439 1152.3596;
	3.7991 51.3339 91.3061 77.1722 14.5497 32.3109 28.4501 17.7894 27.6104 29.7774 55.0431 82.1134 123.6213 65.9434 195.8886 73.7999 91.5665 97.0332 40.2406 71.1896 9.4834 75.392 59.941 86.8263 101.4786 72.5313 13.5414 1109.7738 686.1689 686.1689 529.1446 93.4377 134.1355 183.2422 206.7416 292.7654 1020.2549 228.0148 449.3933 271.8177 117.4099 358.4351 168.4128 265.8488 1030.8826;
	3.5401 47.8345 90.5947 111.2833 14.2714 31.7793 22.9603 18.4952 26.7356 29.8799 55.2326 82.3961 124.0469 64.951 187.9447 70.8071 87.8532 93.0982 69.3296 69.3751 7.6534 74.1516 49.2646 86.8693 104.438 73.0838 13.6487 1082.8031 617.3818 617.3818 488.9422 96.1311 231.0988 178.5717 203.6303 263.4162 1057.8784 230.9817 437.6901 279.7446 119.3218 352.538 175.2829 263.3853 1068.898;
	3.6734 49.635 85.7003 93.1343 14.6248 32.0805 28.399 17.9354 26.3881 30.8299 56.9887 85.0159 127.991 65.6044 195.3005 73.5783 91.2916 96.7419 86.5469 71.3788 9.4663 74.8545 68.4377 84.8491 102.3967 68.679 13.5242 1111.8844 641.2625 641.2625 491.3549 91.2362 288.4898 183.7292 205.6786 273.6053 1019.2507 227.5153 448.2653 274.277 114.4912 355.8796 183.5674 249.3101 1029.8679;
	3.8045 51.4077 82.2803 103.0641 14.6476 31.9352 28.3882 18.1562 26.4714 30.5269 56.4284 84.1801 126.7327 66.0638 191.8012 72.26 89.6559 95.0085 86.9048 70.8638 9.4627 74.5154 72.1438 84.3676 100.3307 73.5412 13.1882 1135.9017 667.4863 667.4863 540.9429 89.1262 289.6825 182.4035 207.1189 284.7941 1031.4125 239.4005 439.822 268.7429 118.4092 354.2676 192.4441 260.1535 1042.1563;
	3.7576 50.7735 86.4638 110.6751 14.4694 32.5647 27.4504 18.3773 25.8528 30.031 55.5118 82.8126 124.6739 67.2186 192.3188 72.455 89.8979 95.2649 84.4097 70.2583 9.1501 75.9843 72.5217 86.4361 104.2357 73.5469 13.45 1115.4195 681.165 681.165 556.4041 76.253 281.3655 180.845 210.7394 290.6304 1046.2919 246.5873 437.1979 279.2027 117.2285 361.2512 191.1887 261.8067 1057.1908;
	3.7586 50.7866 87.1827 115.9949 14.409 33.871 27.8445 18.4063 26.4011 30.7273 56.799 84.7329 127.5649 69.2082 193.8021 73.0138 90.5912 95.9996 87.0482 68.7434 9.2815 79.0324 72.0319 88.2403 104.3417 73.7988 13.8193 1142.4436 736.9129 736.9129 585.0602 68.358 290.1607 176.9457 216.9769 314.4162 1100.6222 267.2199 447.2211 279.4868 119.3358 375.7427 171.1435 266.4691 1112.087;
	3.6631 49.4968 88.2407 113.5072 14.4931 33.5457 28.1065 17.614 26.8325 31.0841 57.4585 85.7168 129.0462 68.5549 192.1069 72.3752 89.7988 95.1599 88.8365 68.3871 9.3688 78.2733 73.5832 85.6216 101.0372 70.042 13.3884 1081.7777 724.466 724.466 622.3316 74.3263 296.1216 176.0285 214.9287 309.1055 1059.2892 273.1193 460.082 270.6352 118.0481 372.1337 154.7208 252.8514 1070.3234;
	3.722 50.2926 92.8283 119.8575 14.7165 34.4088 27.5456 18.2771 28.0918 31.4791 58.1887 86.8061 130.686 66.9944 195.1522 73.5225 91.2223 96.6684 87.6754 70.193 9.1819 80.2871 74.1825 87.3312 102.6533 70.9276 13.5149 1172.1038 720.7136 720.7136 635.1244 84.529 292.2513 180.677 210.0365 307.5045 1091.4653 292.5773 474.5366 274.9642 120.5829 381.7078 168.5159 256.1409 1102.8347;
	3.672 49.6161 90.6368 119.2822 14.6476 33.8758 26.2713 17.6408 28.1767 30.9858 57.2768 85.4457 128.6381 69.0749 197.3776 74.3609 92.2625 97.7707 89.6389 69.4015 8.7571 79.0436 73.4011 85.1702 102.3904 69.5261 13.3509 1119.7706 718.8111 718.8111 609.6366 81.8769 298.7963 178.6397 216.5591 306.6927 1085.2948 277.1281 477.5031 274.2599 118.976 375.7958 181.8854 258.8633 1096.6;
	3.6805 49.7312 89.3244 117.6222 14.4239 33.6504 28.5603 17.7502 27.4277 30.4465 56.2798 83.9585 126.399 67.4985 195.0311 73.4768 91.1657 96.6084 85.0996 70.4374 9.5201 78.5176 73.3321 87.6556 102.8852 70.7055 12.9637 1113.0474 703.5477 703.5477 620.1318 91.334 283.6655 181.3061 211.6168 300.1804 1013.0875 274.1141 478.0822 275.5855 115.6657 373.2952 158.399 253.3812 1023.6405;
	3.6168 48.8715 92.9434 117.6574 14.5491 32.8566 27.2299 17.4434 27.0413 29.8109 55.1049 82.2057 123.7603 66.0193 198.7493 74.8777 92.9038 98.4502 88.7025 70.6112 9.0766 76.6655 72.6366 86.2795 100.4251 70.4465 12.8935 1091.3999 623.0412 623.0412 607.2861 97.3763 295.6751 181.7535 206.9794 265.8309 978.7827 271.4334 465.1585 268.9958 116.1081 364.4897 150.2162 258.8002 988.9783;
	3.7759 51.0212 94.8691 118.8329 15.0159 33.0134 26.3067 17.7583 27.5313 30.2452 55.9078 83.4034 125.5634 69.2114 194.0997 73.1259 90.7303 96.1471 88.5875 70.2183 8.7689 77.0313 66.5614 87.3164 100.7763 71.8253 12.9229 1105.0173 662.9703 662.9703 644.3505 96.7844 295.2915 180.7422 216.987 282.8673 958.9446 321.0926 478.1772 269.9366 113.0647 366.229 173.6819 250.5246 968.9336;
	3.7223 50.2964 93.1257 118.6729 14.8424 32.7294 26.318 17.3498 27.8124 30.1155 55.668 83.0457 125.0248 68.8087 194.7828 73.3833 91.0496 96.4854 84.9167 70.0912 8.7727 76.3687 71.7773 83.7147 98.5198 71.5665 12.8234 1102.283 734.3192 734.3192 671.3833 102.6105 283.0557 180.415 215.7245 313.3095 1054.4179 318.338 477.6646 263.8923 111.4132 363.0785 175.1784 250.1887 1065.4014;
	3.6643 49.5124 94.642 120.5297 15.2517 34.5373 24.7705 17.4156 26.7866 30.8595 57.0434 85.0975 128.1138 67.1259 190.4072 71.7348 89.0043 94.318 85.4846 71.0881 8.2568 80.5871 72.394 87.2828 101.0483 71.3083 11.7888 1133.0449 707.8386 707.8386 682.647 101.4118 284.9488 182.9809 210.4489 302.0111 1130.1823 300.8101 470.3205 270.665 111.6346 383.1342 188.7992 243.1079 1141.955;
	3.7034 50.0411 92.4437 119.6783 14.9346 32.7705 25.272 13.8893 27.8542 30.8725 57.0673 85.1332 128.1675 66.5938 185.1117 69.7397 86.5289 91.6948 82.2759 69.6562 8.424 76.4644 71.7989 83.0327 98.234 64.4025 10.3157 1179.0694 664.7423 664.7423 621.0076 90.2531 274.2529 179.2953 208.7806 283.6234 1124.5006 297.2021 473.6517 263.1267 112.2494 363.5338 185.5395 247.3315 1136.2141;
	3.4551 46.6853 89.9765 112.5402 14.4288 31.6165 23.1207 14.6014 26.5819 29.9207 55.308 82.5087 124.2163 69.3655 185.7648 69.9858 86.8343 92.0184 78.8481 67.8411 7.7069 73.7718 72.0044 83.1215 96.9289 41.0431 10.6653 1174.778 709.0034 709.0034 593.8645 95.3572 262.8269 174.6231 217.4704 302.5081 1156.887 289.069 451.5913 259.631 113.3411 350.7321 150.12 223.2592 1168.9379;
	3.3869 45.7643 89.0344 107.7297 14.4257 25.5605 23.3504 14.3246 26.7562 29.5494 54.6215 81.4846 122.6746 67.6452 179.8796 67.7686 84.0833 89.1032 83.4917 65.7072 7.7835 59.6412 72.4397 83.0114 96.9672 42.4405 9.8983 1183.8811 733.3195 733.3195 611.0179 105.0955 278.3057 169.1304 212.0768 312.883 1232.9432 277.4059 460.5568 259.7335 112.0329 283.5514 171.5936 228.4453 1245.7864;
	3.2732 44.2281 86.7826 105.9831 14.3829 26.4665 28.2175 13.9997 26.834 29.3224 54.202 80.8587 121.7323 66.8497 187.1927 70.5238 87.5017 92.7257 84.9677 65.7707 9.4058 61.7552 70.8645 83.5972 94.5988 45.0052 8.9059 1186.6041 736.6377 736.6377 659.9827 103.1378 283.2258 169.2939 209.5828 314.2987 1193.5853 292.288 453.3936 253.3898 111.6552 293.6019 143.7598 206.3671 1206.0185;
	3.0193 40.7968 86.2334 101.7856 13.9515 26.3566 24.6062 13.0084 25.5814 30.0026 55.4594 82.7345 124.5563 66.1967 186.929 70.4244 87.3785 92.5951 86.0446 63.8176 8.2021 61.4988 72.1256 83.942 95.3137 56.6521 9.6416 1130.8259 728.8356 728.8356 723.9304 106.3003 286.8154 164.2666 207.5357 310.9699 1091.673 300.1375 438.2863 255.3045 102.3586 292.3829 149.3143 223.7465 1103.0446;
	3.2334 43.6908 86.7291 98.2377 14.3018 25.79 27.3199 12.3227 25.1887 30.4166 56.2247 83.8762 126.2752 67.0147 188.6594 71.0763 88.1873 93.4522 87.7201 64.8956 9.1066 60.1766 74.1129 87.817 96.2642 54.7579 8.759 1099.6978 679.0176 679.0176 716.541 102.7928 292.4002 167.0415 210.1001 289.7142 1072.2481 279.4227 436.3729 257.8505 110.9205 286.0968 166.7445 220.6817 1083.4174;
	3.5308 47.7094 85.7754 105.7188 14.2687 30.1532 25.0266 12.2777 25.5888 28.9467 53.5075 79.8227 120.1726 66.8132 181.1811 68.2589 84.6916 89.7479 85.0686 64.819 8.3422 70.3575 70.9442 86.8148 97.2859 56.9657 8.7071 1156.887 735.9023 735.9023 742.6631 103.0038 283.5619 166.8443 209.4684 313.985 1122.3433 275.1791 425.3659 260.5872 115.0908 334.4994 183.2461 219.4724 1134.0344;
];