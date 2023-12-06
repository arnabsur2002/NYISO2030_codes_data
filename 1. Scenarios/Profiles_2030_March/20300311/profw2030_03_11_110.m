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
	3.8013 51.3637 92.3229 113.0286 15.087 32.9534 26.5631 18.6362 25.7851 29.7734 55.0357 82.1024 123.6047 65.0732 189.6697 71.457 88.6596 93.9527 27.5715 69.2554 8.8544 76.8912 69.9091 88.7201 105.3732 76.1709 13.9013 1195.6058 642.4 642.4 565.3953 102.5739 91.9049 178.2636 204.0133 274.0907 1151.5569 220.0436 452.4548 282.2496 123.6804 365.5629 135.3976 271.9675 1163.5523;
	3.7801 51.0769 92.5099 117.45 15.0767 32.605 28.4054 18.5145 26.1538 30.2442 55.906 83.4008 125.5594 65.2419 186.6857 70.3327 87.2647 92.4745 25.8019 70.4029 9.4685 76.0782 69.024 88.3387 103.2082 73.5739 13.5194 1247.2882 640.339 640.339 565.1835 102.2303 86.0063 181.2173 204.5423 273.2113 1182.2489 223.7094 449.6718 276.4504 123.2952 361.6977 126.31 267.5434 1194.564;
	3.8397 51.8831 91.6219 62.9626 14.758 33.7874 29.0171 18.5845 26.7323 30.2144 55.8509 83.3186 125.4356 67.3021 191.98 72.3273 89.7395 95.0971 30.073 69.6113 9.6724 78.8372 69.2504 88.3093 104.6541 73.4627 13.6618 1255.5286 632.8865 632.8865 557.4479 102.5007 100.2434 179.1798 211.0012 270.0316 1199.6909 228.7332 458.4071 280.3236 123.1989 374.8145 125.1063 262.2623 1212.1877;
	3.8788 52.4106 91.4236 79.5249 15.0083 33.8122 27.2539 18.586 27.0585 30.9888 57.2823 85.454 128.6505 66.7529 200.7564 75.6338 93.8419 99.4445 43.5613 71.8643 9.0846 78.8951 68.0136 87.8692 103.0685 74.3882 13.59 1253.4569 690.1275 690.1275 533.1541 86.0902 145.2043 184.9789 209.2794 294.4544 1138.8993 237.5904 455.968 276.0762 122.6426 375.0899 165.7498 264.0664 1150.7628;
	3.6904 49.8657 94.4625 118.9122 15.2009 33.6698 22.8705 18.8674 27.0547 30.9077 57.1324 85.2303 128.3137 67.7905 189.124 71.2514 88.4045 93.6824 66.7885 69.1956 7.6235 78.5628 62.3635 89.2648 104.6035 74.2762 13.5544 1241.3604 656.6962 656.6962 518.3987 85.1821 222.6283 178.1095 212.5323 280.1904 1189.0056 226.0416 462.7061 280.188 122.0626 373.5099 182.312 270.3465 1201.3911;
	3.7806 51.0845 93.8064 118.7723 14.8958 33.5737 25.0192 18.686 26.2854 29.9854 55.4276 82.687 124.4848 67.0303 194.4962 73.2753 90.9157 96.3435 84.2597 70.339 8.3397 78.3387 68.684 88.8479 105.0332 73.7822 13.5673 1285.3037 696.3175 696.3175 493.7138 90.0953 280.8655 181.0527 210.149 297.0955 1129.3075 213.3518 436.2565 281.3388 118.3412 372.4447 188.645 268.8118 1141.0711;
	3.9214 52.9868 94.993 120.6275 15.2931 33.6542 27.9064 18.9485 26.9423 30.4472 56.2812 83.9604 126.402 68.821 191.2676 72.0589 89.4065 94.7442 85.2986 68.7466 9.3021 78.5266 72.162 89.7451 105.7607 76.4107 13.55 1310.6114 739.4801 739.4801 535.2435 82.7773 284.3287 176.9538 215.763 315.5115 1158.2058 231.7195 455.6588 283.2876 120.8299 373.3377 202.2084 277.4009 1170.2704;
	3.9252 53.0385 94.3062 119.6854 15.3576 33.9416 29.3954 18.9722 27.9761 29.9427 55.3486 82.5692 124.3074 66.8242 191.9991 72.3346 89.7484 95.1065 84.9593 68.0139 9.7985 79.1972 73.0077 89.5151 105.7413 75.6625 13.5277 1224.0568 729.5137 729.5137 520.5238 69.6671 283.1978 175.068 209.503 311.2592 1159.1015 221.2158 463.4532 283.2355 116.8104 376.526 200.8767 279.702 1171.1755;
	3.9294 53.095 94.2767 120.4072 15.4078 34.8818 30.5936 18.5628 27.875 30.4182 56.2277 83.8806 126.2818 68.62 193.0073 72.7144 90.2197 95.606 87.416 67.571 10.1979 81.391 72.598 89.8595 105.3335 75.4941 13.4689 1242.9367 829.7796 829.7796 606.9869 70.8674 291.3865 173.9279 215.1331 354.0393 1248.955 258.6677 473.6336 282.1433 118.2703 386.956 185.0866 286.0905 1261.9649;
	3.8989 52.6824 89.2576 113.3953 15.1315 34.2662 29.3891 18.1619 26.7863 29.8612 55.198 82.3446 123.9693 67.6703 190.4037 71.7335 89.0026 94.3162 87.2256 67.5959 9.7964 79.9544 72.0943 88.2813 102.0573 75.3276 13.0998 1187.0307 798.2789 798.2789 667.9713 78.3831 290.752 173.9919 212.1555 340.599 1207.0658 280.1872 463.5221 273.3678 118.3693 380.1261 163.3874 274.8297 1219.6394;
	3.713 50.1708 89.6611 113.1137 14.7388 33.1212 26.753 17.8792 26.1258 30.9927 57.2896 85.4648 128.6668 68.0061 194.1121 73.1306 90.7361 96.1532 86.8719 69.861 8.9177 77.2828 73.691 86.5673 99.58 75.195 13.0376 1191.5646 788.1164 788.1164 658.4258 79.148 289.5732 179.8225 213.2083 336.263 1155.9269 291.1446 443.2834 266.7321 118.4221 367.4247 154.4547 268.8395 1167.9679;
	3.7909 51.2228 91.1198 114.3337 14.7981 32.5543 24.9891 17.7403 25.9459 30.0729 55.5894 82.9284 124.8482 68.3208 191.3889 72.1046 89.4632 94.8043 87.3511 68.1697 8.3297 75.96 72.8401 87.0964 103.163 75.3299 12.9608 1062.2107 758.2981 758.2981 626.7233 82.6812 291.1703 175.469 214.1949 323.5405 1109.1341 276.1282 445.2138 276.3294 119.7028 361.1353 174.0124 275.7011 1120.6876;
	3.7494 50.6624 90.0885 110.9296 14.8626 32.5253 27.8921 17.5066 26.4103 30.2631 55.9409 83.4529 125.6379 68.6159 191.6175 72.1908 89.57 94.9175 85.1968 68.8724 9.2974 75.8923 72.8668 88.3121 100.5835 75.3056 12.9063 1100.408 762.1958 762.1958 669.1941 100.8452 283.9894 177.2777 215.1202 325.2035 1037.9109 301.3742 444.3539 269.4202 117.9397 360.8139 144.0247 263.5187 1048.7224;
	3.7793 51.0665 88.073 110.8053 14.7002 32.5916 27.1544 17.5265 25.7984 29.5649 54.6502 81.5274 122.739 67.5724 196.5118 74.0347 91.8578 97.3419 89.1074 70.2024 9.0515 76.0471 72.5262 88.1635 99.6889 72.3611 12.9185 1128.9218 735.9968 735.9968 694.5877 97.9358 297.0247 180.7012 211.8486 314.0253 1058.2826 320.5869 444.6389 267.0238 114.7151 361.5495 145.417 268.1236 1069.3064;
	3.7831 51.1181 91.9662 113.9242 14.3921 33.021 26.1794 18.1338 27.1532 29.984 55.425 82.6832 124.4792 68.1454 193.1973 72.7859 90.3085 95.7 86.1299 70.2766 8.7265 77.049 72.3911 89.2025 104.2071 74.3956 13.2089 1137.8297 738.4999 738.4999 687.1193 101.7652 287.0997 180.8922 213.6452 315.0933 971.9479 329.0506 442.1276 279.126 114.7161 366.313 166.2248 263.4207 982.0723;
	3.6955 49.934 92.6069 114.9634 14.6697 33.6569 26.198 18.8203 26.7736 30.2958 56.0014 83.543 125.7736 69.0995 198.3285 74.7191 92.7071 98.2418 88.6899 70.8182 8.7327 78.5328 73.7175 89.7182 105.7301 75.9301 13.5797 1202.9632 749.1175 749.1175 647.7975 108.7017 295.6329 182.2861 216.6362 319.6235 1088.977 306.3983 461.0813 283.2056 116.3995 373.3671 169.0208 262.6752 1100.3205;
	3.6658 49.5329 92.84 115.73 14.4182 34.0718 26.1154 18.5656 26.4567 30.2032 55.8302 83.2877 125.3891 69.2637 195.7156 73.7347 91.4857 96.9475 89.4468 71.3876 8.7051 79.5008 73.7264 89.7782 105.6684 76.194 12.384 1195.2739 776.0688 776.0688 707.3419 106.9758 298.1561 183.752 217.1509 331.1227 1189.7186 314.1034 461.5673 283.0405 116.5774 377.9693 174.1182 248.1723 1202.1115;
	3.7147 50.1942 92.6473 111.8608 14.5238 33.6531 26.2535 15.9381 26.2513 29.3326 54.2208 80.8868 121.7747 68.4205 190.8798 71.9129 89.2252 94.5521 85.4748 69.8815 8.7512 78.5238 72.5434 89.4112 104.4677 70.6343 11.5526 1243.5611 732.5591 732.5591 716.9094 106.0058 284.9158 179.8751 214.5075 312.5585 1197.535 321.3722 454.2129 279.8243 114.9725 373.3245 189.6947 256.1934 1210.0093;
	3.6605 49.4619 88.7514 103.5888 14.6951 33.0245 26.7394 14.45 26.5403 29.805 55.0941 82.1895 123.7359 69.8192 199.9088 75.3145 93.4457 99.0246 91.501 70.196 8.9131 77.0571 74.0588 87.7278 100.7687 46.8621 10.9419 1272.0932 797.6402 797.6402 694.4714 107.9529 305.0032 180.6847 218.8926 340.3265 1272.0952 317.4657 460.4743 269.9161 112.7868 366.3517 160.1103 233.1826 1285.3462;
	3.5684 48.217 86.5206 100.3185 14.0888 27.7746 26.1891 13.4257 26.8922 29.8584 55.1928 82.3368 123.9576 69.2228 194.116 73.1321 90.7379 96.1551 88.7835 68.2947 8.7297 64.8075 74.5072 83.538 96.3958 49.3002 8.8669 1290.5077 805.0496 805.0496 711.1307 115.4504 295.9448 175.7908 217.0228 343.4878 1328.0424 305.2578 456.3313 258.2032 109.2666 308.1132 177.285 241.1176 1341.8762;
	3.5861 48.4559 87.0948 105.6376 14.5795 28.8909 29.275 13.6455 27.7341 29.8005 55.0857 82.177 123.7171 69.4273 190.5886 71.8032 89.0891 94.4079 85.8089 68.888 9.7583 67.412 75.1946 83.5881 94.7621 58.1214 7.6024 1267.0334 799.1307 799.1307 693.9439 115.0448 286.0297 177.318 217.664 340.9624 1298.2155 315.3645 461.9514 253.827 112.9207 320.496 155.9775 239.6561 1311.7386;
	3.635 49.1171 87.1281 102.6039 15.1527 30.1367 27.187 12.5147 27.8987 29.3884 54.324 81.0408 122.0064 68.2115 193.766 73.0002 90.5743 95.9817 88.9911 69.0275 9.0623 70.319 73.9116 86.7149 96.0478 63.3837 8.8248 1237.7268 782.0922 782.0922 726.4579 114.9534 296.6371 177.6769 213.8524 333.6927 1176.663 312.8456 455.6069 257.2709 113.4324 334.3168 157.9522 240.1012 1188.9199;
	3.5709 48.2506 90.7845 100.0061 14.6258 29.6988 29.3836 12.4727 27.8023 28.9941 53.5952 79.9535 120.3695 68.3157 190.4192 71.7393 89.0099 94.3239 89.5762 69.112 9.7945 69.2971 73.1691 87.5406 98.1147 63.3633 9.7468 1179.7656 788.0816 788.0816 770.2994 111.5154 298.5875 177.8945 214.1788 336.2481 1196.0009 309.7611 470.6648 262.8072 118.0199 329.4584 171.1363 242.0616 1208.4593;
	3.7146 50.1919 92.1669 109.0364 15.2138 32.3881 27.9158 12.9615 28.2215 29.0161 53.6358 80.0141 120.4607 68.8557 191.7658 72.2467 89.6394 94.991 87.6638 71.2225 9.3053 75.5722 74.8208 89.733 102.1874 61.3866 10.2627 1136.6104 786.8683 786.8683 790.2519 109.7838 292.2128 183.3268 215.872 335.7305 1162.3508 305.5423 465.0401 273.7161 122.517 359.2916 184.899 239.6187 1174.4586;
];
