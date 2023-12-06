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
	3.8328 51.7889 93.8057 118.5065 15.1381 15.6413 16.2241 18.4032 27.8319 24.5157 45.3169 67.604 101.7774 7.418 27.3655 10.3098 12.7918 13.5555 14.7887 30.5562 5.408 36.4963 62.1248 84.0435 101.4472 74.7327 8.3216 709.4834 404.2739 404.2739 221.4472 38.049 49.2958 78.6517 23.2564 172.4902 515.3554 54.1284 320.1795 271.7335 17.2549 173.5139 131.527 238.6257 520.7237;
	3.7296 50.395 93.9207 114.9068 15.0372 17.8203 15.1242 18.1528 27.243 24.6792 45.619 68.0546 102.4559 7.6655 12.9828 4.8912 6.0687 6.431 12.9846 16.3833 5.0414 41.5807 63.8709 84.7878 100.8855 75.0225 7.7956 688.3566 376.365 376.365 175.2399 31.1829 43.2821 42.1707 24.0324 160.5824 487.6474 49.4261 300.303 270.2291 14.1376 197.6863 121.5089 240.2115 492.7271;
	3.5145 47.4891 94.5392 115.4834 14.9005 14.6575 13.7265 18.1472 27.9795 24.577 45.4303 67.7731 102.032 9.076 14.5864 5.4953 6.8183 7.2253 24.6815 22.6842 4.5755 34.2008 64.88 85.0646 100.9858 73.5483 8.6096 623.852 351.4579 351.4579 161.8755 32.736 82.2717 58.3893 28.4546 149.9554 407.7695 37.5076 245.2828 270.4976 6.2906 162.6006 94.1515 231.9744 412.0171;
	3.2509 43.9274 94.5232 112.5554 14.9408 13.9347 12.4035 18.2813 26.9673 24.8823 45.9946 68.6149 103.2994 12.3325 13.4478 5.0664 6.2861 6.6613 13.6741 23.1912 4.1345 32.5143 68.6936 88.4685 105.0626 75.9923 10.5668 545.9374 271.2397 271.2397 163.7319 28.0101 45.5803 59.6942 38.664 115.729 307.8919 30.7943 186.3334 281.4176 11.768 154.5822 87.1766 232.7083 311.0991;
	2.619 35.3881 94.622 116.3672 14.6654 14.6494 9.9291 18.6902 17.3266 22.6521 41.8721 62.4649 94.0406 16.4154 18.8293 7.0938 8.8016 9.3271 22.5005 26.7972 3.3097 34.1818 55.7539 89.6702 106.0226 76.2828 10.6355 387.8334 209.2967 209.2967 137.6815 25.3743 75.0018 68.976 51.4646 89.2999 181.2759 28.3605 169.4987 283.989 10.8633 162.5102 82.9775 233.5104 183.1642;
	3.3381 45.1048 94.1499 117.0079 14.7642 23.7967 10.8474 18.4762 9.639 20.7688 38.3909 57.2716 86.2221 28.743 18.5696 6.996 8.6802 9.1984 34.2781 31.4741 3.6158 55.5256 59.9076 89.1485 104.1527 75.9843 8.5924 338.5925 188.1321 188.1321 127.3037 24.2488 114.2602 81.0144 90.1132 80.2697 150.8374 24.1509 173.7369 278.9805 11.0539 263.9845 90.9419 232.8663 152.4086;
	2.6566 35.8965 91.9486 116.1624 14.1685 23.2962 11.1532 17.0959 11.1117 27.1485 50.1835 74.8639 112.7072 40.0692 26.0264 9.8053 12.1658 12.8921 35.5778 39.9723 3.7177 54.3577 68.0617 87.5259 103.6775 74.2901 11.1603 255.2125 203.051 203.051 91.8446 14.1701 118.5927 102.8888 125.6224 86.6351 161.6708 16.4947 143.0524 277.7075 8.251 258.432 96.2868 229.6453 163.3548;
	1.8283 24.7047 73.2999 113.4078 13.8992 18.2277 11.4656 16.8884 17.3855 28.8507 53.33 79.5579 119.774 36.991 26.5224 9.9921 12.3977 13.1378 47.6535 59.0435 3.8219 42.5312 72.5141 87.439 101.3093 72.1512 12.4375 121.5421 151.2576 151.2576 57.7319 6.5293 158.8451 151.9781 115.9718 64.5366 81.5679 14.5516 152.4438 271.3642 3.7246 202.2056 90.6762 210.2186 82.4175;
	2.9053 39.2572 86.9873 104.4613 13.766 24.6737 11.5882 17.5532 20.9748 28.7325 53.1116 79.2321 119.2835 42.4472 20.9843 7.9057 9.809 10.3946 61.0807 57.8177 3.8627 57.5719 71.4553 84.1264 97.9435 73.3174 12.2058 135.9925 143.8262 143.8262 55.8024 5.7862 203.6024 148.823 133.0778 61.3658 111.7077 15.8451 138.5809 262.3485 16.396 273.7133 82.7828 233.2454 112.8713;
	2.0183 27.2716 85.663 103.1455 12.5099 14.4431 9.9404 16.576 25.3986 29.7641 55.0186 82.0769 123.5663 36.8386 58.4846 22.0337 27.3382 28.9703 72.617 51.3367 3.3135 33.7006 72.107 79.8462 94.795 72.0392 11.7386 239.7885 231.4898 231.4898 84.3195 8.0815 242.0566 132.1408 115.4941 98.769 209.7956 21.5114 26.5231 253.9152 0.9026 160.2223 79.1444 208.5489 211.981;
	1.7407 23.5206 80.2549 99.9742 12.4765 27.3756 13.5366 16.8263 26.1209 30.1013 55.6419 83.0067 124.9662 46.5565 40.4073 15.2232 18.888 20.0157 68.3045 36.6444 4.5122 63.8765 71.4937 82.0096 91.8671 70.8666 11.5664 356.3902 300.3393 300.3393 158.4573 12.6397 227.6816 94.3228 145.961 128.1448 322.8397 27.4481 155.7308 246.0725 17.2232 303.687 95.9431 182.715 326.2026;
	1.69 22.8361 82.7742 79.0861 11.7495 30.9797 19.1265 17.4185 26.4567 29.4816 54.4962 81.2976 122.3931 50.4077 36.0144 13.5682 16.8346 17.8397 84.2481 49.9233 6.3755 72.286 73.6076 77.4932 91.5533 70.668 12.1241 463.2862 361.0877 361.0877 265.7589 18.5353 280.8269 128.5027 158.0351 154.0641 423.2642 44.7956 191.3295 245.2321 0.876 343.6683 105.7971 179.3499 427.6732;
	2.9028 39.2239 85.4237 77.3741 13.8353 31.7551 18.4862 16.3068 26.0183 29.053 53.704 80.1158 120.6139 55.8726 44.9238 16.9248 20.9993 22.2529 86.5061 61.2941 6.1621 74.0952 73.8676 77.3778 95.079 69.3867 9.9155 565.072 444.3302 444.3302 292.6911 22.5005 288.3537 157.7713 175.1682 189.5809 555.1548 56.922 192.8924 254.676 2.7877 352.2699 136.3376 216.6025 560.9376;
	3.4146 46.1389 80.883 90.3356 13.9306 30.5278 19.1146 16.1532 25.5129 29.3868 54.321 81.0363 121.9997 53.6755 66.3547 24.9988 31.017 32.8687 89.3529 60.6996 6.3715 71.2316 68.3722 77.552 91.4056 70.0914 9.9533 730.9511 546.0924 546.0924 362.693 28.5374 297.8429 156.241 168.2798 232.9994 647.9209 70.8049 242.3535 244.8363 4.0563 338.6552 125.186 244.9279 654.6701;
	3.5617 48.1264 79.2034 90.8797 13.8154 32.5254 25.0522 13.7211 25.8555 25.9267 47.9251 71.4948 107.6351 60.6885 100.1835 37.7435 46.83 49.6258 89.0865 62.9516 8.3507 75.8926 45.3599 67.8633 83.2212 61.0045 10.1948 901.9189 583.2559 583.2559 436.7974 36.4573 296.955 162.0376 190.2666 248.8558 827.5866 102.7449 398.9165 222.9139 0.022 360.8153 146.1963 240.4333 836.2073;
	3.5475 47.9342 86.0526 88.5603 13.9354 31.8606 27.1351 14.1374 26.4092 21.542 39.82 59.4036 89.4318 62.2646 140.896 53.0818 65.8607 69.7927 90.0437 69.9143 9.045 74.3414 45.1809 69.9216 88.0847 63.2314 10.2892 1051.9641 666.8216 666.8216 600.1768 46.9829 300.1456 179.9595 195.208 284.5106 924.8831 145.2864 365.3515 235.9412 2.5009 353.4404 147.3208 245.9613 934.5173;
	3.561 48.1164 86.7295 80.4985 13.9431 32.0975 30.9713 14.257 27.4279 19.9528 36.8824 55.0213 82.8343 63.0222 171.3416 64.5519 80.0922 84.8738 84.6966 70.2675 10.3238 74.8941 28.9951 80.6297 96.3866 70.8263 11.5547 1079.9585 712.9894 712.9894 647.3202 79.1461 282.322 180.8688 197.5831 304.2088 983.095 195.4521 415.188 258.1785 0.4691 356.0681 194.9893 260.7607 993.3356;
	3.6602 49.458 88.5605 104.3834 14.0387 32.2875 29.2314 14.7856 26.7333 17.8483 32.9923 49.218 74.0974 61.7133 176.2629 66.406 82.3927 87.3116 84.3442 72.1648 9.7438 75.3375 29.3759 82.3545 95.4683 70.3243 12.5062 1200.228 737.8675 737.8675 673.9099 96.2498 281.1473 185.7523 193.4797 314.8235 1041.1658 221.9125 417.7146 255.7186 100.0875 358.1759 185.6872 238.6447 1052.0112;
	3.7282 50.3763 86.7772 110.4201 14.4767 32.5095 30.3083 9.0241 26.7518 19.9238 36.8288 54.9414 82.714 65.2517 184.6469 69.5646 86.3117 91.4646 84.9941 72.872 10.1028 75.8555 39.9814 81.8988 99.5784 60.8568 12.6848 1227.6069 751.2202 751.2202 629.9867 111.2136 283.3138 187.5726 204.573 320.5206 1080.2981 227.5007 434.9039 266.7278 112.2309 360.6386 206.5062 237.9955 1091.5512;
	3.7533 50.715 88.2932 95.4815 14.709 32.6459 30.2861 1.048 27.0358 20.7628 38.3797 57.2549 86.197 64.3357 199.7252 75.2453 93.3599 98.9336 86.2519 73.4342 10.0954 76.1737 46.9023 2.2164 31.3018 57.0857 10.0858 1151.507 746.3674 746.3674 605.1028 103.3452 287.5064 189.0198 201.7013 318.4501 1043.5842 215.9997 448.9513 83.8442 116.9647 362.1516 201.1064 177.2053 1054.4549;
	3.8322 51.7809 89.8375 102.6103 14.5332 32.3515 31.406 16.4782 18.0826 21.3606 39.4847 58.9035 88.6789 60.1799 195.5336 73.6661 91.4006 96.8573 85.9677 71.4905 10.4687 75.4869 39.8069 61.381 93.8754 68.4961 13.4733 1191.352 760.1832 760.1832 656.4609 106.1447 286.559 184.0168 188.6721 324.3448 1046.1451 223.3535 460.2743 251.4519 116.0178 358.8864 201.6348 246.2897 1057.0425;
	3.7724 50.9741 86.8644 114.749 14.4788 32.5593 32.0097 14.4565 10.2094 23.4508 43.3485 64.6674 97.3564 61.303 196.2049 73.9191 91.7144 97.1899 89.0461 72.5249 10.6699 75.9718 47.8225 83.6204 98.3924 70.7971 12.6247 1226.0425 769.5165 769.5165 696.7955 113.6212 296.8203 186.6793 192.1933 328.327 1128.7952 232.4118 471.5261 263.5511 117.5405 361.1916 204.8898 176.3747 1140.5535;
	3.7617 50.829 91.015 114.2017 14.5695 32.6658 31.5428 14.6481 19.1263 19.7692 36.543 54.515 82.072 59.9187 186.8954 70.4117 87.3627 92.5784 85.6004 66.8491 10.5143 76.2203 34.5657 83.5636 81.8479 72.5706 12.8604 1202.1669 769.3921 769.3921 686.0723 111.6934 285.3348 172.0698 187.8531 328.274 1131.8083 241.5372 456.4982 219.2354 117.9089 362.3731 203.0364 231.4398 1143.5979;
	3.8237 51.666 93.3678 118.485 14.4122 34.2023 33.664 17.7608 10.5965 18.8819 34.9029 52.0682 78.3884 64.2239 190.2867 71.6894 88.9479 94.2583 85.3611 67.7173 11.2213 79.8054 46.9574 86.615 105.1262 73.4249 13.3547 1240.9861 806.3281 806.3281 718.7445 110.4504 284.5369 174.3044 201.3506 344.0333 1178.5825 254.4592 466.1492 281.5881 120.981 379.4177 210.5355 257.3656 1190.8594;
];
