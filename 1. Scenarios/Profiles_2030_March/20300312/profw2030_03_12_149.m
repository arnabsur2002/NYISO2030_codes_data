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
	3.6375 49.1508 89.8116 107.3952 14.3137 32.2634 27.8185 11.2581 26.1279 24.9509 46.1214 68.804 103.5841 65.0599 185.4601 69.871 86.6918 91.8675 84.8831 67.7487 9.2728 75.2813 69.0059 83.3507 92.3367 65.5652 8.5877 1134.4788 744.1569 744.1569 750.2885 119.8075 282.9436 174.3854 203.9717 317.507 1055.2078 299.6858 457.0974 247.3305 107.0058 357.909 187.3376 243.8198 1066.1996;
	3.569 48.2255 88.0073 105.3145 14.0927 31.1547 27.9012 11.3433 26.2567 21.3553 39.475 58.889 88.657 65.5516 191.6756 72.2127 89.5972 94.9463 86.1918 67.8436 9.3004 72.6942 67.6356 83.3881 94.4619 65.2389 7.795 1165.5681 744.4944 744.4944 729.4051 117.9063 287.3059 174.6297 205.5132 317.6509 1133.3901 273.605 458.3189 253.0229 107.0771 345.6091 184.9031 235.8741 1145.1963;
	3.5393 47.8233 91.0066 97.4242 14.2106 33.1625 26.4943 9.8544 27.3489 25.1626 46.5126 69.3877 104.4627 68.1919 190.1814 71.6497 88.8987 94.2061 86.7792 69.4659 8.8314 77.3791 66.7963 86.894 83.2864 59.5103 8.5637 1187.8883 752.6512 752.6512 709.5681 118.3506 289.2639 178.8054 213.7908 321.1312 1097.8093 260.386 467.1096 223.0886 110.7905 367.8825 173.1993 244.7639 1109.2448;
	3.5561 48.0509 88.7781 98.7393 14.1653 32.9465 23.1968 8.9369 27.2248 26.3854 48.7731 72.7599 109.5396 65.7118 189.3158 71.3236 88.4941 93.7773 89.5634 69.4695 7.7323 76.8751 70.8772 84.7006 79.1491 53.5747 7.1861 1189.2545 780.8203 780.8203 709.6927 119.7442 298.5448 178.8146 206.0152 333.15 1124.7227 256.8367 442.7492 212.0064 101.0658 365.4864 181.355 237.2021 1136.4386;
	3.5591 48.0915 86.0938 84.8487 14.3394 33.635 19.6989 8.9925 22.6128 26.6688 49.2968 73.5412 110.7158 65.9214 190.7448 71.862 89.1621 94.4852 89.2487 68.8186 6.5663 78.4816 70.2149 83.5081 67.6659 55.5669 7.5129 1184.7991 757.8882 757.8882 692.3643 115.7842 297.4957 177.1393 206.6726 323.3656 1100.5898 252.1677 391.2183 181.248 102.7423 373.1238 192.7575 218.5882 1112.0543;
	3.6058 48.7218 82.9629 77.9932 14.998 32.6172 17.5769 6.5816 24.0312 28.0396 51.8308 77.3214 116.407 63.5125 183.3568 69.0786 85.7087 90.8256 86.5223 69.3488 5.859 76.1067 70.2333 82.6989 54.2568 36.7099 5.6049 1145.6631 684.2687 684.2687 585.2863 99.1633 288.4075 178.5041 199.1203 291.9546 1068.8251 208.1777 350.9074 145.3306 91.0191 361.833 194.0643 186.9416 1079.9587;
	3.1297 42.2888 73.8344 65.1571 14.4881 29.6486 14.9662 5.3252 17.7637 25.817 47.7224 71.1925 107.1799 67.2625 184.8626 69.6459 86.4125 91.5715 89.381 66.9018 4.9887 69.1801 66.4762 78.464 47.7093 25.4558 4.4707 1191.2167 661.5579 661.5579 530.6988 65.0313 297.9367 172.2053 210.8772 282.2647 1074.2676 204.3018 285.2973 127.7926 75.0085 328.902 162.7779 132.1591 1085.4578;
	3.3386 45.1118 70.5536 66.1726 14.151 29.0554 15.1091 5.0451 14.3365 18.9911 35.1047 52.3693 78.8417 69.17 184.3223 69.4424 86.16 91.3038 89.3753 66.8925 5.0364 67.7959 46.451 79.1064 52.8438 19.3329 3.2762 1222.6633 694.548 694.548 611.5611 71.4599 297.9176 172.1815 216.8574 296.3405 1083.9869 211.2415 242.3563 141.546 75.1028 322.321 150.8801 133.1466 1095.2784;
	2.6309 35.5488 55.4278 55.7786 13.5814 23.4232 14.5968 3.4971 19.7749 16.1416 29.8375 44.5117 67.0121 68.4782 166.9995 62.9161 78.0625 82.723 90.3079 65.77 4.8656 54.6542 33.9474 69.87 49.43 12.2267 2.2598 1244.0233 788.7157 788.7157 751.5973 94.7728 301.0264 169.2921 214.6885 336.5187 1141.5534 251.9267 236.7422 132.4019 50.0667 259.8417 136.3034 129.1017 1153.4446;
	2.4683 33.3526 44.7955 50.4495 13.9306 17.4758 19.3022 1.9654 21.0199 9.8723 18.2488 27.2236 40.9849 67.7709 175.4043 66.0826 81.9913 86.8863 90.7718 68.4885 6.4341 40.7768 23.7282 49.9238 21.203 6.2985 1.1223 1096.6483 797.9022 797.9022 742.2987 112.7425 302.5728 176.2895 212.471 340.4383 1143.3605 250.9894 360.3486 56.7938 36.8528 193.8648 120.6427 98.7713 1155.2705;
	2.0071 27.1201 31.9647 34.4016 11.9472 13.4399 17.3835 0.841 16.9869 10.5983 19.5908 29.2257 43.9991 65.728 177.0904 66.7178 82.7795 87.7215 90.9413 71.0208 5.7945 31.3599 20.4047 40.4561 10.3424 3.5689 0.6819 1088.6529 803.4536 803.4536 728.0262 113.3065 303.1376 182.8078 206.0661 342.8069 1064.3308 249.6428 357.853 27.7028 21.8571 149.0938 82.5448 64.1197 1075.4175;
	1.3484 18.2192 21.0029 16.2195 8.1054 8.83 19.335 0.5279 15.7259 5.9856 11.0644 16.5059 24.8495 66.8141 172.6375 65.0402 80.698 85.5158 91.2297 68.0466 6.445 20.6034 11.6499 23.0559 10.4008 4.0538 0.627 1045.578 765.6723 765.6723 695.682 112.4436 304.0992 175.1522 209.4711 326.6868 1045.9536 217.2094 371.467 27.8592 15.9803 97.9545 58.9449 50.3452 1056.8489;
	1.0219 13.8086 24.4354 24.2454 8.4965 7.5564 19.6792 1.7757 15.5192 4.3876 8.1104 12.099 18.215 68.079 184.912 69.6645 86.4356 91.596 90.2248 71.4737 6.5597 17.6316 30.6488 32.9924 20.0506 8.3715 2.3104 1043.2675 780.9702 780.9702 685.2951 107.1492 300.7495 183.9734 213.4367 333.214 1083.4391 220.4407 418.815 53.7069 8.1143 83.8255 49.8443 46.1029 1094.7249;
	0.8286 11.1965 22.5082 30.2228 7.5053 8.8897 14.0364 1.3561 12.3475 12.8774 23.8037 35.5105 53.4608 67.3233 193.3384 72.8391 90.3745 95.77 90.2295 71.0083 4.6788 20.7426 45.458 30.109 18.6166 7.3106 2.9772 1006.9341 735.6898 735.6898 657.2572 97.4903 300.7649 182.7756 211.0676 313.8943 921.4655 208.676 411.6195 49.8658 10.9787 98.6164 37.2948 47.0902 931.0641;
	0.8165 11.0321 22.5697 16.8651 6.248 9.3314 11.1588 1.6306 11.9805 8.1327 15.0332 22.4265 33.763 68.1574 183.1242 68.991 85.5999 90.7104 81.911 70.5289 3.7196 21.7733 45.8635 43.1242 22.362 5.5342 2.8193 855.3296 638.6282 638.6282 585.8003 81.6543 273.0368 181.5416 213.6826 272.4814 820.1927 194.21 343.0889 59.8981 22.3961 103.5165 31.8844 49.9693 828.7363;
	0.8945 12.0867 16.3951 29.5499 7.4912 7.7529 5.7427 0.9934 9.2822 5.6666 10.4746 15.626 23.5249 68.5411 181.5197 68.3865 84.8499 89.9156 81.0686 71.8555 1.9142 18.0902 44.2789 37.0253 21.2515 3.2204 1.8513 871.572 541.3663 541.3663 535.3696 81.6945 270.2287 184.9561 214.8855 230.9829 641.6612 183.383 231.1962 56.9238 25.2239 86.0059 8.4217 19.8403 648.3452;
	0.5135 6.9379 15.5834 13.1769 6.9094 9.143 4.0677 0.3237 12.0052 16.7509 30.9638 46.1919 69.5417 68.7057 181.4298 68.3526 84.8079 89.871 76.7063 67.4827 1.3559 21.3337 52.504 39.4425 16.3289 3.4766 1.2626 854.7385 538.4705 538.4705 581.5797 85.0761 255.6876 173.7007 215.4016 229.7474 754.9844 191.8135 236.9082 43.7382 32.0655 101.4266 16.9245 3.5485 762.8488;
	1.0374 14.0182 16.2373 0.0632 2.8228 10.8662 3.6605 0.0637 1.4265 19.6552 36.3324 54.2007 81.5989 68.0224 137.9861 51.9855 64.5005 68.3512 75.0034 54.1383 1.2202 25.3546 64.705 39.0427 15.9474 3.1472 1.1965 843.328 560.3456 560.3456 604.7604 92.8959 250.0112 139.3521 213.2595 239.0808 757.0572 202.0939 334.4064 42.7162 75.61 120.5428 23.7933 1.9476 764.9432;
	0.2689 3.6338 20.9805 31.0199 0.006 1.1159 0.226 1.2298 0.0 16.3641 30.2487 45.1252 67.9357 63.1903 111.7302 42.0937 52.2274 55.3454 0.1513 62.5044 0.0753 2.6037 58.5783 45.2412 21.1117 4.2314 1.3559 850.1123 482.9223 482.9223 594.3206 88.7568 0.5043 160.8864 198.11 206.0468 642.6726 191.0691 281.772 56.5493 83.716 12.3786 0.085 0.0 649.3671;
	0.2442 3.2994 29.8816 48.1666 2.1939 4.1452 1.2951 2.2545 0.0061 23.2645 43.004 64.1535 96.5828 58.736 98.464 37.0957 46.0262 48.774 11.212 63.7342 0.4317 9.6722 67.7545 62.6491 36.4367 17.2035 2.2676 656.9066 353.4397 353.4397 575.1733 72.5269 37.3734 164.0519 184.1452 150.8009 520.6817 189.0104 0.0 97.5983 89.9179 45.9843 7.1306 7.7172 526.1055;
	0.5758 7.7804 44.4104 71.0164 5.341 5.9515 0.0 4.4731 0.0 16.8079 31.0692 46.3491 69.7784 50.0524 118.9371 44.8089 55.5962 58.9154 79.1074 66.0628 0.0 13.8867 60.5113 70.7476 37.8775 13.8001 2.1118 560.5861 325.6571 325.6571 487.9412 56.3173 263.6913 170.0457 156.9211 138.947 545.8321 179.6633 0.0 101.4577 92.4205 66.0215 8.5741 41.0175 551.5178;
	0.4895 6.6148 45.0526 64.366 0.0782 3.3987 0.0 3.0523 0.0 12.8381 23.7309 35.4019 53.2974 33.0226 133.8268 50.4185 62.5563 66.291 78.1191 61.6554 0.0 7.9303 50.8771 63.8611 37.4288 16.6173 1.4534 448.5968 311.7355 311.7355 456.4044 54.6578 260.3971 158.7012 103.5305 133.0071 606.3859 155.2097 0.0 100.2558 82.1479 37.7027 16.736 28.0973 612.7024;
	0.6391 8.6362 46.2503 65.953 7.2303 16.4638 0.0 3.4718 0.0 7.1784 13.2691 19.7949 29.8011 20.6039 136.1357 51.2883 63.6355 67.4347 77.8034 66.5686 0.0 38.4155 31.0374 64.9157 38.3702 32.2348 1.8533 430.4692 380.1809 380.1809 507.0945 58.9277 259.3447 171.3478 64.596 162.2105 513.8268 141.6429 0.0 102.7774 66.4305 182.6381 63.8591 30.907 519.1791;
	0.0682 0.9221 54.451 70.6897 0.6385 8.1638 0.0138 6.5709 0.0 20.4685 37.8357 56.4434 84.9752 6.5006 157.6196 59.3823 73.678 78.0767 86.4428 68.4947 0.0046 19.049 67.0666 74.4026 50.7208 44.3051 3.495 321.5128 303.027 303.027 381.0209 52.7052 288.1426 176.3055 20.3802 129.2915 392.3015 113.0915 0.0 135.8592 69.0633 90.5643 21.1146 56.9984 396.388;
];
