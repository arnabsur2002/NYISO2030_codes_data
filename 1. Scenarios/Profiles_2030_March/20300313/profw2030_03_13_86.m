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
	0.7369 9.9567 54.9175 64.3461 7.0722 0.8012 1.7701 9.0676 2.3452 17.5357 32.4144 48.3559 72.7996 4.8377 147.9381 55.7348 69.1525 73.281 81.4519 68.7986 0.59 1.8694 58.0842 67.36 50.2068 47.9428 4.7347 170.8808 317.427 317.427 233.0564 41.7684 271.5062 177.0879 15.167 135.4355 397.4836 90.7893 0.0 134.4824 66.9297 8.8876 8.5084 66.1609 401.624;
	0.4629 6.2551 51.2852 61.4459 4.9611 0.0879 0.0 11.7557 0.483 8.5739 15.8487 23.6431 35.5946 0.2433 120.827 45.5209 56.4796 59.8515 74.1537 69.1793 0.0 0.2052 27.7095 67.7265 54.054 52.9092 6.6235 60.9622 181.8384 181.8384 128.4385 25.8312 247.1791 178.0677 0.7629 77.5844 284.6717 81.7167 0.0 144.7876 79.4402 0.9755 1.7172 85.4372 287.637;
	0.2641 3.5692 44.0531 56.8867 4.4447 0.0 0.0 11.0755 0.0978 9.19 16.9875 25.342 38.1522 0.0143 83.2367 31.359 38.9083 41.2312 65.3292 65.1154 0.0 0.0 21.1048 74.5086 52.8265 49.8932 6.1967 0.0 0.5507 0.5507 0.5239 12.9047 217.7641 167.6073 0.045 0.235 162.2153 0.1461 0.0 141.4996 68.8145 0.0 0.0048 84.9582 163.905;
	0.3738 5.0508 54.3823 64.3049 7.8468 0.0026 0.0 13.8625 0.1417 14.2461 26.3336 39.2846 59.1427 1.4838 88.4304 33.3156 41.3361 43.8039 46.9434 62.2629 0.0 0.0061 43.9159 74.3112 57.1313 59.8739 7.5433 0.2324 2.3003 2.3003 0.3223 14.9507 156.478 160.2647 4.652 0.9815 12.518 2.1269 0.0 153.0303 65.4117 0.0291 0.0036 127.4186 12.6484;
	0.4787 6.4683 72.204 68.4892 9.0286 0.0007 0.0 14.4337 0.0386 15.4317 28.5252 42.554 64.0648 1.8106 116.199 43.7773 54.3163 57.559 59.887 62.6389 0.0 0.0017 47.8307 79.5973 71.9666 63.2272 8.9508 130.2781 31.194 31.194 20.1041 8.0531 199.6234 161.2328 5.6765 13.3094 178.1579 4.4051 0.0 192.7676 62.649 0.008 0.0 127.0446 180.0137;
	0.515 6.959 76.21 61.2198 9.3127 3.5593 0.0189 12.5477 0.0 8.6756 16.0368 23.9237 36.017 0.3268 145.104 54.6671 67.8277 71.8771 85.9396 68.5741 0.0063 8.305 30.0769 78.5655 52.8601 66.0162 7.9224 73.6691 31.9445 31.9445 16.2703 5.475 286.4652 176.51 1.0245 13.6296 217.926 1.6032 0.0 141.5897 50.6049 39.4844 21.0636 126.6358 220.196;
	0.5487 7.4135 57.2905 42.9136 8.8802 1.1011 3.7396 8.0773 1.9182 6.4485 11.9199 17.7822 26.771 0.0002 113.0318 42.5841 52.8358 55.9902 70.4761 69.6713 1.2465 2.5692 1.3841 56.0761 34.2722 60.4834 4.114 38.5764 24.517 24.517 12.297 0.0125 234.9204 179.3341 0.0007 10.4606 119.6036 3.9288 1.5923 91.8004 25.0196 12.2147 29.2186 131.4018 120.8494;
	0.5246 7.0885 34.533 31.8171 3.6464 2.0633 4.1136 7.3661 1.6593 4.8527 8.9701 13.3816 20.146 0.0434 64.8404 24.4282 30.3091 32.1186 21.9118 49.7296 1.3712 4.8144 10.4907 37.9623 34.7657 63.3682 4.6911 24.0858 8.9902 8.9902 8.0563 0.0 73.0393 128.0042 0.136 3.8358 89.7347 0.8257 3.8503 93.1225 5.4972 22.889 3.7162 109.9613 90.6694;
	0.5986 8.0878 26.6451 29.3304 3.427 0.0638 0.0 5.6125 0.0 1.444 2.6693 3.982 5.9949 5.8852 14.6987 5.5377 6.8708 7.281 39.86 17.5356 0.0 0.1488 3.3494 33.5308 28.4147 46.8409 4.4231 24.7436 9.5819 9.5819 25.6019 0.0 132.8666 45.1366 18.4509 4.0883 51.6267 0.5802 0.0 76.1109 0.0381 0.7073 37.2953 76.2239 52.1645;
	0.5301 7.1623 30.413 28.2946 6.4405 0.0 0.0 3.8483 0.0 2.2393 4.1393 6.175 9.2965 6.0417 8.8417 3.3311 4.133 4.3797 32.5225 13.8139 0.0 0.0 6.4312 33.059 28.7252 39.8677 2.9212 182.7413 29.2184 29.2184 38.4187 5.7791 108.4082 35.557 18.9416 12.4665 94.5254 1.4228 0.0 76.9424 0.0087 0.0 48.8442 91.2054 95.51;
	0.6694 9.0445 39.0332 5.1928 8.8022 0.0 0.831 2.7497 0.0 1.9283 3.5645 5.3175 8.0055 0.3741 1.9088 0.7191 0.8922 0.9455 0.837 11.3611 0.277 0.0 5.9721 27.7379 41.9221 42.4237 1.2234 75.8719 65.2621 65.2621 8.0506 9.1399 2.79 29.2436 1.1727 27.8452 78.7615 0.3142 0.1863 112.2913 0.0 0.0 28.036 93.7451 79.5819;
	1.58 21.3491 59.5223 16.3629 13.0775 0.3444 2.3725 0.4228 0.3481 1.9931 3.6843 5.4962 8.2746 0.0201 1.1833 0.4458 0.5531 0.5861 0.3625 8.9327 0.7908 0.8035 40.4618 48.0235 3.4762 41.9583 1.1866 174.3325 89.2785 89.2785 0.2797 2.0616 1.2083 22.9927 0.0629 38.0922 124.3429 0.0 0.2427 9.3113 0.0 3.8201 44.7817 128.135 125.6382;
	2.3509 31.7659 83.3298 56.6059 14.5812 0.3204 4.1354 8.5343 1.7566 24.4016 45.106 67.2893 101.3037 0.3246 1.0632 0.4006 0.497 0.5267 1.7878 7.5038 1.3785 0.7477 31.346 65.8298 70.9549 50.6653 11.116 249.3237 169.3854 169.3854 25.1682 3.1605 5.9592 19.3147 1.0176 72.2711 185.5265 0.1722 4.7438 190.0578 0.0219 3.5548 118.1979 173.8328 187.4591;
	1.7767 24.007 0.0 0.2542 14.1142 15.1704 4.0919 1.0704 0.4185 0.3558 0.6577 0.9811 1.4771 0.4589 2.5191 0.9491 1.1775 1.2478 13.5207 3.2492 1.364 35.3975 23.5578 0.0 0.0 24.5112 1.8809 220.5846 207.5204 207.5204 5.6723 4.0082 45.069 8.3636 1.4389 88.542 198.1811 6.0522 0.0585 0.0 0.0009 168.2898 85.6432 127.338 200.2454;
	2.1025 28.409 0.181 2.7824 9.2457 0.0 1.8902 0.09 0.0 1.9904 3.6793 5.4888 8.2634 0.413 36.1067 13.603 16.8778 17.8854 36.2179 3.2979 0.6301 0.0 28.405 0.0 3.3863 0.0 0.9417 280.4822 259.5384 259.5384 86.0865 4.8145 120.7264 8.4888 1.295 110.7364 259.2272 11.4436 14.7479 9.0706 0.0004 0.0 83.3182 103.615 261.9275;
	3.1807 42.9781 84.0116 10.8285 14.1599 0.0 4.4304 1.5475 2.4442 1.6116 2.979 4.4442 6.6906 3.6309 58.9805 22.2205 27.5699 29.2159 3.227 5.4213 1.4768 0.0 44.8344 3.1958 8.7498 0.7687 4.459 371.7274 276.2497 276.2497 157.6472 6.2321 10.7567 13.9543 11.3834 117.8665 305.8939 22.7143 78.1154 23.437 0.0046 0.0 1.6786 175.2755 309.0803;
	3.5752 48.3094 6.7695 3.997 14.4884 0.0 5.5852 0.7589 2.1878 0.2027 0.3746 0.5589 0.8414 13.1811 25.2369 9.5079 11.7968 12.5011 20.8954 0.7883 1.8617 0.0 0.3881 0.0128 1.8308 0.6761 1.1029 352.6061 338.2189 338.2189 163.4112 15.2755 69.6512 2.029 41.3246 144.3067 437.0771 54.2798 97.2789 4.9039 0.0 0.0 137.0475 216.5761 441.63;
	3.0394 41.0691 5.935 0.5965 14.8009 18.254 25.3421 0.0047 11.2427 1.7258 3.1901 4.759 7.1647 57.6188 87.622 33.0111 40.9582 43.4034 84.3261 4.6075 8.4474 42.5926 14.3108 0.0 0.0011 0.0 0.0546 533.3748 453.3752 453.3752 319.8559 30.9068 281.0869 11.8598 180.6427 193.4401 540.0284 88.2429 147.796 0.0029 0.0 202.4974 112.1581 225.6574 545.6537;
	3.1794 42.9606 85.7915 0.6905 15.1814 24.5271 8.3989 1.6065 6.6785 8.0244 14.833 22.1279 33.3135 9.0183 53.8341 20.2817 25.1643 26.6667 81.0358 39.2164 2.7996 57.2298 12.416 2.5226 3.6158 55.8564 0.2467 764.4203 445.3148 445.3148 365.4547 41.7813 270.1194 100.943 28.2735 190.001 605.3236 74.0012 57.7852 9.6852 0.0 272.0869 106.7937 214.145 611.6291;
	2.9734 40.1773 7.0422 13.5163 14.9553 0.0454 20.1684 0.0794 27.3331 20.99 38.7996 57.8814 87.1402 20.3693 28.6407 10.7902 13.3879 14.1871 11.6284 21.1425 6.7228 0.1059 51.8934 0.0655 3.4982 45.8991 0.07 709.2266 445.175 445.175 326.8299 40.2906 38.7613 54.4208 63.8607 189.9413 550.6623 68.4848 86.2465 9.3702 0.0283 0.5034 98.4186 179.641 556.3983;
	3.2759 44.2647 87.4668 9.5628 14.9865 0.4159 10.7774 0.0 27.7317 22.0709 40.7977 60.8622 91.6277 7.9545 22.8876 8.6228 10.6986 11.3373 6.9316 30.2323 3.5925 0.9705 71.3299 75.5378 0.3373 48.3666 0.0 500.5752 357.8673 357.8673 219.6913 37.6589 23.1054 77.8181 24.9385 152.6901 470.5797 63.2858 33.6275 0.9035 0.0 4.6139 102.2713 179.7062 475.4816;
	3.4698 46.8849 87.5217 0.0242 14.4975 21.2143 13.5329 11.0218 27.3469 16.9591 31.3487 46.7661 70.4061 11.2641 1.7681 0.6661 0.8265 0.8758 2.7363 50.5618 4.511 49.5 36.9682 69.4149 89.0197 56.3239 3.2587 592.0831 295.3474 295.3474 184.0675 41.1153 9.1211 130.1462 35.3144 126.0149 421.5527 79.1336 44.2472 238.4456 5.379 235.3373 0.0057 197.3711 425.9439;
	3.2069 43.3327 86.3699 109.2184 13.8587 22.7652 13.3702 12.8611 26.9856 20.7918 38.4333 57.335 86.3175 7.8881 50.4445 19.0047 23.5799 24.9876 7.0854 64.1425 4.4567 53.1187 57.2875 75.2629 82.8298 57.6264 4.2372 643.0332 332.7442 332.7442 277.6436 40.3488 23.618 165.1028 24.7302 141.9709 404.7944 98.4127 7.2322 221.8656 3.143 252.5415 120.92 199.4199 409.011;
	2.3467 31.7092 85.6764 100.0707 13.8616 12.5307 11.0704 13.684 26.7021 17.2561 31.8977 47.585 71.639 9.9933 42.4881 16.0072 19.8607 21.0465 0.0113 50.0418 3.6901 29.2383 49.1535 72.3464 88.5047 64.8273 4.0437 680.6491 376.922 376.922 261.0828 48.9632 0.0378 128.8077 31.3305 160.82 415.9916 76.9856 294.1776 237.0661 4.2959 139.0073 113.5873 212.0231 420.3248;
];