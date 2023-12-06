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
	0.398 5.3774 58.1304 65.7883 6.0335 7.4309 0.0 7.992 0.0 17.5194 32.3844 48.3112 72.7322 2.6733 123.4633 46.5141 57.7119 61.1574 73.6766 61.6628 0.0 17.3388 61.1256 71.5989 51.8513 47.0224 3.7817 107.9052 297.7472 297.7472 196.1086 42.26 245.5885 158.7202 8.3812 127.0388 300.1464 76.9807 4.4841 138.8873 47.6314 82.4337 0.4344 67.8676 303.2729;
	0.1291 1.7444 52.4346 63.1822 4.9638 4.9934 0.0 9.3714 0.0 9.3721 17.3241 25.8442 38.9083 3.9691 99.1122 37.3399 46.3292 49.0951 63.5221 65.3885 0.0 11.6512 17.1213 71.2166 53.2908 45.8967 5.0462 50.6378 188.5491 188.5491 132.8672 28.3871 211.7403 168.3102 12.4438 80.4476 181.4685 82.6024 0.0 142.7431 59.6575 55.3929 0.6759 85.5562 183.3588;
	0.0797 1.0764 61.3117 67.1181 4.3037 1.7936 0.0 10.6151 0.0 8.7092 16.0989 24.0164 36.1565 4.9566 65.9156 24.8333 30.8117 32.6512 51.7038 57.6231 0.0 4.185 19.7732 75.2831 54.8239 46.7325 6.1376 0.0 0.2134 0.2134 0.6983 16.1035 172.3461 148.3221 15.5395 0.091 118.0741 5.2721 17.4577 146.8498 63.0816 19.8966 0.1258 100.1015 119.304;
	0.234 3.1616 70.5662 74.5861 7.5073 1.997 0.0 13.2209 0.094 14.0196 25.9149 38.66 58.2024 2.8817 62.3198 23.4786 29.1309 30.87 37.1065 50.9183 0.0 4.6597 44.6484 82.3168 66.3734 64.8221 7.8871 0.0 0.3059 0.3059 0.0935 16.9285 123.6884 131.0639 9.0345 0.1305 0.0 0.77 15.0566 177.786 66.8035 22.1536 0.0125 143.477 0.0;
	0.3797 5.1301 80.2764 73.0126 9.5035 4.9346 0.0 13.8203 0.4836 14.223 26.2911 39.2211 59.0472 0.1261 97.3945 36.6928 45.5263 48.2443 46.9586 59.302 0.0 11.514 44.6224 83.1142 81.3293 64.9568 8.6027 14.7937 3.0795 3.0795 0.0536 8.303 156.5287 152.6435 0.3953 1.3139 0.041 0.1587 21.2031 217.8463 56.7487 54.7407 0.6053 149.5581 0.0414;
	0.4366 5.8992 80.1892 62.4932 9.7241 4.0463 0.0 12.7608 0.7822 8.0539 14.8875 22.2092 33.4359 0.0 123.6219 46.5738 57.786 61.2359 77.3007 63.4537 0.0 9.4414 33.4731 82.1037 59.7581 65.4517 7.7033 15.6646 2.467 2.467 0.0342 8.9596 257.669 163.3301 0.0 1.0526 4.4463 0.5762 0.4611 160.0664 46.3044 44.8869 21.9339 151.1666 4.4926;
	0.4112 5.5566 57.0362 37.0825 9.3931 2.6054 2.9495 7.3861 1.5457 6.4373 11.8992 17.7513 26.7245 0.0 99.6846 37.5556 46.5967 49.3786 63.593 60.1527 0.9832 6.0792 18.2494 58.1005 34.0824 57.3426 3.336 8.1714 0.1723 0.1723 0.315 0.1534 211.9765 154.8332 0.0 0.0735 0.0077 0.0727 0.1697 91.2921 20.3503 28.9023 27.6241 138.7961 0.0078;
	0.4475 6.047 32.3094 23.5291 3.2986 2.4034 3.8867 6.7781 1.9535 1.4325 2.6479 3.9502 5.947 0.0055 41.842 15.7637 19.5587 20.7264 18.1905 37.3539 1.2956 5.6079 5.2727 36.4193 27.6311 56.0532 4.1597 0.0 1.5001 1.5001 1.7066 0.0784 60.6352 96.149 0.0172 0.64 4.8139 0.1002 0.2187 74.0119 6.7349 26.6617 0.0 107.5914 4.864;
	0.5149 6.9578 25.345 20.8402 3.2573 0.0768 0.0 5.3652 0.3276 0.0001 0.0002 0.0004 0.0005 0.0117 3.0788 1.1599 1.4392 1.5251 6.4864 9.1574 0.0 0.1792 5.5268 34.2249 20.4297 51.3967 3.9697 0.0 1.3932 1.3932 0.3247 0.5984 21.6215 23.5713 0.0366 0.5944 0.6487 0.0 17.4427 54.7225 0.0008 0.8519 0.0 79.1922 0.6554;
	0.594 8.0261 31.4029 26.5954 7.5377 0.3459 0.0 4.2448 2.1157 0.0 0.0 0.0 0.0 0.2362 0.0 0.0 0.0 0.0 2.9037 7.5418 0.0 0.8072 7.6503 40.1704 29.573 43.5859 2.9078 24.115 28.4919 28.4919 0.8097 0.0 9.6789 19.4126 0.7406 12.1565 2.2687 0.0 68.6831 79.2133 0.0036 3.8375 46.2319 97.6913 2.2924;
	0.8793 11.8811 41.4464 9.4248 11.1656 0.1909 0.476 3.4196 2.2002 0.0 0.0 0.0 0.0 0.4098 0.0 0.0 0.0 0.0 1.6327 2.027 0.1587 0.4454 2.187 42.4463 43.7169 43.3586 1.0597 49.2159 68.6257 68.6257 5.913 0.0343 5.4424 5.2176 1.2848 29.2803 56.9427 0.002 162.4235 117.0989 0.0059 2.1173 0.5877 106.1691 57.5358;
	1.6218 21.9145 62.7371 5.1362 13.9196 0.3161 0.6385 0.1317 1.6999 0.0 0.0 0.0 0.0 0.7866 0.0 0.0 0.0 0.0 10.561 1.1811 0.2128 0.7377 33.1293 56.8081 6.6051 41.0031 0.0 99.4898 111.5453 111.5453 14.3481 1.2855 35.2034 3.0401 2.4661 47.5927 110.1152 0.0529 143.7031 17.6923 5.2925 3.5071 0.6482 141.6345 111.2623;
	2.357 31.8478 83.4492 16.8392 14.3215 0.2047 0.4218 0.7075 0.0 21.4954 39.7339 59.2751 89.2383 0.2421 0.0 0.0 0.0 0.0 38.5363 2.6107 0.1406 0.4777 31.1156 68.244 70.7036 51.5761 0.0914 192.4437 173.3723 173.3723 18.7743 3.1849 128.4544 6.72 0.759 73.9722 164.9338 2.2996 86.4824 189.3848 4.4611 2.2712 104.3284 187.9538 166.6518;
	1.8304 24.7327 12.5789 17.86 14.086 19.0145 2.2211 2.3107 4.9104 0.0004 0.0007 0.001 0.0016 4.5944 11.6039 4.3717 5.4242 5.748 33.7291 6.6637 0.7404 44.3672 42.2608 15.5905 22.0387 34.2151 0.3588 134.0964 221.6078 221.6078 28.6936 12.7906 112.4304 17.1525 14.4042 94.5526 177.403 14.1043 120.537 59.0323 19.9646 210.9345 83.2143 147.6783 179.251;
	2.2086 29.8435 8.502 17.3713 9.346 0.0136 0.8285 0.3108 1.2406 0.0187 0.0345 0.0515 0.0775 2.634 0.0 0.0 0.0 0.0 2.3109 0.01 0.2762 0.0318 30.5534 29.4677 36.5201 0.0798 0.245 220.6561 258.2614 258.2614 100.013 8.4864 7.7031 0.0257 8.2579 110.1915 242.1482 22.668 40.3366 97.8216 1.0268 0.1509 80.4652 117.7585 244.6706;
	3.2609 44.062 83.0791 33.7697 13.8565 0.1729 3.5095 1.186 13.3622 5.2876 9.774 14.5809 21.9515 0.169 0.0 0.0 0.0 0.0 1.9806 1.4986 1.1698 0.4034 48.1658 30.667 38.3869 0.2735 0.645 391.9023 284.1151 284.1151 180.6806 13.4788 6.602 3.8574 0.5298 121.2225 305.7067 45.9517 149.8661 102.8221 7.3841 1.9181 2.5185 178.3125 308.8912;
	3.4305 46.3532 14.0818 73.2821 14.0673 0.6579 3.2949 2.4606 3.3284 0.2415 0.4464 0.6659 1.0026 1.1865 0.1641 0.0618 0.0767 0.0813 5.9981 0.618 1.0983 1.535 0.9528 40.9597 65.4112 0.6763 5.5548 378.7247 391.1168 391.1168 201.0536 27.3128 19.9936 1.5907 3.7198 166.8765 458.2192 79.7984 103.0912 175.2087 17.0876 7.2979 125.9211 227.4192 462.9924;
	2.7403 37.0277 24.486 76.8651 14.2408 18.893 4.2768 0.2571 3.3365 0.5527 1.0216 1.5241 2.2945 1.5888 5.314 2.002 2.484 2.6323 2.9603 0.3735 1.4256 44.0837 14.2774 61.5058 56.7678 0.1613 1.0933 579.6283 514.4873 514.4873 344.1909 36.2713 9.8677 0.9613 4.9811 219.5146 564.0546 100.0251 121.7388 152.0566 21.8506 209.5867 112.2857 230.2919 569.9301;
	3.0573 41.3105 85.5452 30.8969 14.5461 24.9444 0.2497 0.2843 0.0 8.0428 14.8671 22.1788 33.39 7.0576 0.0807 0.0304 0.0377 0.04 1.2901 38.121 0.0832 58.2037 29.1606 30.8398 13.5881 56.6338 2.2978 783.3595 479.2978 479.2978 377.9088 48.4525 4.3003 98.1235 22.1264 204.5004 634.2127 78.2376 76.6834 36.3968 18.2874 276.7168 109.2619 217.5278 640.8191;
	3.078 41.5903 21.9146 87.5405 14.5123 0.4188 17.7802 0.2571 26.3706 22.1799 40.9993 61.1629 92.0804 13.0594 7.3108 2.7543 3.4174 3.6214 9.7528 19.743 5.9267 0.9773 61.9772 20.1044 6.6132 49.4362 1.3108 760.2568 479.3535 479.3535 354.4708 48.9586 32.5092 50.8186 40.9429 204.5242 599.3837 82.0071 42.5992 17.714 11.1656 4.6461 111.7401 194.7577 605.6272;
	3.1906 43.1116 86.2788 36.3668 14.3496 0.0035 0.0 1.396 26.2633 23.4424 43.333 64.6443 97.3216 10.1052 23.2725 8.7678 10.8785 11.528 10.2548 29.2225 0.0 0.0083 72.8572 81.5114 8.9886 58.2329 2.7125 663.5638 418.8348 418.8348 270.3833 63.5505 34.1828 75.2187 31.6813 178.7029 594.9023 85.9098 6.4575 24.0766 17.0256 0.0392 104.9712 186.3886 601.0991;
	3.4287 46.3297 86.3528 3.6493 14.4263 19.8224 10.0812 14.0139 25.8675 23.414 43.2804 64.5658 97.2034 10.8227 18.497 6.9687 8.6463 9.1625 6.3232 56.2691 3.3604 46.2523 59.0723 78.9256 92.9997 68.827 5.8974 711.6029 342.1917 342.1917 241.0507 67.8535 21.0772 144.8368 33.9306 146.0018 518.7828 117.2717 0.0 249.1064 14.5019 219.8965 0.0181 187.1884 524.1868;
	3.5749 48.3044 86.7569 111.8892 14.477 24.5219 11.3094 15.6641 25.765 25.4643 47.0704 70.2198 105.7155 8.1801 57.454 21.6455 26.8564 28.4598 20.5109 67.1188 3.7698 57.2177 69.8007 83.1879 94.76 71.6172 7.6682 720.1282 358.144 358.144 311.9915 50.5391 68.3698 172.764 25.6458 152.8081 443.3825 110.1864 0.0 253.8215 9.6539 272.0291 137.0468 197.0155 448.0011;
	3.5797 48.3692 87.648 109.9236 14.7477 16.002 10.314 16.8376 25.9489 26.5783 49.1296 73.2917 110.3403 12.8971 53.29 20.0767 24.91 26.3971 23.7119 51.4438 3.438 37.3381 67.632 83.7469 99.9927 75.0335 7.5988 695.0691 405.3869 405.3869 289.7573 55.4994 79.0395 132.4164 40.4342 172.9651 434.6408 84.7957 290.5048 267.8375 11.4365 177.5159 141.4249 222.981 439.1683;
];
