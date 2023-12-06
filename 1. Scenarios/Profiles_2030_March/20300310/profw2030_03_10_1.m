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
	3.7265 50.3532 82.0171 109.4703 14.7964 34.9398 29.9061 5.6726 26.2184 11.752 21.7233 32.4069 48.7884 44.432 177.6623 66.9332 83.0468 88.0048 83.6313 68.0903 9.9687 81.5262 33.5809 18.7779 43.4386 25.3613 3.6473 1197.9182 806.1669 806.1669 607.7058 74.9765 278.7709 175.2645 139.3004 343.9645 1231.0259 204.3108 444.3972 116.3533 113.7783 387.5986 213.6546 117.2093 1243.8491;
	2.8951 39.1188 75.0989 37.1655 14.7635 28.1678 29.5485 6.0553 7.2301 12.7689 23.6032 35.2113 53.0105 43.2802 175.3931 66.0783 81.9861 86.8808 84.0102 69.1865 9.8495 65.7249 30.1411 19.8755 36.0224 26.6832 3.6955 1229.3679 819.1449 819.1449 677.1399 73.459 280.0339 178.0863 135.6892 349.5018 1258.7123 200.9933 454.2904 96.4885 115.5119 312.475 212.4986 100.5574 1271.8239;
	3.1202 42.1604 89.7579 45.1127 14.9285 24.6298 30.5887 5.6169 8.8124 13.0443 24.1123 35.9707 54.1538 37.1992 186.3136 70.1926 87.0908 92.2902 84.4653 64.0621 10.1962 57.4696 30.5762 30.8838 35.7949 27.7267 4.4845 1186.6761 816.4025 816.4025 697.0137 79.8747 281.551 164.8961 116.6246 348.3317 1208.7963 202.5607 455.3766 95.8791 34.2405 273.2271 214.9037 143.8656 1221.3879;
	3.5013 47.3104 85.767 46.7266 15.0845 13.5773 31.4121 7.2786 10.6302 12.7551 23.5775 35.173 52.9528 25.8361 187.6817 70.708 87.7303 92.9679 77.9741 63.9141 10.4707 31.6803 29.4668 25.0576 34.0494 30.4224 5.0524 1221.5841 802.6515 802.6515 718.2274 93.0755 259.9135 164.5151 80.9997 342.4646 1220.8237 234.6491 452.3622 91.2037 35.5168 150.6173 214.9122 122.2784 1233.5406;
	3.6933 49.9045 81.9353 37.0159 14.7469 20.5818 30.0474 7.0618 0.3153 8.2692 15.2855 22.8029 34.3297 29.6797 167.0645 62.9406 78.0929 82.7552 79.581 63.6383 10.0158 48.0241 0.1635 0.0 34.6232 59.1332 5.0628 1224.2251 787.2072 787.2072 746.1365 95.8992 265.2701 163.8053 93.0498 335.8751 1226.1885 246.659 438.7499 92.7407 34.677 228.3202 207.7527 186.8128 1238.9613;
	3.7414 50.5541 93.2338 110.5719 14.8142 32.7384 30.0319 7.3332 1.0926 8.8625 16.3822 24.4391 36.7929 26.8755 179.6751 67.6915 83.9877 89.0018 87.1195 62.5194 10.0106 76.3896 0.9831 14.6904 49.3281 67.8979 5.1314 1137.7108 780.5853 780.5853 706.3121 98.7419 290.3983 160.9251 84.2585 333.0497 1153.5358 230.6268 436.0485 132.1289 68.1987 363.1781 208.9207 239.8618 1165.5518;
	3.9456 53.3137 94.4405 119.3543 15.264 35.3176 30.6714 12.3296 10.6238 11.2506 20.7966 31.0245 46.7071 35.818 192.2093 72.4137 89.8467 95.2106 82.2828 69.3088 10.2238 82.4078 26.665 48.7821 98.985 75.3947 11.1392 1098.608 787.68 787.68 734.8793 98.3229 274.2761 178.4011 112.2942 336.0768 1216.9042 286.2902 448.1495 265.1385 114.5996 391.7904 216.1275 281.0682 1229.5803;
	3.8925 52.5968 93.4828 119.2926 15.1226 35.0899 29.6227 18.9956 10.2922 10.9828 20.3016 30.286 45.5954 60.1686 190.9604 71.9432 89.2629 94.592 79.0322 58.3271 9.8742 81.8765 26.8414 56.641 103.8858 74.7353 13.7637 1104.7635 793.1435 793.1435 739.8122 105.6944 263.4406 150.1342 188.6367 338.4079 1217.8514 294.0899 452.6305 278.2656 122.2496 389.2645 213.9172 281.5897 1230.5374;
	3.8092 51.4705 93.1211 118.1212 14.6904 34.6149 29.5138 18.7555 8.013 11.0074 20.347 30.3537 45.6974 63.0913 194.65 73.3333 90.9876 96.4197 45.3756 63.17 9.8379 80.7682 25.9726 88.0777 104.5503 72.8508 13.9285 925.0749 802.3893 802.3893 741.512 105.3813 151.2518 162.5997 197.7999 342.3528 1221.0225 303.7758 451.1686 280.0455 123.3518 383.9951 207.2717 268.3853 1233.7415;
	3.6755 49.6642 94.0921 120.4381 14.8859 34.5788 29.5608 18.9204 17.8297 11.7609 21.7398 32.4315 48.8255 60.9108 191.1104 71.9997 89.333 94.6663 52.9942 56.7902 9.8536 80.684 25.7105 89.6167 105.6522 74.5372 14.0055 705.2253 823.9254 823.9254 753.8261 94.9305 176.6472 146.1782 190.9634 351.5415 1115.2527 258.5328 451.5335 282.997 121.9565 383.5947 203.3929 278.9909 1126.8699;
	3.647 49.2783 92.282 118.692 14.6969 34.0852 29.6255 18.7776 26.1455 17.1496 31.7009 47.2914 71.197 67.7841 193.5604 72.9228 90.4782 95.8799 33.0008 66.3247 9.8752 79.5321 28.8258 88.6299 104.98 75.5501 13.9677 518.0775 791.9975 791.9975 690.6778 88.8664 110.0027 170.7201 212.5122 337.9189 939.1596 252.1804 440.6142 281.1964 120.0364 378.1185 200.3849 272.9559 948.9425;
	3.2717 44.2072 94.0467 120.45 14.7481 32.7556 29.0003 18.9789 27.3055 22.1037 40.8584 60.9526 91.7638 66.6671 198.1879 74.6662 92.6413 98.1722 52.5861 68.606 9.6668 76.4298 40.6155 89.2884 105.324 76.4623 13.6791 365.6418 814.8431 814.8431 687.7942 92.4245 175.287 176.5919 209.0104 347.6664 808.1195 237.3435 441.9169 282.1179 120.8979 363.3693 195.7212 278.4503 816.5374;
	2.0346 27.4922 95.1534 119.4927 14.3744 20.3579 24.0352 19.1273 26.6468 29.5109 54.5504 81.3784 122.5148 67.0923 199.814 75.2788 93.4014 98.9776 92.121 68.8992 8.0117 47.5018 65.1112 89.7762 105.5599 76.4949 13.9406 328.533 693.3453 693.3453 589.2828 95.0857 307.0699 177.3467 210.3433 295.8273 687.6775 214.7513 365.1347 282.7497 121.5476 225.8373 169.9161 284.3135 694.8408;
	2.1289 28.7657 92.3501 114.1998 14.3484 11.1028 23.9872 18.5323 25.9064 31.1746 57.6258 85.9664 129.4219 66.8241 196.5817 74.061 91.8905 97.3765 91.403 71.099 7.9957 25.9065 74.9412 87.7933 103.844 76.0449 13.3914 326.0731 606.8398 606.8398 576.0644 97.9528 304.6766 183.009 209.5026 258.9183 509.8522 198.7564 417.1658 278.1535 120.6668 123.1669 131.9165 270.8558 515.1632;
	2.1689 29.3063 89.9637 115.0441 12.8517 0.0053 20.8047 18.8779 25.9159 29.0942 53.7803 80.2296 120.7852 67.5758 198.4171 74.7525 92.7484 98.2857 90.6985 70.0763 6.9349 0.0123 72.5385 89.4458 101.4536 75.7319 13.6969 468.4271 498.5957 498.5957 423.908 82.8259 302.3284 180.3765 211.8591 212.7342 448.8488 182.6038 380.1377 271.7508 119.3647 0.0583 113.9949 261.4776 453.5244;
	3.3528 45.3037 91.0327 89.8099 13.9508 24.0669 15.3821 19.0884 21.6453 28.8237 53.2802 79.4835 119.662 54.8789 191.2934 72.0687 89.4185 94.757 89.2644 68.8254 5.1274 56.1562 71.3154 89.8104 105.0353 76.0697 13.7561 517.7882 514.8346 514.8346 405.9777 46.982 297.5479 177.1569 172.0529 219.6628 493.1799 159.2245 407.6 281.3446 121.347 266.9827 83.0626 274.048 498.3172;
	3.4091 46.0646 91.7481 65.8214 14.6623 31.8318 13.2131 19.0936 26.5065 26.8596 49.6495 74.0674 111.508 59.5932 188.1561 70.8867 87.952 93.2029 89.4113 68.7755 4.4044 74.2741 71.6453 88.4397 105.3094 76.3538 13.6598 617.4631 579.4889 579.4889 423.471 30.6051 298.0375 177.0282 186.8326 247.2486 608.3461 122.1668 48.2118 282.0788 120.7315 353.1202 115.7676 270.3679 614.6831;
	3.6357 49.1268 89.3251 63.4037 14.3743 32.3676 27.3276 18.8624 25.9446 11.4146 21.0998 31.4767 47.388 60.7855 167.1869 62.9867 78.1502 82.8158 67.2048 69.8916 9.1092 75.5245 49.9976 88.0449 105.2358 75.1744 13.3327 734.4237 605.8266 605.8266 395.3858 26.6244 224.0159 179.9011 190.5707 258.486 839.4736 85.7327 350.6582 281.8816 123.5306 359.0649 120.9379 258.2149 848.2181;
	3.5557 48.0449 82.3127 5.4215 13.941 29.8406 25.3558 18.4464 24.7627 11.451 21.1671 31.5771 47.5392 60.5192 154.9673 58.383 72.4382 76.7629 45.5645 67.1414 8.4519 69.6281 30.9706 77.1449 98.2511 73.3052 13.1527 989.2844 655.0594 655.0594 439.9772 38.6429 151.8818 172.8223 189.7359 279.492 990.0077 93.1865 377.45 263.1727 116.5954 331.0317 141.7259 191.1663 1000.3203;
	2.8869 39.0084 49.049 12.5833 8.7213 20.2079 0.0 18.6075 23.327 18.8267 34.8008 51.916 78.1592 60.0455 163.5954 61.6336 76.4713 81.0368 41.2773 68.971 0.0 47.1518 42.34 67.5491 94.2651 73.2475 13.1954 1140.0128 575.6103 575.6103 522.6729 57.1997 137.591 177.5317 188.2508 245.5937 1108.4623 125.0501 365.967 252.4959 121.9756 224.1733 133.495 214.5316 1120.0088;
	3.5864 48.46 58.8745 53.7796 13.2464 28.7871 28.0991 18.5795 0.0 20.2096 37.3571 55.7294 83.9003 61.4937 184.8784 69.6519 86.4199 91.5793 61.4611 71.0007 9.3664 67.1699 48.7969 85.3804 100.6991 74.5133 13.2062 1220.5082 719.5702 719.5702 424.6586 71.2068 204.8704 182.7561 192.7911 307.0166 1127.3778 181.5881 419.1025 269.7297 122.8942 319.345 135.444 255.9376 1139.1213;
	3.5009 47.305 30.5783 72.0956 13.0353 28.5138 0.0 18.2313 25.7869 25.2958 46.759 69.7552 105.0161 63.8398 191.2512 72.0528 89.3988 94.736 54.5841 70.9792 0.0 66.5322 50.8269 84.1105 101.434 74.0049 13.4477 1202.8173 698.4619 698.4619 510.2673 82.1565 181.9469 182.7007 200.1464 298.0104 1197.0547 209.6766 436.3685 271.6982 120.0978 316.3133 138.1208 220.1409 1209.5241;
	3.5752 48.3093 55.1817 91.9075 14.0047 29.742 29.1709 18.2622 26.8271 26.6933 49.3422 73.6089 110.8178 64.1071 194.9974 73.4642 91.15 96.5918 54.2797 71.102 9.7236 69.398 45.9327 85.7851 101.9821 74.4325 13.5718 1190.6524 708.0057 708.0057 566.9319 97.6517 180.9323 183.0168 200.9844 302.0824 1141.5276 236.404 449.6637 273.1663 121.1814 329.9379 145.9435 239.1594 1153.4185;
	3.696 49.941 88.0243 108.3782 14.3691 31.5941 28.9375 18.9889 26.7969 28.9904 53.5884 79.9433 120.3542 64.4602 191.8253 72.2691 89.6672 95.0204 42.4526 72.4133 9.6458 73.7195 60.4496 87.4943 104.4826 75.4382 13.7341 1172.521 683.794 683.794 574.0746 105.9728 141.5085 186.3921 202.0913 291.7521 1183.3143 225.4467 454.6966 279.864 122.0233 350.4836 158.7083 269.135 1195.6405;
];
