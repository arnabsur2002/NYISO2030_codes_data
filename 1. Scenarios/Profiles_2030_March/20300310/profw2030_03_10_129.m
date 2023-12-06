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
	3.7174 50.2304 77.9765 112.7102 14.7118 34.7989 30.2183 6.5023 26.7404 11.5942 21.4317 31.9719 48.1335 35.4962 177.8942 67.0206 83.1552 88.1197 73.6338 67.5328 10.0728 81.1974 29.7581 37.023 46.7687 26.2345 4.6729 1230.5196 803.1613 803.1613 706.1392 81.9811 245.446 173.8297 111.2854 342.6821 1236.3865 214.4519 447.0503 125.2733 116.466 386.0359 209.0137 106.7898 1249.2655;
	3.019 40.7936 71.1408 41.9311 14.7603 28.2188 31.1628 6.613 9.9918 13.1312 24.2729 36.2104 54.5145 40.2545 182.0605 68.5902 85.1027 90.1835 84.4998 69.4079 10.3876 65.8439 27.2699 35.7715 36.5705 25.7648 4.9534 1263.8455 811.7991 811.7991 739.369 76.3887 281.6661 178.656 126.2032 346.3676 1266.056 201.4303 463.2398 97.9567 118.8305 313.0407 210.6173 88.0473 1279.2441;
	3.1526 42.5982 86.5786 47.8316 15.1165 23.6764 31.9607 6.2715 10.5203 12.159 22.4758 33.5294 50.4784 39.8316 186.3468 70.2051 87.1063 92.3067 84.6132 63.5003 10.6536 55.245 27.6437 39.1509 38.4144 26.6259 5.7222 1267.1341 808.9297 808.9297 766.3908 90.3967 282.0441 163.4499 124.8774 345.1434 1261.5654 213.1724 474.3593 102.8958 36.3998 262.6505 213.1635 135.2628 1274.7067;
	3.6073 48.7432 84.982 51.9435 15.1837 14.9371 31.9672 6.9137 11.3979 12.6372 23.3598 34.8482 52.4637 28.4448 189.9496 71.5624 88.7904 94.0913 81.3474 66.1001 10.6557 34.8533 27.8377 36.7545 37.9438 27.8656 5.0528 1262.3544 819.1646 819.1646 772.3375 87.5165 271.158 170.1419 89.1784 349.5102 1264.9543 230.4497 477.4985 101.6351 40.7508 165.7027 216.9895 123.1848 1278.1309;
	3.8677 52.2609 83.4603 43.6062 15.0292 22.2474 31.5763 7.0628 11.261 12.1984 22.5485 33.638 50.6418 33.6869 177.6865 66.9424 83.0581 88.0168 87.208 66.9014 10.5254 51.9106 1.8707 27.2784 38.0971 60.0991 5.0093 1199.6169 793.8701 793.8701 723.6092 84.0534 290.6934 172.2044 105.6129 338.7179 1229.132 222.0718 471.2242 102.0457 40.0966 246.7979 212.7064 204.9187 1241.9354;
	3.9057 52.7751 94.3691 116.8331 15.2282 34.1708 31.1921 7.8814 10.2406 14.1418 26.1408 38.997 58.7097 30.6802 191.7791 72.2517 89.6456 94.9976 90.4492 69.0716 10.3974 79.7318 16.9776 34.864 57.585 71.4101 5.435 1149.4174 794.5304 794.5304 730.1629 90.5739 301.4973 177.7905 96.1867 338.9997 1209.7185 224.6201 463.8165 154.2456 77.9191 379.0678 216.1279 267.0744 1222.3197;
	3.9283 53.0795 91.0915 119.8958 15.2536 33.8749 30.7745 11.2902 10.0818 12.396 22.9138 34.1829 51.4621 38.9049 193.9718 73.0778 90.6706 96.0837 82.8152 71.3904 10.2582 79.0414 26.1287 52.3915 100.641 74.3429 11.1135 1074.3367 779.3415 779.3415 658.1752 88.0232 276.0506 183.7591 121.972 332.519 1213.9616 255.169 453.5609 269.5742 112.8949 375.7852 216.1484 284.683 1226.607;
	3.6968 49.9518 87.5554 111.4468 14.8927 31.7007 30.1418 18.0488 6.8643 12.2646 22.6709 33.8205 50.9165 62.961 198.8232 74.9055 92.9383 98.4868 88.2138 63.6562 10.0473 73.9684 24.806 53.9343 102.6008 73.1473 13.5233 937.0696 776.2532 776.2532 631.4126 95.9935 294.0461 163.8513 197.3913 331.2014 1140.9963 266.3077 448.1269 274.8237 119.0427 351.6668 211.3745 275.5914 1152.8816;
	3.7928 51.2485 87.1406 111.1143 14.9777 32.9512 29.0705 17.5197 8.2462 12.0362 22.2487 33.1907 49.9684 65.5464 199.8239 75.2825 93.4061 98.9826 59.8044 68.3407 9.6902 76.8862 25.6852 84.6296 101.1938 70.7143 13.3117 742.2505 810.0105 810.0105 629.3423 95.6057 199.3481 175.9091 205.4969 345.6045 1141.7115 269.4265 440.2729 271.0548 120.5851 365.5391 215.1472 266.0795 1153.6043;
	3.8617 52.1801 89.1044 114.3951 15.176 34.5198 29.9761 17.7282 20.019 10.0747 18.6229 27.7817 41.8252 63.1716 191.9634 72.3211 89.7317 95.0888 59.8445 59.4314 9.992 80.5463 21.1093 87.0523 97.9137 65.3983 13.072 560.8615 806.0534 806.0534 587.7701 95.5762 199.4816 152.9765 198.0514 343.9161 1052.167 248.0551 436.4414 262.2689 117.38 382.9399 215.9438 266.4865 1063.1271;
	3.8942 52.6186 90.8323 116.7432 15.1668 34.9165 29.8048 17.4503 27.5425 15.0576 27.8337 41.5224 62.5117 68.7836 201.1627 75.7869 94.0319 99.6457 45.4871 69.1189 9.9349 81.4717 23.2469 84.3771 97.6237 68.9888 13.3089 414.9375 784.052 784.052 678.7761 86.0027 151.6237 177.9123 215.6458 334.5289 930.8578 251.6721 441.1033 261.492 119.0737 387.3399 216.2413 268.6981 940.5543;
	3.4378 46.4527 88.1114 111.5933 14.7448 33.3311 28.1118 17.4781 27.1298 17.8344 32.9666 49.1797 74.0397 65.3598 196.7849 74.1376 91.9855 97.4772 57.0582 67.7384 9.3706 77.7726 30.8748 83.4174 95.3618 70.3659 12.6877 290.7872 739.9044 739.9044 650.337 93.1713 190.1938 174.3587 204.9118 315.6926 750.6494 238.0189 435.5273 255.4334 117.4294 369.7532 203.2667 263.4638 758.4687;
	2.15 29.0515 88.961 110.9833 14.6438 21.388 21.5916 17.7613 25.9599 25.7501 47.5986 71.0077 106.9018 63.4238 188.3719 70.968 88.0529 93.3098 91.5634 69.0455 7.1972 49.9054 54.832 84.8035 95.6629 69.1985 13.4276 293.015 621.3408 621.3408 568.1201 85.1388 305.2114 177.7232 198.8423 265.1054 633.5523 205.6145 336.1104 256.24 118.1988 237.2646 184.3564 264.9212 640.1518;
	2.2821 30.8363 89.5332 111.1251 15.1044 13.2539 20.1749 17.6443 26.4133 29.5288 54.5835 81.4278 122.5891 64.5033 190.8377 71.897 89.2055 94.5312 89.82 71.3601 6.725 30.9257 72.6373 85.4225 98.2764 71.4837 13.1462 303.0384 559.6253 559.6253 502.186 86.8742 299.3999 183.6811 202.2267 238.7735 446.8978 186.4434 383.268 263.2403 121.5448 147.0296 147.237 261.6503 451.553;
	2.1185 28.626 88.0278 109.4268 12.6982 3.6613 17.9748 17.6054 25.7668 27.6269 51.0679 76.1832 114.6934 65.8686 195.0717 73.4921 91.1847 96.6285 81.346 71.094 5.9916 8.5429 69.006 84.8962 96.7229 70.9278 12.7441 453.3587 452.1047 452.1047 346.3238 75.4221 271.1534 182.9962 206.507 192.898 397.3902 167.0662 372.4252 259.0792 118.3515 40.6156 119.4876 252.7613 401.5297;
	3.1737 42.8836 87.2353 79.8644 14.0537 26.1598 13.9688 18.0269 21.22 28.4274 52.5476 78.3907 118.0168 57.502 195.3164 73.5843 91.2991 96.7498 79.1245 71.1833 4.6563 61.0396 69.7397 87.1358 98.742 72.2179 12.2899 493.745 491.8776 491.8776 340.1495 41.2866 263.7483 183.2261 180.2764 209.8678 473.361 148.8738 416.0127 264.4875 118.0005 290.1996 86.9846 265.3169 478.2919;
	2.7837 37.6144 86.9988 61.7617 14.3179 31.8745 12.2089 18.0396 26.5438 27.0325 49.9691 74.544 112.2256 63.9351 195.5448 73.6704 91.4058 96.8629 84.3871 72.8016 4.0696 74.3739 69.3042 86.7662 102.4553 72.8652 13.4449 556.8114 548.5082 548.5082 386.8028 25.5218 281.2902 187.3914 200.4451 234.0302 556.2907 116.6165 142.3827 274.4339 118.3879 353.5946 110.8165 267.1392 562.0854;
	3.4935 47.2045 89.1462 64.6398 14.7701 33.0107 27.6693 18.1223 26.2593 12.4183 22.955 34.2443 51.5547 66.1791 187.6201 70.6848 87.7015 92.9374 71.0065 73.4234 9.2231 77.025 48.5349 86.3633 101.0047 72.5694 13.3642 683.958 632.1115 632.1115 394.6819 24.8445 236.6884 188.9919 207.4803 269.7009 797.9888 86.8307 390.0574 270.5483 120.3044 366.1991 128.1417 270.1465 806.3012;
	3.6571 49.4157 87.601 50.2316 14.649 33.1195 28.1378 18.1657 26.9482 24.4919 45.2728 67.5382 101.6784 68.6612 188.0098 70.8316 87.8836 93.1304 49.3694 73.2612 9.3793 77.2789 59.4995 76.5942 98.261 73.9445 13.4026 970.4984 679.6631 679.6631 475.8897 38.4267 164.5648 188.5745 215.2622 289.9896 1000.0817 98.8554 451.7607 263.1991 115.8881 367.4059 148.3475 252.8534 1010.4992;
	3.5782 48.3496 60.2215 36.0587 14.5611 31.5401 1.977 18.5093 26.8409 28.39 52.4785 78.2877 117.8616 67.9468 200.1221 75.3948 93.5454 99.1302 41.8318 73.457 0.659 73.5936 72.3632 71.9556 101.2011 73.1521 13.3367 1114.1544 592.3107 592.3107 535.1419 57.8484 139.4394 189.0785 213.0223 252.7192 1129.522 140.8953 436.6252 271.0744 118.4741 349.8848 151.5846 234.195 1141.2878;
	3.599 48.6298 57.8458 57.7641 14.4966 32.2599 29.5262 18.1881 25.0732 28.4441 52.5785 78.4368 118.0861 68.9221 201.1907 75.7974 94.0449 99.6596 61.1074 73.6616 9.8421 75.2731 73.7202 83.8444 91.3517 73.8201 13.2795 1261.0814 732.3242 732.3242 441.0884 71.7345 203.6914 189.6051 216.08 312.4583 1169.7269 195.1005 449.931 244.692 115.0492 357.8696 139.5297 256.7315 1181.9116;
	3.6256 48.9901 47.351 84.5794 14.2483 32.5922 9.5872 18.5948 28.3719 30.7518 56.8442 84.8003 127.6664 68.9144 200.2416 75.4399 93.6013 99.1894 57.8971 72.6417 3.1957 76.0484 73.278 82.9407 98.5147 73.6548 13.8898 1280.5465 755.1338 755.1338 561.8592 92.8626 192.9903 186.9799 216.056 322.1904 1282.1222 224.2208 468.2083 263.8787 116.2339 361.5559 152.4123 242.6337 1295.4776;
	3.7738 50.9927 63.6196 95.588 14.2777 32.0995 30.8759 18.74 28.0718 30.6808 56.713 84.6047 127.3719 68.7176 195.7777 73.7581 91.5147 96.9783 51.6726 72.2211 10.292 74.8987 71.4143 85.2399 102.2366 74.6474 13.7677 1302.9887 740.9976 740.9976 567.0211 107.0051 172.2421 185.8973 215.4391 316.159 1255.6826 240.7709 467.1291 273.8479 119.4916 356.09 154.3098 268.3325 1268.7626;
	3.7403 50.5403 91.9824 105.1172 14.4774 32.6354 29.6274 18.6892 27.541 30.7837 56.9032 84.8883 127.7989 69.1109 190.3531 71.7144 88.979 94.2912 40.795 71.4031 9.8758 76.1492 71.1425 85.839 102.4642 73.2296 13.9061 1274.9281 707.4231 707.4231 584.8342 114.2558 135.9834 183.7917 216.6719 301.8339 1247.5335 219.1624 459.0774 274.4576 117.8195 362.0351 169.6255 265.9235 1260.5287;
];