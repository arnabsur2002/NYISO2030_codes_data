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
	0.6051 8.1761 55.4989 64.0226 7.6475 0.0 0.0 8.3199 0.0 18.5284 34.2494 51.0934 76.9208 2.3866 130.1204 49.0221 60.8237 64.455 76.8492 69.1614 0.0 0.0 68.4737 78.1245 50.1145 47.5824 4.0938 177.1621 274.7376 274.7376 198.1456 38.4089 256.1642 178.0215 7.4822 117.2214 357.3924 79.8242 0.0 134.2353 59.5175 0.0 0.0 70.2368 361.1153;
	0.4111 5.5543 54.2754 62.6777 7.0574 0.0069 0.1853 10.7496 0.1053 11.3164 20.9181 31.2057 46.98 0.6313 107.8989 40.6503 50.4365 53.4476 70.2868 67.6475 0.0618 0.016 33.6949 77.9095 53.2529 51.4298 6.2179 64.5204 213.5502 213.5502 137.4569 20.5246 234.2892 174.1248 1.9791 91.1148 275.4674 81.2208 0.0 142.6416 68.2745 0.076 0.0 94.1387 278.3369;
	0.3005 4.0605 60.4988 69.6188 6.2686 0.0179 0.304 10.518 0.0 9.9402 18.3743 27.4109 41.2669 0.1165 79.8155 30.07 37.3091 39.5365 63.9078 66.9285 0.1013 0.0417 27.7664 83.9276 55.5882 54.9153 6.0807 36.6709 18.6812 18.6812 27.7505 11.5448 213.0259 172.2742 0.3651 7.9707 161.7463 2.9863 0.0 148.897 48.0303 0.1985 0.0036 101.5663 163.4312;
	0.2962 4.0026 67.9637 77.1881 7.952 0.0 1.924 12.7608 0.0282 15.1305 27.9684 41.7234 62.8144 3.2914 88.4599 33.3267 41.3498 43.8185 44.3109 65.2473 0.6413 0.0 49.49 85.942 64.2981 66.3553 7.363 5.8758 13.9244 13.9244 10.3745 11.4341 147.703 167.9467 10.3188 5.9411 7.7553 4.5417 5.0588 172.2271 45.3845 0.0 0.0 142.7786 7.8361;
	0.4259 5.7555 75.682 74.3767 8.8297 0.0 0.0 12.9719 0.0 15.8403 29.2806 43.681 65.7614 5.9574 109.8309 41.3782 51.3396 54.4046 53.1568 62.0068 0.0 0.0 45.6501 86.1977 79.1844 67.0586 7.9904 134.5973 31.1238 31.1238 65.1872 7.7192 177.1894 159.6055 18.6773 13.2795 16.0456 15.114 0.0 212.101 34.8991 0.0 0.0 143.0258 16.2128;
	0.335 4.5264 73.0621 62.2169 8.167 2.9776 0.0 11.5555 0.0 8.2527 15.2551 22.7575 34.2614 0.377 116.8653 44.0283 54.6277 57.8891 69.859 61.5119 0.0 6.9478 30.505 82.1777 58.3728 59.3404 7.0149 17.436 0.6669 0.6669 4.5813 4.8803 232.8633 158.3317 1.182 0.2846 0.0 0.4385 0.0 156.3557 39.7698 33.0319 12.0917 135.6485 0.0;
	0.2032 2.745 45.276 37.2399 7.2537 0.3667 2.8435 6.1334 1.3191 4.9916 9.2268 13.7646 20.7225 0.1797 95.9286 36.1405 44.841 47.5181 54.2603 66.1304 0.9478 0.8555 11.6388 55.7918 32.4732 50.1964 2.6052 43.7664 6.2289 6.2289 2.0551 0.0 180.8675 170.2198 0.5633 2.6576 5.1354 0.1198 0.0 86.9817 15.5348 4.0675 17.8262 122.862 5.1889;
	0.188 2.5398 26.1866 24.4008 2.937 0.4483 2.5115 5.9755 0.6804 3.2268 5.9647 8.8982 13.3962 0.1247 34.8828 13.1419 16.3057 17.2791 12.4822 36.3255 0.8372 1.046 7.365 33.9899 27.8891 47.2832 1.6967 7.0773 6.3194 6.3194 1.8388 0.0 41.6072 93.502 0.391 2.6963 6.3019 0.023 0.0 74.7029 2.7827 4.973 0.0 95.7791 6.3675;
	0.4878 6.5914 25.8957 23.8762 2.9434 0.0674 0.0 5.246 0.0 0.0373 0.069 0.103 0.155 0.0188 3.52 1.3261 1.6454 1.7436 0.0601 6.6481 0.0 0.1572 3.6176 36.5159 28.5122 43.1808 3.1855 2.6796 28.0597 28.0597 1.1044 0.0 0.2004 17.1121 0.0591 11.9721 7.7492 2.6092 0.0 76.3719 0.5598 0.7473 0.0 70.1576 7.8299;
	0.2152 2.9073 9.4436 15.7513 3.0358 0.0 0.0 2.845 0.0 0.0 0.0 0.0 0.0 0.0 2.5359 0.9554 1.1854 1.2561 0.0671 3.2921 0.0 0.0 5.6576 33.74 25.1364 35.6551 1.2101 24.1643 24.4145 24.4145 0.0159 0.0199 0.2235 8.474 0.0 10.4169 2.1446 0.0052 0.0 67.3296 0.0 0.0 38.2249 79.1134 2.167;
	0.4483 6.058 35.1049 0.0 10.0285 0.0335 0.0 2.3948 0.0 0.5526 1.0214 1.5238 2.294 0.0 0.0 0.0 0.0 0.0 0.0478 5.4906 0.0 0.0782 28.9698 40.2548 37.8006 36.0112 0.4875 54.2913 60.7086 60.7086 9.1864 0.0 0.1595 14.1329 0.0 25.9023 62.9766 0.1699 0.0 101.2516 0.0 0.3718 0.0 76.6315 63.6327;
	0.3385 4.574 54.0238 0.0 11.9602 0.0001 0.0 0.0 1.0641 1.5877 2.9349 4.3783 6.5915 0.6173 4.4696 1.6839 2.0893 2.214 2.5011 10.626 0.0 0.0002 49.6887 53.9445 0.0 24.6113 0.0 161.9609 105.5423 105.5423 70.532 2.6669 8.3371 27.3513 1.9353 45.0314 131.5611 4.6598 0.8255 0.0 0.0098 0.001 0.0 107.0609 132.9316;
	1.6479 22.2666 73.7349 0.0481 11.9686 0.4242 0.0 0.0 1.2112 25.6133 47.3459 70.6307 106.3341 0.3438 9.1289 3.4393 4.2672 4.522 43.6508 11.0744 0.0 0.9898 34.6149 61.8554 50.0912 25.1821 0.0 227.8036 160.1251 160.1251 24.5666 5.6722 145.5027 28.5054 1.0779 68.32 182.0393 2.9182 0.1672 134.1727 0.0874 4.706 87.0201 142.4669 183.9356;
	1.1833 15.9893 0.02 0.5533 11.6493 14.3757 0.0 0.0 1.1684 21.798 40.2933 60.1097 90.4948 0.894 23.1338 8.7155 10.8137 11.4593 51.1351 9.2006 0.0 33.5434 51.5132 0.3 0.0 18.1962 0.0 200.7886 204.3135 204.3135 113.2469 11.0198 170.4502 23.6824 2.8028 87.1737 193.6383 14.681 0.0 0.0 0.0008 159.4747 44.4021 111.0186 195.6554;
	1.2636 17.0742 0.0672 0.0353 3.1167 0.0 0.002 0.1431 0.7128 20.6695 38.2072 56.9977 85.8097 0.9473 10.0899 3.8013 4.7164 4.998 56.5883 42.4156 0.0007 0.0 32.1884 0.101 0.0 0.0017 0.0 280.6947 252.0075 252.0075 100.5693 7.2212 188.6277 109.1779 2.97 107.5232 261.3048 13.4476 0.9109 0.0 0.0 0.0 44.1312 8.1446 264.0267;
	2.4333 32.8789 80.8053 0.1232 11.6259 0.0 3.874 0.0 2.0669 9.7906 18.0979 26.9984 40.646 2.9472 0.09 0.0339 0.0421 0.0446 50.133 4.6582 1.2913 0.0 44.9109 0.0107 0.0 0.0 0.0 435.7566 296.0879 296.0879 179.4621 10.0653 167.11 11.9902 9.2398 126.3308 339.2175 34.6555 12.6501 0.0 0.0 0.0 0.0 93.7932 342.751;
	2.9489 39.8457 0.0334 6.1902 13.9141 0.0334 0.0 0.0021 0.0 2.3953 4.4276 6.6052 9.944 3.2148 0.0 0.0 0.0 0.0 19.4281 2.7342 0.0 0.078 0.2629 9.7252 1.4349 0.0233 0.0 391.2975 357.8817 357.8817 184.4495 22.0081 64.7603 7.0377 10.0787 152.6962 449.9756 65.3599 0.0 3.8435 0.1075 0.3709 125.4771 165.8443 454.6628;
	2.5601 34.5921 1.6458 7.1325 14.252 18.0271 0.0 0.0179 0.0 3.7029 6.8447 10.2109 15.3725 2.0458 3.3628 1.2669 1.5719 1.6658 17.6661 4.5115 0.0 42.0631 14.846 5.0701 1.1932 0.0066 0.0 548.2598 490.4443 490.4443 324.2629 34.6258 58.887 11.6126 6.414 209.2563 589.2236 87.6283 0.0 3.196 0.0792 199.9801 105.7446 210.1139 595.3613;
	2.7853 37.6349 82.404 9.6015 14.6093 23.7893 0.0 0.0001 0.0 7.961 14.7157 21.9529 33.05 5.5517 0.1342 0.0505 0.0627 0.0665 0.2698 41.5047 0.0 55.5083 28.1525 10.0883 0.9718 53.8941 0.0 718.6152 441.9324 441.9324 359.3699 42.9791 0.8992 106.8333 17.4054 188.5578 627.0999 66.4258 0.0 2.6031 0.0442 263.9022 99.2862 197.8845 633.6322;
	2.2126 29.8972 0.1596 2.6584 13.9776 0.0 17.3455 0.0092 25.2645 19.2948 35.6662 53.207 80.1029 6.43 0.0171 0.0064 0.008 0.0085 0.1263 17.4734 5.7818 0.0 50.55 0.0262 0.0 41.8276 0.0 716.7328 432.226 432.226 333.3237 39.0805 0.4211 44.9767 20.159 184.4164 587.4937 61.2676 0.0 0.0 0.0 0.0 76.2176 165.3253 593.6135;
	2.5734 34.7722 83.7379 0.3278 14.5157 0.0 0.4593 0.0003 26.2625 21.7667 40.2355 60.0235 90.365 8.8567 9.8237 3.701 4.592 4.8662 0.0 29.4474 0.1531 0.0 68.6201 79.8833 0.001 55.0262 0.0 638.7789 387.8026 387.8026 262.7664 56.9641 0.0 75.7977 27.7671 165.4625 591.9757 72.0868 0.0 0.0027 0.0 0.0 88.4546 156.4749 598.1421;
	3.5161 47.5108 87.0641 3.4964 15.0547 20.6572 11.3048 12.219 26.6988 25.5765 47.2777 70.5291 106.1812 12.7462 0.0 0.0 0.0 0.0 0.0912 57.3379 3.7683 48.2002 59.511 79.9039 91.3117 63.5438 1.7588 759.9742 334.3084 334.3084 240.0919 67.7516 0.3039 147.588 39.9609 142.6382 541.4795 103.734 24.0068 244.585 0.0 229.1576 0.0 177.4017 547.12;
	3.4854 47.0956 87.3011 115.4835 14.8574 23.8506 12.3564 15.0502 26.3331 26.7866 49.5147 73.8661 111.2051 6.8187 52.3388 19.7183 24.4653 25.926 0.0 68.6768 4.1188 55.6513 64.9114 85.2779 95.5447 66.1685 6.1357 717.204 359.4383 359.4383 301.7648 50.4226 0.0 176.7742 21.3776 153.3603 442.2139 95.0913 0.0 255.9234 4.0271 264.5821 128.6165 185.8168 446.8202;
	3.36 45.4008 88.1843 108.867 14.8943 14.7711 10.0533 15.7428 26.041 25.1757 46.5369 69.4238 104.5172 10.6019 45.8467 17.2725 21.4307 22.7101 0.0165 49.2274 3.3511 34.4659 53.2414 85.3364 100.1866 67.651 6.3201 710.5206 386.4596 386.4596 271.8196 50.434 0.0551 126.7114 33.2384 164.8894 436.3913 77.1329 276.5837 268.357 7.7866 163.8605 136.1503 207.2189 440.937;
];