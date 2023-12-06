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
	0.7332 9.9073 56.8016 65.3584 7.9194 0.2088 0.0 8.6036 0.315 20.451 37.8033 56.3951 84.9026 9.3075 153.1658 57.7043 71.5961 75.8705 82.4561 69.044 0.0 0.4873 69.5777 75.7613 53.11 50.9436 4.353 172.1488 299.0097 299.0097 234.0939 43.4206 274.8535 177.7194 29.1802 127.5775 343.6024 84.7762 62.3836 142.259 56.6771 2.3166 0.6231 67.8726 347.1816;
	0.5147 6.9544 51.6637 65.0639 6.9195 0.4726 0.0 12.0346 0.0452 12.9883 24.0087 35.8163 53.9212 2.4668 126.4343 47.6334 59.1007 62.6291 71.2863 68.2197 0.0 1.1028 36.1 75.1236 54.9284 54.6713 6.2871 56.1053 198.585 198.585 142.244 28.3965 237.6211 175.5977 7.7336 84.7296 242.1803 86.2735 45.3095 147.1296 69.3315 5.2428 0.0067 87.0924 244.703;
	0.4331 5.8521 63.607 70.6421 6.5394 2.2814 0.28 12.6959 3.0304 10.7544 19.8794 29.6561 44.6471 3.0034 81.0384 30.5308 37.8808 40.1423 62.0569 61.197 0.0933 5.3233 28.4712 82.6553 59.3204 58.5439 6.6982 0.0 1.9429 1.9429 9.7691 12.9688 206.8565 157.5213 9.4161 0.829 131.1876 1.6194 154.1675 158.894 62.5871 25.3086 49.9409 108.7177 132.5542;
	0.5097 6.8866 72.4675 81.4659 8.9691 2.2023 0.9995 14.9653 6.9509 17.5895 32.5138 48.5042 73.0229 0.6292 99.1996 37.3729 46.37 49.1384 48.381 66.7811 0.3332 5.1386 51.1325 87.0756 71.5859 71.9834 8.0015 0.0 1.1976 1.1976 9.2246 17.2897 161.2701 171.8948 1.9725 0.511 0.0 5.0199 108.2108 191.748 68.3754 24.4305 20.2643 151.9946 0.0;
	0.5477 7.4013 82.297 77.3728 9.8476 2.8138 3.3187 15.153 7.3934 18.051 33.367 49.7769 74.9389 2.477 137.6429 51.8561 64.34 68.1812 62.2415 71.8597 1.1062 6.5656 49.4396 85.7891 80.724 72.2552 9.09 23.1008 8.0821 8.0821 39.0629 8.6238 207.4717 184.9672 7.7657 3.4484 0.0 3.9224 245.7865 216.225 66.0432 31.2147 31.8586 154.4011 0.0;
	0.5246 7.088 85.3611 64.9597 10.7189 4.4377 9.7671 13.9315 20.6461 11.1015 20.521 30.6134 46.0883 2.2726 147.0642 55.4056 68.744 72.8481 81.2254 71.874 3.2557 10.3547 38.9897 85.4134 64.6594 73.9237 8.2005 34.8475 22.4036 22.4036 13.9416 7.8233 270.7513 185.0039 7.1249 9.5589 0.253 0.0911 170.7195 173.1947 53.3622 49.2294 27.5942 162.1515 0.2556;
	0.4929 6.6595 60.5133 41.0162 9.6931 3.3607 5.0011 7.9956 7.6539 8.8403 16.3412 24.3779 36.7008 13.2273 122.3901 46.1098 57.2103 60.6258 64.7091 71.8357 1.667 7.8417 25.6626 61.0328 37.6769 65.5748 3.6778 25.1327 19.6129 19.6129 68.6777 0.8584 215.6972 184.9053 41.4695 8.3682 0.4178 1.5014 102.6149 100.9204 26.9671 37.2818 38.2959 146.6815 0.4222;
	0.6082 8.2178 36.9549 29.6933 4.8109 3.4605 4.8867 7.537 3.671 5.4934 10.1545 15.1485 22.806 8.8533 74.3601 28.0147 34.759 36.8342 22.8234 57.3029 1.6289 8.0744 13.5182 40.1379 34.5342 64.8101 4.3118 6.7486 6.8906 6.8906 59.9541 5.7803 76.0781 147.4977 27.7562 2.94 4.7896 0.4197 12.359 92.5023 9.0222 38.388 98.5218 114.5045 4.8394;
	0.6918 9.3478 30.5086 28.9146 4.7491 5.8666 1.2815 5.6283 12.8811 6.6482 12.2891 18.333 27.6002 2.4349 18.2201 6.8643 8.5168 9.0253 27.3683 18.9939 0.4272 13.6887 7.2975 38.8207 29.2546 54.1313 4.1023 0.1455 12.6191 12.6191 104.9308 2.5062 91.2275 48.8904 7.6337 5.3841 0.0 0.0507 40.0484 78.3607 0.4674 65.0802 70.8638 83.7363 0.0;
	0.6866 9.2773 39.6904 30.9406 8.439 2.0061 0.2759 4.7587 1.3892 0.5594 1.0341 1.5426 2.3224 1.4173 11.7479 4.4259 5.4914 5.8193 7.5689 14.1706 0.092 4.6808 10.9158 41.2967 31.4715 48.5935 3.084 31.4294 61.5764 61.5764 54.2833 0.1424 25.2297 36.4752 4.4434 26.2726 3.4986 0.0 0.0015 84.2986 4.2166 22.254 52.7026 101.6536 3.5351;
	0.9113 12.314 42.6673 11.6417 11.6485 0.4019 0.0 2.2477 0.0459 2.1631 3.9985 5.965 8.9803 4.7533 22.7683 8.5778 10.6429 11.2783 36.8972 11.3457 0.0 0.9377 31.901 40.9073 40.3304 45.9087 0.4877 84.9517 80.8001 80.8001 153.4691 1.0076 122.9906 29.2038 14.9023 34.4747 87.9538 0.2624 0.0 108.0279 0.2925 4.4579 7.1279 94.738 88.8699;
	1.6522 22.3253 64.4307 45.0745 13.9383 0.4788 0.6809 0.1034 1.4414 0.6259 1.157 1.726 2.5985 2.6518 44.8414 16.8937 20.9608 22.2121 15.2625 10.1322 0.227 1.1173 52.1156 57.5008 13.6152 48.3955 0.1097 157.7667 112.0771 112.0771 106.5947 2.6722 50.8751 26.0802 8.3137 47.8196 137.6734 2.6666 0.7899 36.4694 18.7821 5.312 5.6897 129.2891 139.1075;
	2.2254 30.0694 83.0116 15.0929 14.4702 0.2747 0.0 0.0 0.5422 22.5695 41.7193 62.237 93.6975 1.7014 44.6266 16.8128 20.8603 22.1057 23.4974 10.7704 0.0 0.6411 34.6059 68.8638 66.7537 53.7219 0.0003 229.8625 159.1695 159.1695 77.5666 3.2721 78.3245 27.7229 5.334 67.9123 170.3608 0.8504 0.0 178.8046 9.561 3.0479 106.1479 175.575 172.1354;
	1.7184 23.2195 9.64 39.2486 14.1629 18.0217 0.0 0.0011 0.0106 0.6932 1.2814 1.9116 2.8779 3.5992 5.1677 1.9469 2.4156 2.5598 1.3843 6.0651 0.0 42.0507 47.3921 27.1159 4.5064 35.5588 0.2485 197.9857 209.572 209.572 75.6296 4.8707 4.6143 15.6117 11.284 89.4174 190.0086 8.2182 0.0 12.0706 0.6326 199.9211 70.4512 134.6266 191.9878;
	2.1334 28.827 25.8705 43.7046 9.9438 0.9753 0.001 0.0079 0.5712 0.0 0.0 0.0 0.0 14.9236 7.6768 2.8922 3.5885 3.8027 0.0015 0.2424 0.0003 2.2758 23.8999 35.7067 13.9905 7.1457 0.7209 275.4031 252.3911 252.3911 108.8999 5.9285 0.0048 0.6239 46.7876 107.6869 261.4479 16.8606 2.3282 37.4745 2.2205 10.8196 76.1787 108.6675 264.1713;
	2.9154 39.3935 87.3438 16.4094 13.8539 0.0105 0.0 0.4351 0.0188 0.0 0.0 0.0 0.0 39.8236 0.4294 0.1618 0.2007 0.2127 2.501 2.5574 0.0 0.0244 26.4452 49.4448 19.3321 8.772 3.5749 402.3046 273.1727 273.1727 178.6548 10.1407 8.3366 6.5828 124.8523 116.5537 298.6681 38.1153 15.6977 51.7823 1.9057 0.1162 0.0 186.7856 301.7792;
	3.2788 44.3037 31.386 11.2279 14.6334 0.0 0.0 1.3314 0.0 0.1267 0.2342 0.3493 0.5259 49.4117 0.0 0.0 0.0 0.0 0.0533 0.0 0.0 0.0 0.1031 55.3573 19.406 20.4456 1.7464 362.2682 363.7579 363.7579 169.0449 18.8906 0.1778 0.0 154.9122 155.2034 427.3987 64.0729 2.3294 51.9804 0.026 0.0 136.2797 242.1593 431.8507;
	2.6765 36.1647 22.3006 13.6806 14.2267 16.2041 0.002 5.8561 0.0 0.2 0.3698 0.5516 0.8305 17.9491 0.2612 0.0984 0.1221 0.1294 9.5271 0.0 0.0007 37.8096 12.67 79.086 26.2515 39.6211 9.139 549.0751 483.9089 483.9089 321.0486 32.6845 31.757 0.0 56.2729 206.4678 548.0686 93.0931 48.9723 70.3165 0.3667 179.7577 113.594 235.188 553.7777;
	3.2368 43.7366 88.3095 30.3668 14.6635 23.8846 1.7533 2.0478 0.1846 7.7894 14.3986 21.4798 32.3378 7.8919 3.2379 1.2199 1.5135 1.6039 7.5616 30.108 0.5844 55.7306 15.2487 84.7289 65.0899 65.6753 9.0197 763.2726 447.3729 447.3729 362.0176 44.871 25.2054 77.498 24.7422 190.8791 601.2359 74.5079 180.0115 174.348 1.1409 264.9593 115.7542 225.4755 607.4987;
	3.0332 40.9853 16.4368 4.0112 14.7442 0.0 17.8984 0.185 25.3339 21.4759 39.6979 59.2214 89.1575 12.1626 0.0 0.0 0.0 0.0 1.7301 11.0291 5.9661 0.0 54.2899 64.5002 12.6194 54.9912 4.3673 710.6977 446.1587 446.1587 345.878 46.2462 5.7671 28.3889 38.1313 190.3611 526.9276 75.2263 117.4036 33.802 0.8903 0.0 111.9666 192.5321 532.4164;
	3.1645 42.7587 84.8895 0.0145 14.4013 0.0 0.0 0.0 25.2719 23.394 43.2435 64.5107 97.1206 8.7661 17.0089 6.408 7.9507 8.4253 42.4986 23.6789 0.0 0.0 71.4377 86.5415 2.8526 60.9696 0.1394 618.21 387.1358 387.1358 230.6924 52.4424 141.6622 60.9497 27.4829 165.178 517.5298 66.4037 26.6807 7.6409 0.0546 0.0 100.5229 179.2777 522.9208;
	3.6397 49.1809 89.4838 11.408 14.6987 21.6455 10.5235 12.9833 25.1704 23.8025 43.9985 65.6371 98.8163 12.9624 8.5694 3.2285 4.0057 4.2448 15.7075 50.3039 3.5078 50.5061 56.6363 87.5051 97.1944 71.044 5.8006 708.0731 308.0109 308.0109 206.1691 56.3069 52.3584 129.4823 40.6389 131.418 473.7267 89.2819 95.2456 260.342 6.8705 240.1206 4.2094 202.9313 478.6613;
	3.5605 48.1104 86.2372 111.1506 14.1484 20.619 9.5635 13.2251 24.9825 25.215 46.6095 69.5323 104.6804 9.3248 53.8385 20.2833 25.1664 26.6688 20.6619 60.3956 3.1878 48.1111 63.5106 85.7703 87.5012 67.6339 6.8758 777.9432 337.3561 337.3561 290.6566 40.269 68.8729 155.4585 29.2344 143.9386 437.7049 92.0998 0.0 234.3783 8.6377 228.7338 126.2535 194.3901 442.2643;
	3.1752 42.9033 85.7096 107.5921 14.5156 13.568 8.8605 15.8605 26.4143 26.0313 48.1185 71.7834 108.0695 12.8748 40.9489 15.4273 19.1412 20.284 8.9785 48.1983 2.9535 31.6586 56.9284 87.4158 97.1038 70.5577 7.2414 728.9732 362.9558 362.9558 266.51 44.5529 29.9283 124.0626 40.3644 154.8612 411.2091 74.3186 292.0385 260.0996 10.5305 150.5139 129.6034 220.7072 415.4925;
];
