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
	0.869 11.7427 59.256 69.2438 8.5551 11.9496 4.2608 8.4252 0.5959 19.2642 35.6096 53.1226 79.9758 3.062 136.7663 51.5259 63.9303 67.747 74.2846 67.4508 1.4203 27.8825 68.3626 71.2493 51.3994 49.7787 4.4749 184.4479 328.4356 328.4356 227.8642 43.0513 247.6152 173.6184 9.5999 140.1325 393.3712 83.371 2.087 137.6769 65.9619 132.5612 86.2468 63.1368 397.4688;
	0.613 8.2826 54.5412 63.6356 7.3445 2.4019 2.8436 10.5565 0.8269 11.5917 21.4271 31.965 48.1231 0.95 117.585 44.2994 54.9641 58.2456 72.6048 71.251 0.9479 5.6043 33.1078 63.6964 50.7349 46.9879 6.1033 79.9256 228.3779 228.3779 159.1985 27.8018 242.0159 183.4003 2.9784 97.4413 295.8192 86.021 5.8432 135.8971 80.7496 26.6446 52.9326 79.0105 298.9006;
	0.4152 5.6103 61.7189 66.7395 6.3005 2.2546 0.7745 11.3276 0.0978 8.9194 16.4874 24.596 37.0292 0.0923 67.1677 25.305 31.397 33.2714 54.0334 63.8337 0.2582 5.2607 23.796 66.2616 49.3167 55.8602 6.6207 0.0 3.9749 3.9749 10.109 15.0819 180.1114 164.308 0.2894 1.696 148.8451 0.5674 0.2156 132.0984 71.66 25.011 34.0873 80.6438 150.3956;
	0.5006 6.7644 67.7645 70.5515 8.5054 3.2932 1.4182 14.2877 0.781 14.5712 26.9347 40.1812 60.4926 0.3633 90.3217 34.0282 42.2201 44.7407 45.5408 65.9458 0.4727 7.684 47.5417 70.5749 56.4502 68.5786 7.8685 0.0 6.9767 6.9767 31.3791 17.6488 151.8026 169.7446 1.139 2.9767 6.4853 16.8736 23.1439 151.206 70.9527 36.5321 28.704 132.0442 6.5529;
	0.4989 6.7412 74.0401 67.9638 9.8749 1.5235 0.3877 14.6234 1.6968 14.5108 26.823 40.0147 60.2419 1.7576 120.9708 45.575 56.5468 59.9227 53.4842 66.4916 0.1292 3.5548 44.5531 66.2671 63.8214 67.3459 9.0862 7.7147 19.2816 19.2816 65.4762 8.9104 178.2807 171.1496 5.5104 8.2268 3.9015 25.2486 25.4187 170.9501 67.0891 16.9004 6.7707 133.5818 3.9421;
	0.4196 5.6701 66.2573 51.0744 9.9366 3.2236 0.0 12.9511 0.1326 7.7174 14.2655 21.2813 32.0388 0.3633 128.9323 48.5745 60.2684 63.8665 77.5657 62.3212 0.0 7.5217 33.192 70.2078 48.8047 62.4417 7.9653 12.0458 8.3426 8.3426 76.6711 8.851 258.5523 160.415 1.139 3.5595 1.0138 13.0013 0.0 130.7268 53.6171 35.7603 21.1312 130.3826 1.0243;
	0.4572 6.1784 54.357 36.7319 10.0564 2.4813 3.2991 8.3065 2.761 6.872 12.7029 18.9502 28.5294 0.4391 118.6795 44.7118 55.4758 58.7878 62.6997 65.7628 1.0997 5.7896 22.0886 50.0812 29.7584 59.0789 4.3444 35.2024 47.5149 47.5149 207.278 2.0504 208.9989 169.2736 1.3767 20.273 14.392 38.9219 23.704 79.71 29.3433 27.5255 30.3873 129.1762 14.5419;
	0.4797 6.482 31.4722 25.0368 4.2046 2.7775 4.0942 7.1837 2.682 4.9828 9.2106 13.7404 20.686 0.0 64.5958 24.3361 30.1948 31.9974 18.1276 46.3192 1.3647 6.4808 13.0184 30.7358 26.5656 57.2252 4.4201 10.3895 32.1745 32.1745 180.1673 0.3857 60.4255 119.2258 0.0 13.7278 13.7841 24.4753 27.383 71.1579 11.489 30.8117 0.0013 93.0108 13.9277;
	0.5097 6.8868 22.9971 22.4891 3.6061 0.9057 0.0 5.6496 1.7912 13.0313 24.0881 35.9347 54.0995 0.2667 10.9256 4.1161 5.1071 5.412 3.7781 16.1018 0.0 2.1133 7.8148 29.6867 22.8358 52.7586 4.3205 4.595 12.6492 12.6492 103.1689 0.206 12.5938 41.4461 0.836 5.397 3.5564 2.5903 0.0 61.1673 5.9118 10.0472 0.0001 58.1813 3.5935;
	0.5339 7.2141 27.5822 26.8508 7.4284 0.1244 0.0 4.7829 2.6172 19.0354 35.1867 52.4916 79.0258 0.8442 2.2457 0.846 1.0497 1.1124 5.8539 8.7431 0.0 0.2903 12.4391 34.5725 28.0377 46.626 3.358 0.0 31.9508 31.9508 33.6884 0.1359 19.5131 22.5047 2.6468 13.6323 0.136 0.0229 8.9722 75.101 11.357 1.3804 44.7565 86.739 0.1374;
	0.8488 11.4691 42.1056 63.5707 11.6327 2.5223 2.0183 4.2 12.4937 15.4107 28.4865 42.4962 63.9779 1.8925 18.8743 7.1108 8.8226 9.3494 3.3158 11.6841 0.6728 5.8855 34.2126 39.7228 50.474 51.7414 1.6695 51.2896 82.8013 82.8013 149.1432 0.8074 11.0527 30.0748 5.9333 35.3285 62.5208 0.9667 66.9087 135.1982 12.5771 27.9813 8.8447 106.0164 63.172;
	1.6173 21.8527 57.6448 19.4286 12.9859 0.7182 0.5733 4.1427 14.7973 2.8627 5.2917 7.8942 11.8846 0.4165 15.9944 6.0258 7.4765 7.9228 13.5069 9.7899 0.1911 1.6757 51.4108 47.4573 6.5393 45.2586 1.806 150.327 115.384 115.384 90.2628 1.8555 45.0229 25.1993 1.3059 49.2305 135.9621 2.6238 48.4475 17.516 4.206 7.9669 7.1098 130.5865 137.3784;
	2.2825 30.842 79.1016 3.9856 13.9403 0.0349 0.0217 2.4328 9.4191 22.8512 42.2401 63.0139 94.867 0.0023 8.473 3.1922 3.9606 4.1971 4.8579 9.4745 0.0072 0.0814 29.9627 66.0672 74.0735 52.6248 1.9197 235.1491 178.4129 178.4129 59.9478 2.536 16.1929 24.3873 0.0074 76.1229 194.6249 0.3886 54.968 198.4111 5.6837 0.3872 104.5233 173.5104 196.6523;
	1.4021 18.9459 0.0121 0.0 13.5327 17.5916 0.0286 0.0876 2.9446 0.0185 0.0342 0.051 0.0768 0.1265 1.6573 0.6244 0.7747 0.8209 7.5278 7.5751 0.0095 41.0472 40.7196 0.3144 3.7164 30.9587 1.2354 199.2753 198.6457 198.6457 11.2681 3.9714 25.0927 19.4984 0.3967 84.7555 188.459 11.846 121.9006 9.9546 0.0002 195.1499 70.0632 130.7339 190.4221;
	2.0073 27.1225 0.0092 0.0 8.8642 0.0 2.1563 0.0011 2.9501 0.0 0.0 0.0 0.0 0.0019 13.589 5.1196 6.3521 6.7313 8.9166 20.9732 0.7188 0.0 28.0267 0.0 0.0 0.0 1.6858 262.789 266.146 266.146 112.6431 7.7719 29.7219 53.985 0.006 113.5556 248.8659 80.0497 189.7764 0.0 0.0001 0.0 77.3395 102.8031 251.4582;
	2.788 37.6725 77.8216 0.0 13.1127 0.0 0.2835 0.0 0.6352 0.0 0.0 0.0 0.0 0.5361 0.8534 0.3215 0.3989 0.4227 15.1739 0.9532 0.0945 0.0 27.8421 0.0289 0.0 0.0 1.112 391.3039 295.6463 295.6463 204.6649 13.4975 50.5798 2.4536 1.6806 126.1424 315.1741 53.8995 170.638 0.0 0.0 0.0 0.0 176.8433 318.4571;
	2.5517 34.4791 0.0 0.0 13.4212 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 3.0481 0.0 0.0 0.0 0.0 0.0 0.0836 0.0 0.0 0.0 0.0 0.0 0.0 0.5596 353.1663 376.2334 376.2334 200.654 27.816 0.0 0.2152 9.5561 160.5262 432.292 89.0287 5.4256 0.0 0.0 0.0 123.8056 209.2264 436.7951;
	2.1211 28.6609 0.0 0.0 11.9671 12.2652 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.6667 0.0 0.0 0.0 0.0 0.0 1.1697 0.0 28.6189 9.8066 0.0 0.0 0.0 0.0 515.8435 444.601 444.601 319.0531 32.8058 0.0 3.0109 2.0902 189.6964 509.9354 102.8372 0.0 0.0 0.0 136.0622 89.4474 197.051 515.2472;
	2.8278 38.2096 66.1254 0.0 11.9648 21.2074 0.0 0.0 0.0 6.2912 11.6292 17.3484 26.118 7.8594 0.0 0.0 0.0 0.0 0.0 37.2694 0.0 49.4839 26.0234 0.0 0.0 30.6487 0.0 746.5855 415.838 415.838 330.6537 39.2373 0.0 95.9315 24.6402 177.4242 577.627 76.3015 0.0 0.0 0.0 235.2607 66.5152 183.4441 583.644;
	2.7539 37.2107 0.0 0.0 11.9352 0.0 16.8371 0.0 24.6662 18.5783 34.3416 51.231 77.128 7.7285 0.0 0.0 0.0 0.0 0.0105 9.4506 5.6124 0.0 53.5371 0.0 0.0 18.2431 0.0 686.1542 405.8973 405.8973 305.6574 39.9408 0.0351 24.3258 24.2298 173.1828 500.4431 75.9036 7.576 0.0 0.0011 0.0 65.4022 144.3898 505.6561;
	3.1055 41.9626 86.6054 0.4208 13.8277 0.0 0.0 0.0048 25.5096 22.7616 42.0746 62.767 94.4953 8.93 10.1436 3.8215 4.7415 5.0246 0.0207 18.9464 0.0 0.0 69.0277 82.9137 9.3576 48.9642 0.0041 627.2855 368.6907 368.6907 230.4358 53.3706 0.0691 48.768 27.9966 157.308 487.5147 76.2117 47.5981 25.065 6.676 0.0 83.7448 176.2406 492.593;
	3.4986 47.2741 88.5835 2.1594 13.9984 21.6883 8.9797 13.2488 25.6486 23.9224 44.2201 65.9677 99.314 12.317 0.0 0.0 0.0 0.0 0.0324 46.0291 2.9932 50.606 51.3541 82.6958 97.7921 60.614 4.8777 700.1945 303.5464 303.5464 194.5224 60.5298 0.1081 118.4791 38.6155 129.5131 432.3305 101.1892 2.7622 261.9432 15.0404 240.5955 0.0 196.1914 436.834;
	3.5363 47.7831 88.4493 110.277 13.9518 23.9779 11.7468 14.7754 26.1474 24.5579 45.3949 67.7202 101.9525 9.1656 22.031 8.3 10.2982 10.913 0.0 46.3862 3.9156 55.9484 60.263 85.2441 95.762 64.21 6.7482 723.8471 329.2896 329.2896 264.6009 42.9848 0.0 119.3982 28.7356 140.4969 404.8888 93.2031 25.707 256.5052 11.1422 265.9948 133.8369 193.0845 409.1064;
	2.9818 40.2902 83.7326 101.0314 13.9504 3.4272 10.3774 15.1621 26.2283 25.1975 46.5772 69.484 104.6078 12.0097 34.9505 13.1674 16.3373 17.3127 4.8639 37.7965 3.4591 7.9968 53.7181 79.8441 95.6219 66.446 4.929 682.0169 354.1705 354.1705 238.8924 47.511 16.213 97.2884 37.6521 151.1128 362.9241 74.2391 297.9841 256.13 6.9615 38.0191 120.2781 192.6321 366.7046;
];
