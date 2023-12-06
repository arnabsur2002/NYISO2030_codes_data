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
	3.9008 52.7081 88.6822 117.6708 15.1293 35.6015 30.8602 7.5062 27.2148 13.8753 25.6484 38.2623 57.6037 38.5075 159.3128 60.0202 74.4695 78.9154 75.8645 67.4299 10.2867 83.0702 28.6138 40.4628 49.4079 30.1211 5.0495 1297.2238 801.8295 801.8295 657.1398 84.0715 252.8816 173.5647 120.7262 342.1139 1232.6691 197.4423 464.9439 132.3427 109.9046 394.9394 211.5387 116.4664 1245.5094;
	3.3962 45.8899 81.2246 48.2591 15.1755 29.5915 28.459 7.5232 9.6229 13.3166 24.6155 36.7215 55.2841 28.8105 162.6753 61.287 76.0413 80.581 81.7985 68.221 9.4863 69.0468 5.7105 39.8098 43.6313 28.0457 5.707 1304.6395 797.6122 797.6122 665.9623 74.8475 272.6617 175.6011 90.3248 340.3145 1250.3901 180.0204 446.4708 116.8696 114.0712 328.2682 213.8208 99.3265 1263.415;
	3.2693 44.1757 92.1042 52.9982 15.1968 24.1065 29.3742 7.0684 9.4352 14.063 25.9953 38.7799 58.3829 13.4645 184.994 69.6954 86.4739 91.6366 88.7254 64.4639 9.7914 56.2484 29.455 43.1801 43.595 30.2996 6.1651 1274.1867 792.1711 792.1711 572.8936 89.1891 295.7514 165.9302 42.2132 337.993 1219.9133 176.9704 436.0161 116.7722 29.9658 267.4209 209.5843 131.3695 1232.6207;
	3.5604 48.1091 87.6634 52.3488 14.9392 13.5745 23.0223 7.0982 9.9246 12.8241 23.7052 35.3635 53.2395 2.2173 186.2461 70.1671 87.0592 92.2568 83.5726 61.6276 7.6741 31.6739 27.6504 40.6986 37.9083 28.9528 5.3741 1286.3982 810.3093 810.3093 616.7644 97.8797 278.5754 158.6296 6.9514 345.732 1231.1025 214.7293 435.7349 101.5401 31.6018 150.587 209.3796 106.3755 1243.9265;
	3.8667 52.247 85.3174 43.9308 14.8115 22.2754 30.0289 7.0449 10.6637 11.8384 21.8831 32.6453 49.1473 25.9003 168.1137 63.3359 78.5834 83.2749 84.7701 66.2702 10.0096 51.976 4.4276 28.3876 40.2377 61.9028 5.3453 1256.9199 815.9145 815.9145 665.8393 101.4207 282.5669 170.5796 81.201 348.1235 1238.0021 230.2889 442.1384 107.7796 34.4465 247.1087 211.2388 193.8516 1250.898;
	3.8779 52.3992 94.6142 112.9536 15.0192 33.753 30.3949 7.469 10.1446 13.6068 25.1521 37.5219 56.489 16.3401 186.6872 70.3333 87.2654 92.4753 89.7566 67.963 10.1316 78.7571 44.2178 34.7859 57.3232 67.6497 5.6543 1290.0369 804.7195 804.7195 731.3696 109.1198 299.1886 174.9369 51.2283 343.347 1238.4877 240.2763 443.9952 153.5444 76.3314 374.4337 213.3407 255.6731 1251.3887;
	3.9132 52.8755 92.8443 117.2186 14.8838 34.7639 30.4284 10.4283 10.0723 12.8688 23.7878 35.4867 53.4251 31.228 195.2482 73.5586 91.2672 96.716 83.4536 70.9534 10.1428 81.1157 27.3677 50.443 98.5979 74.3519 10.9662 1189.9756 814.2205 814.2205 712.3623 113.9093 278.1787 182.6343 97.9039 347.4007 1255.2247 284.8535 444.216 264.1014 114.2409 385.6471 215.45 276.5222 1268.3;
	3.8628 52.1947 93.0278 115.2149 14.8417 34.9114 30.303 17.9348 7.7477 11.8312 21.8698 32.6255 49.1174 51.5742 188.8349 71.1425 88.2693 93.5391 76.589 60.9144 10.101 81.4599 26.5643 57.1588 102.7135 73.3843 13.444 1126.5671 791.8593 791.8593 706.3766 116.0885 255.2965 156.7939 161.692 337.86 1229.0484 302.3106 444.2369 275.1255 120.6402 387.2839 213.8136 278.7063 1241.851;
	3.7557 50.7471 94.3256 117.1883 14.6897 34.055 29.723 17.7236 8.2396 12.0492 22.2728 33.2267 50.0226 60.3099 195.8521 73.7862 91.5495 97.0151 42.5124 66.7879 9.9077 79.4617 26.6891 88.5354 104.1463 72.6706 13.2914 779.1255 809.9978 809.9978 730.6543 115.6563 141.708 171.9121 189.0796 345.5991 1173.9276 307.4413 451.0655 278.9634 122.4295 377.7836 211.8734 270.4392 1186.156;
	3.9014 52.7171 94.8576 120.7074 15.1152 34.5113 31.4354 18.1717 20.8045 11.2217 20.7431 30.9447 46.587 59.0553 191.5994 72.184 89.5616 94.9085 48.299 61.1786 10.4785 80.5264 25.7837 89.5035 104.229 74.6402 13.4359 661.0788 839.5131 839.5131 755.6843 117.126 160.9966 157.4738 185.1465 358.1923 1149.5061 282.3438 460.0627 279.1848 122.922 382.8453 216.2339 271.1889 1161.4801;
	3.827 51.7115 94.9532 120.7973 15.0882 34.7312 31.8159 18.0144 28.0144 17.5524 32.4453 48.4021 72.8691 67.5877 202.3613 76.2384 94.5921 100.2394 40.4859 70.2842 10.6053 81.0394 29.7174 86.21 104.1537 73.7546 13.0701 472.2072 818.5604 818.5604 743.3716 105.3577 134.9529 180.9117 211.8965 349.2525 974.9521 270.8633 468.564 278.983 123.2921 385.2847 214.5622 269.395 985.1078;
	3.361 45.4144 94.8016 120.303 15.2 31.9338 30.4141 18.1621 27.5136 19.044 35.2025 52.5152 79.0613 64.6357 194.6966 73.3508 91.0094 96.4428 50.4742 68.605 10.138 74.5122 33.2883 86.5663 102.6053 75.7314 13.2184 321.2385 786.7438 786.7438 682.7103 108.9482 168.2473 176.5895 202.6416 335.6773 785.4411 245.863 459.4755 274.8357 118.5118 354.2521 194.6326 267.0696 793.6228;
	2.007 27.1188 94.6261 117.4884 14.2789 17.8311 26.0471 18.6746 26.9278 25.6477 47.4093 70.7254 106.4767 63.6897 195.8925 73.8014 91.5683 97.0351 91.2089 66.3035 8.6824 41.6059 50.3948 84.9834 102.2589 75.4568 13.8911 316.4658 701.2429 701.2429 646.0997 108.4661 304.0297 170.6653 199.6759 299.197 662.6839 231.7381 436.8578 273.9079 118.7363 197.8065 169.9766 265.126 669.5868;
	2.2908 30.9541 93.0039 116.8225 14.6668 10.3258 26.4935 18.4502 27.0902 28.0703 51.8876 77.406 116.5344 60.173 199.5968 75.1969 93.2999 98.87 90.3218 68.1868 8.8312 24.0936 71.0322 84.9942 104.2595 74.3774 13.6948 285.6543 609.1017 609.1017 617.6 100.0815 301.0728 175.5129 188.6504 259.8834 479.6 207.3406 445.1262 279.2667 122.6413 114.5478 148.2461 263.185 484.5959;
	2.0828 28.143 90.3672 115.7144 12.273 0.0 21.5527 18.2203 26.99 19.9414 36.8613 54.9898 82.7869 46.4939 198.2559 74.6917 92.6731 98.2058 88.6941 71.1193 7.1842 0.0 69.7517 84.0426 101.3317 73.6737 13.6643 447.1847 487.0942 487.0942 433.5869 88.9975 295.6469 183.0613 145.7646 207.8268 408.2557 180.1709 431.4051 271.4241 120.634 0.0 113.1953 228.8792 412.5084;
	3.2656 44.1261 92.9821 86.7711 14.7523 24.4213 15.571 18.5881 22.3597 26.0668 48.1842 71.8813 108.2169 33.5488 195.638 73.7055 91.4494 96.909 87.373 69.7679 5.1903 56.9831 68.4787 88.2399 102.528 74.6071 13.8311 455.014 506.0108 506.0108 406.8715 49.1772 291.2433 179.5827 105.18 215.8979 441.4277 157.3984 407.72 274.6286 118.8257 270.9138 83.8096 254.2833 446.0259;
	3.2778 44.2907 95.1485 70.2426 15.0187 31.9745 13.3066 18.861 26.7254 27.6305 51.0746 76.1933 114.7086 40.8904 186.1067 70.1146 86.994 92.1877 85.4619 68.9647 4.4355 74.6072 72.3246 89.7603 106.266 75.5125 13.959 577.3469 604.8869 604.8869 454.6169 31.3706 284.873 177.5152 128.1969 258.0851 575.5127 120.0207 159.8267 284.6412 117.7107 354.704 118.1206 263.3806 581.5076;
	3.6171 48.8744 93.5396 66.9764 14.6253 32.8762 26.6066 18.7358 26.4519 14.468 26.7438 39.8965 60.064 47.4849 169.8489 63.9896 79.3945 84.1345 75.5785 70.2634 8.8689 76.7112 55.8808 89.211 106.1557 74.4506 13.703 691.1672 624.4583 624.4583 406.4809 25.6691 251.9283 180.8583 148.8715 266.4355 722.4891 79.0753 369.0355 284.3456 119.2796 364.7067 130.9585 251.6544 730.015;
	3.7105 50.1373 93.729 56.68 15.1568 34.26 26.1133 19.0267 26.0316 23.6662 43.7466 65.2613 98.2506 59.3736 156.7603 59.0585 73.2763 77.651 54.6498 68.7116 8.7044 79.94 54.0304 88.5723 106.56 75.4593 13.9076 1053.2175 706.3967 706.3967 479.8521 42.5378 182.1661 176.8637 186.1444 301.3959 990.5566 98.1458 423.5985 285.4285 121.6611 380.0578 169.5658 249.4297 1000.8749;
	3.6591 49.4431 67.8067 42.3076 15.2713 33.7762 0.6688 18.9716 26.31 28.8936 53.4093 79.6762 119.9521 63.2842 181.4263 68.3513 84.8063 89.8693 43.5877 69.6145 0.2229 78.8112 67.2196 83.4229 106.452 74.4069 13.8049 1201.9028 617.2187 617.2187 571.571 62.6345 145.2922 179.1878 198.4047 263.3467 1112.7888 139.5833 429.2011 285.1394 123.4779 374.6911 177.1566 230.1468 1124.3804;
	3.7376 50.5025 66.9398 65.8485 15.374 33.9497 29.4951 18.8977 5.1154 27.9541 51.6728 77.0856 116.0519 63.3675 180.6179 68.0467 84.4284 89.4689 59.7982 70.0016 9.8317 79.2161 69.3904 88.257 106.223 75.3159 13.8585 1250.6836 749.2156 749.2156 438.6778 72.0616 199.3274 180.1843 198.6656 319.6653 1147.3193 193.6131 425.9145 284.5258 122.7379 376.6158 155.8123 260.6224 1159.2706;
	3.7872 51.1738 50.5869 87.8246 15.1666 33.2717 3.4992 18.4359 27.994 30.4961 56.3715 84.0952 126.6049 66.1695 187.7127 70.7197 87.7448 92.9833 57.5291 68.5135 1.1664 77.6339 71.8617 86.741 105.5401 74.4213 13.8456 1257.401 717.4037 717.4037 537.3981 87.0434 191.7635 176.3539 207.4505 306.0922 1212.6826 211.5178 453.7326 282.6966 121.5881 369.0937 158.7111 244.1405 1225.3147;
	3.8073 51.4449 61.7781 97.3529 15.3065 33.1584 29.7786 18.4386 28.3324 30.3075 56.0229 83.5752 125.822 67.6117 191.5876 72.1795 89.5561 94.9027 51.8436 71.2032 9.9262 77.3695 71.4173 89.0058 105.1358 75.035 13.9834 1267.4738 711.8446 711.8446 574.7738 101.2981 172.8119 183.2773 211.9718 303.7204 1161.0729 232.9443 463.0403 281.6137 122.329 367.8367 158.5055 253.318 1173.1674;
	3.7874 51.1762 90.3634 105.3467 15.2141 33.6063 29.1909 18.4416 28.0885 29.4582 54.453 81.2332 122.2962 66.8593 189.1189 71.2495 88.4021 93.6798 37.8875 71.3524 9.7303 78.4147 71.0995 87.5787 104.0087 74.1492 13.721 1204.6218 692.894 692.894 602.9314 102.4481 126.2915 183.6614 209.613 295.6348 1141.9873 221.8244 459.378 278.5947 120.7082 372.8057 174.7792 266.265 1153.883;
];