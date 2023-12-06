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
	3.8417 51.9103 88.854 109.6822 15.2825 34.4285 30.4052 17.9177 26.7878 29.452 54.4415 81.216 122.2703 69.2378 191.6117 72.1886 89.5673 94.9146 32.3791 71.1139 10.1351 80.3333 71.3873 88.5869 102.3746 73.3245 13.4177 1210.9735 699.8026 699.8026 639.668 113.995 107.9303 183.0473 217.0697 298.5824 1192.2783 237.5786 464.0388 274.2176 120.7184 381.9273 150.7144 268.183 1204.6978;
	3.6861 49.807 90.9288 118.6554 15.1957 33.8785 30.0544 18.4353 26.2286 28.7911 53.2199 79.3936 119.5266 69.2777 187.1542 70.5093 87.4837 92.7066 28.5316 71.9231 10.0181 79.0499 68.7966 89.1572 102.8406 72.8388 13.1731 1228.2374 699.3728 699.3728 624.4536 111.1462 95.1052 185.1302 217.1951 298.3991 1197.5637 246.6583 455.9933 275.466 121.9621 375.8259 139.9516 271.9311 1210.0383;
	3.6887 49.8424 91.5828 62.8406 15.1465 34.0427 30.375 18.2455 26.5045 28.8176 53.2688 79.4666 119.6365 69.0052 189.8037 71.5074 88.7222 94.019 33.1766 69.4036 10.125 79.433 68.4655 88.8432 103.1186 74.2407 13.3971 1273.9297 723.5276 723.5276 623.4884 115.4432 110.5887 178.6451 216.3405 308.7051 1276.6597 244.2458 451.3363 276.2106 122.0817 377.6471 142.4461 266.8505 1289.9583;
	3.783 51.1166 90.8917 81.046 15.1684 33.9724 28.8787 18.0307 27.1793 28.8031 53.242 79.4266 119.5763 66.0957 184.0422 69.3368 86.029 91.1651 41.5095 69.3617 9.6262 79.269 56.2873 87.5705 100.4616 73.5679 13.294 1310.0139 737.8542 737.8542 577.478 107.132 138.365 178.5372 207.2188 314.8178 1208.7269 255.6612 454.3393 269.0936 119.8323 376.8676 177.8667 270.7031 1221.3178;
	3.4869 47.1152 92.4632 118.3152 15.1778 33.9084 24.3059 18.0939 26.8681 30.2488 55.9144 83.4132 125.5782 67.1891 175.7466 66.2115 82.1513 87.0559 75.2213 67.4176 8.102 79.1196 57.7956 87.461 101.3671 73.4174 13.134 1231.9749 691.2175 691.2175 563.8187 104.4358 250.7376 173.5332 210.647 294.9195 1239.9902 255.6601 445.5889 271.5189 120.3775 376.1573 189.5945 270.9103 1252.9067;
	3.7612 50.8221 92.8963 118.3131 14.8553 34.4137 28.6077 18.4474 26.8977 30.5436 56.4594 84.2262 126.8022 68.133 192.2082 72.4133 89.8462 95.2101 87.5128 70.4404 9.5359 80.2987 66.5201 89.4143 104.7376 72.4405 13.538 1268.1699 719.0886 719.0886 522.9927 98.8087 291.7093 181.3138 213.6061 306.8111 1165.8633 229.1105 447.903 280.5472 116.7529 381.7628 195.5263 276.6384 1178.0077;
	3.7886 51.1928 94.0877 119.2316 15.1972 34.2682 30.365 17.8934 27.5282 30.9674 57.2428 85.3949 128.5616 68.4155 196.4274 74.0029 91.8184 97.3001 89.8318 71.3488 10.1217 79.9592 72.8977 86.7593 100.6106 74.0667 12.9669 1288.438 738.3119 738.3119 573.6496 96.3768 299.4392 183.6521 214.4918 315.0131 1170.0707 249.5699 470.4776 269.4926 118.1613 380.1487 200.5144 268.6487 1182.259;
	3.6448 49.2486 89.3843 113.5908 15.3068 33.2287 26.9612 17.8518 26.0532 30.0297 55.5094 82.8091 124.6686 65.6142 195.7631 73.7526 91.5079 96.971 87.6701 71.0451 8.9871 77.5337 73.0462 87.248 103.8251 71.9841 12.3188 1175.8993 679.8228 679.8228 537.134 84.3576 292.2336 182.8703 205.7094 290.0577 1066.1336 248.8326 439.0831 278.1029 114.0576 368.6174 191.0615 251.6233 1077.2392;
	3.8017 51.37 91.0352 117.166 15.0645 34.5835 29.5074 17.7246 27.2421 31.1159 57.5173 85.8045 129.1783 68.7693 200.1418 75.4023 93.5546 99.14 90.777 71.8541 9.8358 80.6948 73.9849 86.1314 102.5269 70.9424 12.9945 1183.3385 770.7006 770.7006 620.8039 78.8854 302.5899 184.9526 215.601 328.8323 1156.0693 287.1018 466.2512 274.6255 119.4281 383.646 175.515 267.2049 1168.1116;
	3.8452 51.957 92.9535 119.9877 15.192 34.7407 29.9445 18.6405 27.569 31.0961 57.4807 85.7499 129.0961 68.1984 199.991 75.3454 93.4842 99.0653 91.2689 71.1195 9.9815 81.0617 73.192 88.0396 105.2651 72.1092 13.4869 1153.4697 763.947 763.947 709.1332 90.5336 304.2295 183.0618 213.8112 325.9507 1125.3938 304.3181 469.6626 281.9602 120.2086 385.3906 165.8932 268.9968 1137.1166;
	3.8511 52.0362 95.0585 120.3444 15.2851 33.8954 28.3704 18.5447 27.1424 31.2052 57.6823 86.0507 129.5488 65.9645 198.5331 74.7962 92.8027 98.3431 85.352 69.3114 9.4568 79.0892 72.848 89.2484 105.2772 70.9035 13.2918 1143.4822 731.4595 731.4595 663.0823 90.412 284.5067 178.4077 206.8076 312.0894 1067.3774 301.875 470.4013 281.9924 120.7624 376.0127 163.855 263.9533 1078.4959;
	3.866 52.2384 95.2821 120.7966 15.2159 33.8237 27.2315 18.108 28.1997 31.0654 57.424 85.6653 128.9686 67.4936 197.808 74.523 92.4637 97.9839 86.1578 68.7749 9.0772 78.922 72.1724 89.4258 105.8817 70.5107 12.9285 1080.7725 728.6724 728.6724 663.1426 96.0893 287.1928 177.0267 211.6016 310.9002 1064.5941 288.0225 466.3736 283.6118 118.904 375.2176 184.8541 265.5021 1075.6836;
	3.8824 52.4594 95.1686 120.403 15.0351 34.318 30.0925 17.9618 28.1571 30.6713 56.6954 84.5783 127.3322 67.3515 197.4369 74.3832 92.2903 97.8001 84.6192 68.9207 10.0308 80.0754 69.627 88.995 105.8689 71.6445 12.8671 1057.7669 757.3447 757.3447 673.6757 106.092 282.0641 177.4021 211.1561 323.1338 1008.2921 306.3838 469.8488 283.5775 117.3364 380.7016 164.4415 260.3879 1018.7952;
	3.9087 52.8155 95.3952 120.5878 15.3593 34.5177 30.3271 18.7433 28.3999 31.1594 57.5978 85.9245 129.3589 69.4848 202.8974 76.4404 94.8428 100.505 88.8038 70.5104 10.109 80.5413 72.5725 88.4509 106.0083 74.1867 13.3006 1128.6427 768.8702 768.8702 733.5356 104.1223 296.0127 181.494 217.8442 328.0513 1092.6696 327.3854 478.1303 283.9509 119.4065 382.9164 163.0481 277.072 1104.0515;
	3.8338 51.8029 94.9655 120.4371 15.1523 34.5538 27.9726 18.4922 28.4604 31.2545 57.7734 86.1866 129.7535 69.7384 196.6714 74.0948 91.9324 97.4209 84.6055 71.2742 9.3242 80.6256 72.85 88.254 104.3649 73.2389 13.1165 1077.4929 754.241 754.241 714.6223 101.7401 282.0183 183.4601 218.6393 321.8095 973.1789 324.6696 479.129 279.5489 117.28 383.3172 179.3064 263.7845 983.3162;
	3.7893 51.2011 95.1904 120.711 15.1983 34.5249 28.458 18.7215 28.393 31.1747 57.626 85.9666 129.4222 69.5552 195.7347 73.7419 91.4946 96.957 85.7519 70.7284 9.486 80.5581 73.8919 89.4732 106.1296 74.8989 13.5218 1084.951 792.4226 792.4226 697.9691 111.1805 285.8398 182.0551 218.0649 338.1003 1060.6297 326.5047 478.0518 284.2756 117.3586 382.996 186.2368 259.0434 1071.6779;
	3.6466 49.2729 92.2122 117.3652 14.6706 33.4105 26.7103 17.9434 27.8472 30.8911 57.1018 85.1846 128.245 68.4186 191.0778 71.9875 89.3178 94.6502 86.7984 71.7204 8.9034 77.9579 72.8152 86.3366 101.8946 70.9312 12.1042 1091.5873 752.5 752.5 694.6718 107.395 289.3281 184.6086 214.5016 321.0667 1125.6842 313.36 472.106 272.932 115.9778 370.634 183.4427 226.6604 1137.4101;
	3.843 51.9278 93.6101 118.6122 15.1008 32.8514 26.6181 15.8136 27.5115 30.4963 56.372 84.0959 126.606 67.2861 189.5727 71.4204 88.6142 93.9046 81.8443 71.3588 8.8727 76.6532 73.5567 86.425 103.9527 69.0367 11.0844 1212.8024 713.4639 713.4639 671.4508 96.4229 272.8143 183.6777 210.9512 304.4113 1146.4553 302.5887 466.5596 278.4448 117.2975 364.4313 196.4333 248.917 1158.3975;
	3.6996 49.9897 90.9354 112.9239 15.1724 32.1265 26.6638 15.9374 27.6775 29.5528 54.6279 81.494 122.6888 66.1325 191.3508 72.0903 89.4454 94.7854 73.0756 70.9441 8.8879 74.9617 73.1619 86.362 103.9778 48.6997 11.8623 1221.467 725.8303 725.8303 606.9848 98.6667 243.5852 182.6102 207.3344 309.6876 1206.8803 282.803 471.2317 278.5119 116.3455 356.3896 153.7585 236.6158 1219.452;
	3.6148 48.8435 86.7324 104.5384 14.9099 25.4269 24.687 14.8448 26.409 30.4347 56.258 83.9259 126.3499 63.7849 189.2892 71.3136 88.4817 93.7642 72.5032 69.2728 8.229 59.3294 72.8829 86.7463 103.6228 49.4992 10.1308 1248.7826 730.9033 730.9033 609.788 105.6748 241.6773 178.3084 199.9742 311.8521 1242.9072 263.5831 453.0539 277.561 116.4922 282.0687 167.9276 244.303 1255.8542;
	3.6767 49.6807 86.5324 108.8635 15.1643 27.6046 29.5871 14.9065 26.8711 30.31 56.0275 83.5821 125.8323 63.6198 191.3996 72.1087 89.4682 94.8096 72.634 68.3577 9.8624 64.4108 71.9154 86.2582 101.3341 59.2078 9.815 1274.4726 738.7739 738.7739 640.2221 115.689 242.1132 175.953 199.4567 315.2102 1227.0278 285.7229 463.7421 271.4305 116.8908 306.2273 142.9969 232.1086 1239.8094;
	3.6918 49.8844 86.8479 104.5192 15.2233 29.362 27.3359 14.2539 27.1472 29.675 54.8539 81.8312 123.1964 63.006 192.9125 72.6787 90.1754 95.559 78.4654 70.1321 9.112 68.5114 71.2592 88.4799 99.9761 63.4313 10.0905 1346.4452 799.9397 799.9397 770.4688 116.3535 261.5512 180.5201 197.5323 341.3076 1227.6975 312.9125 466.8067 267.7931 115.8698 325.7226 153.3368 231.9175 1240.486;
	3.6414 49.203 86.8229 98.0641 14.9612 29.1884 29.945 12.7187 27.7971 30.6208 56.6021 84.4392 127.1228 64.7105 199.7684 75.2616 93.3801 98.9551 87.1244 70.942 9.9817 68.1063 73.7639 85.5328 97.6036 58.176 9.6656 1303.0976 808.271 808.271 797.1466 121.5329 290.4145 182.6048 202.8761 344.8623 1272.8288 320.8086 477.6705 261.4382 117.3535 323.797 171.4183 220.0539 1286.0874;
	3.6691 49.5781 85.9513 102.9404 14.9074 31.5138 28.506 12.7736 26.9988 30.2856 55.9825 83.5149 125.7313 64.6287 186.4571 70.2466 87.1579 92.3613 85.9144 67.8418 9.502 73.5322 72.1447 86.0893 98.8695 56.3572 10.1481 1267.574 773.8961 773.8961 748.8105 117.7567 286.3813 174.625 202.6196 330.1957 1199.4531 307.0104 466.64 264.8289 118.4309 349.593 183.711 230.8019 1211.9474;
];