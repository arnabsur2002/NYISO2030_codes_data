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
	3.7683 50.918 80.5365 112.8622 15.1468 35.7072 30.2825 7.4781 25.6421 9.8268 18.1648 27.0982 40.7963 39.0419 174.8641 65.879 81.7388 86.6187 84.5911 70.3964 10.0942 83.3168 0.3776 36.8039 44.0957 28.2026 5.1379 1245.0095 806.982 806.982 653.1431 85.8753 281.9702 181.2006 122.4015 344.3123 1250.3655 192.8897 367.7543 118.1134 109.1586 396.112 201.1658 120.7729 1263.3901;
	2.94 39.7254 73.8957 41.9232 14.8626 29.3177 30.2741 7.3292 4.3374 10.2146 18.8816 28.1677 42.4063 26.7528 169.2477 63.7631 79.1135 83.8366 89.9192 69.3233 10.0914 68.4079 0.0 32.631 34.3396 25.7661 5.2546 1229.8756 804.4458 804.4458 687.271 74.9422 299.7306 178.4383 83.8735 343.2302 1267.7051 182.6494 431.7907 91.9811 109.137 325.2308 199.654 99.1834 1280.9104;
	3.0663 41.433 90.5837 51.0576 15.155 26.0778 31.9001 7.1797 8.6004 11.7227 21.6693 32.3264 48.6672 30.8952 183.3446 69.074 85.7029 90.8195 85.5276 63.9714 10.6334 60.8482 0.0 41.3916 37.9232 31.379 6.1713 1258.8774 828.1885 828.1885 733.8512 89.2487 285.0921 164.6625 96.8605 353.3604 1283.6088 188.8419 435.6127 101.5801 32.9189 289.2898 205.709 141.1311 1296.9797;
	3.5133 47.4726 89.3806 54.0936 15.2049 16.1235 32.4374 7.7734 11.4433 13.1651 24.3356 36.3039 54.6553 25.5789 189.4957 71.3914 88.5782 93.8665 86.119 66.3157 10.8125 37.6215 0.5908 39.7311 38.1895 31.5994 5.5037 1262.7203 854.33 854.33 768.4479 96.7913 287.0635 170.6968 80.1932 364.5141 1290.3815 218.8513 461.8497 102.2934 38.2946 178.8633 210.7541 126.5837 1303.8229;
	3.8703 52.2966 87.5454 49.8153 14.8943 25.0864 32.3834 8.094 11.5252 11.1582 20.6258 30.7696 46.3235 27.4136 160.6294 60.5162 75.0849 79.5676 88.0222 63.181 10.7945 58.5349 0.0 29.546 40.7767 63.5771 5.8208 1233.2715 832.5123 832.5123 760.4688 99.3713 293.4072 162.6281 85.9454 355.2053 1261.9578 223.9974 464.571 109.2233 39.2449 278.2916 215.2125 210.9766 1275.1032;
	3.8824 52.4593 94.9914 119.0765 15.0636 34.4518 32.0681 8.9054 10.8379 12.137 22.4351 33.4687 50.387 24.9859 174.4254 65.7138 81.5337 86.4014 88.5695 57.3786 10.6894 80.3875 0.001 33.8551 56.1082 71.7257 6.1398 1187.5852 797.0764 797.0764 751.5652 110.848 295.2316 147.6926 78.3342 340.0859 1189.3529 214.6243 466.3135 150.2898 74.0769 382.1853 215.2589 263.1091 1201.7419;
	3.7855 51.1507 91.0802 119.8969 14.6903 34.3108 31.1297 11.3327 9.7643 10.9378 20.2183 30.1618 45.4084 34.7015 187.3293 70.5752 87.5656 92.7934 78.3037 67.0511 10.3766 80.0585 21.3647 47.5968 98.9085 73.5843 11.3113 1101.3447 788.1811 788.1811 697.3181 105.3056 261.0125 172.5896 108.7939 336.2906 1185.7232 238.8314 451.5076 264.9335 110.6211 380.6211 210.1356 276.7855 1198.0745;
	3.8462 51.971 91.0418 119.5082 14.7604 34.4851 31.1594 18.9687 9.7 3.9946 7.384 11.0154 16.5837 55.4673 182.8504 68.8878 85.4719 90.5747 78.2923 51.2966 10.3865 80.4653 0.0 50.3539 102.8392 74.3682 13.9219 995.5133 778.9745 778.9745 742.3632 109.838 260.9743 132.0376 173.8975 332.3624 1167.0276 281.0113 446.9066 275.4622 118.4203 382.5549 210.2006 283.1982 1179.1841;
	3.8202 51.62 92.6529 119.0227 14.9594 34.8389 31.546 19.0416 9.499 11.1705 20.6484 30.8034 46.3743 62.8651 190.5099 71.7735 89.0523 94.3688 49.0243 58.8608 10.5153 81.2907 0.0 86.9918 104.2818 74.5995 14.0584 752.1071 812.2941 812.2941 750.2597 113.2915 163.4145 151.5078 197.0906 346.5788 1191.8724 289.8664 462.4493 279.3263 119.5313 386.479 215.5161 280.6731 1204.2878;
	3.7181 50.2403 91.7029 118.4056 14.9448 34.6476 31.9215 18.6761 19.1429 10.5305 19.4654 29.0386 43.7174 61.3903 180.6231 68.0487 84.4308 89.4714 48.2518 47.6423 10.6405 80.8445 0.0 86.9168 99.8876 71.2325 13.6896 605.1103 811.4749 811.4749 752.9644 115.3245 160.8393 122.6313 192.4669 346.2293 1091.6269 267.9647 458.9527 267.5561 115.0106 384.3576 215.0286 272.0446 1102.998;
	3.775 51.0084 88.8868 117.0222 14.829 34.48 31.7994 17.8698 27.3841 14.4894 26.7834 39.9556 60.153 67.4279 196.1113 73.8838 91.6706 97.1435 28.7416 59.5303 10.5998 80.4534 0.0 80.5937 96.9802 68.1083 13.3515 460.7532 806.6138 806.6138 748.7943 104.6013 95.8054 153.2312 211.3957 344.1552 973.3613 264.7159 453.969 259.7683 118.5917 382.4985 211.4019 258.8814 983.5005;
	2.9057 39.2626 88.248 117.163 14.2059 32.135 29.9994 18.3534 26.5912 11.5688 21.3847 31.9018 48.028 63.3173 187.0256 70.4608 87.4236 92.6429 38.7886 50.1149 9.9998 74.9817 1.4092 81.5581 97.093 71.2427 13.3498 305.7363 741.9699 741.9699 673.805 108.4714 129.2955 128.996 198.5083 316.5738 733.6478 227.3642 441.407 260.0706 117.1563 356.4843 193.7663 257.7337 741.29;
	2.1167 28.601 91.5323 117.6321 14.0741 21.745 27.9217 18.8193 28.0987 26.4369 48.8681 72.9017 109.753 63.5141 188.3685 70.9667 88.0513 93.3081 89.3811 55.9625 9.3072 50.7382 40.4557 82.1577 97.1653 70.7821 13.8622 286.7515 679.2985 679.2985 609.53 110.0544 297.9369 144.0476 199.1253 289.834 646.9266 217.6191 449.8269 260.2643 118.5292 241.2241 181.9579 268.5483 653.6654;
	2.4312 32.8502 92.6644 118.493 14.6705 13.298 27.2561 18.5757 27.8593 29.5011 54.5324 81.3515 122.4743 63.6456 189.2823 71.311 88.4785 93.7607 87.7804 62.8982 9.0854 31.0286 69.26 83.4103 98.8464 71.5167 13.7863 305.1967 611.9507 611.9507 586.5864 104.7887 292.6014 161.9001 199.5375 261.0989 508.9399 197.393 463.9838 264.7672 121.1526 147.519 152.6506 269.526 514.2414;
	2.2177 29.9665 91.0761 119.1581 12.4896 2.7793 23.0546 18.5806 27.7251 26.9129 49.748 74.2143 111.7292 64.8249 193.2717 72.814 90.3433 95.7369 85.8312 69.9854 7.6849 6.485 68.2058 85.1354 100.2767 71.2549 13.7668 473.3986 480.2819 480.2819 428.1793 94.4142 286.1041 180.1426 203.2347 204.9203 446.994 182.3753 444.2371 268.5983 118.157 30.8313 123.4093 248.5195 451.6502;
	3.5606 48.1112 92.9978 92.8547 14.8077 26.4353 17.6816 18.937 24.8912 27.7442 51.2847 76.5067 115.1804 55.5723 191.0292 71.9692 89.2951 94.6261 85.4539 69.2105 5.8939 61.6825 67.0707 88.5553 102.7488 73.2272 13.8389 494.4276 482.3385 482.3385 395.3743 50.4359 284.8462 178.1479 174.2266 205.7978 471.1987 155.3823 464.2759 275.2201 119.9431 293.256 88.9441 266.6457 476.1071;
	3.1796 42.9637 89.9422 69.0004 14.8415 30.0925 14.0289 18.7117 27.475 27.5005 50.8343 75.8348 114.1688 63.1042 187.5707 70.6662 87.6784 92.9129 84.3095 69.415 4.6763 70.2159 69.2109 89.4186 104.4242 73.8153 13.5636 582.3415 538.3826 538.3826 423.671 29.8369 281.0316 178.6744 197.8403 229.7099 570.1366 107.7662 174.0871 279.7078 116.7074 333.8267 101.6066 267.3 576.0755;
	3.6943 49.9187 89.5586 65.6195 15.0525 31.0472 28.4907 18.9181 26.499 13.4819 24.9211 37.1774 55.9704 63.6915 181.7455 68.4716 84.9555 90.0274 69.8918 69.9189 9.4969 72.4436 43.1216 89.9717 104.498 75.1905 13.7429 670.0326 578.2732 578.2732 380.1488 30.2132 232.9728 179.9713 199.6815 246.7299 737.1763 72.3724 402.0299 279.9055 119.992 344.4174 117.2007 264.8642 744.8552;
	3.857 52.1163 87.0036 53.6923 14.9714 32.1115 27.2943 18.685 25.7786 22.0086 40.6825 60.6903 91.3689 60.7056 168.647 63.5368 78.8327 83.5391 49.8674 67.1991 9.0981 74.9269 42.7606 88.2338 102.3796 73.9377 13.6433 895.8637 640.0562 640.0562 433.3153 41.5398 166.2247 172.9707 190.3203 273.0906 978.4364 78.8523 422.4484 274.2311 116.8635 356.224 153.5943 239.022 988.6284;
	3.8511 52.0365 64.3808 42.0431 15.1811 32.669 3.791 18.7456 26.8697 28.3816 52.4629 78.2644 117.8266 64.3495 175.9264 66.2793 82.2354 87.145 41.9508 66.9104 1.2637 76.2277 65.6928 82.4845 103.3288 73.1827 13.5342 1119.927 568.6963 568.6963 517.7561 59.7144 139.8359 172.2275 201.7443 242.6437 1135.1985 125.8495 408.7688 276.7736 118.6119 362.4082 165.3709 233.8429 1147.0234;
	3.7713 50.959 63.2263 66.6596 14.9706 32.6953 29.8232 18.5354 16.6743 28.6081 52.8816 78.889 118.767 63.3271 190.5006 71.77 89.0479 94.3642 60.8674 71.7158 9.9411 76.289 69.3297 88.2656 101.4884 74.0495 13.6303 1244.9935 693.8803 693.8803 416.4235 66.5103 202.8913 184.5965 198.539 296.0556 1129.9725 180.0296 427.8505 271.8438 114.5726 362.6999 148.521 263.5287 1141.743;
	3.8319 51.777 49.6136 90.1165 14.1963 32.7123 3.0008 18.7646 27.3305 30.7035 56.755 84.6673 127.4662 65.7227 196.2362 73.9308 91.729 97.2054 64.2446 72.3609 1.0003 76.3287 70.8434 85.7918 104.6922 74.3333 13.8936 1242.3273 694.0563 694.0563 509.6927 87.5618 214.1485 186.2572 206.0494 296.1307 1214.2196 208.7732 439.4105 280.4257 119.2057 362.8885 148.4661 252.0271 1226.8678;
	3.8509 52.0346 62.8318 99.2785 14.8039 34.0555 30.5833 18.9577 28.0767 30.483 56.3474 84.0593 126.5508 64.8806 191.6624 72.2077 89.591 94.9397 54.0212 72.2459 10.1944 79.4627 68.3875 88.6452 105.4403 75.5509 13.9752 1255.4661 719.6122 719.6122 572.6374 106.887 180.0706 185.9611 203.4096 307.0345 1224.8226 236.0835 458.9549 282.4293 121.988 377.7886 157.1463 268.0363 1237.5812;
	3.7744 51.0009 89.5272 108.1111 14.6918 33.8234 29.8034 18.9696 27.8315 30.2034 55.8306 83.2883 125.39 65.6835 191.2169 72.0399 89.3828 94.7191 42.5471 71.8547 9.9345 78.9212 69.0778 88.2855 105.2521 72.9285 13.9154 1221.9996 714.087 714.087 588.3874 105.6968 141.8238 184.9541 205.9266 304.6771 1229.761 209.1191 449.9828 281.9253 120.7024 375.2138 167.6612 272.7574 1242.571;
];