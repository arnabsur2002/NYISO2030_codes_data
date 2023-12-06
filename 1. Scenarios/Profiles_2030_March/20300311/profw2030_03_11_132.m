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
	3.8295 51.7455 92.096 107.9333 14.7701 33.4735 27.0731 18.5344 24.4825 30.4574 56.3 83.9885 126.4442 65.7485 193.2145 72.7924 90.3165 95.7086 36.2511 69.6909 9.0244 78.1049 71.8314 88.3659 105.7052 75.2223 14.0918 1180.6631 674.4461 674.4461 588.6237 111.937 120.837 179.3846 206.1306 287.7637 1120.8435 237.8824 446.4558 283.139 117.4217 371.333 157.3886 276.5009 1132.5189;
	3.7551 50.7392 93.6262 115.2415 14.9771 33.8077 29.3271 18.5445 25.9209 30.7189 56.7834 84.7096 127.5299 66.6108 191.0361 71.9718 89.2983 94.6295 31.3515 71.3528 9.7757 78.8845 72.1753 87.5042 104.4628 73.5941 13.9369 1235.0886 725.2291 725.2291 618.1353 112.5602 104.5051 183.6622 208.8338 309.4311 1178.8642 243.6952 458.2522 279.811 119.2856 375.0396 158.7766 275.9488 1191.144;
	3.7466 50.6247 92.1079 61.7775 14.8176 34.6099 29.0413 18.2654 26.3379 30.3519 56.105 83.6977 126.0064 65.3668 198.0206 74.6031 92.5631 98.0893 34.9237 69.4851 9.6804 80.7565 74.0963 87.0179 103.4898 73.7335 13.6329 1165.4272 686.376 686.376 600.1242 112.4731 116.4124 178.8549 204.9338 292.8538 1167.2057 227.6309 441.3199 277.2049 119.1355 383.9393 159.1653 275.4764 1179.3641;
	3.742 50.5632 92.9846 80.3329 14.8833 34.4177 27.7298 18.9216 25.7998 29.193 53.9628 80.5019 121.1952 65.9094 198.8747 74.9249 92.9624 98.5124 44.2285 70.6681 9.2433 80.3081 67.3923 87.3562 104.6769 76.4561 13.8497 1252.5063 707.6713 707.6713 565.973 102.3753 147.4284 181.8998 206.6349 301.9398 1130.1244 233.7787 439.7174 280.3846 118.2179 381.8075 190.7845 271.8271 1141.8966;
	3.4903 47.1619 92.518 116.7187 14.826 33.1903 23.727 18.8842 25.9286 30.0338 55.5169 82.8204 124.6856 65.4451 193.6848 72.9696 90.5364 95.9415 80.0419 69.7137 7.909 77.444 60.9624 86.9199 104.9077 76.5253 13.6708 1189.3382 675.9492 675.9492 552.4892 100.5554 266.8064 179.4433 205.1793 288.405 1161.5957 235.4505 436.46 281.0028 119.3111 368.1911 194.7046 264.2151 1173.6957;
	3.6984 49.973 90.699 114.5536 14.7826 33.4889 26.918 18.7033 25.14 30.067 55.5783 82.9119 124.8234 66.3667 194.0303 73.0998 90.6979 96.1127 86.9409 70.5389 8.9727 78.1408 70.3718 86.9978 105.0548 76.0318 13.6475 1239.4001 695.9889 695.9889 517.7067 102.523 289.8029 181.5673 208.0687 296.9553 1096.5293 215.927 425.6557 281.3967 118.6885 371.5038 199.8538 265.5105 1107.9515;
	3.6324 49.0815 88.8332 111.8416 14.7051 31.4895 28.2585 18.2958 24.363 29.4021 54.3494 81.0786 122.0634 66.8912 192.1232 72.3813 89.8064 95.168 88.58 69.9011 9.4195 73.4755 71.7583 85.3928 102.0889 76.2136 13.3261 1265.8947 739.5464 739.5464 587.7636 103.0547 295.2665 179.9257 209.7129 315.5398 1137.9527 262.1479 434.4937 273.4525 118.6806 349.3234 193.8757 255.7901 1149.8064;
	3.6067 48.7338 88.3767 110.613 14.6533 31.9149 29.0612 18.1004 26.4235 29.49 54.5118 81.3209 122.4282 68.5118 189.4321 71.3674 88.5485 93.835 86.6467 69.1459 9.6871 74.4681 72.6031 85.258 104.0527 75.1257 12.9649 1240.0187 704.5521 704.5521 562.2816 90.6487 288.8223 177.9816 214.7936 300.6089 1104.1796 260.4874 450.0005 278.7125 119.3397 354.0425 188.5723 249.7177 1115.6814;
	3.6003 48.6486 88.0348 109.4239 14.1854 30.9614 28.6065 17.3682 26.5065 29.569 54.6579 81.5388 122.7563 68.1357 194.4605 73.2619 90.899 96.3258 89.1481 70.291 9.5355 72.2432 71.3578 84.4182 101.0583 72.3283 12.3478 1215.0343 752.7202 752.7202 588.6111 82.7563 297.1603 180.9293 213.6145 321.1606 1122.8902 285.4078 454.7768 270.6918 118.5088 343.4646 177.4885 240.2337 1134.5869;
	3.8192 51.6062 87.0942 113.4603 14.2444 32.5108 29.8173 17.5247 27.4927 29.7931 55.0721 82.1568 123.6866 67.524 195.0098 73.4688 91.1558 96.5979 90.5518 70.5341 9.9391 75.8586 72.426 83.6119 99.0992 73.1344 12.5123 1181.5508 769.2585 769.2585 651.1401 93.1877 301.8394 181.555 211.6969 328.217 1122.1069 300.8368 461.4341 265.4442 118.086 360.6536 165.04 246.0503 1133.7955;
	3.7311 50.4156 87.5655 110.9052 14.4498 31.5587 27.2267 17.2783 26.6309 28.3866 52.4722 78.2783 117.8475 66.998 198.7373 74.8731 92.8981 98.4443 92.1499 70.118 9.0756 73.637 72.1785 84.1213 97.2551 73.718 11.4301 1172.1757 777.1393 777.1393 640.5783 97.2372 307.1664 180.4838 210.0478 331.5794 1092.7107 305.75 461.9857 260.5046 118.1376 350.0914 167.9185 248.4323 1104.0931;
	3.7021 50.024 87.7848 114.1107 14.63 32.1336 27.9409 17.4209 28.1055 29.7061 54.9112 81.9168 123.3252 68.6684 199.779 75.2656 93.3851 98.9603 92.675 70.0676 9.3136 74.9783 72.9978 83.2699 100.2774 74.3838 12.0843 1162.131 793.0725 793.0725 651.264 103.6256 308.9168 180.3542 215.2847 338.3776 1137.0492 304.5991 477.5576 268.6002 117.404 356.4683 193.1332 251.4916 1148.8935;
	3.7571 50.7669 89.1228 116.2398 14.455 33.0491 30.0898 17.4784 28.0468 30.1751 55.7781 83.21 125.2722 69.0734 197.9266 74.5677 92.5192 98.0427 91.5875 70.6544 10.0299 77.1146 73.229 88.2491 103.1546 75.4464 12.7109 1122.8446 804.7612 804.7612 684.5617 107.1842 305.2916 181.8645 216.5543 343.3648 1010.7287 312.5032 477.1906 276.3068 121.7894 366.625 168.8413 249.4744 1021.2571;
	3.7454 50.6092 90.6032 116.4822 14.754 33.6374 29.8582 17.8697 28.3667 29.8099 55.1032 82.2031 123.7563 69.5635 202.2684 76.2034 94.5487 100.1934 92.9157 71.3787 9.9527 78.4872 73.8268 87.0805 102.3362 73.5603 12.9353 1092.7881 762.8343 762.8343 636.6566 102.6291 309.719 183.7289 218.091 325.476 988.8094 308.8716 476.1011 274.1147 118.703 373.1505 160.8818 259.9881 999.1095;
	3.6758 49.6686 90.2177 114.1996 14.5378 32.8606 25.3486 18.4634 27.2498 29.2776 54.1193 80.7353 121.5465 68.7475 199.6126 75.2029 93.3073 98.8779 92.1219 70.9809 8.4495 76.6747 73.4191 87.4739 102.7696 74.1945 13.4603 1057.8234 714.2216 714.2216 623.9175 101.9156 307.0729 182.705 215.5327 304.7346 918.5712 327.4018 462.362 275.2757 115.7679 364.5334 180.0679 252.0078 928.1397;
	3.8001 51.3483 90.8019 115.6353 14.9327 33.0206 23.8781 18.5332 26.9629 29.5812 54.6804 81.5725 122.8069 67.106 200.1479 75.4046 93.5575 99.143 92.4023 70.7106 7.9594 77.0481 73.549 88.1452 102.9092 74.7124 13.5325 1143.0103 735.9256 735.9256 602.831 106.4309 308.0077 182.0094 210.3863 313.9949 1015.6737 306.4331 443.0949 275.6496 119.9494 366.3086 185.2614 252.1494 1026.2536;
	3.6861 49.8078 90.1964 117.8668 15.0782 32.996 21.8207 18.567 26.3139 29.5689 54.6577 81.5385 122.7558 64.2276 197.3632 74.3554 92.2558 97.7636 92.0706 71.5626 7.2736 76.9907 72.4734 89.3936 104.0226 74.9396 13.4379 1167.0135 762.347 762.347 672.581 108.7361 306.902 184.2024 201.3622 325.268 1140.5187 297.4439 437.989 278.6321 119.54 366.0356 188.1733 237.3192 1152.3991;
	3.881 52.4406 91.9344 117.2785 15.2242 33.3644 24.9158 16.2593 27.4736 29.6768 54.8571 81.8361 123.2037 64.7512 195.7273 73.7391 91.4911 96.9533 88.4601 70.2983 8.3053 77.8502 71.4389 87.8549 102.6793 71.5841 12.9755 1241.0353 706.6042 706.6042 687.3887 94.5912 294.8669 180.9481 203.0038 301.4845 1105.9061 308.7545 444.6 275.0338 122.0592 370.1221 202.8806 245.7722 1117.426;
	3.6711 49.6041 91.2264 113.4458 15.3597 34.2564 26.7913 16.386 27.2384 29.9487 55.3596 82.5857 124.3323 67.2375 192.2062 72.4126 89.8452 95.2091 88.092 71.4414 8.9304 79.9316 73.7602 87.9655 103.5208 49.9705 13.0266 1270.9017 759.9868 759.9868 649.6043 105.6865 293.6399 183.8904 210.7986 324.261 1198.8358 312.2194 466.5106 277.2879 119.6127 380.0175 167.7746 231.1221 1211.3237;
	3.6639 49.508 91.8592 110.9946 15.3519 30.0449 26.9749 16.2363 27.9718 29.3198 54.1973 80.8517 121.7217 65.8036 197.3094 74.3352 92.2307 97.737 91.0172 72.967 8.9916 70.1048 74.2305 89.7369 104.8863 56.6022 12.5423 1299.9807 763.8298 763.8298 686.0913 115.022 303.3908 187.8172 206.3033 325.9007 1297.6465 305.5833 469.1551 280.9453 122.1955 333.2984 188.7285 246.912 1311.1636;
	3.5763 48.3234 88.0098 111.5127 15.2283 30.0985 29.7828 14.2199 27.222 29.2067 53.9881 80.5397 121.252 66.1005 193.386 72.857 90.3967 95.7935 86.9103 70.0397 9.9276 70.2298 71.8697 84.5721 96.6778 56.7655 10.9906 1268.3967 751.441 751.441 654.0862 113.4342 289.7011 180.2824 207.2339 320.6148 1227.8789 301.787 456.9401 258.9585 117.7214 333.8925 163.4884 230.9326 1240.6693;
	3.4277 46.3152 86.8371 103.1885 15.256 30.103 27.1058 13.1053 27.0055 29.5636 54.6479 81.5239 122.7339 66.2138 194.9085 73.4307 91.1084 96.5477 88.6712 69.7023 9.0353 70.2403 70.8049 86.3223 97.0367 63.4299 10.9101 1180.9346 728.6482 728.6482 690.1213 109.1178 295.5706 179.4139 207.5893 310.8899 1070.6775 289.2027 453.7076 259.9197 117.9631 333.9426 161.8894 234.7965 1081.8304;
	3.6067 48.7341 90.3005 97.9577 15.3435 29.786 29.7459 12.7507 27.8987 29.717 54.9314 81.9468 123.3704 69.0014 201.9419 76.0804 94.3961 100.0317 91.6881 70.774 9.9153 69.5006 71.8728 86.774 97.1073 61.5412 10.3647 1153.3532 753.3492 753.3492 766.0539 114.5047 305.6269 182.1725 216.3288 321.429 1101.2214 315.3942 464.3666 260.1087 120.1449 330.4256 181.1042 233.4267 1112.6924;
	3.6425 49.2181 86.3624 104.6786 15.1001 32.0749 28.4241 12.25 27.3889 29.5236 54.5739 81.4136 122.5677 68.1176 198.9605 74.9572 93.0024 98.5548 91.1902 70.4231 9.4747 74.8415 72.3823 84.5105 97.8455 58.0007 10.3377 1155.8635 735.4206 735.4206 737.9193 117.4869 303.9672 181.2692 213.5579 313.7795 1117.9858 292.097 456.9679 262.0861 120.9066 355.8177 186.5261 218.6362 1129.6314;
];