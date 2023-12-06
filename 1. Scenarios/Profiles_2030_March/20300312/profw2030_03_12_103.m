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
	3.7579 50.7777 93.8555 113.8391 14.9079 31.9608 24.7652 13.4448 25.9888 28.2903 52.2942 78.0126 117.4475 64.0603 177.0932 66.7188 82.7808 87.7229 87.0401 68.1552 8.2551 74.5752 70.378 89.536 101.3375 68.0133 9.4884 1140.5131 726.9306 726.9306 725.0432 111.389 290.1336 175.4317 200.8377 310.1571 1088.9035 300.7206 445.9296 271.4397 117.8294 354.5517 190.1819 249.8985 1100.2463;
	3.7377 50.5051 90.5 112.1763 14.9363 31.8043 24.2296 12.2888 25.7031 26.0403 48.1352 71.8082 108.1068 62.7761 173.4101 65.3312 81.0591 85.8985 85.3177 67.5681 8.0765 74.21 70.2154 88.3198 100.2074 65.3237 8.0636 1080.3294 728.0778 728.0778 707.6157 110.3038 284.3923 173.9205 196.8115 310.6465 1096.977 264.3646 428.6411 268.4128 117.5836 352.8154 197.0777 251.1567 1108.4039;
	3.7456 50.6117 89.8553 97.1423 14.9322 32.1168 22.3829 10.865 25.2417 26.8569 49.6446 74.0599 111.4968 60.9915 166.1416 62.5929 77.6615 82.2981 86.5329 67.0826 7.461 74.9391 68.7557 88.2522 85.9796 60.1947 8.631 1137.7481 749.1526 749.1526 702.0097 110.668 288.4431 172.6707 191.2166 319.6385 1096.2313 259.8252 440.0164 230.3026 121.8887 356.282 185.0414 253.9911 1107.6503;
	3.681 49.739 88.5905 98.9216 14.5699 31.8619 19.9514 11.4663 25.5611 27.1309 50.1511 74.8156 112.6344 53.2608 171.5687 64.6375 80.1984 84.9864 87.2191 67.1139 6.6505 74.3445 68.546 88.709 82.9872 57.8138 8.0589 1134.4382 726.9651 726.9651 685.6167 113.3053 290.7302 172.7512 166.9798 310.1718 1116.0262 259.668 410.478 222.2872 114.5813 353.4548 186.7298 254.2628 1127.6515;
	3.6286 49.0301 88.0757 85.5799 14.4357 30.7487 17.4786 10.0525 21.1629 28.0617 51.8716 77.3823 116.4986 58.5722 181.0231 68.1994 84.6178 89.6696 91.676 69.0247 5.8262 71.7469 71.248 89.9622 76.0982 55.4167 7.4978 1217.5464 725.0258 725.0258 654.8334 109.1125 305.5868 177.6696 183.6316 309.3443 1085.7174 251.043 353.9396 203.8345 112.6336 341.1055 192.4988 231.5959 1097.0269;
	3.5704 48.2445 83.6416 76.2848 14.4256 30.8757 15.5733 7.1849 21.5069 28.6671 52.9907 79.0517 119.012 60.8966 180.5427 68.0184 84.3932 89.4316 90.9151 67.8481 5.1911 72.0434 72.0676 86.2395 55.5053 36.2167 5.4899 1187.9558 686.9275 686.9275 618.6275 100.0834 303.0502 174.6411 190.9191 293.089 1077.3181 230.3366 325.2661 148.6748 102.4054 342.5148 184.4051 192.9946 1088.5401;
	3.236 43.7253 74.0662 59.8756 14.3502 28.8455 13.2036 5.3798 17.7765 28.6998 53.0511 79.1417 119.1475 64.8652 183.9808 69.3137 86.0003 91.1347 89.1894 68.6298 4.4012 67.3062 71.4645 78.1363 48.5749 25.9067 4.2435 1244.5067 661.2159 661.2159 538.2165 68.0026 297.2981 176.6534 203.3611 282.1188 1051.87 212.4788 253.7466 130.1114 86.6091 319.9931 157.76 139.6983 1062.827;
	3.4543 46.6751 69.4762 66.2586 14.465 29.7892 15.94 4.8884 16.5782 23.6479 43.7128 65.2109 98.1747 66.5251 179.9473 67.7941 84.1149 89.1367 87.992 66.7087 5.3133 69.5081 55.7389 74.9017 47.5284 14.5724 3.2846 1255.9184 666.8971 666.8971 607.8855 67.7249 293.3066 171.7084 208.5652 284.5428 1066.3208 214.3271 240.8494 127.3082 82.6898 330.4613 155.2125 138.3234 1077.4283;
	2.9641 40.0518 58.7101 63.8932 14.2914 23.9462 14.9283 3.7056 21.1375 23.2437 42.9656 64.0963 96.4966 66.0938 179.6992 67.7006 83.9989 89.0138 90.3745 69.5438 4.9761 55.8745 55.0823 81.9478 51.4633 12.1914 2.5249 1197.9872 743.2147 743.2147 698.7064 91.4477 301.2484 179.0058 207.2129 317.1049 1073.4177 238.3957 229.0311 137.848 55.3116 265.6434 143.3889 150.2813 1084.5991;
	2.7292 36.8772 51.732 61.1495 14.3723 19.1915 18.6842 2.2284 21.2148 19.9161 36.8147 54.9203 82.6822 65.0734 180.2527 67.9092 84.2577 89.288 91.8336 68.838 6.2281 44.7802 46.5327 70.7488 35.0739 6.2961 1.1585 1110.758 744.2791 744.2791 701.0152 107.723 306.1121 177.1892 204.0139 317.5591 1068.4262 224.6934 332.9844 93.9479 39.7349 212.8977 136.1462 128.4752 1079.5556;
	2.0637 27.8845 37.7657 44.921 13.2339 12.8672 17.3565 0.6073 19.0816 15.7119 29.0432 43.3267 65.2281 64.6391 158.6465 59.7692 74.158 78.5854 88.6334 66.3992 5.7855 30.0235 36.4352 51.0084 20.0578 2.2268 0.579 1110.9472 752.9173 752.9173 713.3781 108.045 295.4447 170.9116 202.6523 321.2447 1053.4418 226.4382 373.8927 53.7263 30.7236 142.7405 87.8069 94.4325 1064.4152;
	1.508 20.3758 30.7303 27.3316 8.9976 9.867 18.9167 1.0234 18.0436 16.3473 30.2177 45.0789 67.866 63.1348 155.8016 58.6974 72.8282 77.1762 85.5712 62.5641 6.3056 23.0231 43.6628 36.9005 18.691 4.8641 0.7222 984.1237 727.2032 727.2032 702.8378 107.3616 285.2372 161.0402 197.9362 310.2734 1011.9579 212.4705 405.585 50.0652 19.0989 109.4583 66.2299 74.7189 1022.4992;
	1.1563 15.6236 29.5888 29.2956 8.6214 8.177 18.1168 1.5552 15.5341 13.1753 24.3544 36.3319 54.6975 60.8536 170.4527 64.2171 79.6767 84.4336 86.8397 66.1849 6.0389 19.0796 39.1821 34.9284 19.6655 5.807 1.9145 973.0591 748.8933 748.8933 696.6106 99.5337 289.4657 170.36 190.7842 319.5278 996.6462 212.8306 416.0334 52.6754 24.8069 90.7098 50.5374 51.9908 1007.0279;
	0.9183 12.4078 27.8074 34.9262 7.7938 8.2655 13.3454 2.4809 13.7424 17.5869 32.5092 48.4973 73.0125 61.3265 168.33 63.4174 78.6845 83.3821 85.4883 67.0667 4.4485 19.2861 53.1284 41.3945 25.6469 10.7226 3.4564 931.8948 702.1685 702.1685 713.058 83.5226 284.9611 172.6298 192.2669 299.5919 867.3972 210.3737 402.8073 68.697 27.2484 91.6915 36.6677 59.4588 876.4326;
	1.0392 14.0423 32.0619 96.8377 6.8468 8.7536 11.6146 2.1134 13.8307 17.0118 31.446 46.9112 70.6246 63.9082 154.6427 58.2607 72.2865 76.6021 77.661 64.8512 3.8715 20.425 55.6937 53.5169 26.8278 7.3959 3.6756 794.0792 652.8918 652.8918 647.7491 75.8564 258.8699 166.9272 200.361 278.5672 737.9503 192.916 351.4104 71.8603 30.9662 97.1062 36.6246 56.7739 745.6373;
	0.9902 13.3792 20.8359 32.6166 7.534 3.6898 5.5811 1.2855 10.0944 15.3482 28.3709 42.3238 63.7183 63.4385 165.3698 62.3021 77.3008 81.9157 81.6321 68.3745 1.8604 8.6094 52.8881 49.1219 24.8282 4.5499 2.1609 799.7133 535.5285 535.5285 562.3372 74.9107 272.1069 175.996 198.8882 228.4922 610.8528 191.7782 236.8633 66.5041 32.9007 40.9318 0.4312 22.9713 617.2158;
	0.522 7.0532 64.4478 57.2181 6.4286 0.4302 2.6688 0.3623 11.8947 16.9302 31.2952 46.6862 70.2858 61.221 154.2227 58.1025 72.0901 76.394 84.2002 62.4705 0.8896 1.0039 51.8105 42.9496 16.4866 5.2119 1.5831 796.3451 516.5041 516.5041 579.0751 79.0429 280.6673 160.7993 191.9363 220.3751 724.6387 194.9387 222.8854 44.1607 34.2441 4.7727 0.0026 44.3304 732.1871;
	1.1024 14.8958 44.2112 23.571 3.0155 1.265 0.0 0.0 4.0779 21.5373 39.8114 59.3907 89.4124 60.568 114.3685 43.0877 53.4606 56.6523 86.5414 49.9633 0.0 2.9517 68.1337 36.2428 13.1762 2.1993 1.4655 716.4372 509.1166 509.1166 586.9309 86.729 288.4713 128.6057 189.8889 217.2231 703.0502 194.5871 336.1836 35.2935 68.9455 14.0331 4.996 39.0221 710.3736;
	0.486 6.5669 26.0735 40.1161 4.0819 0.8482 0.0 1.8116 4.8286 23.9854 44.3367 66.1417 99.5759 59.9926 112.5049 42.3856 52.5895 55.7292 73.2467 61.3438 0.0 1.9792 69.6001 44.7686 20.939 6.4992 1.9651 758.6013 465.0472 465.0472 582.3942 80.6753 244.1556 157.8992 188.0851 198.4201 640.9232 184.3948 334.3301 56.0867 80.8735 9.4099 3.4819 24.1418 647.5995;
	0.2979 4.0256 31.9562 55.9142 2.7993 2.5883 0.0 2.9238 18.005 26.49 48.9664 73.0482 109.9737 61.4745 86.7163 32.6699 40.5349 42.9548 47.1658 64.7375 0.0 6.0393 70.0142 59.1452 29.9651 18.363 2.7464 689.7896 351.7487 351.7487 574.5469 72.0092 157.2195 166.6345 192.7308 150.0794 567.8288 189.251 123.2152 80.2636 77.3974 28.7125 4.3609 20.6684 573.7437;
	0.6604 8.9229 44.4271 75.754 5.8438 0.88 0.0 4.2614 1.7404 26.5239 49.0291 73.1417 110.1145 51.1337 119.8122 45.1385 56.0052 59.3488 82.4229 71.1338 0.0 2.0532 67.9863 68.281 32.2937 12.2157 2.2704 581.1445 323.1289 323.1289 480.6803 59.3546 274.7431 183.0986 160.3109 137.8683 609.4655 182.3403 15.0333 86.5011 66.9543 9.7617 1.7541 43.3264 615.8141;
	0.4075 5.5064 44.164 69.4321 1.0278 0.0 0.0 2.7807 0.2249 23.5401 43.5135 64.9136 97.727 35.2305 138.3841 52.1354 64.6865 68.5484 81.2814 68.7639 0.0 0.0 68.4961 63.0497 33.1397 14.7602 1.3321 450.9386 312.7162 312.7162 456.4045 55.6299 270.9379 176.9985 110.4525 133.4256 680.4354 166.0001 42.9263 88.767 66.3051 0.0 0.0 33.607 687.5232;
	0.6658 8.9967 43.1395 66.3659 8.0664 2.0747 1.5984 2.9584 4.7705 17.8759 33.0433 49.294 74.2119 21.0163 143.153 53.932 66.9157 70.9107 83.6345 69.5396 0.5328 4.8409 45.3692 57.4792 34.3552 30.9153 1.3944 419.4033 372.7658 372.7658 511.2847 58.9322 278.7818 178.9952 65.8889 159.0467 549.6719 149.7028 132.7273 92.0229 51.8773 23.0152 1.3 62.9232 555.3977;
	0.0968 1.3079 47.848 68.6627 3.1477 0.0757 0.0 3.6136 1.5501 21.6345 39.9911 59.6589 89.8162 6.9152 148.9868 56.1299 69.6427 73.8005 87.0829 68.455 0.0 0.1767 68.2268 59.4797 35.9065 35.6299 1.4783 290.0431 288.6126 288.6126 390.1268 54.0038 290.2762 176.2034 21.6802 123.1414 370.3463 123.2261 40.3725 96.1781 51.4077 0.8401 0.5863 61.3948 374.2041;
];