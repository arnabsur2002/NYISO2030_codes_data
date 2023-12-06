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
	3.6069 48.7376 84.5851 94.9463 14.3389 30.2359 27.3948 10.7348 26.5711 28.3594 52.422 78.2032 117.7345 63.4506 160.7703 60.5693 75.1508 79.6374 82.3808 67.0722 9.1316 70.5504 72.0426 82.2095 86.1731 58.9398 6.5724 1138.7577 712.9344 712.9344 690.9798 111.89 274.6028 172.6439 198.9262 304.1854 1062.5385 291.8978 443.6072 230.8208 111.7263 335.417 186.084 219.6885 1073.6066;
	3.6856 49.801 84.1366 96.6643 14.3292 31.2141 26.1699 10.8303 27.0822 26.7693 49.4826 73.8184 111.1331 66.1096 169.7802 63.9637 79.3624 84.1004 72.1545 67.6592 8.7233 72.8329 73.003 83.442 86.0356 57.7302 7.501 1133.1168 728.5424 728.5424 688.637 110.6883 240.5149 174.155 207.2625 310.8448 1110.2434 258.0016 449.5087 230.4526 108.6299 346.2687 198.4678 224.8344 1121.8085;
	3.6818 49.7493 85.5859 86.6751 14.3909 31.8193 25.4213 9.607 27.0176 26.5489 49.0753 73.2106 110.2182 65.0031 177.1572 66.7429 82.8107 87.7546 84.3776 67.3437 8.4738 74.245 69.5161 85.6036 79.7692 55.1003 7.9401 1124.1684 726.3074 726.3074 716.935 110.7599 281.2587 173.3428 203.7935 309.8912 1026.0529 258.7083 447.8211 213.6676 108.7916 352.982 174.7401 236.2484 1036.7409;
	3.6195 48.9079 87.7345 92.413 14.2385 31.1737 23.2458 10.4712 27.3734 25.97 48.0052 71.6143 107.8149 62.7917 169.6395 63.9107 79.2966 84.0308 80.6902 67.9815 7.7486 72.7385 68.4037 86.2038 78.185 51.1972 7.874 1127.2633 745.2174 745.2174 689.0485 112.2652 268.9675 174.9846 196.8603 317.9594 1085.0679 250.9983 432.9795 209.424 99.2656 345.8198 170.0688 235.2961 1096.3707;
	3.5754 48.3118 83.2675 75.8003 14.0402 30.3023 20.2168 8.3957 23.1394 25.3889 46.931 70.0118 105.4023 65.8359 169.0238 63.6787 79.0088 83.7257 76.2406 68.1249 6.7389 70.7055 68.8697 85.891 66.3102 45.8073 6.9133 1107.134 730.5545 730.5545 665.4815 105.603 254.1353 175.3538 206.4046 311.7032 990.8246 238.2705 392.4692 177.6167 96.5018 336.154 186.7861 207.0022 1001.1457;
	3.5649 48.1692 82.1831 72.6466 14.0878 27.7513 18.2421 7.4721 24.9002 26.3121 48.6375 72.5576 109.2351 65.0931 168.2165 63.3746 78.6314 83.3258 84.2586 66.7973 6.0807 64.753 67.1413 86.2739 56.8021 33.6879 5.9679 1110.2043 667.1022 667.1022 599.9988 84.9169 280.8619 171.9365 204.0756 284.6303 1010.1546 209.0374 359.4187 152.1484 95.799 307.8541 172.3721 176.5157 1020.6771;
	3.168 42.8068 65.2334 44.2926 13.0238 23.7683 16.5656 5.5644 18.573 23.9105 44.1982 65.935 99.2647 67.8288 165.3483 62.294 77.2907 81.9051 84.9816 66.9185 5.5219 55.4594 59.138 75.0628 44.3214 21.655 4.6746 1176.4524 637.9409 637.9409 521.6414 55.3526 283.2721 172.2484 212.6524 272.1881 1004.6942 187.8281 298.8041 118.7181 74.1593 263.6699 139.8061 112.0693 1015.1597;
	3.6995 49.9879 66.9972 47.5639 14.182 26.2739 16.4133 5.0697 15.4209 22.3973 41.4011 61.7623 92.9829 67.1323 172.0405 64.8153 80.4189 85.2201 83.7544 66.5728 5.4711 61.3058 49.6527 79.4373 52.3797 17.5723 3.4703 1215.4483 650.6628 650.6628 606.3063 61.5399 279.1814 171.3585 210.469 277.6161 1010.0475 200.7679 269.5099 140.3028 77.2768 291.4653 147.4753 132.8023 1020.5688;
	2.9845 40.327 56.6467 52.3882 14.1014 23.0838 16.0802 3.8933 20.6885 21.3892 39.5376 58.9824 88.7976 67.2848 149.8621 56.4597 70.0518 74.234 73.0771 66.8653 5.3601 53.8621 47.1735 82.2442 53.8265 14.8713 2.5814 1174.5975 737.4198 737.4198 677.4857 85.5271 243.5902 172.1115 210.9468 314.6324 1007.0539 225.7015 265.7118 144.1781 59.5029 256.076 131.94 154.9459 1017.544;
	2.681 36.226 47.0068 55.5107 14.2877 18.6548 20.5494 2.0446 21.6258 18.2128 33.6662 50.2233 75.6109 65.3635 130.4475 49.1453 60.9766 64.617 74.5388 63.2999 6.8498 43.5278 29.981 66.8209 35.073 7.4831 1.0889 1141.4265 725.7897 725.7897 668.3233 105.4914 248.4626 162.934 204.9235 309.6703 1082.2447 226.2125 363.8871 93.9456 42.7268 206.9437 125.8103 123.5802 1093.5181;
	2.2267 30.088 36.5443 42.9312 13.5553 14.5192 20.4882 1.0755 20.6549 14.5411 26.879 40.0982 60.3676 66.3854 141.4012 53.2721 66.0968 70.0429 79.9675 65.5653 6.8294 33.8782 16.3874 54.0459 21.7064 6.4337 0.7628 1106.6318 746.6257 746.6257 687.1497 107.7992 266.5585 168.7652 208.1271 318.5603 1020.9278 239.2565 385.9474 58.1421 33.3941 161.0667 90.8163 91.7795 1031.5625;
	1.6146 21.8174 27.9603 26.1886 9.6276 11.2084 21.2411 1.1298 18.4948 15.2204 28.1347 41.9714 63.1878 65.1809 145.5918 54.8509 68.0557 72.1187 79.5938 67.2152 7.0804 26.153 28.5413 37.675 19.719 7.0039 0.729 934.533 681.0112 681.0112 668.2666 105.3562 265.3127 173.0122 204.351 290.5648 924.2699 209.9592 403.313 52.8189 23.6406 124.3388 67.3811 74.3075 933.8977;
	1.1557 15.616 24.9956 25.7406 8.5025 8.0436 19.5474 1.9825 16.4405 13.2986 24.5822 36.6719 55.2093 62.9982 143.3654 54.0121 67.015 71.0159 75.0184 66.7088 6.5158 18.7683 34.4105 37.0386 23.8588 11.4482 2.4264 910.8435 720.1114 720.1114 671.7412 100.9106 250.0614 171.7087 197.5079 307.2475 945.2231 220.6293 416.0668 63.9076 25.3653 89.23 48.9692 48.3184 955.0692;
	0.9281 12.5409 23.2486 32.3293 7.2724 7.8671 14.3161 2.3616 13.0488 15.9288 29.4441 43.9247 66.1284 64.8809 150.8417 56.8287 70.5097 74.7193 80.3833 64.3889 4.772 18.3565 31.0624 39.6937 27.2368 11.6536 3.3436 894.2053 684.8293 684.8293 689.1355 100.8162 267.9444 165.7372 203.4105 292.1938 826.9901 223.2381 394.7947 72.9557 27.0328 87.2719 42.4901 54.5883 835.6045;
	1.0381 14.027 23.2582 51.3554 6.8818 8.5681 11.4749 1.9965 12.7133 16.4086 30.331 45.2479 68.1205 64.1738 137.981 51.9835 64.4981 68.3487 64.4719 62.4328 3.825 19.9922 49.8645 49.5996 27.4434 6.8674 3.2884 811.0671 636.1787 636.1787 614.1894 85.6183 214.9063 160.7023 201.1935 271.4362 770.9548 207.3504 324.5601 73.5092 29.4563 95.0485 39.82 53.4398 778.9855;
	1.0577 14.2921 17.9461 31.3684 7.7284 3.9763 5.4776 1.4446 9.1388 15.4657 28.5881 42.6478 64.2061 63.9812 129.278 48.7047 60.4299 64.0377 66.1081 59.6422 1.8259 9.278 52.9377 49.7339 26.9044 4.5762 2.4312 774.293 527.2347 527.2347 539.3715 78.6243 220.3603 153.519 200.5897 224.9535 602.7596 194.8232 219.3258 72.0653 27.53 44.1104 4.9128 21.2183 609.0383;
	0.657 8.8772 1.7426 4.1033 7.0112 7.2743 4.4362 2.3362 11.4567 18.665 34.502 51.4702 77.4881 62.8025 155.5608 58.6066 72.7156 77.0569 73.0326 62.692 1.4787 16.9733 52.8451 43.7708 17.4701 10.3042 1.8525 708.4597 534.3827 534.3827 593.8791 78.1642 243.442 161.3693 196.8942 228.0033 702.6169 202.4024 238.43 46.7948 34.2663 80.6958 12.1466 18.6283 709.9358;
	1.0581 14.2978 0.2285 0.1671 2.4176 1.3202 3.9626 0.6429 2.2068 19.3415 35.7525 53.3357 80.2967 63.6296 103.9424 39.1597 48.587 51.4877 75.6819 40.3823 1.3209 3.0804 62.966 38.345 15.6847 4.9212 1.813 633.9927 515.7503 515.7503 623.3456 90.0496 252.2731 103.9441 199.4875 220.0535 675.9503 215.021 326.0829 42.0125 69.5542 14.6451 0.0473 9.6409 682.9914;
	0.4892 6.6107 22.5945 35.8781 0.0369 0.0081 1.5756 1.9554 0.928 21.604 39.9347 59.5747 89.6894 64.742 99.8035 37.6004 46.6523 49.4376 1.6461 43.8742 0.5252 0.0189 51.2586 48.4873 22.5121 8.6943 2.2717 739.7737 487.8795 487.8795 645.0522 87.7591 5.4869 112.9324 202.975 208.1619 642.3584 203.4788 317.8012 60.3002 83.3279 0.09 0.0 2.9283 649.0496;
	0.3236 4.3732 30.5846 54.8146 2.5935 0.3013 0.0 3.0402 1.9572 24.4513 45.1978 67.4263 101.5099 60.6215 79.6117 29.9933 37.2139 39.4356 0.1133 56.399 0.0 0.7031 63.5124 67.6335 35.0475 21.7076 3.0244 616.0281 339.8306 339.8306 609.3477 70.9827 0.3777 145.1712 190.0565 144.9944 545.1312 197.6266 0.7825 93.8773 85.4511 3.3426 0.0 41.4182 550.8096;
	0.6313 8.5305 44.0841 73.5234 5.8706 0.0 0.0 4.387 2.4834 24.919 46.0624 68.716 103.4515 53.3138 109.3196 41.1855 51.1005 54.1513 80.1051 67.0876 0.0 0.0 69.091 82.456 39.3491 15.1132 2.6127 502.343 325.669 325.669 510.3164 53.5991 267.0172 172.6835 167.1459 138.9521 560.0068 186.9061 0.0 105.3994 88.3335 0.0 0.0 46.0139 565.8402;
	0.4875 6.5877 42.9468 65.112 3.9147 0.0 0.0 2.6371 1.519 23.1621 42.8149 63.8714 96.158 38.5628 144.1266 54.2988 67.3708 71.3929 82.0269 67.7885 0.0 0.0 69.3197 74.4592 39.4385 16.5066 1.3996 369.7192 334.504 334.504 468.5667 45.5101 273.4231 174.4878 120.8997 142.7217 632.5073 159.4509 0.0 105.6389 73.651 0.0 0.0 39.3794 639.0959;
	0.6191 8.3652 40.7036 59.9674 7.8466 0.0 0.0 3.2685 5.6879 19.9177 36.8175 54.9245 82.6886 21.2309 144.2428 54.3426 67.4251 71.4505 85.1912 69.2041 0.0 0.0 49.1407 68.1805 38.4834 31.3647 1.757 336.5642 380.8799 380.8799 520.0514 53.7597 283.9708 178.1316 66.5616 162.5088 472.7057 147.0962 10.0612 103.0806 64.5736 0.0 0.0 149.5831 477.6297;
	0.2801 3.7851 47.7777 60.4026 2.9593 0.0 0.0 5.4748 10.4092 23.4793 43.4011 64.7459 97.4746 7.3896 159.9713 60.2683 74.7773 79.2416 86.4944 70.0829 0.0 0.0 73.6967 72.7013 46.3944 36.854 3.0721 299.7298 307.3917 307.3917 398.5863 51.2494 288.3147 180.3936 23.1674 131.1538 376.6506 121.1158 14.704 124.2707 65.0953 0.0 0.0 66.1802 380.574;
];
