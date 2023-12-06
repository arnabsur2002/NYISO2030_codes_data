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
	3.6311 49.0648 86.9617 100.6626 14.7076 32.177 28.2878 18.2902 27.08 29.6772 54.8579 81.8371 123.2053 63.9381 194.211 73.1679 90.7823 96.2022 39.459 71.8049 9.4293 75.0797 72.0535 85.5216 100.6232 74.6968 13.7568 1058.6135 689.3426 689.3426 605.0545 105.3686 131.5301 184.826 200.4546 294.1195 1155.6203 220.6739 469.1688 269.5265 119.051 356.9503 141.7459 267.0032 1167.6581;
	3.621 48.9282 88.3241 112.0719 14.2908 30.949 27.9593 18.6617 26.3045 28.925 53.4675 79.7629 120.0826 64.1748 188.1336 70.8782 87.9415 93.1917 32.8146 71.8153 9.3198 72.2143 69.8523 86.4228 100.5896 72.9662 13.9332 1024.9426 640.339 640.339 565.9878 101.6891 109.382 184.8528 201.1966 273.2113 1071.3569 209.9952 455.3986 269.4364 120.8248 343.3272 134.3833 261.3056 1082.5169;
	3.6518 49.344 90.5075 48.6219 14.3044 31.093 28.2841 18.1175 26.2089 28.2861 52.2863 78.0009 117.43 64.3765 196.1341 73.8924 91.6813 97.1548 33.6854 72.0551 9.428 72.5504 67.8889 85.5042 98.6298 72.622 13.8666 1067.8747 662.1664 662.1664 582.3231 109.0508 112.2846 185.47 201.8289 282.5243 1165.1897 223.6419 443.3595 264.1871 119.9169 344.9255 129.8801 260.8629 1177.3271;
	3.6017 48.667 88.5039 70.8688 14.149 30.9579 27.3852 18.102 26.3382 28.5045 52.6902 78.6034 118.337 64.4214 194.2966 73.2001 90.8224 96.2446 42.2814 71.541 9.1284 72.2351 62.474 83.5505 97.5058 73.0205 13.662 1130.3013 625.7694 625.7694 538.5753 103.3802 140.938 184.1467 201.9699 266.995 1068.8488 238.0896 454.9213 261.1762 118.3775 343.4264 164.4799 257.8812 1079.9827;
	3.3734 45.5819 90.9544 112.9131 14.1762 30.6172 21.815 18.4929 26.19 27.3104 50.4828 75.3105 113.3795 63.7686 187.866 70.7774 87.8164 93.0592 74.3591 69.2955 7.2717 71.4401 51.6834 85.695 101.1639 73.9925 13.6529 1082.9663 558.2451 558.2451 501.2935 99.1388 247.8638 178.3667 199.9231 238.1846 1058.2021 223.8243 443.9824 270.9747 117.6595 339.6469 174.2696 259.022 1069.2251;
	3.6688 49.5741 90.59 112.2796 14.7091 31.8627 25.3325 18.3704 26.3477 29.3028 54.1658 80.8047 121.651 63.9491 195.1606 73.5256 91.2262 96.6726 87.4932 71.3117 8.4442 74.3462 63.6624 86.1823 102.6947 73.5931 13.8719 1087.8688 617.7594 617.7594 491.9587 97.1193 291.6441 183.5566 200.489 263.5773 1006.7389 215.4554 443.6625 275.0751 118.0182 353.4633 179.5377 261.2534 1017.2258;
	3.5871 48.4696 90.1197 111.8092 14.3858 29.6876 27.0534 17.9882 26.253 28.6562 52.9706 79.0218 118.9668 64.3816 193.9338 73.0634 90.6528 96.0649 87.6396 70.8196 9.0178 69.271 70.7154 85.0595 98.7614 74.3967 13.3144 1139.3204 666.612 666.612 555.8676 95.1375 292.1319 182.2898 201.8451 284.4211 1068.0549 232.6131 445.7664 264.5394 117.2735 329.3341 190.0656 258.2882 1079.1805;
	3.5577 48.0725 88.5738 111.2117 14.6534 30.8909 26.9095 18.0819 26.0633 28.7258 53.0992 79.2136 119.2556 65.1578 198.7244 74.8682 92.8921 98.4379 85.0072 70.0938 8.9698 72.0788 71.0285 85.61 103.8078 72.825 13.2614 1081.9648 661.1603 661.1603 541.6823 81.3776 283.3572 180.4217 204.2784 282.0951 1051.008 229.5916 437.1993 278.0566 112.0619 342.683 189.3721 253.535 1061.956;
	3.8516 52.0441 92.8687 117.5941 14.8164 33.7012 30.3427 18.3652 28.2073 30.0303 55.5105 82.8108 124.6712 68.6218 201.9297 76.0758 94.3904 100.0257 89.4989 69.4584 10.1142 78.6361 72.8721 87.9367 104.3473 74.2036 13.8425 1184.3463 742.0101 742.0101 598.6006 77.7693 298.3296 178.786 215.1387 316.591 1175.9992 256.4602 465.3426 279.5017 116.8438 373.8585 192.624 277.2896 1188.2491;
	3.8518 52.0463 90.3797 114.6013 14.2784 33.8015 29.0621 18.2254 27.6414 30.1739 55.776 83.2068 125.2675 66.5295 201.1892 75.7969 94.0443 99.6588 89.1834 70.7375 9.6874 78.8701 72.0776 87.0022 103.3001 72.2938 13.6574 1154.0523 705.5893 705.5893 623.9708 87.2178 297.278 182.0786 208.579 301.0514 1119.8519 271.8045 449.3846 276.6968 119.1611 374.9711 164.6574 261.9472 1131.517;
	3.725 50.3323 88.7746 114.7456 13.9472 33.0838 27.1275 17.6751 27.9643 30.8895 57.0988 85.1801 128.2382 66.0445 205.7911 77.5306 96.1954 101.9384 91.8218 73.5984 9.0425 77.1956 73.8393 85.3597 98.651 70.5999 13.4345 1162.9382 717.1178 717.1178 627.5096 92.2909 306.0728 189.4425 207.0584 305.9702 1054.6735 281.7705 460.076 264.2438 119.8011 367.0097 159.358 249.6333 1065.6596;
	3.7399 50.5341 87.7388 115.2669 14.0241 33.1073 26.0549 17.5066 27.7807 30.5594 56.4887 84.27 126.868 66.9173 206.0671 77.6346 96.3244 102.0751 92.3715 73.8963 8.685 77.2503 72.6874 85.3776 99.8927 69.6805 13.1112 1051.0393 712.9463 712.9463 658.948 98.6506 307.9051 190.2093 209.7948 304.1904 1040.052 282.8478 457.9543 267.5697 117.5736 367.2702 179.8674 236.6357 1050.8859;
	3.8134 51.5267 88.2733 118.0374 14.2073 32.9705 28.0314 17.822 27.7265 30.1883 55.8026 83.2465 125.3271 68.0064 205.7457 77.5135 96.1741 101.9159 91.6507 71.992 9.3438 76.9312 73.2567 87.2492 102.0292 71.9754 13.5011 1108.5423 734.3997 734.3997 656.0407 103.6079 305.5022 185.3076 213.2092 313.3439 991.6628 282.9085 459.2265 273.2926 119.5977 365.7531 161.3779 247.6377 1001.9926;
	3.585 48.4414 86.6992 112.2466 14.1554 31.6122 26.9891 17.3924 26.6287 30.2028 55.8294 83.2864 125.3873 66.8413 205.5656 77.4456 96.09 101.8267 91.0426 72.8451 8.9964 73.7617 73.6296 86.333 98.0826 70.0272 13.0627 1032.9042 683.6785 683.6785 625.0886 99.1299 303.4752 187.5036 209.5565 291.7028 969.6422 262.9833 442.2548 262.7214 114.0983 350.6843 145.8295 239.7214 979.7427;
	3.5937 48.5591 88.8394 111.788 14.2266 31.5489 23.7217 17.5994 26.5905 30.8748 57.0717 85.1397 128.1773 68.4454 205.8386 77.5485 96.2176 101.9619 90.7509 73.1448 7.9072 73.6141 72.8576 87.2168 99.3683 72.3042 13.1438 1039.8986 696.7962 696.7962 656.3814 103.9288 302.5031 188.2749 214.5857 297.2997 933.8556 303.3264 443.3605 266.1652 118.1793 349.9824 161.1484 182.1246 943.5833;
	3.6927 49.8963 89.9037 113.0866 14.593 31.7955 25.1726 17.471 26.5221 30.3772 56.1517 83.7673 126.1113 69.3857 206.2039 77.6861 96.3883 102.1428 92.5485 73.8849 8.3909 74.1895 72.463 86.5513 101.4239 73.4832 13.5709 1169.1985 770.9718 770.9718 683.2504 113.0168 308.495 190.1798 217.5335 328.948 1065.2602 317.4088 453.4011 271.6712 117.8084 352.7182 170.5988 225.5452 1076.3567;
	3.6353 49.1205 89.6246 113.171 14.9492 31.8877 24.5024 17.7071 26.6623 30.2809 55.9738 83.502 125.7117 68.8415 204.8437 77.1737 95.7525 101.4691 92.1804 73.2676 8.1675 74.4046 72.3947 88.5907 100.788 72.0291 12.9843 1166.4773 734.2565 734.2565 676.5147 106.8138 307.268 188.5909 215.8274 313.2828 1153.4091 302.3727 453.8706 269.9679 120.6595 353.7408 181.6973 209.6751 1165.4237;
	3.6136 48.8277 89.1195 110.1196 14.9743 29.8886 23.0535 14.8577 26.3071 29.1829 53.9441 80.474 121.1531 67.2587 201.6263 75.9615 94.2486 99.8753 88.9943 71.3815 7.6845 69.74 70.935 88.1871 99.9435 66.7863 11.5978 1189.2493 703.3612 703.3612 646.2071 96.2422 296.6478 183.7362 210.8651 300.1008 1127.1874 297.2603 437.5647 267.7058 115.1237 331.5639 175.9945 234.611 1138.929;
	3.5669 48.1973 91.4051 105.9513 14.7116 28.3388 22.494 15.2904 25.955 28.9464 53.507 79.8219 120.1714 67.9377 202.0073 76.1051 94.4267 100.0641 88.6034 73.2142 7.498 66.1239 72.6533 88.2369 100.2836 44.976 12.0209 1171.1934 725.8303 725.8303 602.9619 102.2648 295.3446 188.4535 212.9939 309.6876 1188.3165 288.9181 434.6404 268.6167 114.6081 314.3721 140.3403 233.3286 1200.6948;
	3.6055 48.7187 88.1657 98.7778 14.7866 25.4442 24.7634 14.3206 26.9743 29.5631 54.6469 81.5225 122.7316 66.6119 201.8314 76.0388 94.3444 99.9769 92.1901 71.1396 8.2545 59.3698 71.3617 85.9957 99.7034 44.9234 10.8991 1204.6562 743.6866 743.6866 590.1554 108.4727 307.3004 183.1134 208.8374 317.3063 1246.0103 265.7477 440.1481 267.0628 112.4743 282.2609 164.2195 246.2428 1258.9896;
	3.5969 48.6015 89.9209 99.3771 15.0047 28.8104 28.3388 14.7953 26.8362 29.2075 53.9896 80.5419 121.2554 67.9 193.0256 72.7213 90.2283 95.615 89.2002 67.5268 9.4463 67.2243 71.9191 86.2585 100.7322 57.2218 10.8454 1238.8239 761.4689 761.4689 609.2634 106.5689 297.3341 173.8143 212.8755 324.8934 1229.6552 267.8866 447.7627 269.8185 112.2652 319.6037 147.429 247.461 1242.4641;
	3.5054 47.3652 85.9671 92.3552 15.0143 28.6397 26.2244 12.3992 27.2482 28.6585 52.9748 79.028 118.9762 67.2398 187.7604 70.7376 87.7671 93.0069 85.6611 67.881 8.7415 66.8259 70.4437 87.055 98.4652 61.0575 10.4607 1265.5685 765.0893 765.0893 696.9256 107.6792 285.5369 174.726 210.8058 326.4381 1178.5346 284.9239 446.1822 263.7462 103.8693 317.7095 145.8632 235.6822 1190.811;
	3.4744 46.9465 82.8491 78.3561 14.6207 26.6552 26.8412 10.0136 25.9438 29.0049 53.6151 79.9832 120.4143 66.2632 182.3009 68.6808 85.2151 90.3026 84.7596 63.1435 8.9471 62.1956 70.8858 82.076 89.7433 53.7332 8.7571 1173.295 729.3768 729.3768 719.6131 108.5549 282.532 162.5314 207.744 311.2008 1154.1207 277.6072 436.5924 240.3839 111.6459 295.6954 151.1127 224.9213 1166.1428;
	3.7106 50.138 86.4023 94.741 14.68 31.9333 26.008 11.039 26.174 29.4408 54.4209 81.1853 122.2241 65.8445 179.9329 67.7887 84.1082 89.1295 82.4322 65.1487 8.6693 74.5111 71.0082 83.8631 88.8613 56.1571 9.2243 1180.4702 707.4927 707.4927 770.2324 111.7026 274.774 167.6928 206.4315 301.8636 1139.4345 285.1784 440.5659 238.0214 117.083 354.2469 167.27 230.7235 1151.3036;
];