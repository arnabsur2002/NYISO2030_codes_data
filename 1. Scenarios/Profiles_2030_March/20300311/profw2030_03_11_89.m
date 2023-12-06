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
	3.7562 50.7539 90.0444 109.3723 15.2356 33.3793 28.0665 17.7554 27.3618 30.1245 55.6847 83.0707 125.0625 65.753 192.1963 72.4088 89.8406 95.2042 35.5275 70.0649 9.3555 77.8851 74.5228 88.8303 101.1683 73.3158 13.4581 1130.4801 692.486 692.486 617.6816 104.855 118.425 180.3471 206.1446 295.4607 1106.3864 229.6717 436.0266 270.9865 120.0438 370.2882 143.39 268.6636 1117.9113;
	3.7273 50.3641 91.89 114.4103 15.01 33.7948 28.9415 17.7593 27.5724 28.3672 52.4363 78.2246 117.7667 67.1252 189.987 71.5765 88.8079 94.1099 30.8499 70.5998 9.6472 78.8546 69.2771 88.1225 99.2503 71.9419 13.0872 1128.0956 703.5033 703.5033 597.3336 99.9262 102.8329 181.7239 210.4464 300.1614 1128.1647 230.904 427.9195 265.8489 122.0118 374.8974 134.868 266.8703 1139.9164;
	3.6421 49.2131 91.3385 62.5886 14.6807 33.2974 28.5008 15.8022 27.1527 26.8231 49.5821 73.9667 111.3565 68.3379 193.8434 73.0294 90.6105 96.0201 33.6015 69.2006 9.5003 77.694 69.5439 88.737 100.5791 71.1299 12.5933 1130.1646 708.5305 708.5305 582.3135 101.0617 112.005 178.1226 214.2484 302.3064 1167.8514 229.7999 430.1709 269.4083 118.6975 369.3793 124.7149 261.0504 1180.0165;
	3.6377 49.1535 87.3132 74.9277 14.6049 33.137 27.8595 15.8268 27.1729 26.8549 49.641 74.0546 111.4887 66.077 200.8134 75.6553 93.8686 99.4727 43.5642 71.6419 9.2865 77.3196 65.3628 87.5258 98.6711 71.3748 12.9513 1164.245 722.1648 722.1648 556.9069 87.8309 145.2138 184.4063 207.1602 308.1236 1087.9046 229.2478 436.487 264.2976 120.363 367.5993 157.5939 255.2029 1099.2369;
	3.3037 44.6405 87.4349 112.0515 14.3808 32.7272 23.1701 17.7359 27.0443 29.3925 54.3316 81.0521 122.0235 67.7116 194.975 73.4557 91.1395 96.5806 80.9475 70.3532 7.7234 76.3635 60.9622 87.259 101.8709 73.0455 13.1353 1117.0254 682.6889 682.6889 546.3677 88.5 269.825 181.0892 212.2851 291.2806 1141.5987 229.1646 442.4864 272.8684 119.6133 363.0539 163.1105 251.5076 1153.4903;
	3.5704 48.2436 86.1629 111.6698 14.2109 32.0029 27.1272 17.9304 26.5888 29.4945 54.5202 81.3334 122.447 67.9363 198.9836 74.9659 93.0133 98.5663 89.7104 71.1284 9.0424 74.6735 70.8208 87.0854 102.8741 73.8365 13.6094 1170.4339 721.2451 721.2451 508.3995 94.8916 299.0348 183.0848 212.9895 307.7312 1057.9773 215.5647 439.3734 275.5557 119.1493 355.0192 179.7843 260.6803 1068.9979;
	3.5952 48.5792 87.7862 110.7553 14.144 31.7557 29.2865 17.9517 26.7584 29.8807 55.2341 82.3984 124.0504 65.5158 198.5258 74.7934 92.7993 98.3395 90.0337 71.0832 9.7622 74.0966 71.933 86.9282 101.2339 76.2021 13.2726 1241.8041 733.3729 733.3729 555.5561 97.7706 300.1122 182.9683 205.401 312.9058 1103.3504 237.0977 451.0758 271.1622 120.0086 352.2766 193.4205 262.2985 1114.8436;
	3.5848 48.4391 86.4705 110.835 14.5243 32.6121 28.908 17.9408 27.7843 30.0173 55.4865 82.7749 124.6172 65.8668 198.9862 74.9669 93.0145 98.5676 84.5984 71.3459 9.636 76.0949 72.7215 87.3132 105.1252 74.9822 13.2136 1193.5305 724.3457 724.3457 545.9931 84.5476 281.9947 183.6445 206.5012 309.0541 1101.3585 240.0978 455.719 281.5853 114.2181 361.777 196.5672 254.9621 1112.831;
	3.7798 51.0736 87.3132 112.2713 14.347 33.2855 29.285 17.6763 27.6474 30.6843 56.7195 84.6144 127.3865 68.1034 198.4026 74.747 92.7417 98.2785 83.9228 70.9543 9.7617 77.6662 72.0761 85.5486 101.7036 73.6228 13.4593 1251.522 785.6282 785.6282 585.9144 71.2201 279.7427 182.6366 213.5135 335.2014 1163.7848 257.2838 456.0458 272.4205 113.9587 369.2475 181.851 269.4111 1175.9075;
	3.6856 49.8004 82.2455 104.153 14.289 33.785 29.0576 17.354 27.5202 30.8025 56.938 84.9403 127.8771 67.9534 196.197 73.9161 91.7107 97.186 76.604 70.8248 9.6859 78.8316 73.357 84.2241 98.2519 71.9417 12.9558 1189.1596 773.3796 773.3796 649.4295 84.5144 255.3467 182.3033 213.043 329.9753 1160.841 268.2802 459.557 263.1748 113.6526 374.7878 164.6987 260.1194 1172.9331;
	3.6376 49.1513 86.7778 111.2693 14.7044 33.8052 26.8404 17.8522 28.3228 30.849 57.024 85.0685 128.0702 67.1761 197.6575 74.4663 92.3934 97.9094 85.1815 71.0988 8.9468 78.8789 73.2298 84.5222 98.5652 72.8745 13.2022 1195.3388 757.9626 757.9626 607.7047 86.2805 283.9384 183.0084 210.6062 323.3974 1085.4402 260.4733 460.1945 264.014 114.6836 375.0129 169.5755 261.1714 1096.7469;
	3.5324 47.731 84.8863 104.9064 14.0554 32.1339 24.428 17.3634 26.8216 29.6185 54.7494 81.6754 122.9618 66.3453 195.973 73.8317 91.606 97.075 86.7108 69.0079 8.1427 74.9791 72.0566 83.0064 97.1807 71.3617 12.8095 1083.9407 730.2558 730.2558 598.0703 84.9883 289.0362 177.6265 208.0015 311.5758 1061.8362 251.7405 453.9939 260.3055 112.8224 356.4722 171.7579 258.4694 1072.897;
	3.5604 48.1088 86.5825 111.2886 14.0552 32.2446 27.9179 17.6499 26.5501 29.8857 55.2432 82.412 124.0709 67.3729 196.706 74.1078 91.9486 97.4381 87.6786 70.4277 9.306 75.2374 71.8122 86.5182 99.036 74.217 13.1327 1119.7565 743.986 743.986 646.8604 93.3463 292.2621 181.2812 211.2233 317.434 1010.2907 265.5076 456.9233 265.275 114.2944 357.7 145.3032 250.6945 1020.8146;
	3.5875 48.4756 86.3656 110.6758 14.3353 33.3465 27.4712 17.7484 27.3416 29.7776 55.0435 82.114 123.6222 65.4482 198.6062 74.8237 92.8369 98.3794 90.426 70.2216 9.1571 77.8084 71.2583 85.9242 98.4598 71.8254 12.9363 1118.8962 709.2257 709.2257 650.9347 95.0621 301.4201 180.7505 205.1889 302.603 1010.4376 279.6886 461.3776 263.7317 116.4684 369.9235 150.3307 251.8209 1020.963;
	3.4709 46.8995 87.2833 109.9471 14.2626 32.6049 24.055 18.1405 25.9377 28.6817 53.0177 79.0919 119.0725 67.1204 194.8165 73.396 91.0654 96.5021 86.4602 69.5854 8.0183 76.0782 57.7755 88.0028 101.4562 73.8164 13.121 1088.6541 662.7735 662.7735 572.3826 93.8568 288.2008 179.1131 210.4314 282.7834 939.2608 275.8918 435.915 271.7576 119.515 361.6975 168.7603 242.8633 949.0448;
	3.6033 48.6879 89.0648 111.6538 14.0352 33.1577 24.9423 17.7605 26.016 27.3184 50.4976 75.3325 113.4127 66.4219 195.8441 73.7831 91.5457 97.0111 84.4292 70.4132 8.3141 77.3679 57.2854 86.1949 101.3241 74.6402 13.1517 1159.5349 716.7016 716.7016 561.0337 95.9247 281.4308 181.2437 208.2415 305.7927 1010.6034 257.557 440.832 271.4039 112.7435 367.8292 179.057 243.2544 1021.1305;
	3.4321 46.3758 88.0277 110.7981 13.9548 32.1711 21.873 16.1836 26.1877 30.0017 55.4577 82.7319 124.5525 66.9923 194.3981 73.2383 90.8698 96.2949 86.1731 71.3762 7.291 75.0659 70.7432 87.0172 99.5237 74.3027 12.0318 1082.6109 664.5765 664.5765 563.3337 92.9569 287.2437 183.7226 210.0298 283.5527 1045.393 248.8381 428.7868 266.5813 118.2795 356.8846 176.8662 227.7663 1056.2825;
	3.5878 48.4784 87.3517 106.7235 13.9941 30.091 22.5331 11.4643 26.2239 28.2125 52.1503 77.798 117.1245 65.0699 188.5267 71.0263 88.1253 93.3865 83.85 69.3828 7.511 70.2124 65.6602 84.8691 96.363 68.5582 9.4272 1141.282 624.1414 624.1414 573.2037 92.8694 279.5001 178.5914 204.0028 266.3003 1028.5576 245.0018 443.2045 258.1153 114.9934 333.8098 174.196 220.5308 1039.2717;
	3.2015 43.2589 86.1163 95.4008 13.9625 30.9215 22.5711 14.1973 26.4571 28.3359 52.3785 78.1384 117.637 67.6556 190.8328 71.8951 89.2032 94.5288 85.6266 70.0612 7.5237 72.1502 69.9259 82.6877 94.1796 43.9122 11.8622 1148.0816 711.6177 711.6177 585.7457 99.089 285.4221 180.3377 212.1095 303.6236 1128.6121 274.7772 436.779 252.2667 113.4935 343.0225 147.0716 214.8497 1140.3685;
	3.6737 49.6393 88.2736 98.3705 14.5468 27.2941 24.8361 13.5284 28.1054 29.9897 55.4355 82.6989 124.5027 68.2258 190.3588 71.7166 88.9817 94.294 85.2525 68.7695 8.2787 63.6863 71.2332 83.5309 97.1237 45.4972 10.7454 1226.934 755.8213 755.8213 633.1794 106.504 284.1749 177.0128 213.897 322.4837 1276.6678 286.6076 446.5326 260.1528 112.0921 302.7829 171.3933 240.2987 1289.9664;
	3.6836 49.7732 90.8828 109.9179 14.907 29.3702 29.5739 14.0092 28.3739 31.0286 57.3559 85.5638 128.8158 66.6468 201.5841 75.9456 94.2289 99.8545 89.1679 71.0758 9.858 68.5305 75.1473 83.7619 97.6861 54.8188 10.3165 1279.7683 786.8249 786.8249 666.6387 108.8602 297.2262 182.9493 208.9468 335.712 1298.378 301.0016 461.2696 261.6593 114.7867 325.8134 158.806 242.7382 1311.9027;
	3.6436 49.2324 87.3672 100.1733 14.8862 29.3638 27.5729 13.1269 28.369 31.2312 57.7304 86.1224 129.6568 65.6771 203.4195 76.6371 95.0868 100.7636 89.2183 73.1915 9.191 68.5155 75.7164 84.9949 98.124 61.2478 10.4566 1183.1633 770.4512 770.4512 690.7895 102.7058 297.3942 188.3952 205.9065 328.7259 1154.5032 290.3813 466.8032 262.8321 110.6022 325.7425 158.1211 235.1958 1166.5292;
	3.6776 49.6922 87.28 95.0538 14.8035 29.137 30.135 12.1263 28.2477 30.5153 56.4071 84.1484 126.6849 67.2423 201.8725 76.0543 94.3637 99.9973 86.5492 69.726 10.045 67.9863 75.1863 83.4007 96.8713 47.2977 9.9023 1197.3906 780.9858 780.9858 756.5121 107.9813 288.4974 179.475 210.8138 333.2206 1201.3258 300.1066 464.4466 259.4768 112.0926 323.2263 176.5928 219.2573 1213.8397;
	3.7761 51.0238 88.8721 102.9003 14.8707 32.3112 28.6355 12.9366 28.3825 29.9982 55.4513 82.7224 124.5381 68.4875 197.3109 74.3357 92.2314 97.7377 84.0592 70.0086 9.5452 75.3929 75.6102 85.9883 97.7696 54.3072 10.7824 1154.3729 755.4603 755.4603 723.4724 106.5969 280.1972 180.2024 214.7177 322.3297 1172.8041 279.8198 467.9269 261.8829 118.4318 358.4392 181.4228 222.2401 1185.0208;
];