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
	3.768 50.9135 92.7141 119.3413 14.9188 32.8858 26.6306 18.6215 27.0436 28.8693 53.3645 79.6093 119.8513 67.7648 201.9506 76.0837 94.4002 100.036 85.5891 73.2874 8.8769 76.7335 73.1317 86.1885 103.0012 71.607 13.7641 1275.2771 760.5168 760.5168 591.8697 117.8387 285.2971 188.642 212.4519 324.4872 1239.3806 239.9715 441.2979 275.896 118.366 364.813 194.3873 281.354 1252.2908;
	3.8256 51.6929 93.8968 119.8326 15.164 33.5406 24.5837 19.0256 26.5462 29.0882 53.7691 80.2129 120.7601 67.3223 190.066 71.6062 88.8448 94.149 85.6927 71.5159 8.1946 78.2613 70.1286 88.3613 104.6426 74.1566 13.8269 1314.6981 801.9043 801.9043 665.4298 116.2127 285.6424 184.0821 211.0644 342.1458 1287.5282 249.2629 451.3354 280.2928 121.8222 372.0768 180.4627 280.824 1300.94;
	3.8895 52.5562 92.3285 119.4366 15.2928 34.7068 21.376 17.8833 26.964 29.5267 54.5797 81.4222 122.5806 67.982 199.5523 75.1802 93.2791 98.848 86.2666 73.0248 7.1253 80.9826 70.7272 86.8084 101.5806 74.5096 12.9915 1283.703 796.3827 796.3827 698.6063 110.5203 287.5552 187.9661 213.1326 339.79 1300.1079 258.5933 416.8558 272.0909 119.5143 385.0142 195.6478 271.8139 1313.6507;
	3.907 52.7918 92.6006 119.1605 15.3933 34.8031 23.8041 18.1241 27.4051 30.2577 55.9309 83.4378 125.6152 68.1669 198.4785 74.7756 92.7772 98.3161 85.7104 70.8558 7.9347 81.2072 70.396 88.2752 102.9099 73.9291 13.0786 1275.9224 782.8608 782.8608 672.5159 113.3359 285.7013 182.383 213.7125 334.0206 1260.6731 275.7022 440.4485 275.6514 117.1199 386.0824 165.3177 279.8721 1273.8051;
	3.8588 52.1409 89.4594 113.7367 15.3679 33.6103 29.164 17.4317 26.9709 30.4005 56.1949 83.8317 126.2081 67.7284 203.4109 76.6339 95.0828 100.7593 90.0479 73.5434 9.7213 78.424 73.54 84.6205 100.1468 73.9612 12.9096 1234.3017 769.2192 769.2192 692.9837 116.5595 300.1596 189.3008 212.3376 328.2002 1247.8978 270.6016 449.2374 268.2503 114.8197 372.8502 189.8842 272.4868 1260.8967;
	3.8349 51.8179 92.8599 113.9627 15.3557 33.2299 27.5971 17.443 27.1774 30.687 56.7244 84.6217 127.3975 66.951 205.9693 77.5978 96.2787 102.0267 91.8708 73.5711 9.199 77.5363 73.5768 87.5131 100.425 73.3608 12.8649 1245.9568 766.4754 766.4754 752.0268 120.7699 306.2361 189.3722 209.9005 327.0295 1219.039 265.3203 439.2698 268.9956 117.2811 368.63 177.4962 276.586 1231.7373;
	3.6991 49.9831 91.6052 110.7598 15.3719 33.1167 29.2742 17.3321 26.6475 30.959 57.2272 85.3718 128.5267 66.9634 205.1828 77.3014 95.911 101.637 91.5178 73.9243 9.7581 77.2724 74.5674 87.2933 97.8229 72.2003 12.9208 1231.3543 765.6326 765.6326 748.4045 117.8822 305.0594 190.2814 209.9393 326.6699 1234.0016 299.0328 453.3172 262.0257 115.2413 367.3751 160.5072 268.9312 1246.8558;
	3.7368 50.492 90.9113 110.9456 15.3341 33.2119 29.4115 17.5369 27.7599 30.442 56.2716 83.9462 126.3806 68.5569 205.0712 77.2594 95.8589 101.5818 92.455 72.6809 9.8038 77.4944 73.2664 86.1092 97.0852 73.9852 12.7645 1267.2206 770.0846 770.0846 760.3937 120.0655 308.1833 187.0808 214.9351 328.5694 1262.5048 319.0075 461.5056 260.0495 113.0102 368.4304 176.0933 271.8747 1275.6559;
	3.8306 51.7593 94.2001 113.6961 15.3584 34.6336 30.8901 18.1408 27.9606 30.0882 55.6176 82.9705 124.9116 68.8799 203.0226 76.4876 94.9013 100.567 91.413 70.7855 10.2967 80.8118 72.8557 86.0799 99.8453 73.4899 12.9686 1285.0777 786.2915 786.2915 799.8213 123.5971 304.71 182.2019 215.9477 335.4844 1305.9325 339.4267 470.7316 267.4427 117.0785 384.2022 211.9794 267.944 1319.536;
	3.6553 49.3912 91.1264 112.2058 15.1026 32.9979 25.5553 18.3393 27.731 30.7194 56.7843 84.711 127.532 68.3928 205.3684 77.3713 95.9978 101.729 92.0479 72.0023 8.5184 76.9951 73.633 87.2301 99.3457 72.576 13.2854 1280.7436 830.9233 830.9233 801.1622 123.8614 306.8263 185.3341 214.4208 354.5273 1313.1283 345.6806 472.4568 266.1047 116.4658 366.0568 208.8083 261.1355 1326.8068;
	3.8235 51.6637 94.2349 112.4829 15.0753 33.6512 27.7269 18.4464 28.0578 31.2802 57.821 86.2575 129.8602 68.4796 204.5011 77.0446 95.5924 101.2994 90.5716 72.7362 9.2423 78.5195 74.8306 88.0029 101.7099 71.0563 13.2056 1293.9748 820.2435 820.2435 778.0327 121.6414 301.9052 187.223 214.6928 349.9706 1318.6454 329.4605 476.7634 272.4372 118.8596 373.304 215.2835 263.8285 1332.3813;
	3.7723 50.9725 91.3307 110.349 15.0976 33.4678 25.752 18.2839 27.8923 30.9137 57.1434 85.2467 128.3385 67.6137 196.0788 73.8715 91.6554 97.1274 88.2291 68.8107 8.584 78.0916 75.4395 89.0085 99.3884 72.024 13.0818 1283.5674 811.9425 811.9425 777.6045 120.5245 294.0971 177.1189 211.9779 346.4288 1304.8826 331.6268 473.8693 266.2189 119.889 371.2697 203.3891 269.3183 1318.4751;
	3.7295 50.3943 94.0057 109.7723 14.8111 32.9811 27.0655 18.6629 27.0077 30.8413 57.0097 85.0473 128.0382 66.9594 192.5147 72.5288 89.9894 95.3619 87.811 67.9234 9.0218 76.956 74.1445 88.8024 101.6479 74.5044 13.4874 1294.97 801.9472 801.9472 734.2874 119.1657 292.7032 174.835 209.9267 342.1641 1279.0095 327.4501 465.4438 272.2712 121.7565 365.8707 207.7624 270.2274 1292.3325;
	3.8669 52.25 94.0088 112.2598 15.1604 32.6814 26.4508 18.6158 27.1709 30.1078 55.6537 83.0244 124.9928 68.1175 189.7026 71.4694 88.675 93.969 84.5308 70.7343 8.8169 76.2565 74.1955 89.308 100.4518 73.1216 13.2803 1256.9983 788.9557 788.9557 733.7615 115.7439 281.7695 182.0701 213.5576 336.6211 1266.4085 313.6019 467.1825 269.0673 116.4846 362.5453 205.6032 272.8151 1279.6002;
	3.6757 49.6673 92.6361 110.2582 15.1197 32.0498 23.3717 17.8576 27.9049 30.4432 56.2737 83.9494 126.3853 66.9387 188.0528 70.8478 87.9037 93.1517 84.9456 69.3185 7.7906 74.7829 75.5485 88.6546 100.0852 71.9874 12.9938 1300.283 785.6047 785.6047 755.6587 117.3009 283.152 178.426 209.862 335.1913 1271.2186 325.7788 467.5769 268.0853 115.945 355.5395 200.3595 273.5356 1284.4605;
	3.6304 49.0551 91.6143 109.5176 14.9488 32.0855 24.3414 17.7123 27.8968 30.3801 56.1572 83.7755 126.1235 66.1627 167.8723 63.2449 78.4705 83.1554 79.7636 68.3053 8.1138 74.8663 73.5987 86.1227 97.9444 69.4834 12.7965 1278.5696 763.0115 763.0115 684.9501 112.6095 265.8788 175.818 207.429 325.5516 1231.8147 306.2596 465.9961 262.351 116.7472 355.9357 193.3102 269.4734 1244.6461;
	3.4732 46.9306 89.2282 101.2757 14.463 28.9183 22.4794 17.7471 28.1135 30.7037 56.7554 84.6679 127.467 64.7567 187.0477 70.4691 87.4339 92.6538 84.2643 68.3203 7.4931 67.4761 74.4946 81.9504 95.9171 59.1217 12.0888 1233.4622 752.8745 752.8745 655.3272 110.116 280.8809 175.8565 203.0209 321.2264 1209.6367 318.9007 464.1906 256.9209 114.3178 320.8004 174.3374 237.9139 1222.2371;
	3.5878 48.4794 90.2838 102.381 14.0785 28.3899 18.2647 13.9035 27.9792 30.7583 56.8563 84.8183 127.6936 66.6806 174.6694 65.8057 81.6478 86.5223 79.0401 67.0073 6.0882 66.2432 74.7366 82.8435 96.2729 71.2214 10.4504 1170.1875 685.883 685.883 595.7856 110.3818 263.4671 172.4769 209.0526 292.6434 1187.7883 283.4091 456.5893 257.874 114.6734 314.939 166.9831 236.4006 1200.1611;
	3.5823 48.4054 82.461 85.5642 14.4496 24.2008 9.1958 7.3641 26.9182 29.7376 54.9695 82.0037 123.4562 65.5632 166.4035 62.6916 77.784 82.4278 82.1479 67.3882 3.0653 56.4684 74.1733 81.4923 83.5762 59.908 7.764 1149.9147 665.7919 665.7919 567.0539 111.0174 273.8262 173.4573 205.5494 284.0712 1142.8242 283.5462 430.1311 223.8649 113.2556 268.4671 118.7189 220.2256 1154.7286;
	2.6796 36.2071 75.1774 45.916 14.0658 18.6975 21.3318 6.2676 26.9991 30.7986 56.9308 84.9296 127.861 64.303 164.0907 61.8202 76.7029 81.2822 75.3077 67.6 7.1106 43.6275 75.5389 79.1837 74.2356 37.7205 6.5415 1173.4143 703.6337 703.6337 593.3374 108.8736 251.0258 174.0026 201.5986 300.217 1111.6763 285.6737 407.1706 198.8453 109.1813 207.4174 98.3766 184.4686 1123.2562;
	2.4219 32.7246 77.1493 57.1623 14.6814 10.7093 19.6399 7.3423 27.0176 29.2588 54.0844 80.6833 121.4683 65.2743 166.5219 62.7361 77.8393 82.4864 77.9936 68.6246 6.5466 24.9884 72.9127 82.0011 66.7485 47.9947 6.3814 1091.6573 706.1113 706.1113 626.8266 110.1601 259.9787 176.6398 204.6436 301.2742 1090.7248 252.3006 419.7187 178.7906 105.5417 118.802 71.4693 180.4951 1102.0865;
	2.1176 28.6139 78.031 75.4349 14.9965 14.4439 22.8865 10.8416 27.1929 28.76 53.1623 79.3078 119.3974 66.8262 184.1711 69.3854 86.0893 91.2289 84.2448 67.5161 7.6288 33.7023 70.6984 82.0789 87.1699 66.8848 8.5214 1068.2812 700.3304 700.3304 642.0774 104.3791 280.816 173.7865 209.5092 298.8076 1053.4716 238.3453 441.5312 233.4908 111.5968 160.2305 65.1185 191.8256 1064.4452;
	2.9738 40.182 85.0666 86.2519 15.1458 19.1468 23.2695 13.8103 27.5531 29.6918 54.8849 81.8774 123.266 68.1093 173.8902 65.5121 81.2835 86.1363 82.0108 68.2221 7.7565 44.676 73.0135 85.0648 91.6844 66.0995 9.5105 1003.7178 739.1423 739.1423 645.5354 110.0871 273.3695 175.604 213.532 315.3674 1085.8817 256.2319 457.5295 245.5833 114.9705 212.4022 78.8213 217.9822 1097.193;
	3.045 41.1446 86.7571 76.752 14.9243 22.9275 20.1247 10.772 27.6211 28.9013 53.4237 79.6976 119.9843 67.8577 169.6937 63.9311 79.3219 84.0576 82.6954 69.171 6.7082 53.4976 72.9228 84.2015 81.9274 64.1687 6.8103 914.9479 706.8936 706.8936 632.9032 106.34 275.6513 178.0464 212.7432 301.6079 952.6677 252.503 458.0263 219.4483 116.1836 254.3427 97.1027 233.3597 962.5914;
];
