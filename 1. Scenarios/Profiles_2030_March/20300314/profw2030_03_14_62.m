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
	3.4582 46.7274 86.5303 110.7716 13.7468 13.329 13.8327 17.3719 26.4311 22.8364 42.2127 62.973 94.8055 5.1103 22.5201 8.4843 10.5268 11.1553 10.937 28.61 4.6109 31.1009 55.0719 82.333 90.6333 67.7973 7.921 632.5012 383.0278 383.0278 190.8525 34.82 36.4568 73.6423 16.0214 163.4252 460.9651 54.5932 296.7788 242.7677 13.446 147.8626 109.3124 220.7722 465.7668;
	3.4067 46.0323 87.5181 111.3573 13.8669 15.49 13.0877 16.91 26.4231 23.7852 43.9666 65.5896 98.7448 6.4594 14.4702 5.4516 6.764 7.1678 9.9269 16.0155 4.3626 36.1434 60.5317 84.9572 93.9029 70.7815 7.2751 681.7802 378.3691 378.3691 161.0242 29.9386 33.0896 41.2239 20.2512 161.4375 486.5919 58.347 303.0003 251.5256 12.4131 171.8359 103.8618 213.5241 491.6606;
	3.1167 42.1138 87.0216 109.8827 13.937 13.2392 11.6631 17.5189 27.0651 23.2846 43.0412 64.209 96.6663 7.6158 17.9862 6.7762 8.4075 8.9095 15.4571 23.7102 3.8877 30.8916 60.0589 84.01 95.8825 70.4485 8.4421 643.0114 342.1101 342.1101 143.827 33.1823 51.5237 61.0301 23.8765 145.967 392.0223 41.4854 234.6972 256.8281 11.4381 146.8673 85.7818 196.4642 396.1059;
	2.6174 35.3668 87.6342 108.3184 13.8575 12.2732 11.0823 17.1073 25.8992 19.4152 35.8886 53.5388 80.6023 9.3481 12.2123 4.6009 5.7086 6.0494 5.0119 19.7313 3.6941 28.6374 45.1452 84.2791 97.8085 71.9967 10.1364 500.6767 273.646 273.646 161.6388 29.827 16.7064 50.7883 29.3076 116.7556 308.4921 38.6098 180.2321 261.987 5.2982 136.1505 71.2089 192.8377 311.7056;
	2.2798 30.8044 90.8369 115.9796 13.9388 13.4088 9.9191 17.6215 16.7533 20.382 37.6758 56.2049 84.6161 14.15 12.1078 4.5615 5.6597 5.9976 18.223 17.5523 3.3064 31.2871 36.7794 88.8276 101.6826 73.2883 10.2417 400.7574 220.7324 220.7324 165.8703 29.9892 60.7433 45.1796 44.362 94.1792 194.6228 41.6899 178.7166 272.3641 13.1645 148.7478 80.0003 212.3844 196.6502;
	2.8984 39.1636 89.779 116.7485 13.9091 20.7404 11.5667 18.2459 11.3052 20.0957 37.1467 55.4155 83.4277 28.417 13.1767 4.9642 6.1593 6.527 28.7221 18.6162 3.8556 48.3943 40.8314 87.2033 100.6044 74.9837 9.0827 323.7151 204.2097 204.2097 142.6106 25.6913 95.7403 47.9182 89.0913 87.1295 161.245 39.5201 209.4426 269.4762 15.8924 230.0802 85.5661 210.7037 162.9247;
	2.3865 32.2475 90.2638 115.6941 13.7006 21.4732 11.2689 17.7431 13.554 25.8635 47.8084 71.3207 107.3729 41.5828 23.4021 8.8166 10.9391 11.5922 36.3427 32.3392 3.7563 50.1041 45.3573 87.4942 102.3629 75.5655 12.373 258.6326 224.7259 224.7259 123.1933 16.9679 121.1423 83.2411 130.3675 95.883 177.0311 29.664 157.9916 274.1863 13.9331 238.209 88.9449 231.1773 178.8751;
	1.5432 20.8514 70.2821 114.3276 14.3129 17.6448 11.4213 18.0247 18.8573 27.0947 50.0841 74.7156 112.4839 40.9032 20.4814 7.7162 9.5738 10.1454 38.3144 48.6105 3.8071 41.1712 62.8986 86.9995 101.4093 73.8751 12.8829 117.4387 171.2133 171.2133 94.0739 8.6 127.7147 125.1236 128.237 73.051 104.3496 51.8705 173.2304 271.632 10.1731 195.7396 85.479 208.3141 105.4366;
	2.7087 36.6006 84.3622 108.1081 14.2566 24.1653 10.6566 18.4418 21.2652 28.34 52.386 78.1496 117.6538 43.6785 11.8918 4.4801 5.5587 5.8906 38.5869 48.5133 3.5522 56.3858 68.6673 86.5788 102.205 74.1307 13.0108 128.0335 146.2397 146.2397 101.4275 8.0789 128.623 124.8733 136.938 62.3956 121.9866 169.6094 145.5394 273.7635 19.4965 268.0742 79.872 237.2832 123.2573;
	1.8778 25.3737 76.3128 96.8953 12.7061 13.3455 9.8148 16.7886 26.2271 29.0733 53.7416 80.1719 120.6983 43.878 0.3886 0.1464 0.1816 0.1925 47.6388 43.8541 3.2716 31.1395 68.7815 77.8001 96.1622 71.5916 11.9137 229.3634 246.0544 246.0544 122.1043 10.8078 158.796 112.8805 137.5633 104.9832 223.4946 33.0802 82.0812 257.5772 0.8931 148.0459 78.6655 207.1735 225.8227;
	1.5707 21.2238 67.4897 93.8488 11.3566 23.7496 15.1978 15.9703 27.9049 28.8932 53.4086 79.6751 119.9505 53.1077 11.2118 4.224 5.2408 5.5537 62.6171 35.753 5.0659 55.4157 67.4861 80.0849 84.4993 70.8012 11.4317 383.8708 325.0873 325.0873 193.664 14.7675 208.7238 92.0283 166.4998 138.7039 347.0482 36.4566 207.4676 226.3374 6.6887 263.4619 94.8201 174.3587 350.6633;
	1.5262 20.6218 82.393 84.6255 11.3566 26.5899 19.1259 17.3107 26.7295 29.5246 54.5758 81.4163 122.5718 53.7199 0.5645 0.2127 0.2639 0.2796 72.3367 47.0955 6.3753 62.0432 70.1738 83.7537 96.4536 70.5089 12.1739 448.8059 357.5865 357.5865 280.9949 18.1305 241.1223 121.2239 168.4191 152.5702 420.2093 42.9041 192.6301 258.3578 12.6447 294.9711 104.4381 183.7435 424.5865;
	2.7832 37.6072 88.1222 89.931 14.0823 30.0513 21.1778 17.7581 28.0301 30.0213 55.4939 82.786 124.6338 54.9586 39.5344 14.8944 18.48 19.5833 78.4471 56.7637 7.0593 70.1197 70.1123 83.5695 98.3438 73.9042 11.9989 608.0432 439.4815 439.4815 325.5858 24.5912 261.4904 146.1098 172.3027 187.5121 581.6303 54.4602 220.9601 263.421 29.6126 333.3692 140.2155 227.5561 587.6889;
	3.5071 47.3881 85.7836 102.901 14.5642 29.2906 21.2743 17.7642 27.502 30.2777 55.9679 83.4932 125.6985 42.331 62.0791 23.3879 29.0184 30.7508 82.4453 55.9489 7.0914 68.3447 64.3143 83.785 96.6925 74.5507 11.8045 727.1306 554.1738 554.1738 411.2108 27.7721 274.8177 144.0126 132.7135 236.4475 713.0222 78.0914 279.505 258.9977 15.7422 324.93 136.7598 256.8918 720.4495;
	3.7308 50.412 86.7395 106.0444 14.4733 32.3914 25.9525 17.3553 28.2877 27.061 50.0218 74.6227 112.3441 58.9915 89.642 33.7721 41.9024 44.4041 83.8169 50.7146 8.6508 75.5798 46.7822 82.4765 94.9173 70.405 12.0849 964.4364 652.2769 652.2769 525.6213 35.9477 279.3896 130.5396 184.9465 278.3048 932.5511 114.639 426.8842 254.2427 13.4938 359.3281 164.53 245.3633 942.2652;
	3.6066 48.7331 88.1518 108.867 14.7072 32.662 28.259 17.2424 28.0883 21.2064 39.1997 58.4783 88.0387 61.7751 126.5731 47.6857 59.1656 62.6978 88.8272 60.9348 9.4197 76.2113 38.4769 82.9041 94.7552 71.7974 12.2285 1022.6163 704.7155 704.7155 703.7191 44.0249 296.0908 156.8464 193.6732 300.6786 1003.8541 161.5524 368.9956 253.8084 13.5091 362.3305 169.5726 245.2217 1014.3109;
	3.7662 50.8897 89.5901 113.6448 15.2057 33.5149 30.2582 18.3941 27.7929 17.8444 32.9851 49.2073 74.0813 67.4038 151.8981 57.2267 71.0035 75.2425 88.4292 65.2093 10.0861 78.2014 3.1707 82.879 98.0383 73.9975 12.8816 1026.6087 751.2047 751.2047 775.1515 81.186 294.764 167.849 211.3201 320.514 1024.1464 216.05 394.1707 262.6025 20.1904 371.7919 208.6865 272.0866 1034.8146;
	3.855 52.0899 89.7891 115.8474 15.324 33.9871 29.5482 18.4601 26.9528 16.6905 30.852 46.0252 69.2907 66.79 166.7686 62.8291 77.9546 82.6086 87.0617 67.356 9.8494 79.3032 8.3975 83.2602 98.739 71.7773 13.4248 1165.6695 775.2463 775.2463 773.6498 98.2002 290.2058 173.3746 209.3957 330.7717 1101.7099 251.4744 439.2146 264.4796 109.952 377.03 201.0723 257.6357 1113.1861;
	3.7383 50.5122 87.4197 115.2653 14.5211 33.0716 30.1896 13.8879 25.7577 18.4913 34.1808 50.9911 76.7668 65.7883 162.6523 61.2783 76.0305 80.5696 86.3582 60.5024 10.0632 77.1671 26.7484 82.2783 101.1114 62.3802 13.6647 1306.6131 780.0783 780.0783 737.5811 111.8086 287.8608 155.7333 206.2552 332.8334 1154.0501 255.8814 447.2238 270.8342 118.0943 366.8743 199.7435 261.4688 1166.0715;
	3.8591 52.1453 91.7584 112.3271 14.7991 34.2892 30.7597 9.4871 26.6709 16.2079 29.96 44.6944 67.2872 67.6263 185.06 69.7203 86.5048 91.6692 86.0679 67.1485 10.2532 80.0082 22.2337 40.1857 46.6837 67.0116 11.5804 1251.2951 783.7816 783.7816 753.2419 111.919 286.8931 172.8405 212.0175 334.4135 1185.0663 268.002 451.3034 125.0457 121.646 380.3819 206.9179 239.6953 1197.4108;
	3.8587 52.1402 92.3883 119.1958 14.7983 34.1476 31.1389 19.0516 17.2189 17.7598 32.8287 48.974 73.7301 68.0324 188.3687 70.9668 88.0514 93.3082 86.8745 67.492 10.3796 79.6777 31.8713 79.2608 104.0419 73.1869 14.0426 1245.5322 797.7127 797.7127 766.9705 112.0591 289.5817 173.7247 213.2907 340.3574 1137.8689 270.4113 444.9327 278.6836 120.7551 378.8107 204.1591 264.8064 1149.7217;
	3.8226 51.6518 92.2355 122.1849 14.6223 34.6838 31.1338 17.8689 9.947 21.2583 39.2957 58.6215 88.2543 65.0328 189.1305 71.2538 88.4075 93.6856 89.3173 69.2309 10.3779 80.9288 39.4602 86.0774 105.055 72.7206 13.8061 1340.2028 806.6437 806.6437 777.5214 116.3734 297.7244 178.2004 203.8867 344.168 1235.8532 271.101 457.8522 281.3974 122.2207 384.7585 208.075 229.4856 1248.7267;
	3.8827 52.4638 92.5085 119.0029 15.0025 34.7972 31.9177 18.1159 18.9763 19.5732 36.1808 53.9747 81.2586 67.228 188.9897 71.2008 88.3417 93.6158 87.4468 66.9191 10.6392 81.1936 45.2252 83.1787 88.7347 73.9868 13.9331 1272.8587 791.4636 791.4636 750.0809 115.8502 291.4892 172.2499 210.769 337.6912 1195.7414 269.3159 473.8371 237.6822 121.2355 386.0175 212.6158 253.3491 1208.197;
	3.923 53.0086 94.2823 120.5678 15.2723 35.044 33.8523 19.0289 11.2871 19.454 35.9605 53.646 80.7638 66.3491 191.4642 72.133 89.4984 94.8416 89.0722 70.0475 11.2841 81.7693 46.4756 86.9511 106.427 74.3854 13.9749 1294.6271 811.0607 811.0607 783.9993 111.5049 296.9073 180.3024 208.0134 346.0526 1201.8104 283.3163 477.7337 285.0724 123.5631 388.7545 214.2799 270.7967 1214.3292;
];
