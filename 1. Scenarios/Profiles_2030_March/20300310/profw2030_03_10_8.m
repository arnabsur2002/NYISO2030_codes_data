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
	3.798 51.3197 82.2032 107.7602 15.1331 33.9657 30.2885 6.1406 26.7404 10.8838 20.1185 30.0129 45.1842 41.0289 197.7977 74.5191 92.4589 97.9789 86.2988 73.1655 10.0962 79.2532 2.2068 37.776 40.2726 23.7139 4.7825 1231.1991 769.6839 769.6839 600.4497 69.1227 287.6627 188.3281 128.6311 328.3985 1197.01 183.0673 453.6764 107.8731 114.5077 376.7924 201.998 100.3227 1209.4788;
	3.2336 43.6928 76.1511 34.7206 15.3251 27.8904 30.7665 6.4243 9.2704 11.0887 20.4974 30.578 46.0351 42.6493 196.9292 74.1919 92.0529 97.5486 91.1317 71.9944 10.2555 65.0775 0.0 36.6562 34.5085 27.4866 5.1595 1264.9147 795.3088 795.3088 706.3448 67.5023 303.7724 185.3137 133.7112 339.3318 1274.7733 190.3689 470.2755 92.4334 115.7555 309.397 201.8322 79.5771 1288.0522;
	2.7904 37.704 87.1904 42.7191 14.6803 22.4374 30.7468 5.6598 6.8331 9.2665 17.129 25.5532 38.4701 39.8562 190.3078 71.6974 88.9578 94.2688 89.0507 63.6498 10.2489 52.3539 0.0 37.6765 34.5074 26.8099 5.8028 1218.116 788.4856 788.4856 711.1132 80.5949 296.8356 163.8348 124.9546 336.4205 1236.4727 191.39 463.1053 92.4306 29.3125 248.9053 195.6799 108.4935 1249.3526;
	3.5185 47.5428 86.1685 48.1631 14.8064 14.2566 30.9767 6.9886 10.5372 12.6779 23.4348 34.9602 52.6324 28.5326 197.5616 74.4302 92.3486 97.8619 89.0087 64.3111 10.3256 33.2654 26.3191 37.5091 35.6705 30.2999 5.505 1251.5381 795.3652 795.3652 744.8142 85.9983 296.6956 165.537 89.4535 339.3558 1254.3924 225.1158 471.4998 95.546 28.759 158.1534 202.9233 104.2415 1267.4589;
	3.8358 51.8295 82.6384 39.5241 15.1515 22.823 31.3787 6.5555 11.5667 11.544 21.3389 31.8335 47.9251 31.1789 178.9532 67.4196 83.6502 88.6442 88.7488 64.0197 10.4596 53.2536 16.3665 24.3439 35.4781 58.6273 5.3299 1240.5172 814.2285 814.2285 773.8961 88.8492 295.8294 164.787 97.7501 347.4042 1267.3007 227.2118 468.4164 95.0307 17.3917 253.1829 206.3666 181.673 1280.5018;
	3.7899 51.2105 91.1007 106.4871 15.0184 33.4213 31.2761 6.0881 11.3111 11.8889 21.9765 32.7846 49.357 23.845 189.4195 71.3627 88.5426 93.8287 91.1675 61.7922 10.4254 77.9831 11.4939 17.8368 44.7006 64.5707 4.7589 1193.0081 794.6758 794.6758 755.3046 101.7969 303.8918 159.0534 74.7572 339.0617 1226.934 230.5614 453.0245 119.7337 25.7025 370.7538 202.7474 232.145 1239.7146;
	3.8457 51.9634 89.5388 102.4746 14.8895 33.9856 30.7664 8.6917 8.1785 10.984 20.3037 30.2892 45.6002 12.8366 194.0241 73.0974 90.695 96.1096 85.614 67.6186 10.2555 79.2997 23.6607 33.192 95.7547 73.416 10.6133 1137.4518 797.8975 797.8975 738.4802 109.6383 285.38 174.0504 40.2443 340.4363 1280.2211 283.4893 436.8318 256.4859 95.4146 377.0132 198.6463 270.7161 1293.5568;
	3.7229 50.3047 86.9129 97.7856 14.5058 34.5898 30.6686 17.8709 9.6999 10.4563 19.3283 28.8341 43.4095 54.3693 185.2198 69.7805 86.5795 91.7484 81.7805 50.1253 10.2229 80.7096 25.7845 44.6843 101.1858 72.0001 13.3282 1067.3391 800.4919 800.4919 734.9066 110.9436 272.6015 129.0228 170.455 341.5432 1269.2255 312.487 441.5554 271.0334 114.9681 383.7167 204.878 264.1491 1282.4466;
	3.8011 51.3608 89.5432 111.1304 14.6366 34.4008 30.0775 17.3712 7.8408 11.6646 21.5618 32.1659 48.4257 65.1233 191.17 72.0222 89.3608 94.6958 52.4587 61.8533 10.0258 80.2685 25.8381 84.383 100.8179 70.7153 13.0725 776.2533 826.7781 826.7781 765.6846 111.3413 174.8622 159.2106 204.1704 352.7587 1243.0753 327.659 443.8021 270.048 116.0296 381.6195 210.5823 258.6151 1256.024;
	3.9013 52.7149 88.5651 110.9974 14.8709 35.043 30.7899 17.5215 18.6666 10.8185 19.9979 29.8329 44.9132 62.9492 186.5101 70.2666 87.1826 92.3875 55.1949 59.3649 10.2633 81.7669 24.146 86.2706 99.7272 67.9814 12.8986 612.0515 811.111 811.111 775.1714 110.6678 183.9831 152.8055 197.3542 346.074 1149.0376 288.15 444.499 267.1264 112.4164 388.7431 216.094 265.1182 1161.0067;
	3.9093 52.823 88.6073 110.4578 14.9258 34.9036 30.4833 17.3343 25.9638 16.9144 31.2661 46.6428 70.2205 68.2119 201.7318 76.0013 94.2979 99.9276 42.0066 69.8059 10.1611 81.4416 28.7816 82.2667 98.4881 68.473 12.987 464.4551 794.6471 794.6471 748.614 106.268 140.0218 179.6806 213.8535 339.0494 952.9561 289.8035 431.929 263.8073 115.4294 387.1968 210.074 265.2948 962.8828;
	3.4733 46.9316 90.7932 115.0407 15.2681 34.4551 30.4159 18.1644 27.7556 20.5782 38.0386 56.746 85.4309 69.1845 199.9745 75.3392 93.4765 99.0571 56.3958 63.7376 10.1386 80.3953 38.0091 84.0918 102.1451 72.1727 13.0681 313.8115 792.1033 792.1033 749.0689 108.0211 187.9862 164.0607 216.9027 337.9641 793.8261 279.1629 455.8026 273.6029 119.3921 382.2221 206.7547 268.8461 802.0951;
	2.3846 32.2213 92.5182 117.1486 15.1994 24.1872 26.4305 18.3891 27.6985 29.6061 54.7265 81.6412 122.9103 67.8755 199.4965 75.1591 93.253 98.8204 92.9228 68.1376 8.8102 56.4367 66.2005 85.6147 101.6964 72.0552 13.6976 320.108 727.6397 727.6397 652.7471 105.98 309.7425 175.3864 212.7989 310.4596 683.1462 242.6877 453.3474 272.4012 119.2816 268.3161 183.0398 273.9438 690.2623;
	2.4914 33.6648 93.0544 115.9757 15.2927 14.2118 26.6343 18.194 28.1998 31.2813 57.8231 86.2606 129.8649 67.703 202.5719 76.3178 94.6906 100.3437 92.8574 72.7287 8.8781 33.1609 74.9715 86.9141 100.7016 71.9567 13.6166 313.8686 642.5353 642.5353 613.7404 102.3346 309.5247 187.2038 212.258 274.1484 499.9218 214.0902 469.0241 269.7365 120.86 157.6563 147.4873 262.7585 505.1293;
	2.3176 31.3159 90.9509 111.8308 13.1437 10.0279 21.9309 17.9149 27.7655 29.8059 55.0957 82.192 123.7396 67.078 200.0461 75.3662 93.5099 99.0926 91.7011 71.3856 7.3103 23.3984 72.9713 86.4612 100.5152 71.8331 13.5692 480.7761 511.4411 511.4411 449.9967 97.2523 305.6702 183.7467 210.2985 218.2149 445.3955 198.736 454.1029 269.2371 119.0712 111.2425 117.348 248.7818 450.0351;
	3.6274 49.0147 93.6098 88.5856 15.0114 28.2455 16.5133 18.6408 23.9997 29.5861 54.6895 81.586 122.8272 63.856 201.4656 75.901 94.1734 99.7957 92.8281 72.5847 5.5044 65.9062 72.062 87.2847 102.9187 72.5468 13.8302 524.9395 546.4517 546.4517 424.3087 52.7674 309.4269 186.8331 200.1972 233.1527 510.2042 169.0443 461.9191 275.6751 121.8541 313.337 90.6099 266.5399 515.5188;
	3.5076 47.3953 93.9879 68.4856 15.2751 32.6395 15.6331 18.8001 28.0566 28.2263 52.1759 77.8361 117.1819 67.0703 190.4182 71.739 89.0094 94.3234 90.7433 70.551 5.211 76.1589 72.9733 87.6974 104.8477 74.2114 13.8183 604.6718 606.4877 606.4877 444.9904 31.5743 302.4777 181.5984 210.2746 258.7681 620.4008 127.4553 202.2707 280.842 117.9084 362.0812 115.6424 268.8031 626.8633;
	3.7934 51.2573 92.2865 65.1776 15.2527 33.004 29.747 18.7896 27.1943 12.5529 23.2039 34.6157 52.1137 62.6768 186.8586 70.3979 87.3455 92.5602 79.969 72.5234 9.9157 77.0094 48.5009 86.2357 103.4185 72.9737 13.6786 714.7384 638.0263 638.0263 409.8778 30.8379 266.5632 186.6754 196.5001 272.2246 799.4065 88.8575 427.9607 277.0139 116.7324 366.1246 125.974 258.3351 807.7337;
	3.7373 50.4994 89.8547 53.6533 14.9653 32.8939 30.2172 18.1835 26.7253 22.1498 40.9436 61.0798 91.9554 62.8246 162.5154 61.2267 75.9665 80.5018 62.7611 70.292 10.0724 76.7525 49.7189 80.2433 101.4403 71.3211 13.3919 1082.5573 667.8115 667.8115 452.1606 45.1092 209.2038 180.9319 196.9637 284.9329 1013.0764 96.1405 451.9251 271.715 114.3332 364.9031 153.4848 228.8491 1023.6292;
	3.6573 49.4179 67.8158 39.4702 14.8494 31.5947 25.4754 18.5043 26.7257 27.9353 51.638 77.0337 115.9738 63.0928 173.1897 65.2482 80.9561 85.7893 49.8813 71.9984 8.4918 73.721 64.9631 77.0369 103.3196 72.0166 13.4762 1188.4934 585.0412 585.0412 529.1663 59.9936 166.2709 185.324 197.8044 249.6176 1129.0956 131.142 445.5081 276.7488 118.3831 350.4908 155.7404 224.8218 1140.857;
	3.768 50.9143 68.1951 68.4074 15.0161 32.6842 31.1494 18.5507 3.9681 27.0329 49.9698 74.5451 112.2273 65.1195 191.3468 72.0888 89.4435 94.7834 67.7712 73.7967 10.3831 76.263 68.6711 87.8303 105.4896 74.7598 13.6402 1248.6933 682.5862 682.5862 425.9046 65.72 225.9039 189.9528 204.1585 291.2368 1108.6007 186.8026 455.6852 282.5614 116.5144 362.5762 145.6919 261.4964 1120.1487;
	3.7147 50.1938 49.5852 86.9511 14.5395 32.6408 6.4025 18.2734 26.3159 29.1907 53.9586 80.4956 121.1857 63.6932 189.4736 71.3831 88.5679 93.8555 57.5675 71.8404 2.1342 76.1619 69.4658 85.8561 103.4227 74.5775 13.6605 1257.4043 673.4304 673.4304 509.4528 86.0925 191.8917 184.9174 199.6866 287.3303 1184.6897 205.1647 457.1015 277.0251 116.2346 362.0954 150.6012 238.2368 1197.0302;
	3.6284 49.0277 57.6272 95.622 14.4167 32.5623 30.1516 17.7994 26.167 28.5695 52.8103 78.7826 118.6067 64.6674 183.7451 69.2249 85.8901 91.0179 51.6579 71.1799 10.0505 75.9786 65.1385 85.5635 101.1015 74.6704 13.4641 1276.286 691.3528 691.3528 532.9452 105.2076 172.1931 183.2172 202.7409 294.9772 1163.207 227.217 446.0259 270.8075 117.2118 361.2239 155.6598 252.5216 1175.3237;
	3.6187 48.8972 86.9159 103.1675 14.5583 32.0472 29.7416 18.0119 26.3805 28.3657 52.4335 78.2205 117.7606 66.84 185.8582 70.021 86.8779 92.0646 40.626 71.3363 9.9139 74.7769 65.2429 86.0321 100.6092 72.729 13.2703 1224.6233 647.0359 647.0359 596.9841 109.3684 135.4198 183.6199 209.5524 276.0686 1121.3173 217.8296 454.3428 269.4889 117.5601 355.5107 158.6355 268.8681 1132.9977;
];