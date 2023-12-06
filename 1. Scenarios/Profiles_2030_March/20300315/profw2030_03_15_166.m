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
	4.0225 54.3532 91.9647 120.5279 15.1999 35.0617 31.51 17.7802 11.6133 15.7899 29.1875 43.542 65.5522 57.5948 200.74 75.6276 93.8343 99.4363 83.9767 68.6653 10.5033 81.8106 21.3279 87.3881 102.0387 74.4459 13.6859 1282.5546 785.7172 785.7172 747.6083 116.6164 279.9224 176.7447 180.5674 335.2394 1200.9278 252.9719 460.5029 273.3179 121.3308 388.9511 220.1793 286.4897 1213.4375;
	3.9801 53.7794 93.2028 120.7127 15.3245 35.1462 31.8517 17.6455 13.6444 14.1957 26.2405 39.1456 58.9335 67.2095 200.4715 75.5265 93.7088 99.3033 87.5302 72.0203 10.6172 82.0078 28.4928 87.8283 103.9063 75.0975 13.5032 1305.6631 826.0656 826.0656 807.2809 120.7683 291.7674 185.3804 210.711 352.4546 1303.8821 259.5064 460.4802 278.3206 122.2978 389.8884 219.3988 285.22 1317.4642;
	3.9156 52.9083 90.8715 119.0674 15.0645 35.0683 32.5589 17.7695 23.5351 14.8493 27.4487 40.948 61.6471 60.6318 178.8105 67.3658 83.5835 88.5736 85.4488 70.5765 10.853 81.8261 25.2623 86.8932 103.1739 75.3793 13.0572 1267.3314 781.1391 781.1391 777.1041 120.2552 284.8293 181.6641 190.0889 333.286 1260.9419 277.9422 442.3299 276.3586 121.5954 389.0245 218.2102 269.3411 1274.0767;
	3.8423 51.9186 87.4396 117.2579 14.5116 34.3801 30.0251 17.506 27.0614 28.8859 53.3952 79.6552 119.9204 65.1846 190.5934 71.8049 89.0913 94.4102 79.3255 64.5828 10.0084 80.2203 26.0156 85.0809 100.6403 74.7238 12.797 1237.0922 774.8714 774.8714 775.0837 115.9914 264.4184 166.2363 204.3624 330.6118 1210.0691 293.6146 434.1538 269.5723 121.6397 381.3904 191.2012 263.6482 1222.674;
	3.2777 44.2887 88.0653 115.299 14.2536 31.3118 30.745 17.6718 27.2795 28.943 53.5007 79.8124 120.1572 66.4645 195.401 73.6162 91.3386 96.7917 80.0081 67.985 10.2483 73.0609 71.1341 85.3524 98.9104 72.2651 12.7826 1256.3304 774.519 774.519 794.7542 114.4131 266.6938 174.9935 208.3751 330.4614 1163.6804 313.4202 446.9988 264.9385 121.1662 347.3524 186.2945 266.0103 1175.8021;
	3.8235 51.6639 87.997 115.5092 14.3057 32.5045 17.9882 18.0031 25.8358 28.0686 51.8845 77.4014 116.5274 52.0769 194.6305 73.3259 90.9784 96.41 49.4596 70.386 5.9961 75.8438 70.7403 84.3159 99.3781 72.3333 13.2173 1235.694 770.4081 770.4081 772.9444 115.5854 164.8653 181.1736 163.2682 328.7075 1173.982 311.3907 443.7005 266.1914 115.3449 360.5829 168.0709 262.8082 1186.211;
	3.873 52.3323 91.7389 119.7155 14.7823 33.8041 12.4116 18.6431 26.4896 29.0958 53.7831 80.2338 120.7916 66.1053 200.2167 75.4305 93.5897 99.1771 85.5276 72.1657 4.1372 78.8762 73.8967 88.8936 105.1193 71.7058 13.4294 1268.0668 791.2572 791.2572 776.1744 118.8909 285.0921 185.7547 207.2491 337.6031 1183.4107 326.1408 402.405 281.5695 121.66 374.9999 185.3567 265.7453 1195.7379;
	3.8871 52.5231 91.8063 119.152 14.2261 33.3316 0.0 18.8079 5.5245 29.5213 54.5697 81.4072 122.5582 44.0219 199.806 75.2757 93.3977 98.9737 82.9029 70.8996 0.0 77.7738 74.8474 89.2377 105.5224 73.2403 13.8464 1253.8443 746.0477 746.0477 734.8434 118.5084 276.343 182.4958 138.0146 318.3137 1173.9433 315.9671 154.1292 282.6494 120.0088 369.7589 201.7167 267.9604 1186.1719;
	3.8157 51.5586 92.6661 117.2425 14.6105 31.6348 0.0 18.5612 6.0346 29.7269 54.9497 81.9742 123.4117 21.6402 197.0859 74.251 92.1262 97.6263 83.5957 71.8184 0.0 73.8146 75.7044 89.2966 104.4431 75.9249 13.8478 1140.7803 630.3674 630.3674 674.5614 114.0436 278.6523 184.8607 67.8448 268.9567 985.2907 285.0314 0.0 279.7583 118.9668 350.9355 177.8795 268.0456 995.5542;
	3.7536 50.7193 90.5943 116.5004 14.4743 29.7306 0.0 18.6573 0.1681 25.321 46.8055 69.8246 105.1205 19.4974 192.7018 72.5993 90.0769 95.4546 87.482 72.9351 0.0 69.3714 52.2635 87.1476 101.1589 76.0841 13.488 947.1479 576.5204 576.5204 540.9984 114.1074 291.6068 187.735 61.1269 245.982 802.7825 268.9017 0.0 270.9614 119.6191 329.8116 151.1717 263.8634 811.1448;
	3.6914 49.8784 93.2291 116.8357 14.5167 26.3425 0.0 18.9085 1.1512 29.4256 54.3927 81.1432 122.1606 0.0888 200.8426 75.6663 93.8823 99.4872 75.2263 72.7857 0.0 61.4658 75.1616 88.5109 103.0507 76.1234 13.982 745.511 607.9194 607.9194 482.3922 113.0269 250.7542 187.3505 0.2784 259.3789 708.1224 209.8125 0.0 276.0286 117.1282 292.2258 145.5706 267.3494 715.4987;
	3.5114 47.4473 94.559 118.3059 14.5723 19.6709 0.0 18.7348 2.8886 28.4408 52.5724 78.4277 118.0725 6.0205 201.5196 75.9213 94.1987 99.8225 37.1323 71.6593 0.0 45.8987 75.208 89.3504 104.9651 76.2883 13.935 584.951 674.1911 674.1911 495.6764 112.7509 123.7743 184.4513 18.8752 287.6549 787.6886 215.0996 5.103 281.1564 120.7493 218.2156 135.1813 270.8155 795.8937;
	3.8609 52.169 94.048 115.6306 14.8857 21.0953 0.0 18.674 25.1161 26.0197 48.097 71.7513 108.0212 53.2321 196.2399 73.9322 91.7307 97.2072 49.008 71.6489 0.0 49.2224 74.6858 87.5128 103.9007 76.141 14.1102 623.5696 647.7284 647.7284 498.5772 109.9991 163.3599 184.4244 166.8898 276.3641 602.0011 223.7638 0.0 278.3056 121.2063 234.0173 147.6606 268.1023 608.2719;
	3.8583 52.1344 90.9365 115.8366 15.059 20.9185 0.0 18.2173 16.6294 23.0518 42.6109 63.5671 95.7 37.919 197.2548 74.3146 92.2052 97.7099 50.5222 72.8648 0.0 48.8098 70.6087 85.1649 101.3106 73.8503 13.8593 499.131 674.0968 674.0968 481.2833 95.6102 168.4072 187.5541 118.8812 287.6146 687.9535 234.868 0.0 271.3677 118.6571 232.0559 164.7369 266.2437 695.1197;
	3.8951 52.6313 93.0786 115.9829 15.3084 18.796 0.0 18.0431 0.4586 25.2136 46.6069 69.5283 104.6745 33.2013 190.0964 71.6177 88.859 94.1641 68.632 70.8183 0.0 43.8572 69.399 88.0187 101.5197 73.8538 13.8292 379.5205 657.3101 657.3101 453.6152 89.7349 228.7735 182.2864 104.0905 280.4523 620.2026 239.219 0.0 271.9278 115.6512 208.5099 165.6168 250.1166 626.663;
	3.4726 46.9219 87.3156 113.9888 14.5029 9.5223 0.0 17.4589 1.7173 27.2354 50.3442 75.1037 113.0682 24.1575 185.7518 69.9809 86.8282 92.0119 58.359 72.3399 0.0 22.2187 71.1161 85.4978 99.6146 71.3493 13.402 371.4892 521.7853 521.7853 405.7925 87.1055 194.5301 186.2032 75.7369 222.6284 492.6915 222.3895 0.0 266.8249 117.9294 105.6341 145.9966 234.225 497.8237;
	3.2732 44.2285 87.0009 111.1956 14.0559 17.1685 2.0498 18.3975 3.2853 28.1672 52.0667 77.6733 116.9367 32.0284 192.8867 72.6689 90.1633 95.5462 66.4593 71.838 0.6833 40.0598 72.9939 85.0308 104.7806 72.5731 13.6149 896.2607 472.0856 472.0856 309.0418 85.9969 221.531 184.9112 100.4132 201.4232 876.3174 240.8723 95.3733 280.6623 118.1449 190.4555 127.8591 232.3113 885.4457;
	2.8909 39.0628 87.5778 109.8516 14.2681 18.3666 0.0 18.5092 0.3762 28.5055 52.692 78.6061 118.3411 50.8154 201.0665 75.7507 93.9869 99.5981 74.984 71.3874 0.0 42.8554 74.6084 83.5207 100.7719 72.6573 13.8771 1121.1751 549.0859 549.0859 221.0178 67.3948 249.9468 183.7514 159.3131 234.2766 1022.5171 208.2709 73.7594 269.9249 119.7316 203.747 154.3435 258.5803 1033.1683;
	2.0986 28.3572 87.043 109.7431 13.9924 31.2485 0.0 18.657 0.0 23.9818 44.3299 66.1315 99.5607 59.8227 192.6862 72.5934 90.0696 95.4469 46.7543 69.2865 0.0 72.9131 55.7224 84.6761 100.0931 73.185 13.8629 1153.5419 634.4994 634.4994 280.5575 61.0699 155.8475 178.3437 187.5523 270.7198 1159.6521 144.9237 212.6504 268.1066 118.2917 346.6495 139.6969 264.8682 1171.7318;
	3.5637 48.1535 87.3211 72.9046 13.9708 31.5552 0.0 17.6473 0.0 14.7465 27.2588 40.6647 61.2205 61.5674 191.6612 72.2072 89.5904 94.9391 29.878 70.817 0.0 73.6289 47.5298 84.2805 100.5583 73.5027 13.4142 1260.6744 652.235 652.235 368.2189 53.0439 99.5932 182.2832 193.0221 278.2869 1177.8903 117.1038 0.0 269.3525 117.8708 350.0526 168.8616 265.6126 1190.16;
	3.6499 49.3182 90.0799 113.3329 14.3323 32.2856 0.1959 18.6417 24.039 15.8007 29.2073 43.5716 65.5967 62.5132 192.0176 72.3415 89.7571 95.1157 55.1069 68.8111 0.0653 75.333 70.8533 84.5756 103.2561 73.4877 13.5885 1246.2589 660.7443 660.7443 619.5661 54.3553 183.6895 177.1201 195.9874 281.9176 1233.246 159.0189 27.6325 276.5787 118.2384 358.1548 173.8281 277.475 1246.0924;
	3.6751 49.659 92.5192 117.3137 14.8558 32.5368 0.0402 18.6366 27.7437 29.7417 54.9772 82.0151 123.4733 58.1292 189.4542 71.3758 88.5588 93.8459 57.5477 67.2247 0.0134 75.9192 74.5297 88.8147 103.4771 72.0708 13.5069 1265.7355 634.1835 634.1835 500.0236 78.4932 191.8256 173.0366 182.2428 270.585 1220.3822 220.3802 426.2853 277.1709 118.1868 360.9414 187.2941 270.4717 1233.0945;
	3.7594 50.7971 93.088 118.9056 15.1122 33.9679 6.885 18.7538 28.3321 30.2739 55.9608 83.4825 125.6824 65.3601 189.5808 71.4235 88.618 93.9086 61.2181 69.5186 2.295 79.2585 73.3899 86.8098 102.3973 72.1523 13.4241 1296.4689 745.471 745.471 575.9398 115.8929 204.0604 178.9411 204.9127 318.0676 1269.9307 242.9873 472.3718 274.2786 117.1109 376.8175 196.4942 275.1424 1283.1591;
	3.7263 50.3504 88.9162 115.5421 14.837 33.1889 29.0713 17.8147 27.5494 28.2506 52.2209 77.9032 117.2829 63.9313 186.0349 70.0876 86.9605 92.1522 68.7145 65.9211 9.6904 77.4409 73.2527 84.1534 100.1467 71.0712 13.0257 1266.1496 697.87 697.87 552.0488 112.0282 229.0484 169.681 200.4332 297.7579 1178.6917 231.2023 454.1216 268.25 116.0865 368.176 187.5309 271.8905 1190.9697;
];
