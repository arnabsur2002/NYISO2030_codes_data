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
	3.8147 51.5449 83.4745 115.0922 15.1826 34.47 29.8818 6.6791 26.5337 10.6737 19.7301 29.4335 44.312 28.488 169.5816 63.8889 79.2696 84.0021 84.6719 67.474 9.9606 80.4299 25.0028 7.7566 41.3886 22.5214 4.2348 1189.5339 758.8431 758.8431 624.6521 84.1525 282.2397 173.6783 89.3137 323.7731 1198.8838 207.1247 434.6626 110.8623 109.7595 382.3866 211.8718 105.599 1211.3721;
	3.0758 41.5609 78.373 47.6184 15.0768 25.3999 30.4606 7.069 10.2702 11.9741 22.1339 33.0194 49.7105 29.5998 180.7965 68.114 84.5119 89.5573 89.5012 68.1738 10.1535 59.2665 18.4219 23.1018 35.8938 25.7645 4.853 1210.2428 795.4077 795.4077 694.8694 76.6382 298.3373 175.4795 92.7995 339.374 1238.3617 204.0945 457.7737 96.1441 111.9979 281.7697 206.1596 97.6572 1251.2613;
	3.0335 40.9897 85.651 47.5056 14.8358 22.5391 29.8092 5.42 8.7897 3.6256 6.7019 9.998 15.0519 33.4988 188.1393 70.8804 87.9442 93.1946 90.4001 58.6833 9.9364 52.5913 10.7659 1.8177 28.5454 17.5857 4.4926 1193.346 804.1366 804.1366 743.941 94.9565 301.3338 151.0509 105.0232 343.0983 1233.1005 217.2451 440.473 76.4609 31.8329 250.0339 212.3811 122.0817 1245.9453;
	3.5479 47.9403 86.7078 52.4715 15.0539 14.2819 31.0456 6.8095 10.8285 11.9372 22.0657 32.9177 49.5575 15.8298 192.8709 72.663 90.1559 95.5384 89.7802 58.2993 10.3485 33.3244 14.3527 35.0821 35.4437 28.8598 4.9013 1213.4637 798.989 798.989 738.9832 98.5028 299.2673 150.0626 49.6286 340.902 1233.415 236.3208 453.3973 94.9385 37.7629 158.4338 214.4296 116.4211 1246.263;
	3.6629 49.4941 81.3604 41.997 14.7503 20.7388 31.0132 6.2346 10.5009 9.9739 18.4366 27.5038 41.4068 27.5395 169.1227 63.716 79.055 83.7747 90.1799 55.886 10.3377 48.3906 0.0 25.4257 33.8767 55.3706 4.5561 1122.2811 811.4266 811.4266 783.8487 102.3622 300.5995 143.8507 86.34 346.2087 1243.8309 247.2086 443.7329 90.741 35.3153 230.0626 207.7613 197.269 1256.7875;
	3.8411 51.9018 94.2419 117.2955 15.0223 33.2963 31.4327 6.8787 10.0169 11.9118 22.0187 32.8476 49.4519 29.0825 189.4642 71.3795 88.5635 93.8509 92.1943 57.614 10.4776 77.6914 0.1415 27.8029 51.7542 59.4964 5.1685 1157.8628 813.8018 813.8018 789.6712 108.2537 307.3143 148.2986 91.1776 347.2221 1238.8105 243.5289 452.421 138.6273 68.3466 369.3669 216.0488 245.2474 1251.7148;
	3.9564 53.4597 94.7406 120.604 15.0971 34.9735 31.0517 10.9074 8.1249 12.2901 22.718 33.8908 51.0224 38.4255 197.7352 74.4956 92.4297 97.9479 84.7959 65.6066 10.3506 81.6048 21.5451 51.5793 99.447 72.6643 11.333 1098.6318 798.8393 798.8393 746.9759 109.7244 282.653 168.8715 120.4693 340.8381 1262.2605 271.656 439.7795 266.3759 109.0888 387.9726 214.2442 278.0912 1275.409;
	3.8935 52.6101 93.544 119.8617 14.9114 34.3638 31.0955 18.4595 9.9685 10.1756 18.8095 28.0601 42.2443 62.2211 198.7011 74.8595 92.8812 98.4264 83.9747 49.121 10.3652 80.1823 1.2035 56.9561 104.0404 71.8436 13.8054 962.8326 798.5782 798.5782 765.5371 111.3692 279.9157 126.4375 195.0716 340.7267 1240.6708 289.8708 449.6311 278.6797 120.3717 381.2095 212.953 278.332 1253.5944;
	3.8973 52.6608 92.5883 117.2378 14.8013 34.8245 30.3478 17.5867 9.5202 11.433 21.1337 31.5274 47.4643 63.8418 202.4821 76.284 94.6486 100.2993 49.6003 64.5233 10.1159 81.2572 1.5056 85.5727 102.7591 70.146 13.4138 748.9728 845.0097 845.0097 784.6874 109.8858 165.3344 166.0832 200.1527 360.5375 1239.937 310.9223 451.0449 275.2476 121.1703 386.3202 217.4955 268.351 1252.853;
	3.8345 51.8125 88.6666 112.3877 14.4254 34.3073 30.6249 17.3303 16.3326 6.9834 12.9087 19.2573 28.9917 63.6201 194.8189 73.3969 91.0665 96.5033 52.8751 57.1948 10.2083 80.0504 0.0 85.6682 97.9649 65.2435 13.1239 597.6769 843.0473 843.0473 775.8975 109.1974 176.2504 147.2194 199.4576 359.7002 1140.2212 287.817 449.9638 262.4059 122.8496 380.5823 216.2597 264.0841 1152.0985;
	3.6544 49.3791 87.9092 110.6159 13.9224 33.4768 29.8661 17.3833 20.5724 8.3793 15.489 23.1065 34.7867 67.8901 203.9276 76.8286 95.3243 101.0153 37.4271 66.5122 9.9554 78.1126 0.0048 81.5253 96.9603 66.4905 13.6521 416.1375 834.8375 834.8375 775.4667 101.8547 124.7569 171.2025 212.8448 356.1973 969.0966 284.2524 430.0065 259.7151 123.0268 371.3695 206.9866 257.0984 979.1913;
	3.3392 45.1206 90.72 112.2127 14.3548 32.7087 29.5948 17.6389 25.8974 10.6465 19.6798 29.3584 44.1989 66.2825 193.19 72.7832 90.3051 95.6965 47.4947 64.1938 9.8649 76.3202 2.6566 83.505 100.5605 71.4591 13.2418 313.9437 839.8702 839.8702 730.6269 105.2274 158.3157 165.2349 207.8046 358.3446 810.2671 256.3116 440.1454 269.3585 122.2223 362.8482 196.9708 267.4053 818.7074;
	2.1574 29.1511 93.695 114.5114 14.14 21.3336 26.3086 18.3249 24.9637 25.6506 47.4147 70.7334 106.4888 64.5408 194.9732 73.455 91.1386 96.5798 92.2641 63.5596 8.7695 49.7784 49.4026 84.8278 102.6234 71.7153 13.933 308.6292 779.0016 779.0016 698.8318 105.4331 307.5471 163.6027 202.3443 332.374 715.7306 235.8486 435.7281 274.884 120.9291 236.6607 179.5752 273.6875 723.1861;
	2.1874 29.5562 88.9135 112.0666 14.1395 12.9894 25.9629 18.0216 24.2922 29.129 53.8445 80.3254 120.9295 63.866 188.9732 71.1946 88.334 93.6077 88.838 62.4552 8.6543 30.3086 61.5431 84.1146 101.1589 72.624 13.8839 286.6607 657.555 657.555 622.2353 105.5882 296.1268 160.7598 200.2286 280.5568 517.364 207.5615 442.6322 270.9614 121.2453 144.0956 140.5764 271.6229 522.7532;
	2.3583 31.8662 94.4805 118.2382 13.1406 14.4301 22.7054 18.45 24.4958 29.1411 53.8668 80.3587 120.9796 63.2642 196.0755 73.8703 91.6539 97.1258 88.8717 69.7799 7.5685 33.6702 60.8264 87.0182 103.3902 74.011 14.0998 444.359 538.2131 538.2131 453.6683 95.9465 296.2391 179.6137 198.3419 229.6376 474.449 185.4511 451.8664 276.9379 120.7849 160.0776 128.1309 262.8724 479.3911;
	3.3793 45.6615 94.5127 93.6727 14.3691 26.4784 16.159 18.8179 15.4807 28.4576 52.6034 78.474 118.1421 56.268 190.6905 71.8416 89.1367 94.4583 86.3715 69.0438 5.3863 61.7829 63.6719 89.3552 105.0048 75.2677 14.1148 484.0223 558.9431 558.9431 440.7686 54.5955 287.9051 177.7189 176.4077 238.4824 506.1477 168.0567 434.8382 281.2629 119.1717 293.7337 85.0751 275.6255 511.42;
	3.3542 45.3228 94.4524 69.044 14.3799 32.314 13.9745 18.6866 25.8778 27.7143 51.2295 76.4243 115.0563 63.0877 186.7427 70.3542 87.2914 92.5028 83.9877 68.3639 4.6582 75.3993 68.4892 88.0399 106.1252 74.8213 14.0781 609.4042 633.1313 633.1313 480.0115 36.5918 279.9591 175.9688 197.7886 270.136 643.6676 126.1374 173.603 284.264 119.4264 358.4699 109.2613 263.7338 650.3724;
	3.7479 50.642 94.1798 64.3251 14.4649 32.9484 27.6985 18.7851 26.1072 13.1646 24.3346 36.3025 54.6532 64.7332 178.8928 67.3968 83.622 88.6143 73.5685 68.513 9.2328 76.8796 34.9826 88.6206 105.7588 74.4564 13.9775 683.0499 647.3732 647.3732 441.6355 33.6278 245.2284 176.3525 202.9473 276.2125 811.5198 86.3856 412.8018 283.2825 121.1788 365.5077 118.4227 260.0006 819.9731;
	3.7054 50.0683 94.2251 58.0258 14.5521 33.7698 27.699 18.7679 26.3823 24.7781 45.8019 68.3274 102.8665 65.7639 185.9926 70.0716 86.9407 92.1312 56.6027 69.7869 9.233 78.7961 53.1742 86.504 106.6559 74.7531 14.0255 951.7334 673.895 673.895 479.8876 46.6 188.6755 179.6317 206.1786 287.5285 1045.6919 96.627 445.7088 285.6855 120.7841 374.6193 152.1535 240.4165 1056.5845;
	3.6883 49.8374 70.4398 41.4461 14.2851 32.5471 2.562 18.9274 26.2851 29.021 53.6449 80.0277 120.4812 66.1544 190.1567 71.6404 88.8872 94.1939 44.945 68.3256 0.854 75.9433 69.6188 80.942 106.6172 73.1837 13.981 1089.8584 600.2999 600.2999 582.2931 67.3993 149.8166 175.8704 207.4029 256.1279 1129.0849 142.2527 431.8625 285.5819 122.7941 361.0563 153.992 226.5843 1140.8462;
	3.7924 51.2436 68.8292 63.7623 14.5006 33.1355 28.9698 18.7139 7.9667 29.2524 54.0726 80.6657 121.4418 65.5289 198.937 74.9484 92.9915 98.5432 63.4351 72.6647 9.6566 77.3162 70.298 88.5886 106.476 75.1231 13.8861 1178.8327 700.9683 700.9683 458.9312 74.5756 211.4504 187.039 205.4419 299.0798 1110.0424 196.3467 436.6996 285.2035 119.9045 367.5833 141.5137 263.6094 1121.6053;
	3.8896 52.557 55.8645 86.6061 15.1691 34.1601 6.9765 18.4909 28.1604 31.1455 57.5719 85.886 129.3008 66.8915 189.2891 71.3136 88.4816 93.7641 57.3393 69.6838 2.3255 79.7069 71.936 86.8161 105.9448 74.3526 13.9594 1194.6212 728.729 728.729 546.4694 90.7126 191.1311 179.3663 209.7138 310.9244 1177.267 228.6296 458.4502 283.7808 119.9008 378.9494 159.5204 252.0707 1189.5302;
	3.7847 51.1395 67.5414 95.8451 15.0675 32.8365 28.2311 18.9158 27.4791 30.427 56.2438 83.9047 126.3181 65.6678 187.5916 70.674 87.6882 92.9233 48.5593 69.0754 9.4104 76.6184 65.6122 89.4682 106.6453 75.0903 14.0053 1174.841 695.5163 695.5163 568.1936 109.1457 161.8642 177.8004 205.8776 296.7536 1119.7651 241.42 455.3112 285.657 121.865 364.2659 153.8981 269.8205 1131.4293;
	3.7339 50.453 92.2373 103.5404 15.1402 33.7102 28.5677 18.5877 27.1913 30.3887 56.1731 83.7992 126.1592 65.147 186.8103 70.3797 87.3229 92.5363 36.044 70.6547 9.5226 78.6572 65.7909 88.9548 106.3285 73.9496 13.8131 1187.6046 649.8645 649.8645 575.5011 108.8325 120.1467 181.8655 204.2446 277.2755 1158.5413 219.259 467.1266 284.8085 117.9753 373.959 165.4512 278.5568 1170.6095;
];