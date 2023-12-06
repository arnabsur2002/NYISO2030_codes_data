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
	3.5361 47.7802 85.9232 109.6535 15.0992 15.2597 13.6236 17.4485 25.9835 19.5069 36.0582 53.7917 80.9831 7.32 10.3663 3.9055 4.8457 5.1349 12.4753 25.8499 4.5412 35.6061 38.6024 82.9013 93.4283 70.056 7.4854 554.0782 355.7503 355.7503 201.0438 33.5702 41.5844 66.5376 22.9491 151.7868 463.6451 46.2718 286.205 250.2545 12.0471 169.2814 129.9543 190.85 468.4747;
	3.3988 45.9247 86.6902 106.7145 14.9841 16.6917 12.7123 16.0358 25.7504 21.0251 38.8645 57.9782 87.2859 6.6042 7.724 2.91 3.6105 3.8261 10.8706 15.1706 4.2374 38.9472 54.5282 82.8917 93.6585 71.2673 7.055 589.4418 353.9843 353.9843 165.4155 27.9643 36.2352 39.0491 20.705 151.0333 465.3555 45.7566 286.6652 250.871 10.0799 185.1661 117.3341 180.0352 470.203;
	3.0172 40.7687 86.783 109.1711 15.1327 14.4102 11.1922 17.3868 25.9172 22.0672 40.7909 60.8521 91.6124 9.1584 10.8132 4.0738 5.0545 5.3563 20.2149 23.7367 3.7307 33.6239 60.7049 85.1939 95.3547 71.0439 8.3279 578.9684 326.4138 326.4138 146.4835 23.7325 67.383 61.0984 28.7128 139.2699 391.3199 31.3235 215.6358 255.4143 4.6244 159.8577 94.1594 188.663 395.3962;
	2.8374 38.3395 88.8087 110.2372 15.3712 14.0944 11.3367 18.1277 26.357 22.8779 42.2894 63.0874 94.9777 11.9632 12.6572 4.7685 5.9165 6.2697 12.3856 24.0456 3.7789 32.8868 66.3255 85.2552 99.3771 74.7482 10.2597 508.311 282.7655 282.7655 174.027 27.4552 41.2853 61.8935 37.5062 120.6466 330.2184 30.3214 186.6332 266.1887 14.5748 156.3534 86.9492 205.6666 333.6582;
	2.2001 29.7286 87.2626 110.1165 14.7407 14.9097 9.5848 18.2044 15.0121 21.2448 39.2708 58.5843 88.1983 16.487 19.7851 7.4539 9.2484 9.8005 21.7477 26.0241 3.1949 34.7892 57.7636 85.8633 99.5994 74.4005 9.9163 371.2699 219.805 219.805 156.6133 27.0797 72.4923 66.986 51.6888 93.7835 187.9601 33.6563 168.6128 266.7841 13.3889 165.398 85.7002 215.1735 189.918;
	2.8377 38.3431 87.3763 111.3453 14.6537 23.1039 9.7451 17.7198 0.0 19.881 36.7497 54.8233 82.5362 28.5373 17.0046 6.4064 7.9487 8.4232 35.1214 24.2223 3.2484 53.9091 57.8977 85.6707 100.3473 75.577 8.3283 317.9603 206.7296 206.7296 129.0039 23.9279 117.0714 62.3481 89.4683 88.2046 154.7852 30.1492 169.7176 268.7874 12.3605 256.299 92.303 217.3387 156.3976;
	2.3953 32.3662 87.2705 113.3743 14.0218 23.5348 10.398 17.8437 0.8459 25.9809 48.0253 71.6443 107.86 36.9143 21.227 7.9971 9.9224 10.5148 39.5014 32.7494 3.466 54.9146 59.6248 86.5422 102.1131 76.1921 11.712 243.9741 218.6059 218.6059 91.1711 16.0631 131.6713 84.297 115.7313 93.2718 150.6747 18.4522 120.9212 273.5173 12.4532 261.0795 94.9861 239.3069 152.2443;
	1.545 20.8768 66.2849 113.0623 14.4397 19.5442 8.8106 17.1218 5.6938 25.9295 47.9303 71.5026 107.6468 37.0121 14.6437 5.5169 6.8451 7.2537 49.6929 45.949 2.9369 45.6031 61.2511 84.6772 98.956 75.7905 12.5862 85.8086 170.3149 170.3149 78.2817 8.1875 165.6431 118.2729 116.0381 72.6677 87.5213 15.7502 144.0078 265.0606 10.6769 216.8101 90.3275 216.2544 88.433;
	2.6019 35.1577 81.4993 101.4474 14.6979 23.8463 9.3158 17.5069 6.8383 22.9148 42.3577 63.1894 95.1312 40.6043 17.1678 6.4679 8.0249 8.504 62.5759 47.934 3.1053 55.6414 59.8282 86.2765 99.5273 74.0895 12.7255 115.8834 146.967 146.967 84.1581 6.7039 208.5865 123.3821 127.3 62.7059 112.6863 21.3861 120.082 266.591 19.2503 264.5349 74.8321 229.3313 113.8601;
	1.886 25.4843 78.0164 103.3696 13.4955 12.799 8.7398 16.7304 19.1085 24.8144 45.869 68.4276 103.0173 39.5122 0.0 0.0 0.0 0.0 67.4132 46.2506 2.9133 29.8644 63.4705 80.1463 95.687 70.4651 11.8335 232.6398 230.7231 230.7231 100.5908 5.8983 224.7106 119.049 123.876 98.4418 220.8356 20.1349 0.0 256.3045 3.1873 141.9841 72.0507 205.0479 223.136;
	1.6182 21.8653 78.2776 105.6086 12.7542 25.6692 11.4323 17.17 20.602 26.1093 48.2626 71.9983 108.393 50.3209 10.5591 3.9781 4.9358 5.2304 66.1458 38.8012 3.8108 59.8949 65.4554 84.5651 93.8155 71.9459 11.8753 365.6892 315.7295 315.7295 162.1821 9.0568 220.4859 99.8744 157.7628 134.7112 335.303 21.2297 146.154 251.2916 3.9456 284.7574 91.4818 178.2803 338.7957;
	1.5016 20.2904 83.7721 90.7098 12.3646 29.1841 15.9545 17.6794 20.2677 21.7639 40.2303 60.0157 90.3534 46.4824 5.3041 1.9983 2.4794 2.6274 69.3889 48.7128 5.3182 68.0961 63.1879 82.99 96.4312 73.579 12.0037 443.9753 353.6694 353.6694 257.0673 11.6895 231.2962 125.387 145.7285 150.8989 409.8468 32.729 147.6883 258.2978 0.6321 323.7485 96.7317 181.7352 414.116;
	2.9851 40.3349 93.6256 102.5248 14.7614 31.4395 18.3999 18.477 24.8365 27.0255 49.9562 74.5248 112.1966 56.1993 42.1189 15.8681 19.6881 20.8636 82.8809 59.8048 6.1333 73.3588 69.1178 89.3889 105.4929 76.2618 12.2184 609.5903 428.7445 428.7445 269.6868 19.943 276.2696 153.9376 176.1924 182.931 568.7113 39.3923 200.0623 282.5702 18.7731 348.7688 135.4121 237.3725 574.6353;
	3.4596 46.7474 92.3202 113.6082 14.7974 30.1702 20.3973 18.7032 24.9203 28.6638 52.9846 79.0426 118.9983 52.3471 58.2835 21.958 27.2442 28.8707 82.3907 55.7561 6.7991 70.397 62.6965 89.1701 104.1508 76.432 12.1524 781.6843 563.5569 563.5569 380.8997 25.498 274.6356 143.5163 164.1151 240.451 715.5298 66.6015 260.9509 278.9753 13.3802 334.6876 136.9439 261.4191 722.9832;
	3.7003 49.9985 94.0249 114.7308 15.1802 33.3472 25.9168 18.7042 25.9896 26.6292 49.2237 73.4321 110.5516 64.3929 84.9299 31.9968 39.6998 42.0699 82.9888 51.7152 8.6389 77.8101 39.8731 88.9477 104.3093 76.0837 13.0928 947.488 656.4597 656.4597 462.6571 29.3346 276.6292 133.1152 201.8803 280.0895 935.411 98.3348 416.113 279.4 12.7733 369.9313 156.4742 266.165 945.1549;
	3.7135 50.1777 94.3649 116.2058 14.6528 33.4825 27.6234 18.2247 26.3077 20.7175 38.296 57.13 86.0089 61.6577 123.6969 46.6021 57.8211 61.2731 90.4184 61.983 9.2078 78.1259 38.9701 86.9649 102.818 75.3272 13.2087 994.6155 705.0863 705.0863 622.6797 44.2746 301.3948 159.5445 193.3052 300.8368 976.6084 154.2008 373.3643 275.4054 23.1653 371.433 169.1794 264.4976 986.7814;
	3.8645 52.218 93.8919 118.9823 14.771 34.921 29.5725 18.4303 26.0894 20.6989 38.2616 57.0788 85.9318 64.732 164.8541 62.1078 77.0597 81.6603 92.1803 67.5066 9.8575 81.4822 27.8415 84.2555 101.542 76.2818 13.29 996.4595 755.1165 755.1165 712.1459 76.9859 307.2677 173.7622 202.9436 322.183 970.9886 204.1804 414.5747 271.9874 11.8903 387.3898 210.2482 276.6267 981.1031;
	3.8717 52.3146 95.1033 119.753 14.9845 35.0058 28.5206 18.4334 26.2626 19.013 35.1452 52.4298 78.9327 65.7423 177.4708 66.8611 82.9573 87.9099 89.4579 69.4764 9.5069 81.6803 35.6862 87.1596 104.3772 75.0348 13.4433 1099.5615 761.4866 761.4866 730.908 87.7869 298.1929 178.8324 206.1111 324.9009 1085.351 225.012 447.3496 279.5818 113.0525 388.3313 208.423 267.8086 1096.6567;
	3.8502 52.0245 93.372 116.753 14.8297 34.7603 30.3394 13.5095 26.0957 19.976 36.9254 55.0854 82.9307 65.402 182.2716 68.6698 85.2014 90.288 88.4958 65.1214 10.1131 81.1073 41.0242 84.5501 103.5668 66.0058 13.1605 1236.7895 783.0793 783.0793 677.8931 101.4646 294.9861 167.6225 205.0442 334.1138 1173.5196 238.1611 452.5667 277.4112 116.9542 385.6071 211.1902 277.6977 1185.7438;
	3.8402 51.8889 94.867 113.1773 15.1915 34.7938 30.6908 8.5688 26.8336 20.7686 38.3905 57.271 86.2212 65.1579 194.6165 73.3206 90.9719 96.4031 87.5344 67.4919 10.2303 81.1855 45.2196 38.3262 45.9425 65.8271 10.8656 1288.6164 784.2712 784.2712 705.2773 111.8004 291.7812 173.7244 204.2789 334.6224 1209.9628 267.0768 451.1898 123.0602 120.375 385.9791 216.7311 250.9444 1222.5666;
	3.8651 52.2258 95.1036 121.1432 15.0705 34.538 31.7854 18.7533 18.1843 22.9301 42.386 63.2316 95.1949 66.0585 194.9371 73.4414 91.1217 96.5618 87.3436 69.4473 10.5951 80.5886 42.776 79.552 103.599 74.7012 13.8916 1215.6899 769.4248 769.4248 702.6819 111.943 291.1455 178.7575 207.1023 328.2879 1107.0199 252.5053 461.9091 277.4972 117.164 383.1411 212.6425 274.8856 1118.5514;
	3.8281 51.7262 94.618 123.5477 14.8688 34.5918 31.4962 18.8144 10.0759 24.7942 45.8316 68.3718 102.9333 64.2867 193.3957 72.8607 90.4013 95.7983 88.986 71.4538 10.4987 80.7143 52.5123 88.5177 105.283 75.3929 13.9354 1264.8602 780.5559 780.5559 730.5389 113.8073 296.6198 183.9224 201.5474 333.0372 1178.0422 250.9828 470.5237 282.0081 119.1378 383.7388 206.9782 246.5514 1190.3135;
	3.8557 52.0996 95.2774 120.993 14.8098 34.5495 31.9172 18.4742 19.7592 21.4372 39.6263 59.1147 88.9968 65.8158 191.3015 72.0717 89.4223 94.761 86.4582 67.4331 10.6391 80.6155 53.5077 86.3995 94.51 75.4479 14.0005 1288.1545 789.5483 789.5483 748.2134 114.2683 288.1938 173.5729 206.3415 336.8739 1211.1407 264.3935 468.885 253.1518 118.9253 383.269 207.679 266.1399 1223.7567;
	3.8205 51.6229 94.6625 120.8784 14.5763 33.977 33.3189 18.8188 11.0381 18.4954 34.1886 51.0026 76.7841 64.9854 197.68 74.4748 92.4039 97.9205 88.0506 70.083 11.1063 79.2797 50.856 87.7126 104.9394 74.3342 14.0402 1275.0183 802.3284 802.3284 780.4833 113.0799 293.5022 180.3939 203.7379 342.3268 1200.7492 275.4792 471.968 281.0878 119.1349 376.9185 209.9989 267.6938 1213.257;
];