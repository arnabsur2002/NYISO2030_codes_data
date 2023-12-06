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
	3.9051 52.7664 94.3058 117.4778 15.2254 33.7172 29.9725 18.8706 27.6095 29.6956 54.8918 81.8878 123.2816 67.7051 192.2166 72.4165 89.8501 95.2143 84.0035 71.2234 9.9908 78.6734 75.5429 86.7641 106.2407 73.8516 13.2384 1292.9744 804.4802 804.4802 580.4055 107.144 280.0118 183.3291 212.2646 343.2449 1300.869 232.3619 471.508 284.5733 119.7496 374.0358 204.9501 286.0794 1314.4197;
	3.9202 52.9698 94.6712 118.4839 15.285 33.321 27.0176 19.0298 27.5974 30.9989 57.301 85.4818 128.6924 67.0481 190.9586 71.9426 89.2621 94.5911 80.3868 72.0791 9.0059 77.749 75.837 88.1654 106.1112 72.8445 13.2261 1316.5657 828.0257 828.0257 683.8412 104.4546 267.9561 185.5318 210.205 353.2909 1308.2675 242.1846 470.2937 284.2264 120.8634 369.641 198.1515 281.4154 1321.8953;
	3.914 52.8862 94.5409 118.122 15.3696 34.4198 22.4221 19.0718 28.035 31.3143 57.884 86.3516 130.0018 67.0331 196.7055 74.1077 91.9484 97.4379 86.7569 72.7028 7.474 80.3128 75.8578 88.539 106.1394 75.7089 13.3846 1319.3978 819.0908 819.0908 694.9823 94.8732 289.1897 187.1372 210.1579 349.4787 1337.6142 236.6277 446.247 284.302 120.1653 381.8301 198.8884 273.4481 1351.5477;
	3.8706 52.3002 94.9966 119.0042 15.2771 34.0361 24.5998 18.9191 28.0964 31.2353 57.7381 86.1338 129.674 67.1936 199.0869 75.0048 93.0616 98.6175 90.9455 72.7162 8.1999 79.4177 75.7788 89.2938 106.4175 73.2352 13.0575 1341.7789 830.5119 830.5119 711.8091 88.8657 303.1517 187.1718 210.6609 354.3518 1364.709 263.6949 468.1115 285.0469 118.3709 377.5743 163.6578 281.2764 1378.9248;
	3.9007 52.7068 94.8308 117.761 15.3249 34.33 31.4256 18.7076 28.0158 31.3054 57.8675 86.327 129.9648 66.1723 200.2339 75.437 93.5977 99.1856 89.5621 73.7346 10.4752 80.1032 75.7311 87.6742 105.5845 75.0697 12.9591 1323.9985 833.9522 833.9522 726.5196 83.0609 298.5402 189.7931 207.459 355.8196 1332.9963 237.9484 479.798 282.8155 120.1056 380.8337 201.0479 275.7182 1346.8817;
	3.9144 52.8916 93.8792 117.5599 15.1258 35.0385 30.4405 18.5397 27.7118 31.031 57.3603 85.5703 128.8256 67.2303 201.6851 75.9837 94.276 99.9045 88.3286 73.51 10.1468 81.7565 74.6076 86.3198 102.8037 73.5463 12.9065 1325.6089 823.6231 823.6231 738.8551 99.505 294.4287 189.2148 210.776 351.4125 1283.2089 242.2385 475.6847 275.3671 114.9017 388.6935 195.2091 277.6225 1296.5757;
	3.8299 51.7503 90.6047 114.9736 14.6354 33.9298 31.2592 18.5105 27.3746 30.6186 56.598 84.433 127.1135 67.1727 196.7329 74.118 91.9612 97.4514 85.6934 72.8321 10.4197 79.1696 73.7467 84.5235 99.3023 73.4732 13.1541 1281.3619 808.9841 808.9841 717.8558 99.2448 285.6447 187.47 210.5955 345.1666 1287.1962 262.5014 473.1075 265.9884 113.165 376.3947 166.7743 267.8641 1300.6045;
	3.9059 52.7773 89.6828 118.3834 15.0332 34.6705 30.3987 18.4575 28.1483 30.8577 57.04 85.0924 128.1062 68.5565 196.3626 73.9785 91.7881 97.268 84.9242 70.703 10.1329 80.8978 75.4397 85.9817 99.387 73.1586 13.2851 1359.4778 824.1964 824.1964 722.0107 107.7387 283.0806 181.9897 214.9338 351.6571 1331.4542 264.588 468.2258 266.2152 114.9339 384.6113 188.4019 265.8422 1345.3235;
	3.8903 52.5666 92.3715 116.8823 14.7623 34.5782 31.5019 18.1929 27.5945 30.5815 56.5293 84.3307 126.9594 69.0147 198.1519 74.6526 92.6245 98.1543 87.6634 70.8301 10.5006 80.6824 75.2494 85.5793 101.1853 73.935 12.9281 1348.9164 822.9063 822.9063 782.9574 116.2461 292.2112 182.3168 216.3703 351.1067 1301.1159 297.1349 463.7923 271.0321 119.9256 383.5873 212.2255 273.4687 1314.6692;
	3.8117 51.5039 93.2265 117.535 14.9886 34.418 27.0936 18.0778 27.791 30.8627 57.0492 85.1062 128.1269 69.5436 196.8318 74.1552 92.0074 97.5004 87.032 70.5287 9.0312 80.3086 75.6703 86.5639 100.3396 74.4399 13.0367 1358.8191 815.9358 815.9358 771.8178 115.892 290.1068 181.5411 218.0285 348.1326 1287.2151 316.2603 470.1342 268.7668 118.8905 381.8102 217.7016 274.5584 1300.6236;
	3.7355 50.4746 90.0088 113.6536 14.5581 33.4849 27.6323 17.3334 27.9211 30.5132 56.4032 84.1425 126.6761 68.8851 196.8269 74.1534 92.0051 97.498 86.9722 71.3742 9.2108 78.1314 75.6997 84.896 97.5568 70.3355 12.8347 1352.0293 817.4455 817.4455 747.893 110.9738 289.9072 183.7175 215.964 348.7767 1294.5172 280.9986 453.7892 261.313 117.6601 371.4592 207.1152 269.5449 1308.0018;
	3.8087 51.4634 87.7704 113.5514 14.4992 33.9302 26.3467 17.6708 28.1725 29.7815 55.0506 82.1246 123.6382 68.5074 197.9476 74.5756 92.529 98.0531 86.5034 70.6741 8.7822 79.1704 75.4386 86.057 99.3831 68.5825 13.2742 1359.7572 809.609 809.609 776.6026 116.9979 288.3448 181.9154 214.7799 345.4332 1285.9283 302.7758 465.2982 266.2046 120.6759 376.3989 206.4431 262.4126 1299.3234;
	3.8989 52.6827 91.2302 116.1884 14.7553 33.6598 27.0641 18.0399 28.2146 30.8901 57.0999 85.1818 128.2407 69.5326 197.5151 74.4127 92.3268 97.8389 88.8545 69.6594 9.0214 78.5394 75.7354 85.2821 102.4429 72.1869 13.6061 1351.8405 826.5964 826.5964 802.6152 115.3758 296.1815 179.3035 217.9941 352.6811 1320.8108 326.1787 468.2968 274.4007 121.5715 373.3989 205.3403 269.768 1334.5693;
	3.8981 52.6726 92.0416 114.8121 14.6055 33.4885 24.712 17.7444 26.5181 29.5106 54.5499 81.3777 122.5138 68.1997 187.9802 70.8205 87.8698 93.1158 84.9741 71.0517 8.2373 78.1399 74.6844 86.4159 100.8306 70.7904 13.4492 1328.774 772.2578 772.2578 747.3326 116.1121 283.2468 182.8874 213.8154 329.4967 1253.9526 297.7924 444.4184 270.0819 122.3722 371.4993 203.5243 272.508 1267.0146;
	3.9083 52.8103 94.3095 115.6342 14.2847 34.8071 21.0831 18.5769 25.979 28.2697 52.2561 77.9558 117.3621 66.8933 184.9557 69.681 86.456 91.6176 85.1692 67.876 7.0277 81.2165 73.7691 88.2557 102.0322 72.769 13.7105 1291.987 756.1412 756.1412 754.1565 114.4388 283.8974 174.713 209.7194 322.6202 1215.8807 298.6181 443.418 273.3005 123.1185 386.1264 209.3247 273.001 1228.5461;
	3.9107 52.8428 92.422 113.8859 14.6515 34.5223 24.2565 18.7966 25.7392 28.7804 53.2002 79.3643 119.4825 65.5437 178.2476 67.1537 83.3204 88.2947 84.0428 69.8542 8.0855 80.5521 73.9007 87.3878 100.8689 72.2995 13.7373 1279.4014 758.2691 758.2691 741.5062 111.3165 280.1427 179.8049 205.4884 323.5281 1141.6756 282.5922 457.9651 270.1846 123.4851 382.9675 204.9245 274.3627 1153.568;
	3.8357 51.8284 88.5552 103.7816 14.4222 32.3598 21.7937 18.3548 26.0571 28.5273 52.7323 78.6662 118.4316 65.6233 185.2693 69.7991 86.6026 91.773 81.7361 67.4028 7.2646 75.5062 73.9328 86.1149 99.9407 59.8937 13.2853 1211.7871 735.4513 735.4513 678.8967 101.7369 272.4535 173.495 205.7378 313.7926 1108.3655 282.4191 455.5473 267.6983 121.8868 358.9783 191.0398 248.277 1119.911;
	3.729 50.3867 86.0895 95.5593 14.5272 29.3062 17.5871 12.8597 25.2548 28.1348 52.0067 77.5837 116.8019 65.0945 176.2118 66.3868 82.3688 87.2863 71.8258 63.6467 5.8624 68.3812 72.6636 84.8754 98.2803 68.8864 10.1776 1179.357 682.5925 682.5925 607.3022 99.6341 239.4194 163.8267 204.08 291.2395 1156.1741 260.6155 445.3855 263.2509 119.7303 325.1038 167.6555 226.1993 1168.2176;
	3.6122 48.8089 71.3739 87.385 14.9311 23.7322 14.7207 7.6726 25.6594 28.7649 53.1715 79.3215 119.418 65.0234 169.8382 63.9856 79.3895 84.1292 75.67 63.009 4.9069 55.3751 69.6348 84.8519 88.9 55.7048 9.1678 1220.662 679.7844 679.7844 605.5883 96.0488 252.2334 162.1854 203.8571 290.0414 1197.3469 268.3923 443.2009 238.1249 120.4289 263.2693 126.6567 191.6149 1209.8192;
	2.7906 37.7066 57.8103 44.4105 15.0141 19.9641 22.9686 7.548 24.3546 28.4443 52.5788 78.4372 118.0868 63.6719 168.3142 63.4114 78.6771 83.3742 70.2658 61.4327 7.6562 46.583 68.5751 82.5128 77.9746 41.2883 7.7399 1202.3327 721.4911 721.4911 686.3161 98.4014 234.2194 158.128 199.6201 307.8362 1174.7147 267.9943 426.8619 208.8606 113.7056 221.4688 102.1583 182.5223 1186.9513;
	2.4919 33.6712 64.6126 64.3215 14.6338 12.5464 23.1356 8.4088 25.7887 29.1543 53.8913 80.3952 121.0345 63.9587 181.8854 68.5243 85.0208 90.0967 74.9313 67.9149 7.7119 29.2749 70.696 82.0196 70.2537 47.2603 8.7248 1173.3104 740.9216 740.9216 676.259 93.9853 249.771 174.813 200.5193 316.1266 1185.7723 256.9149 449.1511 188.1794 112.1818 139.1811 75.9049 181.4609 1198.1241;
	2.0473 27.663 69.0721 67.2362 14.5568 14.7655 24.0805 9.607 25.9166 28.8336 53.2984 79.5108 119.703 63.1225 184.8472 69.6401 86.4053 91.5638 77.0366 66.732 8.0268 34.4529 71.7544 82.4755 85.1161 62.5665 8.6597 1134.8127 712.7744 712.7744 701.5287 94.6606 256.7887 171.7683 197.8975 304.1171 1119.3607 246.7714 448.0358 227.9896 112.7498 163.799 59.8955 186.8745 1131.0207;
	2.6291 35.5243 75.4884 80.9458 14.1011 16.6063 21.2259 14.1687 25.871 27.9599 51.6835 77.1015 116.0759 63.1505 167.7255 63.1896 78.4019 83.0826 76.3131 65.6249 7.0753 38.748 69.0893 86.3987 91.8625 67.434 9.9136 1013.4106 753.1597 753.1597 744.157 96.2761 254.377 168.9188 197.9855 321.3482 1111.6717 263.8859 435.1469 246.0601 114.3068 184.2192 74.7342 216.3921 1123.2516;
	2.9757 40.2087 84.3156 80.7794 14.4544 20.5583 19.2273 11.6543 27.1893 27.9959 51.75 77.2008 116.2254 65.7438 160.8719 60.6075 75.1982 79.6877 62.3959 66.2786 6.4091 47.9693 69.7828 88.8473 89.142 67.0515 7.5071 891.9501 684.9566 684.9566 633.5519 95.0041 207.9862 170.6012 206.1158 292.2482 910.7064 245.1608 450.9567 238.7732 117.6512 228.0596 89.6904 232.3764 920.193;
];
