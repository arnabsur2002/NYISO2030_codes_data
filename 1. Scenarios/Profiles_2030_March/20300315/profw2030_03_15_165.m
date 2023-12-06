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
	3.8837 52.4778 89.1157 113.9682 14.9535 33.4819 32.6649 17.3087 12.8349 15.942 29.4685 43.9612 66.1834 43.76 205.1975 77.307 95.9179 101.6443 87.0413 73.3272 10.8883 78.1245 21.915 85.0308 98.0438 73.7032 13.4223 1284.0946 809.7465 809.7465 757.7968 116.8253 290.1375 188.7444 137.1937 345.4918 1155.2088 285.3512 479.2021 262.6174 120.1982 371.4261 215.6996 267.4242 1167.2422;
	3.7954 51.2842 89.0386 114.0352 14.8662 33.6116 32.336 16.5053 12.5238 13.5266 25.0036 37.3005 56.1557 58.7151 202.0111 76.1065 94.4285 100.066 88.2498 71.62 10.7787 78.4271 26.9773 81.8894 94.6251 71.9667 12.6909 1273.4095 791.1496 791.1496 755.0759 112.5143 294.1658 184.35 184.0799 337.5572 1175.0941 260.6358 475.4755 253.46 119.2317 372.8651 212.7598 266.1495 1187.3347;
	3.702 50.022 88.0317 112.1577 15.0316 32.5008 33.2017 17.2418 23.9166 15.1889 28.0765 41.8847 63.0571 59.8912 190.1685 71.6449 88.8927 94.1998 85.1374 70.299 11.0672 75.8352 28.5385 83.7537 97.1424 72.2871 12.9052 1230.5521 786.5091 786.5091 766.0797 114.7761 283.7913 180.9498 187.7671 335.5772 1183.0705 293.3211 476.3754 260.203 118.2123 360.5424 208.2398 258.9296 1195.3941;
	3.5439 47.8864 85.9949 110.5397 14.8781 32.0732 31.8137 16.7196 27.526 29.6681 54.841 81.812 123.1675 65.9717 201.9786 76.0943 94.4132 100.0499 88.0317 67.7484 10.6046 74.8376 28.4947 81.6073 95.2713 72.2626 12.8053 1233.0145 782.4915 782.4915 761.1208 113.5631 293.4391 174.3845 206.8302 333.863 1157.7935 301.9877 474.3223 255.1911 115.1473 355.7993 171.2954 256.7407 1169.8538;
	2.7096 36.6131 86.2833 112.0435 14.2835 28.8704 31.4906 17.3335 27.8161 29.453 54.4435 81.219 122.2748 65.3096 198.8191 74.9039 92.9364 98.4848 86.5048 67.2083 10.4969 67.3643 74.7028 83.5673 97.5611 71.9342 13.2069 1298.9994 793.2225 793.2225 748.9731 118.0466 288.3492 172.9942 204.7546 338.4416 1170.6028 300.7957 474.2136 261.3243 117.1969 320.269 171.9976 257.6521 1182.7966;
	3.3565 45.3537 86.5873 111.4891 14.1632 31.0748 18.773 17.3602 25.9787 28.7804 53.2001 79.364 119.4821 50.6771 201.9657 76.0894 94.4072 100.0435 60.9077 68.8187 6.2577 72.5078 75.0285 82.7419 97.7634 72.3786 13.2241 1246.849 817.9656 817.9656 774.049 119.9951 203.0256 177.1394 158.8794 348.9987 1205.6792 314.9809 464.4703 261.8663 116.8503 344.7227 146.7297 253.9398 1218.2384;
	3.5559 48.0486 91.3821 115.1482 14.2629 32.6127 11.8713 17.539 24.4928 28.8082 53.2515 79.4408 119.5977 64.8597 197.816 74.526 92.4675 97.9879 86.6536 69.897 3.9571 76.0963 75.5176 86.788 100.8725 74.5702 13.3912 1265.9403 795.6048 795.6048 752.1764 114.0877 288.8453 179.915 203.3438 339.4581 1168.7771 308.9485 415.7605 270.1942 122.5151 361.7834 174.2382 264.7825 1180.9518;
	3.6079 48.7504 92.0827 115.4434 14.7225 32.5735 0.0 17.7967 0.2408 28.2771 52.2697 77.9761 117.3927 41.9044 202.294 76.2131 94.5607 100.2061 86.0649 70.051 0.0 76.0048 75.5293 83.9148 98.0774 75.075 13.7217 1273.352 778.2897 778.2897 746.3048 119.7855 286.8829 180.3115 131.376 332.0703 1186.4182 316.3753 155.8144 262.7073 119.8279 361.3487 197.2255 269.6005 1198.7767;
	3.6678 49.5605 94.1284 119.263 15.0441 30.5866 0.0576 18.6141 0.7784 27.481 50.7982 75.7809 114.0878 25.1508 198.4149 74.7517 92.7474 98.2846 88.2797 71.0552 0.0192 71.3688 73.8672 85.268 101.9787 75.6579 13.7252 1155.3145 710.6315 710.6315 711.342 114.9752 294.2656 182.8963 78.851 303.2028 1027.9355 301.5627 0.155 273.1571 119.7861 339.3075 185.5301 276.0875 1038.6432;
	3.5946 48.5715 89.2674 115.9164 14.8694 29.5257 0.0 18.2736 2.1549 24.8327 45.9029 68.4781 103.0935 23.1323 198.011 74.5995 92.5586 98.0845 90.318 72.6695 0.0 68.8932 54.9344 86.7487 98.9498 73.9749 13.0633 957.5155 624.8589 624.8589 598.4684 113.4017 301.0599 187.0516 72.5227 266.6065 825.819 271.7245 12.7108 265.0441 118.1618 327.5382 155.3734 273.4109 834.4213;
	3.1014 41.9063 87.5178 102.641 14.2604 24.4167 0.0 17.0551 0.0443 28.3399 52.3858 78.1493 117.6534 3.7056 197.089 74.2521 92.1277 97.6278 81.9417 71.6755 0.0 56.9723 75.0219 85.5547 94.8712 69.6141 12.6635 763.3578 653.6098 653.6098 540.6333 114.3294 273.1389 184.4929 11.6176 278.8735 711.029 212.0454 13.5519 254.1194 115.1781 270.8624 135.4248 266.5929 718.4356;
	2.9716 40.1534 86.2305 82.0215 14.4335 17.76 0.0 14.1896 0.0 26.8496 49.6311 74.0398 111.4665 2.4359 199.0275 74.9824 93.0338 98.588 41.7185 71.6323 0.0 41.44 72.7115 82.8839 84.4387 66.7243 11.9908 521.2844 698.68 698.68 518.3033 111.8934 139.0618 184.3816 7.6368 298.1034 735.0894 216.5567 4.4336 226.1751 118.2792 197.0177 128.5542 274.1023 742.7466;
	3.336 45.0762 87.1731 91.9658 14.5638 17.6161 0.0 16.5736 24.9277 24.9316 46.0856 68.7507 103.5037 46.5454 197.1393 74.2711 92.1512 97.6527 58.5089 70.5692 0.0 41.1042 72.2235 82.0446 84.9574 66.0347 13.1416 538.0192 641.9866 641.9866 497.9533 108.3444 195.0295 181.6454 145.9261 273.9143 510.5279 227.924 32.3875 227.5644 117.8259 195.4209 127.551 269.996 515.8459;
	3.4168 46.1682 87.4948 107.0555 14.5759 18.6795 0.0 17.4709 18.5853 23.3091 43.0866 64.2767 96.7682 35.8373 198.4155 74.7519 92.7477 98.2849 55.2814 71.0315 0.0 43.5856 71.1651 82.1297 96.5271 69.4591 13.0943 477.155 639.3584 639.3584 445.5851 98.0017 184.2714 182.8352 112.3549 272.7929 601.6711 227.8088 51.3338 258.5547 117.7685 207.2183 143.7859 271.8964 607.9385;
	3.5417 47.8566 87.4665 106.9729 14.7812 17.1831 0.0 17.4538 0.0 25.2675 46.7066 69.677 104.8984 24.7595 190.4253 71.7416 89.0128 94.327 70.0027 69.3992 0.0 40.0938 68.7795 84.8005 97.1197 71.8001 13.0857 332.3839 613.1412 613.1412 390.8902 82.7659 233.3422 178.6337 77.6244 261.6069 529.9145 212.1513 4.2523 260.1421 116.2376 190.6176 147.8502 253.7582 535.4344;
	3.1294 42.2847 88.4911 109.8498 14.7753 9.0715 0.0 17.5855 0.0 28.1629 52.0587 77.6614 116.9188 18.4052 179.6488 67.6816 83.9754 88.9888 64.0393 68.8339 0.0 21.1669 70.7393 85.4414 99.221 70.6572 13.3184 416.2853 530.8992 530.8992 385.254 89.2352 213.4643 177.1787 57.7028 226.517 475.0395 199.9683 5.2267 265.7706 120.8779 100.6337 146.705 245.5275 479.9878;
	3.1712 42.8504 88.8533 111.5961 15.1103 18.2488 2.8757 17.9363 5.1164 28.5761 52.8225 78.8007 118.634 30.4641 191.7678 72.2474 89.6403 94.992 68.0046 70.1576 0.9586 42.5805 73.6609 85.0453 102.5385 71.4655 13.1864 933.1382 476.0526 476.0526 289.8764 89.6402 226.6821 180.5858 95.509 203.1158 813.9493 220.381 94.4773 274.6566 118.6782 202.4397 128.5697 245.3886 822.4279;
	2.944 39.7804 88.3587 112.8954 15.1522 21.2215 0.3786 17.877 14.2652 30.0224 55.4959 82.789 124.6384 52.7344 191.9042 72.2988 89.7041 95.0595 79.7556 70.5831 0.1262 49.5168 75.5789 85.8455 102.1695 70.2541 13.2528 1095.4375 567.4399 567.4399 184.2473 67.2166 265.852 181.6811 165.3295 242.1077 921.0495 189.2376 128.1204 273.6683 117.7551 235.417 160.6234 262.7519 930.6438;
	2.3876 32.2623 93.1821 112.8827 15.3814 34.2283 0.5613 18.0583 22.5156 26.9668 49.8477 74.3629 111.953 63.5972 189.8541 71.5264 88.7458 94.044 56.2788 70.1095 0.1871 79.866 59.8327 88.095 101.8086 71.2621 13.1828 1124.5124 663.2308 663.2308 270.036 57.0381 187.5961 180.4619 199.386 282.9785 1086.0769 121.1677 257.9266 272.7016 115.1326 379.7056 164.7102 273.0567 1097.3902;
	3.6947 49.9236 92.3146 83.4711 14.9595 34.0962 1.1813 17.7768 3.249 16.3371 30.1988 45.0507 67.8235 64.5039 191.5177 72.1532 89.5234 94.868 41.8276 71.6139 0.3938 79.5577 50.0974 88.7867 105.2926 73.4557 13.3426 1236.7484 648.9458 648.9458 322.4935 49.6243 139.4254 184.3343 202.2285 276.8836 1099.8996 103.0322 15.5166 282.0337 114.3607 378.2402 179.451 272.3032 1111.3569;
	3.627 49.0081 92.177 116.5855 14.2672 33.4733 0.5822 18.4772 1.0514 16.7927 31.0411 46.3072 69.7153 65.4873 188.0532 70.8479 87.9039 93.1519 59.6724 70.506 0.1941 78.1044 70.8943 86.6598 105.0353 74.4517 13.3468 1174.8209 648.2703 648.2703 528.9718 47.5181 198.9081 181.4827 205.3116 276.5953 1146.5764 145.9384 5.1732 281.3445 115.7175 371.3307 186.5197 278.0888 1158.5199;
	3.6334 49.0948 87.1276 112.0871 13.9812 33.1394 0.0 18.2717 25.891 29.8965 55.2632 82.4418 124.1157 63.5118 191.4 72.1088 89.4683 94.8097 53.4398 69.523 0.0 77.3252 75.2205 86.6548 101.5543 72.9559 13.539 1246.8912 652.7188 652.7188 494.9795 66.1793 178.1328 178.9524 199.1181 278.4934 1183.0469 203.7779 423.6834 272.0205 114.5705 367.626 197.1767 267.0412 1195.3703;
	3.469 46.8745 87.3208 114.4198 13.9758 32.1184 0.0 18.6589 25.9463 29.8568 55.1899 82.3325 123.9511 63.1142 190.4886 71.7655 89.0423 94.3583 61.6109 71.2862 0.0 74.943 74.5539 84.8139 100.3274 72.0593 13.5404 1251.6976 708.8973 708.8973 556.4884 107.2832 205.3697 183.4908 197.8714 302.4629 1172.4647 227.0934 439.8914 268.7342 113.073 356.3003 194.5682 259.6473 1184.6779;
	3.6384 49.1631 86.7988 116.1781 14.5219 33.2433 28.7451 18.3088 25.9932 29.0447 53.6886 80.0929 120.5794 63.649 188.7852 71.1237 88.2461 93.5145 70.8919 72.2048 9.5817 77.5677 74.9969 83.3719 101.0618 71.9989 13.3808 1256.8785 711.951 711.951 577.8573 112.6379 236.3064 185.8553 199.5482 303.7658 1182.6066 241.5186 454.2097 270.7013 113.2535 368.7792 199.5385 269.5404 1194.9254;
];