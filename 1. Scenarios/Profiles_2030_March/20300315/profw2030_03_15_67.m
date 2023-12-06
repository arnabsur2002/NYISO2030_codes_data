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
	4.017 54.2791 94.9099 120.5559 15.3515 34.896 32.121 18.8664 10.4058 16.413 30.3391 45.26 68.1387 43.8765 203.4201 76.6374 95.0871 100.7639 91.6026 69.7211 10.707 81.4239 20.1151 89.5846 106.4616 74.6393 13.9944 1273.3015 823.8709 823.8709 755.5934 120.4196 305.3419 179.4623 137.5588 351.5182 1179.5556 269.646 460.6228 285.165 123.6712 387.1125 219.0695 286.6296 1191.8426;
	3.9352 53.1738 93.9642 119.7327 15.0211 34.3792 31.8876 18.3327 10.8997 14.3637 26.5511 39.609 59.6312 57.2882 190.2537 71.677 88.9325 94.2419 88.9021 70.2441 10.6292 80.2181 26.8928 85.7013 102.8239 71.0389 13.1826 1277.6067 828.6683 828.6683 780.3626 120.8228 296.3402 180.8086 179.6063 353.5651 1251.2796 265.1512 458.7165 275.421 122.6756 381.3798 215.3564 282.4521 1264.3137;
	3.9291 53.0911 94.0458 117.8353 15.2868 34.7989 33.5001 19.0722 22.4265 15.9609 29.5035 44.0135 66.2621 55.1916 180.7945 68.1133 84.5109 89.5564 91.9021 70.9351 11.1667 81.1975 27.5434 87.3756 104.417 73.0202 13.9312 1280.3077 834.3012 834.3012 771.0227 116.9304 306.3402 182.5872 173.0331 355.9685 1292.3495 287.2595 471.809 279.6885 123.0623 386.0362 218.5888 274.7124 1305.8115;
	3.8905 52.5695 92.2811 117.6057 15.0864 33.3296 32.0948 19.0421 27.4265 29.2266 54.025 80.5946 121.3348 64.2515 199.4676 75.1482 93.2395 98.806 92.0575 66.6291 10.6983 77.7691 24.7388 84.5299 102.1789 72.0491 13.6237 1337.0834 853.5096 853.5096 804.3008 118.5778 306.8584 171.5036 201.437 364.1641 1312.4236 303.5675 470.8004 273.6934 123.5646 369.7367 186.4823 268.5479 1326.0947;
	3.377 45.6304 92.6965 116.6049 15.0801 29.0596 31.9293 18.8019 27.1457 29.5239 54.5744 81.4143 122.5688 63.3484 196.2617 73.9404 91.7409 97.218 89.408 66.0742 10.6431 67.8058 70.1567 83.9401 101.1114 71.5124 13.5221 1328.8999 851.5412 851.5412 788.6264 117.3336 298.0266 170.0752 198.6058 363.3243 1261.2438 317.4227 472.3102 270.834 122.7186 322.3679 177.2698 267.0687 1274.3818;
	3.8767 52.3831 93.2268 114.7989 15.1758 31.7075 19.5921 18.5535 25.347 29.5727 54.6646 81.5489 122.7714 50.5333 201.0905 75.7597 93.9981 99.6099 61.6796 68.1883 6.5307 73.9841 71.5947 84.1248 100.968 73.368 13.7147 1266.3498 824.4466 824.4466 786.9642 119.019 205.5987 175.5169 158.4288 351.7639 1245.4748 314.537 455.9172 270.4499 121.2838 351.7415 161.0552 268.7779 1258.4485;
	3.8474 51.9869 94.458 117.8211 15.1378 33.0102 15.0526 18.5197 25.9258 29.4071 54.3585 81.0922 122.0839 66.4632 196.3489 73.9733 91.7817 97.2612 84.3061 70.5578 5.0175 77.0238 71.9522 86.0549 102.5096 72.8549 13.6434 1286.2522 829.3736 829.3736 770.1835 116.7453 281.0204 181.6159 208.3712 353.8661 1216.1501 319.1375 441.6533 274.5792 122.5783 366.193 182.0151 270.6025 1228.8183;
	3.8574 52.1214 94.5515 119.233 14.8305 33.2817 21.4274 18.5836 3.2481 29.3157 54.1896 80.8403 121.7046 46.4301 202.1482 76.1581 94.4925 100.1339 90.4057 73.0286 7.1425 77.6572 71.4796 85.4953 102.9107 72.8561 13.7901 1293.9673 824.4417 824.4417 767.435 121.0353 301.3524 187.9758 145.5645 351.7618 1248.2806 321.3199 187.0444 275.6536 122.2992 369.2046 203.2613 275.904 1261.2836;
	3.7145 50.1908 91.3461 116.3547 14.5225 31.7822 17.7178 18.7306 2.3889 28.4981 52.6783 78.5857 118.3103 29.0924 197.1019 74.257 92.1337 97.6342 87.3141 72.1362 5.9059 74.1585 71.0026 84.7334 102.1564 73.2703 13.4932 1186.3922 710.2725 710.2725 740.1997 119.5624 291.0472 185.6787 91.2088 303.0496 1079.8178 295.5371 133.7375 273.6332 122.4114 352.5709 178.0377 276.5996 1091.0659;
	3.792 51.2384 90.379 117.4215 14.9238 30.6895 17.4244 18.931 3.7482 24.7392 45.73 68.2201 102.705 23.2292 189.3149 71.3233 88.4937 93.7769 86.9025 72.2184 5.8081 71.6088 48.3339 87.0779 102.8954 73.3613 13.6254 977.2175 629.5444 629.5444 614.8546 117.4509 289.6751 185.8904 72.8268 268.6056 836.6312 246.5994 27.6254 275.6126 122.5719 340.4488 156.6294 276.7161 845.3461;
	3.6084 48.7576 89.8914 111.9314 14.7715 26.0978 17.8852 18.4517 1.1216 28.3435 52.3926 78.1594 117.6686 15.1283 193.4815 72.893 90.4413 95.8408 80.0079 71.8381 5.9617 60.8949 72.3187 87.7583 101.2491 71.7139 13.4723 757.6008 685.1546 685.1546 573.3161 122.134 266.6929 184.9115 47.4293 292.3326 756.3137 220.2738 28.815 271.203 118.7235 289.5115 142.5401 270.9866 764.1919;
	3.4343 46.405 90.1439 112.7631 14.6526 18.1941 3.5593 18.3744 0.0195 26.6009 49.1713 73.3539 110.4339 11.69 200.9412 75.7034 93.9283 99.536 39.4984 72.443 1.1864 42.4528 71.9305 87.0479 101.7411 71.6674 13.6314 571.6388 709.4477 709.4477 529.6528 118.635 131.6614 186.4685 36.6497 302.6977 779.4741 213.7136 0.0119 272.5208 120.3201 201.8329 134.5972 269.0711 787.5936;
	3.9012 52.7133 92.0862 112.1157 15.1976 20.8881 14.9514 17.6962 25.6063 24.6302 45.5285 67.9196 102.2526 50.0662 200.4216 75.5077 93.6854 99.2786 54.8933 71.4797 4.9838 48.7388 71.9009 84.5914 100.4402 70.0155 13.5486 583.9893 734.2242 734.2242 530.8053 117.7968 182.9775 183.9889 156.9642 313.269 621.6949 232.3457 23.2531 269.0362 121.0664 231.7182 148.0804 263.8662 628.1709;
	3.794 51.2652 92.6107 113.4282 15.323 19.3685 9.927 18.095 19.6466 22.0629 40.783 60.8402 91.5946 36.905 202.3472 76.2331 94.5855 100.2324 53.2276 72.5442 3.309 45.1931 71.5488 84.6859 98.8422 71.3802 13.6432 502.5657 706.7727 706.7727 475.4537 97.8203 177.4253 186.729 115.7021 301.5564 687.6106 224.1196 56.8103 264.756 121.3406 214.8607 157.5467 262.6999 694.7732;
	3.8829 52.4663 93.4987 116.1006 15.3302 19.7787 3.284 18.142 2.0333 24.6278 45.5241 67.913 102.2427 31.7405 203.3503 76.611 95.0544 100.7293 72.919 72.7231 1.0947 46.1503 69.3539 85.092 98.1411 73.1659 13.2581 368.5706 702.3671 702.3671 458.5296 88.4088 243.0633 187.1895 99.5108 299.6766 588.1767 224.7745 9.9083 262.8778 116.2858 219.4118 171.5596 252.3398 594.3035;
	3.6528 49.3578 93.9348 119.0823 15.3307 10.8452 1.9891 18.4571 4.5968 27.5863 50.9928 76.0713 114.5249 26.557 201.1766 75.7921 94.0384 99.6526 63.4722 72.4544 0.663 25.3056 71.7738 87.7524 101.925 74.6416 13.5777 436.8256 588.5449 588.5449 425.9257 91.5076 211.574 186.4978 83.2596 251.1125 512.1174 212.7472 40.2896 273.0134 120.2765 120.3099 158.2102 249.4312 517.4519;
	3.6129 48.8182 94.0271 119.6946 15.2334 19.1338 3.5364 19.0353 7.6046 28.4688 52.6241 78.5049 118.1886 33.3141 205.2294 77.319 95.9328 101.6602 72.5636 73.4951 1.1788 44.6456 73.644 89.3307 105.9711 74.4389 13.8226 944.2999 520.2896 520.2896 315.5398 91.5711 241.8787 189.1765 104.4443 221.9902 836.7173 223.0951 119.7208 283.8512 121.8441 212.2579 132.9671 257.9608 845.4331;
	3.5015 47.3135 94.4667 119.2088 15.2502 21.528 4.0808 18.3749 2.6856 29.7918 55.0698 82.1533 123.6813 58.1594 201.8244 76.0362 94.3412 99.9735 80.0383 73.1297 1.3603 50.232 74.7665 89.5717 104.1843 72.2553 13.4929 1197.3728 605.8479 605.8479 238.2361 68.2476 266.7944 188.236 182.3376 258.4951 1015.9405 204.9349 145.5789 279.065 119.9787 238.8174 175.2289 274.7936 1026.5233;
	2.4181 32.6737 94.8418 115.9118 15.2225 33.0944 3.6592 18.47 12.2051 26.7697 49.4834 73.8196 111.135 64.2605 199.3519 75.1047 93.1854 98.7487 53.9816 71.5255 1.2197 77.2203 56.1582 89.2945 104.7945 74.2133 13.4412 1191.7037 725.5504 725.5504 324.5358 59.2185 179.9386 184.1068 201.4652 309.5682 1177.5261 139.6103 261.5796 280.6996 116.7898 367.1272 161.2374 279.1026 1189.792;
	3.6833 49.7698 93.7413 86.4639 15.3328 34.2545 0.1048 17.882 0.837 16.0381 29.6461 44.2262 66.5823 64.8311 201.7017 75.99 94.2838 99.9127 36.8297 73.211 0.0349 79.9272 46.8327 88.7819 105.1386 75.3894 13.2807 1261.3569 725.3972 725.3972 381.9892 51.0903 122.7656 188.4453 203.2542 309.5028 1180.1738 111.9007 0.0 281.6212 115.3272 379.9966 181.2397 270.0819 1192.4673;
	3.6723 49.621 91.1367 114.6263 14.7731 33.1666 0.001 18.1455 0.0107 14.9345 27.6062 41.183 62.0007 62.9988 203.2489 76.5728 95.007 100.6791 60.0119 71.656 0.0003 77.3886 65.1834 85.8842 102.1353 73.6089 13.2395 1231.9955 658.0269 658.0269 643.2295 51.7831 200.0397 184.4427 197.5096 280.7581 1240.7682 159.93 0.0 273.5766 122.0049 367.9277 186.5809 270.1579 1253.6929;
	3.5572 48.0661 88.4367 110.3788 14.4925 32.9924 0.1172 18.0136 26.1241 29.8942 55.259 82.4355 124.1062 62.0913 203.4438 76.6463 95.0981 100.7756 61.2809 71.9801 0.0391 76.9822 75.5689 88.0435 101.9906 71.6025 13.2361 1256.6397 644.5974 644.5974 522.1081 70.9895 204.2697 185.277 194.6645 275.0282 1215.9142 198.6317 408.5081 273.1891 118.1516 365.9952 184.5798 264.4455 1228.58;
	3.668 49.5625 93.6426 118.0422 15.1351 34.1852 4.558 18.4786 27.7878 30.9032 57.1242 85.218 128.2953 61.7077 197.1453 74.2734 92.154 97.6557 58.1742 70.1089 1.5193 79.7655 75.4621 89.3707 104.6988 72.9587 13.1266 1268.5844 739.0351 739.0351 591.998 98.6861 193.9141 180.4606 193.462 315.3216 1235.8407 215.7428 449.9998 280.4432 121.9335 379.2279 196.4721 269.1145 1248.7141;
	3.8304 51.7571 94.701 120.2294 15.3473 34.657 29.617 18.4734 27.7911 29.2036 53.9824 80.5312 121.2392 63.5908 193.3156 72.8305 90.3638 95.7587 56.4637 69.8327 9.8723 80.8663 75.0247 88.9695 105.7706 75.0759 12.9999 1294.2912 771.9399 771.9399 603.7006 109.9324 188.2125 179.7495 199.3657 329.361 1255.6151 221.3014 445.2667 283.3142 123.5845 384.4614 201.5126 273.209 1268.6944;
];