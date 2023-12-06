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
	3.6363 49.1347 91.5797 114.0888 14.4167 32.0206 28.6059 18.3814 27.45 27.3543 50.564 75.4315 113.5617 64.388 195.3437 73.5946 91.3118 96.7633 15.5384 69.1487 9.5353 74.7147 66.6368 86.8855 103.5942 74.3066 13.6644 1135.3656 665.1239 665.1239 542.3398 91.0196 51.7947 177.9889 201.8651 283.7862 1093.0257 206.0733 461.0822 277.4844 116.6499 355.2149 141.4505 277.5514 1104.4114;
	3.7239 50.3178 92.9415 119.2517 14.4025 31.8149 28.7801 18.5104 27.1199 27.3599 50.5744 75.4471 113.5852 65.0849 193.908 73.0537 90.6407 96.0521 19.6571 70.2703 9.5934 74.2347 68.661 86.0155 102.2995 73.933 13.3934 1194.4166 674.1221 674.1221 569.7017 89.6795 65.5236 180.876 204.05 287.6254 1109.4821 213.4004 452.8938 274.0165 117.0385 352.9329 143.5578 283.6286 1121.0392;
	3.761 50.8189 93.8504 68.6453 14.9699 32.2332 29.8259 18.5859 27.9327 27.9955 51.7492 77.1996 116.2236 65.6102 196.2588 73.9394 91.7396 97.2166 17.978 67.4927 9.942 75.2107 67.3612 87.5671 103.8166 74.565 13.5365 1208.6266 668.1099 668.1099 556.4823 89.8598 59.9268 173.7263 205.697 285.0602 1160.6435 205.423 457.3072 278.0802 117.6279 357.5733 140.1539 282.6736 1172.7335;
	3.6545 49.38 92.5801 87.8392 14.8756 32.0839 29.8084 18.5394 28.323 28.4573 52.6029 78.4732 118.141 66.5571 197.8171 74.5264 92.468 97.9885 37.5098 70.1126 9.9361 74.8624 58.2088 85.9823 102.46 74.4231 13.5994 1253.3301 714.0644 714.0644 562.6797 93.4006 125.0325 180.4699 208.6654 304.6675 1125.8703 240.0094 465.3436 274.4464 117.5175 355.9171 171.0043 280.8861 1137.5981;
	3.5466 47.923 93.3612 120.4715 14.7721 32.7556 25.5695 18.9217 28.3475 29.2549 54.0772 80.6725 121.4521 68.3112 194.8429 73.4059 91.0777 96.5152 78.0113 69.7692 8.5232 76.4296 47.5138 87.2319 103.5011 75.3117 13.647 1175.4434 641.6048 641.6048 517.8513 86.793 260.0378 179.5861 214.1649 273.7514 1104.3936 217.6879 457.8942 277.2352 115.9764 363.3683 190.9124 277.2126 1115.8977;
	3.7888 51.1945 92.7891 118.6127 14.7509 32.3971 28.7149 18.3385 27.3436 29.6532 54.8135 81.771 123.1057 69.2765 199.7746 75.2639 93.383 98.9581 86.7087 71.3251 9.5716 75.5933 57.516 86.9622 102.7157 72.5309 13.4141 1163.7068 683.8485 683.8485 487.3016 85.4799 289.0291 183.591 217.1913 291.7754 1025.273 204.6627 445.846 275.1313 114.3982 359.3922 198.8312 278.5262 1035.9529;
	3.8034 51.3928 94.4497 119.8813 15.3281 32.9044 28.8671 18.4635 27.7258 29.7806 55.0489 82.1221 123.6344 69.494 201.6235 75.9605 94.2472 99.8739 86.6824 70.6003 9.6224 76.7769 72.3977 86.436 100.9877 75.4257 13.1614 1188.26 731.3519 731.3519 536.9592 86.4457 288.9414 181.7252 217.8732 312.0435 1077.4414 227.1423 454.2366 270.5027 117.8575 365.0191 202.9899 274.4877 1088.6647;
	3.8332 51.7953 94.5437 120.508 15.2183 33.0233 29.0874 18.7758 27.1639 29.0191 53.6415 80.0225 120.4734 69.4956 201.1698 75.7895 94.0352 99.6492 84.8023 70.4623 9.6958 77.0545 71.6636 88.7477 105.0573 75.3866 13.2045 1193.4939 733.1292 733.1292 547.3821 80.7443 282.6742 181.3701 217.8782 312.8018 1127.8154 237.3092 463.8194 281.4034 116.0241 366.339 201.1102 272.1546 1139.5635;
	3.8801 52.4284 95.2136 121.1457 15.2296 34.7759 29.2913 18.2741 27.7132 31.1247 57.5336 85.8288 129.2148 69.7853 203.7124 76.7475 95.2237 100.9087 90.5914 71.9159 9.7638 81.1437 72.7357 88.7615 104.3979 74.6565 13.2468 1231.4661 784.3513 784.3513 595.579 78.6639 301.9712 185.1118 218.7862 334.6566 1201.2389 276.6898 471.4257 279.6372 120.1539 385.7801 181.301 285.1614 1213.7518;
	3.8804 52.4323 95.1198 120.7403 15.2999 34.9192 30.8248 18.6117 28.1656 31.0132 57.3274 85.5213 128.7518 69.9703 200.8859 75.6826 93.9025 99.5086 90.331 72.5428 10.2749 81.478 75.0917 88.7022 106.0469 75.2781 13.157 1190.7886 768.3342 768.3342 673.0047 84.9006 301.1034 186.7254 219.3665 327.8226 1159.767 295.9095 478.4423 284.0543 121.7176 387.3699 173.3549 284.518 1171.8479;
	3.6872 49.8223 94.1159 120.7469 14.8461 34.1312 28.7049 17.583 27.9191 31.4048 58.0512 86.601 130.3773 69.8985 202.7049 76.3679 94.7528 100.4097 90.0905 73.5955 9.5683 79.6394 75.5716 87.027 103.0479 72.4322 12.8961 1076.8327 723.7847 723.7847 623.4954 86.8913 300.3015 189.4351 219.1412 308.8148 1036.3161 301.3354 475.9489 276.0212 121.3686 378.6284 164.5935 280.9492 1047.111;
	3.7697 50.9375 94.7042 120.7995 15.3071 34.9774 29.137 17.8336 28.3941 31.2896 57.8383 86.2833 129.8991 69.8515 204.7482 77.1377 95.7079 101.4218 91.0141 73.8408 9.7123 81.614 75.721 87.5753 104.8297 74.0131 12.8544 1022.713 757.5186 757.5186 669.6156 85.2879 303.3803 190.0664 218.994 323.2079 1056.6174 291.5201 478.8532 280.794 121.795 388.016 200.7195 284.3056 1067.6238;
	3.5723 48.2699 88.3181 114.1576 14.5088 32.6427 28.6323 16.9045 27.4673 30.7646 56.8679 84.8357 127.7197 69.8553 202.1513 76.1593 94.494 100.1354 85.494 73.8114 9.5441 76.1663 74.1293 87.3131 99.4506 71.6645 12.416 982.2717 744.1718 744.1718 668.576 87.6232 284.98 189.9907 219.0057 317.5133 966.7156 277.4255 471.7697 266.3855 118.0464 362.1165 153.0638 273.0821 976.7856;
	3.867 52.2522 92.0783 119.7708 15.3087 34.7153 29.2348 17.5629 28.2966 31.2894 57.838 86.2829 129.8984 69.8816 205.0743 77.2606 95.8603 101.5833 89.9398 73.6518 9.7449 81.0023 75.3774 87.5667 100.4884 71.6243 12.8817 967.8294 725.3286 725.3286 696.379 83.8083 299.7994 189.5799 219.0882 309.4735 984.8974 305.0908 476.5272 269.1654 122.2922 385.108 164.7796 285.1296 995.1567;
	3.9013 52.7147 91.1109 115.9738 15.3728 34.7172 27.0658 17.5753 28.4647 31.3344 57.9213 86.4071 130.0854 69.2242 201.4689 75.9022 94.175 99.7974 87.9539 73.2623 9.0219 81.0068 74.9339 88.2186 101.5051 72.0908 12.8712 968.3019 710.7469 710.7469 685.5639 90.7147 293.1797 188.5773 217.0272 303.252 891.3323 297.8591 478.0882 271.8886 121.2308 385.1296 178.0707 281.149 900.617;
	3.731 50.4146 91.1893 116.325 15.2129 33.9217 26.6091 17.652 28.1482 30.2564 55.9285 83.4344 125.61 68.9954 199.9077 75.3141 93.4452 99.024 88.386 72.5715 8.8697 79.1505 73.7018 86.7466 102.5666 73.3246 13.1607 1056.378 718.318 718.318 643.482 97.1142 294.62 186.7992 216.31 306.4824 950.6827 295.8228 472.3751 274.7319 117.8081 376.3042 177.6749 269.0478 960.5857;
	3.5948 48.5739 89.3629 116.7052 15.2552 34.0224 26.1154 16.817 27.5446 30.54 56.4527 84.2164 126.7873 68.7188 200.0441 75.3655 93.509 99.0916 90.4501 72.9104 8.7051 79.3855 74.7126 87.5205 100.0906 71.6283 12.0031 1091.5008 726.3711 726.3711 677.0882 99.8363 301.5002 187.6716 215.4427 309.9184 1058.4101 282.4435 463.977 268.0999 114.9699 377.4215 189.0668 248.1589 1069.4352;
	3.5322 47.7277 92.2321 116.3193 15.2953 31.5304 24.8025 14.4674 27.2686 30.0946 55.6293 82.988 124.938 67.2483 189.788 71.5015 88.7149 94.0113 84.085 69.9264 8.2675 73.571 73.382 87.557 101.5023 67.2001 11.275 1211.8965 664.9509 664.9509 647.4659 99.9823 280.2834 179.9906 210.8326 283.7124 1068.7648 280.4565 465.409 271.8812 115.1494 349.7776 186.4564 254.0791 1079.8977;
	3.4357 46.4238 90.557 109.1323 15.2913 32.067 25.8564 15.6676 27.0681 29.8825 55.2373 82.4032 124.0575 67.4513 188.256 70.9243 87.9987 93.2524 84.1677 69.6303 8.6188 74.823 73.4326 87.9576 102.545 47.9925 12.1522 1216.2076 727.3282 727.3282 637.1892 101.5552 280.5591 179.2287 211.4691 310.3267 1122.184 291.0141 469.9875 274.6742 114.086 355.7299 153.5738 234.9591 1133.8734;
	3.6065 48.7322 87.4332 103.0098 15.1931 28.4085 25.8791 15.3616 27.4492 30.0668 55.5781 82.9115 124.8229 68.6051 187.5647 70.6639 87.6756 92.9099 80.5486 69.4061 8.6264 66.2865 72.4753 87.5852 103.1674 47.8823 10.7797 1291.6975 769.8985 769.8985 658.173 113.39 268.4954 178.6515 215.0862 328.49 1247.1452 287.6722 471.8667 276.3412 115.214 315.145 166.1116 240.2872 1260.1363;
	3.5639 48.156 82.9989 101.7604 14.6834 29.1111 29.5077 14.1565 27.0339 29.7812 55.0501 82.1239 123.6371 68.8014 189.1164 71.2485 88.4009 93.6786 84.4669 69.6846 9.8359 67.9259 71.8055 83.5358 96.2406 52.5745 9.2182 1270.4294 787.1988 787.1988 682.9763 113.4663 281.5565 179.3684 215.7017 335.8715 1228.6453 303.3842 476.7185 257.7872 112.9139 322.9391 148.0912 237.8533 1241.4437;
	3.406 46.0229 82.8593 85.9456 14.4756 28.592 24.9719 11.3719 26.5786 29.085 53.7632 80.2041 120.7468 66.5316 185.4173 69.8549 86.6718 91.8462 84.7433 70.8554 8.324 66.7147 69.752 83.014 91.2047 50.9448 6.0275 1220.5184 776.6255 776.6255 738.9717 115.9548 282.4778 182.3819 208.5854 331.3602 1102.0911 301.7304 455.2188 244.2983 104.9045 317.1805 144.6783 223.7384 1113.5712;
	3.4517 46.6402 87.0938 80.8124 14.2286 27.6496 27.2828 11.2389 26.814 28.3828 52.4653 78.2678 117.8318 68.9187 178.9063 67.4019 83.6283 88.621 84.9731 70.8829 9.0943 64.5158 69.8981 84.6855 95.5681 54.4392 6.297 1161.7168 776.7179 776.7179 767.6516 112.7622 283.2436 182.4527 216.0693 331.3996 1106.4786 299.703 465.3576 255.9859 112.6387 306.7267 166.5776 216.5182 1118.0045;
	3.82 51.6171 86.5514 97.2911 14.2821 32.3108 25.5754 9.3997 26.9878 28.4337 52.5592 78.408 118.0429 67.9718 186.0543 70.0949 86.9695 92.1618 88.6275 71.2744 8.5251 75.3919 71.1842 81.8106 95.2931 51.0231 5.4362 1213.4652 785.9361 785.9361 786.8669 112.8771 295.4249 183.4606 213.1007 335.3327 1181.2795 294.3037 466.603 255.2493 113.0665 358.4348 182.7076 203.49 1193.5845;
];