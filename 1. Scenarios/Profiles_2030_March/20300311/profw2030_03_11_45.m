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
	3.6701 49.5912 88.5017 102.6119 14.4152 31.8583 28.3349 17.6187 27.3973 30.3617 56.1231 83.7246 126.0469 66.2034 192.3975 72.4847 89.9347 95.3039 35.1472 69.8518 9.445 74.336 72.1216 86.276 99.4605 72.8722 13.5482 1118.3876 688.2937 688.2937 603.4946 108.041 117.1573 179.7986 207.5565 293.672 1110.0711 230.854 451.6705 266.4121 115.209 353.4145 139.5506 264.108 1121.6344;
	3.5322 47.7278 89.2917 109.7831 14.4312 29.7155 28.6139 17.6317 26.7641 29.1776 53.9344 80.4595 121.1314 64.529 191.5282 72.1571 89.5283 94.8733 31.5543 72.27 9.538 69.3361 72.0246 86.0016 98.5286 72.3625 13.3914 1146.1109 686.1051 686.1051 583.2432 98.7918 105.181 186.0231 202.307 292.7382 1091.0899 227.4205 452.7359 263.9159 120.326 329.6438 131.9637 267.8579 1102.4554;
	3.5592 48.0927 89.5636 46.2446 14.5344 32.2977 26.7967 17.7311 26.0096 29.0371 53.6746 80.0719 120.5479 64.9455 184.4799 69.5017 86.2336 91.3819 9.9085 70.3921 8.9322 75.3612 70.9999 86.5202 100.6443 73.0591 13.7355 1166.1902 645.0725 645.0725 531.2774 102.2858 33.0282 181.1893 203.613 275.2309 1132.43 224.9886 437.6813 269.5831 120.7919 358.2889 126.5644 268.8802 1144.2262;
	3.4409 46.4937 87.8489 75.3672 14.3079 31.1908 26.3681 17.9254 26.1799 28.461 52.6098 78.4834 118.1564 65.0579 196.3078 73.9578 91.7625 97.2409 37.7697 72.9182 8.7894 72.7784 65.6979 84.9164 98.0724 73.5912 13.6791 1240.8169 689.4751 689.4751 533.5873 91.2397 125.8991 187.6917 203.9653 294.176 1100.2174 245.7161 448.793 262.6941 121.6557 346.0094 152.6217 268.8414 1111.678;
	3.3227 44.8966 92.0136 116.7344 14.7299 31.9902 23.729 18.5523 27.5698 29.581 54.68 81.5717 122.8058 64.3414 192.1142 72.3779 89.8022 95.1635 78.259 72.0942 7.9097 74.6439 58.5026 85.8846 102.134 75.4102 13.9152 1209.0946 626.6412 626.6412 531.0475 93.6481 260.8632 185.5706 201.719 267.3669 1129.2628 251.3268 462.9337 273.5732 122.5438 354.8784 175.3888 268.1736 1141.026;
	3.6754 49.6627 92.5222 115.1438 14.6379 33.8948 28.0707 18.6441 28.0375 30.4831 56.3475 84.0593 126.5509 66.2607 196.6743 74.0959 91.9338 97.4224 88.7721 73.0424 9.3569 79.0878 71.834 87.8518 105.0382 75.6598 14.0387 1185.7042 657.1106 657.1106 474.0074 91.351 295.9068 188.0114 207.7362 280.3672 1064.1909 219.4529 467.0827 281.3522 123.8943 376.0061 186.2617 272.8036 1075.2763;
	3.8045 51.407 92.9296 117.6118 14.6247 32.9126 28.5937 18.652 27.7658 30.6739 56.7003 84.5857 127.3432 67.224 193.4847 72.8942 90.4428 95.8424 87.2503 71.3643 9.5312 76.796 74.7763 87.9073 102.0668 76.2397 13.8913 1249.3465 704.305 704.305 540.0218 90.3626 290.8343 183.692 210.7563 300.5035 1110.6424 236.444 460.3417 273.3933 123.8286 365.1102 197.0031 267.6432 1122.2116;
	3.8267 51.7074 91.5853 117.6048 14.8523 32.7954 28.6805 18.7962 27.4921 30.6203 56.6011 84.4377 127.1205 67.821 195.7536 73.749 91.5034 96.9663 85.5386 70.4388 9.5602 76.5226 73.9062 88.2313 104.7956 75.9561 13.7599 1207.9809 679.7668 679.7668 507.5494 74.1781 285.1286 181.3095 212.6281 290.0338 1096.2801 226.3834 470.5633 280.7024 122.4097 363.8105 194.3638 263.8984 1107.6997;
	3.7738 50.9928 92.9904 116.4791 14.5795 32.0476 27.3021 18.6128 26.2578 30.9728 57.2527 85.4098 128.5839 67.8873 197.3981 74.3686 92.2721 97.7809 89.5117 69.4514 9.1007 74.7776 73.8057 88.3247 103.2436 75.6502 13.7578 1180.0809 737.8886 737.8886 572.888 74.2427 298.3722 178.768 212.8358 314.8324 1103.0248 252.88 454.1342 276.5454 122.7678 355.5143 162.2553 279.6531 1114.5146;
	3.7097 50.1261 90.6181 112.899 14.6038 32.3172 27.1293 18.5173 26.269 31.0375 57.3723 85.5883 128.8526 65.0623 201.0819 75.7564 93.9941 99.6057 91.5971 70.58 9.0431 75.4068 73.0098 88.4586 103.5161 75.7524 13.4841 1131.4931 672.4717 672.4717 565.5647 83.2955 305.3237 181.6732 203.979 286.9212 1069.9305 263.5516 456.281 277.2753 121.0974 358.5054 141.1974 273.2728 1081.0756;
	3.7842 51.1327 91.45 115.5885 14.4579 33.4048 26.5757 18.4948 27.6236 31.5739 58.3638 87.0673 131.0793 65.2036 204.8023 77.1581 95.7332 101.4486 89.4195 72.198 8.8586 77.9446 75.7551 88.6073 102.5029 75.7215 13.1904 1099.7613 713.6057 713.6057 592.5621 86.8786 298.0651 185.8378 204.422 304.4718 1001.967 285.7707 465.0503 274.5613 122.1442 370.571 160.9478 269.6199 1012.4042;
	3.7259 50.3449 91.0745 112.0898 14.2851 33.8788 26.3994 18.275 27.7851 31.3185 57.8919 86.3633 130.0194 66.5251 204.6181 77.0887 95.6471 101.3574 91.9541 71.7891 8.7998 79.0506 75.3486 86.6007 101.5312 76.0319 13.0048 1040.6719 755.0309 755.0309 619.8034 95.3201 306.5136 184.7852 208.5652 322.1465 1037.809 285.9062 466.1337 271.9585 118.4401 375.8291 175.2114 274.6782 1048.6195;
	3.6502 49.3225 88.9558 110.6794 14.2014 32.8998 27.9347 17.5642 27.2289 31.4364 58.1097 86.6883 130.5088 68.0752 202.5776 76.3199 94.6933 100.3466 92.6826 72.5002 9.3116 76.7663 75.7235 87.3861 100.3546 74.9162 12.8833 1092.0496 739.468 739.468 659.1018 104.2283 308.9419 186.6156 213.425 315.5064 954.628 304.6467 459.8508 268.807 120.0806 364.9688 150.5933 267.4282 964.5721;
	3.6997 49.9905 89.1975 111.9817 14.4657 33.1171 28.4253 17.8211 26.3072 31.4071 58.0556 86.6075 130.3872 66.5913 201.8667 76.0521 94.3609 99.9944 92.8924 73.2363 9.4751 77.2732 75.7245 86.8368 100.1853 72.455 13.0534 1080.6906 693.5324 693.5324 664.7569 94.7074 309.6415 188.5105 208.7726 295.9072 987.3422 299.9134 456.7686 268.3534 119.038 367.379 154.9256 267.0412 997.627;
	3.6886 49.841 89.2769 111.5872 14.0727 32.8594 24.9371 18.1127 26.6143 31.3882 58.0206 86.5553 130.3085 66.5606 199.8548 75.2941 93.4205 98.9978 92.5996 72.3351 8.3124 76.672 75.7528 87.5143 100.3627 72.6036 13.3574 1048.3115 722.598 722.598 676.8478 101.88 308.6653 186.1907 208.6765 308.3085 961.4261 304.7758 453.0009 268.8286 122.0411 364.5207 169.0059 249.917 971.4409;
	3.6786 49.7059 89.6265 112.1445 14.0269 32.9764 25.987 17.9657 26.3396 31.3395 57.9306 86.421 130.1063 66.2371 202.0717 76.1293 94.4568 100.096 91.4574 71.3433 8.6623 76.9448 75.6244 86.206 101.5147 73.3636 13.6003 1149.5039 747.7811 747.7811 665.2102 111.612 304.8579 183.6379 207.6624 319.0533 1096.9722 295.7544 452.0522 271.9144 118.5155 365.8177 176.2125 248.7184 1108.399;
	3.5554 48.0416 86.9024 111.3235 14.0137 32.9378 23.7089 16.8238 26.3012 31.1845 57.6441 85.9937 129.4631 63.6016 201.2679 75.8265 94.081 99.6978 90.3251 71.8516 7.903 76.8548 75.335 86.3334 98.1978 71.1638 12.4167 1114.5111 768.25 768.25 702.828 108.948 301.0835 184.9461 199.3996 327.7867 1194.3841 290.124 445.0302 263.0297 119.0684 365.3896 181.0752 229.6028 1206.8256;
	3.7381 50.5104 87.3948 110.8616 14.4925 32.6567 24.1853 14.8006 27.0142 31.1444 57.5699 85.883 129.2964 64.8141 198.9462 74.9518 92.9958 98.5478 87.5679 69.6228 8.0618 76.1989 75.5583 83.9055 99.2814 65.5366 12.3785 1210.2747 729.2469 729.2469 686.2091 98.0926 291.893 179.2092 203.2008 311.1453 1208.6152 296.3789 454.1591 265.9323 119.8031 362.2714 186.0342 245.3445 1221.205;
	3.6724 49.6221 88.6878 105.9514 14.9458 33.7517 27.6251 14.3396 27.4724 31.1766 57.6295 85.9719 129.4303 64.564 192.1375 72.3867 89.8131 95.1751 88.1134 70.8439 9.2084 78.7541 75.757 82.8374 97.8491 44.7024 11.6638 1277.3858 788.7731 788.7731 655.1213 97.7827 293.7114 182.3524 202.417 336.5432 1273.7657 278.4101 459.9846 262.0959 116.8786 374.4193 157.0598 223.398 1287.0341;
	3.6708 49.6003 86.4869 97.6243 14.455 28.7551 26.683 13.5875 27.3808 31.278 57.817 86.2516 129.8513 64.7144 189.9235 71.5526 88.7782 94.0784 89.2908 70.4445 8.8943 67.0952 75.6308 82.4395 93.4858 49.3189 10.2175 1296.7462 783.0659 783.0659 655.522 110.5319 297.6358 181.3243 202.8883 334.1081 1319.4245 277.5806 470.1683 250.4083 113.4181 318.9899 174.3923 238.315 1333.1685;
	3.6574 49.4189 85.7601 93.644 13.9503 28.9678 29.8656 13.4114 26.0759 30.4192 56.2295 83.8834 126.286 64.6328 189.0546 71.2252 88.372 93.648 86.577 69.4586 9.9552 67.5915 73.1341 81.8745 90.6315 54.3407 9.9808 1271.708 794.1693 794.1693 671.328 112.9044 288.59 178.7866 202.6327 338.8456 1296.7806 300.6907 465.5259 242.7629 114.692 321.3495 155.9392 239.1443 1310.2887;
	3.31 44.7257 78.3414 84.7405 13.7318 26.4627 28.0658 13.3104 25.8583 29.7504 54.9932 82.0391 123.5094 62.7147 189.4621 71.3787 88.5625 93.8498 86.7105 68.3329 9.3553 61.7462 69.5778 83.2474 92.1782 64.9978 10.3333 1237.5249 770.5158 770.5158 662.6711 103.1093 289.0351 175.889 196.6191 328.7534 1152.1569 273.9478 458.2415 246.9058 110.2307 293.5591 148.8205 222.6218 1164.1585;
	3.3354 45.0684 78.9903 81.9988 12.7551 26.073 31.3212 11.6777 27.1084 30.538 56.449 84.2107 126.7788 65.4571 188.2733 70.9309 88.0068 93.261 85.0876 68.0606 10.4404 60.8371 73.6984 81.6 89.3291 54.1281 9.1798 1223.8424 765.9636 765.9636 710.9264 112.9732 283.6254 175.1882 205.2169 326.8111 1144.5807 289.4303 470.1318 239.2744 111.9062 289.2369 169.8451 214.5768 1156.5034;
	3.5902 48.5115 83.5072 97.2719 13.9484 30.2103 29.2372 10.4143 27.0563 30.6033 56.5697 84.3909 127.05 64.8542 196.6539 74.0882 91.9243 97.4123 88.3671 69.7807 9.7457 70.4908 74.9975 82.7745 92.3314 51.8672 8.991 1200.6833 757.5906 757.5906 711.4426 113.0093 294.5568 179.6157 203.3267 323.2386 1171.3534 281.716 462.9484 247.3161 113.1326 335.1334 178.6026 225.2207 1183.555;
];
