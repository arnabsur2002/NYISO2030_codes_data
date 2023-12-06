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
	3.8499 52.0202 83.6689 115.8607 15.1814 35.1118 30.5497 5.7644 27.92 13.28 24.5478 36.6205 55.1319 46.4789 188.9222 71.1753 88.3101 93.5824 89.7969 68.6897 10.1832 81.9276 30.7765 34.9022 43.7008 24.6119 2.5005 1211.062 789.3957 789.3957 664.7623 85.7548 299.323 176.8074 145.7177 336.8089 1180.9262 202.8673 461.3165 117.0557 110.9567 389.5072 207.6006 114.8975 1193.2275;
	3.0909 41.7654 79.2219 46.9275 15.2197 28.8324 30.0784 7.3595 10.5868 14.4652 26.7387 39.8889 60.0525 43.5082 184.8505 69.6413 86.4068 91.5655 90.1768 69.9703 10.0261 67.2757 28.8544 35.9607 41.4874 30.1423 5.1875 1255.4665 798.5384 798.5384 734.4375 79.6667 300.5895 180.1038 136.4042 340.7097 1214.7707 202.2359 455.1151 111.1269 112.9002 319.8477 205.3061 99.1575 1227.4245;
	3.0764 41.5683 90.1254 47.0173 15.0497 24.5374 30.1355 6.8355 9.7119 13.8882 25.6721 38.2977 57.6569 39.2415 202.4263 76.2629 94.6225 100.2717 92.1899 70.0077 10.0452 57.2538 26.649 37.4962 40.5143 28.3049 5.7648 1259.159 805.6302 805.6302 745.4301 91.6682 307.2996 180.1999 123.0273 343.7356 1236.4557 210.2903 453.0478 108.5205 34.0909 272.2011 207.1726 134.3215 1249.3355;
	3.3997 45.9368 88.355 51.5462 14.8039 14.7086 29.801 7.1575 10.7752 13.7982 25.5058 38.0496 57.2835 28.3821 192.4802 72.5158 89.9733 95.3449 88.584 71.0982 9.9337 34.32 27.1266 37.0016 37.4079 27.6053 5.2585 1270.4687 811.9245 811.9245 765.411 98.1267 295.2799 183.0069 88.9816 346.4211 1237.4112 232.4507 442.8785 100.1998 38.425 163.1672 209.4586 120.7044 1250.3009;
	3.6817 49.7483 87.1899 42.7883 15.2956 22.5028 30.027 7.4232 11.8491 12.1549 22.4682 33.5181 50.4614 29.7681 181.2291 68.277 84.7141 89.7716 87.8819 69.4414 10.009 52.5066 3.1796 30.3623 41.8135 60.5803 5.439 1240.2325 809.996 809.996 762.5275 102.8428 292.9397 178.7423 93.327 345.5983 1233.9925 240.1645 441.7604 112.0004 40.6922 249.6314 209.1065 213.4247 1246.8466;
	3.8803 52.4312 95.3071 118.6293 15.422 34.9126 30.0532 8.0214 11.6471 13.9502 25.7867 38.4686 57.9143 25.1407 185.8561 70.0202 86.8769 92.0636 90.0374 70.2531 10.0177 81.4627 4.3418 37.4186 59.8291 69.4753 5.496 1173.5514 791.6353 791.6353 793.5811 111.1868 300.1247 180.8317 78.8196 337.7644 1218.6286 245.2134 444.7418 160.2566 77.2566 387.2971 217.3001 259.3722 1231.3227;
	3.949 53.3602 95.2638 120.9323 15.3752 35.5456 30.6472 12.6431 12.4421 14.0315 25.9369 38.6928 58.2518 36.6205 189.3236 71.3266 88.4978 93.7812 81.2982 70.4612 10.2157 82.9397 27.8446 58.5504 106.1694 75.9673 12.1203 1084.6313 784.0016 784.0016 773.941 112.9417 270.9939 181.3673 114.8101 334.5073 1241.9114 285.0468 436.8189 284.3822 113.6285 394.3192 217.4513 283.5858 1254.848;
	3.8611 52.1715 94.54 119.7478 15.2582 34.8346 31.1405 18.9939 11.9195 13.8247 25.5547 38.1227 57.3935 62.9279 190.9462 71.9379 89.2562 94.585 79.4402 60.9133 10.3802 81.2807 26.7168 61.4133 106.3658 75.2864 14.0844 1008.5352 788.2736 788.2736 793.7367 116.165 264.8006 156.7909 197.2875 336.3301 1232.861 311.764 450.2651 284.9084 122.929 386.4317 210.9125 280.7945 1245.7033;
	3.9027 52.7336 94.572 119.022 15.1647 34.8097 30.5656 18.583 9.9476 13.6468 25.2259 37.632 56.6548 63.0744 193.149 72.7678 90.2859 95.6761 45.7391 66.746 10.1885 81.2225 27.6737 88.3933 105.2198 74.7476 14.0581 787.4133 833.3788 833.3788 786.768 116.7717 152.4635 171.8045 197.7467 355.575 1243.1104 316.6756 448.3869 281.8386 118.9346 386.1552 215.9992 273.1361 1256.0595;
	3.9157 52.91 95.2414 121.0312 15.3086 35.1169 31.2566 18.5028 20.8284 12.5969 23.2852 34.7369 52.2962 61.3689 185.7201 69.969 86.8134 91.9962 46.8048 59.1293 10.4189 81.9394 25.6634 89.7557 103.9665 73.4126 14.0281 642.2849 838.6781 838.6781 769.0479 112.469 156.0161 152.1989 192.3998 357.836 1196.0329 279.8238 437.4856 278.4816 117.8152 389.5633 216.3752 272.4384 1208.4916;
	3.9264 53.0542 95.4179 121.0676 15.3 35.058 30.9432 19.0772 27.4959 19.9684 36.9113 55.0644 82.8992 67.9478 196.4334 74.0051 91.8212 97.3031 42.4341 68.3003 10.3144 81.8019 30.7433 90.0874 106.1786 76.2645 14.0895 440.6594 797.1561 797.1561 772.8297 104.37 141.4471 175.8051 213.0256 340.1199 967.6833 287.2842 433.2049 284.407 123.3837 388.9097 210.0646 277.7351 977.7633;
	3.6499 49.3179 94.9884 121.0203 15.1103 34.1243 29.5954 18.9674 27.7519 21.7117 40.1338 59.8717 90.1366 65.4563 196.7492 74.1241 91.9688 97.4595 52.9491 66.3143 9.8651 79.6233 36.5769 89.2848 104.5827 75.9169 13.801 344.2452 793.483 793.483 743.3949 111.142 176.4971 170.6931 205.2142 338.5528 789.5947 265.6237 423.2049 280.1324 119.9204 378.5518 198.93 274.2751 797.8196;
	2.2691 30.6599 92.7441 116.7989 14.5086 22.9252 26.4041 18.6808 27.6892 28.2343 52.1907 77.8583 117.2153 64.4726 192.2092 72.4137 89.8466 95.2106 91.466 63.0686 8.8014 53.4922 57.8787 85.1465 100.2261 73.5727 13.8698 303.3159 718.7782 718.7782 648.1571 104.258 304.8866 162.3388 202.1304 306.6787 659.0937 232.5448 414.075 268.4629 118.1212 254.3172 175.5678 271.912 665.9593;
	2.4396 32.964 92.2696 117.1023 15.2066 13.6107 25.7307 18.6517 27.1311 30.9896 57.2837 85.456 128.6536 63.7248 193.0266 72.7217 90.2287 95.6155 89.3849 68.1336 8.5769 31.7583 72.0558 87.0985 101.8346 74.0384 13.85 310.4228 646.8713 646.8713 627.8304 104.8896 297.9498 175.376 199.786 275.9984 497.3276 216.5088 417.1188 272.7713 119.5915 150.9882 141.2226 266.849 502.5081;
	2.3485 31.7339 88.4301 113.4321 13.5201 6.1928 21.4462 18.1828 27.0997 29.9496 55.3613 82.5882 124.3361 65.1159 202.3577 76.2371 94.5905 100.2376 91.0235 71.7158 7.1487 14.4499 71.6257 84.7672 97.8054 72.3809 13.6599 485.297 516.4588 516.4588 458.0916 96.5277 303.4117 184.5967 204.1471 220.3558 445.8251 205.8689 423.2982 261.9788 117.5894 68.6988 117.3927 245.8508 450.4691;
	3.5007 47.302 89.8526 90.3014 15.1893 27.1617 16.5868 18.6171 24.9198 30.7836 56.9031 84.8882 127.7988 57.2449 200.9483 75.7061 93.9316 99.5395 88.6831 71.1733 5.5289 63.3772 74.9848 88.1209 99.6102 74.1269 13.6369 513.4754 532.3137 532.3137 416.5131 53.5213 295.6104 183.2004 179.4706 227.1205 491.7468 173.0384 445.626 266.8129 120.2292 301.3134 81.8858 263.48 496.8691;
	3.3937 45.8559 94.5027 69.7675 14.736 32.6181 14.4649 18.789 27.5728 29.7394 54.9728 82.0086 123.4634 62.3819 197.7199 74.4898 92.4226 97.9403 86.9757 73.0749 4.8216 76.109 74.8917 88.1013 104.7566 74.6654 13.6441 601.1122 595.1641 595.1641 462.2491 33.3099 289.9191 188.095 195.5758 253.9367 587.9586 128.4586 179.9069 280.5979 120.7281 361.8438 111.8173 267.5443 594.0832;
	3.704 50.0488 91.2441 65.5442 14.6495 32.2563 28.364 18.7577 27.2237 14.4883 26.7815 39.9527 60.1486 62.8115 173.0879 65.2098 80.9085 85.7389 74.784 70.7764 9.4547 75.2648 55.6642 87.5457 103.2902 73.2928 13.455 743.1165 633.8457 633.8457 427.2783 32.8492 249.2799 182.1787 196.9224 270.4408 795.1811 84.3334 413.4977 276.6701 120.8557 357.8303 118.2742 259.0955 803.4642;
	3.7986 51.3271 91.841 56.919 14.4838 32.2299 27.2031 18.9915 26.3738 24.3375 44.9874 67.1124 101.0374 62.3497 172.9969 65.1756 80.866 85.6938 50.9493 70.8059 9.0677 75.2032 59.3471 86.2388 104.7331 73.968 13.6495 912.4642 635.5024 635.5024 451.1036 43.8399 169.8311 182.2545 195.4746 271.1477 940.8377 94.043 452.4581 280.5351 117.3574 357.5373 145.235 241.5803 950.6381;
	3.7809 51.088 68.0562 41.9866 14.558 32.8211 2.5353 19.0707 27.2133 29.0043 53.6141 79.9817 120.412 67.1988 188.855 71.15 88.2787 93.5491 47.8883 73.2153 0.8451 76.5827 73.331 82.5018 105.6489 73.1076 13.462 1108.2274 556.5417 556.5417 536.7096 62.4385 159.6278 188.4565 210.6772 237.4578 1075.6667 133.3327 453.092 282.9882 121.3582 364.0959 157.387 234.5628 1086.8716;
	3.6706 49.5976 64.8732 64.5643 14.0645 32.5194 29.4536 19.0487 8.7285 27.9482 51.6618 77.0692 116.0273 65.6112 190.7654 71.8698 89.1717 94.4954 63.1621 73.1473 9.8179 75.8787 72.241 88.843 105.8175 75.6007 13.6465 1157.5746 627.0646 627.0646 399.991 70.8231 210.5404 188.2813 205.7 267.5476 1020.4444 179.7472 436.6904 283.4397 122.0404 360.749 137.3307 262.0011 1031.074;
	3.7079 50.1021 49.2124 84.3901 14.1394 33.1512 5.4878 18.8586 28.0594 30.293 55.9961 83.5351 125.7617 64.7121 192.7235 72.6075 90.087 95.4654 57.002 71.8 1.8293 77.3528 70.1566 87.2917 105.1171 75.9956 13.7071 1197.0683 675.1108 675.1108 514.9558 82.4464 190.0068 184.8134 202.8811 288.0473 1113.0991 213.7068 460.2481 281.5636 122.2579 367.7575 144.9997 250.034 1124.6939;
	3.7896 51.206 64.0514 95.67 14.5535 33.5643 30.3526 18.9647 27.7507 29.765 55.0202 82.0793 123.57 67.1896 189.2115 71.2843 88.4454 93.7257 51.8188 71.0627 10.1175 78.3167 63.1985 88.0065 105.863 76.1359 13.8092 1222.1914 724.6702 724.6702 575.6948 106.1659 172.7292 182.9155 210.6486 309.1926 1152.5639 239.4178 463.2985 283.5616 123.3901 372.3399 148.8881 263.122 1164.5698;
	3.8359 51.8316 92.8957 105.0042 14.569 34.4875 29.5681 19.1847 26.4471 29.6359 54.7815 81.7233 123.034 68.6537 193.3585 72.8467 90.3838 95.7799 44.7048 73.1951 9.856 80.4707 67.1683 89.3908 106.4849 76.4556 14.1201 1208.9529 747.9128 747.9128 653.9202 114.6348 149.0159 188.4043 215.2386 319.1094 1181.3178 240.2921 460.058 285.2274 123.7087 382.5808 167.4445 279.1688 1193.6232;
];