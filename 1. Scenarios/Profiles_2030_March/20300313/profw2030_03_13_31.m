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
	0.7627 10.3056 53.148 58.6226 7.0177 0.0 6.9374 7.8452 0.0896 19.9949 36.9602 55.1374 83.009 5.7322 132.458 49.9028 61.9164 65.6129 81.6615 69.2597 2.3125 0.0 67.5166 72.5299 50.3554 39.2364 4.0445 155.2448 321.7294 321.7294 215.7994 45.1066 272.2049 178.2747 17.9712 137.2712 375.3719 93.7065 32.3288 134.8804 62.9108 0.0 3.0882 70.1535 379.2821;
	0.9242 12.4879 53.714 62.7103 7.5673 12.3791 13.8624 11.0862 4.8429 12.7553 23.578 35.1737 52.9538 6.1814 115.1455 43.3804 53.8238 57.0372 80.5263 70.5435 4.6208 28.8847 34.4185 73.1518 54.594 48.9406 6.1018 70.968 224.9809 224.9809 158.6944 30.3332 268.4211 181.5793 19.3796 95.9918 305.6177 99.6125 100.9402 146.234 81.3513 137.326 60.5391 98.9722 308.8012;
	0.4081 5.5141 60.7326 64.9755 5.8489 2.8115 15.0655 11.2622 2.3903 10.6565 19.6983 29.386 44.2404 1.7841 75.1537 28.3137 35.13 37.2273 71.1605 66.6554 5.0218 6.5601 29.289 78.6877 55.6133 47.0534 5.9047 1.353 16.9185 16.9185 80.7511 16.4016 237.2017 171.5711 5.5934 7.2186 162.4764 84.2043 129.9736 148.9641 73.1176 31.1884 31.3533 100.4307 164.1688;
	0.4398 5.9425 65.254 73.5568 8.1487 0.6124 9.2704 12.9603 3.9004 16.3149 30.1579 44.9896 67.7317 0.0 88.5119 33.3463 41.3742 43.8443 55.909 67.9861 3.0901 1.429 52.3552 80.7365 61.3146 57.2146 6.4363 0.0001 5.2246 5.2246 3.5029 16.0702 186.3633 174.9964 0.0 2.2292 2.2788 1.2753 51.8004 164.2354 66.1508 6.7937 20.5705 144.2406 2.3025;
	0.5053 6.828 77.4841 70.0931 9.3131 0.3733 3.8177 13.551 0.0667 15.6283 28.8887 43.0963 64.8812 1.5628 104.2511 39.276 48.7313 51.6407 62.6026 66.9243 1.2726 0.871 48.3361 81.5695 77.1906 62.4401 7.2241 7.8563 0.074 0.074 5.668 5.9046 208.6755 172.2632 4.8995 0.0316 0.0 0.4098 32.4099 206.7606 65.6368 4.1411 10.2786 138.7553 0.0;
	0.4892 6.6102 78.4192 61.5045 9.6417 3.831 0.35 12.0762 0.0 8.5794 15.859 23.6584 35.6177 3.3348 130.5972 49.2017 61.0466 64.6912 84.6208 67.3805 0.1167 8.939 33.6683 72.799 55.4611 62.5759 7.2953 9.0321 1.7098 1.7098 6.2091 5.4438 282.0694 173.4375 10.4551 0.7295 2.7661 0.2605 0.4121 148.5566 51.899 42.4985 24.329 133.4795 2.795;
	0.4097 5.5365 50.0276 35.5311 8.5039 1.3894 3.658 6.6881 1.6927 7.2405 13.384 19.9663 30.0591 0.0 113.8985 42.9106 53.2409 56.4195 72.3366 68.3839 1.2193 3.242 22.3612 23.7187 16.7445 56.8229 3.7194 19.1262 0.9677 0.9677 30.8423 0.0 241.1219 176.0204 0.0 0.4129 6.5444 2.4448 0.0 44.8514 25.1106 15.4134 29.9592 53.4376 6.6126;
	0.4186 5.6558 27.3095 22.0506 3.2384 0.921 4.4084 5.1055 2.0278 5.3678 9.9223 14.8021 22.2845 1.161 49.1585 18.5202 22.9788 24.3506 20.9059 43.8874 1.4695 2.149 13.6844 0.1434 19.501 52.3168 3.6356 8.3812 0.0 0.0 6.8362 0.0 69.6864 112.9663 3.6399 0.0 3.2644 2.3115 0.0 52.2349 10.8592 10.2172 0.0159 9.7073 3.2984;
	0.5275 7.128 20.746 21.7944 3.2843 0.0 0.2923 5.5683 0.0 14.8747 27.4956 41.018 61.7523 4.0375 17.5216 6.6012 8.1903 8.6793 57.6817 18.5262 0.0974 0.0 8.6637 24.1821 21.7257 43.3759 4.3524 6.3707 1.8223 1.8223 13.822 0.11 192.2723 47.6865 12.6581 0.7775 3.8219 1.7667 0.185 58.1937 1.7161 0.0 0.2347 54.383 3.8618;
	0.616 8.3229 30.5393 27.2936 7.2533 1.3656 3.0339 4.8493 1.1314 19.374 35.8125 53.4252 80.4313 35.838 12.7326 4.7969 5.9518 6.3071 38.122 14.9659 1.0113 3.1865 15.0465 33.6533 30.8781 43.9545 3.4079 106.7107 96.0565 96.0565 12.2242 0.8081 127.0734 38.5223 112.357 40.9841 95.3306 5.3506 4.2753 82.7092 27.2109 15.1494 51.6412 84.282 96.3237;
	1.0423 14.0834 41.5931 30.0752 11.1312 3.8821 0.0 3.8261 0.0 9.6408 17.821 26.5854 40.0241 8.1772 113.8192 42.8807 53.2039 56.3802 70.3778 14.2922 0.0 9.0583 34.6578 42.0508 49.332 50.1872 1.4261 52.2067 62.4066 62.4066 1.7209 0.7151 234.5927 36.7882 25.6365 26.6268 63.3235 0.7668 0.0 132.1393 61.4108 43.0659 51.684 96.3488 63.9831;
	1.6363 22.1094 61.1983 24.9088 13.0781 0.1746 0.0 0.539 0.0 5.7291 10.5901 15.7984 23.7844 0.0 51.1369 19.2655 23.9035 25.3306 13.3746 11.5696 0.0 0.4073 54.719 56.3207 50.5131 49.8971 0.3084 125.8782 68.7896 68.7896 0.4568 1.9176 44.582 29.7803 0.0 29.3502 111.3525 1.4598 0.0 135.303 19.5238 1.9366 37.6953 126.9985 112.5125;
	2.2585 30.5169 78.1289 0.6832 14.1154 0.0364 0.21 0.0 0.0 25.0393 46.2848 69.0478 103.951 1.3655 64.0343 24.1245 29.9323 31.7193 24.8414 10.329 0.07 0.085 35.0649 66.1186 70.5881 45.9942 0.0 203.2407 151.3253 151.3253 0.0 1.7566 82.8047 26.5869 4.2811 64.5654 182.9846 0.9751 0.0 189.0753 20.2786 0.4041 111.8036 152.9131 184.8907;
	1.6935 22.8831 0.0 0.0 13.5508 18.146 0.0 0.0 0.0 3.2937 6.0884 9.0827 13.674 2.148 76.5728 28.8484 35.7933 37.9302 22.666 9.6924 0.0 42.3407 45.1882 0.4863 10.8107 20.6742 0.0 175.6802 182.4833 182.4833 0.0406 5.4608 75.5535 24.9483 6.7342 77.8595 183.1787 7.5687 0.0 28.9571 2.2658 201.2996 86.2291 115.7097 185.0868;
	1.954 26.4023 0.018 0.0 8.5868 1.7067 0.0 0.0 0.0 7.5772 14.0064 20.8948 31.457 0.0225 100.4681 37.8508 46.963 49.7668 17.4145 12.5089 0.0 3.9824 29.5935 0.1155 15.58 0.213 0.0 261.3389 210.7227 210.7227 69.5378 6.7736 58.0484 32.1981 0.0706 89.9084 238.4412 11.4641 0.0 41.732 32.8265 18.9333 83.6234 92.1423 240.9249;
	3.0101 40.6733 84.0889 1.1244 13.6975 3.7572 0.0 0.0331 0.0 14.9484 27.6318 41.2212 62.0583 0.0321 81.8541 30.838 38.262 40.5463 28.2081 42.6777 0.0 8.7668 50.1859 9.2077 53.8693 6.4039 0.0198 401.0598 251.1851 251.1851 163.1055 10.9971 94.027 109.8524 0.1007 107.1723 303.506 40.4093 0.0 144.2926 37.2495 41.6797 7.4412 165.7573 306.6676;
	3.3403 45.1346 1.4041 0.0072 13.9611 0.1892 0.0 0.1144 0.2065 8.2275 15.2084 22.688 34.1567 0.0019 46.773 17.6214 21.8636 23.1689 6.0149 38.2697 0.0 0.4416 12.7754 0.5341 39.8221 0.5772 0.2011 375.8877 350.5103 350.5103 168.5385 22.025 20.0496 98.5063 0.006 149.5511 432.4694 67.7626 0.0 106.6662 23.299 2.0993 138.4293 214.5802 436.9742;
	2.7005 36.4899 7.1059 6.1677 13.9772 18.9003 0.0059 0.3317 2.9531 10.5482 19.4981 29.0873 43.7908 0.0 8.7216 3.2858 4.0769 4.3203 1.2835 5.1114 0.002 44.1007 17.6345 2.3091 37.8545 0.8334 0.4192 530.4782 462.1955 462.1955 303.3703 32.0391 4.2782 13.1568 0.0 197.2034 518.7556 94.0676 0.0 101.396 17.0873 209.6674 113.478 215.9185 524.1593;
	3.1672 42.7963 86.3627 15.2418 14.4473 25.4827 0.4351 1.8645 3.0211 9.0341 16.6994 24.9123 37.5053 5.3898 5.0543 1.9042 2.3626 2.5037 3.6302 41.7799 0.145 59.4597 33.3522 26.2143 38.3146 60.3427 3.6895 792.3883 452.4098 452.4098 360.2311 47.3839 12.1006 107.5416 16.8976 193.0282 629.3126 83.0383 0.0 102.6285 80.9943 282.6885 116.3687 199.4017 635.868;
	3.3358 45.0745 19.8955 45.0638 14.4629 4.4577 18.1169 3.6583 26.782 24.52 45.3248 67.6156 101.795 8.8662 117.2812 44.185 54.8222 58.0951 60.8715 23.2805 6.039 10.4012 65.3908 43.6173 65.8625 52.0891 6.3123 736.2282 457.3294 457.3294 341.5931 46.4988 202.9049 59.9241 27.7968 195.1272 570.0493 82.8297 0.0511 176.4173 84.9431 49.4503 113.0948 178.7264 575.9874;
	3.5053 47.364 87.4093 18.8781 14.6815 0.5288 9.6597 1.3746 27.6639 24.9638 46.1453 68.8397 103.6378 10.1582 27.1276 10.2202 12.6806 13.4376 60.5952 32.256 3.2199 1.2339 74.8931 87.7825 45.4838 59.0516 2.6383 647.7246 398.0389 398.0389 243.2777 57.6327 201.984 83.027 31.8474 169.8299 557.904 75.8686 9.7809 121.8315 41.1395 5.8663 105.9999 175.676 563.7155;
	3.5948 48.5736 91.5462 52.0728 14.4187 22.6284 12.9729 15.3122 26.7861 25.3231 46.8095 69.8305 105.1294 14.2902 15.9825 6.0213 7.4709 7.9169 23.0459 48.9859 4.3243 52.7996 60.2602 87.6366 102.9988 70.4067 6.5719 723.6251 318.8573 318.8573 204.4206 61.4487 76.8196 126.0897 44.8018 136.0458 486.2355 98.304 8.5893 275.8895 15.0931 251.0244 8.9437 197.0173 491.3004;
	3.6449 49.2503 92.2784 119.1783 14.3187 24.9314 15.3099 17.904 28.2613 26.1261 48.2937 72.0447 108.4629 10.2925 57.0088 21.4777 26.6483 28.2393 54.0047 66.2143 5.1033 58.1733 70.4185 89.3042 101.9516 72.0092 9.0527 766.9826 324.7582 324.7582 264.8902 47.2914 180.0157 170.4359 32.2683 138.5635 404.3346 89.7906 70.3008 273.0847 14.0797 276.5725 133.6682 192.8013 408.5464;
	3.5583 48.0804 92.3558 116.7166 14.8051 16.2192 14.5044 18.1721 28.1871 27.6336 51.0802 76.2017 114.7212 13.4211 49.6324 18.6987 23.2002 24.5853 18.3173 50.3899 4.8348 37.8448 69.8996 89.43 103.4407 71.9309 7.8517 682.2106 361.5998 361.5998 239.9894 49.2273 61.0575 129.7038 42.0771 154.2826 407.0287 64.5299 322.048 277.0733 15.3918 179.9252 136.6032 223.857 411.2686;
];
