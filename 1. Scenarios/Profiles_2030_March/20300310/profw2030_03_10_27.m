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
	3.8029 51.3858 74.8579 105.1242 14.6779 34.3786 29.9686 5.6828 26.4809 9.0281 16.6884 24.8958 37.4805 39.5892 186.6952 70.3363 87.2692 92.4793 79.5553 71.2665 9.9895 80.2168 1.5933 4.6234 34.0038 29.5277 4.0268 1180.5777 759.5417 759.5417 608.1561 81.2117 265.1843 183.44 124.1176 324.0711 1153.6431 196.3519 444.666 91.0817 104.4483 381.3737 206.6231 108.6161 1165.6602;
	3.2153 43.4451 75.0101 31.7225 14.7902 27.6467 29.2875 7.0436 5.2 10.8277 20.0149 29.8583 44.9516 34.6682 180.9345 68.166 84.5764 89.6257 78.884 69.6707 9.7625 64.5089 3.778 26.9207 37.2066 31.5028 5.2305 1209.7164 775.5916 775.5916 612.6089 73.2444 262.9466 179.3326 108.6893 330.9191 1209.3306 190.5059 453.1363 99.6605 108.9164 306.6939 207.2846 101.8545 1221.9277;
	3.1069 41.9809 85.8863 38.3668 14.7109 23.4952 29.7743 6.5612 0.3977 12.5816 23.2569 34.6947 52.2327 36.4844 194.1838 73.1576 90.7696 96.1887 85.812 69.8503 9.9248 54.8222 23.8258 30.196 35.8716 30.4368 5.917 1241.8371 802.2693 802.2693 720.9157 87.9171 286.04 179.7949 114.3835 342.3016 1241.5731 198.9064 466.8226 96.0846 23.0261 260.6402 210.9191 132.6344 1254.5061;
	3.4423 46.5132 81.1477 39.0162 14.5275 13.1154 30.2535 6.2066 0.1449 11.4039 21.0799 31.4471 47.3434 22.6806 192.3562 72.4691 89.9154 95.2834 86.6749 66.4404 10.0845 30.6026 17.4527 28.9862 31.6016 31.6066 4.9927 1226.925 809.1398 809.1398 711.4555 91.9999 288.9163 171.0177 71.1067 345.233 1259.7926 209.0212 465.1807 84.6471 25.517 145.4935 211.0145 114.7728 1272.9155;
	3.8175 51.5831 77.8694 38.2136 14.648 21.4621 31.6425 6.3363 8.5157 9.6166 17.7761 26.5184 39.9233 30.2553 170.6265 64.2826 79.758 84.5197 84.4877 64.1243 10.5475 50.0783 0.0 21.9767 35.4885 62.8605 5.3307 1229.7802 812.2976 812.2976 712.2817 95.2166 281.6258 165.0562 94.8544 346.5803 1286.564 220.2911 478.2464 95.0586 34.0658 238.0863 210.4697 203.7934 1299.9657;
	3.7496 50.6647 92.5816 109.4886 14.5004 31.8049 30.6443 6.0764 0.6386 0.038 0.0702 0.1047 0.1576 25.8121 181.0483 68.2089 84.6296 89.6821 88.3558 63.5643 10.2148 74.2114 0.0 31.0802 54.8716 68.7443 5.2424 1172.3005 761.9516 761.9516 625.4309 102.7585 294.5195 163.6148 80.9243 325.0994 1221.3901 211.1528 454.6841 146.9776 70.9126 352.8223 199.5776 254.1124 1234.1129;
	3.9152 52.9023 89.8891 112.9011 14.5499 33.1239 30.4407 8.7265 0.0 6.9669 12.8782 19.2117 28.9232 33.5504 189.0792 71.2345 88.3835 93.6602 84.2411 67.4839 10.1469 77.2891 0.0 50.7532 101.8317 74.6305 9.5732 1144.7009 798.8596 798.8596 674.261 108.5223 280.8035 173.7036 105.1849 340.8468 1272.8191 266.1586 454.079 272.7636 113.5611 367.4545 204.398 276.9915 1286.0776;
	3.8462 51.9702 93.4631 119.2033 14.6068 33.0736 30.2289 18.4331 2.1489 9.7096 17.9481 26.7751 40.3097 54.7621 188.9369 71.1809 88.317 93.5897 86.4444 57.1471 10.0763 77.1717 13.3988 62.1643 106.5314 76.0089 13.5732 987.9095 778.7939 778.7939 633.9276 106.9079 288.1481 147.0969 171.6867 332.2854 1191.9555 273.0551 446.7645 285.352 123.8708 366.8961 202.2515 284.4044 1204.3717;
	3.8451 51.9552 92.5069 116.5614 14.814 33.4502 30.0451 17.914 8.1013 10.8782 20.1083 29.9976 45.1612 62.4918 191.621 72.1921 89.5717 94.9192 56.9036 59.3542 10.015 78.0506 0.0 89.477 106.2409 74.9432 13.3395 758.1059 809.5743 809.5743 720.9195 109.1043 189.6787 152.7778 195.9203 345.4184 1182.4584 295.3766 458.9566 284.5739 122.9515 371.0747 203.8991 272.5056 1194.7757;
	3.6282 49.025 85.5144 111.2251 14.4582 29.5037 30.1742 17.5559 17.8038 9.8924 18.2859 27.279 41.0684 62.3016 186.2691 70.1758 87.07 92.2682 59.8237 46.12 10.0581 68.8419 13.7466 87.2971 98.4703 70.6272 12.9535 524.5715 824.6762 824.6762 718.114 105.7885 199.4123 118.713 195.3239 351.8618 1038.1649 270.7796 468.0164 263.7597 118.6005 327.2941 194.1136 264.469 1048.9791;
	3.63 49.0494 85.765 111.5191 14.4813 32.0533 30.76 17.4482 26.1425 16.6077 30.699 45.7969 68.9469 68.5571 201.9521 76.0843 94.4009 100.0368 44.5184 60.3495 10.2533 74.7911 24.853 83.2154 96.7667 72.1624 12.9578 399.8661 791.1695 791.1695 642.0405 93.6712 148.3947 155.3398 214.9357 337.5657 893.4538 264.643 459.8413 259.1965 117.7459 355.5783 199.5221 262.5195 902.7606;
	3.3286 44.9769 86.5114 110.5351 14.5449 31.3126 29.5434 17.4755 27.1018 20.4674 37.8336 56.4404 84.9706 67.731 195.3294 73.5892 91.3052 96.7562 55.265 50.5052 9.8478 73.0627 36.1419 84.2512 96.5942 73.0251 12.4256 258.7663 777.6086 777.6086 618.9564 99.1152 184.2166 130.0006 212.346 331.7797 702.4259 236.8703 461.3764 258.7345 117.6228 347.3608 186.0302 268.4924 709.7429;
	2.1014 28.3947 86.485 111.8504 14.2198 20.6179 26.1789 18.3803 26.3619 27.7984 51.3849 76.6561 115.4053 67.8211 190.6269 71.8176 89.107 94.4268 92.9834 54.4383 8.7263 48.1085 58.0222 86.6948 100.254 72.9873 13.5669 291.4273 726.0552 726.0552 616.7378 98.3094 309.9447 140.1244 212.6283 309.7835 668.8396 226.0734 434.5858 268.5376 120.4374 228.7218 172.337 269.9574 675.8067;
	2.2916 30.9644 86.3416 111.8498 14.1209 12.7264 27.373 17.9952 27.0297 30.2836 55.9788 83.5094 125.723 64.9816 194.4334 73.2516 90.8863 96.3123 92.927 65.2521 9.1243 29.6948 71.9477 83.6639 98.9169 73.2784 13.4671 299.1608 643.147 643.147 575.9599 100.1595 309.7565 167.9592 203.7262 274.4094 492.024 213.3431 446.2741 264.9559 119.6717 141.1778 142.6359 263.1738 497.1492;
	2.4287 32.8164 89.3414 118.1949 13.255 16.464 23.2822 18.5053 27.2163 27.0453 49.9928 74.5794 112.2788 64.0677 198.6523 74.8411 92.8584 98.4022 92.7317 69.3491 7.7607 38.416 68.8019 88.477 102.471 74.2449 13.8288 443.437 517.8419 517.8419 428.7979 91.108 309.1055 178.5047 200.861 220.9459 439.1988 193.9578 448.1253 274.476 119.7 182.6407 127.9769 267.3274 443.7738;
	3.3405 45.1378 87.8452 88.117 14.9143 26.0525 16.7104 18.7408 21.9832 26.549 49.0754 73.2108 110.2185 54.3175 198.5794 74.8136 92.8243 98.3661 91.4321 69.6582 5.5701 60.7891 66.8595 86.657 102.3767 72.8715 13.7378 464.1517 532.1051 532.1051 413.425 48.6061 304.7735 179.3005 170.2926 227.0315 486.271 168.8802 444.2118 274.2234 121.4139 289.0089 83.7585 273.7792 491.3363;
	3.2164 43.4609 91.7682 69.2797 14.9263 32.8866 14.621 19.0799 26.6621 26.1562 48.3493 72.1276 108.5877 61.5433 191.8784 72.2891 89.692 95.0467 92.4546 67.9923 4.8737 76.7354 69.9596 88.9335 106.5139 75.9598 13.9027 542.9453 612.7448 612.7448 441.4414 29.0125 308.182 175.0125 192.9466 261.4378 614.0642 125.0744 173.8026 285.305 123.1058 364.8222 114.4217 275.5132 620.4607;
	3.6524 49.3513 91.5926 64.4799 15.334 33.3425 28.4641 18.8778 26.3397 11.8752 21.9511 32.7467 49.3 63.4159 181.7393 68.4692 84.9526 90.0244 81.7091 69.5391 9.488 77.7992 51.1096 88.318 106.1558 74.8286 13.6076 691.0664 647.0456 647.0456 430.0698 29.2 272.3638 178.9938 198.8175 276.0728 809.2543 86.6073 386.3345 284.3458 123.6697 369.8797 114.9792 271.0903 817.684;
	3.7944 51.2713 93.6498 57.6587 15.3912 33.8943 27.6967 19.1291 26.1247 21.1217 39.0432 58.2447 87.6871 63.4957 165.2769 62.2671 77.2573 81.8697 62.7598 67.1414 9.2322 79.0867 51.5006 87.818 106.1439 76.5079 14.0738 994.9888 731.6399 731.6399 489.7905 43.6396 209.1994 172.8223 199.0676 312.1664 1070.8662 102.4987 422.6691 284.314 123.0059 376.0007 151.0776 263.7801 1082.021;
	3.7581 50.7805 70.8776 43.2345 15.4151 33.6975 0.0852 19.1399 25.8713 27.0113 49.9301 74.4858 112.138 65.3497 185.6977 69.9605 86.8029 91.9851 49.5139 69.1363 0.0284 78.6275 69.116 83.8288 106.4526 76.3456 14.0108 1155.1568 626.3811 626.3811 565.7691 60.4812 165.0464 177.9571 204.8801 267.2559 1153.4492 145.3368 402.005 285.1408 121.904 373.8177 156.3748 250.2399 1165.4643;
	3.7026 50.0298 66.0337 63.3395 15.346 32.0802 28.1594 18.7615 0.0 24.1327 44.609 66.5479 100.1874 65.1161 194.0528 73.1083 90.7084 96.1238 65.9706 72.3391 9.3865 74.8538 66.006 87.2627 104.3381 75.1477 13.4588 1187.4646 719.3601 719.3601 440.2721 71.3336 219.9021 186.2011 204.1476 306.927 1127.401 207.0432 388.7708 279.477 120.81 355.8762 133.2213 254.6598 1139.1448;
	3.6462 49.2684 45.5725 76.0973 14.9587 32.4546 0.6569 18.1984 26.1206 26.9768 49.8661 74.3904 111.9944 68.6567 192.2286 72.421 89.8557 95.2202 61.2464 69.3888 0.219 75.7274 68.9 83.6746 100.6862 74.3244 13.6325 1231.2529 719.4582 719.4582 547.8058 90.0523 204.1545 178.6069 215.2481 306.9688 1206.0077 231.4672 443.151 269.695 119.8449 360.0299 144.7772 200.178 1218.5702;
	3.8386 51.8682 57.4778 85.2514 15.1849 32.9017 29.3405 17.9834 27.317 28.2021 52.1312 77.7695 117.0816 69.1909 192.5251 72.5327 89.9943 95.3671 57.2848 72.1892 9.7802 76.7707 67.1469 85.9355 100.7324 74.3886 13.6391 1228.6629 750.6628 750.6628 588.9275 104.6144 190.9494 185.8151 216.9228 320.2828 1167.8624 246.5602 448.1311 269.8188 123.1277 364.9899 151.2759 219.7716 1180.0276;
	3.8006 51.3542 88.3909 102.3977 15.2229 32.8691 29.9083 18.4929 27.2519 29.1208 53.8293 80.3027 120.8953 69.5433 193.0321 72.7237 90.2313 95.6182 43.0948 72.4347 9.9694 76.6946 69.6145 87.2727 102.356 75.122 13.7226 1188.9309 726.8534 726.8534 593.8558 107.7224 143.6492 186.447 218.0277 310.1241 1163.5118 221.5002 461.7419 274.1678 123.0648 364.6279 165.6595 263.0916 1175.6317;
];
