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
	3.9731 53.6847 90.7306 118.1783 14.6238 34.8983 32.0187 18.4717 11.5371 13.7364 25.3915 37.8792 57.0269 56.7519 201.2593 75.8233 94.077 99.6936 85.904 69.2479 10.6729 81.4293 26.0024 85.5336 100.6199 74.6641 13.8125 1290.0321 838.9892 838.9892 739.6783 116.5205 286.3467 178.2444 177.925 357.9687 1220.2469 257.3789 461.7522 269.5176 122.1668 387.1382 216.11 263.5722 1232.9578;
	3.8987 52.6803 88.9786 113.3712 14.5413 34.3593 32.6509 17.6943 12.2928 12.0 22.1817 33.0908 49.818 64.1866 197.0915 74.2531 92.1288 97.6291 87.9105 71.7884 10.8836 80.1717 28.6831 81.7858 96.6751 71.3453 13.3253 1310.9695 836.0472 836.0472 761.1717 111.7493 293.035 184.7834 201.2337 356.7135 1292.7993 252.1714 461.2354 258.9513 118.2926 381.1593 210.2202 251.6826 1306.2659;
	3.8616 52.1786 87.2803 110.2562 14.5576 33.3627 31.3019 17.62 20.9313 13.3341 24.6479 36.7698 55.3567 58.238 158.6861 59.7841 74.1765 78.605 86.806 69.6359 10.434 77.8463 20.391 83.3723 97.1235 71.121 13.0317 1284.6723 818.0803 818.0803 758.8176 113.4193 289.3533 179.243 182.5841 349.0476 1263.9436 276.8831 442.09 260.1522 116.3919 370.1038 207.8376 242.2808 1277.1097;
	3.7068 50.0872 88.2371 111.4735 14.2387 32.382 30.0718 17.4625 27.8991 26.9142 49.7505 74.218 111.7348 63.1733 192.0789 72.3646 89.7857 95.1461 86.6659 62.093 10.0239 75.5579 16.4156 82.9733 97.8566 71.4059 12.9129 1285.7309 802.2996 802.2996 735.861 114.3766 288.8863 159.8275 198.0569 342.3145 1192.6868 283.8254 433.7143 262.1158 117.4673 359.2239 164.9548 250.5007 1205.1106;
	3.3596 45.3956 90.5032 115.3934 14.1929 30.7482 31.3991 18.3607 27.9788 27.7972 51.3827 76.6529 115.4005 63.5204 195.3342 73.591 91.3074 96.7585 90.5395 68.4861 10.4664 71.7458 69.1884 86.3761 101.9364 72.1927 13.3109 1312.4225 804.6096 804.6096 769.8858 117.1809 301.7983 176.2833 199.1449 343.3001 1171.7403 323.693 443.5339 273.0439 119.0496 341.1002 177.6152 261.9295 1183.946;
	3.7475 50.6368 90.5384 115.5028 14.1582 32.0661 18.7466 18.537 26.2673 28.2938 52.3006 78.0222 117.462 53.637 194.21 73.1675 90.7819 96.2017 60.8749 70.4256 6.2489 74.8208 69.6859 85.0993 100.3343 72.4047 13.57 1303.9549 816.369 816.369 724.8068 115.292 202.9165 181.2756 168.1593 348.3174 1199.449 310.1555 446.7449 268.7527 119.5211 355.7194 154.3924 262.0643 1211.9433;
	3.6782 49.7003 90.821 117.0248 14.5192 32.7926 12.4603 18.5726 25.8497 28.3845 52.4682 78.2723 117.8385 65.4719 192.636 72.5745 90.0461 95.422 85.6295 72.2081 4.1534 76.5162 71.9453 88.1273 104.1207 71.8624 13.7522 1337.3105 841.4283 841.4283 754.9898 117.8818 285.4317 185.8638 205.2632 359.0094 1261.3557 317.4246 396.8069 278.8946 119.3039 363.7798 169.5733 264.3007 1274.4948;
	3.5981 48.6188 89.7705 115.5716 14.5146 32.0256 0.0 18.5367 0.7467 27.6454 51.102 76.2342 114.7701 47.6034 196.8276 74.1537 92.0055 97.4983 86.1667 70.9634 0.0 74.7264 72.4516 87.2247 100.7542 74.9453 13.7214 1333.92 795.3188 795.3188 719.4325 114.6241 287.2224 182.6601 149.2431 339.336 1248.2965 317.3631 148.8251 269.8774 119.4566 355.2708 185.7411 267.6624 1261.2996;
	3.7286 50.3814 90.6247 119.4787 14.6445 29.9139 0.0 18.6868 2.219 28.1027 51.9475 77.4954 116.6689 29.1266 197.8832 74.5513 92.4989 98.0212 88.6215 71.8489 0.0 69.7992 74.1614 88.0409 101.33 71.7196 13.4932 1251.6356 719.878 719.878 719.2441 115.8412 295.4049 184.9392 91.3158 307.148 1098.4831 293.8424 0.0 271.4197 121.3761 331.8452 179.9338 271.1508 1109.9257;
	3.7335 50.4477 87.1245 116.9338 14.6593 27.2174 0.0 18.4264 0.8245 23.4578 43.3614 64.6867 97.3855 25.4848 194.909 73.4308 91.1086 96.5479 84.6941 72.1578 0.0 63.5072 52.7942 86.8738 99.7814 71.4376 12.9736 1039.6492 641.4287 641.4287 595.9994 115.9905 282.3137 185.7344 79.8982 273.6762 840.0713 264.0866 0.0587 267.2715 121.3365 301.9314 145.954 266.7223 848.8221;
	3.5545 48.0289 87.8429 117.3143 14.1911 23.854 0.026 18.7714 0.9784 28.2417 52.2043 77.8785 117.2457 16.2111 201.6074 75.9544 94.2398 99.866 81.808 73.3465 0.0087 55.6593 74.7634 87.4932 100.8147 69.8186 13.6049 849.8328 702.3101 702.3101 584.3145 120.8513 272.6934 188.794 50.8241 299.6523 778.339 227.9668 0.0 270.0394 118.9418 264.6202 130.5042 259.6212 786.4466;
	3.1957 43.1815 88.0181 116.4717 14.1732 17.0525 0.0 18.2317 0.0 26.6877 49.3318 73.5933 110.7943 56.3859 202.319 76.2225 94.5724 100.2185 40.3539 72.8202 0.0 39.7891 71.7882 85.9226 98.5717 70.2805 13.4207 649.4398 771.5484 771.5484 574.7893 123.2217 134.5129 187.4394 176.7774 329.194 871.2806 234.3964 0.0444 264.0312 120.5933 189.1687 129.373 258.4213 880.3564;
	3.5762 48.3227 92.1166 116.1963 14.4352 18.9011 0.1393 18.4822 25.3617 24.3474 45.0057 67.1397 101.0785 53.8132 199.0482 74.9903 93.0435 98.5983 58.3652 72.4922 0.0464 44.1025 72.1397 86.6642 100.8072 69.4541 13.8468 683.6434 736.1422 736.1422 566.298 118.8485 194.5506 186.5951 168.7116 314.0873 638.1709 246.0851 8.6068 270.0192 119.7945 209.676 138.5695 258.5427 644.8185;
	3.5707 48.248 92.0723 117.3369 14.2122 19.0339 0.428 18.4072 17.5454 21.1002 39.0034 58.1855 87.5979 42.0396 199.0061 74.9744 93.0238 98.5775 57.1212 71.4052 0.1427 44.4124 71.4934 86.35 99.2456 69.7974 13.5292 607.0063 722.5438 722.5438 529.2428 108.476 190.404 183.7973 131.7997 308.2854 732.5208 267.0978 12.085 265.8365 118.9734 211.1493 154.0275 265.3078 740.1513;
	3.7507 50.68 93.5514 118.544 14.649 18.4339 3.2225 18.6452 7.1002 24.3844 45.0741 67.2418 101.2321 31.645 196.8343 74.1562 92.0086 97.5016 72.543 69.7078 1.0742 43.0124 71.1477 88.8151 101.0625 71.5826 13.7246 452.0432 717.1878 717.1878 476.7225 94.8808 241.8099 179.428 99.2115 306.0001 635.1576 258.1894 56.2153 270.703 118.3228 204.4931 166.5175 256.7083 641.7738;
	3.4678 46.8574 92.1383 119.1464 14.1812 8.776 1.5985 19.0374 3.6954 26.9814 49.8747 74.4032 112.0136 24.8351 184.5905 69.5434 86.2853 91.4367 64.0399 70.1005 0.5328 20.4773 69.5002 88.6041 101.7817 71.1069 13.9575 484.6347 581.5863 581.5863 457.4323 96.7456 213.4662 180.439 77.8615 248.1435 515.9862 241.6392 34.718 272.6295 122.5972 97.355 148.4027 245.9341 521.3611;
	3.458 46.7258 94.1764 119.6174 14.4832 17.8619 2.4257 19.0985 8.679 28.4486 52.5869 78.4492 118.1049 33.9962 195.4997 73.6534 91.3847 96.8405 70.5867 72.545 0.8086 41.6777 69.3798 88.2946 104.5179 71.5787 14.0686 1090.2739 517.9868 517.9868 341.5313 98.1642 235.289 186.7311 106.5827 221.0077 901.7407 254.3245 97.2198 279.9586 123.409 198.1475 130.4127 248.3068 911.1338;
	3.5019 47.3182 95.3401 120.5109 15.2675 23.3656 3.5178 19.1025 8.6996 29.1709 53.9219 80.4409 121.1034 56.1203 191.8115 72.2639 89.6607 95.0136 82.862 71.2153 1.1726 54.5198 69.7107 89.8787 105.3131 75.7857 14.0066 1252.1359 598.4258 598.4258 243.9586 73.6848 276.2068 183.3084 175.9448 255.3283 1050.5184 218.5227 124.0073 282.0887 123.1903 259.2029 176.5254 279.0136 1061.4613;
	2.5997 35.1274 94.3959 116.4585 14.8603 33.5266 0.5223 18.6172 3.4243 25.4542 47.0518 70.192 105.6737 61.503 193.7621 72.9987 90.5725 95.9798 62.6699 70.6084 0.1741 78.2286 51.3859 88.8156 100.9441 72.7894 13.7982 1216.244 690.7112 690.7112 301.595 63.4678 208.8996 181.7463 192.8203 294.7035 1143.4206 139.4222 225.4811 270.3861 122.0735 371.9213 170.4388 275.0066 1155.3313;
	3.8758 52.3709 94.3998 87.5476 14.7942 34.5877 3.5628 18.7382 8.9406 15.1895 28.0775 41.8861 63.0593 64.7518 192.0808 72.3653 89.7866 95.147 45.1448 71.0091 1.1876 80.7047 40.791 89.4582 104.4639 75.2237 14.1098 1303.412 737.6859 737.6859 382.8638 57.7574 150.4828 182.7777 203.0058 314.746 1195.6595 122.9863 0.0 279.8139 121.0034 383.6933 195.9163 275.4996 1208.1143;
	3.8278 51.7223 93.7994 119.2315 14.4536 33.0844 1.483 18.9322 17.9331 15.7128 29.045 43.3294 65.2321 64.0037 190.6232 71.8162 89.1053 94.425 66.1094 68.7278 0.4943 77.1968 66.9029 89.8356 105.1448 74.8894 13.974 1293.212 690.7321 690.7321 635.5019 55.8315 220.3645 176.9055 200.6603 294.7124 1243.6181 159.6922 0.0 281.6378 122.678 367.0158 189.8563 279.4568 1256.5724;
	3.7377 50.504 93.2993 119.1935 14.8125 32.5148 1.2185 18.7312 28.2006 29.0613 53.7194 80.1388 120.6486 64.4197 193.0716 72.7386 90.2497 95.6378 67.8619 68.7022 0.4062 75.8679 72.9439 90.0931 104.3482 75.022 13.8754 1267.9949 652.6591 652.6591 513.7768 71.685 226.2064 176.8396 201.9644 278.4679 1166.1141 198.7742 418.237 279.5041 122.0928 360.6975 198.8704 272.9095 1178.2611;
	3.6533 49.3642 90.4271 116.4223 14.6897 32.0074 0.0 18.7145 27.4053 28.5407 52.757 78.703 118.487 63.2915 189.4949 71.3911 88.5778 93.8661 64.4029 69.7413 0.0 74.6839 69.1319 87.9866 100.7365 73.7793 13.6657 1276.4134 733.9847 733.9847 577.5492 105.1569 214.6763 179.5142 198.4274 313.1668 1206.094 214.9453 405.2264 269.8299 121.7331 355.0684 198.9142 268.6676 1218.6574;
	3.7584 50.7849 87.1488 111.5703 14.6883 32.3743 26.7565 17.9201 26.8806 26.2096 48.4481 72.275 108.8097 63.5423 191.245 72.0504 89.3959 94.733 70.2584 69.658 8.9188 75.54 69.8907 83.6006 100.1552 71.9815 13.3069 1241.7903 707.1842 707.1842 559.8133 110.4721 234.1946 179.2997 199.2137 301.7319 1110.1244 202.9461 432.4923 268.2728 121.4953 359.1388 193.8711 273.287 1121.6882;
];
