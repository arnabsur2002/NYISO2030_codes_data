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
	0.7642 10.3258 57.738 68.2479 7.0947 0.3581 7.0233 9.4963 15.0183 20.1841 37.31 55.6591 83.7945 1.5369 148.7511 56.0411 69.5325 73.6837 71.6964 72.3046 2.3411 0.8356 69.2314 79.5109 54.5202 49.3366 4.5216 222.2523 324.8518 324.8518 228.3591 40.7296 238.9879 186.1122 4.8183 138.6034 396.1234 81.2659 130.247 146.0362 65.825 3.9727 0.0105 75.8552 400.2497;
	0.4936 6.6701 54.5089 64.4995 6.4684 0.0218 13.9367 12.3407 3.3326 10.8423 20.0418 29.8984 45.0119 0.0168 120.9149 45.554 56.5207 59.8951 68.6154 68.9324 4.6456 0.0509 28.599 77.3207 57.8514 55.4434 6.3297 153.4874 229.6478 229.6478 167.6509 29.8718 228.7181 177.4322 0.0527 97.9831 322.4804 86.5302 89.8435 154.9592 76.03 0.2418 0.0 98.3552 325.8396;
	0.3009 4.0655 62.789 71.3935 5.0451 0.0 3.2 12.5523 3.9369 9.8874 18.2766 27.2651 41.0475 0.0 82.752 31.1763 38.6817 40.9911 50.5748 68.1769 1.0667 0.0 26.4573 81.9353 60.9828 59.5419 6.7183 8.7021 9.5914 9.5914 57.2075 16.5163 168.5828 175.4875 0.0 4.0923 165.0097 2.7576 61.5079 163.3469 71.9774 0.0 0.0 100.2455 166.7286;
	0.4124 5.5722 70.7783 76.0752 8.0592 0.0 4.9361 14.373 2.3075 15.5547 28.7526 42.8932 64.5755 0.2079 95.6893 36.0504 44.7292 47.3996 42.838 68.0354 1.6454 0.0 47.5552 84.1741 65.3116 69.6961 7.6512 1.5104 3.7099 3.7099 43.7924 18.3253 142.7934 175.1232 0.6519 1.5829 1.2262 3.5367 82.067 174.9419 68.392 0.0 0.0 142.8449 1.2389;
	0.4477 6.0488 81.8776 75.4464 9.1973 0.0 4.0142 14.1798 0.5734 14.9582 27.65 41.2483 62.0992 3.7743 130.0153 48.9825 60.7746 64.4029 54.6834 66.676 1.3381 0.0 41.2608 86.1511 80.4092 72.8642 8.537 26.6558 0.0 0.0 46.0674 10.8908 182.278 171.6241 11.8331 0.0 12.0315 11.5624 45.6351 215.3818 60.3997 0.0 0.0 158.661 12.1568;
	0.462 6.243 81.7794 61.1551 9.7963 3.2063 1.9509 12.263 0.0 7.4148 13.7061 20.4468 30.7825 3.5133 148.5958 55.9826 69.4599 73.6068 81.2294 67.0325 0.6503 7.4814 28.126 83.5674 59.1644 71.4399 7.8012 39.4747 5.2583 5.2583 219.1886 10.8732 270.7647 172.5418 11.0147 2.2436 41.1541 5.0798 0.0 158.4759 53.3737 35.5689 13.4703 158.3959 41.5828;
	0.4715 6.3706 59.7622 39.0903 9.4131 2.717 4.1683 7.8458 1.7295 4.929 9.1113 13.5922 20.463 10.9726 128.324 48.3453 59.984 63.5651 64.8715 67.1408 1.3894 6.3398 20.2116 60.1249 37.1696 66.5842 4.3277 320.7502 37.9024 37.9024 275.2257 5.0771 216.2383 172.8206 34.4006 16.1717 105.3015 25.4605 11.4412 99.5614 29.0258 30.141 23.0489 148.5237 106.3984;
	0.5158 6.9701 35.9958 27.1567 4.327 2.6965 4.8903 7.2748 1.9084 3.9683 7.3354 10.943 16.4746 33.5107 71.0092 26.7523 33.1927 35.1743 20.3381 48.6103 1.6301 6.2918 11.959 39.8043 37.9073 64.8135 4.5185 124.3199 77.5126 77.5126 378.7131 13.6897 67.7936 125.1231 105.0607 33.072 62.5074 62.0992 63.8918 101.5375 11.6808 29.9128 0.0573 105.8821 63.1585;
	0.6458 8.7256 28.8565 26.3464 4.4974 3.4127 2.8067 6.0007 0.0 0.0 0.0 0.0 0.0 17.2694 17.9839 6.7753 8.4064 8.9083 19.3109 14.8137 0.9356 7.9629 3.1696 38.4919 30.7945 54.7782 4.6096 298.1847 144.9119 144.9119 309.482 15.7559 64.3698 38.1304 54.1417 61.8291 151.0511 53.4233 88.3714 82.4852 11.5297 37.8579 5.6979 77.3552 152.6246;
	0.4685 6.3305 32.6953 24.9039 7.9294 0.0 0.066 4.6118 0.0153 0.0 0.0 0.0 0.0 20.7203 8.8534 3.3355 4.1384 4.3855 30.6137 6.8609 0.022 0.0 6.6263 37.9375 30.5324 45.5317 3.1642 44.2789 82.4345 82.4345 67.4537 1.3354 102.0457 17.6599 64.9611 35.172 21.8728 5.9588 81.5806 81.7832 4.0934 0.0 36.2092 85.3839 22.1006;
	0.7057 9.5349 43.2576 3.4678 11.1667 0.0 0.0 4.0278 0.0422 0.0 0.0 0.0 0.0 3.5097 20.9756 7.9024 9.8049 10.3902 7.6391 9.9451 0.0 0.0 2.4383 44.1602 47.3075 53.7386 1.4627 106.6584 78.3633 78.3633 104.6004 0.3447 25.4636 25.5988 11.0035 33.435 87.8212 2.4941 1.7207 126.7165 15.9944 0.0 0.0 100.6653 88.736;
	1.5697 21.2102 62.6059 24.0625 13.955 0.4839 6.2118 1.8893 10.8397 0.0 0.0 0.0 0.0 5.6097 42.917 16.1687 20.0612 21.2589 23.1212 8.97 2.0706 1.1291 40.3512 57.4916 10.8248 47.524 0.9349 205.1168 125.4704 125.4704 213.8416 3.8403 77.0706 23.0887 17.5872 53.5341 159.5816 12.296 39.3568 28.9949 17.0804 5.3682 0.0061 136.4572 161.2439;
	2.1711 29.3366 81.2845 5.4373 14.4754 2.0994 3.7618 1.6091 7.2401 22.5526 41.6881 62.1904 93.6273 3.8894 4.4515 1.6771 2.0808 2.205 0.0 5.9558 1.2539 4.8987 27.8421 71.1999 69.7211 57.3081 0.4534 260.7563 191.3227 191.3227 139.4453 3.1198 0.0 15.3302 12.1938 81.631 222.4066 18.8379 24.3453 186.753 6.3016 23.2898 99.5326 172.6941 224.7233;
	1.727 23.336 0.1676 0.8337 14.0211 18.7669 0.0 0.575 1.1973 0.0 0.0 0.0 0.0 0.0798 21.4285 8.0731 10.0166 10.6146 4.9736 7.8348 0.0 43.7895 20.0029 9.6115 2.9376 31.5737 0.0203 220.095 217.6151 217.6151 56.3522 3.422 16.5786 20.1667 0.2502 92.8491 197.1343 9.2124 21.5458 7.8686 12.2819 208.1879 75.1106 134.8294 199.1877;
	1.9166 25.8978 0.0007 0.045 9.4215 1.5601 0.0069 0.0334 2.0162 0.0599 0.1108 0.1653 0.2489 0.9535 4.4654 1.6823 2.0873 2.212 11.7725 2.2826 0.0023 3.6403 3.303 0.8637 0.6274 24.852 0.0 284.7507 264.7136 264.7136 96.504 3.1729 39.2417 5.8753 2.9892 112.9445 258.1079 13.3827 73.297 1.6806 7.0083 17.3071 81.1678 107.5775 260.7965;
	2.7458 37.1022 77.8118 0.1336 13.5972 2.4126 1.9507 0.0026 0.0 0.0 0.0 0.0 0.0 2.4708 1.087 0.4095 0.5081 0.5384 0.0521 0.0767 0.6502 5.6294 20.6984 0.3135 3.6996 1.3023 0.0003 413.2047 287.8565 287.8565 180.6814 4.208 0.1735 0.1974 7.7464 122.8188 321.2286 38.4647 105.4538 9.9097 8.426 26.7639 4.4648 172.5991 324.5747;
	2.9658 40.074 3.7196 5.1913 14.2069 0.1332 0.2968 0.002 0.0 0.0 0.0 0.0 0.0 1.2547 10.1138 3.8103 4.7276 5.0099 0.0013 0.445 0.0989 0.3108 0.0 4.8273 3.2618 6.6536 0.0 344.3128 375.5638 375.5638 179.1153 11.5346 0.0044 1.1453 3.9338 160.2406 422.5777 62.2546 28.6011 8.7369 2.0136 1.4776 132.7496 213.7697 426.9795;
	2.6729 36.1172 15.732 27.369 14.6443 19.2702 0.199 1.9328 5.5911 0.0 0.0 0.0 0.0 2.2882 16.134 6.0784 7.5417 7.9919 0.1197 15.2865 0.0663 44.9639 5.1096 11.6248 3.4359 41.6457 0.0009 533.9646 505.445 505.445 329.7357 33.1748 0.3989 39.3476 7.1738 215.6565 539.8093 95.7321 2.2017 9.2034 0.4809 213.771 109.1322 213.3853 545.4323;
	3.0737 41.5319 88.5713 19.0786 15.2015 25.2666 2.9202 0.8064 25.7646 8.1602 15.0839 22.5022 33.877 5.7563 17.8236 6.7149 8.3315 8.8289 2.8516 44.5496 0.9734 58.9555 27.3764 18.1589 1.6231 64.9379 0.0 718.3417 475.3448 475.3448 367.4498 37.3421 9.5052 114.6709 18.0467 202.8138 627.5176 76.3466 163.1626 4.3477 0.0793 280.2912 107.0867 201.1733 634.0542;
	3.0402 41.0802 22.1654 10.7546 15.2236 1.0805 18.5589 0.2343 27.81 21.2912 39.3565 58.7121 88.3908 3.6143 3.4472 1.2987 1.6114 1.7076 3.504 21.9616 6.1863 2.5212 58.8441 17.8011 2.5347 57.151 0.0 758.9098 487.1071 487.1071 363.8231 46.1864 11.6801 56.5293 11.3314 207.8324 582.3315 80.4028 64.5553 6.7894 0.243 11.9864 107.9517 170.2147 588.3974;
	3.0744 41.5418 86.7073 0.1382 15.011 0.0426 0.0296 0.2755 26.7112 20.8281 38.5003 57.4349 86.468 5.5353 21.8295 8.2241 10.204 10.8132 4.3529 31.3494 0.0099 0.0994 68.8895 83.3249 0.0 61.6009 0.0 594.4404 387.9259 387.9259 246.76 58.5022 14.5097 80.6933 17.3539 165.515 514.5034 76.9216 2.9892 0.0 0.518 0.4727 96.0583 167.5393 519.8629;
	3.3929 45.8456 87.3409 0.0 14.9965 22.1077 10.9431 13.8672 26.5462 24.1859 44.7072 66.6944 100.408 6.2519 34.2264 12.8946 15.9989 16.954 8.2777 57.8761 3.6477 51.5847 59.388 81.4273 90.6735 74.3754 5.0297 705.4071 324.9504 324.9504 221.0219 66.0832 27.5924 148.9733 19.6005 138.6455 486.8032 103.1853 15.8753 242.8753 11.8612 245.2482 0.0 186.151 491.874;
	3.1613 42.7164 86.6079 109.9779 14.5908 23.0791 12.6365 15.3114 26.499 25.1711 46.5285 69.4113 104.4984 4.79 47.7277 17.9811 22.3099 23.6419 7.6389 63.8395 4.2122 53.8513 65.2892 81.5408 84.7609 70.2537 3.2708 697.3057 342.6273 342.6273 291.4093 49.9623 25.4629 164.3231 15.0173 146.1877 408.575 102.1495 67.2983 227.038 3.5195 256.0243 116.2554 170.7149 412.831;
	2.6233 35.4459 86.1014 102.3387 14.1185 15.171 10.074 16.4591 25.9951 25.7784 47.651 71.0859 107.0194 9.6545 48.1335 18.134 22.4996 23.8429 2.0535 52.7357 3.358 35.399 63.156 82.2895 96.903 70.5811 4.8806 643.6198 363.7845 363.7845 254.9844 52.4899 6.8451 135.7418 30.2681 155.2147 398.9278 79.4829 309.5725 259.5616 8.4553 168.2971 115.3523 198.6367 403.0833;
];
