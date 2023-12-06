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
	3.576 48.3195 88.4019 110.2745 14.5498 31.24 29.2451 17.7944 26.6738 28.6554 52.9692 79.0196 118.9635 67.6279 185.9681 70.0624 86.9293 92.1191 70.8277 71.668 9.7484 72.8932 74.1116 82.2313 100.0659 70.6633 13.1733 1268.2729 770.5712 770.5712 582.8955 109.9386 236.0923 184.4735 212.0225 328.7771 1235.9783 225.1053 451.7775 268.0336 116.3197 346.5552 192.8747 275.4602 1248.8531;
	3.6618 49.4784 90.3487 114.0679 14.8776 32.4267 27.3014 17.9852 27.2073 30.1102 55.6583 83.0312 125.003 66.4109 175.8044 66.2333 82.1783 87.0845 79.7566 73.1808 9.1005 75.6622 74.9656 85.6328 99.8955 70.4263 12.9916 1280.3708 802.0376 802.0376 635.1286 102.4012 265.8555 188.3675 208.2073 342.2027 1226.012 219.8334 473.5137 267.5774 120.5426 359.7197 184.1243 270.1501 1238.7829;
	3.6849 49.791 90.0846 112.0447 14.6074 32.3656 23.2302 17.3768 28.0 31.0064 57.3149 85.5026 128.7236 68.021 186.8863 70.4083 87.3585 92.5739 86.641 72.7027 7.7434 75.5196 75.6155 85.888 97.8228 73.4373 12.5624 1286.0266 816.342 816.342 676.2025 97.9828 288.8032 187.1369 213.2552 348.3059 1263.8185 229.6532 447.5489 262.0254 117.812 359.0419 178.9293 262.2182 1276.9833;
	3.6883 49.8374 90.0109 112.2656 14.2782 31.684 25.0795 17.472 27.3352 30.9017 57.1213 85.2138 128.2889 66.42 189.7883 71.5016 88.715 94.0114 85.36 72.1684 8.3598 73.9293 75.001 86.4061 99.5573 69.4531 12.8416 1306.8494 813.4112 813.4112 706.1068 100.7169 284.5332 185.7617 208.2358 347.0554 1278.9804 250.0222 452.5961 266.6712 120.7141 351.4812 150.4921 269.884 1292.3031;
	3.644 49.2386 91.2534 112.4618 13.9848 32.093 32.2561 17.4038 27.8761 30.7909 56.9165 84.9082 127.8288 68.1199 194.1033 73.1273 90.732 96.1489 84.564 72.2887 10.752 74.8836 74.7469 83.2385 99.175 71.1938 12.8164 1260.2286 821.337 821.337 750.6434 106.1611 281.8799 186.0714 213.5651 350.4371 1254.9445 248.487 479.9257 265.6474 119.5768 356.018 187.909 271.0355 1268.0168;
	3.6174 48.8785 92.991 116.53 14.0352 32.7161 29.658 17.4383 27.2912 30.4127 56.2174 83.8652 126.2587 68.2402 197.3165 74.3379 92.234 97.7405 85.9577 71.775 9.886 76.3375 74.1529 86.6824 99.1748 69.6542 12.8863 1248.8531 804.2681 804.2681 744.5183 110.9929 286.5258 184.7489 213.9423 343.1544 1207.9671 241.7783 464.6029 265.6467 121.2679 362.9304 171.8681 271.4241 1220.5501;
	3.5554 48.0409 93.9929 114.1078 14.0854 32.4021 31.3128 17.9393 27.0564 29.6808 54.8644 81.8469 123.2201 67.2392 193.4441 72.8789 90.4239 95.8223 86.1833 72.2009 10.4376 75.605 73.6795 86.7945 100.8144 69.6968 13.2712 1213.3895 788.0665 788.0665 714.1246 108.5851 287.2776 185.8453 210.8039 336.2417 1177.1562 276.373 456.0313 270.0385 120.9421 359.4478 151.8651 264.0655 1189.4182;
	3.6263 48.9987 95.2356 119.0135 14.2653 33.9827 31.1192 18.8163 27.4373 29.8516 55.1803 82.3181 123.9294 68.5513 195.9242 73.8133 91.5832 97.0508 86.992 72.5438 10.3731 79.293 73.2371 89.7046 103.5383 70.6455 13.2044 1257.773 816.9491 816.9491 736.3216 111.1519 289.9734 186.7278 214.9177 348.5649 1249.835 286.9419 476.569 277.3348 123.218 376.9814 176.5427 278.4982 1262.8541;
	3.4722 46.9175 95.2915 118.7835 15.1075 33.8473 31.7484 18.8454 27.3928 30.9939 57.2918 85.468 128.6717 66.8029 196.1407 73.8949 91.6844 97.1581 91.5278 72.4812 10.5828 78.9771 74.8549 89.5535 105.5367 71.4712 13.0971 1262.9337 791.961 791.961 734.8216 117.1122 305.0926 186.5668 209.4362 337.9033 1246.8249 308.3366 472.9981 282.6876 122.2609 375.4797 200.744 277.3271 1259.8127;
	3.5557 48.0448 92.6659 116.8715 14.8343 31.9719 26.182 17.3027 26.8841 30.0231 55.4973 82.7911 124.6415 64.3873 189.5488 71.4114 88.603 93.8928 87.299 69.566 8.7273 74.601 73.5125 87.2366 101.3238 62.2868 12.1286 1234.5649 770.5812 770.5812 655.5659 118.4336 290.9967 179.063 201.8627 328.7813 1192.2736 298.5663 445.7069 271.403 115.4785 354.6746 194.984 266.9123 1204.6931;
	3.64 49.1848 90.5643 116.452 14.796 32.5949 27.67 17.3899 26.0957 31.0213 57.3425 85.5437 128.7856 61.3842 188.0681 70.8536 87.9109 93.1593 86.6608 70.9345 9.2233 76.0548 73.5404 86.5625 99.8384 69.4338 12.5473 1247.878 787.3777 787.3777 713.2981 115.6999 288.8692 182.5856 192.4478 335.9478 1249.2623 305.3377 443.9601 267.4243 116.2724 361.5861 203.7679 261.3114 1262.2755;
	3.5975 48.6103 89.6531 117.3405 14.9383 32.1716 26.0696 17.4055 26.8946 30.4003 56.1945 83.8312 126.2074 64.8827 188.7176 71.0982 88.2145 93.481 86.7192 69.6279 8.6899 75.0671 73.1334 86.7429 102.2642 68.2321 12.483 1242.6798 756.9529 756.9529 690.553 113.7156 289.0641 179.2225 203.4162 322.9666 1217.4086 274.0787 457.314 273.922 120.7713 356.8905 199.4773 264.1247 1230.09;
	3.5697 48.2345 86.9002 111.8661 14.7957 31.1142 24.9764 17.5007 27.0203 30.2305 55.8807 83.363 125.5025 63.9681 187.8365 70.7663 87.8026 93.0446 86.6929 68.359 8.3255 72.5998 71.9032 82.2814 99.1755 69.2586 12.8087 1234.3329 771.1834 771.1834 708.0031 112.615 288.9765 175.9564 200.5487 329.0383 1208.8969 308.4825 441.6463 265.6486 119.9979 345.16 198.7005 257.2881 1221.4896;
	3.7204 50.2714 90.4738 117.7504 15.2421 32.9405 25.5973 17.9164 27.3523 30.6943 56.738 84.6419 127.4279 63.3782 187.8429 70.7687 87.8056 93.0478 85.1959 71.9176 8.5324 76.8612 74.93 84.5008 100.9784 70.5649 12.9547 1239.7371 768.2724 768.2724 667.4794 113.5396 283.9864 185.1161 198.6993 327.7962 1211.5868 274.1685 449.0579 270.478 120.4752 365.4201 203.4457 269.2009 1224.2075;
	3.7666 50.8948 91.2194 116.5596 14.7219 33.1391 21.8848 17.9931 26.1084 30.3192 56.0446 83.6075 125.8707 63.8152 187.6649 70.7016 87.7224 92.9596 89.0436 69.977 7.2949 77.3246 74.7384 86.7009 103.0258 71.0743 12.9036 1252.7058 711.5741 711.5741 660.2023 114.2021 296.8121 180.1209 200.0694 303.6049 1211.5648 296.7241 452.2809 275.9621 120.3133 367.6231 203.8704 262.5648 1224.1852;
	3.6465 49.2725 90.2555 112.146 14.459 32.0492 22.0147 17.5195 26.3779 29.4029 54.3507 81.0806 122.0664 64.7643 180.1542 67.8721 84.2116 89.2392 86.1922 72.3831 7.3382 74.7814 71.6959 84.9593 99.01 66.1412 11.9698 1211.234 730.9472 730.9472 684.5553 112.9346 287.3073 186.3142 203.0448 311.8708 1113.7437 281.2337 443.4179 265.2054 117.7738 355.532 196.2363 269.2656 1125.3452;
	3.7871 51.1722 91.265 108.4243 14.5697 31.0558 21.5133 15.7424 27.1098 29.6398 54.7887 81.7339 123.05 65.2291 190.1981 71.656 88.9065 94.2144 89.1218 72.1709 7.1711 72.4635 72.2365 81.6736 97.5124 43.1 10.6779 1205.6347 730.5257 730.5257 639.5997 110.0969 297.0728 185.7681 204.5021 311.6909 1133.9962 291.3233 455.4065 261.1939 115.152 344.5124 193.1536 256.1065 1145.8086;
	3.8179 51.5878 90.9821 106.2844 14.9148 29.8119 19.5884 11.9142 27.1057 29.5063 54.542 81.366 122.496 67.6551 185.1415 69.751 86.5429 91.7096 84.839 70.4335 6.5295 69.5611 72.301 81.7423 99.5781 65.0795 9.4556 1176.3986 695.304 695.304 603.0497 110.9179 282.7967 181.2961 212.108 296.663 1160.3332 292.8803 468.012 266.7272 120.9674 330.7131 176.8454 248.9788 1172.42;
	3.7716 50.9625 86.2753 98.4738 14.9831 25.9146 16.4069 7.3892 27.0516 29.9564 55.374 82.6071 124.3645 67.4577 184.4359 69.4851 86.2131 91.3601 91.2578 71.713 5.469 60.4673 71.7835 81.9149 94.2318 61.95 8.4134 1243.3988 699.8643 699.8643 647.1117 117.9813 304.1928 184.5896 211.4889 298.6088 1188.0563 318.4414 466.711 252.4067 120.1969 287.4788 134.1593 226.0857 1200.4319;
	2.8596 38.6398 77.9345 59.3813 14.2105 21.9381 24.1375 8.1241 26.5287 29.9893 55.4349 82.6979 124.5012 65.5487 182.7728 68.8586 85.4357 90.5363 88.7974 69.6996 8.0458 51.1888 73.5203 81.5714 84.3507 42.6008 7.5081 1140.7114 680.3838 680.3838 664.0765 114.6197 295.9912 179.407 205.5041 290.2971 1081.8609 312.5933 420.087 225.9394 115.1235 243.3663 106.8789 192.8587 1093.1303;
	2.2119 29.8872 77.5207 63.434 13.9939 11.7904 22.1157 3.9725 25.9337 29.2536 54.0748 80.669 121.4467 64.5367 186.2305 70.1613 87.0519 92.2491 87.1999 67.4417 7.3719 27.511 69.4679 78.4507 69.466 46.2818 8.5942 1071.1672 658.1386 658.1386 606.363 115.1677 290.6665 173.5952 202.3313 280.8058 1037.8809 292.9967 418.7741 186.0696 108.2123 130.7954 68.9391 172.6191 1048.6922;
	2.0935 28.2881 79.4041 73.0437 14.0394 15.9868 21.3793 9.0419 25.8046 28.1536 52.0415 77.6357 116.8801 65.1216 185.0377 69.7119 86.4944 91.6582 89.0706 67.8445 7.1264 37.3024 69.043 73.5521 82.7715 63.1379 10.0064 1108.7192 643.1932 643.1932 628.6477 114.8179 296.902 174.6319 204.1651 274.4291 1029.2301 275.7041 432.2661 221.7093 111.6027 177.3464 61.5 150.6019 1039.9512;
	2.6283 35.5139 77.9128 72.7578 13.1887 17.0529 18.9359 11.314 25.8956 28.2203 52.1648 77.8196 117.157 65.0358 163.3761 61.551 76.3688 80.9282 84.637 63.8598 6.312 39.7902 68.293 76.0991 77.821 59.0194 9.129 966.7936 652.8253 652.8253 651.8882 114.8308 282.1233 164.3753 203.8961 278.5388 1003.6642 278.8832 414.6652 208.4492 113.2388 189.1739 68.3324 114.5191 1014.1191;
	2.7366 36.9771 83.5173 64.4773 13.9419 21.5981 15.5737 6.349 24.9594 27.8264 51.4367 76.7334 115.5217 64.8588 146.9672 55.369 68.6986 72.8 82.163 59.3568 5.1912 50.3955 67.3664 80.7814 72.9197 54.8633 6.0559 859.3491 595.3208 595.3208 585.6155 111.8505 273.8765 152.7846 203.341 254.0035 879.0697 259.4298 411.2694 195.3206 112.3866 239.5944 84.0701 158.9448 888.2267;
];