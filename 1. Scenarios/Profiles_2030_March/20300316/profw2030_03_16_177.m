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
	3.7337 50.4499 88.5722 112.7445 14.8713 32.5215 27.6242 17.8843 26.7545 29.8747 55.223 82.3819 124.0254 66.5947 189.3569 71.3391 88.5134 93.7977 83.6736 66.4995 9.2081 75.8835 75.0112 83.1557 99.1162 74.1409 13.2336 1288.6245 764.074 764.074 571.3974 111.1394 278.9122 171.1698 208.7833 326.0049 1225.2103 217.1489 439.708 265.49 120.4485 360.7717 199.9508 278.9373 1237.9729;
	3.8961 52.6447 90.4998 112.5792 14.9935 33.3572 24.6492 18.2573 27.3018 30.3277 56.0603 83.631 125.9059 67.2217 176.1935 66.3799 82.3602 87.2772 86.076 66.0489 8.2164 77.8335 74.4318 85.3581 99.2465 73.2281 13.3354 1335.7606 786.7866 786.7866 655.9779 107.5552 286.9199 170.0101 210.749 335.6956 1250.2481 218.1614 441.3613 265.8388 121.4576 370.0427 194.6864 276.3452 1263.2715;
	3.8489 52.0072 90.1206 113.3091 14.5232 33.1523 20.5311 17.4968 27.4049 31.0455 57.3871 85.6103 128.8858 66.9873 189.4467 71.3729 88.5553 93.8422 86.9312 68.0005 6.8437 77.3555 73.9991 85.8887 96.5654 75.0026 12.8994 1317.2949 800.597 800.597 692.2195 97.9166 289.7706 175.0335 210.0142 341.5881 1257.9172 220.823 422.6305 258.6574 122.3655 367.7699 193.778 270.1091 1271.0206;
	3.8577 52.1262 92.8061 116.2154 15.1253 33.1521 22.8457 17.8542 27.074 30.9978 57.299 85.4789 128.6879 68.179 191.6156 72.1901 89.5692 94.9166 88.5517 68.9206 7.6152 77.3548 73.0804 87.3498 97.1366 74.4053 13.0169 1306.9754 785.4086 785.4086 672.3149 96.5102 295.1725 177.4019 213.7505 335.1077 1258.9747 242.6862 431.1652 260.1875 119.5385 367.767 164.1011 282.3117 1272.089;
	3.8699 52.2907 94.465 114.94 15.253 33.5524 29.6673 18.492 27.1977 30.4353 56.2592 83.9276 126.3526 66.796 197.5272 74.4172 92.3325 97.8448 89.7016 71.3487 9.8891 78.2889 73.0002 86.6688 98.4373 75.1302 13.3217 1269.7249 783.8875 783.8875 684.7564 103.3364 299.0053 183.6516 209.4145 334.4587 1229.4277 231.6446 456.9688 263.6714 116.9312 372.208 198.6973 278.3791 1242.2342;
	3.8456 51.9629 93.4096 112.7005 15.2324 32.3449 27.8732 17.4451 26.0904 29.4928 54.5171 81.3287 122.44 66.9673 198.4856 74.7783 92.7805 98.3196 87.731 69.5337 9.2911 75.4714 72.5299 85.3966 96.6402 70.8776 12.8151 1264.3194 753.2803 753.2803 685.4241 98.9748 292.4367 178.9798 209.9516 321.3996 1161.7848 223.8454 445.6624 258.8577 116.1702 358.8127 182.3422 275.3446 1173.8867;
	3.6808 49.7359 87.8316 109.5877 14.435 31.7145 29.496 16.8864 25.8688 28.7197 53.0879 79.1966 119.2301 64.699 193.6696 72.9639 90.5293 95.934 85.8356 69.2268 9.832 74.0004 60.8722 84.2973 92.4791 69.4281 12.5614 1260.3545 745.2615 745.2615 686.8459 98.8789 286.1185 178.1899 202.84 317.9783 1206.6703 262.6153 440.7077 247.7118 115.0045 351.819 155.5181 271.0664 1219.2398;
	3.7193 50.2558 87.9399 110.178 14.5806 32.6107 27.0346 17.0587 24.5764 27.075 50.0478 74.6615 112.4024 66.7056 195.5371 73.6675 91.4022 96.8591 88.4501 67.138 9.0115 76.0916 65.82 86.0039 93.9556 63.9949 12.4144 1298.8636 770.4787 770.4787 705.912 110.6112 294.8335 172.8133 209.131 328.7376 1226.8089 287.3012 434.2127 251.6668 114.3009 361.7613 170.1478 273.5415 1239.5882;
	3.6758 49.6675 87.7009 111.6427 14.9988 33.6952 29.5978 16.8191 26.0084 29.0438 53.687 80.0904 120.5756 67.59 195.8613 73.7896 91.5538 97.0197 89.719 69.0506 9.8659 78.6221 70.8018 85.9317 97.2235 67.4051 12.1626 1311.4808 781.8346 781.8346 740.2755 114.0882 299.0633 177.7365 211.9037 333.5828 1234.6527 303.7857 449.9762 260.4201 118.1721 373.792 203.5346 268.215 1247.5137;
	3.658 49.4281 89.4055 110.8656 15.0719 33.1641 22.8881 17.4459 25.0102 27.0705 50.0395 74.649 112.3837 66.9057 198.7903 74.8931 92.9229 98.4705 90.3613 68.8286 7.6294 77.3829 70.2939 87.0078 99.4773 69.1858 12.4249 1293.1939 813.7747 813.7747 767.5724 118.5554 301.2044 177.1649 209.7584 347.2105 1243.2746 317.2424 439.6313 266.4572 117.0635 367.9005 204.0338 273.6046 1256.2254;
	3.6576 49.4219 89.0481 112.8605 14.6646 32.9586 25.1065 18.139 25.2837 28.0915 51.9267 77.4644 116.6223 64.6217 197.2099 74.2977 92.1841 97.6877 90.3223 71.1851 8.3688 76.9034 65.9832 86.0624 100.45 70.1309 12.948 1277.9895 800.1504 800.1504 748.7431 122.1844 301.0743 183.2307 202.5978 341.3975 1248.3316 315.7998 437.4491 269.0624 119.8444 365.6206 204.0875 275.1502 1261.335;
	3.6782 49.7007 91.2482 113.2417 14.7623 34.0817 25.661 17.6491 26.1532 28.0627 51.8735 77.3851 116.5028 66.0741 196.4479 74.0106 91.828 97.3102 91.635 69.6274 8.5537 79.524 71.2166 87.0122 102.5422 68.3746 13.0262 1289.1829 798.8242 798.8242 767.6536 120.3895 305.4499 179.2212 207.1513 340.8317 1253.4864 309.8662 460.2734 274.6666 118.8637 378.0796 205.2105 271.5514 1266.5435;
	3.7271 50.3612 90.6566 112.9781 14.8343 33.6887 26.2059 18.0748 26.8006 24.9452 46.1109 68.7884 103.5606 67.2303 193.5415 72.9156 90.4694 95.8705 90.803 69.4813 8.7353 78.6069 70.5812 85.5387 102.1591 74.7901 13.2658 1265.4328 816.4982 816.4982 785.6787 118.8602 302.6766 178.8449 210.776 348.3726 1253.9911 322.2436 471.1529 273.6403 120.2023 373.7198 207.2478 273.3899 1267.0536;
	3.9059 52.7767 92.6477 118.8136 15.0909 34.8688 27.2205 18.3049 27.1309 26.6907 49.3373 73.6015 110.8067 69.1599 191.7884 72.2552 89.6499 95.0022 88.1861 71.5192 9.0735 81.3605 71.5127 88.0143 104.1392 74.4967 13.4863 1288.1025 775.6888 775.6888 760.3166 118.5504 293.9535 184.0906 216.8257 330.9605 1241.8623 297.3098 474.5213 278.9443 120.8257 386.8112 210.8119 282.0979 1254.7984;
	3.9301 53.1044 94.7768 119.6445 15.2895 35.0205 23.8606 18.9438 27.9623 28.8274 53.287 79.4937 119.6773 68.8863 190.6636 71.8314 89.1241 94.445 90.6348 70.4313 7.9535 81.7146 73.7775 89.7689 105.5197 75.7451 13.7712 1325.2512 779.1924 779.1924 749.5408 118.9036 302.1161 181.2903 215.9679 332.4554 1247.5826 292.6053 478.1915 282.6421 121.6277 388.4943 214.0882 286.382 1260.5782;
	3.8862 52.5105 90.7132 117.2348 14.6517 33.8242 25.1936 18.2434 27.2774 29.4344 54.4091 81.1676 122.1974 68.5454 185.2532 69.7931 86.5951 91.765 90.3702 69.3759 8.3979 78.9231 72.0103 86.598 100.3715 73.2366 13.2827 1289.788 779.6116 779.6116 745.0053 120.9803 301.2341 178.5738 214.8992 332.6343 1191.3946 315.7504 478.9884 268.8524 117.8402 375.2232 207.5116 280.3697 1203.8049;
	3.9278 53.0727 92.9971 114.0963 14.9248 33.4825 23.5588 18.3362 27.8668 29.7056 54.9104 81.9155 123.3234 69.1021 192.817 72.6427 90.1307 95.5117 89.6444 68.39 7.8529 78.1258 72.3364 83.318 101.1421 60.0376 12.3806 1262.172 755.6651 755.6651 707.9271 112.974 298.8148 176.036 216.6444 322.4171 1171.6884 301.4473 473.6798 270.9164 118.9672 371.4324 200.6538 268.8558 1183.8935;
	3.8688 52.2764 92.8538 109.1585 14.8648 30.2227 19.5607 14.023 27.4257 29.7153 54.9284 81.9423 123.3637 67.4658 191.8378 72.2738 89.673 95.0267 89.9606 67.5984 6.5202 70.5197 73.7728 82.4411 99.3739 72.5432 10.1349 1209.8612 713.92 713.92 662.8577 110.3624 299.8686 173.9984 211.5145 304.6059 1188.9656 270.4781 463.3908 266.1801 116.8842 335.2708 181.7271 249.5357 1201.3507;
	3.7228 50.3033 85.5564 96.5298 14.3028 24.303 15.8707 8.648 27.0037 29.171 53.9221 80.4412 121.1037 66.5107 182.8502 68.8877 85.4718 90.5746 87.7714 65.6755 5.2902 56.7071 73.123 81.786 93.0782 68.7175 8.6228 1202.1289 726.3619 726.3619 676.1147 108.6247 292.5714 169.0488 208.5202 309.9144 1172.232 285.8782 471.6886 249.3166 112.5991 269.6016 130.3124 239.31 1184.4428;
	2.9656 40.0717 82.3622 64.9633 14.6154 21.3092 26.751 10.244 27.2017 29.5884 54.6938 81.5923 122.8368 65.2633 181.625 68.4261 84.8991 89.9677 88.7209 67.8478 8.917 49.7214 73.4357 82.5862 89.7603 47.2312 7.7333 1210.9521 766.4426 766.4426 735.89 108.4738 295.7362 174.6405 204.6093 327.0155 1168.7336 307.659 470.1196 240.4293 107.6273 236.39 112.4534 207.2989 1180.9079;
	2.6902 36.3499 84.3062 75.7925 15.0173 13.5795 26.7384 10.3273 27.0956 30.0276 55.5056 82.8035 124.6602 66.7149 185.5243 69.8952 86.7218 91.8992 91.2187 67.3717 8.9128 31.6855 74.0305 84.2926 83.1898 53.6018 8.6865 1275.6404 798.6968 798.6968 722.6201 114.86 304.0624 173.4149 209.1604 340.7773 1246.1984 310.1435 466.098 222.8298 102.5429 150.6417 86.3892 203.9489 1259.1797;
	2.1931 29.6341 81.7332 83.6464 14.3186 16.7837 26.8961 12.405 27.3175 28.5951 52.8576 78.8532 118.713 63.4542 188.8064 71.1317 88.256 93.525 92.0038 65.754 8.9654 39.1619 70.8232 83.1707 95.8603 67.7361 10.0446 1200.3908 751.3926 751.3926 718.4244 110.8711 306.6794 169.251 198.9376 320.5942 1144.8999 279.984 467.394 256.7687 112.0012 186.1869 66.6676 202.1365 1156.8259;
	2.8849 38.9816 82.7932 88.9544 14.5113 19.0515 25.0467 13.9604 27.1089 29.4513 54.4402 81.2141 122.2674 63.516 180.5898 68.0362 84.4152 89.455 89.1933 64.0045 8.3489 44.4535 71.5908 83.9126 92.7863 64.7368 9.5681 1011.3619 750.7237 750.7237 745.7085 103.4886 297.3109 164.7477 199.1311 320.3088 1081.0871 276.4488 462.2058 248.5346 112.924 211.3445 77.0915 218.8694 1092.3484;
	2.9662 40.0797 83.3647 76.6637 14.4575 22.8481 20.4286 9.2221 27.2471 28.4524 52.5939 78.4597 118.1206 64.1414 176.8664 66.6334 82.6748 87.6106 87.9586 67.3238 6.8095 53.3123 69.8419 81.0445 76.1836 62.2175 6.4271 944.0351 715.2143 715.2143 678.1779 108.9859 293.1953 173.2917 201.0919 305.1581 978.9422 275.4029 453.4333 204.0633 110.3657 253.4617 90.9191 225.4852 989.1396;
];
