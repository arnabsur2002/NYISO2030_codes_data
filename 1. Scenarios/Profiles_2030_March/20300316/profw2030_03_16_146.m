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
	3.5544 48.028 87.0586 109.8936 14.0358 31.1322 29.7264 14.6646 26.4932 29.4235 54.3889 81.1376 122.1522 65.6867 194.1817 73.1568 90.7687 96.1877 86.7064 70.0027 9.9088 72.6418 74.8141 82.3029 90.4772 69.4527 11.6764 1274.4641 788.4715 788.4715 559.4025 110.0364 289.0215 180.1872 205.9367 336.4145 1251.5316 221.0171 449.7255 242.3497 109.1065 345.36 186.1567 266.9499 1264.5684;
	3.7268 50.3579 91.3433 114.1368 14.8398 31.8583 26.8869 17.507 26.7581 29.6593 54.8248 81.7878 123.1311 66.188 178.391 67.2078 83.3874 88.3658 84.6389 68.0178 8.9623 74.336 71.7716 86.2007 97.8252 68.2347 12.9581 1256.7666 791.4057 791.4057 595.1835 104.3602 282.1298 175.0781 207.5082 337.6664 1208.5285 217.4895 451.4485 262.0317 112.4897 353.4145 185.7294 264.3685 1221.1174;
	3.7665 50.8941 93.2118 115.248 15.0797 32.8505 22.3817 17.4599 27.6287 30.8608 57.0458 85.101 128.1192 67.9013 189.5666 71.4181 88.6114 93.9016 88.9312 68.2001 7.4606 76.6511 73.5065 87.5839 98.8224 73.2665 13.1012 1253.999 818.5563 818.5563 663.2081 100.787 296.4373 175.5472 212.8797 349.2507 1284.1033 232.0524 435.1595 264.7028 114.1698 364.4211 196.4698 266.6238 1297.4794;
	3.6807 49.7343 89.3973 116.3272 15.0438 31.8969 23.7112 17.5047 26.7156 30.7204 56.7863 84.7139 127.5363 66.0892 195.0284 73.4758 91.1645 96.6071 88.6084 69.4145 7.9037 74.4262 73.6801 88.8591 101.8744 71.5316 13.1902 1261.3338 824.3926 824.3926 684.3416 100.7423 295.3615 178.673 207.1985 351.7408 1271.7294 256.8447 439.2737 272.8779 113.5122 353.8433 157.5761 268.6642 1284.9766;
	3.8316 51.7736 92.3234 117.1482 14.8626 32.0689 30.1676 17.7683 26.9145 30.9952 57.2942 85.4717 128.6771 66.9449 195.5695 73.6797 91.4174 96.8751 86.8394 71.4237 10.0559 74.8273 74.3907 88.134 102.0789 74.4113 13.0563 1325.1374 798.9243 798.9243 691.2957 107.9265 289.4645 183.8447 209.8814 340.8744 1275.3848 242.5667 456.8186 273.4257 113.2292 355.7505 187.7076 274.0748 1288.6701;
	3.889 52.5485 92.6555 118.9172 14.981 33.7922 29.2297 17.8407 27.4756 31.0735 57.4389 85.6875 129.0021 67.7206 196.9874 74.2139 92.0802 97.5775 88.4677 70.0451 9.7432 78.8484 74.6368 88.7689 100.2183 73.1704 13.2241 1317.2201 818.2809 818.2809 730.8678 115.8584 294.8922 180.2963 212.3131 349.1332 1247.2506 242.8712 447.1083 268.4418 118.4458 374.8679 181.4788 275.0957 1260.2428;
	3.8186 51.5972 93.5477 120.1336 14.8647 33.967 29.7475 18.0772 26.1512 30.6638 56.6816 84.5578 127.3014 65.4194 196.9845 74.2128 92.0788 97.5761 85.2899 71.7689 9.9158 79.2564 73.4098 89.2889 102.4515 71.8365 13.3286 1282.788 773.7666 773.7666 704.2154 110.9599 284.2997 184.7335 205.0986 330.1404 1235.504 265.4722 436.2479 274.4237 121.6139 376.8074 160.5985 262.6699 1248.3739;
	3.8211 51.631 93.3332 120.1653 15.1492 34.115 28.5217 17.773 26.5329 29.8789 55.2307 82.3934 124.0427 68.124 200.5834 75.5686 93.7611 99.3587 88.8046 70.6411 9.5072 79.6018 72.506 88.7071 102.1439 70.418 13.089 1299.7301 812.0579 812.0579 720.816 113.4603 296.0153 181.8304 213.578 346.478 1250.7119 276.3432 445.2069 273.5998 117.2473 378.4496 179.0161 266.6596 1263.7401;
	3.7782 51.0515 94.8951 120.6352 15.2501 33.7037 30.1692 19.0088 27.301 30.5176 56.4113 84.1545 126.6942 68.2827 195.9617 73.8274 91.6007 97.0694 91.1248 69.9391 10.0564 78.6421 73.4118 89.383 105.7476 74.3178 13.8013 1331.0517 797.0667 797.0667 759.098 119.5579 303.7493 180.0234 214.0754 340.0818 1259.3791 313.637 460.4849 283.2524 119.0001 373.8868 202.692 266.3763 1272.4976;
	3.6337 49.0994 92.0438 118.7925 15.1764 33.385 25.7833 18.7482 28.3479 30.466 56.3159 84.0122 126.48 67.6829 202.3565 76.2366 94.5899 100.2371 90.4683 71.2776 8.5944 77.8984 74.6266 89.0142 102.3616 73.497 13.5949 1296.6508 816.9375 816.9375 733.195 118.9578 301.561 183.4688 212.195 348.56 1249.4559 323.7272 472.8579 274.1827 120.6813 370.3512 204.2092 262.9901 1262.4711;
	3.806 51.4279 89.4187 115.6698 15.0748 33.7022 27.2479 18.6499 28.2588 31.1402 57.5621 85.8713 129.2788 66.9123 199.726 75.2456 93.3603 98.934 87.5849 72.043 9.0826 78.6384 75.5745 86.5219 100.2077 74.2121 13.8615 1289.2726 842.5621 842.5621 789.6065 123.0688 291.9498 185.4388 209.7792 359.4932 1288.2379 334.7237 473.3296 268.4135 120.1973 373.8694 206.3349 263.2094 1301.657;
	3.8479 51.9929 92.259 119.9615 15.3807 34.7463 27.7395 18.5382 28.4622 30.656 56.6671 84.5362 127.2688 69.3775 201.2234 75.8097 94.0602 99.6758 87.9912 71.1474 9.2465 81.0748 75.5566 88.7976 102.1617 72.0984 13.9387 1320.6177 840.9825 840.9825 812.0731 122.816 293.304 183.1336 217.508 358.8192 1309.865 331.3628 479.504 273.6474 122.9763 385.4527 212.3237 269.0942 1323.5095;
	3.8871 52.5229 93.6657 119.6916 15.3688 34.9178 28.644 17.9197 28.4553 30.8248 56.9792 85.0017 127.9696 69.0724 199.1828 75.041 93.1064 98.665 89.1449 71.5087 9.548 81.4748 75.4565 84.5009 99.663 71.6675 13.6091 1304.8852 843.8947 843.8947 801.4519 122.0893 297.1496 184.0637 216.5514 360.0618 1310.9216 337.5644 475.582 266.9545 117.7999 387.3546 217.6806 263.0117 1324.577;
	3.9126 52.8678 93.5835 119.6348 15.2006 34.7896 27.5049 18.2892 28.4862 30.7091 56.7654 84.6828 127.4894 65.7572 200.4253 75.5091 93.6872 99.2804 86.9423 72.2642 9.1683 81.1757 75.5402 86.0074 100.6683 71.1265 13.8789 1285.8097 795.4282 795.4282 792.1725 122.8883 289.8077 186.0081 206.1576 339.3827 1248.3884 331.695 474.1986 269.6474 118.9499 385.9323 212.0187 271.3937 1261.3925;
	3.8479 51.9942 92.2428 115.4519 14.4068 34.5395 23.8222 17.5563 28.4449 29.9418 55.3469 82.5667 124.3037 66.4536 199.8313 75.2853 93.4095 98.9862 86.7159 71.7065 7.9407 80.5923 75.4433 87.2879 99.6343 70.7138 13.3474 1291.5665 785.6612 785.6612 804.2109 122.5757 289.0529 184.5727 208.3409 335.2154 1243.2699 343.0545 461.3983 266.8775 116.9294 383.1586 205.2511 269.357 1256.2206;
	3.8227 51.653 89.5647 114.3817 14.606 34.4083 25.6238 17.735 28.2878 30.283 55.9777 83.5077 125.7204 66.8289 192.6137 72.5661 90.0357 95.411 85.9373 70.3189 8.5413 80.2861 73.9455 86.478 100.2202 65.3238 13.1206 1315.7126 776.6945 776.6945 780.9933 122.1732 286.4576 181.0009 209.5176 331.3896 1206.6213 325.1546 472.6593 268.447 117.5777 381.703 203.6535 262.7745 1219.1902;
	3.8424 51.9193 90.8163 112.3092 15.0953 33.1433 21.8975 17.2961 28.012 30.4011 56.196 83.8334 126.2106 68.5999 195.2667 73.5656 91.2758 96.7251 86.4436 68.7718 7.2992 77.3344 75.2495 86.4566 101.217 52.7938 11.9828 1279.9792 752.3608 752.3608 735.0176 118.6178 288.1452 177.0187 215.0699 321.0073 1178.8281 311.5895 463.2374 271.117 112.427 367.6699 197.9976 243.4832 1191.1076;
	3.8972 52.6594 93.1686 110.9007 15.3836 32.0808 17.7372 12.9799 27.9156 29.1298 53.846 80.3276 120.9328 66.5735 197.2211 74.3019 92.1894 97.6933 86.3327 70.916 5.9124 74.8552 75.3645 87.2892 102.1105 67.5854 9.1225 1281.8133 706.3995 706.3995 662.9817 116.4809 287.7755 182.538 208.717 301.3971 1171.4439 287.8519 449.811 273.5101 113.5385 355.883 188.6219 232.3364 1183.6465;
	3.8543 52.0806 84.9951 97.5981 15.3265 26.6369 14.1715 7.7631 26.8429 29.0374 53.6753 80.073 120.5494 63.5009 185.3252 69.8202 86.6287 91.8006 86.3269 69.3165 4.7238 62.1527 74.6751 86.2343 95.0577 57.3573 7.2349 1206.6446 669.9205 669.9205 643.4956 114.6202 287.7565 178.4209 199.0839 285.8327 1099.4726 298.096 427.887 254.6188 111.7547 295.4915 136.3876 215.1723 1110.9255;
	3.0654 41.4197 80.9193 63.3647 15.3351 25.2211 24.3947 9.0224 27.5262 30.4704 56.324 84.0243 126.4981 64.6727 185.5336 69.8987 86.7262 91.9038 87.4549 70.9899 8.1316 58.8493 75.0368 82.3116 82.1371 41.6328 7.0721 1178.9349 730.4217 730.4217 710.1698 114.738 291.5164 182.7283 202.7577 311.6466 1080.8328 302.4954 434.1361 220.0102 111.004 279.7864 120.7258 205.8222 1092.0915;
	2.5935 35.0441 77.053 65.5353 15.0054 13.7909 24.8001 9.2945 27.5525 30.8995 57.1173 85.2078 128.2799 65.2187 189.2741 71.3079 88.4746 93.7567 89.143 70.9089 8.2667 32.1788 75.0687 81.0922 71.5712 50.6776 7.951 1064.1234 728.3428 728.3428 598.5278 111.1829 297.1434 182.5197 204.4694 310.7596 1017.425 262.1986 449.5272 191.7087 109.6315 152.9874 83.928 190.6621 1028.0232;
	2.1621 29.2153 77.5472 71.7592 14.6958 15.4373 24.7732 11.3636 27.4586 29.5279 54.5819 81.4254 122.5855 65.0169 187.8865 70.7852 87.826 93.0694 86.4897 68.3259 8.2577 36.0204 72.364 81.5745 88.2732 65.3927 10.0196 1007.8954 661.2148 661.2148 562.8608 108.5683 288.299 175.8711 203.8369 282.1183 933.2956 245.9963 449.1385 236.446 116.2071 171.2515 66.6976 194.2103 943.0174;
	2.9851 40.3353 78.0558 81.3774 14.4189 18.5404 24.2106 13.4136 27.9805 30.1173 55.6714 83.0508 125.0326 67.188 181.0066 68.1932 84.61 89.6614 84.721 69.3438 8.0702 43.2608 71.5188 82.2209 87.7524 65.9049 9.8374 850.4147 715.8758 715.8758 616.2512 106.3436 282.4032 178.4912 210.6436 305.4403 955.7369 259.0383 449.5872 235.0511 116.8659 205.6744 77.7728 227.9161 965.6925;
	3.1254 42.2309 82.6186 71.4406 14.4964 22.5355 20.799 9.263 27.9604 29.1371 53.8595 80.3477 120.9631 65.5734 180.2553 67.9101 84.2589 89.2893 85.4061 68.7423 6.933 52.5827 71.335 82.6421 76.3767 64.7515 6.9031 763.5929 657.629 657.629 569.0303 107.6708 284.687 176.9429 205.5815 280.5884 807.7439 249.0436 447.2038 204.5803 113.6412 249.9934 91.5216 241.5979 816.1579;
];
