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
	3.9284 53.0813 82.0138 112.5435 14.928 36.1663 32.3356 6.1305 27.3432 11.3136 20.9131 31.1982 46.9688 41.8653 187.623 70.6859 87.7029 92.9388 84.641 70.9231 10.7785 84.388 29.7409 13.1156 41.0925 19.7739 4.5522 1242.1783 812.335 812.335 737.1841 88.6635 282.1366 182.5563 131.2532 346.5963 1294.25 227.2962 476.3596 110.0692 120.2443 401.2049 215.0369 115.8627 1307.7318;
	3.4957 47.2352 77.5267 45.3534 15.0651 31.0311 31.8649 6.9874 11.2711 13.2696 24.5286 36.5918 55.0888 40.1446 189.5942 71.4285 88.6243 93.9153 84.2989 72.5931 10.6216 72.4059 28.3661 27.08 38.6195 21.8728 5.2702 1295.1281 841.507 841.507 765.467 78.3452 280.9962 186.8549 125.8589 359.043 1330.6726 213.7943 474.8489 103.4451 120.3899 344.2383 217.0589 101.4113 1344.5338;
	3.3146 44.7873 89.6303 49.3744 14.8739 27.2865 32.4565 6.4878 11.6998 13.3289 24.6383 36.7555 55.3352 40.8031 201.5997 75.9515 94.2362 99.8622 86.9343 70.1175 10.8188 63.6685 28.1623 35.7426 37.1283 18.4526 5.9663 1355.6695 851.4071 851.4071 781.1822 89.3271 289.7809 180.4827 127.9233 363.267 1347.9932 223.0556 478.0464 99.4509 37.735 302.6982 218.8923 133.6561 1362.0348;
	3.6276 49.0167 86.796 54.4066 14.6446 16.3699 32.6773 6.5463 13.7853 14.1543 26.164 39.0315 58.7617 29.9201 200.4896 75.5333 93.7172 99.3123 84.7388 68.2147 10.8924 38.1965 29.0844 27.4613 31.628 0.7503 4.4209 1318.9787 859.2113 859.2113 812.5657 97.0582 282.4625 175.5848 93.8036 366.5968 1336.5032 246.5999 477.3435 84.718 36.6834 181.5973 219.1417 115.3442 1350.4251;
	3.8417 51.9096 76.1692 43.519 14.4327 22.6459 32.5022 6.1178 12.4883 12.0726 22.3161 33.2912 50.1198 31.8015 186.9827 70.4447 87.4035 92.6217 89.7995 71.311 10.8341 52.8405 2.4576 0.0 24.6597 38.3198 4.0701 1266.1786 856.4196 856.4196 813.4088 98.6835 299.3315 183.5546 99.7021 365.4057 1308.7453 243.3356 473.8461 66.0528 37.1624 251.2188 216.9352 177.6992 1322.3781;
	3.8822 52.4568 91.8026 116.5069 14.5296 34.3546 32.514 6.5767 12.7136 13.8963 25.6872 38.3202 57.6909 30.0037 191.6796 72.2142 89.5991 94.9483 92.2768 70.309 10.838 80.1607 6.6992 9.6606 48.4274 49.613 4.8168 1238.8962 835.9072 835.9072 788.4293 105.4642 307.5895 180.9755 94.0656 356.6537 1290.4879 236.9244 477.1947 129.7162 66.2732 381.107 216.0493 235.2185 1303.9305;
	3.96 53.5078 91.933 120.2389 14.6352 35.2363 31.4919 10.0625 10.8527 13.5341 25.0176 37.3213 56.187 37.0134 199.3078 75.088 93.1648 98.7269 82.3943 73.0541 10.4973 82.2181 26.0691 49.9007 98.527 71.4515 10.7349 1162.2898 836.8049 836.8049 738.3866 107.4019 274.6477 188.0414 116.042 357.0368 1293.0901 262.7281 450.4743 263.9115 107.6999 390.8885 212.4663 279.4753 1306.5598;
	3.8916 52.5835 91.7933 119.2453 14.7177 34.7704 30.8496 17.9386 10.4113 12.5861 23.2652 34.7071 52.2514 62.7483 195.1277 73.5132 91.2109 96.6563 81.9234 62.0787 10.2832 81.1309 25.5227 57.5815 104.2141 71.133 13.541 1078.7923 827.0852 827.0852 751.7661 106.8874 273.0781 159.7907 196.7243 352.8897 1263.6711 283.9511 455.514 279.1448 118.1487 385.7193 212.8822 281.9505 1276.8344;
	3.8879 52.5339 93.9115 117.8543 14.8077 33.8247 30.6058 17.8241 9.5923 13.2519 24.496 36.5432 55.0156 68.4992 197.5451 74.424 92.3409 97.8538 52.1247 67.1447 10.2019 78.9244 30.8512 88.9925 104.2722 69.6378 13.7058 775.2255 841.1672 841.1672 730.8838 104.2824 173.7492 172.8307 214.7543 358.898 1193.4852 281.7318 465.6428 279.3005 119.0359 375.229 213.9411 277.4106 1205.9173;
	3.8888 52.5462 94.0871 118.6845 14.7068 33.9999 30.0183 17.6221 19.0943 11.3151 20.9158 31.2023 46.9749 64.7204 181.9026 68.5308 85.0289 90.1053 54.394 54.9898 10.0061 79.333 25.9213 88.8754 101.5606 69.7941 13.7973 592.9907 816.1342 816.1342 692.2169 101.5288 181.3133 141.5438 202.9071 348.2173 1074.7319 249.3339 445.9684 272.0374 114.2909 377.1718 211.7045 282.5231 1085.9271;
	3.8414 51.9064 92.258 116.3629 14.3642 33.8763 30.2125 17.9184 26.4774 16.0847 29.7323 44.3547 66.7757 68.6673 196.7494 74.1242 91.9689 97.4596 41.1451 64.2549 10.0708 79.0446 28.4325 85.8744 99.6051 70.7934 14.0757 455.6228 791.0888 791.0888 670.2554 95.3451 137.1502 165.3924 215.2811 337.5312 924.0674 253.2684 447.602 266.7994 117.465 375.8006 204.792 265.4265 933.6931;
	3.4566 46.7056 91.8848 115.7121 14.4683 32.5325 29.6068 17.9073 27.1798 20.7141 38.2897 57.1207 85.9948 67.2591 189.2964 71.3163 88.4851 93.7677 54.3966 59.6797 9.8689 75.9092 35.8296 83.5685 98.1517 72.4649 13.6378 347.4245 827.5323 827.5323 680.9715 98.3909 181.322 153.6157 210.8665 353.0804 824.329 243.2531 448.9682 262.9064 117.7367 360.8939 190.3253 261.1086 832.9158;
	2.2756 30.7485 90.7789 112.3576 14.3208 21.3082 26.2446 18.8217 27.6912 28.6063 52.8783 78.884 118.7594 68.491 190.4862 71.7645 89.0412 94.3571 91.3269 62.5795 8.7482 49.7191 61.5379 84.1234 101.0789 72.8104 14.1071 343.7654 762.8766 762.8766 612.2436 92.8377 304.4228 161.0799 214.7285 325.494 729.2298 215.6068 441.6004 270.7471 119.429 236.3787 173.6188 275.8037 736.826;
	2.203 29.7679 90.1909 109.5551 14.0106 9.9223 24.7611 18.1391 26.2609 30.9568 57.2231 85.3656 128.5175 65.5015 187.008 70.4542 87.4154 92.6342 88.7863 66.9606 8.2537 23.152 75.5276 83.6336 99.2332 73.712 13.8345 288.1823 619.906 619.906 531.3443 91.4019 295.9544 172.3569 205.3561 264.4932 477.7959 191.1941 444.3707 265.8032 117.0772 110.0711 128.3812 266.08 482.7729;
	2.1153 28.5825 88.4328 107.7278 11.1918 0.0064 20.9679 17.97 26.5214 29.2505 54.0691 80.6605 121.4339 61.5492 194.2905 73.1978 90.8195 96.2416 86.1983 70.7099 6.9893 0.0149 73.2438 83.0996 97.2955 71.8107 13.7518 427.4659 496.0536 496.0536 355.9996 72.9502 287.3278 182.0074 192.965 211.6495 423.645 168.2101 442.2272 260.6131 117.3494 0.0708 105.0716 249.373 428.0579;
	3.1942 43.161 87.9651 75.6544 11.763 22.6715 14.8469 18.4144 15.3646 28.2922 52.2977 78.0179 117.4556 34.6326 191.4922 72.1436 89.5115 94.8554 85.389 69.6929 4.949 52.9002 74.1003 85.4595 97.3209 73.4229 13.7635 462.9399 516.9093 516.9093 352.7594 39.9853 284.6301 179.3897 108.5778 220.548 474.0229 153.4474 428.0286 260.681 118.7348 251.5025 67.9507 269.9962 478.9607;
	3.3595 45.3942 90.0755 59.297 13.9497 27.0701 13.6909 18.5126 26.6621 27.8375 51.4571 76.7639 115.5677 48.5767 190.598 71.8067 89.0935 94.4125 85.1753 70.7752 4.5636 63.1636 74.9546 87.1431 101.7214 73.7963 13.9177 574.4179 558.5923 558.5923 348.9596 26.9889 283.9178 182.1756 152.2944 238.3327 585.782 112.9675 176.3259 272.4679 120.6506 300.2976 100.6585 267.6186 591.8839;
	3.5822 48.4033 89.9161 58.1623 14.0574 27.8634 27.6536 18.5486 25.7961 12.3507 22.8301 34.058 51.2741 54.0148 176.9799 66.6761 82.7278 87.6668 72.0601 71.5457 9.2179 65.0145 53.4318 88.5521 102.1696 73.8831 13.4947 674.3496 594.0992 594.0992 369.1668 26.858 240.2002 184.1587 169.3438 253.4823 770.9337 80.8421 401.8941 273.6687 121.6948 309.0977 107.0188 262.6005 778.9642;
	3.8349 51.8177 92.5273 56.0264 14.3872 32.2181 27.5117 19.027 26.5208 22.3425 41.2997 61.611 92.7551 62.0365 156.0165 58.7783 72.9287 77.2826 47.9896 70.6604 9.1706 75.1755 58.9663 88.2196 104.6559 75.0053 13.9872 1052.0567 657.6767 657.6767 439.6067 41.808 159.9655 181.8802 194.493 280.6087 1021.2706 89.0884 444.1719 280.3283 119.9525 357.4059 146.6835 252.849 1031.9089;
	3.635 49.117 66.4909 39.0642 14.306 31.7808 0.3355 19.0072 25.9019 24.6682 45.5987 68.0243 102.4102 60.5896 178.3096 67.1771 83.3494 88.3255 34.1046 71.4462 0.1118 74.1552 67.7963 81.0986 103.9512 73.3897 13.7908 1128.5543 563.5299 563.5299 493.9762 51.7972 113.6819 183.9028 189.9566 240.4394 1086.1362 115.4686 426.6668 278.4407 119.9617 352.5549 150.0545 236.3274 1097.4501;
	3.6585 49.4346 64.0667 62.0772 14.4083 32.5143 29.1948 18.8699 0.611 23.6218 43.6645 65.1388 98.0661 63.8082 181.9192 68.537 85.0366 90.1135 54.2561 71.2259 9.7316 75.8666 65.6863 87.4252 101.3042 74.1232 13.9316 1179.2544 692.5846 692.5846 405.3449 67.5211 180.8537 183.3357 200.0473 295.5028 1137.4689 179.5971 431.9088 271.3507 115.3623 360.6916 132.2291 256.571 1149.3175;
	3.7028 50.0336 43.3304 75.5811 14.3809 32.7465 0.0 18.6071 26.6393 25.8442 47.7726 71.2673 107.2926 65.6821 177.6368 66.9236 83.0349 87.9922 34.5596 69.5718 0.0 76.4086 62.5961 84.0603 100.6844 74.3463 13.8508 1209.4786 701.1233 701.1233 506.5666 83.0649 115.1986 179.0781 205.9222 299.1459 1186.2893 201.1069 446.377 269.6903 116.4993 363.2681 146.5412 235.8628 1198.6465;
	3.6448 49.2495 58.2907 91.5614 14.7223 32.3178 27.876 18.3739 26.5509 27.3669 50.5872 75.4662 113.614 65.3354 175.0524 65.95 81.8268 86.712 24.9975 69.1258 9.292 75.4082 62.6255 87.0383 101.8743 74.4326 13.8769 1167.502 712.5846 712.5846 561.9042 96.3623 83.325 177.9299 204.8353 304.0361 1145.6402 220.3884 446.1946 272.8776 119.1445 358.512 147.3418 252.778 1157.574;
	3.6327 49.086 85.2589 103.628 14.3902 32.8941 28.8942 18.7259 27.0563 28.3832 52.4658 78.2687 117.8331 66.2474 179.601 67.6636 83.953 88.9651 17.5517 71.1829 9.6314 76.7528 63.3807 87.0298 101.733 74.2893 14.0592 1076.9266 695.2775 695.2775 584.7778 99.5033 58.5058 183.2249 207.6945 296.6517 1136.3263 201.8659 455.6453 272.4991 117.3131 364.9048 159.2018 264.6209 1148.163;
];