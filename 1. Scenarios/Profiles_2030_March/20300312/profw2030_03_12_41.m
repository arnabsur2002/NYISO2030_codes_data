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
	3.5949 48.5748 94.2344 113.6923 14.4414 31.3893 28.4262 13.3489 27.3983 29.9386 55.341 82.5579 124.2904 65.0368 200.1625 75.4101 93.5643 99.1503 88.8703 72.6484 9.4754 73.2417 75.0758 89.8338 101.7557 61.7469 9.026 1138.3504 716.2724 716.2724 741.3357 113.9701 296.2344 186.9972 203.8993 305.6096 1120.4403 287.9677 464.4157 272.56 119.3843 348.2121 192.6815 239.7906 1132.1115;
	3.8172 51.5787 92.9017 115.9253 15.0844 32.6561 28.8937 12.1583 28.2428 27.5676 50.9583 76.0198 114.4474 67.6485 198.9788 74.9641 93.011 98.5639 89.3388 70.2748 9.6312 76.1977 74.8769 88.5461 101.1997 62.5314 7.9734 1186.4451 751.172 751.172 787.3772 115.0878 297.7959 180.8874 212.0872 320.5001 1223.5623 289.1688 474.3087 271.0707 118.6994 362.2655 207.6809 248.1197 1236.3078;
	3.5964 48.5952 92.0543 103.1618 14.983 32.6645 25.1621 10.1359 27.163 27.6546 51.1191 76.2596 114.8084 65.5034 192.6866 72.5936 90.0698 95.4471 88.6792 69.0572 8.3874 76.2172 72.5038 88.9272 94.9349 58.8702 8.0305 1158.0187 726.4031 726.4031 763.4535 113.7092 295.5974 177.7533 205.362 309.932 1159.1071 275.3123 461.3555 254.2899 117.4572 362.3582 184.2025 252.5087 1171.1811;
	3.6035 48.6905 91.6892 112.4563 14.5027 32.4924 21.9303 11.0997 26.9812 28.3419 52.3896 78.1549 117.6618 64.3979 190.7205 71.8528 89.1508 94.4732 88.7879 69.732 7.3101 75.8157 72.5399 89.6923 93.4801 51.1661 7.8638 1137.2742 767.4742 767.4742 748.8903 117.1899 295.9595 179.4902 201.8962 327.4557 1184.5742 274.2769 436.0822 250.3932 113.222 360.4493 189.6166 242.9736 1196.9135;
	3.7356 50.4762 87.6285 93.9944 15.0581 32.9187 18.3894 9.264 23.516 28.6719 52.9996 79.065 119.0319 63.4498 187.1905 70.5229 87.5007 92.7246 87.0816 68.8046 6.1298 76.8104 72.8946 89.3041 78.451 48.6939 7.2724 1142.6542 760.4223 760.4223 719.9172 113.2228 290.272 177.1031 198.9237 324.4469 1127.0398 253.1666 392.745 210.1366 115.5637 365.1785 203.0519 225.2258 1138.7798;
	3.6569 49.4122 80.2758 77.735 14.2752 30.8878 17.0988 6.1177 23.5787 28.591 52.8501 78.8419 118.6961 56.8782 185.974 70.0646 86.932 92.122 89.1992 68.912 5.6996 72.0716 69.629 83.8329 55.7261 25.9895 5.0978 1089.4236 718.5378 718.5378 649.157 92.4867 297.3308 177.3798 178.3208 306.5761 1087.0707 223.2571 337.8466 149.2662 98.9403 342.649 190.6107 173.2715 1098.3944;
	3.5732 48.2816 69.8875 62.7544 14.6811 29.9168 15.347 5.3197 18.2407 27.739 51.2752 76.4925 115.159 64.2534 181.5762 68.4078 84.8763 89.9436 88.3774 69.1627 5.1157 69.8058 67.9324 78.9391 49.1087 25.1115 4.4336 1170.3782 703.0384 703.0384 555.7474 61.3005 294.5912 178.025 201.443 299.9631 1080.7334 192.4488 287.228 131.5413 86.0457 331.8768 166.9418 128.5902 1091.9911;
	3.5637 48.1535 70.8577 67.5754 14.3929 27.0476 15.0619 5.5259 14.1167 21.6575 40.0335 59.7221 89.9112 62.0914 189.4186 71.3624 88.5422 93.8283 91.788 70.1129 5.0206 63.111 49.2577 82.5438 57.8128 18.2778 3.6165 1180.815 706.3458 706.3458 645.2145 65.6958 305.9601 180.4708 194.665 301.3742 1052.1406 196.3712 233.0086 154.8558 86.6182 300.0478 137.7201 138.2112 1063.1004;
	3.1405 42.4347 62.2686 67.7176 14.6606 23.7148 15.0589 4.0369 19.5544 21.1081 39.0179 58.2071 87.6305 63.7771 185.4308 69.86 86.6781 91.853 92.5606 68.1345 5.0196 55.3345 53.8577 82.9498 57.5062 13.0364 2.7119 1225.764 809.5767 809.5767 781.6811 89.7168 308.5353 175.3783 199.9499 345.4194 1147.9378 232.7909 228.3257 154.0344 59.4983 263.076 139.0332 156.5006 1159.8955;
	2.7078 36.5879 46.6476 57.0703 14.4917 17.8595 18.8039 2.0582 21.5003 17.9725 33.2218 49.5604 74.6129 63.9174 170.0341 64.0593 79.481 84.2262 89.4513 66.7754 6.268 41.6722 45.3533 64.4021 34.0065 3.4488 1.251 1116.6019 792.9061 792.9061 759.7855 108.0649 298.1711 171.8801 200.3897 338.3066 1110.083 220.5851 370.7556 91.089 42.3002 198.1216 124.9599 125.4058 1121.6464;
	2.25 30.4029 31.7066 38.7827 13.7953 14.1044 19.5106 0.9201 20.1399 13.9477 25.7821 38.4619 57.9041 63.3932 163.2556 61.5056 76.3125 80.8685 86.4731 67.0666 6.5035 32.9104 35.1308 43.6259 20.4646 0.3889 1.5162 1150.7301 826.8256 826.8256 757.7147 106.335 288.2435 172.6297 198.7463 352.7789 1105.9643 232.2178 419.5934 54.8158 33.6604 156.4652 93.3329 80.3322 1117.4848;
	1.711 23.1192 27.1571 26.3204 10.691 11.1972 20.0724 1.073 19.0284 14.3725 26.5673 39.6332 59.6675 58.5919 162.5207 61.2287 75.969 80.5044 77.8773 66.6347 6.6908 26.1267 41.195 35.5887 21.2178 3.1816 1.7248 992.8727 764.8269 764.8269 720.9467 104.3805 259.591 171.5178 183.6934 326.3262 975.3812 207.457 425.2374 56.8334 26.4374 124.2139 69.0499 73.3574 985.5415;
	1.2582 17.0012 25.575 24.6172 9.4288 7.8742 19.2323 1.5086 17.4184 13.0781 24.1746 36.0638 54.2938 49.5781 181.1933 68.2635 84.6973 89.7539 83.4921 71.4073 6.4108 18.3732 40.1711 34.0154 22.0304 3.6502 2.4896 1045.4646 774.8371 774.8371 724.6701 98.0307 278.307 183.8026 155.434 330.5972 997.6073 216.2614 437.4562 59.0101 30.839 87.3516 52.0782 49.8289 1007.9991;
	0.8639 11.6733 19.4142 26.9801 7.4416 7.3765 13.2535 1.0149 13.2252 14.0481 25.9677 38.7387 58.3209 57.6989 182.4388 68.7328 85.2795 90.3708 83.1697 70.7571 4.4178 17.2117 49.9823 33.0816 22.222 0.0 3.232 911.4721 713.5275 713.5275 696.2748 90.8776 277.2324 182.129 180.894 304.4384 803.8579 218.6517 420.8649 59.5232 28.8948 81.8295 35.0585 39.4606 812.2315;
	0.8751 11.8239 19.4867 0.0 6.9292 7.4017 11.0732 0.4057 12.7838 16.466 30.4372 45.4063 68.3589 56.1111 175.1431 65.9841 81.8692 86.7569 71.6964 67.8029 3.6911 17.2707 58.755 39.1768 21.6077 0.0 2.6518 836.987 652.7155 652.7155 602.3058 74.817 238.988 174.5249 175.916 278.492 719.7949 193.4418 353.4405 57.8777 27.6286 82.1098 31.7357 45.2144 727.2927;
	0.9265 12.5193 16.054 27.3321 7.2642 0.0034 6.7932 0.2687 10.8101 14.9589 27.6513 41.2503 62.1021 62.7593 179.8687 67.7645 84.0782 89.0977 71.3703 70.3318 2.2644 0.0078 57.0388 31.7988 20.2035 0.0 1.6133 807.8392 563.0516 563.0516 573.1367 77.7509 237.901 181.0342 196.7589 240.2353 582.9215 189.7557 267.4329 54.1165 26.928 0.0373 0.0822 7.4517 588.9936;
	0.5535 7.4784 0.0285 0.3635 6.3846 0.0085 3.665 0.0 11.6166 17.831 32.9603 49.1703 74.0257 62.5874 182.0219 68.5757 85.0847 90.1644 74.2774 67.4901 1.2217 0.0198 57.8502 15.3648 8.2178 0.0 0.6463 794.6319 542.9616 542.9616 580.5835 78.9657 247.5914 173.7198 196.2198 231.6636 701.2773 189.245 252.4971 22.0119 33.9191 0.0943 0.0545 0.0 708.5823;
	1.1836 15.9925 3.5649 1.1292 3.0592 0.3226 7.5391 0.0 12.4919 20.8058 38.4592 57.3736 86.3756 66.5694 146.5285 55.2038 68.4936 72.5827 80.098 57.3869 2.513 0.7527 68.7924 32.6312 12.2287 0.0 0.4729 778.0081 563.4356 563.4356 628.9386 89.7642 266.9935 147.7141 208.704 240.3992 737.7101 207.2108 379.9719 32.7554 80.2904 3.5786 3.8713 0.0 745.3946;
	0.5022 6.7857 21.565 38.5485 5.3246 0.0 0.8644 0.8469 4.8279 24.2892 44.8982 66.9793 100.837 63.2513 136.3849 51.3822 63.752 67.5581 3.9823 64.7326 0.2881 0.0 71.1044 46.4703 21.851 4.5286 1.3991 813.2436 533.4597 533.4597 619.9281 86.2427 13.2745 166.6219 198.3014 227.6095 692.6048 191.0886 368.1772 58.5296 89.8944 0.0 0.1162 0.0208 699.8194;
	0.2826 3.8189 26.8238 53.6046 2.0545 0.1084 0.4125 0.1074 0.0895 24.1153 44.5767 66.4997 100.115 60.1801 121.5725 45.8017 56.8281 60.2208 2.9339 69.0687 0.1375 0.253 68.0287 55.3874 30.0526 11.8518 1.9532 731.3017 374.3001 374.3001 581.0367 68.5078 9.7796 177.783 188.6729 159.7014 603.8761 186.9718 111.3561 80.498 86.5154 1.2027 1.7006 0.0 610.1665;
	0.6825 9.2227 32.1677 58.3131 4.9016 0.0814 0.0 2.3318 0.0 23.5725 43.5734 65.0029 97.8615 49.3139 120.4784 45.3895 56.3167 59.6788 70.3285 69.5839 0.0 0.19 68.6848 63.9129 28.8677 9.5237 1.5232 580.8282 336.3685 336.3685 472.3166 54.0967 234.4283 179.1091 154.6056 143.5172 613.9014 176.5857 22.7274 77.3243 90.4228 0.9033 0.0076 15.5504 620.2962;
	0.5519 7.4567 43.8991 67.7727 3.5263 0.661 0.0 2.7777 0.0 22.6943 41.95 62.5812 94.2156 39.1762 146.6086 55.2339 68.531 72.6224 68.4263 69.2876 0.0 1.5424 68.2854 64.0784 37.2039 15.0239 1.2888 416.2651 339.4692 339.4692 436.3068 48.1538 228.0876 178.3465 122.8225 144.8402 660.8841 155.9967 29.3198 99.6532 79.2321 7.333 1.008 36.7413 667.7684;
	0.7892 10.6636 42.6705 64.0979 8.5193 6.1646 0.0 0.8103 0.0 18.3445 33.9095 50.5863 76.1574 21.7365 149.9304 56.4854 70.0838 74.2679 74.3023 70.1054 0.0 14.3842 48.5372 58.373 29.8278 25.7342 0.7348 410.9821 396.3537 396.3537 516.3649 53.9076 247.6744 180.4516 68.1468 169.1109 544.143 153.317 65.5212 79.896 61.7707 68.3864 93.9707 39.4114 549.8112;
	0.316 4.2703 38.8178 51.7562 3.5416 0.2503 0.0 0.2173 0.0 19.8587 36.7085 54.7618 82.4436 6.679 149.773 56.4261 70.0101 74.1899 78.887 68.3274 0.0 0.5841 65.208 48.2776 8.8349 10.4297 0.5576 288.5091 288.6877 288.6877 364.425 48.2545 262.9565 175.8748 20.9395 123.1734 372.4869 119.6626 1.1656 23.6649 57.3115 2.7769 47.3765 47.1335 376.367;
];
