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
	3.9017 52.7202 91.1232 107.4903 15.3416 34.1521 30.3255 18.4781 27.9866 30.7036 56.755 84.6674 127.4663 67.9189 195.7426 73.7449 91.4983 96.9609 40.614 70.3572 10.1085 79.6882 71.5192 85.9302 102.4223 72.9363 13.7223 1187.2663 727.3113 727.3113 613.6879 98.6043 135.3801 181.0997 212.9349 310.3195 1162.1824 224.7532 478.0084 274.3455 122.4259 378.8604 153.6503 261.522 1174.2884;
	3.8555 52.0968 91.1059 114.866 14.9603 32.9602 30.0008 18.2585 28.0473 30.8289 56.9868 85.0131 127.9868 68.7594 195.201 73.5408 91.2451 96.6926 35.1322 71.9449 10.0003 76.9072 69.158 86.1 101.82 70.7098 13.3726 1221.737 744.4706 744.4706 604.0295 103.9692 117.1074 185.1863 215.5699 317.6408 1206.7372 235.8504 477.1045 272.7322 122.8052 365.639 138.7924 259.3958 1219.3074;
	3.8298 51.7493 92.0304 64.0783 15.1322 34.0157 29.8766 18.2419 27.7022 30.6571 56.6692 84.5393 127.2735 69.1006 199.3053 75.0871 93.1636 98.7257 38.0603 70.6013 9.9589 79.3701 69.5647 87.1001 104.2156 72.7078 13.6842 1166.1518 734.9884 734.9884 568.6565 106.5313 126.8677 181.728 216.6397 313.5951 1212.4386 228.4119 475.6076 279.149 123.0423 377.3479 138.4861 264.2307 1225.0681;
	3.6944 49.9188 89.8952 74.9044 14.7486 33.5133 29.6298 17.5184 27.4402 29.3434 54.2409 80.9167 121.8196 65.2826 198.6625 74.845 92.8632 98.4073 44.3389 71.1035 9.8766 78.1978 55.3998 84.5873 100.5773 70.8741 13.3226 1139.0733 709.9445 709.9445 531.8205 96.5414 147.7963 183.0206 204.6697 302.9096 1071.1732 245.4908 468.7307 269.4034 118.9952 371.7745 167.5757 253.4809 1082.3313;
	3.5715 48.2594 90.7286 118.6943 15.158 34.3893 24.939 18.0329 27.2754 30.0152 55.4827 82.7693 124.6087 66.1347 188.9288 71.1778 88.3132 93.5856 71.7265 70.3496 8.313 80.2417 45.6839 85.7707 102.4933 71.6884 13.1914 1073.2585 653.4237 653.4237 512.7561 90.9991 239.0883 181.08 207.3412 278.7941 1115.4882 220.0077 466.8898 274.5355 119.3374 381.4918 181.6431 254.7258 1127.1079;
	3.7724 50.9732 89.7303 115.3459 14.8207 34.3965 27.5378 18.1126 26.509 30.7451 56.8318 84.7819 127.6387 66.3927 192.5127 72.5281 89.9885 95.361 85.3584 71.4569 9.1793 80.2586 69.2362 85.775 103.8305 70.6264 13.4329 1121.9873 678.1817 678.1817 490.5109 88.7459 284.528 183.9303 208.1501 289.3575 1064.792 203.8744 459.5202 278.1175 119.0164 381.5722 191.1271 252.912 1075.8836;
	3.5894 48.5008 89.5652 111.2373 14.4267 31.8977 26.7487 18.1607 26.4423 30.0592 55.564 82.8905 124.7912 65.5161 192.9725 72.7013 90.2034 95.5887 84.3954 69.8669 8.9162 74.4281 71.045 84.1618 101.404 73.4145 13.3237 1083.2239 661.1819 661.1819 525.6306 89.9655 281.3181 179.8375 205.4019 282.1043 1023.6172 220.6435 448.21 271.6179 118.806 353.8523 180.6828 250.5978 1034.2799;
	3.7441 50.5908 88.3904 112.9414 14.6532 32.8621 29.2954 18.6095 27.701 29.9579 55.3766 82.611 124.3705 67.2841 190.8515 71.9022 89.212 94.5381 84.0199 69.0784 9.7651 76.6782 72.2226 83.828 104.4027 73.6495 13.8051 1095.8754 688.1049 688.1049 547.3219 73.56 280.0662 177.8079 210.9447 293.5914 1088.2239 227.4486 467.5938 279.65 119.1779 364.5502 183.9204 246.1106 1099.5596;
	3.8523 52.0534 91.026 116.6571 14.5457 34.2897 30.8347 18.1161 27.7198 30.4472 56.2811 83.9603 126.4018 68.848 191.4735 72.1365 89.5027 94.8462 85.7717 67.5082 10.2782 80.0092 70.3004 84.4709 104.3293 73.4339 13.6816 1197.57 785.1392 785.1392 603.6511 70.8403 285.9055 173.7663 215.8478 334.9927 1191.3757 258.7373 476.3957 279.4534 118.0011 380.3868 176.213 269.159 1203.7858;
	3.6931 49.9024 88.0574 110.5563 14.5072 32.992 31.0652 17.7335 27.8817 30.2376 55.8938 83.3826 125.532 69.1962 190.4032 71.7333 89.0024 94.316 88.5834 68.6079 10.3551 76.9813 70.8906 84.4174 99.865 71.245 13.2115 1198.8169 739.8665 739.8665 630.9121 81.7864 295.2779 176.597 216.9394 315.6764 1178.0988 259.2578 477.5806 267.4956 115.9917 365.9913 160.6359 255.9091 1190.3706;
	3.6654 49.528 87.755 111.8094 14.4245 33.0224 29.098 17.7589 25.8918 30.2952 56.0003 83.5414 125.7711 67.6764 189.6397 71.4456 88.6455 93.9378 87.2278 70.51 9.6993 77.0524 66.6975 84.3434 100.0268 70.7075 13.1236 1121.4757 755.0118 755.0118 633.056 77.3136 290.7592 181.4928 212.1747 322.1384 1100.1609 280.3338 475.3471 267.929 111.7853 366.329 165.3756 259.8018 1111.621;
	3.7776 51.0435 89.2382 114.445 14.5955 33.5419 27.3931 17.9619 26.4304 30.4876 56.3559 84.0719 126.5697 67.9245 193.3061 72.827 90.3594 95.754 88.7608 69.8155 9.131 78.2644 71.6835 83.5543 99.4004 71.0622 13.2376 1087.1102 741.6897 741.6897 632.0178 87.1839 295.8693 179.7053 212.9524 316.4543 1102.9838 264.4361 475.3934 266.251 111.6268 372.0915 177.5348 265.4865 1114.4732;
	3.8372 51.8491 89.8142 114.0381 14.6499 33.0293 29.9243 18.3024 27.7346 30.9931 57.2902 85.4657 128.6682 69.19 193.1617 72.7726 90.2919 95.6824 85.3466 71.5909 9.9748 77.0683 73.2826 86.8199 101.6084 72.1619 13.6958 1127.7357 757.8394 757.8394 658.6874 92.946 284.4888 184.2751 216.9201 323.3448 1071.6575 295.6275 476.535 272.1654 114.2958 366.4048 158.095 262.2691 1082.8206;
	3.8346 51.8142 90.946 114.4852 14.7712 32.7863 29.6134 18.1314 27.4487 30.7431 56.8281 84.7764 127.6304 68.6667 196.521 74.0382 91.8622 97.3465 88.4572 72.5041 9.8711 76.5013 73.4167 87.1303 100.4536 70.7033 13.4099 1076.1513 693.5376 693.5376 685.3451 98.7027 294.8575 186.6258 215.2794 295.9094 1059.743 292.2266 475.9272 269.0721 112.1617 363.7088 152.6232 260.4718 1070.782;
	3.7811 51.0912 89.5739 112.4933 14.7005 32.0886 27.0123 18.0705 27.311 31.2312 57.7304 86.1223 129.6567 69.4122 198.4115 74.7504 92.7458 98.2829 88.4562 72.4912 9.0041 74.8735 73.7299 88.0292 100.0979 71.9414 13.1898 1057.9908 710.075 710.075 683.3111 99.2246 294.8541 186.5926 217.6166 302.9653 973.1219 300.9206 474.9825 268.1193 112.0894 355.9699 173.4527 256.6045 983.2586;
	3.7979 51.3183 91.8506 115.7534 14.441 32.5182 26.5103 17.8647 27.3762 30.5161 56.4086 84.1505 126.6881 69.3852 199.1372 75.0238 93.0851 98.6424 88.6333 70.7553 8.8368 75.8759 73.4005 88.3779 102.8394 74.6188 13.351 1185.9813 740.55 740.55 662.5494 103.5839 295.4443 182.1244 217.532 315.968 1105.5963 280.4734 476.3446 275.4626 112.3482 360.7356 175.8183 260.7647 1117.1129;
	3.6265 49.0022 89.3371 113.4166 14.1062 32.3039 25.9815 17.1069 26.9615 30.602 56.5673 84.3873 127.0447 68.2696 192.1167 72.3788 89.8034 95.1648 90.2849 70.2138 8.6605 75.3757 72.273 87.7323 100.1978 71.9026 11.7884 1122.5002 739.7967 739.7967 666.6843 103.9618 300.9498 180.7305 214.0343 315.6466 1137.8229 274.125 471.8701 268.3869 116.1517 358.3576 178.1355 234.3133 1149.6752;
	3.8177 51.5853 90.2655 115.033 14.5188 32.0857 25.9384 13.9427 27.6866 30.7579 56.8555 84.8172 127.6918 69.093 190.6891 71.841 89.1361 94.4576 89.7934 68.8487 8.6461 74.8667 71.3308 87.381 99.1249 66.5934 10.8157 1177.4691 695.8523 695.8523 679.2784 94.0943 299.3113 177.2167 216.616 296.897 1129.8172 292.1652 475.0973 265.5132 118.694 355.9377 183.1981 238.7298 1141.5861;
	3.7228 50.3038 90.692 109.1506 14.4347 32.5241 26.0984 14.6348 26.0397 29.4632 54.4623 81.2471 122.3171 67.2498 192.3515 72.4673 89.9131 95.2811 90.5995 69.3623 8.6995 75.8895 71.523 84.4824 97.9702 43.2226 11.7333 1261.4241 724.8561 724.8561 618.5835 100.6867 301.9982 178.5388 210.8371 309.2719 1245.4544 290.1382 466.6484 262.4202 119.3283 360.8002 151.5044 219.5175 1258.4279;
	3.8846 52.4899 91.8392 105.2156 15.0211 29.472 25.0156 15.5031 26.0377 30.4142 56.2202 83.8694 126.265 64.4134 190.1186 71.6261 88.8694 94.175 89.0246 67.7367 8.3385 68.7679 72.2598 87.6547 100.9661 48.5376 11.3441 1271.864 756.5857 756.5857 659.2822 109.2127 296.7488 174.3543 201.9446 322.8099 1294.4179 275.1021 459.3071 270.4448 120.5862 326.9425 177.8355 233.5297 1307.9014;
	3.8537 52.0724 91.5004 109.4149 15.1333 31.9612 28.4134 15.2966 26.7801 29.9071 55.2828 82.471 124.1596 65.9808 186.7159 70.3441 87.2788 92.4895 86.0988 66.9538 9.4711 74.5762 71.475 87.1564 99.1581 62.2601 10.1924 1285.2108 764.4509 764.4509 655.9485 101.7172 286.996 172.3393 206.8586 326.1657 1288.6048 287.5108 459.1143 265.602 118.6313 354.5566 155.6429 236.3352 1302.0277;
	3.8057 51.4238 90.4919 103.4382 15.3786 31.5596 26.1294 14.0506 26.4332 29.5286 54.5831 81.4273 122.5883 61.6646 186.4827 70.2563 87.1698 92.374 84.5531 67.9673 8.7098 73.6392 69.7881 88.6821 99.4298 69.7949 10.6891 1219.4781 744.958 744.958 644.2746 91.1982 281.8437 174.948 193.3267 317.8487 1130.7183 264.6634 447.8898 266.3297 119.0682 350.1016 153.1144 236.3652 1142.4967;
	3.7286 50.382 90.5346 96.2377 15.3464 30.6313 26.5774 13.5524 25.9767 29.3451 54.2441 80.9215 121.8268 64.2757 186.2466 70.1673 87.0595 92.257 83.9513 67.1973 8.8591 71.4731 70.8446 88.7519 99.498 66.4208 10.1097 1171.56 740.8402 740.8402 627.7353 93.3309 279.8376 172.9659 201.5131 316.0918 1145.5785 256.1248 441.6006 266.5125 120.4445 339.8034 163.8028 234.1071 1157.5116;
	3.8323 51.7834 88.4307 102.4875 15.3524 32.7373 23.3451 12.494 24.5609 29.7103 54.9191 81.9284 123.3428 55.9706 181.9572 68.5513 85.0544 90.1323 84.819 66.8901 7.7817 76.387 72.6492 87.6078 95.9003 62.5353 10.0465 1157.5172 706.3438 706.3438 676.879 96.4196 282.73 172.1754 175.4755 301.3733 1104.0859 262.8907 406.8109 256.8758 122.4837 363.1658 175.6664 229.008 1115.5868;
];