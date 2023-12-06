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
	3.9161 52.9157 88.8608 112.7865 14.8846 34.9234 32.5467 18.1458 10.2756 16.3479 30.2188 45.0805 67.8684 51.4642 198.614 74.8267 92.8405 98.3832 86.5429 67.606 10.8489 81.488 27.1317 85.4866 101.2378 73.5699 13.8589 1276.591 763.404 763.404 654.1707 106.0468 288.4764 174.0179 161.3473 325.719 1151.069 232.7547 465.7479 271.1727 123.6109 387.4172 218.7985 276.9846 1163.0593;
	3.8976 52.6657 89.5312 109.6913 14.6687 34.5604 31.9986 17.8553 11.065 3.1935 5.9031 8.8063 13.2579 54.5734 196.9159 74.1869 92.0468 97.5421 90.9414 69.6392 10.6662 80.641 25.5323 81.9468 97.1767 72.717 13.3153 1310.7966 756.7728 756.7728 716.0522 112.5209 303.1381 179.2514 171.0951 322.8897 1247.0595 237.5298 448.0997 260.2946 122.5587 383.3902 211.1097 267.0538 1260.0497;
	3.8838 52.4786 86.7537 105.4829 14.7584 34.8556 32.5959 17.7531 21.9531 15.0397 27.8007 41.4732 62.4377 46.8962 183.0646 68.9685 85.5721 90.6809 91.1114 70.3371 10.8653 81.3298 27.8132 81.9766 96.7111 71.5665 12.9418 1226.1446 727.6429 727.6429 666.1923 112.9862 303.7046 181.0478 147.0259 310.461 1211.7102 250.0699 443.5448 259.0477 121.9425 386.6652 211.6029 255.0209 1224.3322;
	3.9097 52.829 88.4702 109.954 14.7214 35.1237 32.0059 17.2573 27.8141 29.1211 53.83 80.3037 120.8968 63.293 201.1373 75.7773 94.02 99.6331 90.3889 67.4279 10.6686 81.9554 26.4211 80.8153 93.3852 71.0681 12.2491 1270.3625 762.9721 762.9721 677.3831 111.174 301.2964 173.5597 198.4322 325.5348 1217.5589 259.1435 459.1133 250.1388 123.1571 389.6393 186.6885 254.4861 1230.2418;
	3.5655 48.1782 89.214 110.8485 14.869 33.7217 31.8044 17.4869 27.6224 30.2932 55.9964 83.5357 125.7625 64.5684 199.3263 75.095 93.1735 98.736 89.1667 68.6256 10.6015 78.6841 72.5976 82.1652 94.9628 71.1241 12.8059 1262.3851 781.9931 781.9931 735.8931 112.0034 297.2223 176.6424 202.4306 333.6504 1175.0118 280.9227 468.7544 254.3648 120.9314 374.0865 183.7883 259.4675 1187.2515;
	3.8849 52.4937 88.5801 110.1287 14.7853 34.559 20.7151 17.0327 26.7512 30.2956 56.0009 83.5423 125.7725 53.2505 203.0904 76.5131 94.9329 100.6006 64.2551 71.507 6.905 80.6377 73.1771 83.2421 94.2831 70.0518 12.9131 1233.0755 792.445 792.445 736.3482 113.4627 214.1837 184.0592 166.9474 338.1099 1202.743 273.7272 471.7929 252.5441 118.7352 383.3746 162.4632 258.7092 1215.2715;
	3.7373 50.4994 89.9805 113.1841 14.76 35.0385 14.416 17.3853 26.0232 30.2585 55.9324 83.4401 125.6186 66.7493 199.428 75.1333 93.221 98.7864 89.9355 71.7665 4.8053 81.7566 71.2368 85.2677 97.5775 69.8708 13.1763 1266.3429 788.4277 788.4277 705.2621 107.5564 299.7851 184.7271 209.268 336.3958 1181.5145 275.3029 440.9553 261.3682 120.8393 388.6941 179.9256 267.4251 1193.822;
	3.8856 52.5027 91.8222 114.9515 14.6551 34.8615 10.5738 17.3903 3.9146 30.144 55.7207 83.1243 125.1432 44.8283 201.3685 75.8644 94.1281 99.7477 87.7648 71.3378 3.5246 81.3436 72.9629 85.005 97.6712 70.5219 13.1988 1281.5528 760.4787 760.4787 676.1586 112.1932 292.5492 183.6238 140.5428 324.4709 1162.3914 298.5173 182.0462 261.6194 121.3439 386.7307 207.2095 272.0972 1174.4997;
	3.8794 52.4194 92.4442 118.5427 14.307 32.1865 12.4359 17.5693 2.8395 29.7325 54.9601 81.9897 123.435 25.7075 197.463 74.393 92.3025 97.8131 86.8208 73.0703 4.1453 75.1018 71.4755 86.0123 99.6065 69.3673 12.9855 1220.5594 700.4638 700.4638 701.2518 116.2084 289.4027 188.0832 80.5964 298.8645 1042.2219 273.9303 134.9619 266.8032 120.7956 357.0552 184.0675 284.0937 1053.0783;
	3.7665 50.894 89.9301 117.3964 14.4776 30.2175 4.8972 17.93 0.2114 26.2107 48.45 72.2779 108.814 17.9061 192.0893 72.3685 89.7906 95.1512 87.6736 72.7424 1.6324 70.5074 50.119 86.103 98.7705 69.9636 12.917 964.1041 609.591 609.591 584.5288 114.9601 292.2452 187.2392 56.138 260.0922 777.8131 234.4582 70.9385 264.5639 120.7083 335.2123 152.5479 271.6179 785.9153;
	3.7216 50.2867 93.7346 120.1598 14.7747 26.9704 5.4114 17.8691 0.0 29.0696 53.7346 80.1615 120.6827 1.2236 192.4646 72.5099 89.966 95.3371 77.5458 72.2 1.8038 62.9308 70.2388 88.4822 101.1116 71.8694 13.4454 847.802 652.8682 652.8682 504.3002 113.0102 258.4858 185.843 3.8363 278.5571 739.5131 185.3674 10.9824 270.8348 121.5947 299.1911 139.3981 279.8696 747.2163;
	3.4046 46.0038 92.1821 118.3598 14.7345 20.2156 1.675 17.9043 0.201 28.1521 52.0388 77.6316 116.874 0.0115 196.3435 73.9713 91.7792 97.2585 41.8682 73.4235 0.5583 47.1698 70.3408 85.9553 99.2341 71.9052 13.2904 648.1681 725.3053 725.3053 500.4753 112.7573 139.5608 188.9923 0.0361 309.4636 804.4799 198.0918 21.3471 265.8056 122.156 224.2589 138.3393 274.3386 812.8599;
	3.6893 49.8505 90.7232 115.3232 14.3684 20.1229 0.0 17.2491 24.041 22.6045 41.784 62.3335 93.8428 40.5406 189.9047 71.5455 88.7694 94.0691 58.8958 71.535 0.0 46.9535 65.942 83.0235 98.5786 70.0826 13.117 622.1363 699.5676 699.5676 519.917 109.0828 196.3193 184.1313 127.1003 298.4822 567.9843 219.6104 0.0 264.0498 122.0728 223.2303 135.1787 266.0356 573.9009;
	3.6586 49.4361 89.1884 116.4398 13.9701 19.9727 0.5493 17.4539 16.0823 17.2103 31.8129 47.4586 71.4487 22.1163 194.2842 73.1954 90.8166 96.2384 58.6637 72.407 0.1831 46.6031 60.0579 81.5248 95.5948 70.375 12.9416 540.9273 673.4176 673.4176 490.102 96.1501 195.5456 186.3759 69.3376 287.3249 633.3693 234.7156 0.0 256.0575 121.3365 221.5644 145.9311 264.5851 639.9669;
	3.7878 51.1813 89.2919 116.6256 14.5769 19.8291 4.0591 17.6358 0.1509 22.9934 42.5029 63.406 95.4574 25.9799 183.2115 69.0239 85.6407 90.7536 72.2213 69.8817 1.353 46.268 61.3517 84.3263 97.8492 70.9236 12.9524 458.6135 685.9876 685.9876 460.7114 87.9411 240.7377 179.8757 81.4505 292.688 600.9686 233.8366 25.7761 262.096 120.8224 219.9711 160.4698 247.5068 607.2287;
	3.4778 46.9932 88.9951 115.2191 14.1602 10.1179 1.7379 17.5526 0.0 26.1756 48.3851 72.1811 108.6682 18.7155 179.603 67.6644 83.9539 88.9661 66.5778 69.9109 0.5793 23.6083 65.0281 84.5648 97.3033 70.9288 13.3475 489.654 586.2859 586.2859 429.5843 94.0307 221.9261 179.9507 58.6757 250.1487 514.9734 211.6696 65.2041 260.6339 119.9532 112.2408 148.3164 247.8603 520.3377;
	3.3742 45.5931 92.0992 117.5175 14.3233 19.9952 5.3538 18.3172 1.8234 25.6008 47.3227 70.5962 106.2822 30.9811 186.2725 70.1771 87.0716 92.2699 67.9448 70.2039 1.7846 46.6554 67.7425 86.4108 102.0232 73.5263 13.7474 1062.2892 505.8895 505.8895 299.9937 90.9412 226.4828 180.705 97.1298 215.8462 894.6674 209.8705 113.0724 273.2764 118.074 221.8133 132.2389 244.8442 903.9868;
	3.254 43.9691 91.9479 119.5317 14.8006 23.564 5.973 18.3205 1.4586 25.4399 47.0254 70.1526 105.6143 57.8368 188.9587 71.1891 88.3272 93.6005 81.8767 69.8734 1.991 54.9827 68.9837 86.8993 100.3771 72.7027 13.7625 1294.9717 620.8916 620.8916 229.1361 70.7931 272.9224 179.8544 181.3261 264.9137 1115.3711 199.8116 131.297 268.8672 118.0682 261.4036 176.4241 262.0584 1126.9895;
	2.3197 31.3446 92.1939 118.1798 14.7227 34.0563 8.3428 18.4826 1.3827 14.882 27.5091 41.0382 61.7828 62.4972 192.8319 72.6483 90.1377 95.5191 56.4874 70.3964 2.7809 79.4647 44.875 87.0347 100.4297 75.2972 13.8179 1227.2341 705.1474 705.1474 289.5801 62.7832 188.2913 181.2004 195.9372 300.8629 1211.92 131.8534 248.4014 269.0082 118.9114 377.7978 165.6034 269.7984 1224.5442;
	3.7341 50.4558 92.0256 91.284 14.8861 34.7248 12.3208 17.5051 10.2437 14.9506 27.636 41.2275 62.0677 64.8256 199.4384 75.1373 93.2259 98.7916 43.7922 72.2055 4.1069 81.0244 46.2223 87.312 100.7063 75.916 13.5449 1287.1688 762.3011 762.3011 395.5408 56.231 145.974 185.857 203.2369 325.2485 1247.5077 117.7743 24.6146 269.7491 119.7674 385.2133 189.9897 272.0866 1260.5026;
	3.7661 50.8885 94.1424 120.4287 14.827 34.4297 16.2152 18.1346 20.7078 14.3275 26.4841 39.5091 59.4808 62.9317 204.485 77.0385 95.5849 101.2914 65.5838 72.7844 5.4051 80.336 66.0037 87.6918 100.8489 76.2781 13.9141 1253.9363 717.0555 717.0555 648.4034 51.5655 218.6125 187.3473 197.2994 305.9437 1281.7044 162.7829 35.8803 270.131 117.2234 381.9402 193.8332 284.1152 1295.0555;
	3.812 51.5088 94.986 119.7757 14.8739 34.3408 11.1695 18.5832 28.1654 29.223 54.0182 80.5846 121.3196 62.3971 202.138 76.1543 94.4878 100.1288 69.6165 72.4463 3.7232 80.1286 73.3846 89.8315 103.3986 76.2475 14.1179 1249.8561 696.9861 696.9861 539.8762 78.5109 232.055 186.477 195.6233 297.3807 1260.78 210.1666 416.4603 276.9605 121.1019 380.9542 201.4456 284.2037 1273.9131;
	3.642 49.211 92.6058 117.3421 14.4581 32.0364 6.0461 18.2763 27.519 29.1456 53.8752 80.3712 120.9984 63.2861 200.0212 75.3568 93.4983 99.0803 67.1963 72.0487 2.0154 74.7516 70.1355 87.4176 100.698 74.9336 13.8413 1282.4704 775.4753 775.4753 580.3499 116.0039 223.9876 185.4535 198.4106 330.8695 1290.988 236.3935 443.0272 269.7269 114.0577 355.3903 199.9923 278.6852 1304.4358;
	3.6669 49.5473 90.1472 117.4135 14.3074 31.8925 30.0263 17.1264 27.9598 27.6715 51.1503 76.3061 114.8785 65.0265 196.364 73.979 91.7887 97.2687 75.3008 73.2994 10.0088 74.4159 70.4531 84.4721 100.0413 71.2762 13.048 1257.8969 772.793 772.793 564.9598 114.9213 251.0026 188.6729 203.8669 329.725 1244.2793 228.0612 457.6039 267.9678 113.0164 353.7944 188.9683 275.69 1257.2406;
];
