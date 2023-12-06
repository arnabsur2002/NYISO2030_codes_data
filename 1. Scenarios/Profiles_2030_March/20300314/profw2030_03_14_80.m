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
	3.5537 48.0186 93.2728 119.6403 14.1426 13.831 13.392 16.8685 26.7468 24.3107 44.9381 67.0387 100.9264 8.8838 27.622 10.4064 12.9117 13.6825 13.7411 30.1187 4.464 32.2723 57.4159 87.5749 101.4496 69.4862 7.3901 664.9751 381.8351 381.8351 201.0216 26.9688 45.8037 77.5257 27.8519 162.9163 495.4939 49.5247 307.2749 271.74 17.2929 153.4316 115.316 227.7976 500.6553;
	3.5959 48.5883 93.158 118.999 14.282 17.3425 14.2201 16.1243 26.8353 24.7071 45.6707 68.1316 102.5718 8.1908 20.545 7.7402 9.6036 10.1769 11.6166 17.537 4.74 40.4657 63.5018 86.4033 98.5035 71.3132 7.0555 694.8687 377.3767 377.3767 175.8071 27.1254 38.7221 45.1402 25.6792 161.014 493.7404 48.5918 338.1565 263.8487 13.8503 192.3857 113.2243 219.2759 498.8836;
	3.3479 45.2372 92.0228 118.2665 14.1889 13.6616 11.5223 16.8497 27.0416 22.5089 41.6074 62.0701 93.4461 8.8814 17.8298 6.7173 8.3344 8.832 19.4875 23.5406 3.8408 31.8772 64.972 85.7328 99.159 71.2914 8.3539 605.6719 338.6837 338.6837 140.6067 23.3195 64.9585 60.5935 27.8445 144.5051 408.2795 33.3244 243.4949 265.6044 22.3013 151.5532 90.6531 206.8565 412.5324;
	3.0718 41.5068 93.664 114.4081 13.9485 13.0331 9.7182 16.913 26.0903 23.9125 44.2019 65.9406 99.2732 10.6456 16.9526 6.3868 7.9243 8.3974 11.0297 23.6857 3.2394 30.4105 70.4012 87.2372 100.6466 74.873 9.8493 517.5791 262.0861 262.0861 148.4107 25.1068 36.7657 60.967 33.3754 111.8234 310.4317 26.9168 180.0315 269.5891 7.9603 144.5804 81.0526 209.4845 313.6654;
	2.2903 30.9472 88.1513 111.6035 12.8886 13.3066 8.7694 16.4811 15.2657 20.9072 38.6466 57.6531 86.7964 14.7177 20.9491 7.8925 9.7925 10.3771 15.4676 26.4561 2.9231 31.0486 61.6691 85.1446 97.751 73.069 9.5431 361.4876 201.2952 201.2952 130.8309 24.3608 51.5587 68.098 46.1419 85.8859 167.2962 27.786 158.312 261.833 11.5713 147.6141 77.3881 204.0797 169.0389;
	3.0761 41.5648 93.7415 117.2369 12.9783 21.4499 9.5427 17.578 10.1375 20.1876 37.3164 55.6687 83.8089 26.2403 20.2002 7.6103 9.4424 10.0061 28.2182 28.874 3.1809 50.0498 63.0903 88.6967 101.488 73.1461 8.6898 309.0392 189.4193 189.4193 121.8312 25.8022 94.0605 74.3218 82.2669 80.8189 142.0127 29.7013 184.6954 271.8428 13.5583 237.9509 83.3494 214.9073 143.492;
	2.7641 37.3489 93.0045 117.6464 13.9716 23.5947 12.5868 17.3887 12.4582 26.8802 49.6876 74.1241 111.5935 38.6481 25.2313 9.5057 11.7942 12.4983 35.5918 36.2669 4.1956 55.0543 70.9957 88.9853 103.7165 74.7817 11.8514 285.085 245.7567 245.7567 101.9363 18.3764 118.6394 93.3511 121.1669 104.8562 193.3596 23.9864 171.8605 277.8121 13.3863 261.7439 93.5686 240.1678 195.3738;
	2.1678 29.2917 78.02 119.3039 14.4921 20.3189 12.7113 18.2837 18.7591 27.2998 50.4633 75.2814 113.3357 42.6737 30.8617 11.627 14.4261 15.2873 50.5248 59.0918 4.2371 47.4109 72.7796 88.6198 103.1997 73.8062 13.2596 165.4325 209.6018 209.6018 105.5662 12.27 168.4159 152.1025 133.7879 89.4301 144.1184 33.3655 195.5931 276.4279 10.7376 225.4048 95.9671 220.3158 145.6197;
	3.1145 42.0833 90.4833 111.2684 14.7621 25.3364 10.634 18.6718 20.5125 28.8903 53.4032 79.6671 119.9384 45.425 24.3493 9.1735 11.3819 12.0614 68.2403 60.9781 3.5447 59.1183 74.7233 88.8052 103.1351 74.1348 12.9177 135.4354 167.8968 167.8968 95.2892 9.723 227.4677 156.9578 142.4136 71.636 130.9577 35.1211 153.5222 276.2546 23.7493 281.0651 88.2427 244.1337 132.3218;
	2.3499 31.752 89.6902 115.0187 13.4467 14.5007 9.3054 18.508 25.8476 30.7769 56.8907 84.8697 127.7709 45.8747 44.6635 16.8267 20.8776 22.124 70.4838 56.2782 3.1018 33.835 74.9465 88.5592 104.0997 75.2257 13.0102 250.6323 243.3625 243.3625 104.8622 10.983 234.9459 144.8602 143.8233 103.8347 240.1558 27.1556 91.3728 278.8385 34.2599 160.8614 85.093 219.4878 242.6574;
	1.9051 25.7415 83.546 110.4728 12.1638 25.6212 12.4573 17.9063 26.1156 29.3422 54.2386 80.9133 121.8145 51.1362 7.8751 2.9669 3.6811 3.9009 65.7958 37.339 4.1524 59.7827 72.9818 85.2073 93.0004 74.8912 12.2864 379.0282 306.9959 306.9959 165.5472 13.6511 219.3193 96.1106 160.3189 130.9849 359.4458 29.5691 169.0532 249.1083 12.1645 284.2242 96.2069 191.5985 363.19;
	1.7741 23.9723 86.897 94.5427 11.4456 29.9002 16.7367 18.0929 25.8083 28.5008 52.6832 78.593 118.3214 51.9993 25.9855 9.7899 12.1467 12.8719 74.486 51.2417 5.5789 69.7671 72.4904 84.9295 94.9681 73.147 12.8202 448.9349 358.6728 358.6728 268.5859 17.7335 248.2868 131.8962 163.0248 153.0337 434.406 43.2121 181.9418 254.3789 17.7373 331.6926 108.9299 180.8716 438.931;
	2.9367 39.6815 87.8824 90.1924 13.7155 30.5985 15.2207 17.5578 25.2207 29.3299 54.2159 80.8795 121.7636 54.6181 46.5125 17.5233 21.7419 23.0399 79.3816 66.5643 5.0736 71.3964 73.8658 86.7599 98.9533 71.4606 11.3469 602.5235 441.5042 441.5042 300.4149 24.0145 264.6055 171.3366 171.2353 188.3751 604.2992 51.5791 176.7851 265.0535 38.546 339.4388 130.3835 203.35 610.594;
	3.6987 49.9773 90.6726 111.021 15.0113 32.3755 17.5935 18.4603 25.4436 30.1865 55.7993 83.2415 125.3196 57.4137 68.2379 25.7082 31.8972 33.8015 84.4514 60.1484 5.8645 75.5429 72.0714 89.5503 102.2072 74.8405 12.0002 723.6458 595.521 595.521 374.8626 27.9779 281.5046 154.8221 179.9999 254.0889 726.5193 70.0987 244.6054 273.7694 49.1668 359.1525 137.898 251.6003 734.0873;
	3.7239 50.3179 91.6732 113.0539 15.2578 33.9343 20.2525 18.2728 25.104 26.8567 49.6443 74.0595 111.4962 61.7015 100.1423 37.728 46.8107 49.6054 82.484 58.105 6.7508 79.1799 55.0348 89.2228 100.5473 73.4812 13.0037 932.9763 687.2348 687.2348 465.5687 28.8688 274.9468 149.5623 193.4426 293.2202 930.9952 87.237 374.443 269.3231 28.3168 376.4441 155.1926 245.6378 940.693;
	3.6401 49.1858 92.8112 111.6379 14.981 32.8118 23.6451 18.6822 24.9468 20.5657 38.0153 56.7113 85.3786 63.0053 136.8018 51.5393 63.9469 67.7646 83.853 64.2767 7.8817 76.5609 52.2356 89.69 102.9604 74.171 13.1951 962.0579 728.9273 728.9273 662.3449 41.9474 279.5099 165.4484 197.5301 311.009 958.151 146.7624 338.2676 275.7869 45.8009 363.9924 157.2543 260.7691 968.1317;
	3.7197 50.2612 92.1423 114.9985 14.8376 32.7633 28.4419 18.7893 25.8328 17.4198 32.2002 48.0364 72.3185 64.3473 157.9283 59.4986 73.8223 78.2296 86.5696 67.3389 9.4806 76.4476 33.1113 88.1609 102.9258 76.3178 13.689 1014.0614 764.6298 764.6298 702.0304 75.4096 288.5653 173.3305 201.7373 326.242 983.6626 189.6523 390.5444 275.6941 4.5172 363.4537 201.2813 272.1958 993.9091;
	3.6916 49.8821 93.7841 114.4949 14.421 32.0794 27.0963 18.4557 25.0917 8.6788 16.0426 23.9323 36.03 60.1778 182.3075 68.6833 85.2182 90.3058 89.3392 69.6191 9.0321 74.852 34.6816 87.0124 103.4525 73.716 13.7135 1138.5471 784.8852 784.8852 741.5885 95.078 297.7973 179.1997 188.6655 334.8843 1047.297 237.7072 399.4161 277.1049 110.226 355.8679 187.1848 261.7387 1058.2064;
	3.7206 50.2737 90.1403 115.0706 14.1751 32.3703 29.9261 13.4006 27.214 17.7474 32.8057 48.9397 73.6784 60.7028 194.2183 73.1706 90.7857 96.2058 91.142 70.5298 9.9754 75.5307 53.4599 86.0737 103.2113 67.778 13.3661 1187.1469 798.2398 798.2398 702.7092 105.3461 303.8068 181.5439 190.3115 340.5823 1080.938 237.7143 454.8606 276.4588 118.3141 359.0947 191.5626 263.4326 1092.1978;
	3.7807 51.0862 90.6433 110.4226 14.5171 32.8165 31.1062 8.4731 27.0765 15.9981 29.5722 44.1159 66.4162 64.8204 197.7174 74.4889 92.4214 97.9391 88.8327 69.0081 10.3687 76.5717 49.9173 41.1111 46.2045 66.2789 11.5012 1097.4944 772.8878 772.8878 715.4821 109.915 296.1091 177.6269 203.2207 329.7655 1041.7816 255.2767 467.3833 123.762 120.7465 364.0439 201.1668 231.6677 1052.6335;
	3.8475 51.9878 91.2406 120.1995 14.5769 32.7133 31.0489 18.6799 18.0545 12.7516 23.5712 35.1635 52.9385 64.8601 200.6489 75.5933 93.7917 99.3912 89.2347 68.499 10.3496 76.3311 33.9953 81.4533 103.5728 73.1995 13.9093 1159.2695 778.1665 778.1665 703.9373 107.6695 297.4491 176.3165 203.3452 332.0177 1031.3437 248.9053 456.5458 277.427 122.1162 362.8996 204.3115 260.5127 1042.0869;
	3.6967 49.9512 87.4605 119.6922 14.6613 32.022 30.2648 17.4294 9.682 13.0249 24.0763 35.9171 54.073 64.3323 201.1546 75.7838 94.0281 99.6417 87.911 70.0873 10.0883 74.7181 24.6333 86.1383 101.8727 74.5336 13.4811 1220.4605 775.9168 775.9168 728.1425 110.8126 293.0365 180.405 201.6905 331.0578 1118.2106 250.9104 444.9282 272.8732 117.7231 355.2311 204.4413 200.2706 1129.8587;
	3.8714 52.3111 90.6832 118.5737 14.8169 32.2844 30.9847 17.991 19.144 15.689 29.0009 43.2636 65.1332 66.1563 205.276 77.3366 95.9546 101.6832 91.3947 69.3447 10.3282 75.3302 39.2472 87.7981 93.8486 75.4912 13.7502 1230.3766 801.285 801.285 748.9506 116.5129 304.6491 178.4934 207.4089 341.8816 1146.1721 263.7416 449.6899 251.3802 120.9429 358.1413 204.8717 240.0699 1158.1114;
	3.8236 51.6655 90.0737 116.4786 14.4918 31.8822 32.6534 18.5822 10.0275 9.4863 17.5353 26.1592 39.3825 64.4439 205.089 77.2661 95.8672 101.5906 90.9474 69.1213 10.8845 74.3919 25.8572 88.0369 105.771 74.818 13.6879 1206.3034 802.3996 802.3996 760.4788 110.582 303.1579 177.9185 202.0404 342.3572 1157.4629 270.5121 453.3204 283.3152 121.7276 353.6803 196.5192 249.8674 1169.5198;
];