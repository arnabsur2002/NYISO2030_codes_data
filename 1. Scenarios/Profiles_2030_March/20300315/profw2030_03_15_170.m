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
	3.8289 51.7375 88.996 113.968 14.5607 33.3855 30.7319 17.7666 3.4926 15.336 28.3484 42.2902 63.6676 53.06 196.1166 73.8858 91.6731 97.1461 87.5453 67.8181 10.244 77.8996 25.1035 83.5792 96.7258 72.3037 13.7241 1303.9065 773.2353 773.2353 756.5833 117.6875 291.8177 174.5639 166.3501 329.9137 1162.3403 288.7983 445.2777 259.0869 118.0151 370.3569 213.8458 252.5091 1174.448;
	3.816 51.563 89.0323 112.6191 14.4919 33.0517 31.391 18.2327 4.0385 13.1249 24.2611 36.1929 54.4881 62.5319 192.6412 72.5765 90.0486 95.4246 91.6588 69.8254 10.4637 77.1206 27.0642 81.8935 98.9104 71.5014 13.4437 1298.8755 782.5447 782.5447 753.1843 116.58 305.5294 179.7308 196.0461 333.8857 1247.0453 257.0619 452.9523 264.9386 119.5806 366.6531 214.0209 262.836 1260.0353;
	3.8278 51.7226 88.4095 113.2563 14.5198 33.9751 33.1667 18.1023 23.2251 14.9289 27.5958 41.1675 61.9775 62.0189 181.5661 68.404 84.8716 89.9386 91.2994 70.9957 11.0556 79.2752 29.4588 83.4762 100.5845 71.9425 13.0349 1264.4196 778.0214 778.0214 745.4438 118.7773 304.3314 182.7431 194.4377 331.9558 1182.2725 293.5219 466.503 269.4227 119.6782 376.8972 214.2951 246.2437 1194.5879;
	3.7972 51.3087 90.762 115.4137 14.5836 33.5368 32.0106 18.697 27.7756 29.2205 54.0137 80.5778 121.3094 67.3384 191.2393 72.0483 89.3933 94.7302 90.7595 65.4286 10.6702 78.2525 27.2563 83.954 101.7011 71.4443 13.2709 1327.1287 798.7 798.7 754.1106 117.9727 302.5316 168.4134 211.115 340.7787 1213.3641 308.4138 470.6915 272.4137 121.5296 372.0348 185.3041 253.0102 1226.0033;
	3.4314 46.3652 92.856 119.4351 14.8226 32.7173 31.7577 19.1194 27.5465 29.6814 54.8656 81.8486 123.2226 68.6474 190.4432 71.7484 89.0211 94.3358 88.9428 66.1486 10.5859 76.3404 72.8755 88.4872 105.7168 72.6423 13.5493 1342.7445 813.4269 813.4269 736.6307 117.961 296.4759 170.2666 215.2189 347.0621 1197.9843 317.1896 470.8877 283.1699 123.131 362.9439 194.6258 265.5024 1210.4633;
	3.9089 52.8177 94.959 120.4193 14.9471 34.0935 19.9589 19.1347 26.6411 29.9371 55.3383 82.5539 124.2844 58.5402 197.9504 74.5767 92.5303 98.0545 65.1175 70.3582 6.653 79.5516 74.8308 87.8603 106.1048 73.529 14.0806 1292.0864 825.0316 825.0316 787.1234 119.384 217.0582 181.1022 183.5314 352.0135 1217.293 325.0359 475.2363 284.2093 123.86 378.2109 171.5291 272.301 1229.9732;
	3.8795 52.4199 95.4233 120.9558 15.2828 34.4902 13.1993 19.0716 26.3048 30.528 56.4305 84.1832 126.7373 69.7467 199.1309 75.0214 93.0821 98.6393 89.7613 71.523 4.3998 80.4771 75.3926 89.9413 106.5746 76.1716 14.0434 1274.4787 817.0688 817.0688 761.7956 117.0979 299.2044 184.1004 218.6652 348.616 1191.6964 325.2325 442.7197 285.4677 123.5498 382.6113 184.3295 280.4533 1204.1099;
	3.775 51.0084 95.0921 120.8771 14.9111 33.5908 0.6114 18.6622 12.7958 29.9677 55.3948 82.6381 124.4112 50.452 202.5641 76.3149 94.687 100.3399 89.8712 72.6383 0.2038 78.3785 75.6887 89.9178 105.5449 75.3738 13.881 1243.9604 778.567 778.567 758.7932 115.5393 299.5707 186.9711 158.1737 332.1886 1203.3457 328.2638 188.5508 282.7095 123.2404 372.6339 195.4074 273.9853 1215.8805;
	3.9018 52.7223 95.3694 121.0535 15.3525 32.3756 0.0563 18.7156 11.2757 30.3211 56.0481 83.6128 125.8786 30.9146 203.2545 76.5749 95.0096 100.6819 89.0225 73.4088 0.0188 75.5432 75.171 90.0293 105.9943 74.1761 13.8596 1129.4804 705.4015 705.4015 751.7296 115.9126 296.7415 188.9544 96.9215 300.9713 1048.2212 309.8331 218.59 283.9134 123.5572 359.1537 190.5495 276.8381 1059.1402;
	3.8396 51.8814 94.9086 121.0252 15.2603 29.5006 0.0 18.6478 1.3122 26.904 49.7316 74.1897 111.6922 22.9174 200.0249 75.3582 93.5 99.0821 90.4082 72.7577 0.0 68.8347 54.7569 89.608 105.651 74.7738 13.6623 888.3631 619.8975 619.8975 607.5519 112.4311 301.3605 187.2785 71.8492 264.4896 810.0309 273.1036 82.2592 282.9936 121.0249 327.2597 156.8898 273.9374 818.4688;
	3.7249 50.332 95.1724 120.9482 15.3197 26.4228 0.0 18.7311 6.7725 30.1538 55.7389 83.1515 125.1842 8.9005 202.5467 76.3083 94.6788 100.3313 83.4534 71.9905 0.0 61.6533 74.9753 90.0692 106.4474 75.707 14.0672 767.6683 651.5574 651.5574 536.9944 113.2374 278.1779 185.3036 27.9041 277.9978 736.8377 220.5542 72.7008 285.1268 120.2577 293.1174 148.8872 277.3022 744.5131;
	3.747 50.6308 95.4341 121.0446 15.4214 22.8675 0.5694 19.0233 8.3292 28.8771 53.379 79.6309 119.8839 1.5262 203.5782 76.6969 95.161 100.8422 43.2437 72.5873 0.1898 53.3575 74.7995 90.1347 106.6446 76.5319 14.1072 546.4792 706.0622 706.0622 511.0267 111.6373 144.1456 186.8398 4.7847 301.2532 773.719 208.2138 52.4619 285.6553 122.7222 253.6769 152.2394 284.0867 781.7786;
	3.9044 52.7566 95.1079 120.5466 15.4225 23.23 0.0 19.0003 25.799 24.9752 46.1662 68.8709 103.6848 48.834 203.9026 76.8191 95.3126 101.0029 63.2631 72.5948 0.0 54.2033 72.7525 89.8723 106.3668 75.8002 14.1552 604.1929 682.7304 682.7304 504.5817 108.3959 210.8769 186.8593 153.1012 291.2983 584.9224 226.4084 16.5956 284.9109 119.4942 257.6978 157.7134 280.3903 591.0154;
	3.8591 52.1446 93.8183 117.8727 15.3576 21.3248 5.3414 18.929 19.7203 23.3709 43.2007 64.447 97.0245 36.8798 200.323 75.4705 93.6394 99.2298 57.5884 72.6871 1.7805 49.7579 70.31 87.1302 105.5871 74.5259 14.1291 498.2539 678.1152 678.1152 459.2772 98.4907 191.9612 187.0968 115.6232 289.3292 666.5157 236.0571 195.8125 282.8226 117.484 236.5633 168.9423 277.6037 673.4586;
	3.8436 51.935 93.7398 117.3301 15.3715 19.1928 0.708 17.7571 14.9367 25.2656 46.703 69.6717 104.8904 30.7844 194.9197 73.4349 91.1136 96.5533 72.2348 70.7401 0.236 44.7832 68.906 87.7499 103.2227 73.2065 13.7867 364.3822 661.9566 661.9566 446.8577 87.5238 240.7826 182.0851 96.5134 282.4348 591.9284 235.6662 117.3758 276.4893 112.8275 212.9122 170.7089 257.6722 598.0944;
	3.6068 48.7359 94.8493 119.8156 15.3837 10.5504 3.3903 17.704 8.0681 27.5646 50.9527 76.0114 114.4348 21.4959 183.1295 68.993 85.6024 90.713 66.191 70.1342 1.1301 24.6175 70.3758 88.5319 103.0382 71.1788 13.7313 350.0781 534.9084 534.9084 392.8847 89.0143 220.6367 180.5257 67.3924 228.2276 461.1678 215.5183 96.1822 275.9952 119.2527 117.0387 156.7921 254.7282 465.9716;
	3.5837 48.4237 94.8304 118.6689 15.2749 19.2315 1.3637 18.4447 14.1331 28.1869 52.103 77.7275 117.0183 30.8854 187.7974 70.7516 87.7844 93.0252 64.9349 71.0126 0.4546 44.8734 73.6494 89.994 106.0285 73.5263 13.5869 863.5158 486.3926 486.3926 282.298 87.7665 216.4495 182.7867 96.83 207.5275 836.4219 223.0965 119.4352 284.0048 117.1236 213.341 134.0423 259.1115 845.1346;
	3.382 45.6977 92.75 116.9561 15.2204 24.0548 0.3787 18.1483 3.1716 28.5694 52.8101 78.7822 118.6062 58.2914 190.3699 71.7208 88.9869 94.2995 71.5058 70.6054 0.1262 56.1279 72.9184 87.5727 104.0579 73.8071 13.5391 1150.4251 582.3628 582.3628 212.1725 69.8966 238.3527 181.7384 182.7515 248.4748 1050.8061 199.4606 138.0636 278.7266 117.9626 266.8481 177.097 275.9191 1061.752;
	2.2807 30.8167 91.9767 114.0748 15.0712 32.5793 0.0 18.3784 0.1478 23.6662 43.7467 65.2614 98.2508 64.2353 192.0422 72.3508 89.7686 95.1279 52.9341 69.58 0.0 76.0183 53.7659 88.5767 103.0642 74.5757 13.386 1166.5835 692.1633 692.1633 290.9922 59.8067 176.4468 179.0992 201.3864 295.323 1179.3866 130.9864 259.5847 276.0647 114.6388 361.4126 159.8072 277.5444 1191.6719;
	3.7967 51.3014 92.3368 87.8725 15.3677 33.9738 0.3293 18.1153 4.1531 14.9092 27.5594 41.1132 61.8957 65.938 201.3571 75.8601 94.1227 99.742 41.9725 71.2155 0.1098 79.2723 44.8379 88.6458 103.8004 75.9346 13.6425 1266.2962 743.9051 743.9051 375.7205 56.3151 139.9083 183.3088 206.7244 317.3995 1213.0931 113.4612 235.5738 278.0367 112.9514 376.883 190.0823 277.4884 1225.7295;
	3.804 51.4004 91.6281 116.0329 15.2511 33.3749 0.5175 18.2244 12.7992 15.9239 29.4351 43.9114 66.1084 67.0491 201.9931 76.0997 94.42 100.057 62.8533 70.8362 0.1725 77.8748 69.6856 87.6106 103.4504 74.9498 13.4703 1244.6148 695.2694 695.2694 621.8783 50.0086 209.5111 182.3325 210.208 296.6483 1271.0147 150.0398 415.3865 277.0993 112.1611 370.2391 190.6946 278.5749 1284.2544;
	3.7614 50.8245 91.3961 115.3696 15.0607 33.3288 0.0306 18.1698 27.8378 29.7968 55.0789 82.1668 123.7017 67.4183 202.619 76.3355 94.7126 100.3671 63.1927 69.9004 0.0102 77.7671 75.6122 89.5548 103.7267 75.1443 13.5316 1281.4371 682.0447 682.0447 523.9727 74.6424 210.6424 179.9237 211.3653 291.0057 1243.2997 194.4948 449.6466 277.8393 113.6362 369.7271 198.3963 284.6861 1256.2508;
	3.7128 50.1682 92.5804 115.6361 15.2251 33.4771 0.9255 18.3071 28.1231 30.4551 56.2958 83.9823 126.4349 67.5814 200.9626 75.7115 93.9383 99.5466 63.3654 70.1873 0.3085 78.1132 74.8191 89.331 103.6733 74.582 13.7048 1283.4374 772.7286 772.7286 593.4732 110.3488 211.2179 180.6623 211.8769 329.6975 1261.0708 221.8258 476.2247 277.6962 112.5451 371.3725 198.5899 281.2267 1274.2069;
	3.7116 50.1522 91.6877 116.5745 15.2727 33.3054 27.7059 17.6053 27.1955 28.3142 52.3385 78.0787 117.547 65.5138 194.9742 73.4554 91.1391 96.5802 65.0831 69.1854 9.2353 77.7126 74.4865 88.1083 103.6075 72.9816 13.2141 1300.2677 750.4917 750.4917 573.3598 111.261 216.9437 178.0835 205.3947 320.2098 1241.1126 220.626 470.4515 277.5201 115.2757 369.4679 199.5314 278.1961 1254.0408;
];
