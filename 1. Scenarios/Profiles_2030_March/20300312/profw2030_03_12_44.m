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
	3.5514 47.9872 87.7524 98.2798 14.5205 30.9769 27.3411 13.2456 26.7096 29.075 53.7446 80.1764 120.7052 67.7291 187.7753 70.7433 87.774 93.0143 83.4177 70.3611 9.1137 72.2795 72.491 81.9125 92.7581 60.5317 9.5665 1187.7001 711.6675 711.6675 593.4793 103.1915 278.0589 181.1098 212.3398 303.6448 1073.17 274.5866 451.9875 248.4593 120.3488 343.6374 187.2552 233.6965 1084.3488;
	3.6317 49.0718 85.7197 97.6045 14.3261 32.2133 27.0558 12.6563 26.5956 28.0077 51.7719 77.2335 116.2746 65.8793 194.568 73.3024 90.9492 96.379 85.302 68.8654 9.0186 75.1644 73.2916 77.9115 93.7917 57.7349 9.2064 1285.3307 746.2988 746.2988 665.6551 108.153 284.3399 177.2596 206.5406 318.4208 1222.764 287.483 463.4619 251.2278 118.2108 357.3531 197.7212 247.885 1235.5011;
	3.5954 48.5814 86.2623 86.398 14.2274 32.3552 24.9764 10.3569 26.4559 28.359 52.4212 78.2022 117.7329 63.9786 191.3252 72.0807 89.4334 94.7727 79.0798 69.3692 8.3255 75.4955 70.6388 80.5258 81.8868 52.379 9.1841 1189.7314 740.7711 740.7711 637.404 110.2843 263.5994 178.5564 200.5817 316.0623 1159.098 280.7627 463.4967 219.3395 116.1282 358.927 176.8538 255.6469 1171.172;
	3.8052 51.4171 87.2349 95.6602 14.9877 34.723 21.8822 12.368 26.1695 29.3704 54.2908 80.9911 121.9317 59.4536 196.0551 73.8626 91.6443 97.1156 84.1286 72.5298 7.2941 81.0202 71.2242 85.3064 86.1798 53.3299 9.2899 1191.5439 775.1118 775.1118 679.7552 110.5701 280.4286 186.692 186.3949 330.7144 1192.5162 274.2028 440.546 230.8387 114.0597 385.1934 190.4257 251.6344 1204.9383;
	3.7032 50.0387 83.3612 76.7964 14.9717 34.0756 18.8627 9.9577 21.6247 28.407 52.5099 78.3345 117.9321 57.651 199.2713 75.0743 93.1477 98.7088 84.9429 71.7823 6.2876 79.5097 70.5272 84.6479 72.843 48.5713 8.0908 1224.8225 770.9803 770.9803 657.793 107.7875 283.1429 184.7677 180.7436 328.9516 1167.6642 270.0634 392.2721 195.1151 112.2238 378.0118 197.1961 225.5371 1179.8274;
	3.6584 49.4331 83.3682 74.2575 14.8419 33.3079 16.9394 7.471 23.8612 28.6069 52.8794 78.8856 118.7618 58.614 196.8488 74.1616 92.0154 97.5088 86.8179 71.6039 5.6465 77.7185 71.9983 84.5189 57.3997 33.2788 6.0265 1213.0152 731.31 731.31 604.4242 95.3107 289.3931 184.3085 183.7627 312.0256 1141.4288 241.5277 346.3429 153.7491 100.3969 369.4962 191.7624 191.3677 1153.3187;
	3.4858 47.1007 69.931 56.0739 14.8199 31.1445 14.8184 5.4695 17.0849 28.382 52.4637 78.2655 117.8283 65.4468 196.928 74.1915 92.0524 97.5481 87.8059 70.4219 4.9395 72.6705 73.8301 75.4569 47.4487 15.4512 4.4625 1274.3611 697.2165 697.2165 527.9341 68.2193 292.6864 181.2661 205.1847 297.4791 1130.3756 234.3083 267.8412 127.0946 82.0428 345.4961 167.7707 128.6202 1142.1504;
	3.7269 50.3583 70.3134 66.9375 15.0373 32.3007 16.3485 5.1971 16.6231 25.053 46.3101 69.0856 104.008 66.8036 192.4346 72.4986 89.952 95.3222 85.7153 67.7684 5.4495 75.3683 60.5999 82.1259 54.8159 7.4391 3.6037 1295.2686 721.5918 721.5918 624.1521 71.5443 285.7176 174.4359 209.4382 307.8792 1142.9611 236.0155 244.2225 146.8282 80.0613 358.3224 166.4815 141.601 1154.867;
	3.3212 44.8766 60.3726 64.0002 14.8605 28.0449 15.6978 3.8968 21.6865 22.7012 41.9628 62.6003 94.2444 64.5871 178.0102 67.0643 83.2094 88.1771 85.0178 64.5615 5.2326 65.4381 55.8184 80.3526 54.1867 7.472 2.5435 1260.6289 796.5367 796.5367 742.4579 93.4898 283.3925 166.1815 202.4892 339.8557 1120.3054 270.3807 240.1754 145.143 50.2138 311.1114 163.1517 156.7753 1131.9753;
	2.9731 40.1729 54.2548 64.5923 15.1618 25.381 20.042 2.3019 23.2435 19.9136 36.81 54.9133 82.6716 67.1303 174.5189 65.749 81.5775 86.4478 86.4555 66.1821 6.6807 59.2222 51.2846 71.3565 35.0929 6.0642 1.3321 1202.142 821.6656 821.6656 775.3767 113.9697 288.185 170.3529 210.4625 350.5773 1197.5361 265.086 364.8564 93.9989 44.6773 281.5594 149.6997 136.7253 1210.0105;
	2.3405 31.6247 38.0302 45.2339 13.9483 15.6304 19.2435 1.2395 20.6477 15.3489 28.3723 42.3259 63.7214 64.8223 176.1437 66.3611 82.3369 87.2526 88.4499 67.8818 6.4145 36.471 40.3559 52.429 23.0377 4.7713 4.1506 1181.0848 797.4165 797.4165 756.9382 107.8954 294.8329 174.728 203.2266 340.231 1128.1004 263.6345 406.0962 61.7082 39.6981 173.3936 100.3841 107.095 1139.8515;
	1.6159 21.8343 29.2435 28.6787 10.4107 11.3414 20.0938 1.5238 18.2234 16.7101 30.8885 46.0795 69.3724 63.2188 174.6854 65.8117 81.6553 86.5302 88.4779 65.605 6.6979 26.4633 44.7795 39.47 19.7414 8.0326 10.1648 1069.1944 711.7436 711.7436 650.3207 102.5488 294.9262 168.8674 198.1995 303.6773 1029.1539 220.747 405.0969 52.8787 29.0739 125.8143 77.2087 84.1109 1039.8742;
	1.1299 15.267 27.3972 29.2274 9.6152 8.7303 19.6587 2.3869 16.1652 15.0319 27.7863 41.4516 62.4052 60.0447 172.618 65.0328 80.6889 85.5061 88.4074 63.3397 6.5529 20.3708 44.9313 42.0138 23.4772 10.2283 3.228 1006.244 676.8643 676.8643 626.9174 95.9007 294.6913 163.0365 188.2482 288.7954 997.917 230.7802 421.2114 62.8854 29.2197 96.8487 56.8777 53.1929 1008.312;
	0.9053 12.2332 24.3248 35.0062 8.1108 9.574 13.7395 2.7254 12.9353 17.6705 32.6637 48.7278 73.3594 60.8939 187.1717 70.5158 87.4919 92.7153 89.0396 66.153 4.5798 22.3394 52.7205 41.1425 24.3842 11.6913 4.2573 984.9116 638.5116 638.5116 619.9341 93.0101 296.7985 170.278 190.9106 272.4316 835.9347 223.4505 382.5184 65.3148 27.7204 106.2077 41.8651 60.3728 844.6423;
	0.9599 12.9709 24.226 66.4006 6.8124 11.0169 12.2178 2.092 13.3345 17.6906 32.7008 48.7832 73.4428 61.1635 180.8872 68.1482 84.5542 89.6022 83.5657 66.7568 4.0726 25.7062 58.5225 53.247 26.3623 6.912 4.2324 821.2628 609.1988 609.1988 594.0314 83.9474 278.5522 171.8321 191.756 259.9248 740.8155 211.8558 335.1039 70.6134 30.2756 122.2144 41.6536 55.8442 748.5323;
	1.0641 14.3786 18.3816 33.5957 7.5098 27.3242 6.0528 1.3605 9.5411 15.826 29.2542 43.6415 65.702 61.9461 181.7571 68.4759 84.9609 90.0332 85.3136 67.3994 2.0176 63.7564 56.6699 47.5033 24.2646 4.7885 2.6083 795.2708 498.6519 498.6519 538.0111 80.726 284.3787 173.4862 194.2093 212.7581 577.5836 201.1301 220.6539 64.9946 21.0718 303.1161 82.3878 27.9973 583.6001;
	0.6279 8.4843 9.3816 8.013 6.8537 10.8599 3.9695 0.3869 11.9631 18.2563 33.7465 50.3431 75.7912 54.3717 172.4097 64.9543 80.5915 85.4029 84.3023 61.1317 1.3232 25.3397 56.8804 40.3915 14.9287 11.9718 1.7958 749.7711 488.4664 488.4664 557.6982 78.9063 281.0075 157.3532 170.4626 208.4124 686.2931 193.409 218.7764 39.9877 29.1764 120.472 37.0596 75.4879 693.442;
	1.1085 14.9781 7.7541 0.135 2.6113 6.5687 12.0335 0.0508 7.5083 19.5466 36.1316 53.9013 81.1481 63.7411 128.3339 48.349 59.9886 63.57 84.3448 49.5645 4.0112 15.327 67.6098 36.4325 14.7043 4.6044 1.8342 680.6043 518.6687 518.6687 609.1346 84.8753 281.1494 127.5792 199.8369 221.2987 685.0993 207.3261 344.2601 39.3865 62.6501 72.8691 12.1327 50.4943 692.2357;
	0.524 7.0801 24.6649 39.036 1.4357 1.1168 3.0315 2.24 1.765 22.8482 42.2346 63.0058 94.8548 64.6245 99.5557 37.507 46.5365 49.3148 3.6135 50.6467 1.0105 2.6059 66.4976 49.7306 26.0826 9.1581 2.2424 643.5111 490.0121 490.0121 583.8494 80.8855 12.0448 130.3647 202.6066 209.0718 596.2718 184.4114 341.9966 69.8641 87.0116 12.3894 0.3723 94.2939 602.483;
	0.2598 3.5103 29.1142 51.3296 2.4457 0.3898 0.0946 2.7871 2.8381 25.1672 46.5211 69.4004 104.4819 61.642 61.9476 23.3384 28.9569 30.6857 0.0208 46.6823 0.0315 0.9094 67.7263 65.4425 35.0238 21.1254 2.5846 511.9011 333.7032 333.7032 548.2875 63.434 0.0692 120.1604 193.2559 142.38 459.8852 170.2129 37.9453 93.8138 93.3749 4.3237 0.0 50.5908 464.6757;
	0.6271 8.4732 38.885 71.4693 4.9149 0.7927 0.5057 1.2839 0.0 25.2802 46.73 69.712 104.9511 54.6415 87.1748 32.8426 40.7492 43.182 67.8322 55.4025 0.1686 1.8497 66.8388 73.0323 33.5181 11.598 0.1736 501.5925 334.2526 334.2526 511.0986 55.8906 226.1072 142.6062 171.3086 142.6144 565.2167 172.4751 18.558 89.7805 85.0328 8.7941 0.3272 48.8666 571.1044;
	0.4515 6.1009 41.2715 63.6126 0.0 0.0214 0.005 0.6562 0.241 22.1239 40.8957 61.0083 91.8477 35.6907 100.0113 37.6787 46.7495 49.5405 68.2676 56.9121 0.0017 0.05 63.4628 65.7735 33.4689 11.3926 0.5281 354.7545 328.4808 328.4808 464.6115 48.6382 227.5586 146.492 111.8952 140.1518 629.537 154.3612 5.683 89.6489 72.6744 0.2376 0.0 35.2726 636.0947;
	0.565 7.634 38.895 50.5561 6.7462 0.0294 0.0 1.9183 0.0 17.218 31.8271 47.4798 71.4806 21.6473 100.1425 37.7281 46.8108 49.6055 63.0425 61.4132 0.0 0.0687 33.7994 63.4827 25.9911 29.8761 1.3094 394.3863 387.1043 387.1043 508.0304 53.024 210.1418 158.0778 67.8671 165.1645 531.4038 135.8141 0.0587 69.6191 54.7368 0.3266 0.0 33.1202 536.9392;
	0.0348 0.4704 42.4287 57.5758 0.0323 0.1939 2.0701 4.9576 0.0 19.6695 36.3588 54.2402 81.6583 4.255 115.8523 43.6467 54.1542 57.3873 78.5293 60.8154 0.69 0.4525 53.3071 70.7724 36.8305 39.6389 2.5135 276.8943 298.1243 298.1243 370.0045 51.2494 261.7644 156.539 13.3401 127.1997 352.006 110.3836 3.9306 98.6531 56.5068 2.1514 0.0 67.6129 355.6728;
];
