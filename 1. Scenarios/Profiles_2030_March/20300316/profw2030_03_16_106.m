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
	3.5817 48.3962 89.9602 117.3024 14.7304 32.1306 28.5744 17.5193 26.4572 27.9393 51.6454 77.0448 115.9906 67.1612 191.4729 72.1363 89.5024 94.8459 68.6076 72.0036 9.5248 74.9714 73.0021 85.1217 100.7363 68.2252 12.9001 1249.474 747.5564 747.5564 575.7365 109.4 228.6919 185.3375 210.5595 318.9574 1243.2285 234.6028 435.7957 269.8293 112.9264 356.4356 199.8473 269.7657 1256.1788;
	3.563 48.1435 88.558 115.1352 14.1742 31.2114 24.2578 17.6432 24.0054 27.4233 50.6916 75.6218 113.8482 65.9471 174.5435 65.7583 81.589 86.4599 62.7987 71.5308 8.0859 72.8266 71.2224 87.5662 99.9165 68.4732 12.8308 1246.6274 737.0128 737.0128 593.1925 106.8934 209.3291 184.1203 206.7531 314.4588 1215.2148 228.1609 429.3667 267.6334 113.1409 346.2385 184.094 230.872 1227.8733;
	3.6066 48.7335 89.7369 118.1771 14.3874 32.4053 21.6589 17.9751 25.8558 28.9715 53.5533 79.891 120.2755 64.9886 198.2854 74.7029 92.6869 98.2204 84.9629 70.2787 7.2196 75.6123 71.6417 89.0579 100.7075 74.3253 13.2414 1249.6612 753.7035 753.7035 622.665 98.2853 283.2096 180.8976 203.7482 321.5801 1301.6093 236.0973 401.1559 269.7522 115.0323 359.4825 184.7663 253.1203 1315.1677;
	3.3886 45.7873 87.7883 112.5992 14.305 29.4017 22.5558 17.6785 24.7774 28.5766 52.8233 78.802 118.636 64.5526 194.6631 73.3382 90.9937 96.4261 85.5742 69.8971 7.5186 68.604 71.4152 87.7066 98.596 70.7592 12.8591 1279.4314 748.9156 748.9156 606.302 102.3464 285.2473 179.9152 202.3812 319.5373 1276.2384 254.4452 420.8864 264.0966 113.4167 326.1629 140.7012 260.0645 1289.5326;
	3.5751 48.3077 87.1272 109.8051 13.999 30.7946 29.5987 16.5733 25.9611 28.4691 52.6246 78.5056 118.1898 66.8003 198.21 74.6745 92.6516 98.1831 83.941 71.129 9.8662 71.854 72.1536 85.3332 98.1888 71.3034 12.1999 1257.5899 763.4436 763.4436 650.0735 108.5681 279.8032 183.0862 209.428 325.7359 1256.7675 259.7744 458.4748 263.0058 115.7835 341.6145 177.5351 245.0877 1269.8588;
	3.7062 50.0787 89.6602 113.3544 14.0248 31.7867 27.9272 17.5815 25.0255 30.5427 56.4577 84.2238 126.7985 66.3596 197.849 74.5385 92.4829 98.0043 84.2736 70.2443 9.3091 74.169 74.1289 87.0242 99.3431 70.5879 12.8094 1276.5954 757.3286 757.3286 708.8089 110.9347 280.912 180.8091 208.0463 323.1269 1240.5776 258.0664 438.3057 266.0977 116.2148 352.6204 169.8622 262.4373 1253.5003;
	3.7895 51.2041 88.3395 114.6828 14.0702 31.8317 29.9748 17.5961 26.7878 30.7374 56.8176 84.7606 127.6066 66.6557 196.9695 74.2071 92.0718 97.5686 86.6027 70.9306 9.9916 74.274 73.9192 85.2925 99.5323 69.9085 12.8817 1272.0716 758.3959 758.3959 735.6179 104.1503 288.6756 182.5754 208.9747 323.5822 1262.687 284.0158 448.9507 266.6044 115.1401 353.1198 155.5159 255.8574 1275.84;
	3.8499 52.0206 88.8743 116.6974 14.3023 32.9861 29.1725 16.7182 26.6221 30.4399 56.2678 83.9404 126.3719 69.4049 194.5234 73.2856 90.9284 96.3569 86.2183 67.9816 9.7242 76.9675 72.2354 86.1461 98.2066 68.7009 12.3218 1326.0565 783.4341 783.4341 706.5706 109.6332 287.3943 174.9847 217.5936 334.2652 1272.0444 288.8888 449.2569 263.0534 114.9973 365.9256 176.6342 261.7753 1285.2949;
	3.9037 52.748 92.8793 120.6909 14.7451 34.1832 31.1729 17.7817 27.6289 31.0985 57.4851 85.7565 129.1059 69.04 190.7282 71.8557 89.1543 94.477 89.5414 69.2147 10.391 79.7608 73.9037 87.7715 102.4121 71.0017 12.983 1340.878 799.9801 799.9801 776.6424 115.975 298.4713 178.1588 216.4498 341.3249 1301.1414 307.938 463.4835 274.3181 121.3441 379.2054 204.4353 273.6536 1314.695;
	3.7705 50.9481 92.6852 120.4369 14.7943 32.989 25.9207 17.8494 27.1759 29.8887 55.2488 82.4203 124.0834 68.9277 179.2106 67.5166 83.7705 88.7718 84.776 67.2166 8.6402 76.9743 72.925 89.631 103.9299 74.7697 13.3005 1315.4095 821.4032 821.4032 786.0249 118.6507 282.5867 173.0158 216.0976 350.4654 1269.2941 332.1766 448.5393 278.3837 116.9719 365.9579 204.921 278.0484 1282.5159;
	3.818 51.5897 89.4046 117.5764 14.9078 32.9714 28.3538 17.5188 27.2802 30.583 56.5323 84.335 126.9659 68.8209 189.8278 71.5165 88.7334 94.031 89.8695 70.9684 9.4513 76.9332 71.7893 86.8379 102.1243 71.6229 13.1028 1286.5812 826.1891 826.1891 760.7628 113.7199 299.565 182.6728 215.7628 352.5074 1258.2914 332.2995 460.721 273.5472 117.6218 365.7626 204.0842 269.5296 1271.3986;
	3.7049 50.0618 88.388 117.2229 14.7006 33.5208 26.8419 17.4471 27.5562 29.7465 54.9859 82.0281 123.4929 69.194 189.1741 71.2702 88.4279 93.7072 91.9246 68.6334 8.9473 78.2152 70.7455 87.1319 102.6443 69.616 13.2645 1275.1352 843.8264 843.8264 785.7711 115.1567 306.4153 176.6625 216.9325 360.0326 1285.4458 344.5041 467.4236 274.9401 121.6605 371.8575 205.7745 266.8861 1298.8358;
	3.7098 50.1277 90.3835 114.5793 14.713 32.8731 27.8244 16.8262 26.9811 30.5997 56.5631 84.381 127.0352 68.5978 192.135 72.3857 89.8119 95.1738 90.456 68.3504 9.2748 76.7039 71.4913 83.8809 100.6442 69.2404 12.8506 1286.53 824.4229 824.4229 764.4952 113.535 301.52 175.9342 215.0634 351.7538 1284.1446 345.9861 457.9062 269.5826 119.8899 364.6722 206.6214 265.767 1297.5211;
	3.8813 52.445 91.3327 118.9719 14.4363 33.6809 27.9239 17.6421 27.1336 29.6161 54.7449 81.6687 122.9517 69.146 188.3565 70.9622 88.0457 93.3022 86.0884 70.4618 9.308 78.5889 69.6327 86.9055 102.7638 70.8719 13.49 1300.5192 841.632 841.632 789.3227 116.0748 286.9615 181.3688 216.782 359.0963 1316.941 339.3843 460.5175 275.2601 122.085 373.6339 201.8277 275.2553 1330.6591;
	3.7994 51.3384 91.6363 117.162 13.9977 33.4669 23.4327 17.3767 27.6307 29.6269 54.7648 81.6983 122.9963 67.5687 177.6018 66.9104 83.0185 87.9748 84.5668 69.0546 7.8109 78.0895 72.6522 86.528 99.4975 69.2564 13.1702 1248.5245 815.4238 815.4238 792.923 112.7805 281.8893 177.7468 211.8371 347.9142 1268.9155 345.0036 463.1418 266.5113 122.1534 371.26 198.5115 274.2657 1282.1334;
	3.7118 50.1542 87.0233 111.265 13.1662 32.0996 23.4711 16.976 26.3775 28.7293 53.1056 79.2231 119.2699 68.668 179.9064 67.7787 84.0958 89.1164 85.9776 69.036 7.8237 74.8991 70.3166 85.5664 97.3534 61.1904 12.7808 1278.7363 807.3836 807.3836 753.9663 113.8163 286.592 177.6988 215.2833 344.4837 1219.0037 332.6226 456.2978 260.7681 117.9239 356.0916 187.2209 273.6438 1231.7016;
	3.6622 49.4843 87.9697 109.1558 12.8177 31.594 21.4928 17.2996 27.5791 29.643 54.7946 81.7428 123.0633 67.739 185.9596 70.0592 86.9253 92.1149 84.4189 66.7514 7.1643 73.7192 70.6907 81.6654 96.3052 54.9503 12.0166 1271.0213 785.7402 785.7402 684.6741 108.0541 281.3962 171.8182 212.3709 335.2492 1210.3817 329.0553 443.2803 257.9603 112.0955 350.4824 173.8185 248.1563 1222.9898;
	3.7418 50.5605 88.9721 108.3371 14.0466 29.2337 18.5301 12.9652 26.8222 28.6828 53.0198 79.0951 119.0772 68.213 181.9766 68.5586 85.0635 90.1419 86.4239 64.0084 6.1767 68.2121 70.3672 82.1389 96.7648 67.5493 9.8043 1271.0231 747.9348 747.9348 654.3183 109.7901 288.0797 164.7577 213.857 319.1189 1265.9575 313.8773 447.1639 259.1915 113.7288 324.2996 169.612 230.528 1279.1446;
	3.6652 49.5251 85.198 99.6402 14.0338 24.5892 15.1532 7.5818 26.5034 29.55 54.6227 81.4864 122.6773 68.146 182.3743 68.7085 85.2494 90.3389 85.4043 65.4742 5.0511 57.3747 72.4687 86.0007 94.0165 57.4122 8.244 1226.2583 710.8443 710.8443 630.4842 105.8708 284.6809 168.5309 213.6469 303.2936 1198.0187 314.0739 436.5255 251.8298 110.4979 272.7758 131.1433 221.019 1210.4981;
	2.8071 37.9306 82.3989 67.5536 13.9804 21.9052 24.1189 7.8727 26.1015 29.6536 54.8143 81.7721 123.1075 69.6038 181.0093 68.1942 84.6113 89.6628 85.0651 63.328 8.0396 51.112 69.8811 86.8177 85.8051 40.878 7.1219 1297.954 753.0183 753.0183 691.1721 110.2505 283.5503 163.0065 218.2172 321.2878 1178.4144 323.9116 408.4092 229.8351 107.7579 243.0013 106.4208 188.3965 1190.6896;
	2.6221 35.4299 82.398 81.3572 14.8411 13.1727 26.0405 8.5598 27.5961 29.9216 55.3096 82.511 124.2199 69.4717 180.7443 68.0944 84.4875 89.5315 86.0456 67.1266 8.6802 30.7364 70.8217 88.7699 79.9879 44.1081 7.2553 1241.7787 743.4767 743.4767 681.3102 114.2778 286.8185 172.784 217.8031 317.2167 1180.0469 307.1893 447.112 214.2533 105.9459 146.1294 84.961 189.1775 1192.339;
	2.4167 32.6554 80.7731 87.3179 15.1638 17.1405 26.3106 8.3206 28.0116 30.3104 56.0282 83.5831 125.8339 69.5306 193.9099 73.0544 90.6416 96.053 89.6259 68.2849 8.7702 39.9944 74.4579 86.3912 89.0431 58.2342 8.6365 1229.5207 761.1263 761.1263 688.1917 113.4972 298.753 175.7655 217.9878 324.7472 1166.659 278.4377 456.2834 238.5083 113.4218 190.145 78.0124 195.2273 1178.8117;
	2.9293 39.5807 74.2177 85.6302 14.4837 18.0535 24.6543 11.2796 28.0227 30.5724 56.5127 84.3058 126.9219 69.5115 189.0018 71.2053 88.3474 93.6218 87.965 69.7555 8.2181 42.1247 74.0734 83.2167 77.8591 59.0569 8.9525 1067.3898 752.2981 752.2981 701.641 110.5988 293.2168 179.5509 217.9279 320.9805 1131.1295 299.5821 448.2504 208.5513 115.2976 200.2731 86.4216 206.9082 1142.912;
	3.1407 42.4374 77.9849 73.0309 14.4796 22.0332 21.1723 5.2468 28.2028 29.5484 54.6197 81.4819 122.6705 69.0139 186.0947 70.1101 86.9884 92.1818 86.3807 70.6985 7.0574 51.4109 72.894 81.9906 56.1118 58.2811 6.2189 881.8791 696.5854 696.5854 649.684 107.0158 287.9357 181.978 216.368 297.2098 944.3867 271.2049 431.2478 150.2996 113.7848 244.4222 96.8207 227.1146 954.2241;
];
