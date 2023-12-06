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
	3.7124 50.1629 92.1737 112.8118 14.4592 30.6804 27.673 13.7134 27.6107 29.609 54.7318 81.6491 122.9223 64.2537 183.9158 69.2892 85.97 91.1025 87.6582 66.273 9.2243 71.5876 73.3849 84.5478 95.7173 62.1735 9.7677 1148.3914 742.2309 742.2309 751.5686 109.6164 292.194 170.587 201.4442 316.6852 1036.8311 286.3777 454.9054 256.3857 119.2028 340.3477 187.0163 242.2881 1047.6314;
	3.7893 51.2016 89.6624 110.3902 14.4236 31.4974 29.5263 12.9799 28.0491 27.238 50.349 75.1108 113.0789 64.9649 195.5812 73.6841 91.4228 96.8809 89.3486 65.3936 9.8421 73.4939 71.4699 81.6345 94.3196 62.2466 8.7994 1200.1417 777.163 777.163 778.1785 115.408 297.8287 168.3232 203.6737 331.5895 1162.6506 277.9884 467.0047 252.6418 117.3703 349.4108 191.1787 249.7995 1174.7616;
	3.7589 50.7905 91.2772 99.3077 14.6235 31.7345 29.0329 12.1125 28.2589 27.6346 51.0821 76.2044 114.7253 65.2033 191.8408 72.2749 89.6744 95.0281 90.3379 66.908 9.6776 74.0473 69.3352 83.703 83.458 61.5245 9.8023 1240.4542 809.1753 809.1753 785.9083 117.5936 301.1265 172.2213 204.4213 345.2481 1160.9195 283.8727 473.5648 223.5482 117.6522 352.0418 172.6992 256.3782 1173.0124;
	3.6357 49.1258 88.9099 97.1983 14.3171 30.4304 24.2079 11.7547 27.274 27.4334 50.7101 75.6496 113.89 66.1012 200.1301 75.3979 93.5492 99.1342 92.0468 67.5785 8.0693 71.0043 70.0553 80.1939 74.1517 55.25 8.5827 1193.2461 811.6757 811.6757 773.7149 116.5537 306.8225 173.9473 207.2362 346.3149 1150.6787 278.275 451.6896 198.6208 108.3011 337.5749 168.9971 247.5385 1162.665;
	3.6719 49.6149 87.7815 81.0654 14.5189 30.6131 20.2286 9.4637 24.8896 27.809 51.4045 76.6854 115.4494 64.4956 191.8631 72.2833 89.6849 95.0392 90.9726 68.6124 6.7429 71.4307 69.4746 82.4138 65.3858 48.7281 7.5082 1185.002 750.013 750.013 692.2949 108.2327 303.242 176.6084 202.2026 320.0056 1066.3404 255.4624 410.2911 175.1404 113.4365 339.6018 182.879 228.3173 1077.4481;
	3.7841 51.1319 85.0487 77.8375 15.0697 30.4718 18.8734 7.4707 26.4101 29.3025 54.1652 80.8039 121.6498 63.4099 184.2512 69.4156 86.1267 91.2686 90.5988 67.6843 6.2911 71.1009 71.409 81.5354 54.5391 34.6128 6.2769 1163.1778 695.4755 695.4755 612.2699 95.3556 301.9961 174.2196 198.7985 296.7362 1075.9096 219.8546 377.2 146.0867 98.5382 338.0342 179.9493 193.2233 1087.117;
	3.6512 49.3363 74.0759 60.1227 15.1023 28.7127 16.2815 5.7924 21.1352 28.2678 52.2527 77.9507 117.3543 67.4128 184.2703 69.4228 86.1356 91.2781 89.3573 66.9986 5.4272 66.9963 69.2462 68.9266 44.7508 25.2729 4.7454 1194.869 678.8512 678.8512 558.0414 66.1364 297.8576 172.4545 211.3484 289.6432 1076.9434 208.2335 305.6591 119.8682 80.6348 318.5195 155.9245 139.8569 1088.1615;
	3.819 51.6029 75.437 73.0392 15.3733 30.7025 18.5081 6.369 19.4858 25.4744 47.0891 70.2476 105.7574 67.6279 185.8031 70.0002 86.8522 92.0374 90.979 67.5773 6.1694 71.6391 59.1641 82.1818 60.3319 21.4867 4.2935 1232.9549 697.6589 697.6589 611.4805 63.9626 303.2634 173.9442 212.0225 297.6678 1087.3912 210.1631 291.3883 161.6034 87.8846 340.5929 157.0384 166.1882 1098.7182;
	3.2694 44.1768 58.9855 64.2369 15.1239 25.628 17.1406 3.8116 22.4919 23.66 43.7351 65.2441 98.2247 68.2357 167.7225 63.1885 78.4005 83.0811 90.4518 64.5618 5.7135 59.7987 52.6829 75.1091 51.5111 12.4728 2.5961 1266.1972 786.247 786.247 724.6399 83.4972 301.5059 166.1822 213.9281 335.4654 1143.7536 238.0929 269.697 137.9761 60.9185 284.2999 146.1985 156.5294 1155.6677;
	2.9363 39.6761 56.1833 65.4835 15.2351 21.4898 23.804 2.5124 23.3334 19.0689 35.2485 52.5839 79.1647 69.534 165.7104 62.4304 77.46 82.0844 90.9281 65.0388 7.9347 50.1429 43.333 74.2886 39.4657 7.8165 1.3731 1216.0108 828.4174 828.4174 756.7491 106.1814 303.0936 167.4099 217.9984 353.4581 1212.863 237.3912 403.8135 105.7116 50.5441 238.3939 139.2809 137.7094 1225.497;
	2.4384 32.9482 44.7584 48.0601 14.6661 15.4478 21.8746 1.5714 20.6514 15.4343 28.5302 42.5614 64.0759 66.7311 161.8995 60.9947 75.6786 80.1968 90.6807 67.9243 7.2915 36.0449 34.5904 59.9283 27.8469 6.3888 7.414 1188.5462 809.3079 809.3079 748.9003 102.1706 302.269 174.8373 209.2111 345.3047 1143.3018 237.0988 419.2132 74.59 41.954 171.3678 92.2166 103.2347 1155.2112;
	1.757 23.7415 39.338 29.6205 11.4903 11.7965 21.0014 1.4079 19.44 17.587 32.5093 48.4974 73.0126 66.5452 161.6792 60.9117 75.5756 80.0876 89.7045 67.9532 7.0005 27.5251 42.7271 43.9295 23.9581 6.6135 5.2015 1018.542 762.4792 762.4792 646.1892 102.5405 299.0149 174.9118 208.6282 325.3245 1052.3146 192.1228 432.8613 64.1735 33.3222 130.8621 67.7257 85.4104 1063.2762;
	1.1712 15.8252 32.8239 27.3097 9.4411 8.0341 19.7906 2.2142 16.569 14.2926 26.4196 39.4128 59.3358 64.1111 175.7442 66.2106 82.1502 87.0547 87.6419 66.9913 6.5969 18.7463 40.1355 40.8076 24.6795 10.3613 2.6408 997.8274 747.1493 747.1493 637.5616 90.9354 292.1395 172.4359 200.9969 318.7837 1000.339 200.0066 434.5306 66.1059 31.8547 89.125 50.4743 56.9294 1010.7592;
	0.8889 12.011 25.6825 32.9553 8.3672 7.3546 13.4909 2.6834 13.9956 16.8614 31.1681 46.4966 70.0004 65.8598 163.6906 61.6695 76.5158 81.084 86.5967 67.535 4.497 17.1607 53.6383 42.0211 27.6662 10.9176 3.9251 949.2851 702.9757 702.9757 658.0278 94.7208 288.6555 173.8353 206.4793 299.9363 851.907 205.7478 406.267 74.106 30.9529 81.5867 36.0964 57.4274 860.7811;
	0.9131 12.3376 24.7464 57.132 7.3214 7.4703 11.6214 2.2102 13.6552 16.9969 31.4186 46.8703 70.563 65.8455 166.7123 62.8079 77.9283 82.5808 83.4694 69.1634 3.8738 17.4308 54.495 51.9533 25.8475 8.299 3.6606 837.4446 631.8346 631.8346 589.0802 79.4188 278.2314 178.0267 206.4344 269.5828 756.098 200.2579 331.5144 69.2344 29.8498 82.8709 35.2286 54.8295 763.974;
	1.0579 14.2941 19.625 29.7853 8.248 3.3142 6.7137 1.4125 10.4819 14.1718 26.1963 39.0798 58.8344 65.4294 151.1193 56.9333 70.6395 74.8567 79.2239 67.0747 2.2379 7.7331 48.3334 42.7568 22.3099 4.6309 2.3261 835.5624 546.7483 546.7483 545.87 75.8361 264.0795 172.6505 205.1299 233.2793 591.8232 181.2973 239.6709 59.7586 27.3832 36.7651 19.1107 26.0389 597.988;
	0.6048 8.1725 32.0101 45.1682 7.2631 9.2532 5.9553 1.8736 12.5113 17.299 31.977 47.7033 71.8171 65.0386 144.4692 54.4279 67.531 71.5627 82.2312 62.1537 1.9851 21.5907 41.9431 40.8284 16.6961 17.6689 1.7007 817.2772 558.1789 558.1789 569.3547 79.1929 274.1039 159.9838 203.9046 238.1563 702.1944 183.7736 258.0354 44.7218 33.1 102.6486 8.8443 108.3789 709.509;
	1.2233 16.5293 72.8047 79.5007 2.856 18.2301 21.92 3.0508 14.6679 21.1782 39.1475 58.4004 87.9214 64.5325 120.1164 45.2532 56.1475 59.4995 84.9643 55.6982 7.3067 42.537 66.806 39.1239 17.5437 5.3285 1.9633 763.7676 579.3856 579.3856 586.8384 89.6649 283.2144 143.3673 202.3181 247.2045 741.3592 203.9531 355.2889 46.9921 78.0028 202.2331 21.1022 153.4937 749.0817;
	0.5049 6.8229 26.8105 43.6919 0.6753 3.8472 8.3167 2.8799 1.3084 21.4616 39.6715 59.182 89.0982 63.7811 101.1226 38.0974 47.269 50.091 3.0389 59.2008 2.7722 8.9767 57.1658 49.2847 25.0912 11.4123 2.7007 792.5857 521.6383 521.6383 584.4162 81.8379 10.1298 152.3831 199.9625 222.5657 688.8623 191.0691 320.6897 67.2085 95.9862 42.6779 10.2097 131.9321 696.0379;
	0.324 4.3783 31.2971 60.3676 1.987 3.7631 10.0506 3.2026 1.6185 22.9099 42.3486 63.1758 95.1109 60.9705 81.1259 30.5637 37.9216 40.1856 1.6974 59.7561 3.3502 8.7806 52.0402 61.9975 34.1576 21.943 3.1227 663.8359 369.3344 369.3344 528.1834 70.9309 5.658 153.8122 191.1509 157.5827 568.2337 182.162 0.0646 91.4937 96.4574 41.7453 7.6498 56.6431 574.1528;
	0.7102 9.597 44.1056 81.2308 4.8352 1.8603 10.0561 4.7075 1.3401 23.6815 43.7749 65.3036 98.3142 55.8454 102.4823 38.6096 47.9045 50.7645 71.7301 65.0002 3.352 4.3407 59.8081 75.4894 38.5599 14.6515 2.5734 569.6886 348.4433 348.4433 467.0805 56.8753 239.1005 167.3108 175.0829 148.6691 610.746 176.7413 25.2412 103.2854 100.5171 20.6368 8.7687 42.9051 617.1079;
	0.5571 7.5283 46.6156 75.2774 0.0353 1.2531 3.0314 3.1202 2.9516 22.2712 41.1681 61.4147 92.4594 40.0614 118.9921 44.8296 55.6219 58.9426 76.4399 66.6708 1.0105 2.924 68.0672 69.8163 42.5234 15.1674 1.6552 434.3871 340.0743 340.0743 455.7854 52.555 254.7995 171.6108 125.598 145.0984 675.8819 160.9716 77.0242 113.9019 80.5106 13.9014 22.3424 37.606 682.9224;
	0.5895 7.965 42.7452 67.1581 6.3128 2.9498 7.349 3.4114 9.4301 18.066 33.3947 49.8184 75.0013 20.3159 137.0544 51.6345 64.065 67.8898 81.6031 72.0201 2.4497 6.8829 47.4384 65.1025 38.8414 31.434 1.8473 408.4211 386.2934 386.2934 499.7415 57.9836 272.0104 185.3798 63.693 164.8185 510.8619 143.9595 270.6584 104.0395 55.2076 32.7233 11.2748 5.9392 516.1834;
	0.0008 0.0105 50.7946 71.0646 0.0112 0.4606 3.9801 5.5763 9.1485 23.1637 42.8178 63.8757 96.1645 7.4069 145.8213 54.9373 68.163 72.2324 86.3858 69.0165 1.3267 1.0748 69.9358 70.9695 48.3134 36.577 3.157 300.4166 298.1312 298.1312 370.6082 53.5811 287.9527 177.6487 23.2218 127.2026 373.3227 117.1169 147.1316 129.411 54.8143 5.1098 17.2931 57.5361 377.2115;
];