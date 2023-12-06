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
	0.8004 10.8147 67.4547 69.5123 8.7938 7.43 0.0 8.8372 1.0066 11.7759 21.7675 32.4729 48.8877 0.0362 137.8234 51.9241 64.4244 68.2706 60.4739 70.1196 0.0 17.3367 63.3168 81.9114 56.5944 46.196 4.665 187.2169 312.9563 312.9563 204.5558 46.4984 201.5796 180.488 0.1134 133.528 364.5067 84.8703 4.3562 151.5922 60.6451 82.4237 9.2773 74.3141 368.3037;
	0.5361 7.2439 59.8177 64.7561 8.1448 6.4967 0.0 10.4616 5.5313 10.6581 19.7014 29.3905 44.2473 2.0443 125.4969 47.2802 58.6625 62.1648 69.6743 71.6843 0.0 15.1589 31.8521 77.7946 55.5714 45.1578 5.905 91.3497 217.7585 217.7585 158.2348 33.0038 232.2475 184.5155 6.4091 92.9103 282.8596 92.0189 51.334 148.852 73.7731 72.0697 3.9576 80.719 285.8061;
	0.3281 4.4335 64.8551 67.0773 6.5659 4.1916 0.0 11.3882 1.5664 9.0174 16.6686 24.8663 37.4361 0.7894 89.6616 33.7795 41.9116 44.4138 55.395 70.314 0.0 9.7805 15.4152 83.8258 61.1309 49.6598 6.558 2.8838 24.5752 24.5752 15.4531 16.8716 184.65 180.9884 2.4748 10.4854 153.9294 5.1799 1.0063 163.7435 70.053 46.4993 2.1472 88.7782 155.5328;
	0.4005 5.4111 66.5174 72.0508 8.1309 2.5834 0.0 12.9514 0.45 13.1301 24.2707 36.2072 54.5097 0.0 93.5475 35.2435 43.728 46.3387 41.1649 69.3525 0.0 6.0279 31.9591 84.0544 62.5195 58.16 7.7009 20.7437 23.041 23.041 16.7451 17.8973 137.2164 178.5136 0.0 9.8308 9.2473 5.7241 0.0 167.4629 58.1974 28.6585 0.0006 123.9401 9.3437;
	0.4873 6.5845 81.2125 76.8144 10.0337 7.1626 0.0 13.5874 0.0 12.7368 23.5438 35.1227 52.8771 0.0 129.0773 48.6291 60.3361 63.9383 45.9801 71.562 0.0 16.7127 30.6775 85.3505 80.2355 67.3525 8.6778 30.0982 8.603 8.603 6.9315 10.6758 153.2672 184.2007 0.0 3.6706 5.8266 0.9663 0.0 214.9166 61.7413 79.457 0.1585 136.0677 5.8873;
	0.46 6.2159 80.0778 61.5298 10.0127 4.6038 0.0 12.2981 0.0144 7.8365 14.4856 21.6096 32.5332 0.0 152.0533 57.2852 71.0761 75.3194 72.5545 73.7832 0.0 10.7421 27.1032 83.6071 60.8958 62.4184 7.8939 25.9421 21.7916 21.7916 17.2345 11.4185 241.8485 189.9181 0.0 9.2978 13.6257 4.5303 0.0 163.1136 45.3541 51.0711 21.922 127.4194 13.7676;
	0.4804 6.4917 59.0487 40.0026 9.576 3.5159 3.1623 8.2993 1.9182 5.8858 10.8798 16.2305 24.435 0.0 122.0147 45.9683 57.0348 60.4398 54.925 72.6828 1.0541 8.2037 16.9207 60.3191 35.9406 61.4221 4.2928 40.226 29.6558 29.6558 18.6312 0.8997 183.0832 187.0858 0.0 12.6531 37.5284 3.3182 0.0 96.2695 18.2406 39.0026 29.177 128.9944 37.9193;
	0.5036 6.8041 34.0717 26.0456 3.7614 3.2048 4.6184 6.9262 2.5279 3.6475 6.7423 10.0583 15.1426 0.0 64.1842 24.181 30.0024 31.7936 13.81 52.3636 1.5395 7.478 5.6959 35.4102 32.0214 58.8882 4.3329 27.8328 33.7637 33.7637 32.4204 0.8492 46.0334 134.7842 0.0 14.4059 20.7799 2.949 2.6231 85.7717 5.3314 35.5525 3.1474 95.5439 20.9963;
	0.567 7.6609 26.5982 21.2794 3.3966 3.0809 1.4854 5.1958 9.0619 2.0197 3.7334 5.5695 8.3849 1.6961 16.8095 6.3329 7.8575 8.3266 0.0 21.5067 0.4951 7.1889 4.0264 33.4654 28.2626 51.8146 4.1486 28.8777 7.3364 7.3364 19.5657 0.8473 0.0 55.3584 5.3174 3.1302 9.9945 1.668 87.5312 75.7035 0.0469 34.1779 1.1771 63.3636 10.0986;
	0.6264 8.4643 32.2362 24.9964 6.6982 2.0625 14.1824 4.3256 26.0602 7.916 14.6326 21.829 32.8634 0.2486 8.3007 3.1272 3.8801 4.1117 0.2777 15.6905 4.7275 4.8125 10.3198 32.9387 29.8656 43.6848 3.1858 77.6458 28.8603 28.8603 33.0791 1.1572 0.9255 40.3875 0.7795 12.3137 24.6202 1.2171 204.0334 79.9971 0.3271 22.88 45.5528 78.9755 24.8767;
	0.9293 12.5571 47.4599 18.0284 10.6965 8.891 1.6619 3.4161 8.7822 10.1457 18.7542 27.9775 42.12 2.7555 7.2442 2.7292 3.3863 3.5884 2.2394 12.4099 0.554 20.7458 28.4384 40.0334 47.7593 51.0652 1.4251 94.0649 62.6198 62.6198 24.4312 1.6334 7.4646 31.9432 8.6388 26.7178 73.1106 1.6662 64.4445 127.9268 17.1475 98.6312 1.2781 94.1865 73.8722;
	1.6326 22.0595 60.6373 3.8001 12.9703 3.9108 2.9673 0.0023 2.0879 4.2238 7.8077 11.6475 17.5353 0.0031 28.8956 10.8862 13.507 14.3134 0.5126 12.8184 0.9891 9.1252 51.5176 50.8746 2.2752 41.4975 0.915 134.2805 98.2326 98.2326 7.1762 6.0234 1.7087 32.9947 0.0096 41.9126 127.1004 1.3672 43.869 6.0944 43.714 43.3839 0.0661 121.79 128.4243;
	2.3977 32.3987 83.0288 2.735 14.6541 6.0488 0.0059 0.1146 5.5696 25.6927 47.4927 70.8497 106.6638 0.6726 12.7935 4.8199 5.9802 6.3373 0.3918 11.8606 0.002 14.1138 37.7611 66.69 69.4698 52.6747 1.5891 177.4996 160.497 160.497 4.402 3.4157 1.306 30.5292 2.1087 68.4787 175.0507 0.0008 11.28 186.0799 49.9301 67.101 104.3884 164.4073 176.8741;
	1.927 26.0385 21.4072 2.6591 14.5538 20.5271 4.6965 0.0162 5.8041 3.7677 6.9646 10.3898 15.6417 1.4859 0.843 0.3176 0.394 0.4176 1.8352 8.9452 1.5655 47.8966 53.0088 6.4093 3.2328 33.66 1.2824 157.9247 212.2764 212.2764 19.0654 3.9659 6.1173 23.025 4.6585 90.5713 188.691 6.9295 116.8696 8.6593 11.8032 227.7143 82.3921 136.1328 190.6565;
	2.3346 31.5451 13.7162 2.5061 10.4545 9.924 1.6076 0.0062 6.9865 10.0941 18.6589 27.8353 41.906 8.4503 3.1552 1.1887 1.4749 1.5629 0.0154 6.1302 0.5359 23.156 34.9961 20.0061 6.6061 8.4876 0.9164 276.1072 261.091 261.091 100.0346 5.7369 0.0514 15.7792 26.493 111.3988 263.2769 15.4179 25.934 17.6949 2.8322 110.0902 85.2405 98.7378 266.0193;
	3.3136 44.7739 84.9138 0.5495 14.4795 5.6795 0.0 0.0008 5.6389 4.0857 7.5524 11.2667 16.9619 6.2079 6.7547 2.5448 3.1574 3.3459 0.0175 1.3289 0.0 13.2521 50.7805 3.6013 3.1845 0.7595 0.1356 409.3725 273.345 273.345 184.2544 9.6306 0.0585 3.4206 19.4627 116.6272 312.3365 41.8988 28.9114 8.5298 0.3437 63.0041 5.0461 165.3262 315.59;
	3.6247 48.9783 26.6545 17.8448 15.0354 4.9418 0.457 1.9944 10.028 7.3495 13.5853 20.2667 30.5114 17.23 12.6827 4.7781 5.9284 6.2824 0.5615 1.7044 0.1523 11.5308 33.9425 6.4584 27.4467 6.809 0.8176 397.2519 381.2617 381.2617 188.9298 19.8 1.8716 4.387 54.0184 162.6717 459.4375 69.0441 101.8741 73.5178 8.2106 54.8206 137.6297 214.6791 464.2234;
	2.9671 40.0919 21.7602 33.1308 14.9366 19.7135 0.9286 1.6062 9.4195 8.6202 15.9343 23.7708 35.7869 6.5096 7.4663 2.8129 3.49 3.6984 0.0001 0.9692 0.3095 45.9982 19.2596 10.2415 17.3355 16.6903 1.0546 561.6447 480.5224 480.5224 338.786 28.7546 0.0002 2.4946 20.4084 205.0229 536.7129 92.5801 11.3146 46.4345 25.9253 218.6888 112.67 223.2474 542.3036;
	3.223 43.5492 86.884 17.709 15.0053 26.7866 2.7507 0.2247 8.4756 9.5073 17.5742 26.2172 39.4699 8.1792 0.5744 0.2164 0.2685 0.2845 0.0 36.7712 0.9169 62.502 33.5429 12.8332 13.2199 61.695 0.0412 788.7785 454.9211 454.9211 345.5281 45.0562 0.0 94.6492 25.6427 194.0997 597.0009 72.3119 39.6961 35.4104 11.7822 297.1522 115.161 209.4952 603.2197;
	3.1735 42.8811 34.0172 57.549 15.0003 7.2063 19.0416 1.2599 27.2463 23.7117 43.8307 65.3868 98.4395 4.2039 0.181 0.0682 0.0846 0.0896 0.1461 17.7769 6.3472 16.8147 63.1148 64.9676 23.143 55.2175 0.3736 739.857 449.4962 449.4962 342.3715 43.0047 0.487 45.7578 13.1798 191.785 537.7698 78.7419 37.9757 61.9901 20.2306 79.9419 116.135 181.4587 543.3716;
	3.2928 44.4934 87.0944 42.9973 14.9419 8.2841 10.9823 0.69 28.0914 25.6682 47.4473 70.782 106.562 4.2264 24.8032 9.3444 11.594 12.2862 5.6285 29.1557 3.6608 19.3296 74.2354 84.6335 15.566 59.0784 0.393 666.1977 402.6038 402.6038 251.5596 54.4994 18.7617 75.0469 13.2504 171.7776 542.8474 72.596 40.287 41.6948 18.4151 91.8982 111.9725 175.4091 548.502;
	3.5247 47.6269 89.31 16.0723 14.3886 23.1724 12.2087 13.2864 27.416 25.8158 47.7201 71.189 107.1747 7.4455 24.3947 9.1906 11.4031 12.0839 10.0697 51.9656 4.0696 54.0689 57.2952 82.8593 98.3391 68.5544 5.3144 693.864 331.4076 331.4076 236.0882 59.9664 33.5655 133.7597 23.3427 141.4006 458.9532 104.0827 0.1936 263.4084 10.568 257.059 16.4392 201.1346 463.734;
	3.5273 47.6615 90.0082 112.6734 13.9638 25.0333 13.6707 15.9133 27.192 26.8057 49.5499 73.9188 111.2843 5.8172 59.9811 22.5975 28.0377 29.7116 10.9662 66.0932 4.5569 58.4111 65.6661 86.542 98.004 69.3491 7.6075 687.0385 344.4637 344.4637 298.6749 48.2552 36.5541 170.124 18.2378 146.9712 390.6452 94.8543 0.6023 262.5106 9.1859 277.7032 136.2984 212.801 394.7144;
	3.5574 48.0681 90.7388 111.7276 14.0068 16.4716 12.3111 16.5894 27.6835 27.3577 50.5702 75.4408 113.5758 9.3442 55.4673 20.897 25.9277 27.4757 45.1815 57.3651 4.1037 38.4337 60.6133 88.6124 99.7039 70.5651 7.359 618.1644 375.7279 375.7279 274.5171 47.4976 150.6051 147.6579 29.2953 160.3106 395.9081 77.5343 303.9296 267.064 8.7215 182.7247 142.9948 230.8411 400.0321;
];