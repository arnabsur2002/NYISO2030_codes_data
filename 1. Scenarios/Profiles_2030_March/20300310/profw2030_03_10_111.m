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
	3.7423 50.5671 81.7026 114.7156 15.0275 35.3141 31.5805 6.5431 28.189 12.6278 23.3423 34.8221 52.4244 39.0217 197.5002 74.407 92.3198 97.8315 87.2569 71.1195 10.5268 82.3995 31.9159 35.1628 49.1311 23.4064 3.7175 1254.8237 813.6156 813.6156 667.4517 90.3844 290.8565 183.0617 122.3384 347.1426 1261.4738 206.1684 458.0329 131.601 109.9106 391.7509 206.1005 113.8548 1274.6142;
	3.0902 41.7558 74.7194 45.8864 15.1971 30.3199 30.666 6.9167 11.2496 14.241 26.3243 39.2706 59.1217 36.7729 199.1677 75.0353 93.0993 98.6575 90.3554 72.7091 10.222 70.7464 28.3437 34.9441 42.2214 27.3394 4.7431 1245.0456 820.6311 820.6311 719.1401 77.5536 301.1846 187.1534 115.288 350.1359 1285.1696 198.134 466.1475 113.0932 113.7814 336.3485 214.1346 94.7377 1298.5568;
	2.9162 39.4037 87.0094 51.201 15.2211 25.4117 31.7331 6.1346 11.0195 13.6835 25.2938 37.7333 56.8073 33.7826 205.5429 77.4371 96.0794 101.8154 90.0012 70.3436 10.5777 59.2939 29.3533 37.1119 40.8433 28.0256 4.8327 1247.2499 822.8389 822.8389 748.0187 96.6301 300.004 181.0647 105.913 351.0779 1266.581 213.5989 469.4556 109.4018 28.5061 281.9004 216.6592 129.604 1279.7745;
	3.2649 44.1166 84.0532 54.098 15.0397 15.5947 32.3902 6.4145 11.7516 12.4115 22.9424 34.2256 51.5265 24.1677 202.2457 76.1949 94.5381 100.1822 88.3809 68.6333 10.7967 36.3876 20.6718 34.9443 37.5284 30.1982 3.6462 1253.7889 837.7667 837.7667 752.5946 96.0261 294.6031 176.6622 75.7691 357.4471 1290.3838 225.0942 470.9064 100.5224 31.2801 172.997 216.6642 119.3943 1303.8253;
	3.7698 50.9383 85.3347 60.8287 15.1649 25.0093 32.3502 7.0174 11.894 12.0402 22.2562 33.2018 49.9851 28.9127 192.7337 72.6113 90.0918 95.4704 91.7564 69.9826 10.7834 58.355 0.4625 30.5464 45.3574 65.5397 4.0617 1251.0263 844.201 844.201 772.3474 105.2876 305.8548 180.1354 90.6453 360.1924 1280.0089 228.2141 478.2962 121.4931 37.1986 277.4366 216.8367 207.5006 1293.3423;
	3.7675 50.9069 94.5181 119.4249 14.9932 34.2512 31.5474 7.7109 8.2511 10.9586 20.2567 30.2191 45.4946 25.3948 194.9015 73.428 91.1051 96.5442 89.7563 63.2209 10.5158 79.9195 0.0 34.0455 63.3381 70.4206 4.8509 1173.7959 802.9335 802.9335 734.7154 109.8948 299.1877 162.7307 79.616 342.585 1219.1348 228.8687 457.959 169.6556 70.7398 379.9599 211.4867 257.6015 1231.8341;
	3.725 50.3335 92.7164 119.993 14.838 34.5033 31.6937 9.4848 3.0004 10.386 19.1984 28.6402 43.1177 33.6057 202.349 76.2338 94.5864 100.2333 87.0581 67.0298 10.5646 80.5077 0.0 49.4681 100.4981 74.0055 9.3644 1183.1621 788.633 788.633 683.358 109.9464 290.1938 172.535 105.3583 336.4834 1251.8142 265.352 448.93 269.1913 105.6276 382.7567 211.9311 279.0307 1264.8539;
	3.4831 47.0648 89.9089 116.2577 14.316 34.3236 31.5245 18.0723 2.6465 9.8054 18.1252 27.0392 40.7073 49.2409 194.6624 73.3379 90.9934 96.4258 85.3989 51.4957 10.5082 80.0884 0.0 54.9048 103.8058 73.5254 13.4538 1062.5004 782.3075 782.3075 729.6381 109.7255 284.6628 132.55 154.3767 333.7845 1212.8432 296.74 457.3634 278.0512 118.26 380.763 209.9734 279.7624 1225.477;
	3.5572 48.0657 87.9096 109.6596 14.5365 34.2207 30.769 17.4843 0.2099 9.5571 17.6662 26.3544 39.6765 58.345 192.4112 72.4898 89.941 95.3106 50.8792 59.8429 10.2563 79.8484 0.843 85.3859 100.9825 71.4647 13.1382 815.313 808.7388 808.7388 764.457 110.4357 169.5972 154.0357 182.9196 345.0619 1195.1511 302.0636 454.7633 270.4889 118.9978 379.6221 208.6486 268.1889 1207.6006;
	3.6745 49.651 88.1896 113.5296 14.8861 35.1097 31.8576 17.4064 18.9327 10.7646 19.8982 29.6842 44.6895 54.127 189.358 71.3395 88.5139 93.7983 57.6893 57.4647 10.6192 81.9226 20.8182 87.7708 99.6347 69.8505 12.8268 657.5633 822.5645 822.5645 754.8488 108.547 192.2975 147.9143 169.6954 350.9608 1140.6199 269.1729 463.2206 266.8786 114.9882 389.4834 213.5412 275.9105 1152.5014;
	3.0888 41.7371 87.0906 110.311 14.5955 34.1319 30.089 16.6551 25.8054 15.7604 29.1329 43.4605 65.4296 65.4381 196.1946 73.9152 91.7096 97.1848 41.1276 63.5199 10.0297 79.6411 2.1725 83.5553 98.1016 70.7324 12.5279 434.4202 790.4764 790.4764 717.1898 103.2121 137.0921 163.5005 205.1573 337.2699 933.735 263.6787 433.419 262.7721 115.9558 378.6365 200.9666 272.6472 943.4614;
	2.7239 36.8056 88.7088 114.7684 14.7774 32.8738 29.3196 17.7198 26.3813 17.4888 32.3278 48.2267 72.605 64.2293 193.0871 72.7444 90.257 95.6455 53.4882 55.8547 9.7732 76.7056 22.291 85.8412 100.4899 73.2698 12.6209 291.3123 788.6 788.6 720.6113 104.2174 178.2941 143.7701 201.3676 336.4693 771.711 258.0858 435.3754 269.1694 119.3423 364.6804 189.9768 277.1182 779.7496;
	1.759 23.7676 90.0041 116.9299 14.374 21.4701 25.9067 18.5308 27.0709 24.9366 46.095 68.7647 103.5248 65.6541 192.8947 72.672 90.1671 95.5502 92.2427 60.2244 8.6356 50.0969 39.994 84.4723 99.4003 74.51 13.7024 291.0309 724.2501 724.2501 660.5523 106.5479 307.4756 155.0178 205.8345 309.0134 653.0292 234.6348 434.6593 266.2507 120.1709 238.1751 172.1548 279.4967 659.8316;
	2.1466 29.0048 89.2238 112.7247 14.8985 12.464 26.3016 18.0364 26.9934 29.1212 53.8302 80.304 120.8973 64.1908 196.314 73.9602 91.7654 97.2439 91.2965 66.8428 8.7672 29.0826 69.4073 83.4894 99.2975 74.3026 13.4196 308.627 625.4852 625.4852 636.8604 106.8442 304.3217 172.0535 201.2467 266.8737 492.2764 221.835 448.8396 265.9753 118.5746 138.2672 143.9819 274.2519 497.4043;
	2.2602 30.54 88.6525 112.5786 13.4373 5.4404 22.8188 17.7202 27.4957 29.4324 54.4053 81.162 122.189 63.9736 201.6641 75.9758 94.2663 99.8941 92.3521 70.3359 7.6063 12.6943 69.6341 83.9138 98.4128 71.9848 13.4172 504.0479 529.7006 529.7006 452.5796 95.9767 307.8404 181.0447 200.5658 226.0056 459.502 202.6937 456.9103 263.6058 118.2886 60.3522 128.8106 254.2182 464.2884;
	3.5741 48.2942 89.5441 83.4688 14.613 26.0109 16.3161 17.9088 22.687 28.0518 51.8533 77.355 116.4575 56.9054 194.9503 73.4464 91.1279 96.5684 90.4144 70.0354 5.4387 60.6921 64.4042 86.7165 100.4373 74.0011 13.3599 523.0329 532.6299 532.6299 415.0739 50.859 301.3812 180.2714 178.4061 227.2554 489.6979 172.6078 451.9364 269.0285 118.7118 288.5478 91.9168 270.0223 494.799;
	3.4222 46.2419 89.8155 64.2165 14.6484 31.6845 13.6531 17.9199 26.4279 26.3868 48.7755 72.7635 109.545 58.5635 198.1678 74.6586 92.6319 98.1622 91.016 69.0657 4.551 73.9306 68.3526 87.1566 104.8782 73.2765 13.3371 558.9242 586.508 586.508 443.7513 28.7683 303.3866 177.7752 183.6045 250.2434 588.1559 127.9978 164.9539 280.9238 117.7026 351.4871 122.2716 265.3185 594.2825;
	3.5828 48.4118 86.2987 54.7741 14.3096 29.9395 27.1936 18.0417 25.7837 12.2037 22.5584 33.6527 50.6639 56.6063 188.2403 70.9184 87.9914 93.2446 78.9206 69.3727 9.0645 69.8588 39.8519 86.2912 103.8275 71.8545 13.1544 719.4681 644.2573 644.2573 414.9644 28.7172 263.0687 178.5654 177.4683 274.8831 835.5374 90.4402 366.6677 278.1093 118.8993 332.1285 114.1672 257.3291 844.2409;
	3.7214 50.2847 86.4662 49.0253 14.7424 31.5543 26.0068 18.3816 25.8729 21.2387 39.2594 58.5672 88.1726 54.3537 186.0332 70.0869 86.9597 92.1513 61.8758 68.157 8.6689 73.6267 44.9552 85.6937 105.1283 75.0432 13.4658 1087.7024 705.8719 705.8719 477.6031 45.6146 206.2528 175.4363 170.4063 301.172 1102.9021 105.1753 419.7811 281.5936 118.113 350.0422 139.807 245.6964 1114.3906;
	3.6647 49.5175 64.7853 38.2354 15.1854 30.7873 0.5493 18.5515 25.8425 27.099 50.092 74.7275 112.5018 63.5373 189.8072 71.5088 88.7238 94.0208 49.5198 68.7449 0.1831 71.837 65.6159 81.8092 106.2035 75.0419 13.4121 1175.4298 643.2511 643.2511 571.9636 58.5732 165.0659 176.9495 199.1981 274.4538 1179.9097 141.2685 430.3308 284.4735 120.8513 341.5336 150.7866 243.9589 1192.2004;
	3.7507 50.6805 65.8526 63.24 15.2272 31.1223 30.2024 18.3508 18.7811 25.9588 47.9845 71.5835 107.7686 67.0148 196.7532 74.1256 91.9707 97.4615 65.8103 70.8467 10.0675 72.6187 68.7299 88.825 105.6139 75.1476 13.4005 1266.5423 768.3628 768.3628 450.2286 69.7154 219.3677 182.3597 210.1005 327.8348 1199.7804 193.3391 456.3682 282.8945 118.8852 345.25 133.1025 268.4249 1212.2782;
	3.8513 52.0394 51.6936 87.4509 15.3338 32.9421 5.8015 18.5988 28.2755 29.4432 54.4254 81.192 122.2341 67.6445 194.611 73.3186 90.9693 96.4003 59.685 68.7678 1.9338 76.8649 69.2557 88.924 106.3665 76.2486 14.0288 1268.5927 788.7697 788.7697 582.2837 84.2798 198.95 177.0085 212.0746 336.5418 1271.5254 235.4319 472.876 284.9101 120.3607 365.4377 149.0776 267.0994 1284.7704;
	3.8417 51.9104 64.0921 96.3188 15.2007 31.8752 29.9189 18.5207 27.6418 29.5122 54.5529 81.3821 122.5204 69.1007 199.7707 75.2624 93.3812 98.9562 57.3752 68.7143 9.973 74.3755 69.0321 89.4384 106.2751 76.2106 14.0449 1223.6489 751.6452 751.6452 600.7808 97.0291 191.2506 176.8707 216.6402 320.7019 1196.9469 264.5358 472.11 284.6655 122.7726 353.6026 138.9473 278.8948 1209.4151;
	3.7903 51.2151 91.5623 106.2697 15.1703 32.0227 30.0758 18.9716 26.7405 30.0432 55.5344 82.8463 124.7247 68.9689 198.8941 74.9322 92.9714 98.522 48.9667 71.2449 10.0253 74.7197 68.7304 88.3431 106.1875 76.1886 14.0721 1172.4122 718.9727 718.9727 628.5465 99.5546 163.2223 183.3846 216.2269 306.7617 1206.3096 235.9241 476.5856 284.4308 122.3174 355.2387 151.2792 285.5362 1218.8753;
];
