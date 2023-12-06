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
	0.8913 12.044 55.4799 64.9013 7.2841 2.8802 0.0 7.9891 0.339 19.003 35.1268 52.4022 78.8913 10.737 149.1414 56.1882 69.7149 73.877 80.4333 68.3516 0.0 6.7204 69.7328 70.3876 47.446 46.7089 4.2798 182.1375 320.5531 320.5531 211.9763 45.3722 268.1111 175.9372 33.662 136.7693 397.8537 90.2648 0.0 127.0876 69.7837 31.9508 15.8876 62.6794 401.998;
	0.5763 7.7874 55.4687 65.7201 6.3833 2.457 0.0 10.7691 0.0078 10.3683 19.1657 28.5914 43.0443 6.5797 123.5563 46.5491 57.7554 61.2035 74.0939 67.9418 0.0 5.7329 33.6896 70.7957 51.9012 48.7353 6.2411 76.4533 219.5435 219.5435 147.9413 29.349 246.9798 174.8823 20.6283 93.6719 304.9247 91.506 0.0 139.0211 79.6602 27.256 17.6272 79.6609 308.101;
	0.2992 4.0431 57.5102 62.8596 4.8614 0.0 0.0 10.491 0.1772 9.8313 18.1729 27.1104 40.8146 5.4327 84.3776 31.7888 39.4416 41.7963 60.9539 67.7235 0.0 0.0 29.1291 71.637 52.5014 50.3043 6.4386 7.3021 5.2286 5.2286 5.8059 17.4779 203.1796 174.3206 17.0323 2.2309 172.3233 19.7927 0.0 140.6288 68.4255 0.0 0.0006 83.6799 174.1183;
	0.4942 6.6779 68.642 73.6992 7.7072 2.1789 0.0 13.5752 0.0 15.8343 29.2695 43.6643 65.7364 6.1736 94.1109 35.4557 43.9914 46.6177 44.2729 68.0441 0.0 5.0841 51.4319 80.6926 62.4461 64.0707 7.7929 28.2454 3.9119 3.9119 2.7286 19.0316 147.5763 175.1456 19.3551 1.6691 38.7913 6.1358 0.0 167.2662 74.4603 24.1714 14.8777 124.6733 39.1953;
	0.5025 6.7899 79.0302 73.6186 9.2231 0.0006 0.0 13.6681 0.0 15.5095 28.6692 42.7688 64.3881 13.6005 123.8854 46.6731 57.9092 61.3665 50.6452 67.5866 0.0 0.0013 46.2747 82.0229 79.3374 66.055 8.386 33.1656 0.0117 0.0117 0.6973 10.4901 168.8175 173.968 42.6395 0.005 10.818 5.7644 0.0 212.5109 74.6819 0.0061 0.5987 129.3067 10.9306;
	0.5491 7.4197 83.4202 64.047 9.3887 4.056 0.0 13.3071 5.5963 9.598 17.7417 26.4672 39.8462 5.7403 153.0238 57.6508 71.5297 75.8002 79.2615 71.5733 0.0 9.4641 34.4741 82.0186 61.9748 67.9029 8.2493 146.0553 0.2759 0.2759 7.569 10.9288 264.205 184.2299 17.9967 0.1177 57.8259 14.7586 0.0031 166.0038 59.4405 44.995 22.9201 138.5193 58.4282;
	0.5783 7.8147 66.2056 42.7818 9.4234 3.2911 3.5342 8.4567 2.5509 7.8815 14.5688 21.7338 32.7201 8.5315 129.2097 48.679 60.398 64.0039 62.0673 71.9049 1.1781 7.6792 23.169 57.084 38.3129 64.9856 4.4305 239.0925 0.0001 0.0001 4.9625 5.4048 206.8911 185.0834 26.7473 0.0001 61.9988 10.089 0.0 102.6238 31.6003 36.5089 35.2452 140.488 62.6446;
	0.5421 7.3254 37.6 26.1602 3.5193 3.2363 4.1019 7.1148 2.1851 4.5502 8.411 12.5476 18.8903 1.362 66.2188 24.9476 30.9535 32.8014 12.8133 46.4539 1.3673 7.5514 11.1606 34.4088 32.6561 62.234 4.6822 51.7439 0.0 0.0 3.5999 1.3003 42.7111 119.5723 4.2701 0.0 35.5458 22.2572 0.0 87.4718 11.4846 35.9017 13.7367 102.242 35.916;
	0.5796 7.8317 29.8092 23.5878 3.6054 0.9422 0.0 5.5022 0.0263 2.6615 4.9197 7.3392 11.0492 0.8607 20.7857 7.8309 9.7161 10.2962 0.0 19.3794 0.0 2.1984 6.1245 30.1914 28.1879 54.7913 4.405 12.645 0.0275 0.0275 6.6055 0.359 0.0 49.8827 2.6984 0.0117 8.5287 4.2125 0.0 75.5034 11.4496 10.4516 0.2328 74.2007 8.6175;
	0.5805 7.8442 31.9256 25.4002 7.4556 2.727 0.0 4.2811 0.2903 6.6381 12.2703 18.3049 27.558 0.1566 11.4552 4.3157 5.3546 5.6743 0.0 13.1895 0.0 6.363 11.9763 30.2919 28.9741 50.3031 3.3041 48.8316 22.0406 22.0406 1.1818 3.8772 0.0 33.9498 0.491 9.404 14.4543 1.1981 0.0 77.6092 19.7642 30.2513 45.8458 80.8517 14.6048;
	0.8033 10.854 39.5507 0.1143 10.3346 1.8362 0.0 1.9783 0.0 0.4149 0.767 1.1442 1.7226 0.0 46.8115 17.636 21.8816 23.188 0.8918 12.3349 0.0 4.2844 8.8621 28.1199 41.1587 50.6732 0.9981 75.2757 51.0931 51.0931 0.0 1.032 2.9727 31.7501 0.0 21.7997 53.4529 0.2734 0.0 110.2464 34.1897 20.3694 6.4305 69.9121 54.0097;
	1.5204 20.5435 57.5538 0.0429 12.0029 0.0353 0.0 0.0001 0.0 0.0 0.0 0.0 0.0 0.0 12.9068 4.8625 6.0332 6.3933 0.3774 10.1495 0.0 0.0823 27.4604 44.576 0.1155 49.1182 0.091 159.2469 96.814 96.814 2.4966 7.9004 1.2579 26.1249 0.0 41.3073 127.4304 4.843 0.0 0.3095 43.8126 0.3914 0.0103 112.1817 128.7578;
	2.0907 28.2496 81.261 0.2888 13.4985 0.0224 0.0 0.1468 0.0 15.2108 28.1169 41.9448 63.1477 0.0 25.1228 9.4649 11.7434 12.4445 0.0 10.1296 0.0 0.0523 12.0688 60.0604 63.2653 54.5361 0.1363 217.4338 149.4585 149.4585 0.1565 11.1873 0.0 26.0735 0.0 63.769 173.6905 1.0932 0.0 169.4607 5.9286 0.2487 103.0684 147.4668 175.4998;
	1.7706 23.9248 7.0196 5.8107 13.0049 17.5898 0.0 0.7293 0.0 0.0 0.0 0.0 0.0 0.062 7.2559 2.7336 3.3917 3.5942 0.0 7.5003 0.0 41.0428 39.0166 0.0069 4.1475 34.3849 0.0265 199.6718 186.6732 186.6732 1.8345 8.2997 0.0 19.3057 0.1942 79.6472 192.4016 7.9914 0.0 11.1095 18.633 195.1291 78.414 128.5636 194.4057;
	2.046 27.646 2.9989 3.8584 8.4114 0.0333 0.8677 0.3621 0.002 0.6956 1.2858 1.9181 2.8877 0.907 28.3261 10.6717 13.2408 14.0313 0.0249 3.8167 0.2892 0.0778 24.8735 2.3602 4.3787 1.6804 0.0 252.776 250.715 250.715 86.2068 5.7861 0.0831 9.8243 2.8435 106.9717 246.8748 11.5444 0.0 11.7285 33.0207 0.3697 80.5248 93.264 249.4465;
	3.0624 41.3798 84.5788 1.7184 13.1545 0.0771 1.5215 1.1147 0.1673 3.5554 6.572 9.8042 14.7602 4.0073 21.83 8.2243 10.2043 10.8135 0.2069 0.8102 0.5072 0.1799 41.6586 4.3327 4.5887 2.8675 0.0653 415.4698 285.788 285.788 172.9368 11.7114 0.6896 2.0854 12.5636 121.9362 328.6629 40.2629 0.0 12.2912 7.5182 0.8554 10.9953 165.2865 332.0865;
	3.4468 46.5738 41.3951 12.2169 14.2394 0.0 2.6442 0.552 0.0549 1.2035 2.2247 3.3187 4.9964 8.8892 5.2118 1.9635 2.4362 2.5816 2.6605 0.5771 0.8814 0.0001 0.221 68.3978 23.9325 0.5115 0.2036 404.8868 362.044 362.044 185.5576 25.5755 8.8682 1.4855 27.8689 154.4721 491.1206 68.2616 1.5396 64.1049 10.4614 0.0003 134.9634 213.0512 496.2364;
	2.9399 39.7249 86.7455 44.9239 14.5929 19.1364 8.35 3.2305 5.0075 8.6194 15.9329 23.7688 35.7837 38.4817 6.499 2.4485 3.0379 3.2193 9.6167 4.9822 2.7833 44.6516 15.4495 79.9185 69.3682 14.1191 1.9808 573.9852 467.6985 467.6985 321.1758 36.371 32.0558 12.8243 120.6454 199.5514 558.5272 79.2972 87.6044 185.8077 49.9309 212.2864 112.7373 223.9971 564.3452;
	3.138 42.4019 90.8984 69.106 14.9506 24.569 2.7581 3.983 6.0289 9.6854 17.9033 26.7082 40.2091 8.6189 0.0705 0.0266 0.0329 0.0349 6.5737 40.659 0.9194 57.3278 34.0384 82.5706 57.6938 64.3095 1.4814 761.7427 428.4056 428.4056 358.2058 45.3484 21.9125 104.6563 27.0213 182.7864 613.1463 70.0662 34.3699 154.537 50.5306 272.5525 109.6352 193.1799 619.5333;
	2.9789 40.2508 34.3313 42.8261 14.8776 0.0028 17.2157 2.985 25.8547 22.3917 41.3908 61.7469 92.9596 16.9035 0.0 0.0 0.0 0.0 0.0942 15.158 5.7386 0.0066 62.9093 50.202 43.9674 57.7932 0.5895 723.8409 420.9374 420.9374 308.0356 39.2359 0.3139 39.0168 52.9946 179.6 552.343 57.119 0.0 117.7698 53.5284 0.0314 105.8004 165.9646 558.0966;
	3.132 42.3201 91.0524 103.4845 14.5436 0.9277 0.0 13.2258 26.0153 24.8481 45.9313 68.5204 103.1572 9.4787 19.6615 7.4074 9.1906 9.7393 5.88 25.7049 0.0 2.1646 75.255 88.5915 70.941 67.737 6.8008 619.0745 361.941 361.941 218.6391 48.0837 19.5999 66.1646 29.7171 154.4282 531.4885 61.5715 0.6769 190.0207 49.161 10.2913 101.2714 174.2699 537.0249;
	3.5582 48.0792 93.6075 73.7428 14.5009 22.6693 10.9696 16.0508 26.8418 27.0346 49.9731 74.55 112.2347 11.5935 0.0 0.0 0.0 0.0 3.2173 39.5082 3.6565 52.8951 67.1373 87.8605 102.9455 74.9669 6.5628 745.4436 295.4386 295.4386 195.1635 50.9463 10.7243 101.6941 36.3473 126.0538 488.3086 74.1293 6.7477 275.7469 15.4904 251.4783 2.8466 197.5093 493.3951;
	3.5932 48.5516 92.0669 117.8278 13.8853 26.4675 12.6326 17.4597 26.8835 27.188 50.2566 74.973 112.8715 7.1148 39.949 15.0506 18.6739 19.7887 2.7625 60.3969 4.2109 61.7576 70.4327 87.8601 99.4934 73.6466 7.9864 776.2703 326.6288 326.6288 277.1163 42.2045 9.2082 155.4617 22.3058 139.3616 419.5148 68.9731 4.554 266.5003 10.9527 293.6133 137.95 199.2125 423.8847;
	3.368 45.5093 89.5389 109.9551 14.1657 16.1013 10.8626 17.916 27.5105 27.4455 50.7327 75.6832 113.9406 11.3681 37.4935 14.1254 17.526 18.5723 10.3618 47.533 3.6209 37.5696 68.2945 87.0675 99.6981 71.5438 7.625 756.7369 360.8441 360.8441 233.4881 47.289 34.5394 122.3502 35.6407 153.9601 431.8489 64.1462 294.1525 267.0486 6.9682 178.6167 134.8804 220.5602 436.3474;
];
