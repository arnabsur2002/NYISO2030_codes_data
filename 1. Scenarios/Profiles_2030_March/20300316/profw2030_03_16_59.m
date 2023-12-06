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
	3.7159 50.2095 89.948 116.0318 15.2225 32.9321 27.0402 18.2923 26.9786 29.5427 54.6092 81.4662 122.6469 66.2331 194.305 73.2033 90.8263 96.2488 65.6474 70.797 9.0134 76.8417 74.5059 86.7019 104.8225 73.2231 13.2206 1257.7551 754.1405 754.1405 554.7856 107.1315 218.8247 182.2317 207.6497 321.7666 1189.1375 207.1173 436.7732 280.7745 115.8925 365.3272 191.2065 280.8267 1201.5244;
	3.7418 50.5598 91.0851 116.9552 15.1644 32.0203 23.9252 18.0475 26.9039 28.727 53.1015 79.217 119.2607 65.0683 189.223 71.2887 88.4507 93.7314 83.742 72.1662 7.9751 74.714 73.6772 86.883 103.7523 69.9328 13.0882 1265.7322 780.0736 780.0736 616.0554 104.192 279.1401 185.7561 203.998 332.8314 1207.5952 217.5705 431.28 277.9079 116.8626 355.2118 184.8346 272.4262 1220.1744;
	3.6316 49.071 91.718 115.8869 15.0297 32.3304 21.0219 17.7496 26.8733 28.9067 53.4335 79.7123 120.0065 63.4631 195.5276 73.6639 91.3978 96.8543 87.165 70.0855 7.0073 75.4377 71.2051 88.2351 102.9953 73.0366 13.1515 1243.1826 746.9055 746.9055 623.9069 94.2445 290.5501 180.4004 198.9654 318.6797 1210.9767 220.7298 395.8346 275.8802 119.2307 358.6523 186.5363 265.1052 1223.591;
	3.7161 50.2122 91.9109 116.8487 15.0534 31.8181 21.6838 17.5019 27.7426 29.914 55.2955 82.4901 124.1883 63.9742 201.256 75.822 94.0755 99.6919 89.0234 71.169 7.2279 74.2422 73.4831 88.6905 103.174 70.1751 13.1706 1258.3218 754.3955 754.3955 644.9831 102.3493 296.7446 183.1891 200.5678 321.8754 1207.5721 238.4793 402.2185 276.359 120.0384 352.9687 155.3543 271.9689 1220.151;
	3.715 50.1975 93.2387 115.6042 15.0477 32.0766 28.1666 17.5608 26.8104 29.3993 54.3441 81.0707 122.0515 63.2478 204.1618 76.9168 95.4338 101.1313 89.472 72.9518 9.3889 74.8453 74.4287 86.018 101.1245 71.5117 13.1948 1196.9067 761.1536 761.1536 649.5314 107.5228 298.2399 187.778 198.2903 324.7589 1163.8924 241.0319 435.2196 270.8691 117.4262 355.8361 185.2164 272.1865 1176.0163;
	3.6846 49.7864 91.2762 116.3871 14.9385 32.0358 26.9422 18.5373 26.8989 30.1893 55.8044 83.2493 125.3313 60.61 202.483 76.2843 94.649 100.2997 87.875 71.2262 8.9807 74.7502 74.2997 87.5573 102.2446 70.3116 13.4213 1230.5939 757.7353 757.7353 668.3818 110.7876 292.9168 183.3364 190.0207 323.3004 1124.9533 245.8778 428.192 273.8696 119.8778 355.3839 170.1898 275.3432 1136.6716;
	3.4989 47.2776 87.2989 110.8787 14.3498 30.7358 26.9131 17.7957 26.5032 30.1479 55.7279 83.1351 125.1594 62.6549 204.4348 77.0196 95.5614 101.2665 91.5577 72.2231 8.971 71.717 74.0561 83.5602 97.1873 69.6704 12.8985 1219.2315 727.5946 727.5946 698.9372 106.7834 305.1924 185.9024 196.4316 310.4404 1195.9589 287.0403 434.3822 260.3232 113.1113 340.963 142.8926 263.8533 1208.4168;
	3.5819 48.3987 86.668 111.7761 14.6525 32.0882 25.6658 17.1402 26.0766 29.3063 54.1723 80.8143 121.6655 65.1276 203.6304 76.7166 95.1854 100.8681 90.9522 71.3801 8.5553 74.8724 73.0833 85.6328 96.3711 69.4314 12.5216 1266.1152 789.2871 789.2871 714.6162 111.5493 303.1742 183.7325 204.1837 336.7625 1255.5913 286.7998 434.6482 258.1369 108.6093 355.965 160.7866 261.177 1268.6704;
	3.6616 49.4768 89.7335 115.279 14.9444 33.2495 22.4052 17.4442 27.0794 30.3901 56.1756 83.803 126.165 67.0 203.075 76.5073 94.9257 100.5929 92.4006 73.0636 7.4684 77.5821 73.7834 85.5344 97.2727 69.5187 11.9881 1322.3999 800.9715 800.9715 705.3658 113.7322 308.0019 188.066 210.054 341.7478 1308.8832 294.0947 454.1486 260.552 115.4098 368.8474 198.5702 261.1228 1322.5174;
	3.5563 48.0541 90.0692 115.226 14.9648 32.5842 19.993 17.3604 25.7652 28.8022 53.2405 79.4244 119.5729 66.3636 200.3457 75.4791 93.65 99.241 90.9665 72.0234 6.6643 76.0299 71.9652 87.3631 98.2776 69.5697 11.9184 1329.9367 789.2352 789.2352 706.2844 111.4168 303.2216 185.3885 208.0587 336.7403 1268.6152 301.886 434.9437 263.2437 116.3894 361.4678 199.7312 268.1866 1281.83;
	3.7247 50.3282 91.9701 117.5076 15.0065 33.8075 25.4687 18.6311 25.942 30.7783 56.8932 84.8735 127.7766 64.4712 197.6309 74.4563 92.3809 97.8962 91.7012 72.8292 8.4896 78.8842 72.7471 88.0658 101.7594 70.702 13.3458 1330.2981 801.7414 801.7414 732.7195 110.0315 305.6708 187.4624 202.1258 342.0763 1301.738 294.6697 446.8755 272.5699 120.3133 375.0381 205.5881 274.8387 1315.2978;
	3.7063 50.0809 90.6832 118.2088 14.8308 34.1913 25.2568 18.5078 26.8338 30.0859 55.6134 82.9642 124.9022 65.4844 195.1384 73.5172 91.2158 96.6616 90.6513 69.2867 8.4189 79.7797 72.7185 87.6005 103.146 70.7459 13.3684 1330.5052 797.237 797.237 766.5378 113.7747 302.1708 178.3441 205.3025 340.1544 1311.718 296.1469 453.2945 276.2839 120.0771 379.2955 211.058 275.0766 1325.3817;
	3.7098 50.1281 91.1198 115.5914 15.0587 33.5706 25.4952 18.3703 26.435 30.839 57.0055 85.041 128.0288 66.2266 192.3694 72.4741 89.9215 95.29 88.775 68.503 8.4984 78.3313 72.435 85.6896 104.562 72.3933 13.6995 1294.6837 818.1395 818.1395 735.7919 110.3415 295.9168 176.3269 207.6294 349.0729 1321.8527 286.9253 449.2703 280.0767 121.6097 372.4094 212.145 272.9613 1335.622;
	3.7011 50.0106 92.446 116.5502 15.3787 33.5754 23.966 18.4216 26.2579 29.651 54.8094 81.7649 123.0966 65.0435 190.1273 71.6294 88.8735 94.1793 86.6374 69.889 7.9887 78.3426 72.3362 88.6985 103.7823 74.7798 13.8204 1278.6134 814.8647 814.8647 767.1873 113.9568 288.7913 179.8943 203.9201 347.6756 1312.9121 293.6196 436.9351 277.9884 120.5957 372.4632 206.7132 275.5846 1326.5883;
	3.7825 51.1101 91.6201 115.6246 15.3665 33.6049 20.905 18.1119 26.2774 28.3178 52.345 78.0884 117.5617 65.6685 188.2475 70.9211 87.9947 93.2482 85.6052 66.8494 6.9683 78.4115 72.5018 88.1011 100.3486 73.9576 13.7293 1265.7868 798.6947 798.6947 758.3698 113.237 285.3505 172.0707 205.8797 340.7764 1291.3695 303.1856 441.0883 268.791 119.7199 372.7907 203.5821 273.6271 1304.8213;
	3.6849 49.7914 88.5528 110.6878 15.1414 32.5617 18.451 18.0454 26.3363 29.2992 54.1591 80.7948 121.6361 63.2813 188.2549 70.924 87.9982 93.2519 88.2478 68.0926 6.1503 75.9773 69.8172 88.0505 100.3716 74.2218 13.1549 1223.3166 794.735 794.735 727.6827 114.1736 294.1594 175.2705 198.3955 339.0869 1212.7335 309.2084 435.7132 268.8526 117.3336 361.218 197.1402 273.5361 1225.3662;
	3.6488 49.3031 87.2333 109.1212 15.3069 32.2051 19.7388 17.4584 27.4992 29.8928 55.2564 82.4316 124.1003 62.6908 190.2199 71.6642 88.9167 94.2252 84.3226 67.2769 6.5796 75.1453 71.6474 82.7251 97.0336 56.3396 11.9792 1211.8634 781.1624 781.1624 675.9231 111.8311 281.0753 173.1709 196.544 333.2959 1179.3157 305.0726 442.1079 259.9114 112.7885 357.2622 185.9798 252.1179 1191.6002;
	3.6576 49.4229 86.8232 102.9944 15.1466 30.1122 16.8829 12.9594 27.1669 29.2545 54.0765 80.6716 121.4506 63.3588 188.933 71.1794 88.3152 93.5877 84.685 63.3586 5.6276 70.2619 71.4937 81.7506 97.005 67.4362 9.5627 1195.6181 737.2325 737.2325 643.191 103.0536 282.2835 163.0851 198.6383 314.5525 1180.6079 265.4273 442.5154 259.8349 113.3239 334.0451 180.2831 230.0875 1192.9059;
	3.7179 50.2366 82.967 97.0574 15.1519 25.2295 14.7553 8.4179 27.1487 29.0952 53.782 80.2321 120.789 63.121 185.6927 69.9586 86.8005 91.9826 88.3553 64.165 4.9184 58.8689 68.0444 82.8373 96.5357 65.3888 8.8844 1169.9602 730.3466 730.3466 644.4834 104.0876 294.5176 165.1608 197.893 311.6145 1136.6345 297.3655 449.1605 258.5777 115.1721 279.8795 137.604 224.3786 1148.4745;
	2.9168 39.4118 81.2825 61.8257 15.2285 22.6009 24.5945 9.6176 27.4329 29.215 54.0034 80.5624 121.2863 58.1452 184.4351 69.4849 86.2127 91.3597 83.141 60.0027 8.1982 52.7355 68.7627 84.5511 91.0451 50.2011 7.983 1180.6309 748.9522 748.9522 702.1267 106.3952 277.1365 154.4471 182.293 319.5529 1103.7021 298.2709 432.4037 243.8707 113.3241 250.7195 114.7029 199.3857 1115.199;
	2.4074 32.5294 77.766 61.8606 15.2583 12.4922 22.9784 9.4448 27.6363 29.2536 54.0748 80.6689 121.4466 63.3549 180.9375 68.1672 84.5778 89.6272 82.7076 60.2296 7.6595 29.1484 69.516 82.8232 80.5854 54.8825 8.6419 1132.5121 766.8207 766.8207 695.3655 102.9153 275.6919 155.0312 198.6261 327.1768 1113.6294 266.0837 448.0418 215.8538 108.3973 138.5799 83.74 192.4857 1125.2297;
	1.9771 26.7148 77.8556 78.4961 15.0815 15.716 24.8393 10.7258 27.288 27.3911 50.6321 75.5331 113.7147 58.9482 189.6793 71.4606 88.6641 93.9574 85.3355 60.9458 8.2798 36.6708 64.6355 80.7755 94.6794 66.5684 9.4137 1039.6961 741.5746 741.5746 686.7187 102.4783 284.4515 156.8746 184.8105 316.4052 1083.1631 233.3693 447.2594 253.6055 111.2652 174.3433 69.1332 191.7107 1094.4461;
	2.5461 34.4038 77.1825 82.1525 14.1247 16.9956 22.6185 13.1486 26.2737 28.7956 53.2282 79.406 119.5453 57.9856 187.3125 70.5689 87.5577 92.785 87.4851 66.5354 7.5395 39.6564 69.9491 81.8968 90.7488 64.4013 9.0433 843.3229 743.4876 743.4876 697.2323 99.249 291.617 171.2622 181.7928 317.2214 984.1886 239.3772 439.7385 243.0772 114.78 188.538 78.2826 209.0912 994.4405;
	2.782 37.5911 78.6457 70.4543 13.9509 19.7237 18.2077 9.0078 25.0865 27.252 50.3748 75.1493 113.1369 54.4979 164.7894 62.0835 77.0295 81.6282 81.1132 59.0717 6.0692 46.0219 65.1633 80.1134 79.9704 60.6593 5.107 725.26 691.99 691.99 595.343 99.2017 270.3774 152.0507 170.8582 295.2491 862.941 227.4573 413.3048 214.2064 113.5086 218.8012 92.4074 221.0094 871.93;
];
