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
	3.5928 48.5471 88.9232 111.7201 15.0209 14.194 14.8784 16.6465 27.1553 24.0 44.3636 66.1817 99.6362 5.0815 18.5546 6.9903 8.6732 9.191 14.436 24.1603 4.9595 33.1193 58.4176 83.384 99.8607 68.4158 6.6977 769.6002 400.0604 400.0604 205.7548 33.4015 48.1199 62.1887 15.9311 170.6924 551.3775 56.6017 285.5454 267.484 16.3118 157.4586 119.4143 211.5416 557.121;
	3.6085 48.7584 90.009 111.2653 15.0291 16.3036 13.672 16.3485 25.8411 22.2274 41.0869 61.2936 92.2772 4.8508 6.9122 2.6041 3.2311 3.424 11.8961 12.3686 4.5573 38.0417 61.2832 84.5772 100.356 70.5568 5.8334 739.9335 372.3572 372.3572 170.6001 20.2817 39.6538 31.8369 15.2079 158.8724 524.5539 45.9106 267.5122 268.8108 13.3016 180.8612 117.1177 212.6875 530.018;
	3.5554 48.0411 90.5982 112.6417 15.3498 13.9769 13.2289 18.1143 26.942 22.2217 41.0765 61.2781 92.2538 6.5842 4.2901 1.6163 2.0054 2.1251 20.3135 16.8003 4.4096 32.6129 61.335 87.1594 101.7534 74.2018 7.7599 678.8302 367.8697 367.8697 155.8921 30.3822 67.7115 43.244 20.6423 156.9577 456.4041 37.2116 225.3682 272.5537 20.6417 155.051 96.4246 197.1768 461.1583;
	3.3203 44.8643 90.3487 108.1553 15.2987 13.5465 11.5965 17.9722 26.9062 22.1022 40.8555 60.9484 91.7574 8.3484 4.7074 1.7735 2.2004 2.3318 11.8858 20.5085 3.8655 31.6086 63.0455 89.1081 105.654 74.2877 9.6307 532.0152 291.6283 291.6283 157.91 26.0684 39.6192 52.7889 26.1735 124.4281 356.819 28.0061 163.3667 283.0018 33.0647 150.2762 87.5167 196.1091 360.5358;
	2.7015 36.5026 90.3117 114.2476 15.2724 14.4522 10.1858 17.8814 18.0357 21.5484 39.8319 59.4213 89.4585 12.1804 8.7259 3.2874 4.0789 4.3224 20.8125 25.5457 3.3953 33.7217 55.9696 88.7936 105.3704 73.0071 9.4315 381.315 228.4526 228.4526 137.0386 26.604 69.3749 65.7547 38.1872 97.4731 219.6818 32.6026 123.2781 282.242 13.4089 160.3226 92.9893 206.2877 221.9702;
	3.2791 44.3083 92.2382 116.2321 14.9619 21.4803 10.7681 18.1703 10.7931 18.7515 34.6619 51.7087 77.8472 22.9149 9.6057 3.6189 4.4901 4.7582 34.1818 25.1768 3.5894 50.1206 52.6852 89.5896 105.5999 72.9232 8.055 308.0897 208.0393 208.0393 125.032 24.397 113.9395 64.8051 71.8413 88.7635 188.2272 32.8199 146.722 282.8569 13.3421 238.2877 95.1349 217.1809 190.1879;
	2.7551 37.2269 93.1137 113.8903 14.6211 22.8022 10.0824 17.6746 11.739 26.4263 48.8486 72.8725 109.7092 16.882 16.94 6.382 7.9184 8.3912 38.4233 37.1032 3.3608 53.2051 67.5502 89.2105 105.8936 75.4436 11.4616 270.5265 225.8239 225.8239 85.579 14.9833 128.0777 95.5037 52.9272 96.3515 194.156 19.5022 100.6752 283.6436 10.1332 252.9524 96.5398 239.0608 196.1784;
	1.9586 26.4644 75.6741 117.2328 15.0441 19.9361 10.6537 18.671 17.615 28.0821 51.9093 77.4384 116.5831 15.7794 24.902 9.3817 11.6402 12.3352 52.3921 51.9726 3.5512 46.5177 70.0589 89.8508 106.4217 75.7302 13.2328 137.9971 167.2888 167.2888 63.7941 9.6439 174.6404 133.7777 49.4705 71.3766 124.036 15.1383 0.0 285.058 8.4624 221.1583 93.0389 214.4682 125.328;
	3.0259 40.8866 89.0619 112.1628 15.0822 25.8811 10.3526 18.8871 19.5759 28.4799 52.6447 78.5356 118.2349 36.116 17.6322 6.6428 8.242 8.7341 60.5337 50.0714 3.4509 60.3892 70.3279 88.7852 105.8961 74.786 13.0089 150.2422 144.1634 144.1634 77.6428 8.0821 201.779 128.8839 113.2285 61.5097 136.733 18.4198 89.3623 283.6502 19.8865 287.1074 87.8342 237.8098 138.1573;
	2.0184 27.2724 84.9083 110.6203 13.6883 13.7748 8.7395 17.796 23.7482 29.0851 53.7633 80.2042 120.7471 43.4527 5.0237 1.8927 2.3483 2.4885 73.2142 44.1535 2.9132 32.1413 70.3889 83.1754 99.8415 72.6954 12.0052 242.2636 210.5514 210.5514 88.902 7.7009 244.0473 113.6512 136.23 89.8353 223.7092 18.4912 0.0 267.4327 5.0152 152.8088 79.2387 192.0129 226.0395;
	1.9621 26.5122 80.5982 107.1274 13.4489 24.4678 12.5161 17.871 25.8784 30.3727 56.1435 83.755 126.0927 50.8995 31.7819 11.9737 14.8562 15.7431 67.2795 38.3042 4.172 57.0914 73.9118 86.9767 97.8797 72.7658 11.8751 360.7384 274.0447 274.0447 136.9057 11.0641 224.265 98.5951 159.5767 116.9257 320.4227 23.1945 130.4155 262.1777 14.9686 271.4289 93.0841 177.8418 323.7604;
	1.8126 24.492 83.6419 90.6164 12.3595 26.5795 16.3159 17.6434 25.2439 29.1088 53.8071 80.2696 120.8455 48.6881 18.0508 6.8005 8.4377 8.9414 78.1605 52.1711 5.4386 62.0188 71.4056 86.7636 97.9029 72.8303 11.8326 465.205 345.1796 345.1796 243.3989 16.6557 260.535 134.2886 152.6437 147.2766 425.7591 40.377 143.5796 262.2398 3.059 294.8553 101.93 166.509 430.1941;
	3.0467 41.1678 90.3769 92.3708 14.3571 29.1427 19.8442 18.0772 27.3724 29.0381 53.6764 80.0747 120.5519 53.6995 45.4515 17.1236 21.2459 22.5143 78.2618 62.1495 6.6147 67.9997 72.428 89.2186 103.3406 75.3166 12.296 612.1359 432.8364 432.8364 286.4125 22.2957 260.8726 159.9731 168.3551 184.6769 591.0767 59.2515 187.534 276.8052 4.4326 323.29 143.1874 199.3232 597.2337;
	3.7676 50.908 91.236 109.9051 14.6734 28.4503 21.1563 18.0261 26.9482 29.8304 55.141 82.2596 123.8413 52.4575 65.2348 24.5768 30.4935 32.314 82.4453 55.5048 7.0521 66.3839 68.8956 89.4493 101.3895 74.3947 12.2092 828.3587 530.5288 530.5288 348.5974 24.6416 274.8176 142.8696 164.4614 226.3589 722.9937 78.6484 264.6449 271.5789 14.5995 315.6082 147.2719 244.2123 730.5249;
	3.8875 52.5285 90.863 111.5881 15.0117 32.148 26.258 18.2307 28.2429 26.86 49.6504 74.0686 111.5099 62.3588 95.4609 35.9643 44.6224 47.2865 83.4775 52.8768 8.7527 75.0121 49.1784 89.9353 102.9333 73.9535 13.741 1050.0786 619.1477 619.1477 451.7969 34.118 278.2584 136.1051 195.5034 264.1697 935.3893 114.9938 414.0018 275.7143 39.3378 356.6289 165.8339 244.2521 945.133;
	3.8726 52.3268 90.0808 110.2861 14.5169 32.0527 27.927 18.052 28.324 21.5892 39.9073 59.5339 89.628 59.4716 124.0961 46.7525 58.0077 61.4708 88.8997 65.8804 9.309 74.7896 47.5949 87.3988 100.6861 70.0458 13.4125 1056.1865 670.6548 670.6548 600.4429 44.1277 296.3324 169.5763 186.4513 286.146 1001.1605 159.1957 389.9773 269.695 27.0809 355.5713 179.5404 247.1703 1011.5893;
	3.8228 51.6548 87.5563 110.3198 14.7173 32.3112 30.1506 17.5438 27.7844 19.1303 35.3621 52.7534 79.4199 60.5163 165.5383 62.3656 77.3795 81.9992 90.4578 70.2624 10.0502 75.3928 29.0687 82.8451 98.3284 72.0241 12.715 1030.9593 718.1357 718.1357 652.1011 74.9467 301.5258 180.8556 189.7269 306.4046 1020.2098 208.9313 427.2843 263.3797 0.06 358.4389 212.4568 257.1503 1030.837;
	3.9013 52.7147 90.4021 113.3808 14.7551 32.6565 29.8397 17.7074 28.1992 19.3613 35.7891 53.3902 80.3787 62.9246 173.0859 65.2091 80.9076 85.7379 90.4503 70.3868 9.9466 76.1984 40.29 82.812 98.4368 70.7236 13.0882 1110.7674 765.5121 765.5121 689.6387 89.5069 301.5011 181.1759 197.277 326.6185 1078.6079 243.8714 443.5331 263.6699 106.674 362.2692 207.4548 243.5944 1089.8434;
	3.9079 52.804 89.6541 116.4955 14.7331 32.7984 30.6198 12.9712 27.8661 21.0073 38.8318 57.9293 87.2123 57.7896 183.3318 69.0692 85.697 90.8132 88.028 68.0379 10.2066 76.5295 52.4006 83.1132 100.5573 62.4459 13.1732 1243.995 796.0456 796.0456 654.4947 99.3518 293.4265 175.1297 181.1781 339.6461 1128.3986 245.3503 453.4677 269.35 113.8162 363.8433 213.8151 259.179 1140.1528;
	3.8946 52.6244 94.6455 114.2274 15.3951 34.4956 31.9599 8.9568 28.4391 22.0594 40.7765 60.8306 91.5801 65.3789 195.4524 73.6356 91.3627 96.8171 91.5998 72.1525 10.6533 80.4898 51.3059 41.9686 48.4003 63.2444 11.871 1233.7249 810.2569 810.2569 684.6567 109.9449 305.3327 185.7207 204.9717 345.7096 1163.4075 262.0804 473.6129 129.6438 119.1059 382.6714 215.7328 242.1624 1175.5263;
	3.8376 51.8539 94.7488 120.6135 15.2335 33.8181 31.2872 18.8021 18.6928 21.2527 39.2854 58.606 88.231 61.187 195.427 73.626 91.3508 96.8045 92.1865 71.1019 10.4291 78.909 42.8015 80.5982 104.4409 73.7768 14.0625 1256.7699 791.2791 791.2791 702.394 113.0629 307.2883 183.0165 191.8294 337.6124 1114.3768 253.9096 461.0227 279.7525 115.6584 375.1559 209.7874 271.204 1125.9849;
	3.7466 50.6242 93.7389 122.6692 14.8866 33.8097 30.9012 17.9855 9.8687 21.9988 40.6644 60.6633 91.3282 61.7906 202.1927 76.1749 94.5133 100.1559 92.4591 73.4226 10.3004 78.8893 41.3358 86.3564 103.3262 73.6613 13.891 1244.9325 777.4082 777.4082 726.8009 116.001 308.197 188.9899 193.722 331.6942 1167.4898 267.084 466.7826 276.7666 115.7037 375.0622 211.7587 249.838 1179.6511;
	3.7587 50.7879 93.9882 117.5362 14.8555 33.2226 31.4444 18.1167 19.8142 19.4827 36.0134 53.725 80.8826 61.3901 193.025 72.7211 90.228 95.6147 91.8255 70.9711 10.4815 77.5195 44.2592 84.7993 90.7878 74.2056 14.0898 1201.7422 757.2281 757.2281 720.1355 115.9898 306.0848 182.6799 192.4663 323.084 1111.5322 268.3248 467.5172 243.1817 115.3084 368.5498 208.7362 258.974 1123.1106;
	3.7666 50.8944 94.2306 119.2429 14.656 33.5804 33.1336 18.8353 11.119 17.642 32.6109 48.6491 73.2409 63.91 191.4296 72.12 89.4822 94.8244 91.182 71.4242 11.0445 78.3543 45.3003 86.9543 105.236 74.4561 14.0847 1199.3184 797.7145 797.7145 773.236 111.2707 303.9401 183.846 200.3663 340.3582 1133.3366 278.1678 459.9556 281.8823 118.4313 372.519 211.3498 272.0926 1145.1422;
];