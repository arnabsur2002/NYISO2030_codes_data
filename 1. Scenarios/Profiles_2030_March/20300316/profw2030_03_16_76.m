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
	3.9087 52.8148 94.0655 119.5037 15.2833 33.5336 30.1138 18.5789 28.3141 28.6715 52.9989 79.0639 119.0302 69.1758 194.2815 73.1944 90.8153 96.2371 83.2724 70.0763 10.0379 78.245 74.1287 88.8836 102.1357 72.9962 13.6919 1302.443 762.166 762.166 573.9352 113.2265 277.5748 180.3766 216.8754 325.1908 1257.6964 223.0474 476.5395 273.5778 119.2085 371.999 198.0988 283.7948 1270.7974;
	3.8851 52.4966 94.2732 118.6889 15.2245 32.5973 26.6573 18.7332 28.1292 29.0472 53.6933 80.0998 120.5899 69.0059 186.7337 70.3508 87.2871 92.4983 85.8223 68.5605 8.8858 76.0603 72.3014 88.5978 100.5712 73.057 13.5516 1297.9764 763.2278 763.2278 603.9398 107.7443 286.0743 176.4748 216.3429 325.6439 1221.6347 231.6762 475.8785 269.3871 120.2741 361.6123 185.0887 276.226 1234.36;
	3.8813 52.445 92.3962 116.9746 15.0988 32.7227 23.0765 18.7252 28.3327 30.6797 56.7109 84.6016 127.3672 66.7419 192.9984 72.711 90.2155 95.6016 88.9487 68.4795 7.6922 76.353 72.9511 89.1152 100.9826 75.8639 13.569 1253.0055 755.8875 755.8875 628.4239 99.9261 296.4957 176.2663 209.2448 322.512 1259.8361 230.9758 445.669 270.4892 121.4368 363.0041 187.11 265.1777 1272.9594;
	3.7439 50.588 92.4071 115.6461 14.8393 31.8231 24.2193 18.4039 28.1185 30.8414 57.0098 85.0474 128.0384 67.5109 198.6761 74.8501 92.8695 98.414 85.5264 69.2417 8.0731 74.254 72.055 89.535 102.072 72.9107 13.7054 1276.8253 766.7501 766.7501 637.1052 104.166 285.088 178.2283 211.6558 327.1467 1270.5752 242.4704 453.3488 273.4072 122.473 353.0246 148.0608 270.1893 1283.8103;
	3.8812 52.4431 94.727 118.9359 15.1141 32.8197 31.4599 18.7544 28.4743 31.1375 57.5571 85.8639 129.2676 66.9316 197.7473 74.5002 92.4354 97.9539 84.7341 71.3636 10.4866 76.5793 74.8329 90.0057 105.1707 74.9261 13.8678 1239.6947 779.9428 779.9428 693.4956 110.7352 282.447 183.6901 209.8396 332.7756 1271.7127 245.1834 479.0664 281.7073 123.4904 364.0797 188.067 269.519 1284.9597;
	3.7697 50.9376 93.8263 118.0141 14.9388 32.3005 29.4008 18.7038 28.1182 30.9316 57.1765 85.2962 128.4129 65.9177 199.1561 75.0309 93.0939 98.6517 87.1357 69.6979 9.8003 75.3679 74.4401 90.0148 104.4675 73.484 13.9324 1261.133 757.2192 757.2192 710.451 105.3333 290.4524 179.4026 206.6609 323.0802 1244.0568 237.3924 470.9649 279.8236 123.6711 358.3207 178.5641 276.2672 1257.0158;
	3.5959 48.5884 88.7231 113.1523 14.0761 29.4895 31.0247 17.918 27.8627 30.945 57.2013 85.3331 128.4685 65.5178 195.5228 73.6621 91.3955 96.852 89.6734 71.0275 10.3416 68.8088 73.9155 87.7078 99.2413 70.6557 13.6411 1273.9989 767.4335 767.4335 722.2963 106.1178 298.9114 182.825 205.4071 327.4383 1285.415 280.8111 471.7887 265.8249 122.8639 327.1367 153.8778 262.4058 1298.8047;
	3.6645 49.5148 87.9983 114.5407 14.4056 32.0882 30.3094 18.2119 27.9392 30.8689 57.0606 85.1232 128.1525 69.3044 195.7187 73.7359 91.4871 96.949 88.5311 69.5065 10.1031 74.8725 73.9255 87.3434 99.5894 70.0229 13.4147 1316.5138 807.8766 807.8766 748.7195 109.2735 295.1037 178.9099 217.2788 344.694 1301.0867 284.6079 461.2882 266.7574 123.1919 355.9654 172.286 266.422 1314.6396;
	3.787 51.1704 89.7621 112.6068 14.8132 33.4995 30.8766 18.4252 26.9522 31.0324 57.3629 85.5741 128.8313 68.2308 196.6058 74.0701 91.9018 97.3885 91.0852 71.3665 10.2922 78.1655 73.3222 87.6493 100.4329 72.0547 13.3441 1295.5067 802.9526 802.9526 785.8468 114.5292 303.6174 183.6976 213.9128 342.5931 1301.9425 310.1131 451.9073 269.0168 123.95 371.6213 209.617 265.1252 1315.5044;
	3.6691 49.5779 90.4049 111.5524 14.7806 32.0438 25.0732 18.5409 27.3064 30.336 56.0756 83.6537 125.9402 67.8772 199.4501 75.1417 93.2313 98.7974 90.4126 71.6283 8.3577 74.7688 73.6982 87.3267 101.4632 71.1269 13.1762 1286.1877 801.026 801.026 759.048 117.4385 301.3755 184.3713 212.8041 341.7711 1264.9368 320.0154 448.5556 271.7763 122.5798 355.472 214.3823 272.5792 1278.1132;
	3.7381 50.5104 89.7309 111.5355 14.5098 32.7073 26.9909 18.6024 27.4545 30.795 56.924 84.9194 127.8458 64.5499 201.1237 75.7722 94.0136 99.6264 92.2311 72.6141 8.997 76.317 73.5366 85.4454 101.7403 71.8856 13.3519 1282.5525 822.8156 822.8156 779.767 118.6832 307.4369 186.9088 202.3725 351.068 1268.1094 322.9753 444.9834 272.5186 123.2602 362.833 209.8095 264.4956 1281.3189;
	3.7356 50.4755 91.4442 113.3122 14.7263 32.0668 25.8948 18.3679 26.6105 28.8725 53.3703 79.618 119.8644 64.1724 198.6063 74.8238 92.8369 98.3794 88.3905 71.1202 8.6316 74.8225 70.8221 86.4567 101.33 68.7252 13.3582 1269.0494 803.8129 803.8129 759.448 116.6874 294.6352 183.0635 201.1893 342.9602 1272.5127 314.4959 451.4951 271.4197 123.925 355.7274 211.9191 265.8209 1285.768;
	3.6578 49.425 88.572 111.3623 14.7872 32.4666 27.1671 18.0154 27.1787 30.298 56.0054 83.549 125.7826 65.6364 194.6405 73.3297 90.9831 96.4149 91.9132 68.9233 9.0557 75.7554 72.2894 82.9576 101.0513 69.8708 13.258 1270.8728 818.1175 818.1175 740.8273 116.5392 306.3773 177.4087 205.7789 349.0635 1266.5051 319.4613 462.7941 270.673 123.1126 360.1627 209.3776 258.6583 1279.6979;
	3.8187 51.5989 94.2224 118.5001 14.6738 32.6119 26.9739 18.402 28.0199 29.8961 55.2625 82.4408 124.1141 66.1459 196.4163 73.9987 91.8132 97.2946 90.0883 71.2954 8.9913 76.0944 73.9355 84.916 101.0437 70.53 13.7025 1259.8521 802.798 802.798 759.5811 117.7409 300.2943 183.5146 207.3762 342.5271 1283.2415 311.4502 470.173 270.6527 122.8836 361.7744 207.2764 270.2848 1296.6086;
	3.8838 52.4784 94.4308 118.3373 14.9487 34.095 23.9139 18.5837 28.0435 30.016 55.4842 82.7715 124.612 67.8686 198.9072 74.9371 92.9776 98.5285 87.9017 71.3228 7.9713 79.5549 75.0959 87.959 102.2975 72.1488 14.0015 1265.4408 772.1704 772.1704 754.0722 115.1227 293.0057 183.585 212.7771 329.4594 1266.081 299.7452 469.1179 274.0112 122.4665 378.2268 209.8516 273.9902 1279.2693;
	3.9289 53.0879 94.4689 118.3063 15.3519 34.009 24.7355 18.5594 27.3182 30.0724 55.5883 82.9268 124.8459 66.2409 185.6097 69.9274 86.7617 91.9415 83.9216 69.3816 8.2452 79.3544 74.7397 88.5995 101.7932 70.8727 13.6488 1247.9155 752.0542 752.0542 695.4264 109.9696 279.7388 178.5883 207.6743 320.8765 1208.7272 271.2786 466.9486 272.6604 121.3213 377.2735 212.4569 279.8542 1221.3181;
	3.9275 53.0693 93.1222 116.0773 15.3758 32.0679 23.6692 18.1316 28.094 29.7003 54.9006 81.9009 123.3014 68.3338 190.9711 71.9472 89.2679 94.5973 86.8863 68.8594 7.8897 74.8252 70.8651 86.97 99.1919 59.2601 12.4963 1179.0854 756.1672 756.1672 671.5822 108.5523 289.6209 177.2442 214.2357 322.6313 1216.359 289.7132 464.464 265.6926 114.8894 355.7402 201.8626 267.8495 1229.0294;
	3.9309 53.115 91.2677 111.3993 15.3519 31.3761 21.2249 13.1021 28.2409 29.1861 53.95 80.4828 121.1665 69.0444 195.7695 73.755 91.5109 96.9742 86.3026 69.0272 7.075 73.2108 73.3856 84.7621 96.3515 69.0516 9.9547 1231.7024 751.0752 751.0752 646.298 101.9287 287.6753 177.6763 216.4636 320.4588 1284.7847 268.7312 475.3825 258.0844 112.2051 348.065 190.7709 248.2823 1298.1679;
	3.9049 52.7634 82.9681 97.2252 15.0273 24.9787 15.9935 7.5721 27.1756 29.2132 54.0002 80.5577 121.2792 67.5236 189.7348 71.4815 88.69 93.9849 91.1615 68.6631 5.3312 58.2835 73.5809 83.6172 90.1254 57.2032 7.6159 1219.0198 714.6954 714.6954 625.0481 97.0135 303.8717 176.7391 211.6955 304.9367 1204.4975 291.9583 456.3107 241.4075 111.1761 277.0966 124.6563 232.4847 1217.0444;
	3.0521 41.2399 74.1931 48.8214 14.2894 20.344 25.6796 7.7327 26.6859 28.7715 53.1837 79.3397 119.4455 64.7648 181.5762 68.4078 84.8763 89.9435 84.4497 68.1203 8.5599 47.4694 70.7622 82.8643 80.557 41.3136 6.8208 1196.2773 729.9883 729.9883 650.7615 100.6015 281.499 175.3418 203.0463 311.4617 1132.7802 299.7938 438.3685 215.7775 110.8889 225.6829 97.874 196.2173 1144.58;
	2.6803 36.2163 78.3975 64.872 14.6109 12.3074 24.7125 9.8399 26.6598 28.7989 53.2343 79.4152 119.5591 64.2278 164.991 62.1594 77.1237 81.7281 78.3752 66.1562 8.2375 28.7173 73.4128 86.6146 79.0783 53.9875 9.4058 1172.9499 693.8557 693.8557 588.4 100.9151 261.2506 170.2863 201.3629 296.0451 1127.3481 264.629 442.7416 211.8169 111.5395 136.5301 74.1822 202.0717 1139.0914;
	2.271 30.6865 78.2483 71.1635 14.9469 16.1885 25.3275 11.337 27.1765 27.4506 50.7421 75.6972 113.9617 63.0357 174.6544 65.8 81.6408 86.5149 72.8097 66.7986 8.4425 37.7731 72.5392 85.7235 95.0995 64.9205 9.8688 1080.5193 667.3077 667.3077 565.2962 94.3816 242.699 171.9397 197.6253 284.718 1034.7414 230.6309 461.6262 254.7308 115.7647 179.5839 64.41 192.5535 1045.52;
	2.8412 38.3908 78.5453 72.8844 14.2095 18.8359 23.0874 13.1231 27.0209 25.9398 47.9493 71.531 107.6895 65.2789 173.9316 65.5277 81.3029 86.1568 75.3551 64.4369 7.6958 43.9504 72.1945 81.8179 85.3337 62.9881 9.2914 1035.8272 740.5515 740.5515 665.222 100.7217 251.1837 165.8607 204.658 315.9686 1075.0439 254.1907 451.9115 228.5724 113.3407 208.9529 75.544 210.5356 1086.2422;
	3.091 41.7669 80.6749 66.5342 14.3699 21.8813 19.2854 8.5195 28.0445 25.7046 47.5146 70.8824 106.7131 62.7404 170.7911 64.3445 79.8349 84.6012 78.3014 60.4085 6.4285 51.0564 70.713 81.2782 71.9046 55.9105 6.4867 892.4089 677.0545 677.0545 611.649 93.3081 261.0046 155.4916 196.6995 288.8766 889.3487 238.1945 437.0571 192.6016 111.9263 242.7367 90.0425 238.143 898.6127;
];