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
	3.962 53.535 94.4613 120.1301 15.1068 34.5171 31.9244 18.8304 12.2627 18.4416 34.0889 50.854 76.5604 56.5816 205.4599 77.4058 96.0406 101.7743 92.1655 72.744 10.6415 80.5399 29.8025 86.8908 103.1598 75.6684 13.8622 1344.36 783.7128 783.7128 657.8221 118.5379 307.2184 187.2432 177.391 334.3841 1176.0756 256.5893 455.2107 276.3208 119.3159 382.9098 213.6069 280.2046 1188.3264;
	3.9154 52.9054 95.3168 120.393 15.2584 34.5809 32.3813 18.9 14.0465 15.1317 27.9707 41.7268 62.8195 64.5443 201.6672 75.9769 94.2677 99.8956 89.5564 72.3661 10.7938 80.6887 30.1193 87.486 103.7617 75.653 13.7896 1345.0483 799.4353 799.4353 740.9032 118.1948 298.5214 186.2706 202.3551 341.0924 1290.1416 268.2663 473.6136 277.9331 118.1964 383.6173 214.527 280.1215 1303.5806;
	3.865 52.2244 94.2239 116.2678 15.3044 34.8548 32.4614 19.0232 25.6462 16.956 31.343 46.7575 70.3932 60.0732 200.8401 75.6653 93.8811 99.4859 91.5358 73.8514 10.8205 81.3279 32.5179 87.0298 104.3824 75.665 13.8929 1331.209 790.6662 790.6662 766.9455 119.5867 305.1194 190.0936 188.3376 337.3509 1296.9511 296.0939 467.4584 279.5958 116.6567 386.656 214.9641 266.8623 1310.461;
	3.7969 51.3041 92.6235 115.9851 15.3657 34.8851 31.7549 18.5491 28.4478 30.5302 56.4347 84.1894 126.7467 68.3151 205.104 77.2717 95.8742 101.598 91.2764 72.5652 10.585 81.3987 30.4691 86.2743 103.7428 73.4045 13.3327 1338.9429 797.2016 797.2016 752.1924 118.2523 304.2547 186.783 214.1772 340.1393 1254.5222 311.1045 478.3169 277.8826 117.8707 386.9924 192.0132 269.574 1267.5901;
	3.3127 44.762 91.612 117.6969 15.1987 32.3077 31.3949 17.9144 28.4637 30.7245 56.7938 84.7252 127.5533 66.3346 206.1517 77.6665 96.3639 102.117 92.2335 73.2474 10.465 75.3847 75.016 86.0392 103.1087 72.6074 13.2351 1330.8401 790.48 790.48 750.4476 115.8733 307.445 188.539 207.9679 337.2715 1197.8381 326.3857 472.5288 276.1839 119.4 358.4003 192.1261 269.4121 1210.3155;
	3.7419 50.561 91.39 116.4692 14.9433 33.1807 19.9637 18.2424 27.8197 29.6323 54.7748 81.7132 123.0188 56.245 204.8688 77.1831 95.7643 101.4815 65.9121 72.5465 6.6546 77.4217 72.7798 87.0521 101.3099 74.6516 13.7013 1275.5459 770.4635 770.4635 685.8582 113.5102 219.707 186.7348 176.3356 328.7311 1185.1658 297.0804 473.967 271.3659 114.2281 368.0848 165.9769 265.4983 1197.5112;
	3.6941 49.9157 94.1061 118.9123 15.0574 34.2688 14.3194 18.2173 27.3175 29.3986 54.3428 81.0688 122.0486 68.4795 204.0636 76.8798 95.3879 101.0826 92.3712 73.2719 4.7731 79.9604 73.8684 88.9792 103.8447 75.3597 13.7866 1308.8496 746.1341 746.1341 691.8439 114.2789 307.9039 188.6021 214.6925 318.3506 1164.109 302.6003 441.3099 278.1554 116.2076 380.1548 180.9692 275.8122 1176.2351;
	3.8188 51.6004 92.945 119.4074 14.9946 34.1269 3.7638 18.1157 25.2913 29.8654 55.2058 82.3562 123.9868 49.7378 203.766 76.7677 95.2488 100.9353 91.8497 72.7226 1.2546 79.6295 75.312 87.0692 99.8427 71.7814 13.7549 1320.0484 769.1932 769.1932 647.3963 113.5474 306.1657 187.1882 155.9349 328.1891 1223.7958 285.4187 185.7933 267.4357 117.644 378.5813 201.6871 274.9597 1236.5437;
	3.6696 49.5843 87.4543 114.083 14.9345 31.7038 5.3279 17.3299 18.9033 29.6322 54.7747 81.713 123.0185 27.758 201.0318 75.7376 93.9707 99.5809 91.2353 72.8864 1.776 73.9755 73.7453 84.6862 96.9747 69.1191 13.0347 1245.496 698.138 698.138 640.448 112.4485 304.1177 187.6098 87.0252 297.8722 1065.6403 275.289 87.6177 259.7536 119.1207 351.7005 184.0745 271.9992 1076.7407;
	3.8431 51.9294 89.2675 118.1325 15.322 30.3056 7.1378 17.9829 25.5395 26.1412 48.3215 72.0862 108.5254 21.8724 196.0093 73.8454 91.623 97.093 88.9557 71.1915 2.3793 70.7131 49.9765 88.5008 101.0167 70.8285 13.1022 1079.2401 609.6677 609.6677 540.3428 112.2887 296.5191 183.2472 68.5729 260.1249 853.3629 257.2446 130.1737 270.5804 121.5876 336.1904 166.3823 277.7143 862.2521;
	3.6881 49.8344 91.1926 118.4461 15.0773 25.1495 13.085 17.6975 19.419 29.3492 54.2516 80.9327 121.8437 4.6762 201.4414 75.8919 94.1622 99.7838 84.7362 72.0863 4.3617 58.6821 73.5175 89.3671 102.6445 70.2743 13.5538 849.4212 671.4415 671.4415 501.6538 118.6078 282.454 185.5504 14.6607 286.4817 774.3049 215.2306 424.3506 274.9408 119.1126 278.9915 158.0072 276.0782 782.3706;
	3.4513 46.6346 91.5665 118.3606 14.9605 17.5997 3.0564 17.8155 3.1011 27.6657 51.1397 76.2903 114.8547 4.2423 198.0372 74.6094 92.5709 98.0975 40.5263 71.0392 1.0188 41.0661 72.8795 89.3417 104.6927 72.5541 13.2501 593.1423 721.0608 721.0608 482.0503 112.5673 135.0876 182.855 13.3003 307.6526 795.2678 200.7546 214.0295 280.427 120.0284 195.2398 149.3637 274.2448 803.5518;
	3.8617 52.1797 92.0392 116.5181 14.7413 19.0062 0.3773 17.6012 25.362 25.028 46.2639 69.0166 103.9042 49.7423 195.5127 73.6583 91.3908 96.847 56.4785 71.0514 0.1258 44.3477 73.0686 88.6262 104.114 71.553 13.3722 635.164 694.4231 694.4231 478.745 110.2854 188.2617 182.8865 155.9489 296.2872 594.2208 227.9266 62.2555 278.8767 118.6127 210.8417 148.9454 271.4603 600.4106;
	3.588 48.4812 88.2717 113.4724 14.112 14.4135 0.3349 17.532 17.126 22.7299 42.0158 62.6793 94.3634 37.196 196.0675 73.8673 91.6502 97.1218 50.0427 71.0637 0.1116 33.6316 69.5222 88.4884 103.001 70.2257 13.1329 491.2673 651.7921 651.7921 444.2482 92.6113 166.8092 182.9183 116.6145 278.0979 634.2691 229.4681 131.1667 275.8954 117.7979 159.8942 147.559 266.9267 640.8761;
	3.7046 50.0566 92.0814 116.1405 14.6729 16.2582 0.5904 18.1262 0.6908 25.1346 46.4608 69.3104 104.3465 33.2902 191.6801 72.2144 89.5993 94.9485 73.9835 69.7473 0.1968 37.9358 69.648 89.9586 105.7746 73.7144 13.4498 327.8021 641.7448 641.7448 392.2809 82.0576 246.6116 179.5297 104.3693 273.8111 543.0354 213.4083 161.3112 283.3247 113.5385 180.3578 161.6121 256.578 548.6921;
	3.5841 48.4297 93.9695 118.4404 15.2324 8.784 2.8845 18.4451 8.6471 28.1241 51.9869 77.5542 116.7574 26.0238 180.6446 68.0568 84.4408 89.4821 61.6171 70.1544 0.9615 20.4961 72.2919 90.1303 106.2266 72.8069 13.7329 434.042 527.8262 527.8262 356.9929 91.379 205.3903 180.5775 81.5881 225.2058 480.5152 205.0723 134.3948 284.5355 119.926 97.4442 155.3804 252.1031 485.5206;
	3.443 46.5228 93.8528 114.3164 14.5377 16.9946 2.2642 18.2215 16.3307 28.3604 52.4237 78.2058 117.7384 35.7179 180.845 68.1323 84.5345 89.5813 61.419 70.289 0.7547 39.654 73.009 90.1119 105.9514 71.3189 13.5716 994.4463 484.9109 484.9109 282.2968 86.887 204.7302 180.924 111.9805 206.8953 844.934 207.4006 120.4371 283.7985 118.7788 188.5264 129.5653 253.8553 853.7354;
	3.3767 45.6266 93.6962 111.0606 14.4817 20.5298 6.4853 17.9935 8.7427 28.3969 52.4912 78.3066 117.8901 56.4991 182.2654 68.6674 85.1985 90.285 74.4912 70.9017 2.1618 47.9029 70.9857 89.356 101.7737 70.7654 13.6423 1242.8848 595.0115 595.0115 218.8997 66.9039 248.3039 182.5012 177.1322 253.8716 1049.5766 188.9994 138.4811 272.6081 121.2108 227.7439 171.275 270.6082 1060.5097;
	2.5811 34.8759 94.8597 112.2065 14.4514 33.0552 3.6983 18.7271 9.8003 24.5288 45.3411 67.64 101.8316 64.9138 171.4945 64.6095 80.1637 84.9496 46.9976 69.3251 1.2328 77.1289 48.3655 89.4478 103.3835 72.9698 14.0166 1278.2417 703.46 703.46 294.3343 58.78 156.6586 178.4429 203.5136 300.1429 1190.3807 130.5449 275.6425 276.9202 119.9789 366.6929 161.6801 281.1986 1202.7805;
	3.8686 52.2735 95.1061 90.4408 14.8241 34.1061 7.4607 18.5396 26.31 16.5976 30.6803 45.769 68.905 67.0285 164.5522 61.9941 76.9186 81.5108 31.8419 70.3641 2.4869 79.5809 44.9634 89.7848 105.9903 75.7327 14.13 1329.3833 770.6945 770.6945 395.8465 53.8326 106.1396 181.1174 210.1434 328.8296 1233.8013 117.1671 229.5305 283.9027 122.1835 378.3504 184.4964 278.8604 1246.6534;
	3.8549 52.0888 94.5754 118.4112 15.1807 33.5604 12.7181 18.2508 25.5747 17.2195 31.8299 47.484 71.4869 66.271 188.9315 71.1788 88.3145 93.587 62.3641 69.3687 4.2394 78.3077 69.5529 88.203 104.1939 73.7399 13.8151 1293.4957 717.6953 717.6953 610.9673 50.4509 207.8805 178.5552 207.7685 306.2166 1269.3804 157.593 354.5436 279.0907 119.1468 372.297 198.2791 281.9934 1282.6031;
	3.751 50.6841 92.088 116.6879 14.5938 33.6451 4.9776 17.7803 27.927 29.2077 53.9901 80.5425 121.2564 66.7685 194.6503 73.3334 90.9877 96.4198 67.899 70.1868 1.6592 78.5051 72.8433 89.052 104.3992 72.5378 13.6679 1343.3538 743.0982 743.0982 530.8993 74.4872 226.33 180.661 209.3283 317.0552 1319.1683 212.3378 442.9331 279.6408 116.3007 373.2358 199.0491 276.3968 1332.9096;
	3.7724 50.974 92.8328 119.7879 14.9832 34.5882 10.0628 18.2482 28.2589 29.8779 55.2288 82.3906 124.0385 66.5093 191.7713 72.2487 89.6419 94.9937 65.5859 70.677 3.3543 80.7057 73.2259 87.161 104.3181 72.6124 13.6312 1343.1381 822.2511 822.2511 623.162 111.3114 218.6196 181.9229 208.5157 350.8271 1309.4876 234.814 470.5563 279.4234 116.6864 383.6981 209.9199 277.4916 1323.1281;
	3.8747 52.356 91.3777 117.802 14.7092 33.765 29.596 17.605 27.6502 28.3406 52.3871 78.1512 117.6562 64.996 188.5856 71.0485 88.1528 93.4157 70.997 70.1741 9.8653 78.7851 73.7226 85.6505 105.2063 71.3611 13.2446 1341.0383 805.9831 805.9831 574.2096 113.3682 236.6565 180.6284 203.7713 343.8861 1301.1086 237.2062 472.0148 281.8025 117.7954 374.5668 206.5746 275.9218 1314.6618;
];
