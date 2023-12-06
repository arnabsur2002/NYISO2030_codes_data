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
	3.6278 49.0191 86.5568 105.8365 14.4155 32.2719 29.737 12.1676 26.9301 27.4559 50.7517 75.7116 113.9834 68.0721 187.2046 70.5282 87.5073 92.7316 87.3983 72.6013 9.9123 75.3011 66.7498 84.0076 94.7552 62.6859 8.686 1151.9389 711.7605 711.7605 709.1254 107.1784 291.3277 186.876 213.4152 303.6845 1030.646 265.9963 457.4291 253.8085 113.7101 358.0028 180.9826 224.057 1041.3819;
	3.6324 49.0815 84.6345 105.2169 14.1036 31.8482 29.3933 11.0026 26.9549 24.4037 45.1098 67.295 101.3122 66.7651 194.3814 73.2321 90.862 96.2866 88.5359 71.7327 9.7978 74.3125 66.8304 81.4928 91.6187 59.0805 7.7961 1147.3305 777.1211 777.1211 775.7476 112.7648 295.1197 184.64 209.3175 331.5717 1180.9059 279.5158 450.0186 245.4072 113.1022 353.3028 198.5285 223.7567 1193.207;
	3.5175 47.5289 87.3131 95.0655 14.0724 31.4928 26.0257 9.6056 26.4878 26.8153 49.5676 73.9452 111.324 67.4965 190.1712 71.6459 88.894 94.2011 85.9582 71.9183 8.6752 73.4831 67.7148 85.665 83.1231 57.898 7.8241 1162.4556 777.7369 777.7369 756.3879 112.9793 286.5274 185.1178 211.6106 331.8344 1122.3536 268.4131 446.6748 222.6512 114.6091 349.3596 177.3423 231.3728 1134.0448;
	3.3676 45.5041 82.6196 92.2568 13.9668 31.5823 20.5482 9.684 25.7468 25.808 47.7057 71.1675 107.1423 64.8119 183.1383 68.9963 85.6065 90.7174 74.0631 68.4412 6.8494 73.6921 61.5754 84.4015 78.0125 49.1975 6.2053 1130.5761 756.8377 756.8377 741.4072 111.247 246.877 176.1679 203.1942 322.9174 1131.5471 256.8417 385.8418 208.962 110.3722 350.3533 179.942 229.5157 1143.3341;
	3.5531 48.0103 82.3389 79.1117 14.1092 30.7399 18.0123 7.5526 21.4914 27.314 50.4895 75.3204 113.3944 63.5438 182.5588 68.778 85.3356 90.4303 82.8333 67.6266 6.0041 71.7265 68.9366 85.6399 63.99 41.1117 6.2101 1194.8184 762.7181 762.7181 720.6314 108.4995 276.1109 174.071 199.2184 325.4264 1124.3403 255.5644 340.5762 171.4018 106.4778 341.008 192.0553 205.6776 1136.0522;
	3.562 48.1298 80.5708 74.8643 14.3796 29.7624 17.1499 4.9791 24.8449 27.3648 50.5834 75.4605 113.6054 61.9628 173.5051 65.367 81.1035 85.9455 83.0492 67.06 5.7166 69.4456 68.8292 82.9951 51.1082 29.5287 4.757 1156.0951 731.9382 731.9382 673.7068 98.2051 276.8307 172.6127 194.2618 312.2936 1155.9632 233.5599 313.0008 136.8969 98.9222 330.1641 194.1062 169.0263 1168.0044;
	2.9784 40.2448 67.9332 61.4903 14.1608 27.1703 14.1219 4.3728 18.2251 25.9356 47.9415 71.5193 107.672 62.1203 184.2365 69.41 86.1199 91.2613 85.1947 68.1317 4.7073 63.3974 66.2407 78.7964 42.2358 20.6646 4.3249 1210.2333 668.9279 668.9279 554.9676 65.4394 283.9823 175.3711 194.7555 285.4092 1058.6117 207.4335 210.379 113.1316 82.6707 301.4092 152.6874 115.4336 1069.6389;
	2.8753 38.8513 62.122 64.4356 14.3819 23.965 13.3766 2.4719 13.8161 21.287 39.3486 58.7004 88.3732 62.5237 182.4612 68.7412 85.29 90.3819 86.4288 65.6631 4.4589 55.9182 38.7268 81.8412 47.556 4.6924 2.3189 1204.1822 673.0664 673.0664 613.0283 64.875 288.096 169.0169 196.0204 287.175 1045.8495 203.669 60.594 127.3821 78.747 265.8512 136.8584 127.1328 1056.7437;
	2.2257 30.0739 51.3444 57.7732 14.1947 10.7218 11.7339 2.2913 7.9254 18.4254 34.0591 50.8095 76.4934 59.2858 187.6695 70.7034 87.7246 92.9618 86.4095 66.5405 3.9113 25.0175 40.0998 77.261 47.073 6.15 1.5831 1129.3105 751.7421 751.7421 710.1722 86.5201 288.0318 171.2754 185.8689 320.7433 995.4899 233.1614 34.8913 126.0883 50.4932 118.9404 107.9652 122.1134 1005.8596;
	2.0872 28.202 43.9355 54.2628 13.9385 14.1478 17.8145 2.0527 13.816 8.6718 16.0297 23.9132 36.0012 64.1204 172.2852 64.9075 80.5333 85.3413 85.9379 65.9744 5.9382 33.0115 39.0568 67.4607 31.7006 5.9013 1.0845 1018.647 780.3247 780.3247 730.4933 102.443 286.4596 169.8182 201.0262 332.9385 1060.5362 229.8206 284.8707 84.9123 40.5128 156.9462 114.9977 108.2655 1071.5835;
	1.3288 17.9546 26.9619 32.7913 12.6891 11.9125 17.3833 0.8508 17.0754 4.3514 8.0434 11.9992 18.0648 65.0146 178.1374 67.1122 83.2689 88.2401 89.8739 69.2235 5.7944 27.7959 29.5481 47.4406 16.0417 2.3786 0.579 1085.079 814.0946 814.0946 756.906 105.8888 299.5796 178.1815 203.8296 347.347 1086.4722 234.7009 341.6904 42.9688 29.6726 132.1497 82.8789 78.4128 1097.7896;
	1.1249 15.1996 26.6971 24.0299 9.7428 8.3165 18.9494 1.1734 12.6928 7.0901 13.106 19.5516 29.4349 63.0345 175.0817 65.961 81.8405 86.7265 88.3286 69.7284 6.3165 19.4051 37.552 39.1563 16.9773 5.7383 0.6722 986.3089 730.0666 730.0666 697.3172 102.9881 294.4286 179.481 197.6218 311.4951 985.1223 204.7665 369.0599 45.4749 18.0343 92.2573 61.4667 66.6812 995.384;
	0.7035 9.5053 23.2094 22.3179 7.5542 5.7879 17.5807 1.7404 7.3034 2.1511 3.9762 5.9317 8.9301 63.4623 185.1848 69.7673 86.5631 91.7311 88.3894 69.601 5.8602 13.505 32.7123 33.754 19.1399 5.8993 1.8919 1008.2915 763.63 763.63 727.4653 104.7395 294.6314 179.1532 198.963 325.8155 1044.6515 224.262 366.5712 51.2675 9.5727 64.2066 49.1881 29.1689 1055.5333;
	0.4198 5.672 20.6874 29.1646 6.5883 6.3566 12.9579 1.8806 10.6715 13.9739 25.8305 38.5341 58.0129 63.2156 189.6846 71.4626 88.6665 93.9601 87.4087 69.804 4.3193 14.832 49.4853 35.0536 23.1565 2.9655 2.9305 984.4391 725.182 725.182 752.3502 97.0288 291.3622 179.6756 198.1896 309.411 874.3519 233.0765 364.3559 62.0265 24.912 70.5154 37.8249 26.7876 883.4597;
	0.4483 6.0575 18.3401 0.0 5.2024 5.9028 10.9391 1.1641 7.2342 10.1631 18.7863 28.0254 42.1921 61.7259 174.0 65.5535 81.3349 86.1907 79.6581 67.543 3.6464 13.7731 48.9891 41.272 21.804 0.9929 2.5295 833.7719 636.1893 636.1893 632.9008 83.0128 265.5271 173.8559 193.5192 271.4408 772.4196 208.3004 281.3257 58.4036 24.3375 65.4812 35.754 44.4878 780.4656;
	0.4471 6.0412 8.4062 25.4839 5.6263 0.0 5.6386 0.6158 0.0 4.9223 9.0988 13.5736 20.435 66.3934 166.7107 62.8073 77.9275 82.5799 79.2222 66.2987 1.8795 0.0 37.6694 37.8887 20.0825 0.0 1.2567 803.9906 566.0565 566.0565 565.7577 77.6666 264.0741 170.6529 208.1522 241.5174 615.8265 195.7594 201.9153 53.7923 9.658 0.0 0.8093 0.0 622.2414;
	0.2527 3.4152 0.0 3.0868 5.7353 0.0 3.9456 0.0005 11.0313 9.9817 18.451 27.5253 41.4391 64.029 176.3985 66.4571 82.456 87.3788 83.1508 66.0639 1.3152 0.0 51.3598 38.2798 13.9312 3.3515 0.9596 762.6334 565.0091 565.0091 586.9358 79.2762 277.1695 170.0488 200.7395 241.0705 732.6543 197.9929 216.9235 37.3156 29.558 0.0 5.7559 0.0 740.2861;
	0.2517 3.4015 0.0 0.0 2.0124 0.0 0.0 0.0054 0.0 17.7258 32.7659 48.8802 73.5889 63.4113 144.2743 54.3545 67.4398 71.4661 83.901 56.0029 0.0 0.0 63.363 33.856 13.7498 3.7086 1.1596 639.5634 561.8923 561.8923 623.6552 91.7108 279.6701 144.1517 198.8031 239.7407 703.21 214.9089 297.9915 36.8299 67.6142 0.0 0.0 0.0 710.5351;
	0.3801 5.1358 20.7951 35.834 1.0854 0.0059 0.6509 1.2591 0.0 21.2025 39.1926 58.4676 88.0227 63.5834 128.8613 48.5477 60.2351 63.8313 2.7899 61.0877 0.217 0.0137 61.4395 41.4934 20.1903 6.4545 1.1485 780.8608 534.8616 534.8616 633.1425 87.143 9.2996 157.2399 199.3425 228.2076 693.849 199.321 322.9784 54.0812 82.9735 0.0652 4.6975 0.0 701.0766;
	0.2194 2.9645 27.858 56.1497 1.7387 0.0 0.0 2.9989 0.0 24.2226 44.7751 66.7956 100.5604 60.1101 111.63 42.0559 52.1805 55.2958 3.7087 65.7621 0.0 0.0 63.7643 64.7793 36.0864 19.1811 2.4227 626.073 357.1511 357.1511 572.4066 72.6402 12.3623 169.2718 188.4532 152.3845 563.6262 186.8259 0.0 96.6601 84.8404 0.0 0.3816 0.0 569.4973;
	0.6415 8.6684 45.1475 83.1707 5.3239 1.2616 0.1587 4.7639 0.2326 24.3763 45.0593 67.2196 101.1988 49.7501 128.0427 48.2393 59.8525 63.4258 74.909 69.2909 0.0529 2.9437 60.2121 80.4976 42.1316 13.7963 2.0351 557.5952 352.1113 352.1113 480.3295 50.9936 249.6966 178.3551 155.9731 150.2341 621.6724 169.0767 18.4988 112.8526 81.3999 13.9953 0.6733 35.7335 628.1481;
	0.4921 6.6499 44.4816 75.5568 0.0 0.5064 0.837 3.4424 1.6619 22.0466 40.7527 60.795 91.5266 36.4226 155.9465 58.7519 72.8959 77.2479 78.2153 69.6608 0.279 1.1816 64.4495 72.0754 41.8384 14.7494 1.4508 370.8348 338.9936 338.9936 456.3679 48.1546 260.7175 179.307 114.1898 144.6373 659.4964 145.3572 31.66 112.067 81.593 5.6178 1.8653 32.4708 666.3662;
	0.6308 8.524 40.567 67.0722 6.608 0.8226 5.0256 3.5505 1.7148 17.7606 32.8302 48.9762 73.7334 21.6861 162.3891 61.1792 75.9075 80.4393 83.0321 71.0818 1.6752 1.9194 44.7999 60.2181 34.9308 15.8162 1.724 365.5476 390.8035 390.8035 513.0079 53.5342 276.7737 182.9647 67.9888 166.7428 524.557 129.667 55.38 93.5648 61.6059 9.1253 17.3053 4.8656 530.0212;
	0.0046 0.0622 44.4493 69.4166 0.0185 0.0 1.3835 5.8583 2.7201 20.904 38.6408 57.6444 86.7833 7.7267 176.7667 66.5958 82.6282 87.5612 88.9293 71.5601 0.4612 0.0 65.8186 65.1204 44.777 24.7679 2.9971 287.0829 324.894 324.894 391.7928 49.6763 296.4309 184.196 24.2244 138.6215 404.4784 107.9256 31.0903 119.9384 64.6939 0.0 1.2787 54.8318 408.6917;
];
