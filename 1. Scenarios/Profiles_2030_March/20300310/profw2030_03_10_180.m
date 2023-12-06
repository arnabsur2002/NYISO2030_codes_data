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
	3.8697 52.288 82.4801 112.3851 14.6737 34.9812 29.8192 7.414 26.186 11.945 22.0802 32.9392 49.5899 39.4244 166.7939 62.8386 77.9665 82.6212 81.5345 69.396 9.9397 81.6228 21.5749 38.3526 49.3887 28.5218 5.0521 1250.2987 778.6512 778.6512 663.1537 82.3579 271.7818 178.6254 123.6008 332.2245 1212.0781 198.891 434.0825 132.2913 115.9042 388.0579 198.8524 117.3273 1224.7039;
	3.1907 43.1135 73.7231 42.0639 14.7426 26.8909 28.1114 7.3339 1.6556 11.0898 20.4993 30.5809 46.0393 36.0339 175.1743 65.9959 81.8838 86.7724 84.4769 71.3804 9.3705 62.7455 1.0642 36.5827 41.8929 28.8105 5.382 1246.3939 773.4666 773.4666 711.8096 72.6429 281.5896 183.7334 112.9713 330.0124 1230.3973 182.7351 435.3054 112.213 118.734 298.3101 194.9784 104.5285 1243.2139;
	3.1676 42.8013 87.3405 44.7432 14.5592 23.0821 30.1341 6.8793 1.2475 7.9462 14.6885 21.9124 32.9889 39.1614 183.2257 69.0292 85.6474 90.7606 85.3975 65.3678 10.0447 53.8583 3.0069 38.7889 41.0666 30.5595 6.0999 1282.4094 802.4286 802.4286 728.057 89.251 284.6584 168.257 122.7764 342.3695 1257.3283 198.06 437.01 109.9997 39.0664 256.0577 203.4849 142.0345 1270.4255;
	3.4615 46.7728 85.4562 45.8983 14.0865 11.4985 29.135 7.1448 0.3152 0.9969 1.8427 2.749 4.1386 23.7881 184.8891 69.6559 86.4249 91.5846 78.3372 66.5252 9.7117 26.8299 0.8253 39.1117 39.3355 27.8011 5.604 1292.9859 804.0726 804.0726 745.0376 99.5052 261.1239 171.2361 74.5791 343.071 1248.69 226.4333 385.0832 105.3628 40.141 127.557 188.1741 123.2965 1261.6972;
	3.6398 49.1811 82.8323 39.6984 14.2899 18.7703 29.399 7.1614 7.8306 0.1005 0.1858 0.2772 0.4174 30.6573 154.2509 58.1131 72.1033 76.408 84.2835 64.0116 9.7997 43.7973 0.0 28.5521 40.3153 60.7172 5.4715 1233.4406 779.6356 779.6356 720.8776 103.2457 280.945 164.7661 96.1148 332.6445 1226.9856 229.4049 438.6299 107.9875 40.0112 208.2248 185.3075 210.1684 1239.7667;
	3.6981 49.9692 93.0942 110.8931 14.5525 32.1405 30.0412 7.3248 10.3575 9.3803 17.3394 25.867 38.9426 27.0861 165.647 62.4065 77.4303 82.053 87.6919 65.1122 10.0137 74.9945 0.0224 30.5939 53.2768 66.8423 5.6423 1242.5239 801.1278 801.1278 763.5474 113.0875 292.3064 167.599 84.9184 341.8145 1256.4092 244.0783 447.9583 142.7057 77.7855 356.5455 200.7007 249.9419 1269.4968;
	3.6913 49.8774 91.3044 115.1723 12.2229 31.8403 30.4411 9.899 10.359 7.1845 13.2805 19.8119 29.8267 36.2166 187.8951 70.7884 87.83 93.0736 80.315 69.9318 10.147 74.2941 0.0 47.0843 99.2676 72.578 10.9155 1207.4579 816.4104 816.4104 755.0441 119.3317 267.7167 180.0045 113.544 348.3351 1288.4697 290.4493 446.0368 265.8952 115.0015 353.2154 198.206 272.6212 1301.8913;
	3.6559 49.3989 90.494 114.8872 13.1972 25.4921 29.5469 18.1408 2.1673 2.3722 4.385 6.5415 9.8482 60.9506 185.382 69.8416 86.6553 91.8288 83.3669 57.5741 9.849 59.4815 0.0 54.8915 104.9221 72.1788 13.8836 1101.2971 795.7394 795.7394 745.3527 116.7699 277.8898 148.1958 191.0884 339.5155 1259.5889 310.1664 437.584 281.0413 120.3721 282.792 181.3874 275.463 1272.7097;
	3.744 50.5893 89.9064 113.537 13.3301 29.386 29.6189 18.3827 5.8367 11.163 20.6347 30.7829 46.3435 62.6787 189.0505 71.2237 88.3701 93.646 49.4101 63.1497 9.873 68.5674 2.0706 86.2852 104.0218 70.838 13.8281 829.9168 802.3666 802.3666 763.9636 112.6196 164.7002 162.5474 196.5061 342.3431 1182.8818 308.3725 434.5486 278.6299 119.7681 325.9891 207.1433 264.6232 1195.2034;
	3.7523 50.7015 91.3696 116.9224 13.6746 32.3612 30.2055 19.0416 13.2829 10.1892 18.8346 28.0975 42.3007 57.8678 171.1795 64.4909 80.0165 84.7936 54.3427 54.4081 10.0685 75.5095 0.0 89.2857 105.4923 71.7859 14.1132 610.0501 792.6786 792.6786 776.2882 111.7067 181.1424 140.0465 181.4233 338.2095 1081.139 278.5724 438.5033 282.5687 122.0406 358.9938 200.6421 265.2899 1092.4009;
	3.6773 49.6878 91.9735 117.979 14.2058 31.8515 29.8056 19.1172 25.8535 18.0298 33.3279 49.7187 74.8512 66.7082 186.69 70.3344 87.2667 92.4767 17.5201 62.6788 9.9352 74.3203 6.8672 88.7396 105.7913 74.7716 14.1131 453.6412 763.2835 763.2835 743.8632 100.419 58.4003 161.3355 209.1392 325.6676 936.5568 257.6046 437.392 283.3696 121.5964 353.3398 192.6204 264.5999 946.3126;
	3.2116 43.3957 92.9336 116.2613 14.3078 31.2067 28.4019 18.808 26.2575 20.1693 37.2827 55.6184 83.7332 64.9625 177.1923 66.7562 82.8271 87.772 41.1643 56.675 9.4673 72.8155 5.1939 84.8709 103.071 72.8324 13.7605 323.7572 720.694 720.694 709.7507 103.6495 137.2145 145.8815 203.6663 307.4961 757.7292 237.2806 448.2394 276.0831 121.5576 346.1859 173.9482 262.5467 765.6222;
	2.093 28.2813 90.9515 115.2502 13.6127 18.1719 22.9844 18.5717 25.9205 27.02 49.9461 74.5098 112.1741 62.1147 179.557 67.6471 83.9325 88.9434 87.8477 60.039 7.6615 42.401 34.1536 85.8661 101.9103 72.2726 13.8149 335.3356 652.495 652.495 660.4407 107.7312 292.8256 154.5407 194.738 278.3979 676.8063 216.9242 432.0615 272.974 120.9973 201.5866 152.3912 264.2317 683.8564;
	2.248 30.3761 90.3721 110.8769 13.9243 10.9258 23.2046 18.0104 25.8301 29.5246 54.5758 81.4163 122.5718 63.6746 187.0019 70.4519 87.4125 92.6312 88.8518 66.2582 7.7349 25.4934 66.1852 83.4505 100.2194 72.2738 13.5085 286.7619 546.6366 546.6366 578.2662 100.7265 296.1727 170.5488 199.6285 233.2316 461.1705 196.1684 442.5038 268.4449 120.9308 121.2031 122.9537 261.5946 465.9744;
	2.2669 30.6306 88.6892 112.3666 11.9496 0.0251 21.7141 18.0916 25.8041 27.5125 50.8565 75.8679 114.2187 63.2916 194.7382 73.3665 91.0288 96.4634 89.8018 70.7436 7.238 0.0586 66.9453 83.6571 98.3523 72.3583 13.6168 447.2068 462.1857 462.1857 441.0232 89.3066 299.3394 182.0942 198.4277 197.1992 429.414 178.4523 458.3978 263.4436 118.5755 0.2786 110.9902 250.4346 433.887;
	3.3132 44.7683 87.8823 81.4873 13.7875 22.5126 14.8766 18.4446 17.6092 22.263 41.1528 61.3918 92.4251 58.839 191.2784 72.063 89.4115 94.7495 86.6112 69.3538 4.9589 52.5294 59.4055 85.3058 99.3559 73.4989 13.6346 488.2874 493.1796 493.1796 408.6995 48.0804 288.7041 178.5169 184.4681 210.4233 470.1121 151.3437 454.6092 266.1318 117.964 249.7396 71.1373 261.1658 475.0091;
	3.1062 41.9715 88.7547 61.8186 14.2226 31.0493 12.5304 18.5093 25.8192 24.9698 46.1564 68.8562 103.6627 60.9936 191.8617 72.2828 89.6842 95.0385 86.6413 70.6256 4.1768 72.4484 68.9722 86.0192 103.7005 75.1015 13.8162 601.4483 567.7348 567.7348 453.5915 32.4327 288.8044 181.7904 191.2233 242.2335 597.7819 122.6027 179.9441 277.7692 116.4018 344.4405 99.7793 265.9673 604.0088;
	3.5671 48.199 92.0955 62.716 14.6587 30.8328 26.5587 18.7809 25.2721 2.384 4.4067 6.574 9.8971 62.9924 173.8647 65.5025 81.2716 86.1237 70.343 69.238 8.8529 71.9433 39.8536 88.4853 105.5111 73.8656 13.8307 733.3451 599.5782 599.5782 400.3598 30.5014 234.4767 178.2187 197.4898 255.82 794.0688 81.8984 397.8769 282.619 118.7413 342.0388 109.6466 260.8602 802.3404;
	3.7622 50.8351 94.0785 55.6821 15.0889 32.7237 27.842 18.7791 26.5943 20.3019 37.5277 55.984 84.2836 64.6805 160.9833 60.6495 75.2504 79.7429 52.6577 67.5329 9.2807 76.3553 49.7682 86.0795 105.3681 75.5056 13.8308 1109.1369 675.9822 675.9822 465.9431 43.9198 175.5255 173.8299 202.782 288.4191 1056.7383 94.762 451.3655 282.2361 118.876 363.0149 146.5269 256.3233 1067.746;
	3.7819 51.1018 70.4531 41.6423 15.0463 32.7153 0.594 18.6534 26.1957 27.1633 50.2109 74.9048 112.7687 65.1778 179.82 67.7461 84.0554 89.0736 42.1541 68.7197 0.198 76.3358 67.2134 81.2759 104.901 73.6449 13.6584 1211.3151 613.0256 613.0256 577.2723 62.8055 140.5138 176.8847 204.3412 261.5576 1166.9837 139.2644 429.3551 280.9848 120.029 362.9223 154.7146 239.0333 1179.1398;
	3.8224 51.649 66.9343 63.5 15.3701 32.0589 28.7358 18.2142 5.1617 27.1283 50.1463 74.8084 112.6236 63.7799 185.5355 69.8994 86.727 91.9048 61.4683 70.2451 9.5786 74.804 68.8985 89.4011 104.1576 74.3481 13.4339 1214.5321 697.2692 697.2692 442.9281 70.8223 204.8943 180.8112 199.9588 297.5015 1153.8285 196.7161 412.2986 278.9936 118.0798 355.6395 138.3118 257.3091 1165.8475;
	3.924 53.0222 52.4491 87.2462 15.3501 33.917 6.6672 17.7776 27.8029 29.7923 55.0706 82.1545 123.6831 66.3905 190.4214 71.7402 89.0109 94.325 56.1831 71.0315 2.2224 79.1396 71.8676 89.0039 105.1795 74.4211 13.68 1278.4651 737.282 737.282 572.8481 91.738 187.2771 182.8352 208.1433 314.5737 1260.1419 227.3333 462.1887 281.7308 121.0424 376.2523 153.856 252.5327 1273.2684;
	3.9082 52.8088 62.752 97.3788 15.2596 33.4217 30.0617 17.5817 27.0885 28.3913 52.4808 78.2911 117.8668 64.0401 184.7895 69.6184 86.3784 91.5353 47.4014 69.8636 10.0206 77.9839 65.521 89.3694 105.7048 73.9542 13.4721 1239.2097 736.2974 736.2974 596.0726 109.4489 158.0048 179.8291 200.7743 314.1536 1211.3277 247.2487 451.9052 283.1378 121.1908 370.758 152.151 261.262 1223.9457;
	3.9066 52.7871 91.4464 107.7869 15.3131 33.8906 29.8574 18.478 26.6371 28.931 53.4784 79.7793 120.1073 63.4827 187.8168 70.7589 87.7934 93.0348 40.1533 72.3702 9.9525 79.078 67.2883 89.2812 105.4074 74.6885 13.8092 1199.7414 696.6607 696.6607 610.7378 113.0457 133.8445 186.281 199.0269 297.2419 1185.555 229.1795 446.8229 282.3412 122.5451 375.9596 164.8549 281.4453 1197.9046;
];