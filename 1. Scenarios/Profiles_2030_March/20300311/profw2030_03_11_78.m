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
	3.9179 52.9393 89.9601 109.2195 15.1236 33.6754 26.7206 18.1576 27.2872 31.0066 57.3153 85.5031 128.7244 64.1158 197.7819 74.5132 92.4516 97.9711 15.5125 72.8425 8.9069 78.576 75.4836 87.5065 101.0583 73.2962 13.7457 1240.3255 711.4281 711.4281 600.91 103.4122 51.7083 187.4967 201.0116 303.5427 1171.7552 215.7013 436.2337 270.6919 117.603 373.5726 142.8908 269.4635 1183.961;
	3.8684 52.2704 91.109 112.0754 15.0395 31.86 26.5264 18.159 26.6046 30.9019 57.1217 85.2144 128.2898 60.4626 196.3417 73.9706 91.7783 97.2576 20.4434 72.635 8.8421 74.34 75.5256 87.0121 99.5409 72.0541 13.5876 1247.0862 709.8827 709.8827 583.3141 102.3485 68.1448 186.9628 189.5586 302.8833 1200.3191 234.0912 435.6439 266.6275 120.3822 353.4335 141.8091 272.266 1212.8225;
	3.7044 50.0542 89.3433 45.3934 14.7634 32.0714 27.2404 17.5781 26.4643 29.269 54.1033 80.7115 121.5108 59.4849 197.8745 74.5481 92.4948 98.0169 17.1393 71.7291 9.0801 74.8333 71.3857 86.4549 96.7973 72.8717 13.5598 1168.7938 671.8863 671.8863 558.1519 110.0374 57.1311 184.631 186.4932 286.6715 1175.6311 233.3728 420.9635 259.2785 119.1967 355.7787 130.9294 264.2643 1187.8773;
	3.7173 50.2289 85.4571 60.0098 14.1388 31.8836 26.4042 17.6621 26.1432 30.0418 55.5318 82.8425 124.7189 63.2238 200.3143 75.4672 93.6353 99.2254 16.0884 71.4815 8.8014 74.395 68.8278 84.4066 92.8817 71.8309 13.4935 1174.1535 671.2526 671.2526 534.2166 97.9747 53.628 183.9935 198.215 286.4011 1080.7522 247.5194 432.6996 248.7902 116.7153 353.6951 151.4094 260.8596 1092.01;
	3.4659 46.8314 90.3514 112.7997 14.5158 32.1042 24.0552 18.0587 27.3431 31.058 57.4102 85.6448 128.9377 60.3364 191.1673 72.0212 89.3596 94.6945 58.4552 69.3298 8.0184 74.9098 64.2656 85.3278 98.5737 72.8578 13.5598 1209.413 648.7281 648.7281 530.7672 102.6025 194.8508 178.455 189.1629 276.7907 1179.6472 257.4514 451.1677 264.0368 118.7217 356.1425 170.8381 260.2575 1191.9352;
	3.685 49.7931 88.1522 109.8036 14.3871 33.1194 29.3058 18.0366 27.712 30.8087 56.9494 84.9573 127.9028 65.2291 198.7858 74.8914 92.9208 98.4683 87.2629 71.5485 9.7686 77.2787 71.5266 84.3771 88.658 71.7731 13.7702 1272.0292 711.2175 711.2175 532.6914 105.1452 290.8764 184.1661 204.5019 303.4528 1142.2339 242.3769 459.372 237.4768 116.3323 367.405 177.5257 261.3493 1154.1322;
	3.7627 50.8418 88.8364 112.0052 14.1362 32.7731 29.3612 17.9554 28.0357 30.7039 56.7557 84.6684 127.4678 67.4323 195.0123 73.4697 91.1569 96.5991 87.2339 72.117 9.7871 76.4707 74.6027 84.7404 98.4432 74.036 13.4832 1278.1005 745.2926 745.2926 566.0948 98.5579 290.7797 185.6294 211.4095 317.9915 1166.9518 255.2023 464.6087 263.687 117.5964 363.5634 184.2029 264.1617 1179.1076;
	3.8749 52.3586 87.5026 111.8594 14.301 33.0582 28.8636 17.8655 26.7138 30.4164 56.2242 83.8755 126.2741 66.7366 194.9425 73.4434 91.1243 96.5645 84.7106 72.1867 9.6212 77.1358 72.8977 83.687 89.6688 72.1127 13.1759 1185.611 725.57 725.57 532.5488 84.9267 282.3688 185.8089 209.2284 309.5765 1108.3387 239.7308 453.2049 240.1843 113.4464 366.7258 183.7724 256.8742 1119.8839;
	3.8853 52.4991 92.0862 116.3465 14.2273 34.5156 29.2982 17.8508 26.7124 30.7626 56.8643 84.8303 127.7115 69.2578 195.4519 73.6354 91.3624 96.8169 87.9045 70.881 9.7661 80.5364 73.0249 85.5034 100.1536 71.6226 13.216 1236.4397 780.0852 780.0852 607.0523 84.2499 293.015 182.4479 217.1325 332.8364 1215.4024 278.4384 445.2699 268.2686 121.0753 382.8931 171.9617 275.9314 1228.0628;
	3.9065 52.7858 91.1855 117.5532 14.3504 34.3279 30.75 18.0082 27.7064 31.1006 57.4889 85.7622 129.1145 69.3666 195.0071 73.4678 91.1545 96.5965 88.5668 70.9055 10.25 80.0985 74.8759 88.0182 102.1103 72.1741 13.0687 1187.0494 737.0664 737.0664 642.6661 91.8965 295.2228 182.5109 217.4738 314.4817 1168.7302 297.7046 449.3649 273.5096 121.9038 380.8111 167.1826 274.5079 1180.9045;
	3.8962 52.6465 91.981 118.0966 14.6314 34.063 27.8971 18.1145 27.8229 31.3373 57.9266 86.4151 130.0974 69.0486 196.5663 74.0552 91.8833 97.3689 88.1423 71.5909 9.299 79.4804 74.7697 87.8567 101.6488 73.6166 13.2105 1120.598 731.0354 731.0354 637.3043 93.5671 293.8076 184.2753 216.4767 311.9085 1075.8835 301.1267 460.0655 272.2737 122.07 377.8724 162.2838 278.7141 1087.0906;
	3.8284 51.7296 90.0848 118.2277 14.2104 32.989 26.0813 18.0455 27.1974 31.166 57.6099 85.9426 129.3861 69.4714 195.7019 73.7296 91.4793 96.9407 88.1661 70.71 8.6938 76.9742 73.7069 85.3155 100.5283 73.2875 13.0639 1031.493 731.5777 731.5777 634.3515 99.2322 293.887 182.0076 217.8023 312.1398 1042.4038 268.3546 460.7707 269.2723 120.7523 365.9575 177.2234 278.6929 1053.2622;
	3.8789 52.413 90.7659 117.3369 14.863 33.9902 28.5255 18.335 27.3229 31.3136 57.8827 86.3496 129.9988 68.3209 196.0492 73.8604 91.6416 97.1127 86.991 71.0629 9.5085 79.3104 74.5432 88.2838 99.6753 75.6136 13.3441 1029.9487 744.3714 744.3714 648.8934 98.6496 289.9699 182.9162 214.1952 317.5985 961.4223 261.8745 464.266 266.9875 118.0674 377.0645 156.2678 272.29 971.4371;
	3.7613 50.8231 90.4886 114.9797 15.0934 33.8865 28.0871 18.6122 26.1132 30.5136 56.4039 84.1435 126.6775 65.931 200.1989 75.4238 93.5813 99.1683 89.5037 71.4492 9.3624 79.0686 73.6931 88.2342 100.5112 73.1151 13.4738 1024.6716 714.7418 714.7418 680.1153 98.0746 298.3457 183.9103 206.7024 304.9565 988.8537 304.7752 462.7424 269.2263 117.401 375.9147 147.9107 270.9966 999.1542;
	3.7606 50.8146 89.7899 111.6773 14.9699 32.562 26.4448 18.0006 26.821 31.1078 57.5024 85.7822 129.1447 67.312 198.1214 74.6411 92.6102 98.1392 87.1261 71.9542 8.8149 75.9781 72.8928 86.8988 97.5359 73.0241 13.2665 943.175 702.6791 702.6791 656.7894 94.3687 290.4205 185.2103 211.0323 299.8097 870.9336 306.0303 466.3455 261.2568 115.17 361.2215 161.6807 262.3338 880.0058;
	3.7943 51.2693 90.11 112.7691 15.1446 34.2802 27.9669 17.5588 27.8329 30.9747 57.2563 85.4151 128.592 67.7194 192.6234 72.5697 90.0402 95.4158 84.4545 69.9003 9.3223 79.9871 73.8912 84.9568 96.4626 72.559 12.961 1041.8227 743.0325 743.0325 611.7328 102.6997 281.5149 179.9236 212.3094 317.0272 955.5921 281.0756 474.5071 258.3819 112.7155 380.2817 179.985 262.8178 965.5462;
	3.6195 48.9069 88.5796 112.3734 15.2772 33.7467 25.1835 16.387 27.1069 31.0666 57.4261 85.6684 128.9734 64.0982 198.2677 74.6962 92.6786 98.2117 88.0035 73.0925 8.3945 78.7422 74.363 86.4677 92.6616 70.3644 11.5496 1000.8468 699.1672 699.1672 585.0031 89.7773 293.345 188.1403 200.9564 298.3113 1019.5149 237.8817 470.9531 248.2007 112.945 374.363 182.0731 234.9495 1030.1348;
	3.6689 49.5752 90.1624 110.3826 15.0336 31.8511 25.4883 13.9399 27.5014 31.0829 57.4563 85.7136 129.0413 64.4718 194.4221 73.2474 90.881 96.3067 83.9583 71.3652 8.4961 74.3192 73.1482 86.7706 96.9615 66.4319 10.6504 1156.9952 709.2227 709.2227 644.8022 92.4021 279.8611 183.6942 202.128 302.6017 1101.7352 249.9808 469.9906 259.7184 116.1095 353.3348 180.8009 253.6243 1113.2116;
	3.375 45.6039 87.498 101.9106 14.2377 30.9628 24.7218 14.3531 26.6995 30.7508 56.8425 84.7978 127.6626 65.8111 194.4901 73.273 90.9128 96.3404 84.3633 71.498 8.2406 72.2466 74.2372 82.621 95.3981 40.2289 11.0238 1123.4226 720.2126 720.2126 617.3012 95.9813 281.2109 184.0361 206.3266 307.2907 1124.7136 269.5019 460.9144 255.5305 112.252 343.4811 148.6272 228.9189 1136.4294;
	3.5567 48.0587 85.9353 103.8767 14.2852 25.0969 24.7594 14.6769 26.4804 30.7706 56.8789 84.8522 127.7445 64.5209 193.2287 72.7978 90.3232 95.7156 84.9808 72.811 8.2531 58.5595 74.6725 82.8026 95.3297 49.0345 10.4938 1183.164 742.4958 742.4958 607.953 96.5466 283.2693 187.4156 202.2816 316.7982 1213.8957 244.2764 466.4756 255.3474 112.3004 278.4085 164.6272 248.1644 1226.5405;
	3.5592 48.0929 85.3749 103.3577 14.2588 25.1775 27.8254 14.1653 26.0124 29.9234 55.313 82.5161 124.2276 63.8849 191.3761 72.0998 89.4572 94.7979 82.7862 68.5874 9.2751 58.7474 72.7019 81.8155 95.451 54.711 10.3307 1241.9898 748.9714 748.9714 623.7381 101.91 275.954 176.5441 200.2879 319.5611 1239.8689 248.2699 442.4122 255.6722 115.0226 279.302 148.0623 243.4414 1252.7842;
	3.5914 48.5273 85.5708 94.4824 14.6652 27.0126 23.946 12.844 25.7875 30.0131 55.4788 82.7634 124.5998 63.5871 190.3179 71.7012 88.9626 94.2737 85.5014 70.5576 7.982 63.0294 69.81 82.5827 92.539 56.6937 10.3853 1207.7028 717.2922 717.2922 630.6325 105.0339 285.0045 181.6153 199.354 306.0447 1103.9104 262.074 439.395 247.8722 112.3201 299.6597 157.1362 240.4384 1115.4095;
	3.4474 46.5819 82.2252 81.4483 14.4042 25.0549 27.0998 10.6589 25.6252 25.4806 47.1006 70.2648 105.7832 64.1936 186.6344 70.3134 87.2408 92.4492 84.5496 67.9665 9.0333 58.4614 58.6134 79.7878 85.4846 48.9936 9.474 1151.3319 679.7699 679.7699 668.6839 110.22 281.8319 174.9459 201.2556 290.0352 1101.2824 276.5328 437.177 228.9767 111.8192 277.9422 171.4765 229.4778 1112.7541;
	3.6504 49.3247 86.9063 98.3477 14.9447 30.8776 24.9788 12.2809 27.3472 29.1718 53.9236 80.4434 121.1072 64.1623 193.7193 72.9826 90.5525 95.9586 85.0916 72.1449 8.3263 72.0478 70.7796 82.7664 94.3861 55.0596 9.9926 1088.5847 682.5494 682.5494 684.0756 109.557 283.6385 185.7012 201.1576 291.2211 1048.1381 278.3611 435.7203 252.82 114.7199 342.5356 184.2874 224.3441 1059.0562;
];
