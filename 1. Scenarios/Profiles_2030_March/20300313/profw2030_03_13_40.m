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
	0.8172 11.0417 60.5633 69.5091 8.207 11.4404 0.0 8.5844 0.0041 17.7676 32.8432 48.9956 73.7626 0.0 157.5685 59.363 73.6541 78.0514 72.5565 71.0227 0.0 26.6943 69.0843 80.23 49.8747 45.433 4.046 137.6431 312.6328 312.6328 194.7477 42.869 241.8551 182.8125 0.0 133.39 335.0773 72.1526 0.0 133.5928 54.17 126.9123 12.5768 71.9384 338.5677;
	0.6762 9.1363 55.8313 67.5619 6.8963 14.2395 0.0 11.8567 1.968 11.4994 21.2565 31.7105 47.74 0.0011 121.4993 45.7742 56.7939 60.1845 69.8934 68.069 0.0 33.2255 34.2677 79.8254 53.7441 51.0997 6.025 61.9188 205.2867 205.2867 135.3477 28.1774 232.9779 175.2098 0.0033 87.589 274.791 82.9551 0.0 143.9574 74.5927 157.9635 16.1774 92.4486 277.6534;
	0.4166 5.6296 64.5602 75.3703 6.4804 12.8447 0.0 12.9255 0.928 10.3106 19.059 28.4323 42.8046 0.0 88.5239 33.3509 41.3798 43.8502 61.9935 68.0693 0.0 29.9711 28.8854 86.1716 61.3382 58.1033 6.6434 0.0 5.4723 5.4723 0.1307 16.1653 206.6451 175.2107 0.0 2.3348 136.6958 0.7698 0.0015 164.2988 70.7287 142.491 4.4984 103.8505 138.1198;
	0.4293 5.8001 67.5888 81.0316 8.5063 5.152 0.0 13.8745 0.0076 15.3827 28.4347 42.4189 63.8615 0.0 98.893 37.2574 46.2267 48.9865 46.8994 69.6909 0.0 12.0213 51.9116 87.6856 66.6868 68.9286 7.377 0.0 10.9521 10.9521 13.636 18.324 156.3314 179.3845 0.0 4.6729 0.006 2.4602 0.0 178.6254 62.5601 57.1526 2.1207 144.6518 0.006;
	0.4615 6.2354 76.1275 77.5643 9.7006 2.9725 0.0 14.0095 0.0 15.0783 27.872 41.5796 62.5979 0.0 124.6019 46.943 58.2442 61.7214 54.6014 68.4237 0.0 6.9357 45.2086 83.5886 77.877 69.3906 7.8576 0.0 6.9467 6.9467 9.1825 8.9155 182.0048 176.1228 0.0 2.9639 1.2113 5.1275 0.0 208.5991 59.7963 32.9745 0.0998 145.4776 1.224;
	0.4663 6.3009 72.9347 63.3904 10.6319 3.9709 0.0 13.6798 1.7049 8.7495 16.1733 24.1273 36.3236 0.0 143.9351 54.2267 67.2813 71.2981 80.631 70.2545 0.0 9.2655 35.6321 82.5614 59.4577 70.0302 8.1095 4.2896 9.9263 9.9263 1.3372 8.841 268.7701 180.8352 0.0 4.2352 0.9798 0.2562 0.0 159.2617 37.1938 44.0509 22.5439 137.2319 0.99;
	0.5098 6.8885 55.475 41.4879 10.0352 2.5151 3.1247 9.0327 2.4704 6.9481 12.8434 19.1598 28.845 0.0 113.2175 42.654 52.9226 56.0821 61.2798 69.7146 1.0416 5.8686 23.3241 61.6431 37.9718 64.5279 4.242 18.4308 2.303 2.303 10.2971 0.9554 204.2661 179.4455 0.0 0.9826 0.0032 0.1365 0.0 101.7101 21.8278 27.9011 31.5447 133.0055 0.0032;
	0.568 7.6743 33.4177 29.55 4.7524 2.9031 3.8221 7.998 2.6619 4.3262 7.9969 11.9298 17.9602 0.0 54.9156 20.6891 25.6699 27.2024 17.9242 47.5846 1.274 6.774 11.6989 40.2386 33.7386 62.8273 4.3811 0.0 0.5657 0.5657 5.8303 0.0 59.7473 122.483 0.0 0.2414 0.0 0.0 0.0 90.3712 4.003 32.2053 5.013 102.2321 0.0;
	0.6759 9.1332 27.1016 27.7909 4.2916 1.3012 0.0 6.3339 0.1812 0.0326 0.0603 0.09 0.1354 0.0 10.1768 3.8341 4.7571 5.0411 7.6439 16.7614 0.0 3.0361 4.4838 37.5366 28.9832 55.0363 4.3023 0.0 0.8908 0.8908 21.577 0.8784 25.4795 43.1439 0.0 0.3801 0.0313 1.1948 0.0 77.6335 0.4776 14.4345 18.9409 70.0471 0.0316;
	0.6521 8.8111 31.4702 28.6321 8.5692 5.3388 0.0 5.149 1.1422 0.0 0.0 0.0 0.0 0.0 0.5462 0.2058 0.2553 0.2706 9.526 8.031 0.0 12.4572 8.911 39.8091 32.0313 51.3077 3.2117 0.0 28.9048 28.9048 14.4714 0.4154 31.7534 20.6718 0.0 12.3327 7.569 0.1302 0.0 85.7981 0.8269 59.2249 51.3296 91.1281 7.6479;
	0.9125 12.3295 43.1652 17.6832 12.2485 6.8565 0.2209 4.6254 2.8745 0.0001 0.0001 0.0002 0.0003 0.0 2.8273 1.0652 1.3216 1.4005 0.5841 9.4184 0.0736 15.9985 28.2041 46.1848 50.1617 56.0281 1.6062 0.0 66.8246 66.8246 34.0649 0.7606 1.9471 24.243 0.0 28.5118 48.7319 1.5864 0.0 134.3618 15.8114 76.0613 19.3365 99.3735 49.2395;
	1.6852 22.7714 64.0449 79.2878 14.3181 9.4243 0.8508 16.636 5.0241 0.7926 1.4651 2.1856 3.2904 0.3799 72.6887 27.385 33.9777 36.0062 0.6797 11.2365 0.2836 21.99 50.7182 60.852 52.2851 53.9951 8.5613 109.6485 110.4688 110.4688 54.0775 2.9632 2.2656 28.9227 1.191 47.1334 123.1925 6.3757 1.9282 140.0494 14.5849 104.5466 19.5695 128.4937 124.4757;
	2.3425 31.6522 80.7897 46.0206 14.898 3.4602 0.2562 13.4078 0.3371 24.6438 45.5537 67.9571 102.3091 0.1316 16.0929 6.0629 7.5225 7.9716 0.5813 10.3545 0.0854 8.0739 34.0979 71.0484 72.5138 57.4053 2.1731 181.276 178.4075 178.4075 82.4128 3.4671 1.9375 26.6525 0.4125 76.1206 174.5669 7.0972 0.0 194.2335 4.6226 38.3855 108.0757 176.9371 176.3853;
	1.8461 24.9445 2.2941 35.3373 14.5424 20.2338 0.5429 7.9481 0.9158 8.1751 15.1116 22.5435 33.9391 5.354 4.7783 1.8002 2.2336 2.3669 0.0019 8.6938 0.181 47.2122 47.6679 43.1851 9.4509 33.5289 2.637 171.2917 220.7141 220.7141 19.7509 4.6863 0.0063 22.378 16.7855 94.1714 192.101 11.6054 5.0588 25.315 2.2043 224.4604 83.5365 135.9442 194.1021;
	2.1627 29.2235 6.1172 33.3801 9.9701 3.5434 0.0 1.83 0.487 8.5117 15.7337 23.4716 35.3364 8.3327 0.4165 0.1569 0.1947 0.2063 0.0 1.5081 0.0 8.268 31.5678 35.4297 21.2299 7.9231 1.2809 229.5637 237.4435 237.4435 80.4572 7.2383 0.0 3.8819 26.1242 101.3092 208.4741 11.7361 0.8208 56.8659 6.7064 39.3082 80.1985 115.1671 210.6457;
	3.1611 42.7136 84.6705 50.3767 14.1965 5.7644 0.0 3.0556 0.555 11.6497 21.5344 32.125 48.3641 14.6521 3.8133 1.4366 1.7825 1.8889 0.1421 19.4757 0.0 13.4502 45.9434 31.1596 27.9543 2.6036 2.7156 384.7771 267.7835 267.7835 163.2269 12.2193 0.4735 50.1304 45.9362 114.2543 285.4972 39.6168 2.5376 74.8776 0.1457 63.9461 13.2464 196.1498 288.4711;
	3.5061 47.3757 22.0537 69.8395 14.8346 15.7718 0.0 2.8983 2.1559 10.3408 19.1148 28.5155 42.93 7.4555 30.977 11.6704 14.4799 15.3444 4.9164 7.6467 0.0 36.8009 0.3613 31.9503 15.754 7.156 3.0132 364.7906 371.515 371.515 179.8889 24.5023 16.388 19.6828 23.374 158.5131 424.8288 69.3538 1.4195 42.1982 2.428 174.9618 140.4269 242.4838 429.2541;
	2.8264 38.1903 37.9521 71.1109 14.9571 22.0075 1.5126 9.1089 0.4441 11.144 20.5996 30.7305 46.2647 18.2233 27.0316 10.184 12.6357 13.3901 15.6006 43.0471 0.5042 51.3508 14.6571 83.3447 60.4205 11.9266 5.5335 548.2609 456.666 456.666 306.3603 32.0275 52.002 110.8034 57.1326 194.8442 481.9612 78.2002 10.3668 161.8406 13.4192 244.1363 116.2235 250.8084 486.9816;
	2.9906 40.409 84.7048 26.1021 15.2892 28.1896 0.0286 4.1806 0.0 8.9738 16.5879 24.7459 37.2548 7.0046 12.0136 4.5261 5.6157 5.9509 7.3488 41.8102 0.0095 65.7757 21.4758 79.1254 60.3125 63.2263 4.5621 712.3733 409.2052 409.2052 338.428 41.877 24.496 107.6196 21.9605 174.5942 503.5149 61.2501 0.2047 161.5514 12.6296 312.7166 111.8193 218.9583 508.7598;
	3.2019 43.2653 12.2081 91.7004 15.3267 28.5987 18.9058 2.3872 25.9987 23.4723 43.3883 64.7267 97.4458 28.774 60.3671 22.743 28.2181 29.9028 57.6028 22.8457 6.3019 66.7303 55.4577 71.2411 38.1264 53.273 1.1601 752.6935 444.3489 444.3489 347.6878 45.3252 192.0094 58.8049 90.2104 189.5889 544.3502 74.518 42.143 102.1243 22.2697 317.255 122.2149 185.3906 550.0205;
	3.2739 44.2369 86.0237 70.4299 15.299 21.2965 3.5041 2.5737 26.1326 24.7113 45.6785 68.1433 102.5894 9.8135 25.5419 9.6227 11.9393 12.6521 72.865 31.4422 1.168 49.6917 67.0879 84.6438 18.2762 61.3917 1.7298 613.3886 373.4489 373.4489 245.7577 55.3441 242.8834 80.9324 30.7665 159.3382 481.228 72.8908 19.4024 48.9542 11.7574 236.2486 113.4115 179.4911 486.2408;
	3.6306 49.057 86.8523 20.103 15.1453 25.8475 13.0488 13.3006 26.4913 26.6614 49.2832 73.5209 110.6853 12.9843 1.566 0.59 0.732 0.7757 33.3917 52.0076 4.3496 60.3108 45.892 80.8512 95.9598 68.4635 5.8971 646.8971 316.1564 316.1564 216.6469 62.1578 111.3057 133.8678 40.7075 134.8934 424.9946 102.634 151.6781 257.0353 14.3329 286.7349 49.3235 196.4849 429.4216;
	3.6122 48.8085 87.2981 110.6784 14.9248 26.2605 14.4186 15.0037 26.02 26.1215 48.2852 72.0321 108.4439 7.8883 53.6576 20.2152 25.0818 26.5793 9.502 63.9395 4.8062 61.2745 42.7439 82.9147 90.1355 67.2522 7.4407 695.4995 337.2896 337.2896 288.6126 51.2727 31.6732 164.5804 24.731 143.9102 399.9742 105.1389 180.0316 241.4343 8.8942 291.3167 140.8463 207.8042 404.1406;
	3.4377 46.4515 85.862 106.0535 14.6011 15.8842 13.4435 16.2693 26.5126 26.3948 48.7903 72.7856 109.5783 9.9393 45.1772 17.0202 21.1177 22.3785 15.879 51.573 4.4812 37.0632 41.3524 83.7697 97.3627 64.7199 7.4135 673.4842 362.8433 362.8433 250.0204 50.6846 52.9301 132.7491 31.161 154.8131 378.7037 75.6311 342.5129 260.7929 10.4312 176.209 136.1024 215.3007 382.6485;
];