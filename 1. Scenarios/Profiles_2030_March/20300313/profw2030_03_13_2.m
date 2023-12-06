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
	0.8479 11.4566 60.0761 68.5683 8.3122 18.1714 0.2768 7.9267 0.089 19.0929 35.2929 52.65 79.2643 9.5218 118.1744 44.5215 55.2396 58.5375 65.7665 67.064 0.0923 42.4 68.7627 70.7893 47.2557 46.2097 4.2302 215.4212 317.5508 317.5508 236.5798 45.874 219.2216 172.623 29.8522 135.4883 399.4458 88.5147 22.8181 126.5778 60.8849 201.5816 75.9611 73.8607 403.6067;
	0.6146 8.3052 54.4669 63.9182 7.4512 11.1219 0.0674 9.2794 1.2405 11.694 21.6161 32.247 48.5477 13.7589 96.5747 36.384 45.1431 47.8382 55.7099 66.9305 0.0225 25.9512 33.4045 67.1394 46.4818 47.2007 5.4473 99.5042 223.0264 223.0264 145.7328 27.4891 185.6997 172.2793 43.136 95.1579 308.281 80.2837 26.1081 124.5048 73.9121 123.3794 51.3961 88.2196 311.4923;
	0.3945 5.331 61.6208 67.1569 6.6682 2.6546 0.6725 7.6323 3.0568 10.0779 18.6288 27.7905 41.8384 7.6403 55.1938 20.794 25.7999 27.3402 53.6096 61.4771 0.2242 6.1941 27.3844 68.4588 43.7184 48.7378 5.4698 66.6034 29.6801 29.6801 7.621 14.5721 178.6987 158.2423 23.9534 12.6635 180.2626 0.0836 86.5085 117.103 64.6172 29.4484 62.5593 91.387 182.1404;
	0.4704 6.3562 67.835 72.5602 8.2606 1.6807 0.4162 12.0194 0.0984 15.6092 28.8533 43.0435 64.8018 7.4862 77.202 29.0854 36.0874 38.2419 42.7894 62.5343 0.1387 3.9216 49.7913 73.7857 55.1209 62.7923 7.3501 24.0746 172.2708 172.2708 19.3274 18.5536 142.6313 160.9636 23.4702 73.5022 42.5507 0.1138 27.9889 147.6452 61.7499 18.6443 28.8706 135.8685 42.9939;
	0.5786 7.8177 79.7305 76.8127 9.863 3.2891 0.2759 12.3727 0.7249 16.6099 30.7031 45.803 68.9561 3.8599 103.891 39.1403 48.563 51.4623 48.4261 64.4357 0.092 7.6745 49.8985 75.2613 71.2053 61.9273 8.239 17.0563 94.4206 94.4206 8.7288 9.1284 161.4203 165.8576 12.1014 40.2861 0.2299 0.0 153.2275 190.7286 63.4976 36.4868 51.4804 145.4811 0.2323;
	0.5636 7.6154 78.4308 62.7699 10.2324 4.1207 1.2917 11.5022 0.1338 8.9059 16.4624 24.5587 36.973 4.8421 123.6214 46.5736 57.7858 61.2357 77.0507 61.4441 0.4306 9.615 32.9807 75.2863 54.2888 61.5934 7.9227 17.8165 151.1291 151.1291 47.9192 8.0524 256.8358 158.1572 15.1806 64.4818 4.4451 0.8512 62.7812 145.4164 50.1237 45.7124 27.6374 140.9997 4.4914;
	0.5145 6.9517 54.7757 37.5857 9.0912 2.4473 3.3152 6.4562 1.6901 6.6653 12.3206 18.38 27.6709 5.7532 118.4324 44.6187 55.3602 58.6653 67.43 68.0627 1.1051 5.7105 19.8652 45.452 29.8168 47.3785 4.0657 50.4276 294.9203 294.9203 206.2433 0.1021 224.7667 175.1937 18.0371 125.8327 14.4317 2.4241 0.4192 79.8664 19.8114 27.1491 36.142 125.0112 14.582;
	0.4804 6.4907 32.9781 25.4376 3.4157 2.624 3.6618 3.9219 1.1264 3.8982 7.2058 10.7496 16.1835 0.2934 65.6636 24.7384 30.6939 32.5264 20.4549 47.6116 1.2206 6.1226 8.1356 4.0846 22.8238 48.3076 3.6355 8.6219 116.6872 116.6872 77.5525 0.3322 68.1829 122.5525 0.92 49.7865 12.9097 1.8218 0.0 61.1353 3.8337 29.1087 15.1721 92.8087 13.0442;
	0.5099 6.8893 26.9533 22.5587 3.062 0.2217 0.0 5.2153 0.0 0.3019 0.5581 0.8325 1.2534 1.3629 19.7178 7.4285 9.2169 9.7672 44.9809 18.0141 0.0 0.5172 6.8087 27.7826 26.2419 46.5245 3.9708 0.0 232.0066 232.0066 164.3358 0.1112 149.9363 46.3683 4.2729 98.9895 6.5424 12.7973 1.3521 70.2907 0.0871 2.4589 0.6325 73.3126 6.6106;
	0.6147 8.3064 33.0105 26.4301 7.4544 7.4641 0.0 4.9032 0.0 0.417 0.7709 1.15 1.7313 2.2114 11.5176 4.3392 5.3838 5.7052 37.9557 15.3559 0.0 17.4161 15.0997 35.4487 30.533 52.4882 3.243 21.1714 309.9312 309.9312 207.2055 0.225 126.5191 39.526 6.9329 132.2373 26.7572 19.2646 0.9048 81.7849 27.9396 82.8013 51.7954 103.1769 27.0359;
	0.8627 11.6568 43.3839 7.6473 10.6343 4.0865 0.0 4.0821 0.0 0.0 0.0 0.0 0.0 0.9511 30.4954 11.489 14.2548 15.1059 41.9778 11.6835 0.0 9.5352 32.8027 42.989 45.7616 55.5853 1.4485 49.7028 84.0692 84.0692 124.3223 0.0 139.9262 30.0735 2.982 35.8695 65.4891 23.3383 8.8629 122.5756 55.4308 45.333 22.9969 102.9694 66.1713;
	1.7406 23.5197 61.1113 7.0352 13.1041 3.5165 0.9745 1.1373 0.0 0.0 0.0 0.0 0.0 3.492 1.8558 0.6991 0.8675 0.9193 46.5016 10.31 0.3248 8.2051 46.5108 52.5801 5.0104 49.6363 1.1226 135.0202 124.4174 124.4174 44.4483 2.0523 155.0054 26.538 10.948 53.0848 141.8096 10.2668 94.3934 13.4207 29.3719 39.0094 52.4406 130.6201 143.2868;
	2.4471 33.0658 82.5694 14.246 13.9507 2.405 0.0 5.7823 0.0 15.1678 28.0375 41.8264 62.9695 0.0119 2.5567 0.9632 1.1951 1.2665 10.5724 9.6192 0.0 5.6118 25.9204 63.8933 70.8996 53.279 2.4202 194.2498 177.9401 177.9401 35.0614 2.9598 35.2412 24.7597 0.0374 75.9211 182.9331 8.2081 118.9783 189.9097 50.6829 26.68 113.5775 169.0616 184.8387;
	2.0232 27.3374 8.7156 1.5894 13.7641 20.2572 1.0603 2.5665 0.0 0.0 0.0 0.0 0.0 0.001 0.0 0.0 0.0 0.0 0.4522 4.2303 0.3534 47.2668 18.9783 2.9634 27.4528 29.3675 1.369 212.6578 218.4859 218.4859 28.4117 6.0873 1.5072 10.8889 0.0031 93.2206 207.2296 12.1362 38.2547 73.5342 59.2811 224.7198 88.2468 144.5202 209.3883;
	2.4087 32.5464 10.0229 10.5993 8.3293 3.837 0.0 2.7877 0.0 0.0 0.0 0.0 0.0 0.0 1.8012 0.6786 0.842 0.8922 1.6598 0.5801 0.0 8.9531 0.943 0.0303 8.7531 0.0 0.7626 276.6415 286.4629 286.4629 107.9638 9.9148 5.5325 1.4933 0.0 122.2242 276.9408 27.0257 9.6055 23.4457 37.23 42.5654 83.3937 113.5516 279.8256;
	3.2999 44.5884 84.0322 8.584 12.2893 1.638 0.6024 2.1384 0.0 0.0135 0.0249 0.0371 0.0559 1.8859 0.0 0.0 0.0 0.0 0.0 2.347 0.2008 3.822 33.4798 0.0127 6.0582 0.0175 1.7463 363.8491 309.0681 309.0681 189.1823 11.8174 0.0 6.0413 5.9124 131.869 321.5278 39.2062 58.356 16.2273 72.4937 18.1709 2.4559 182.8421 324.8771;
	3.4142 46.134 3.0908 5.6661 11.5098 1.5268 0.3402 2.5102 0.0 0.0 0.0 0.0 0.0 6.4297 0.0 0.0 0.0 0.0 0.0 2.3386 0.1134 3.5625 0.0 1.5262 15.6341 0.0002 1.1586 353.2862 376.2652 376.2652 182.8441 23.5117 0.0 6.0194 20.158 160.5398 447.5984 70.7898 81.6163 41.8771 42.7014 16.9369 128.662 216.0082 452.2609;
	2.6248 35.4665 4.2792 9.5042 12.7538 18.9419 0.0 0.2903 0.0 0.0 0.0 0.0 0.0 0.7634 0.0 0.0 0.0 0.0 0.0 0.4678 0.0 44.1978 7.0206 7.0574 14.2633 0.0 0.6233 531.6651 500.3214 500.3214 345.1677 34.5373 0.0 1.204 2.3935 213.4705 558.8302 93.613 0.0 38.2053 31.5898 210.1292 107.4923 206.3639 564.6514;
	2.945 39.7935 85.5338 5.6122 14.1782 25.8577 0.0 0.191 0.0 6.6701 12.3297 18.3934 27.6912 6.8679 0.0 0.0 0.0 0.0 0.0 35.7376 0.0 60.3345 22.9184 19.0957 21.3779 59.1262 0.4957 705.9977 433.8568 433.8568 364.421 44.7059 0.0 91.9887 21.5319 185.1123 584.5563 77.1973 0.0 57.2621 25.4836 286.8476 108.8198 211.2214 590.6454;
	3.1005 41.8949 8.6228 5.1031 14.4287 6.3319 17.6374 0.0611 26.2266 21.1784 39.1479 58.4009 87.9223 3.4833 4.1525 1.5644 1.9411 2.057 0.0 18.2689 5.8791 14.7744 58.8881 3.4827 1.3916 52.7027 1.4071 736.374 430.7069 430.7069 347.3233 44.3623 0.0 47.0243 10.9205 183.7683 542.9064 74.5401 11.9254 3.7274 42.0809 70.2415 121.6346 184.0942 548.5617;
	3.4061 46.0245 87.3451 11.0475 14.1958 8.6815 5.3338 0.0193 26.532 21.3099 39.3911 58.7638 88.4686 7.6547 17.42 6.5629 8.1428 8.629 0.0 28.4806 1.7779 20.2569 67.9955 80.8125 6.9148 59.9657 2.1988 644.7392 396.2633 396.2633 271.6345 55.4582 0.0 73.3092 23.9985 169.0723 553.3165 80.9287 72.4488 18.5218 82.9959 96.3069 117.9924 176.8902 559.0802;
	3.6552 49.3897 89.561 5.1725 14.1824 23.5277 12.3323 13.0382 26.2372 23.2885 43.0484 64.2197 96.6824 10.4124 8.1672 3.0769 3.8177 4.0456 0.8739 50.2153 4.1108 54.8979 49.7608 74.1993 90.8378 70.4083 5.8739 708.1749 342.8678 342.8678 240.6659 58.6512 2.9131 129.2544 32.6442 146.2903 487.7101 107.251 54.881 243.3156 15.2257 261.0003 96.4517 186.9327 492.7904;
	3.732 50.4275 89.7542 114.3742 14.2409 26.517 14.0238 15.8942 26.5878 25.7904 47.6731 71.1188 107.069 7.3824 49.9306 18.8111 23.3397 24.7331 8.3854 61.6038 4.6746 61.873 61.4785 82.8044 91.6369 71.0458 7.8977 699.6276 362.1688 362.1688 304.6973 46.4103 27.9514 158.5684 23.1447 154.5254 428.5503 107.2854 37.1435 245.4559 13.219 294.162 149.8278 185.1799 433.0144;
	3.437 46.4411 87.1367 109.4967 14.0915 15.1951 10.8924 17.1751 26.6547 26.1995 48.4294 72.2472 108.7677 9.7303 38.4617 14.4902 17.9786 19.052 0.4444 46.3763 3.6308 35.4552 60.9033 82.7742 97.7268 71.907 7.8408 640.4636 378.2472 378.2472 254.0702 46.7064 1.4814 119.3727 30.5059 161.3855 409.7479 78.998 293.6401 261.7682 10.4233 168.5641 134.812 193.5327 414.0161;
];