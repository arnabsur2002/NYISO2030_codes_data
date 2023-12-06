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
	3.8065 51.4338 91.7136 108.7614 14.3261 34.2065 28.2789 18.6297 26.6348 30.0232 55.4974 82.7912 124.6418 63.452 193.0393 72.7264 90.2347 95.6218 36.403 71.4135 9.4263 79.8151 72.204 88.5732 104.4968 75.1541 13.8345 1247.4418 647.5951 647.5951 572.3824 103.0684 121.3434 183.8185 198.9305 276.3073 1176.6772 229.8032 462.8911 279.9022 118.9439 379.464 143.8769 265.8734 1188.9342;
	3.8749 52.359 92.4118 117.1239 14.9548 33.4144 28.7599 18.9597 26.3594 29.6555 54.8177 81.7773 123.1153 65.1953 198.3002 74.7085 92.6938 98.2278 32.5641 73.3022 9.5866 77.967 71.5199 88.2795 104.7245 75.0942 13.876 1190.5978 648.9335 648.9335 535.1132 100.7571 108.547 188.6799 204.3961 276.8783 1138.5856 216.4648 461.9472 280.512 121.7861 370.6772 150.1334 271.9777 1150.4458;
	3.8615 52.1771 89.799 62.1643 14.685 33.6203 30.186 18.0927 27.1259 29.3751 54.2995 81.0042 121.9513 64.6129 195.3044 73.5798 91.2935 96.7438 29.1095 70.2023 10.062 78.4473 73.205 85.3702 101.4935 73.2154 13.6656 1236.9987 646.8872 646.8872 533.0603 104.3971 97.0316 180.7009 202.5703 276.0052 1136.529 217.9752 454.7187 271.8576 120.3642 372.9607 147.3171 266.4004 1148.3679;
	3.7784 51.0545 91.5649 84.1011 14.8591 34.2602 28.7319 18.3648 26.6825 29.7583 55.0077 82.0607 123.542 66.3146 201.2385 75.8154 94.0673 99.6832 43.1323 71.7672 9.5773 79.9405 68.4581 86.8399 103.2624 75.0611 13.996 1280.0033 686.8859 686.8859 534.8979 94.4404 143.7742 184.729 207.9051 293.0713 1121.8553 234.46 457.9145 276.5958 121.0597 380.0599 172.338 263.3068 1133.5413;
	3.5402 47.8356 87.7828 115.277 14.4085 32.8032 25.5244 18.2362 27.1402 30.3892 56.1739 83.8004 126.1611 66.5265 192.4344 72.4985 89.9519 95.3221 78.7665 69.7712 8.5081 76.5409 61.2941 84.8208 100.9506 74.0715 13.6115 1209.3965 649.0968 649.0968 510.9755 94.7639 262.5549 179.5913 208.5695 276.9479 1124.862 231.4622 472.4174 270.4033 120.6997 363.8971 184.8073 257.3421 1136.5794;
	3.5615 48.1232 86.394 110.0456 14.0886 32.3181 28.6362 18.1214 26.5112 30.8865 57.0932 85.1718 128.2256 68.8599 195.857 73.788 91.5518 97.0175 89.8597 71.6155 9.5454 75.4088 70.9334 85.4908 102.2072 74.2169 13.9471 1221.5806 657.968 657.968 486.559 92.0194 299.5325 184.3386 215.8852 280.733 1044.9799 224.5499 454.3355 273.7694 117.8603 358.5151 175.1173 265.2614 1055.8651;
	3.6079 48.7501 88.525 111.1559 14.085 32.3251 29.2919 17.893 26.8712 30.668 56.6894 84.5694 127.3188 67.9923 194.908 73.4305 91.1082 96.5475 89.0026 72.1491 9.764 75.4253 73.2832 85.1523 99.2416 74.9112 13.7146 1232.6156 704.9191 704.9191 567.7805 89.3169 296.6755 185.712 213.1651 300.7655 1060.727 250.1344 452.4976 265.8257 116.0757 358.5933 183.4524 261.9268 1071.7763;
	3.5189 47.5486 87.3531 110.7191 14.3596 32.4963 27.3772 17.6688 26.6501 30.4386 56.2653 83.9368 126.3664 67.146 200.0756 75.3773 93.5237 99.1072 87.3506 72.0174 9.1257 75.8246 73.016 84.939 102.1744 73.7809 13.5686 1179.3233 659.4492 659.4492 534.3126 78.317 291.1686 185.3731 210.5118 281.365 995.105 242.3791 447.9473 273.6813 116.9042 360.4918 177.2098 260.2705 1005.4707;
	3.5257 47.64 87.4302 114.2085 14.0589 33.2514 28.3466 17.7149 26.2349 30.9612 57.2314 85.378 128.5361 68.366 199.7956 75.2718 93.3928 98.9685 88.8278 71.6844 9.4489 77.5866 74.2102 85.7878 101.2505 72.8855 13.6867 1233.2883 769.6287 769.6287 607.8853 79.1452 296.0925 184.5159 214.3367 328.3749 1134.2412 287.525 456.538 271.2068 118.9111 368.8689 165.3545 268.1226 1146.0562;
	3.6553 49.3908 86.9309 113.1116 14.3706 33.7916 28.1675 17.7954 26.1214 31.1845 57.6441 85.9937 129.463 66.3219 200.4519 75.5191 93.6996 99.2936 89.9354 73.2002 9.3892 78.847 74.6415 86.6019 101.5046 72.5305 13.6386 1153.4387 690.8672 690.8672 630.2263 84.519 299.7848 188.4176 207.928 294.77 1038.9021 296.0546 455.2043 271.8874 115.7946 374.861 154.3277 262.0242 1049.724;
	3.6589 49.4401 89.0274 116.8242 14.3255 33.739 26.6034 17.817 27.9599 31.5755 58.3668 87.0717 131.086 64.2918 202.8502 76.4227 94.8207 100.4816 87.7246 73.6079 8.8678 78.7243 75.5731 85.8527 98.9551 72.8372 13.6091 1167.5312 679.1555 679.1555 588.9378 85.52 292.4152 189.467 201.5636 289.773 1001.1917 286.18 455.8887 265.0582 115.1695 374.278 155.6467 260.0368 1011.6208;
	3.637 49.1443 89.0843 116.6789 14.2794 33.5765 25.9636 17.9019 27.9814 31.3487 57.9476 86.4464 130.1445 66.6258 204.8195 77.1646 95.7412 101.4571 90.214 73.8707 8.6545 78.3452 75.7381 83.3024 100.4207 71.7392 13.2986 1163.8607 691.9275 691.9275 605.6317 95.8302 300.7133 190.1433 208.8809 295.2224 1040.0835 288.5778 461.8975 268.9841 114.6906 372.4756 179.2414 261.9603 1050.9177;
	3.6226 48.9494 89.2691 117.241 14.8621 34.2248 30.031 17.6607 28.2905 31.2426 57.7515 86.1539 129.7043 67.1177 199.6644 75.2224 93.3315 98.9035 88.0943 72.1168 10.0103 79.8578 73.9483 87.5305 101.18 73.1683 13.4123 1138.7673 723.1731 723.1731 627.9582 99.1637 293.6477 185.6287 210.4232 308.5539 997.1302 296.2134 471.5057 271.0178 117.561 379.6666 161.5778 263.1431 1007.517;
	3.5862 48.457 88.2085 112.6501 14.3026 32.6009 28.2921 17.5674 27.8756 30.7227 56.7905 84.7203 127.5459 65.025 201.6334 75.9642 94.2519 99.8789 90.1915 71.6413 9.4307 76.0688 73.0191 86.3898 98.5068 74.0362 13.4577 1098.5644 669.467 669.467 622.4804 98.1887 300.6382 184.405 203.8623 285.6393 917.301 287.8741 466.343 263.8574 118.3253 361.6529 145.0521 265.6609 926.8562;
	3.5074 47.3927 89.7849 115.7576 14.8521 32.8579 25.4735 18.2769 27.3265 30.9911 57.2866 85.4603 128.66 67.3398 197.442 74.3851 92.2927 97.8027 87.0144 71.9431 8.4912 76.6684 72.1459 88.5187 100.9212 74.5331 13.578 1127.2416 712.283 712.283 683.4301 105.3431 290.048 185.1817 211.1194 303.9074 910.4796 317.1717 471.9945 270.3246 120.0751 364.5035 157.921 254.3488 919.9638;
	3.6242 48.9712 91.497 115.0696 14.7304 32.5986 26.7673 17.9061 27.7189 30.8499 57.0256 85.071 128.0739 68.2764 199.8806 75.3038 93.4325 99.0106 84.3376 72.7212 8.9224 76.0634 73.8919 85.3789 98.9016 73.0953 13.2796 1175.5668 747.9019 747.9019 683.3365 111.0314 281.1252 187.1846 214.0557 319.1048 1032.363 307.85 467.2271 264.915 116.6882 361.6271 167.9055 254.0876 1043.1167;
	3.4323 46.378 87.5265 114.3335 14.5225 33.3399 24.8414 17.3345 26.6314 30.8363 57.0004 85.0334 128.0173 63.7569 197.9929 74.5927 92.5502 98.0756 88.8486 71.9985 8.2805 77.7931 73.0072 86.331 98.232 71.0292 12.0801 1166.9176 715.2772 715.2772 712.7426 107.6296 296.1619 185.3243 199.8866 305.185 1129.2285 303.4484 457.6565 263.1215 120.4793 369.8508 171.2464 213.185 1140.9913;
	3.631 49.063 89.7339 113.6369 15.0178 32.2518 24.8225 14.4246 27.7062 30.9528 57.2157 85.3546 128.5008 66.2576 192.5182 72.5301 89.9911 95.3637 88.2201 69.2703 8.2742 75.2542 74.7826 86.4331 100.0867 64.8018 11.636 1184.3822 721.0132 721.0132 742.1814 103.6275 294.0671 178.3019 207.7266 307.6323 1115.9825 311.8642 466.2857 268.0893 119.8288 357.7801 178.9773 245.0525 1127.6073;
	3.633 49.0894 88.7221 111.9192 15.0574 32.697 26.6271 16.2419 27.9415 31.0735 57.4388 85.6874 129.002 67.3346 198.3368 74.7222 92.7109 98.2459 91.694 71.6017 8.8757 76.2931 75.4 88.6602 101.1428 47.3984 13.2137 1202.4862 761.4627 761.4627 687.8891 108.4908 305.6468 184.3029 211.103 324.8908 1219.459 297.3884 468.1888 270.9183 122.3145 362.719 151.0265 234.2581 1232.1617;
	3.682 49.7512 89.2392 108.4512 14.9195 28.4879 28.1945 15.8709 28.4135 31.2919 57.8426 86.2897 129.9087 67.5156 198.3385 74.7229 92.7117 98.2467 89.8742 69.2421 9.3982 66.4717 75.5565 88.2754 100.5755 51.4769 12.1239 1247.3366 791.3407 791.3407 679.3418 116.2809 299.5807 178.2294 211.6707 337.6387 1288.5551 298.0749 471.6665 269.3987 121.858 316.0255 178.529 243.4838 1301.9776;
	3.555 48.0363 88.2561 108.0014 14.4633 28.4874 29.6555 15.0148 27.7839 31.0437 57.3838 85.6053 128.8783 65.3798 197.4403 74.3845 92.2919 97.8018 86.292 67.6787 9.8852 66.4705 74.9706 86.9204 97.9873 58.5079 11.1504 1219.2565 764.4772 764.4772 641.7438 110.1345 287.64 174.2051 204.9744 326.1769 1237.73 287.4473 450.974 262.466 118.0224 316.0199 153.9338 234.3416 1250.623;
	3.5839 48.4267 84.2893 95.095 14.2927 28.9357 28.7382 12.1116 27.8074 30.2087 55.8404 83.3028 125.412 65.1202 203.2717 76.5814 95.0177 100.6904 89.6274 69.0134 9.5794 67.5166 73.8097 83.9274 92.9854 55.0469 9.7557 1236.4298 774.5323 774.5323 751.7591 113.3318 298.7581 177.6406 204.1606 330.4671 1196.2622 319.2172 463.8726 249.0681 108.1673 320.9933 155.5248 232.3756 1208.7233;
	3.6844 49.7841 86.7597 93.7728 14.855 31.1018 29.8465 11.8002 27.4094 30.9804 57.2668 85.4309 128.6157 68.3604 205.8583 77.5559 96.2268 101.9717 88.8051 70.703 9.9488 72.571 75.5502 85.6575 88.1924 58.3221 9.5447 1183.4365 807.6816 807.6816 805.4959 117.1384 296.0172 181.9896 214.3191 344.6108 1240.4533 335.3978 470.8846 236.2296 113.1722 345.023 178.711 230.2002 1253.3747;
	3.856 52.1029 86.2772 100.9605 15.0977 33.6552 29.6159 11.9792 28.1675 31.1842 57.6436 85.9928 129.4617 66.7674 205.7551 77.517 96.1786 101.9206 90.2183 72.6503 9.872 78.5287 75.7671 88.4023 92.2987 56.0516 9.8547 1174.6367 798.5033 798.5033 822.9424 112.9595 300.7275 187.002 209.3247 340.6948 1234.3035 325.4282 478.4267 247.2287 120.7305 373.3478 194.0309 223.8268 1247.1609;
];