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
	0.744 10.053 59.9348 67.9403 7.4204 1.3142 0.5595 8.4574 2.1039 16.3705 30.2606 45.1429 67.9624 12.5273 133.9093 50.4496 62.5948 66.3318 72.7195 67.0671 0.1865 3.0664 64.4762 77.3768 53.385 40.3183 4.2581 214.9939 341.2802 341.2802 251.1651 46.9993 242.3984 172.631 39.2747 145.6129 403.8699 98.0156 28.4826 142.9957 70.1418 14.5786 0.306 75.3716 408.0769;
	0.4509 6.0926 54.6204 62.0391 6.4058 0.0549 0.0 10.2483 0.4553 10.3703 19.1693 28.5968 43.0523 28.1442 108.4801 40.8693 50.7082 53.7355 68.5377 68.957 0.0 0.128 28.8627 71.0889 51.7228 42.2622 5.7875 76.0648 227.8298 227.8298 160.0463 31.3097 228.459 177.4955 88.236 97.2074 305.6472 97.3988 20.441 138.5433 77.2149 0.6087 0.0 85.158 308.8311;
	0.2114 2.8559 64.2382 66.9517 5.1153 0.4557 0.0 11.9936 0.0352 8.6403 15.9715 23.8264 35.8705 24.9497 67.9247 25.5902 31.7508 33.6464 58.0775 67.2701 0.0 1.0632 4.9786 80.8677 57.4894 51.2956 6.4586 7.8657 27.7692 27.7692 8.743 17.1054 193.5917 173.1533 78.2207 11.8482 163.2947 12.1686 12.7056 153.9895 73.7408 5.0548 0.0055 99.1101 164.9957;
	0.2061 2.7852 67.5704 70.7324 6.8067 0.002 0.0 13.492 0.3546 12.3651 22.8567 34.0977 51.3339 31.4041 82.9231 31.2408 38.7617 41.0759 35.7413 66.802 0.0 0.0046 41.6114 82.1115 59.6204 55.3711 7.5043 3.8401 10.6033 10.6033 1.5062 18.3131 119.1378 171.9485 98.4561 4.5241 13.0397 5.4632 6.442 159.6976 66.9561 0.0219 0.0 124.4278 13.1755;
	0.3292 4.4479 79.3952 67.5844 7.677 0.0 0.4132 13.4875 0.2386 12.5638 23.2239 34.6455 52.1586 22.4239 103.7595 39.0908 48.5015 51.3971 23.3762 67.6738 0.1377 0.0 40.6978 82.7243 74.786 61.8862 8.3936 0.0 0.0042 0.0042 0.0 8.7178 77.9205 174.1926 70.3018 0.0018 0.0 0.0513 9.5211 200.3196 67.2928 0.0 0.0 141.1508 0.0;
	0.3752 5.0702 76.1504 55.7099 6.5952 2.693 1.2904 11.1769 0.0 7.865 14.5384 21.6885 32.6519 6.4039 113.7632 42.8596 53.1777 56.3525 57.216 66.784 0.4301 6.2838 7.4083 77.4019 53.3055 57.2488 7.2161 17.2902 0.0748 0.0748 0.0 7.6358 190.7201 171.9022 20.0769 0.0319 0.7395 0.145 0.0855 142.7825 52.0454 29.8748 16.8396 133.0407 0.7472;
	0.4572 6.1784 53.8158 30.8079 6.6184 2.3065 4.2828 4.2083 1.9182 6.7462 12.4703 18.6032 28.007 19.916 89.6986 33.7934 41.9289 44.4321 37.4661 61.3199 1.4276 5.3818 0.0 47.4459 28.852 50.0707 3.0822 38.2809 0.063 0.063 0.0 0.0 124.8872 157.8376 62.4393 0.0269 0.252 0.0 47.4871 77.2821 26.8588 25.5865 25.0997 128.35 0.2546;
	0.4803 6.4896 32.665 26.1089 2.6715 2.2485 6.8784 6.1761 2.4201 4.643 8.5826 12.8035 19.2756 33.0216 18.8516 7.1022 8.812 9.3381 11.3745 42.4973 2.2928 5.2466 7.2996 28.3032 28.2897 45.2823 3.5983 22.0923 0.733 0.733 0.8973 0.0 37.9151 109.3882 103.5272 0.3127 6.6467 0.0985 186.3401 75.7759 11.1239 24.9437 0.0 99.5472 6.7159;
	0.5499 7.4297 26.8366 23.0332 1.2586 1.1635 6.4053 4.5395 11.557 0.2087 0.3858 0.5755 0.8664 18.2597 0.0 0.0 0.0 0.0 0.0 12.0528 2.1351 2.7147 0.4729 26.999 24.1999 25.7 3.4942 7.5281 1.1553 1.1553 0.0 0.0 0.0 31.0239 57.2466 0.4929 0.0 0.0 101.1926 64.8212 4.6287 12.9066 0.2548 75.1548 0.0;
	0.5716 7.7242 27.5916 20.7216 5.2543 0.1914 2.4326 2.7775 1.565 1.0638 1.9664 2.9335 4.4164 10.9956 5.6732 2.1373 2.6519 2.8102 1.2971 14.3873 0.8109 0.4467 8.4425 4.2885 23.721 27.4515 2.2693 25.5855 42.2194 42.2194 3.6072 0.0 4.3236 37.0329 34.4725 18.0136 3.4422 0.0 1.0122 63.5383 5.5521 2.1235 42.895 86.8341 3.478;
	0.7893 10.6649 39.1108 0.0 9.2389 0.2122 2.1929 2.996 0.002 0.5093 0.9415 1.4045 2.1145 7.0365 1.1794 0.4443 0.5513 0.5842 0.0 10.0846 0.731 0.4951 29.2783 36.4612 42.6036 45.0106 0.9621 49.1848 67.5784 67.5784 4.9624 0.2546 0.0 25.9578 22.0604 28.8335 57.7169 0.0 7.9391 114.1167 4.4972 2.3541 0.0 94.3632 58.3181;
	1.354 18.2956 55.5525 0.0 10.9222 0.1314 1.7438 0.0002 0.0 1.7628 3.2585 4.8611 7.3183 8.8966 49.2425 18.5518 23.018 24.3922 0.0213 11.2398 0.5813 0.3066 49.5868 44.2251 0.0234 41.4549 0.0002 138.8602 110.3208 110.3208 30.1598 1.9145 0.0711 28.9314 27.892 47.0702 127.9796 0.264 18.5212 0.0627 1.835 1.4576 0.0 121.124 129.3127;
	2.148 29.0243 71.9945 0.0 12.9936 0.4606 0.0 0.2131 0.0 22.169 40.9791 61.1327 92.035 0.9191 1.7494 0.6591 0.8178 0.8666 0.0562 9.4464 0.0 1.0748 28.7665 54.427 67.0119 45.9628 0.0048 142.5316 165.223 165.223 8.2822 0.5175 0.1874 24.315 2.8814 70.4951 166.0394 0.023 0.0 179.496 0.0 5.1098 99.4892 153.3344 167.769;
	1.5795 21.3422 0.0 0.6219 12.9334 18.8324 1.362 1.7441 0.7814 1.791 3.3106 4.9388 7.4354 0.3609 14.9033 5.6147 6.9664 7.3823 0.0 8.4854 0.454 43.9424 46.1251 0.0796 16.8864 31.7557 0.0002 140.5409 211.1691 211.1691 27.3748 3.9634 0.0 21.8415 1.1313 90.0988 181.3084 6.5782 10.8309 45.2316 0.1502 208.9146 74.833 133.1198 183.1971;
	2.0746 28.0326 0.0 0.8475 8.9078 0.8414 0.6727 4.2619 1.8377 10.9516 20.2438 30.1998 45.4656 0.3303 24.5866 9.2629 11.4928 12.179 0.0 9.1076 0.2242 1.9632 32.204 10.9391 45.913 3.0397 0.2494 223.7214 247.4519 247.4519 90.1431 6.1741 0.0 23.443 1.0354 105.5795 234.9232 14.7793 11.0084 122.9813 3.0279 9.3338 77.7887 104.838 237.3703;
	2.8613 38.6625 74.2623 3.2315 12.9181 1.22 3.3229 0.9924 2.619 4.6159 8.5324 12.7287 19.163 0.0758 4.5103 1.6992 2.1083 2.2342 0.0 2.323 1.1076 2.8468 43.9957 5.7447 23.4667 0.0401 0.0477 358.198 273.4941 273.4941 160.4336 9.506 0.0 5.9794 0.2377 116.6908 302.0722 38.8544 1.8109 62.8574 2.4639 13.5343 0.3814 169.3874 305.2188;
	2.879 38.9022 0.0 0.0 12.9378 0.0 0.9532 0.172 0.0313 0.5883 1.0875 1.6223 2.4424 0.1261 6.2181 2.3426 2.9066 3.0801 0.0 0.5736 0.3177 0.0 0.1182 0.161 0.8031 0.0082 0.0 333.2909 366.2811 366.2811 175.4744 20.8828 0.0 1.4765 0.3953 156.2799 420.3914 69.6652 0.0373 2.1511 1.4164 0.0 124.795 199.5623 424.7704;
	1.9024 25.7061 0.0 0.0 11.0956 14.8914 0.3967 0.0 1.9195 4.6163 8.5331 12.7297 19.1645 4.9336 14.7687 5.564 6.9035 7.3157 0.0 0.1075 0.1322 34.7466 14.6543 0.0 0.0 0.0 0.0 436.7919 457.8886 457.8886 310.5717 29.719 0.0 0.2767 15.4674 195.3658 445.1437 90.0254 46.7197 0.0 7.0294 165.1954 103.1842 196.9428 449.7806;
	2.7355 36.9629 71.6053 7.9553 13.6502 24.2835 2.8647 0.0001 3.6862 7.5586 13.972 20.8435 31.3797 8.0319 39.6897 14.9529 18.5526 19.6602 0.2287 34.57 0.9549 56.6615 18.3024 0.2249 1.1255 54.4644 0.0 678.6191 457.0579 457.0579 359.665 42.6577 0.7622 88.9833 25.1812 195.0114 554.6716 76.1736 35.6956 3.0146 14.3542 269.3849 98.3697 190.3265 560.4495;
	2.9842 40.3233 0.0 13.8697 14.2653 2.813 20.6445 0.0001 26.8212 19.9973 36.9647 55.144 83.019 6.6889 13.3002 5.0108 6.2171 6.5883 0.0437 11.97 6.8815 6.5636 48.4073 0.3475 1.4995 27.259 0.0 716.5171 471.5897 471.5897 350.7646 42.5666 0.1456 30.8108 20.9708 201.2116 543.2312 79.7989 83.9646 4.0165 6.3007 31.2053 110.61 163.5592 548.8899;
	3.2247 43.5723 85.57 34.0337 14.3215 5.9138 5.5016 0.0204 27.1808 22.8995 42.3294 63.1471 95.0676 9.376 22.9406 8.6427 10.7234 11.3636 1.2964 24.0903 1.8339 13.7988 68.651 82.8813 20.8808 54.7911 0.0 659.4751 414.2048 414.2048 259.0531 58.0277 4.3213 62.0085 29.3951 176.7274 533.9698 80.1757 50.9987 55.9308 27.3286 65.6035 105.3311 177.5813 539.532;
	3.6448 49.2486 91.2191 99.3221 14.636 25.3255 13.1056 13.5462 26.6529 24.8851 45.9996 68.6224 103.3107 12.0987 15.4973 5.8385 7.2441 7.6765 2.8957 50.5843 4.3685 59.0929 59.2755 83.8129 100.5128 70.4238 5.5589 722.716 340.237 340.237 228.1112 59.9221 9.6525 130.2042 37.9309 145.1678 471.1626 105.0865 84.3673 269.2308 14.5964 280.9446 45.3312 207.4735 476.0706;
	3.6893 49.8511 93.5355 118.9029 14.0821 25.7978 14.3134 15.3974 27.1919 26.2852 48.5878 72.4834 109.1234 8.3464 55.3185 20.8409 25.8582 27.402 0.0 64.4595 4.7711 60.195 69.5588 88.0552 102.3431 71.2213 7.3673 771.7423 362.2267 362.2267 300.4185 47.732 0.0 165.9188 26.1671 154.5501 436.079 98.6646 41.2915 274.1334 9.8914 286.184 142.0875 213.5796 440.6214;
	3.6622 49.4843 93.9376 116.4622 14.4175 17.8675 12.3602 17.0843 27.7814 26.538 49.0552 73.1806 110.1731 12.9971 53.7817 20.262 25.1398 26.6407 0.9019 53.932 4.1201 41.6909 62.5257 89.9034 106.4253 74.4026 7.4325 731.8597 402.5277 402.5277 279.9235 49.761 3.0062 138.8211 40.7475 171.7452 438.6567 80.2445 315.1179 285.0677 11.9915 198.2105 145.4242 247.2559 443.226;
];
