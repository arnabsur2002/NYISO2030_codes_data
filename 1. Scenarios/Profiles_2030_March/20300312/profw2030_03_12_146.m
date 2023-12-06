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
	3.6387 49.1674 92.2437 110.1712 15.2067 33.6511 26.7988 12.6837 26.1388 26.4563 48.9041 72.9554 109.8339 63.8407 178.3338 67.1862 83.3607 88.3375 81.1633 69.9589 8.9329 78.5192 69.1644 85.4197 101.1422 64.7897 8.7385 1226.1112 796.2175 796.2175 787.4024 113.2976 270.5444 180.0743 200.1494 339.7195 1201.8901 293.1845 450.9456 270.9166 120.0009 373.3026 190.4911 250.4318 1214.4098;
	3.731 50.4137 91.1815 110.93 15.0349 33.0472 27.694 12.5664 26.4172 24.942 46.1049 68.7794 103.5471 63.577 177.3173 66.8033 82.8855 87.8339 81.7053 68.1411 9.2313 77.1101 69.0865 84.5511 100.4602 63.7182 8.264 1206.2523 774.4003 774.4003 806.0319 115.2508 272.3511 175.3953 199.3225 330.4108 1257.4779 277.6849 462.6338 269.0898 119.3575 366.6035 195.8732 255.1927 1270.5766;
	3.634 49.1028 91.7986 100.1248 15.2913 33.0438 25.6033 11.551 27.2971 26.0265 48.1097 71.7701 108.0495 61.2728 176.4237 66.4666 82.4678 87.3913 85.4015 69.2776 8.5344 77.1023 68.5194 85.7915 90.2134 64.1374 8.682 1158.3519 771.2705 771.2705 791.9967 113.7131 284.6717 178.3207 192.0984 329.0754 1199.5063 282.2983 465.8958 241.643 114.7801 366.5663 170.1027 261.4325 1212.0012;
	3.5596 48.0981 87.5924 97.8151 14.5465 32.2277 22.1019 11.7623 25.8334 24.2423 44.8115 66.85 100.6423 56.4107 167.9244 63.2645 78.4949 83.1812 84.3475 66.4061 7.3673 75.1979 67.5068 85.9489 86.7059 59.4669 8.0545 1087.218 761.5472 761.5472 765.0317 110.9083 281.1584 170.9295 176.8553 324.9268 1151.2018 261.1943 437.0751 232.248 109.2839 357.5123 170.8054 250.4102 1163.1934;
	3.4402 46.485 82.8831 80.4721 14.3462 29.8375 16.2001 9.5941 19.8235 23.701 43.8109 65.3572 98.3949 50.315 170.117 64.0906 79.5198 84.2672 84.2241 63.4075 5.4 69.6209 66.1228 85.506 73.8145 53.9444 7.3451 1113.5677 722.391 722.391 692.3788 101.2888 280.747 163.2111 157.7443 308.2201 1083.4589 236.0649 338.6374 197.7175 106.3489 330.9975 136.5846 216.9066 1094.7449;
	3.5366 47.7867 81.6475 76.8703 14.6954 30.6081 15.2531 7.3253 20.5967 26.596 49.1624 73.3406 110.4138 54.6939 165.067 62.188 77.1592 81.7658 85.0485 60.1697 5.0844 71.419 68.7891 83.9593 56.6653 39.67 5.7929 1060.9131 698.7976 698.7976 626.9043 88.2678 283.4948 154.8769 171.4726 298.1536 1087.2134 215.4017 321.5046 151.7821 101.5336 339.5463 164.5782 184.1733 1098.5385;
	3.2717 44.2081 73.096 62.6149 14.7507 28.6887 12.9422 5.8072 16.2272 28.0184 51.7916 77.2629 116.3188 64.4745 190.6533 71.8275 89.1193 94.4399 90.9298 69.071 4.3141 66.9404 71.9482 81.7134 49.3245 28.8299 4.5798 1158.2667 688.901 688.901 527.9766 60.0427 303.0995 177.7889 202.1363 293.9311 1113.6033 194.3177 254.3664 132.1193 78.9598 318.2538 147.5844 135.8073 1125.2033;
	3.1122 42.0533 67.4581 64.1584 14.1366 27.9225 13.3778 5.1483 12.3813 24.4192 45.1385 67.3378 101.3767 65.5353 186.7845 70.37 87.3109 92.5235 85.9272 67.4046 4.4593 65.1524 58.4905 82.2156 54.9199 20.1756 3.2022 1113.445 668.2472 668.2472 582.3041 53.4506 286.4239 173.4996 205.4619 285.1188 1053.3582 184.8618 226.8954 147.1069 66.4712 309.7532 128.4971 136.7121 1064.3307;
	2.7771 37.5251 58.4771 62.0927 13.9994 24.157 12.3809 4.1675 7.2627 20.448 37.7979 56.387 84.8903 63.5009 173.4699 65.3538 81.0871 85.9281 84.3598 67.06 4.127 56.3664 44.6382 83.539 56.8109 13.4613 2.8077 1151.2888 737.3698 737.3698 685.4533 73.415 281.1994 172.6126 199.084 314.6111 1067.364 208.1538 207.507 152.172 41.842 267.9819 127.2927 162.6298 1078.4824;
	2.5191 34.039 48.0558 55.0155 13.9708 17.0742 15.7877 2.0586 7.477 17.1829 31.7624 47.3832 71.3352 62.1574 152.0146 57.2706 71.058 75.3002 84.2754 63.4421 5.2626 39.8399 33.1502 67.4795 33.1 5.3604 1.3237 1048.2016 744.5212 744.5212 680.1251 89.2456 280.9179 163.3002 194.8718 317.6624 1071.4882 210.4119 260.0391 88.6608 31.7571 189.4103 117.8487 126.29 1082.6495;
	1.8434 24.9089 33.886 37.7225 13.5949 12.9606 16.83 1.0142 11.3888 14.4233 26.6613 39.7735 59.8787 46.0158 156.9053 59.1132 73.3441 77.7229 83.5649 67.6061 5.61 30.2415 10.3762 50.2752 18.2898 4.4279 2.2263 1031.9806 747.7565 747.7565 699.6373 91.144 278.5497 174.0183 144.2659 319.0428 984.9117 213.4776 330.8149 48.9905 31.5938 143.7768 76.4565 86.6244 995.1712;
	1.3718 18.5365 26.0138 21.4314 9.793 8.401 18.123 0.8487 15.6882 16.796 31.0471 46.3162 69.7287 55.7166 169.1474 63.7253 79.0666 83.787 84.3113 65.613 6.041 19.6024 32.6805 34.7614 14.9185 4.9919 1.4562 947.0913 718.4685 718.4685 677.2115 94.3897 281.0378 168.8881 174.6792 306.5466 997.1486 197.7273 345.0168 39.9602 20.5458 93.1954 56.2998 73.0135 1007.5356;
	1.001 13.5253 19.9648 20.6977 8.3024 6.1213 17.9598 1.5137 14.5642 14.5822 26.9549 40.2115 60.5381 54.1368 173.6575 65.4245 81.1748 86.021 81.0874 66.4236 5.9866 14.283 35.8829 35.3707 14.9553 8.9886 2.3919 910.7984 738.2571 738.2571 660.0126 90.9983 270.2914 170.9746 169.7263 314.9897 981.8158 192.6983 415.3106 40.0588 9.5047 67.9055 44.8621 44.0348 992.043;
	0.7717 10.4279 20.7751 26.0899 7.563 6.7549 12.2714 2.3728 9.8481 20.0866 37.1298 55.3904 83.3899 58.733 180.9114 68.1573 84.5656 89.6142 84.8933 69.4292 4.0905 15.7614 52.2231 36.0453 22.319 10.2479 3.8485 841.8293 670.2564 670.2564 640.2732 91.6004 282.9776 178.7109 184.1359 285.9761 774.3451 188.8525 374.8301 59.783 22.054 74.9344 37.0523 39.1959 782.4112;
	0.8163 11.03 22.3892 5.2979 6.8664 8.0944 9.1418 2.3544 11.2348 18.9349 35.0009 52.2144 78.6085 57.3847 173.8516 65.4976 81.2655 86.1172 77.0729 70.0939 3.0473 18.887 57.704 51.7728 26.0395 8.1601 3.9218 775.4249 605.3489 605.3489 571.9508 80.1718 256.9097 180.4219 179.9087 258.2822 685.7849 170.3893 286.2128 69.7487 24.9372 89.7943 37.3961 53.4331 692.9284;
	0.8103 10.9488 17.861 27.8458 7.6641 4.1042 2.4912 1.5736 0.0 14.4324 26.6781 39.7984 59.9163 58.7076 156.8814 59.1041 73.3329 77.711 75.1586 65.2661 0.8304 9.5765 52.4088 47.2909 24.6452 5.5912 2.6069 731.8516 461.2579 461.2579 472.8062 73.6843 250.5287 167.995 184.0561 196.8034 483.0755 153.8448 164.3768 66.0139 29.7196 45.5295 29.1222 30.4861 488.1076;
	0.4964 6.7069 1.3903 0.0089 5.5375 3.8305 1.7292 0.0007 0.3781 16.3266 30.1794 45.0217 67.7799 58.7461 161.4131 60.8115 75.4513 79.9558 79.2108 59.3786 0.5764 8.9377 50.3699 40.375 13.5736 4.7626 1.5367 735.1029 465.0242 465.0242 511.9639 63.7365 264.0359 152.8406 184.177 198.4103 615.8471 156.8717 44.8399 36.358 35.9182 42.4926 13.0928 21.8833 622.2622;
	1.0252 13.8525 0.0044 0.0 1.0059 4.4818 0.0 0.0 0.0 15.2878 28.2593 42.1573 63.4677 59.3711 122.3834 46.1072 57.2071 60.6225 81.6427 46.6843 0.0 10.4575 58.0789 30.3975 12.6938 2.1818 1.4986 699.105 454.0842 454.0842 557.8276 81.4468 272.1422 120.1655 186.1364 193.7426 639.2992 174.9328 155.8456 34.0013 77.6518 49.7178 12.0825 8.2937 645.9585;
	0.5028 6.7943 22.1343 35.7422 0.3975 9.1415 0.0 1.447 0.0 21.9034 40.4882 60.4004 90.9325 55.7128 102.915 38.7726 48.1068 50.9788 1.9856 50.7927 0.0 21.3303 69.0974 43.6535 21.6753 7.178 1.6976 758.8068 463.8954 463.8954 589.9373 82.7964 6.6186 130.7406 174.6671 197.9287 642.2011 171.6588 170.9746 58.0588 87.8948 101.4101 54.1489 7.2484 648.8907;
	0.2484 3.3567 0.0 37.7938 2.1994 0.6405 0.0 0.0 0.0 24.0349 44.4282 66.2781 99.7813 50.5751 87.3373 32.9038 40.8251 43.2624 5.5914 55.0805 0.0 1.4944 71.4008 51.4651 0.0 10.4407 0.833 614.1427 335.9834 335.9834 588.0199 69.6525 18.6379 141.7773 158.5599 143.3529 544.0317 176.3766 0.0 0.0 81.4141 7.105 21.6109 4.8642 549.6987;
	0.7328 9.9023 38.4672 72.7222 5.7488 9.3053 0.0 3.4421 0.0 22.4128 41.4297 61.805 93.0471 47.8084 100.3062 37.7898 46.8873 49.6866 78.7772 58.8201 0.0 21.7123 68.5797 68.9786 29.6501 8.8683 2.1716 546.7409 326.6336 326.6336 516.3774 58.7558 262.5907 151.403 149.8857 139.3637 577.9672 182.3915 0.0 79.4199 90.8701 103.2265 69.9655 47.2655 583.9877;
	0.5565 7.5193 43.6285 71.3937 0.3159 2.3603 0.0 2.9252 0.0 22.3646 41.3406 61.672 92.8469 19.8035 122.4481 46.1316 57.2374 60.6545 75.936 53.1277 0.0 5.5073 69.8501 65.9114 36.8459 15.7024 1.5107 425.4808 287.5274 287.5274 446.1066 50.4366 253.12 136.7508 62.0867 122.6783 585.305 149.3676 0.0 98.6943 74.466 26.1833 11.0316 46.4704 591.4019;
	0.7475 10.1001 43.5639 73.3132 7.3649 6.0012 0.0 3.4147 1.955 17.4234 32.2068 48.0463 72.3334 21.4146 144.5126 54.4443 67.5512 71.5841 82.548 65.571 0.0 14.0027 47.6453 65.5115 36.1438 31.621 1.8152 418.1524 360.6943 360.6943 488.5496 55.2917 275.1602 168.78 67.1377 153.8962 497.9947 143.1833 0.0783 96.8138 59.966 66.5728 19.1803 90.2262 503.1822;
	0.4117 5.5635 50.2289 74.3324 0.0826 1.3662 1.3072 5.3687 2.4448 19.6487 36.3203 54.1827 81.5717 7.8349 148.1543 55.8163 69.2535 73.388 84.1021 64.3372 0.4357 3.1877 67.8568 71.044 45.9506 39.5833 3.1432 305.2547 266.2595 266.2595 369.4096 52.2133 280.3404 165.6042 24.5635 113.604 351.5294 118.8289 7.9772 123.0819 50.4861 15.1554 14.8656 66.4372 355.1911;
];
