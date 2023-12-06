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
	3.8328 51.7889 93.5488 113.2753 14.9574 34.2899 27.7824 18.6783 26.8197 31.0149 57.3305 85.5259 128.7588 65.0857 200.2782 75.4537 93.6184 99.2076 37.1338 73.106 9.2608 80.0097 74.496 88.3054 105.9202 73.5915 13.8774 1109.0774 657.9401 657.9401 629.4084 111.3654 123.7793 188.1751 204.0525 280.7211 1129.4674 243.4278 471.8673 283.7148 116.1554 380.389 140.7987 275.5757 1141.2327;
	3.7961 51.2943 94.0872 120.9048 15.071 34.1154 28.1935 18.8906 26.9839 29.6507 54.8088 81.764 123.0953 66.423 189.21 71.2838 88.4447 93.725 31.1244 73.1178 9.3978 79.6026 69.862 88.6521 106.3094 73.1142 13.9414 1179.0547 699.7581 699.7581 618.1185 107.0017 103.7478 188.2055 208.2451 298.5635 1190.6008 235.6524 473.1004 284.7574 121.8734 378.4535 137.214 283.1953 1203.0029;
	3.7492 50.6599 93.3308 69.6089 15.0173 33.8446 27.333 18.6367 27.2878 29.336 54.2271 80.8961 121.7887 64.9418 189.9257 71.5534 88.7792 94.0795 25.1895 71.1331 9.111 78.9708 69.7835 88.4082 105.7532 75.4491 13.8872 1125.0894 661.1782 661.1782 585.7398 111.6386 83.965 183.0969 203.6014 282.1027 1194.9953 231.166 463.8929 283.2675 121.0744 375.45 141.4734 278.7978 1207.4432;
	3.668 49.5624 92.2363 84.5606 14.8411 33.646 26.0977 18.5624 27.0765 28.8857 53.3947 79.6544 119.9193 67.3156 172.4141 64.956 80.5936 85.4051 32.7704 70.2325 8.6992 78.5074 59.6885 85.7674 103.9735 74.8184 13.7535 1211.5686 692.4217 692.4217 560.08 99.8826 109.2347 180.7787 211.0434 295.4332 1142.6436 241.177 460.907 278.5005 118.6338 373.2467 173.421 279.7322 1154.5461;
	3.4558 46.6959 91.0921 118.932 14.6734 34.1298 23.2335 18.4404 28.1968 29.2362 54.0426 80.621 121.3744 67.7009 181.0976 68.2275 84.6526 89.7065 67.2912 67.6759 7.7445 79.6363 50.1767 84.9807 103.3751 73.5187 13.4373 1175.7018 650.1094 650.1094 534.3149 102.3612 224.304 174.198 212.2515 277.38 1183.4775 230.7226 474.5643 276.8977 117.6279 378.6137 189.577 271.7543 1195.8054;
	3.7108 50.1414 92.1376 114.7345 14.831 34.4906 26.945 18.4105 27.422 29.1875 53.9527 80.4868 121.1725 68.266 179.4991 67.6252 83.9054 88.9147 84.8754 70.6235 8.9817 80.478 66.8702 86.0346 104.8889 72.5462 13.5826 1254.0871 657.8814 657.8814 512.1714 104.4478 282.9181 181.785 214.0231 280.6961 1131.8415 220.2678 468.0187 280.9525 114.5447 382.6154 200.2655 278.3371 1143.6315;
	3.7212 50.2811 93.9573 117.4365 15.168 34.7666 29.005 18.5186 28.0226 29.3781 54.3051 81.0125 121.9638 67.7624 190.3825 71.7255 88.9928 94.3058 85.9152 70.6874 9.6683 81.1221 71.0437 85.8433 105.2256 75.0392 13.7235 1241.2655 717.8255 717.8255 586.0363 102.4342 286.3841 181.9495 212.4444 306.2722 1151.9946 239.2689 476.0435 281.8542 118.259 385.6776 210.3904 277.0301 1163.9946;
	3.5984 48.6227 90.0454 115.8915 14.7131 34.3267 28.2475 17.833 28.2971 29.9863 55.4293 82.6896 124.4887 65.1999 193.9078 73.0536 90.6406 96.052 86.2826 71.2568 9.4158 80.0957 71.6571 84.4587 105.2752 72.738 13.1465 1154.8754 672.5989 672.5989 530.6228 82.0789 287.6088 183.4153 204.4104 286.9755 1089.1973 227.7868 471.9038 281.987 112.5107 380.798 200.3754 267.2357 1100.5431;
	3.6871 49.8213 93.1684 117.561 15.2064 34.8773 28.5509 17.8487 28.4102 30.675 56.7024 84.5888 127.3479 68.0039 197.9381 74.572 92.5246 98.0484 89.6991 71.5128 9.517 81.3803 73.6053 87.1785 106.1139 74.4203 13.6093 1179.7279 744.6945 744.6945 557.8485 79.8418 298.997 184.074 213.2015 317.7363 1176.2947 261.6302 462.0823 284.2336 118.3469 386.9053 183.4441 285.8452 1188.5477;
	3.6942 49.9169 88.5397 113.5273 14.8198 34.2904 28.1521 17.5736 28.1239 31.1591 57.5972 85.9236 129.3576 66.3122 201.1741 75.7912 94.0372 99.6513 90.6002 73.2333 9.384 80.0108 74.9231 85.8374 102.8909 71.7875 13.2488 1148.0341 729.6255 729.6255 621.405 93.1405 302.0008 188.5028 207.8977 311.3069 1146.7462 275.8445 453.7939 275.6007 115.7617 380.3944 165.0919 271.5397 1158.6915;
	3.7001 49.9959 91.3074 114.1815 14.4553 33.434 27.3625 18.0308 28.3025 31.4789 58.1883 86.8055 130.6851 65.6419 202.848 76.4218 94.8197 100.4805 91.3336 73.2202 9.1208 78.0127 75.6798 86.3946 102.793 74.2973 13.6861 1166.5626 737.4929 737.4929 615.3049 92.1175 304.4452 188.469 205.7962 314.6636 1125.9585 290.4151 468.2274 275.3383 115.7266 370.8946 163.1606 274.9635 1137.6873;
	3.6822 49.7541 88.4482 110.8307 14.9222 33.2888 25.9572 17.6013 27.6556 31.1147 57.515 85.8011 129.173 68.2055 199.3752 75.1134 93.1963 98.7603 91.2348 72.4787 8.6524 77.6739 75.2624 83.5663 100.527 71.7368 13.0663 1110.0654 737.1259 737.1259 631.217 97.415 304.1159 186.5604 213.8334 314.507 1144.0061 289.4826 461.8389 269.2687 112.4715 369.284 177.2611 274.7404 1155.9228;
	3.7083 50.1075 89.179 111.6295 14.6431 33.0723 29.1274 18.4487 27.4295 31.4111 58.063 86.6186 130.4038 69.1235 198.916 74.9404 92.9817 98.5328 90.2347 72.8502 9.7091 77.1687 75.5745 87.123 103.2537 74.0328 13.8402 1116.6964 759.9953 759.9953 650.1025 101.1985 300.7824 187.5167 216.7115 324.2646 1092.8497 304.9463 466.0319 276.5725 116.8602 366.8818 157.9624 270.2951 1104.2335;
	3.6636 49.5032 89.6412 110.1205 14.7732 32.9874 29.3995 18.2623 26.2619 30.9792 57.2646 85.4275 128.6106 69.196 197.2628 74.3176 92.2089 97.7139 88.5737 71.4487 9.7998 76.9706 74.0889 85.9928 100.2768 74.1323 13.9853 1075.0543 695.9809 695.9809 687.1299 92.6093 295.2458 183.9092 216.9387 296.9519 1031.5596 309.7849 466.6167 268.5987 116.376 365.9401 152.0161 273.9585 1042.305;
	3.676 49.6711 91.3973 110.43 14.3919 31.965 27.0124 18.0272 26.2947 30.6614 56.6771 84.551 127.2911 68.5971 191.504 72.148 89.517 94.8613 85.7854 71.1405 9.0041 74.585 73.0227 87.1147 100.4533 74.7999 13.4194 1073.6986 684.7864 684.7864 646.0828 94.0382 285.9512 183.1158 215.0612 292.1755 963.7542 306.3521 470.1419 269.0714 111.2041 354.5985 173.9408 263.6988 973.7933;
	3.7329 50.4396 93.7928 116.3297 14.9214 33.4091 26.9559 17.6306 26.2621 30.6895 56.7291 84.6286 127.4079 69.1202 191.3433 72.0875 89.4419 94.7817 84.1386 69.9941 8.9853 77.9546 74.3407 87.2404 101.2203 75.2992 13.6116 1029.8531 695.1409 695.1409 593.7498 94.0893 280.4621 180.165 216.701 296.5934 968.8741 276.253 475.1574 271.1257 113.7549 370.6186 185.4416 267.8796 978.9665;
	3.6252 48.9842 93.5314 118.4038 14.8466 32.9615 25.4268 17.4796 26.6484 30.8959 57.1106 85.1978 128.2648 67.2903 190.9196 71.9278 89.2438 94.5718 90.6134 70.8247 8.4756 76.9103 75.2657 88.4784 103.3839 75.6213 13.101 966.8345 681.4028 681.4028 618.5136 98.7986 302.0447 182.3029 210.9642 290.7319 991.3849 270.8234 464.9453 276.9211 117.6924 365.6534 182.2382 245.9613 1001.7119;
	3.7292 50.3892 94.3162 117.3849 14.6358 32.2595 25.3034 14.945 26.8528 29.9144 55.2964 82.4914 124.1903 67.6965 187.8418 70.7683 87.8051 93.0472 87.009 69.1642 8.4345 75.2721 73.8427 88.5561 104.1293 75.0086 12.4298 1101.7202 692.5029 692.5029 608.279 93.3576 290.0299 178.0287 212.2377 295.4679 1064.5695 263.3459 475.0869 278.9178 119.1865 357.8651 186.1938 263.7007 1075.6588;
	3.5973 48.6071 93.8414 115.6253 14.8161 32.3934 25.7847 16.8843 26.9213 30.0749 55.5931 82.9339 124.8566 68.3404 187.6491 70.6957 87.715 92.9518 85.5741 70.1255 8.5949 75.5846 75.4765 89.6667 106.3526 58.1186 13.1055 1096.8196 747.4534 747.4534 563.8289 93.7332 285.2469 180.5033 214.2563 318.9135 1130.1778 251.556 460.4516 284.8731 119.1094 359.3507 151.5777 234.0912 1141.9505;
	3.6613 49.4724 91.9433 110.5903 14.5352 27.3739 26.215 15.4107 27.1518 29.4121 54.3678 81.1061 122.1047 68.1381 184.9358 69.6735 86.4467 91.6077 87.6094 67.8781 8.7383 63.8724 75.4556 88.3911 105.6756 60.7333 11.0466 1227.5158 767.1678 767.1678 609.9724 110.5505 292.0312 174.7185 213.6223 327.3249 1252.8163 250.6732 459.7395 283.0597 115.2586 303.6676 164.6834 251.1197 1265.8664;
	3.8392 51.8765 92.6616 113.1302 14.7845 29.2846 30.2717 15.5353 27.4996 30.1748 55.7776 83.2092 125.271 68.9022 197.6654 74.4693 92.3971 97.9133 88.4625 70.8989 10.0906 68.3306 75.2016 88.0982 103.2094 66.2253 10.0922 1240.9707 769.8856 769.8856 629.4138 111.627 294.8749 182.494 216.0178 328.4845 1263.3741 278.4705 473.408 276.4538 115.5419 324.8633 157.4339 249.7392 1276.5343;
	3.5914 48.5275 86.4128 100.1632 14.4689 28.7221 27.7163 13.213 27.1256 29.2348 54.0402 80.6173 121.3689 67.9153 196.427 74.0027 91.8182 97.2999 88.8153 71.2385 9.2388 67.0181 74.0621 88.6275 102.5359 69.0125 9.6863 1228.1505 782.7165 782.7165 728.8555 116.1028 296.051 183.3681 212.9236 333.959 1157.8406 307.4515 473.0968 274.6499 110.0977 318.6234 150.1329 234.917 1169.9014;
	3.6391 49.1721 89.0091 99.124 15.0617 28.5304 28.9219 13.1987 27.4726 28.7341 53.1145 79.2364 119.29 67.6543 195.8122 73.7711 91.5308 96.9954 88.1544 69.4379 9.6406 66.571 71.0074 90.1213 102.7701 66.9636 10.2823 1143.3165 775.0952 775.0952 768.7121 115.7564 293.8482 178.7335 212.1054 330.7073 1146.9895 306.6828 466.174 275.277 112.7736 316.4975 169.2012 236.4927 1158.9373;
	3.7713 50.9591 90.0524 105.09 15.0171 32.1518 27.6629 13.3 27.3417 28.7185 53.0857 79.1934 119.2253 66.8376 187.002 70.4519 87.4125 92.6312 86.3165 67.8782 9.221 75.021 69.5365 89.2869 103.5183 64.4917 10.3325 1160.4662 744.2824 744.2824 709.5465 108.9043 287.7215 174.7187 209.545 317.5605 1127.1125 280.4191 462.1325 277.2812 113.6636 356.6711 185.2582 230.5712 1138.8532;
];
