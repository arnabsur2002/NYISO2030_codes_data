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
	3.8396 51.8813 92.605 110.3126 14.6913 32.5706 26.381 18.7014 27.7024 30.3781 56.1535 83.77 126.1153 66.0237 195.8167 73.7728 91.5329 96.9976 34.5033 71.6259 8.7937 75.998 74.8241 87.7401 102.4031 75.6231 14.1461 1149.4334 654.4691 654.4691 613.5798 110.7522 115.0111 184.3653 206.9931 279.2402 1141.9456 227.9369 464.1364 274.2941 116.8802 361.3162 144.0956 273.8716 1153.8408;
	3.7699 50.9399 92.943 116.4616 14.872 32.1212 26.3065 18.9375 26.6897 29.5968 54.7092 81.6154 122.8715 67.2754 191.8544 72.28 89.6808 95.0349 31.0474 71.8839 8.7688 74.9495 74.3651 87.546 101.0337 74.5699 14.113 1092.3237 674.9558 674.9558 608.9156 111.0693 103.4912 185.0294 210.9175 287.9811 1104.8407 240.8987 460.2116 270.626 119.3462 356.3313 137.9653 278.5603 1116.3494;
	3.8406 51.895 92.6971 63.301 14.6782 33.1457 27.6558 18.6355 27.4034 29.4247 54.3911 81.1409 122.1571 64.629 194.6302 73.3258 90.9783 96.4098 32.7413 70.1521 9.2186 77.34 73.0796 86.7225 102.8604 73.0992 14.1123 1092.6293 674.6848 674.6848 600.449 114.3771 109.1378 180.5717 202.6208 287.8655 1188.9667 239.6091 469.1774 275.5189 121.1596 367.6964 132.1437 276.9338 1201.3517;
	3.8746 52.3547 93.6869 86.3823 15.0395 33.6128 28.3281 18.632 28.3445 30.0632 55.5714 82.9017 124.808 64.7847 197.5481 74.4251 92.3422 97.8552 43.3126 71.1411 9.4427 78.4299 68.3885 85.4687 100.7838 72.7729 14.0903 1129.7818 708.9386 708.9386 560.7331 102.1307 144.3753 183.1173 203.1088 302.4805 1099.8932 241.6767 476.578 269.9566 118.177 372.8782 171.2487 273.4446 1111.3504;
	3.61 48.7789 92.9398 120.0148 15.021 33.3046 22.9371 18.5779 27.3434 30.4834 56.3481 84.0602 126.5522 63.8805 192.231 72.4219 89.8568 95.2214 74.7202 70.0537 7.6457 77.7106 58.5575 86.6865 103.9742 73.3958 13.9408 1135.436 663.0764 663.0764 531.6537 102.8562 249.0672 180.3185 200.274 282.9126 1160.1631 245.2092 463.0612 278.5023 118.6995 369.4585 183.744 266.1437 1172.2481;
	3.83 51.7511 90.7146 118.7899 14.5115 33.2478 28.3137 18.2589 27.9333 30.767 56.8723 84.8423 127.7297 65.1624 196.4349 74.0057 91.8219 97.3038 88.1099 71.6364 9.4379 77.5782 71.9192 87.5625 105.4503 72.1589 13.8609 1190.1035 719.0341 719.0341 509.7008 100.751 293.6996 184.3922 204.2928 306.7879 1108.8451 223.544 477.9996 282.4562 113.7672 368.8287 186.195 274.2409 1120.3956;
	3.8209 51.6282 91.1696 119.5557 14.5107 32.8471 29.006 18.1794 27.5701 29.9345 55.3335 82.5466 124.2735 63.9481 196.8777 74.1725 92.0289 97.5232 86.9488 71.35 9.6687 76.6431 73.0617 87.4563 103.6298 73.9916 13.8514 1241.7013 707.3208 707.3208 547.0015 94.7452 289.8292 183.655 200.4859 301.7902 1128.7838 234.1103 476.0221 277.5798 115.2959 364.3833 189.9528 268.3459 1140.542;
	3.653 49.3606 87.9935 118.6101 14.4623 33.5079 27.9514 18.4161 26.5001 29.026 53.6541 80.0414 120.5019 64.9445 200.5812 75.5678 93.76 99.3577 85.007 70.8005 9.3171 78.185 73.3728 87.1914 105.0179 74.1202 13.6499 1141.4498 690.0431 690.0431 527.4574 81.8375 283.3566 182.2407 203.6098 294.4184 1094.2597 226.7612 468.0427 281.298 114.6682 371.7138 182.0213 260.527 1105.6582;
	3.7831 51.1181 92.8448 119.3282 14.3773 33.9979 26.9866 18.2433 26.3966 29.7501 54.9927 82.0383 123.5082 66.6328 201.8386 76.0415 94.3478 99.9805 85.8587 69.5996 8.9955 79.3285 72.0138 89.1891 105.8409 73.3675 13.8766 1166.2065 785.832 785.832 578.99 77.2702 286.1955 179.1495 208.9027 335.2883 1181.6047 259.583 450.2416 283.5023 118.6495 377.1506 148.0902 272.7073 1193.913;
	3.672 49.6168 90.315 115.8058 14.2411 33.946 27.5277 17.9091 25.8535 29.1647 53.9105 80.4239 121.0777 66.7587 202.5227 76.2992 94.6676 100.3194 88.8776 69.179 9.1759 79.2074 70.8356 86.5789 102.5512 71.5744 13.7556 1203.7505 768.3789 768.3789 626.0077 87.2761 296.2586 178.067 209.2975 327.8417 1177.7738 283.6581 451.836 274.6906 117.8186 376.5745 137.5447 262.2635 1190.0423;
	3.6743 49.6474 91.1801 119.3346 14.2684 33.9663 26.4874 17.7229 27.7461 30.3409 56.0847 83.6673 125.9607 67.1428 204.4289 77.0174 95.5586 101.2636 86.3331 71.2101 8.8291 79.2546 73.4977 86.0254 100.7752 70.6922 13.2478 1154.5618 766.5517 766.5517 611.3563 86.465 287.7772 183.295 210.5018 327.062 1093.0966 285.8955 474.4586 269.9337 117.8784 376.7992 157.7542 263.4125 1104.483;
	3.8012 51.3627 93.3424 120.1301 14.5234 34.7705 27.1331 17.4528 28.0095 30.5313 56.4367 84.1924 126.7513 68.1555 204.0932 76.8909 95.4017 101.0973 89.5549 70.2163 9.0444 81.1311 74.2482 85.2704 101.4116 69.1228 12.8223 1106.8059 781.9691 781.9691 620.4618 92.0051 298.5162 180.737 213.6769 333.6401 1119.6421 279.3088 478.574 271.6383 118.08 385.7204 183.1773 260.6626 1131.305;
	3.5949 48.5746 93.2633 120.8428 14.7481 34.0189 27.4841 17.9071 27.7008 30.3264 56.0579 83.6273 125.9005 68.9176 204.6472 77.0997 95.6607 101.3718 88.1709 72.127 9.1614 79.3774 73.8246 88.5901 103.8387 73.2175 13.6201 1159.1062 780.4787 780.4787 645.5286 96.7892 293.9031 185.6551 216.0659 333.0042 1070.5202 294.173 469.2541 278.1395 118.7083 377.3828 150.4356 254.4861 1081.6715;
	3.7543 50.7289 94.6534 120.8247 15.131 33.7651 28.3645 18.1752 28.0654 30.5859 56.5376 84.3429 126.9778 68.8091 204.8554 77.1781 95.758 101.4749 92.6663 72.9727 9.4548 78.7853 74.5514 89.7818 104.6945 74.6094 13.7073 1095.8848 725.9442 725.9442 663.7922 91.6594 308.8876 187.832 215.7257 309.7362 1020.1837 291.6236 467.4054 280.4317 118.7898 374.5679 148.8017 267.0912 1030.8106;
	3.5594 48.0954 93.1135 117.7548 14.3256 33.4096 25.1006 18.8617 28.0665 30.3485 56.0987 83.6883 125.9922 68.6082 200.1676 75.412 93.5667 99.1528 91.1873 72.0379 8.3669 77.9557 73.4281 89.9318 104.6596 75.889 14.0302 1034.6924 720.393 720.393 619.543 88.4664 303.9575 185.4257 215.0958 307.3677 959.7216 300.9006 453.537 280.3381 117.0048 370.6235 147.3722 249.2322 969.7187;
	3.5457 47.9103 90.5105 117.5564 14.2543 33.0769 25.4635 18.0238 26.8739 30.1566 55.7441 83.1592 125.1957 67.366 197.4109 74.3734 92.2781 97.7873 90.2826 71.5731 8.4878 77.1794 73.8602 86.8687 101.0218 74.9248 13.8437 1107.932 735.3431 735.3431 612.5786 99.9301 300.9421 184.2294 211.2014 313.7464 1032.3095 291.2466 436.041 270.5941 117.0511 366.9327 156.8638 229.0318 1043.0627;
	3.2626 44.0855 92.1373 119.5196 14.6261 33.9184 23.6162 18.1481 26.6083 30.905 57.1273 85.2228 128.3024 66.1634 191.4847 72.1407 89.508 94.8517 89.1483 71.273 7.8721 79.1429 75.1864 88.9845 104.3334 75.2983 13.229 1085.7522 710.1065 710.1065 614.6284 95.7555 297.1611 183.4569 207.4312 302.9788 1076.8195 272.678 432.3504 279.4645 119.2362 376.2677 159.9569 214.3466 1088.0363;
	3.5618 48.1272 91.9173 115.62 14.435 32.254 23.0876 14.6536 27.5167 31.1395 57.5609 85.8695 129.2761 65.5314 191.2364 72.0472 89.3919 94.7287 89.8414 71.1075 7.6959 75.2593 75.311 87.3453 102.032 68.1266 11.5669 1163.9674 684.148 684.148 633.6779 92.4184 299.4714 183.031 205.4497 291.9032 1091.2971 283.5156 436.9606 273.3 119.1577 357.8042 171.9933 235.7557 1102.6648;
	3.1089 42.0086 90.5109 109.847 14.3465 31.8916 23.3133 15.291 26.5723 30.901 57.1201 85.2119 128.286 67.6794 187.5427 70.6556 87.6653 92.8991 86.7855 71.435 7.7711 74.4137 75.609 87.9868 101.2161 49.2442 11.9489 1200.6377 726.3434 726.3434 590.2652 97.6897 289.2851 183.8737 212.184 309.9065 1167.475 284.7263 420.5541 271.1144 120.1742 353.7841 137.3856 218.0902 1179.6362;
	3.5615 48.1237 90.6525 110.3539 14.8223 29.0807 24.0149 15.386 27.9082 30.5287 56.4319 84.1853 126.7404 67.6686 183.8376 69.2597 85.9334 91.0637 84.9974 67.4602 8.005 67.8549 73.7786 88.1196 104.0829 52.9766 11.2881 1319.6995 777.2183 777.2183 614.7122 113.0368 283.3246 173.6428 212.1504 331.6132 1324.6125 283.3298 440.3375 278.7935 116.0794 322.6018 159.953 250.3405 1338.4105;
	3.4932 47.2005 90.2327 109.7607 14.3108 29.8205 28.347 15.4573 27.6106 30.0843 55.6104 82.9598 124.8955 67.9566 193.5687 72.9259 90.4821 95.884 85.6362 67.4874 9.449 69.5811 71.9537 88.8574 101.8013 62.0248 11.3439 1310.1201 784.3968 784.3968 623.8892 104.7857 285.454 173.7126 213.0532 334.676 1305.3278 269.5987 440.0947 272.6821 117.5214 330.8086 143.0817 229.5149 1318.925;
	3.3088 44.7092 88.5885 106.0679 14.7142 30.8589 27.6079 14.1908 28.0187 30.1613 55.7526 83.1719 125.2149 68.2275 195.6707 73.7178 91.4647 96.9253 85.9043 71.4919 9.2026 72.0042 72.47 89.7024 101.9608 69.986 11.4606 1269.3997 783.5994 783.5994 696.9016 102.6368 286.3476 184.0203 213.9024 334.3358 1207.5703 271.6142 453.3405 273.1092 114.7976 342.3286 143.9953 228.9019 1220.1492;
	3.3304 45.0007 88.9621 100.1639 14.9145 29.851 28.4983 13.8213 27.608 29.459 54.4546 81.2355 122.2996 69.8434 198.2961 74.7069 92.6919 98.2258 86.2067 69.887 9.4994 69.6524 71.6379 89.7086 100.2341 69.0966 10.6623 1186.7577 783.1742 783.1742 722.714 107.6456 287.3556 179.8893 218.9686 334.1543 1201.7268 274.2943 452.0058 268.4841 111.7947 331.1472 158.7303 229.3164 1214.2448;
	2.6003 35.1362 86.6212 100.4881 14.5385 30.78 24.2739 12.8386 26.3446 29.1764 53.9322 80.4562 121.1264 68.8366 197.7288 74.4932 92.4267 97.9447 87.2652 70.4691 8.0913 71.8199 70.7299 86.3377 97.2877 63.318 10.3891 1114.974 732.2975 732.2975 684.6851 99.4373 290.884 181.3875 215.812 312.4469 1093.6029 261.4721 422.2166 260.592 114.419 341.4523 121.2939 225.0018 1104.9946;
];
