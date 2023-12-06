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
	0.6452 8.7181 55.1597 61.7133 6.4313 0.0 0.0797 7.5927 0.0 7.6817 14.1994 21.1827 31.8905 4.6946 136.5277 51.436 63.8187 67.6288 75.0328 67.4515 0.0266 0.0 66.0082 69.5324 48.2632 40.5947 2.9903 201.8988 308.0522 308.0522 229.1066 43.7252 250.1092 173.6203 14.7183 131.4356 390.4251 93.1246 40.5046 129.2765 51.4098 0.0 0.0 67.3257 394.4921;
	0.4518 6.1049 50.9749 62.4596 5.1844 0.0 0.0 9.9338 0.0 9.5637 17.6784 26.3728 39.704 0.8818 110.3847 41.5868 51.5984 54.6789 72.6686 67.1779 0.0 0.0 33.2172 70.7563 47.3274 41.1713 5.0519 108.8084 215.2364 215.2364 147.9204 28.4104 242.2287 172.9162 2.7646 91.8342 298.8489 95.095 2.6359 126.7699 64.5479 0.0 0.0001 81.5386 301.9619;
	0.2974 4.018 55.2243 66.5307 5.3379 0.1246 0.0 9.7617 0.0 9.0757 16.7762 25.0268 37.6778 0.2933 73.6882 27.7616 34.445 36.5014 60.5765 65.4637 0.0 0.2906 25.8398 68.3979 41.4156 39.3911 5.0787 35.7687 12.6886 12.6886 5.9645 15.83 201.9216 168.5039 0.9197 5.4138 198.3087 25.3355 1.2103 110.9347 58.4174 1.3817 6.1705 95.4626 200.3744;
	0.4097 5.536 64.9764 75.1663 7.6288 0.1666 0.0 12.4718 0.0 12.5328 23.1666 34.56 52.0299 0.7372 80.559 30.3501 37.6566 39.9048 44.3111 66.6444 0.0 0.3888 44.296 72.556 52.6057 57.6729 5.8926 10.8764 1.4939 1.4939 1.6301 17.1145 147.7037 171.5428 2.3114 0.6374 16.3196 7.3078 0.0484 140.9081 60.9028 1.8487 0.9321 133.8698 16.4896;
	0.506 6.8373 77.2649 73.5998 9.3812 3.0661 0.0 13.0013 0.0 13.9537 25.7932 38.4784 57.929 3.9786 104.84 39.4979 49.0066 51.9324 52.3278 65.1017 0.0 7.1541 43.9678 79.9817 71.9574 64.8099 6.7264 24.7554 2.0878 2.0878 8.9878 8.9546 174.4261 167.5718 12.4735 0.8908 10.8445 23.7338 0.0 192.743 62.7143 34.0128 4.1916 135.0592 10.9575;
	0.524 7.081 81.9106 66.7989 10.7057 4.9019 4.5231 13.1576 0.9001 8.8181 16.3002 24.3166 36.6086 1.4249 132.0201 49.7378 61.7117 65.396 77.2999 67.5612 1.5077 11.4378 33.1896 83.559 60.3079 66.6098 7.6802 37.9982 54.556 54.556 22.1377 10.9922 257.6664 173.9026 4.4673 23.2772 55.6837 44.2243 82.6067 161.539 54.9618 54.3786 26.557 136.466 56.2637;
	0.4272 5.7721 60.5067 45.6461 9.5936 3.1462 3.9914 7.9568 1.7429 7.2643 13.4279 20.0317 30.1577 4.4407 116.0631 43.7261 54.2527 57.4917 63.9331 67.6531 1.3305 7.341 23.2327 60.2086 38.0964 57.491 3.9608 34.1809 36.0722 36.0722 37.0203 0.4679 213.1104 174.1393 13.9223 15.3908 16.7265 28.3505 14.2517 102.044 29.2946 34.9014 31.6865 128.4738 16.9007;
	0.4343 5.8686 34.3254 29.2719 3.6224 2.7224 3.8667 6.9852 1.1539 4.3166 7.9792 11.9034 17.9205 9.6596 46.9849 17.7013 21.9627 23.2739 17.4184 43.5522 1.2889 6.3522 11.055 38.8382 35.738 52.6505 4.1311 12.8698 2.6444 2.6444 1.6214 0.0 58.0614 112.1034 30.2841 1.1283 6.2839 1.3404 0.0 95.7267 10.0848 30.1999 3.0847 1.9763 6.3494;
	0.4105 5.5462 25.0335 24.467 2.9003 2.0858 0.1695 4.1034 0.0 0.5545 1.025 1.5291 2.3021 5.3874 8.9568 3.3744 4.1868 4.4367 3.6409 14.9547 0.0565 4.8668 6.0057 33.0064 26.5593 32.5297 3.7658 9.6027 4.917 4.917 5.2187 0.0 12.1364 38.4935 16.8902 2.0979 7.1177 3.4073 4.7355 71.141 0.0596 23.1379 5.9617 14.8322 7.1918;
	0.2712 3.6651 27.0694 24.4226 6.7076 2.0772 0.0563 3.5102 0.0 0.315 0.5822 0.8686 1.3077 0.1592 6.6225 2.495 3.0956 3.2805 4.1531 13.2114 0.0188 4.8468 9.7233 34.9937 28.8085 37.8345 2.7933 33.0239 26.8163 26.8163 9.1286 0.0 13.8437 34.0062 0.4991 11.4416 11.1389 5.3485 0.0 77.1657 2.6661 23.0429 49.1424 80.1843 11.255;
	0.859 11.6067 42.0309 12.9414 11.2017 23.8423 3.6619 3.0978 1.4368 2.0411 3.7729 5.6284 8.4735 3.7287 28.6388 10.7895 13.387 14.1862 14.8789 12.4088 1.2206 55.632 29.6835 42.2896 46.4251 40.1062 0.962 52.537 61.4367 61.4367 10.5176 0.0 49.5962 31.9402 11.6899 26.213 54.4031 6.4458 3.8488 124.3529 7.0298 264.4904 57.6232 93.8457 54.9698;
	1.5526 20.9788 57.3793 7.0366 13.6101 15.5464 3.032 0.0019 1.9711 0.1725 0.3189 0.4757 0.7162 7.0371 4.2181 1.5891 1.9717 2.0894 17.2967 9.5 1.0107 36.2748 29.2022 51.957 0.5728 37.9736 0.0002 131.2379 104.6016 104.6016 10.8207 1.8472 57.6556 24.4529 22.0623 44.63 131.1133 14.7049 1.5411 1.5344 0.2994 172.461 40.1022 108.0909 132.4791;
	2.2991 31.066 76.4106 21.5624 14.8074 12.4289 2.8501 0.0039 2.2548 23.743 43.8886 65.4732 98.5695 8.1701 21.8096 8.2166 10.1947 10.8034 7.2199 10.5816 0.95 29.0009 28.5417 65.3797 64.8161 46.0608 0.0 215.7267 168.6587 168.6587 30.3688 1.7189 24.0662 27.2372 25.6145 71.961 185.1934 13.095 6.5968 173.6147 2.5817 137.8783 122.2492 166.0659 187.1225;
	1.9583 26.4612 1.6744 38.5258 14.7291 22.6772 9.8771 0.1502 2.48 0.056 0.1036 0.1545 0.2326 10.5262 15.6924 5.912 7.3353 7.7732 4.6456 7.49 3.2924 52.9135 20.6608 3.0515 13.5742 25.7617 0.0541 194.5921 215.7949 215.7949 67.6243 3.9923 15.4855 19.2792 33.0012 92.0725 211.6234 26.8736 70.3764 36.3594 6.7968 251.5658 91.3766 135.7861 213.8278;
	2.2238 30.049 0.0 12.4958 9.5885 18.7162 8.619 0.0346 1.1498 0.0 0.0 0.0 0.0 11.4042 0.2963 0.1116 0.1385 0.1468 0.6006 0.1325 2.873 43.6712 0.0 0.0 5.6588 0.0 0.0036 268.0666 277.0195 277.0195 107.6669 7.5513 2.0019 0.3411 35.7537 118.195 284.8457 21.1183 163.1224 15.1574 25.0115 207.6253 90.4578 105.2163 287.8128;
	3.2797 44.3154 78.8158 8.9224 14.3414 14.9857 5.0314 0.0002 0.6676 0.0 0.0 0.0 0.0 8.2845 0.0 0.0 0.0 0.0 2.7941 0.2299 1.6771 34.9667 16.7943 0.0032 0.5146 0.0 0.0019 420.3999 314.7139 314.7139 198.6681 12.2652 9.3136 0.5918 25.9731 134.2779 362.0848 44.2922 91.8964 1.3784 5.3192 166.2418 39.16 171.2408 365.8565;
	3.4783 46.9999 0.632 2.8072 14.482 2.8805 4.9468 0.2568 0.0 0.0 0.0 0.0 0.0 1.1834 11.1866 4.2145 5.2291 5.5413 12.9619 0.4825 1.6489 6.7211 0.0 7.1368 9.4784 0.0 0.0114 368.4093 397.4932 397.4932 202.3703 22.9757 43.2063 1.2421 3.71 169.5971 478.3364 75.7783 4.7438 25.3885 24.5098 31.9539 139.0601 208.4431 483.3191;
	2.6085 35.246 0.5702 0.6932 14.3012 18.2249 1.142 0.0 0.0 0.0 0.0 0.0 0.0 1.9008 16.148 6.0837 7.5483 7.9989 28.1371 1.6217 0.3807 42.5247 7.0015 1.4967 0.2015 0.0 0.0 592.9337 508.2158 508.2158 329.4114 33.2354 93.7904 4.1743 5.9592 216.8387 574.1296 93.2228 14.3231 0.5396 2.7341 202.1748 108.6509 192.5733 580.1101;
	2.9529 39.9003 81.9213 4.9823 14.3237 25.1273 3.1301 0.0 0.0 8.3847 15.4991 23.1215 34.8094 5.8517 34.153 12.8669 15.9645 16.9176 72.9126 43.1721 1.0434 58.6303 26.521 0.7972 0.2607 40.9108 0.0 774.4785 437.9018 437.9018 355.7148 41.351 243.0421 111.1251 18.3458 186.8381 617.2123 72.6423 51.8392 0.6982 3.8725 278.745 109.9674 179.0106 623.6416;
	2.9499 39.859 0.0 0.0968 14.4076 0.1656 19.0854 0.0 25.6661 20.9512 38.7279 57.7744 86.9791 4.4677 0.0 0.0 0.0 0.0 5.9071 16.6027 6.3618 0.3863 53.8837 0.1365 0.0052 42.978 0.0 779.6333 447.2955 447.2955 334.3284 41.7822 19.6902 42.7355 14.007 190.8461 578.6192 76.0705 44.0979 0.0138 3.1239 1.8368 108.7522 92.7707 584.6465;
	3.1232 42.2012 83.9469 0.2037 14.0816 0.4266 3.8662 0.0 26.3797 23.2425 42.9635 64.093 96.4917 7.6529 24.4302 9.2039 11.4197 12.1015 8.5662 28.8268 1.2887 0.9955 71.3765 79.7396 3.2628 51.5972 0.0 668.0037 390.7084 390.7084 243.7931 52.3847 28.5538 74.2004 23.993 166.7022 564.1821 78.423 82.9971 8.7398 3.7681 4.7329 103.4694 106.0206 570.059;
	3.5787 48.3559 86.294 0.0 14.2244 22.6693 12.0807 12.1172 26.475 25.2904 46.7489 69.7401 104.9934 12.0728 10.7457 4.0484 5.023 5.3229 12.8559 49.3857 4.0269 52.8949 57.6886 79.5358 93.0721 65.6347 5.0528 754.9119 343.5402 343.5402 233.8919 60.9617 42.8529 127.119 37.85 146.5771 531.5224 109.0003 59.4672 249.3002 11.0887 251.4776 8.1249 167.749 537.0591;
	3.581 48.3875 86.2403 112.1038 13.7791 25.2537 13.1552 15.5911 26.7864 26.8845 49.6956 74.1361 111.6115 7.4915 49.582 18.6797 23.1767 24.5604 2.9313 57.3401 4.3851 58.9254 66.5496 83.1747 94.9346 70.9847 7.5953 723.8331 348.5894 348.5894 295.8337 43.7925 9.7709 147.5935 23.4867 148.7315 442.1221 99.7816 2.5526 254.2891 10.8236 280.148 129.7618 180.7273 446.7275;
	3.5545 48.0297 86.3692 106.4807 14.1397 16.4483 11.8158 16.4399 27.5666 27.9543 51.6731 77.0861 116.0527 12.973 50.4425 19.0039 23.579 24.9867 24.8135 47.428 3.9386 38.3794 65.1359 83.0427 98.6356 72.3218 7.3531 679.6853 398.1674 398.1674 280.3087 44.8602 82.7117 122.0799 40.6722 169.8848 433.7481 84.6683 304.5024 264.2024 12.1867 182.4668 139.1083 216.4507 438.2663;
];
