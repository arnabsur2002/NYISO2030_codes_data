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
	3.8504 52.0274 90.8315 119.4279 13.54 33.923 31.9621 17.7444 11.2405 14.7582 27.2803 40.6968 61.2688 56.2434 203.423 76.6384 95.0884 100.7653 87.7594 68.3995 10.654 79.1537 20.1113 85.3043 101.8691 75.4064 13.6363 1226.1775 831.9802 831.9802 767.249 109.898 292.5313 176.0604 176.3306 354.9782 1105.0327 251.2057 457.727 272.8636 122.161 376.3192 205.0345 273.103 1116.5435;
	3.8018 51.3706 90.0665 117.3145 14.3614 32.9805 32.6521 17.8486 12.4987 12.0718 22.3146 33.2889 50.1163 65.5482 195.8101 73.7703 91.5299 96.9943 90.6552 70.368 10.884 76.9544 20.8932 83.5971 99.8612 74.7905 13.5601 1261.9038 861.0067 861.0067 821.8547 113.0118 302.1839 181.1275 205.5025 367.3629 1267.1535 260.7996 469.6909 267.4854 121.6972 365.8632 202.8277 276.9734 1280.353;
	3.6367 49.1396 87.9181 114.956 14.7895 32.8372 33.3799 17.7039 24.7665 14.5823 26.9551 40.2118 60.5386 62.6679 181.1528 68.2483 84.6784 89.7338 90.41 70.4006 11.1266 76.6201 28.5771 84.7216 99.6738 75.4783 13.0362 1206.2848 854.1754 854.1754 796.2597 113.4335 301.3667 181.2114 196.4722 364.4482 1233.032 280.8784 475.6783 266.9835 120.6472 364.2737 197.545 264.6994 1245.876;
	3.5188 47.547 86.932 114.552 14.6109 31.9234 32.2671 17.5633 28.3203 28.5173 52.7138 78.6386 118.39 66.2619 194.2715 73.1907 90.8106 96.2322 92.5885 62.2924 10.7557 74.4879 28.3785 81.8565 97.4821 73.8607 12.9029 1199.1682 835.4096 835.4096 803.6343 113.2653 308.6285 160.3408 207.74 356.4414 1186.5646 301.2193 469.0101 261.1127 121.743 354.1368 157.7755 252.8974 1198.9247;
	2.9502 39.8642 86.6435 113.4502 14.5869 29.0046 31.6726 17.6468 27.7566 28.2995 52.3112 78.038 117.4857 65.1655 198.039 74.6101 92.5717 98.0984 91.8291 66.3937 10.5575 67.6775 72.5704 83.4387 98.9223 71.728 12.7408 1219.3654 831.4334 831.4334 801.1207 112.8856 306.0971 170.8975 204.3027 354.7449 1121.6114 306.7506 465.3729 264.9703 120.6151 321.7581 163.8806 259.2501 1133.2949;
	3.6654 49.5277 86.357 110.3317 14.5813 31.0119 20.1436 17.3983 27.202 28.8615 53.3501 79.5879 119.8191 52.0243 200.4887 75.5329 93.7168 99.3118 64.6278 68.5133 6.7145 72.3611 71.402 82.3344 98.2719 70.1177 13.0036 1190.9578 829.634 829.634 786.1062 114.711 215.4259 176.3535 163.1031 353.9772 1174.0654 307.9888 472.9093 263.2282 116.4694 344.0253 150.5113 262.2024 1186.2952;
	3.7434 50.5811 89.7332 114.8654 14.4505 32.2029 14.4385 18.0584 26.5277 27.9145 51.5995 76.9763 115.8874 64.0275 197.9638 74.5817 92.5366 98.0612 87.1435 70.6744 4.8128 75.14 69.8682 85.034 102.0729 73.1235 13.5493 1257.6252 819.7185 819.7185 765.0668 113.7779 290.4783 181.9161 200.7349 349.7466 1181.7619 317.1161 440.012 273.4094 121.9411 357.2372 168.7307 273.193 1194.0719;
	3.8386 51.8676 92.5949 117.0879 14.9784 32.5723 0.0057 17.7971 0.0 27.659 51.1272 76.2717 114.8266 39.9068 201.4065 75.8787 94.1458 99.7665 85.3789 70.8974 0.0019 76.0021 71.9065 85.3815 102.3806 72.7238 13.6052 1273.442 780.3039 780.3039 741.6936 117.5077 284.5963 182.4901 125.1132 332.9297 1163.5202 302.9713 172.7461 274.2339 119.9472 361.3359 191.9134 271.9678 1175.6402;
	3.8437 51.9365 92.4078 117.2954 14.7391 30.3347 0.0 18.0878 0.0496 28.9806 53.5702 79.9161 120.3133 22.8201 199.0204 74.9798 93.0305 98.5845 85.6594 72.3822 0.0 70.781 72.858 85.4295 102.9151 72.5109 13.5159 1186.5146 681.398 681.398 746.5588 119.9373 285.5312 186.3121 71.5442 290.7298 997.8001 290.2549 15.0368 275.6654 121.233 336.5129 169.9566 271.0194 1008.1939;
	3.7763 51.0258 88.6937 113.3173 14.9405 29.4668 0.0 17.9937 0.0158 26.0594 48.1703 71.8607 108.1859 20.3914 189.0117 71.2091 88.352 93.6267 82.9444 71.3956 0.0 68.756 51.1405 86.8949 101.4523 72.3123 12.8639 977.7614 613.7462 613.7462 582.992 115.3265 276.4815 183.7724 63.9297 261.865 803.0555 257.7773 36.2657 271.7471 118.2804 326.8855 148.9088 263.5987 811.4207;
	3.4284 46.3254 87.3473 110.6744 14.2776 22.9963 2.6325 17.6572 0.0196 29.2984 54.1576 80.7925 121.6326 1.6086 198.6974 74.8581 92.8795 98.4245 71.6508 72.5363 0.8775 53.6581 73.8711 87.1523 100.5432 73.126 13.1 777.1733 669.1772 669.1772 538.5652 111.5521 238.8359 186.7087 5.0431 285.5156 728.7848 207.2699 35.5725 269.3121 117.8417 255.106 123.7243 263.2369 736.3763;
	3.132 42.3203 88.7925 110.6213 14.1592 14.2109 0.0109 17.6116 0.0 27.6308 51.075 76.1939 114.7095 0.3712 197.8016 74.5206 92.4607 97.9808 16.8695 71.2263 0.0036 33.1587 72.1045 86.1197 100.2273 71.7684 13.0729 589.9827 681.9577 681.9577 490.6763 109.0221 56.2318 183.3367 1.1636 290.9686 764.9555 199.6856 38.7124 268.4659 119.2734 157.6457 111.9326 262.1962 772.9238;
	3.3359 45.0756 88.4144 98.7679 13.2599 17.2366 0.0 17.4191 24.0869 23.924 44.2232 65.9723 99.3209 49.3559 190.1812 71.6497 88.8987 94.2061 46.7819 70.5868 0.0 40.2187 73.4946 83.4434 99.0082 71.536 13.2269 618.3743 646.1423 646.1423 483.1136 101.526 155.9397 181.6906 154.7375 275.6874 555.0065 211.8608 18.0033 265.2005 115.5462 191.2113 115.3061 263.9257 560.7879;
	3.5566 48.0576 88.2098 104.6607 14.0449 18.2879 0.0 17.6846 17.4939 23.7109 43.8292 65.3845 98.436 39.8976 198.345 74.7253 92.7148 98.25 53.3582 72.4909 0.0 42.6719 72.9287 82.4801 97.2509 71.9153 12.9958 536.2965 646.1278 646.1278 467.7838 86.0555 177.8608 186.5918 125.0843 275.6812 627.5455 219.1552 5.8985 260.4934 115.6142 202.8743 124.8626 261.9118 634.0824;
	3.8215 51.6373 92.2862 113.9756 14.5916 19.3114 2.4754 17.7003 10.99 26.7865 49.5144 73.8658 111.2045 32.4443 199.6951 75.234 93.3459 98.9188 69.2201 73.046 0.8251 45.0599 73.8817 85.3626 100.4623 72.3218 13.2498 392.4217 612.1921 612.1921 440.0164 84.737 230.7337 188.0207 101.7174 261.202 553.335 231.7527 89.1557 269.0956 115.5252 214.2277 153.2666 263.8895 559.0989;
	3.5564 48.0542 91.3995 114.7327 14.5028 10.5188 3.4424 17.5519 5.7512 28.4487 52.5869 78.4493 118.105 21.9419 191.7415 72.2375 89.628 94.979 60.3939 73.0655 1.1475 24.5439 73.0383 85.3089 100.347 70.6553 13.3631 416.6662 512.1414 512.1414 411.7989 89.4324 201.313 188.0707 68.7907 218.5137 453.885 223.2573 64.8523 268.7865 117.8886 116.6887 144.3596 256.3715 458.613;
	3.3405 45.1373 92.5891 114.9777 14.7605 18.8351 0.1823 18.5045 4.5067 28.3581 52.4195 78.1996 117.7291 30.9836 189.3123 71.3223 88.4925 93.7756 61.3479 71.1974 0.0608 43.9487 70.5493 85.3614 103.3573 73.9294 13.3748 940.4109 412.5616 412.5616 293.0543 87.7496 204.493 183.2624 97.1379 176.0263 786.366 225.5505 103.2208 276.8499 118.4533 208.9446 129.2793 262.6477 794.5573;
	2.9387 39.7089 90.7517 115.0327 14.663 22.5455 0.473 18.5603 4.0124 29.4888 54.5096 81.3176 122.4232 39.8342 192.717 72.605 90.084 95.4622 80.4895 71.1654 0.1577 52.6062 71.6378 84.4767 98.6021 72.2448 13.6402 1167.3743 510.0721 510.0721 211.2079 64.8964 268.2983 183.1798 124.8856 217.6308 947.3662 191.9528 108.757 264.1127 121.4181 250.1047 167.0728 267.4839 957.2346;
	2.1861 29.5387 91.8906 112.466 14.9891 33.0256 0.0 19.0661 4.8754 24.8718 45.9752 68.5859 103.2557 55.5447 185.059 69.7199 86.5043 91.6688 51.9381 70.4138 0.0 77.0598 52.1669 88.4113 103.8378 75.7499 14.0226 1160.0113 628.416 628.416 297.6046 56.3213 173.127 181.2453 174.1403 268.1242 1070.1766 133.4173 222.1052 278.1369 122.0709 366.3644 144.4596 279.6129 1081.3243;
	3.5598 48.1008 92.3229 82.7738 14.6727 33.4057 0.0 18.1584 0.0 5.987 11.0669 16.5097 24.8553 48.1786 190.0685 71.6072 88.846 94.1502 34.6437 72.2289 0.0 77.9466 26.4367 87.73 104.131 75.6141 13.7046 1234.078 649.0377 649.0377 354.011 50.7077 115.4789 185.9174 151.0466 276.9228 1051.0834 114.9683 0.0 278.9224 120.0844 370.5804 144.2161 273.3135 1062.0322;
	3.5726 48.2738 92.0211 116.449 14.5547 32.7798 0.0 18.4674 0.5096 7.0319 12.9984 19.3911 29.1932 56.3313 190.2666 71.6819 88.9386 94.2484 58.4143 70.7999 0.0 76.4862 56.2473 87.3431 104.5899 74.0376 13.7695 1205.9641 581.0719 581.0719 523.7883 45.6824 194.7143 182.2392 176.6063 247.924 1077.75 152.6891 0.0 280.1514 118.0142 363.6371 133.6223 280.9186 1088.9766;
	3.7149 50.1961 90.5492 114.4407 15.0821 34.1652 0.0 18.1444 26.8592 28.5589 52.7908 78.7535 118.5629 45.7259 188.5926 71.0512 88.1561 93.4191 63.3908 71.4753 0.0 79.7189 72.0496 89.2582 104.9494 74.1863 13.8025 1250.2134 575.338 575.338 472.8353 64.9329 211.3027 183.9777 143.357 245.4776 1098.6255 201.8606 293.0263 281.1144 121.2081 379.0063 193.6605 278.0784 1110.0696;
	3.8585 52.1362 91.6367 117.0631 15.2589 34.487 0.0744 18.6133 28.0234 29.5077 54.5445 81.3696 122.5015 50.5759 184.2241 69.4054 86.1141 91.2552 63.5563 70.5199 0.0248 80.4697 71.1998 86.694 104.2444 72.8442 13.5618 1324.0991 708.5309 708.5309 592.7395 109.4999 211.8543 181.5184 158.5624 302.3065 1185.6648 231.8944 355.0756 279.2262 120.2267 382.5758 200.4516 272.5592 1198.0155;
	3.8215 51.6362 90.9287 117.6158 15.3651 34.4784 28.5767 18.175 27.5902 27.8112 51.4087 76.6916 115.4588 59.7635 186.3285 70.1982 87.0977 92.2976 70.9542 70.5323 9.5256 80.4497 71.6871 87.6532 106.0572 71.882 13.2996 1307.1934 702.1452 702.1452 596.5078 112.0212 236.514 181.5503 187.3668 299.5819 1162.7959 230.2327 435.9961 284.0817 122.568 382.4809 195.7642 275.2002 1174.9084;
];
