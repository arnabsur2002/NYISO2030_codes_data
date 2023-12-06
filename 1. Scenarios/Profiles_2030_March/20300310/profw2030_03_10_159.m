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
	3.9104 52.8377 82.2069 112.6343 14.8894 35.3945 31.5619 7.1061 26.4044 12.9357 23.9114 35.6711 53.7026 49.7113 198.1299 74.6443 92.6142 98.1434 91.3827 73.2398 10.5206 82.5871 27.9585 29.5498 36.7772 12.5064 4.5741 1242.6255 827.536 827.536 724.3723 87.8396 304.6091 188.5194 155.8515 353.082 1270.554 209.2031 447.0101 98.5104 111.143 392.6427 216.6175 90.9433 1283.789;
	3.3689 45.521 76.143 43.226 15.1295 29.1286 31.0342 7.1699 7.9049 14.1434 26.1439 39.0015 58.7165 51.199 202.8519 76.4233 94.8215 100.4824 92.9657 73.7128 10.3447 67.9667 20.455 28.4681 34.7057 7.3764 4.8451 1280.0215 842.6227 842.6227 786.9496 80.6609 309.8857 189.7369 160.5157 359.519 1315.8211 200.7947 449.4076 92.9617 113.6849 323.1333 218.074 90.2848 1329.5276;
	3.0804 41.6234 87.4802 44.4424 15.2612 24.5353 31.3183 6.6268 5.0552 13.7001 25.3244 37.7791 56.8762 52.1331 205.1245 77.2794 95.8838 101.6082 92.7296 72.424 10.4394 57.2489 26.1257 34.3221 36.9635 7.4726 5.4828 1240.6676 840.2489 840.2489 795.2575 94.7567 309.0988 186.4196 163.4444 358.5062 1305.9486 206.8916 449.2172 99.0093 32.822 272.1777 216.4716 122.6099 1319.5522;
	3.4594 46.7445 85.5571 47.988 14.578 14.4687 31.7877 7.264 0.1678 12.7817 23.6268 35.2465 53.0634 29.5457 202.8344 76.4167 94.8133 100.4738 91.2803 71.5237 10.5959 33.7604 22.1526 33.7003 37.2355 9.649 4.9939 1209.9252 813.7509 813.7509 783.6008 97.3421 304.2676 184.1023 92.6299 347.2004 1265.6786 227.6256 436.9516 99.7381 36.6834 160.5067 209.3035 112.3122 1278.8628;
	3.6342 49.1066 84.5252 45.1111 14.9604 22.1477 32.0648 7.8376 10.0379 11.3955 21.0645 31.4241 47.3088 38.1186 191.5506 72.1656 89.5388 94.8843 90.83 71.8731 10.6883 51.6781 0.6381 30.3787 41.8624 57.0546 5.5182 1214.8232 833.9269 833.9269 802.2168 101.6624 302.7665 185.0016 119.507 355.8088 1295.5195 234.7486 456.1373 112.1314 36.8256 245.6923 206.367 206.3419 1309.0145;
	3.6947 49.923 94.5209 117.0075 14.8896 33.7221 32.0602 8.3857 1.1229 11.6114 21.4636 32.0194 48.205 29.5259 191.0534 71.9782 89.3063 94.6381 91.5776 68.3311 10.6867 78.685 0.0 34.3363 56.4009 66.4208 5.6979 1125.7803 796.2152 796.2152 777.8915 111.1872 305.2587 175.8845 92.5678 339.7185 1223.5693 239.3536 448.3629 151.074 74.2739 374.0907 205.8006 253.9822 1236.3148;
	3.9194 52.96 94.4142 119.8715 15.0951 34.6917 31.5572 12.4031 1.0959 10.285 19.0117 28.3617 42.6985 38.6791 195.7458 73.7461 91.4998 96.9625 82.6273 71.0891 10.5191 80.9473 0.6017 51.8832 100.4 74.4443 11.5201 1111.7251 791.2486 791.2486 758.766 111.0653 275.4242 182.9835 121.2641 337.5994 1252.135 284.875 436.5019 268.9286 112.6063 384.8468 210.4474 284.8179 1265.178;
	3.8762 52.3756 93.3692 119.2037 14.999 33.0858 31.4478 18.9997 2.2761 8.3624 15.4578 23.06 34.7168 62.2249 195.0345 73.4781 91.1673 96.6101 84.3288 60.0157 10.4826 77.2003 12.3174 57.8247 105.1024 74.4638 13.6697 1044.4569 785.6977 785.6977 734.8722 115.9335 281.0961 154.4806 195.0834 335.231 1226.8496 301.3256 446.2052 281.5243 118.284 367.0322 206.8696 285.1107 1239.6293;
	3.907 52.792 93.8653 118.4857 15.3038 33.526 31.2539 18.8275 4.7573 9.1809 16.9708 25.3171 38.1147 62.0159 203.0408 76.4944 94.9098 100.576 54.2595 65.1681 10.418 78.2273 24.0343 87.0789 103.3038 72.9169 13.6307 717.9674 799.2892 799.2892 724.6551 111.4766 180.8649 167.743 194.4283 341.0301 1170.6476 280.1336 453.9248 276.7065 119.7002 371.9152 213.5231 286.3827 1182.8419;
	3.8331 51.7937 91.2337 113.9301 14.9886 32.4664 30.7844 17.961 18.935 11.1406 20.5932 30.7211 46.2504 59.8548 191.8206 72.2673 89.665 95.0181 57.1171 52.9132 10.2615 75.755 23.4908 87.7158 100.3647 72.2661 13.1338 462.5904 780.742 780.742 686.032 104.141 190.3902 136.1986 187.6529 333.1166 1004.8746 240.1121 453.0419 268.8341 117.8729 360.161 203.4441 279.1288 1015.3421;
	3.8693 52.2822 89.7506 113.0756 15.1432 33.3343 30.8848 17.4994 26.4398 16.3704 30.2604 45.1425 67.9618 68.0104 199.7451 75.2528 93.3692 98.9435 42.2982 59.5492 10.2949 77.7801 27.4086 83.9294 97.9476 70.8294 12.96 388.6918 750.5034 750.5034 684.4637 97.5933 140.9939 153.2798 213.2219 320.2148 881.2408 249.5663 438.5406 262.3596 119.1055 369.7889 201.9855 274.0226 890.4204;
	3.519 47.5491 90.5675 115.267 15.3604 32.6424 29.9432 18.2317 27.2407 20.1189 37.1895 55.4795 83.524 64.3945 198.6593 74.8437 92.8617 98.4057 54.3393 62.0649 9.9811 76.1656 35.4537 86.5992 99.9768 74.55 13.0142 275.4463 762.2311 762.2311 673.6709 106.4603 181.1311 159.7553 201.8854 325.2186 744.5341 241.0386 443.9797 267.7951 119.0052 362.1131 189.395 277.5293 752.2896;
	2.286 30.8889 93.4601 115.4714 15.2556 21.6824 27.8709 18.622 27.2559 27.8091 51.4047 76.6856 115.4498 66.4872 193.2715 72.8139 90.3432 95.7368 91.0712 61.6539 9.2903 50.5923 59.3817 85.393 100.5483 74.0007 13.5503 266.7087 698.2372 698.2372 601.3972 103.5008 303.5705 158.6973 208.4463 297.9145 646.9266 215.6943 440.0112 269.3257 122.1803 240.5303 174.2402 286.3779 653.6654;
	2.4611 33.2543 90.4524 110.3454 14.9183 12.4779 26.278 18.1207 26.1512 30.2577 55.9309 83.4379 125.6153 65.6563 202.0906 76.1365 94.4656 100.1053 90.1896 67.5193 8.7593 29.115 72.5363 84.9863 99.7747 73.045 13.3811 255.5254 555.9875 555.9875 531.502 101.4904 300.6319 173.7949 205.8414 237.2213 444.3207 193.4653 456.0261 267.2536 122.2212 138.4211 140.7211 280.3026 448.949;
	2.4661 33.3231 92.1742 115.576 12.6271 2.3422 23.2286 18.3623 26.911 29.1358 53.8572 80.3443 120.9579 65.3493 202.5267 76.3008 94.6695 100.3214 89.8111 71.0826 7.7429 5.465 72.5403 85.5788 101.3443 73.5919 13.5294 431.4104 465.1988 465.1988 400.7722 88.6135 299.3703 182.9667 204.8788 198.4848 421.0243 180.2594 450.7931 271.458 120.096 25.9823 116.4185 271.6684 425.4099;
	3.6302 49.0517 94.1378 92.176 14.8244 27.681 17.6553 19.1072 22.1833 28.7066 53.0636 79.1605 119.1757 60.3107 201.0061 75.7279 93.9587 99.5681 89.2767 70.9938 5.8851 64.589 69.7356 89.4119 105.3063 75.1255 13.9109 432.6097 520.9301 520.9301 403.8168 50.3024 297.5888 182.7383 189.0823 222.2635 472.8021 167.9224 449.0294 282.0704 123.2977 307.0746 85.9578 282.7595 477.7271;
	3.2944 44.5151 90.8895 61.5594 14.8399 31.9272 14.8113 18.6139 26.8383 26.4611 48.9129 72.9684 109.8536 62.228 193.359 72.8469 90.3841 95.7801 88.0759 71.0731 4.9371 74.4969 69.602 86.9169 102.8729 73.8536 13.5698 438.7875 570.7228 570.7228 395.1966 27.1288 293.5863 182.9425 195.0932 243.5084 530.114 115.4199 178.964 275.5524 119.9575 354.1795 104.4102 273.3486 535.636;
	3.754 50.7254 90.9495 64.65 14.3205 32.6864 28.7213 19.0119 25.9613 12.3133 22.761 33.9549 51.1189 64.6702 186.659 70.3227 87.2522 92.4613 76.8843 71.961 9.5738 76.2682 48.7176 87.0941 103.6189 74.4027 13.7885 637.7675 604.3723 604.3723 391.808 28.5085 256.2812 185.2278 202.7497 257.8655 736.3246 81.571 406.9558 277.5505 121.8645 362.6007 116.1225 263.3446 743.9947;
	3.9211 52.9829 91.8794 54.9354 14.6454 32.8017 28.4618 18.7995 26.6684 22.6373 41.8446 62.4239 93.9789 66.4278 189.9843 71.5755 88.8066 94.1085 60.4111 71.9151 9.4873 76.5373 53.5075 82.4267 101.865 73.5121 13.654 984.196 719.8419 719.8419 489.0473 43.825 201.3702 185.1097 208.2602 307.1326 1019.3886 104.2041 461.2548 272.8526 119.4425 363.8802 152.1724 261.6261 1030.0072;
	3.9293 53.0938 70.6687 44.7063 15.2752 33.8921 6.6541 19.0251 26.7653 28.5849 52.8387 78.8249 118.6704 67.8193 193.8826 73.0442 90.6289 96.0395 48.4669 72.1629 2.218 79.0816 70.5895 81.6352 104.4034 73.5145 13.5997 1139.3425 625.5215 625.5215 571.8099 61.3904 161.5563 185.7474 212.6228 266.8892 1130.1509 146.6271 450.8988 279.652 120.5389 375.9765 165.2385 254.4878 1141.9233;
	3.9301 53.1045 64.9155 62.5365 15.0279 33.3008 30.7686 18.4399 5.6493 27.0779 50.053 74.6692 112.4141 64.8794 199.6714 75.225 93.3348 98.907 61.2136 72.2799 10.2562 77.7019 69.4709 86.226 102.4475 73.0929 13.4547 1232.0607 752.1245 752.1245 446.3578 76.0138 204.0452 186.0487 203.4057 320.9065 1146.0982 194.2196 453.893 274.4128 119.7464 369.417 149.5369 266.3816 1158.0367;
	3.9324 53.1357 49.0982 84.6075 15.2596 33.7923 12.0336 17.8659 27.7648 29.8371 55.1533 82.2779 123.869 65.388 204.1404 76.9087 95.4238 101.1207 55.7382 73.3923 4.0112 78.8486 72.0201 84.4475 102.9393 73.2798 13.6269 1259.1209 763.9822 763.9822 550.427 94.8145 185.7939 188.9119 205.0002 325.9657 1210.1016 226.7835 468.8544 275.7303 121.1684 374.8689 161.3483 257.7764 1222.7068;
	3.9315 53.1231 60.4923 91.5756 15.3425 33.4779 31.1728 17.9201 27.3129 29.2935 54.1486 80.779 121.6124 67.2129 203.5459 76.6847 95.1459 100.8262 48.1596 73.7916 10.3909 78.1152 62.7498 85.9834 102.3579 73.379 13.6353 1284.661 788.8545 788.8545 612.7403 115.7452 160.5321 189.9399 210.7214 336.5779 1219.3355 255.1249 468.2563 274.1731 120.6726 371.382 164.738 269.7298 1232.0369;
	3.9278 53.0726 87.7446 98.7321 15.399 32.2645 29.0347 18.2034 26.9254 28.4833 52.651 78.5449 118.2489 64.3968 198.5268 74.7938 92.7997 98.34 34.8505 73.6196 9.6782 75.2839 57.0158 86.8261 102.373 73.0111 13.4811 1248.6624 746.3859 746.3859 602.6143 119.284 116.1684 189.4972 201.8926 318.458 1193.2678 228.338 446.3737 274.2134 121.285 357.921 161.9113 272.8437 1205.6977;
];
