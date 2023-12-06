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
	4.0215 54.3389 94.4595 120.5404 15.2108 34.3093 31.5007 18.9515 12.6255 17.8472 32.9903 49.215 74.093 55.997 204.4557 77.0275 95.5712 101.2769 92.284 73.6501 10.5002 80.0549 23.2202 89.8106 106.0697 73.8565 13.947 1301.2507 816.4912 816.4912 745.7965 121.5832 307.6134 189.5755 175.5581 348.3696 1211.7118 284.003 464.9395 284.1153 120.5023 380.604 209.4069 284.6523 1224.3338;
	3.9829 53.8183 94.9837 120.5404 15.3892 34.3424 32.6244 19.0815 13.49 15.2089 28.1134 41.9396 63.1399 67.3691 199.4801 75.153 93.2453 98.8122 90.8536 73.3957 10.8748 80.1322 28.1566 89.8834 105.7844 74.0128 13.7201 1294.9449 834.3774 834.3774 782.6739 119.1493 302.8453 188.9207 211.2112 356.001 1276.2876 264.8577 475.7776 283.3512 120.9738 380.9714 209.3729 283.5685 1289.5822;
	3.9115 52.8536 93.8127 119.6281 15.4105 34.1824 33.3433 19.0879 24.4429 15.7066 29.0333 43.312 65.206 65.8169 195.9924 73.839 91.6151 97.0846 92.597 73.8926 11.1144 79.7589 27.5626 89.3612 105.2237 74.4886 13.5699 1245.8883 797.5932 797.5932 752.1123 115.9091 308.6567 190.1997 206.3449 340.3065 1244.4359 280.288 469.0687 281.8491 120.184 379.1966 211.2195 271.8825 1257.3988;
	3.9277 53.0713 94.187 119.0978 15.334 34.0519 32.1359 19.1349 28.2236 29.0818 53.7573 80.1953 120.7336 69.1855 201.4999 75.9139 94.1895 99.8127 90.1728 71.2861 10.712 79.4545 23.3059 88.9161 105.3896 74.4536 13.6783 1284.569 798.6917 798.6917 770.8605 116.7034 300.5759 183.4906 216.906 340.7751 1217.5877 303.4203 463.8205 282.2936 121.5152 377.7495 181.1676 277.9444 1230.2709;
	3.4822 47.0521 94.2607 116.4752 15.287 31.1653 31.7576 18.7412 27.8393 29.0773 53.7489 80.1828 120.7148 68.2511 200.0246 75.3581 93.4999 99.0819 89.055 70.5707 10.5859 72.719 71.3735 87.7787 103.3191 71.8477 13.2305 1332.3822 815.9312 815.9312 780.9661 118.3798 296.8499 181.6491 213.9764 348.1307 1197.2107 318.1308 456.8326 276.7477 117.6008 345.7269 182.0375 278.6329 1209.6816;
	3.8087 51.4635 92.9289 114.5039 15.3357 33.061 19.5873 18.3752 26.5741 28.9752 53.5601 79.9012 120.2908 54.8898 200.2887 75.4576 93.6233 99.2128 60.9383 71.5115 6.5291 77.1423 70.7975 86.8369 101.6441 70.765 13.3464 1317.5212 800.9178 800.9178 757.0748 115.2561 203.1278 184.0707 172.087 341.7249 1242.8969 289.5509 461.7081 272.2609 116.5605 366.7568 159.1674 272.8301 1255.8438;
	3.7569 50.764 92.7443 116.1934 15.16 33.0996 13.8546 18.7859 26.9847 28.7065 53.0636 79.1604 119.1756 66.9289 197.8793 74.5499 92.4971 98.0193 81.784 72.3452 4.6182 77.2323 72.4791 86.3266 102.2729 70.9939 13.7264 1291.7751 803.6056 803.6056 741.0161 116.3328 272.6132 186.2167 209.8313 342.8717 1223.8989 287.1039 425.1665 273.9452 122.247 367.1844 171.7722 269.2586 1236.6479;
	3.7743 50.9987 93.952 117.1065 14.8623 32.4503 0.0981 18.6423 1.7408 27.4065 50.6605 75.5755 113.7785 45.2687 196.946 74.1982 92.0608 97.557 82.4989 71.4632 0.0327 75.7174 69.8401 85.1887 99.2808 71.4857 13.6771 1280.2507 777.1137 777.1137 720.6303 119.7389 274.9964 183.9464 141.9236 331.5685 1213.7478 300.1302 164.0391 265.9307 120.7888 359.982 193.7824 271.9603 1226.391;
	3.7586 50.7875 92.5039 117.023 15.3238 31.2414 0.0 18.6066 4.0077 29.6129 54.7391 81.6599 122.9385 26.5805 200.0917 75.3834 93.5312 99.1152 87.9984 73.0313 0.0 72.8966 74.4879 84.5229 101.5343 72.2624 13.6497 1197.3813 686.9767 686.9767 682.6385 113.2149 293.3279 187.9826 83.3335 293.11 1064.9626 283.2889 0.061 271.967 119.1614 346.5711 177.902 271.7201 1076.056;
	3.816 51.5623 93.6744 120.488 15.4061 31.5902 0.9001 18.9312 3.5692 24.8411 45.9184 68.5012 103.1282 24.2234 192.3179 72.4547 89.8974 95.2644 89.3419 71.2485 0.3 73.7104 49.8517 86.9486 104.7558 73.2502 13.7115 970.8006 596.9874 596.9874 530.4291 111.8157 297.8064 183.3937 75.9438 254.7146 820.4347 245.8475 9.9556 280.5959 122.5702 350.4401 155.3525 273.4876 828.9809;
	3.4751 46.9562 90.3842 115.7553 15.0941 25.403 0.1043 18.129 0.0066 27.8942 51.5621 76.9205 115.8034 4.4206 202.3192 76.2226 94.5725 100.2186 83.9933 73.0354 0.0348 59.2736 70.4178 85.7798 101.6058 69.0069 13.3147 826.8229 648.6743 648.6743 465.8971 110.7978 279.9775 187.9934 13.8591 276.7677 776.737 195.6822 0.0 272.1585 117.9115 281.8035 135.5308 255.987 784.828;
	3.4654 46.8257 90.3525 115.3591 15.2643 19.1526 0.0 17.8636 0.0915 26.8481 49.6283 74.0356 111.4602 5.2502 204.3233 76.9776 95.5093 101.2113 42.6637 72.4737 0.0 44.6895 68.648 85.3092 99.0803 69.7423 13.3153 615.5678 699.9063 699.9063 464.8571 111.8127 142.2125 186.5475 16.4601 298.6267 809.0113 203.6927 0.0003 265.3936 120.703 212.4666 134.9332 260.6392 817.4385;
	3.6777 49.6938 90.2367 115.8865 14.9054 20.4831 0.002 17.8212 25.3278 23.1752 42.839 63.9073 96.2121 53.6062 197.3797 74.3616 92.2635 97.7718 59.3151 70.9984 0.0007 47.794 66.212 84.1599 103.0834 69.3134 13.6462 633.992 674.9831 674.9831 461.9184 104.9389 197.7169 182.7501 168.0626 287.9928 601.0067 209.2537 11.7936 276.1162 119.4588 227.2262 135.8556 264.5104 607.2672;
	3.5844 48.4332 90.9162 114.682 14.4404 19.4641 0.7603 18.1692 19.223 22.5701 41.7205 62.2387 93.7001 40.3721 202.7907 76.4002 94.7929 100.4521 55.7311 72.1613 0.2534 45.4163 68.2791 82.1455 100.6925 70.6324 13.8413 517.8906 653.4683 653.4683 433.876 90.9175 185.7705 185.7434 126.5718 278.8131 638.7264 226.1973 43.714 269.7119 119.967 215.9218 150.6684 268.0651 645.3798;
	3.8396 51.8817 91.1511 114.3031 14.7964 19.6929 1.4334 18.1146 1.2405 24.6198 45.5093 67.8909 102.2094 35.0715 201.2867 75.8336 94.0898 99.7071 72.6622 71.1757 0.4778 45.9501 66.1917 84.9711 98.5603 72.04 13.6751 402.3585 672.4989 672.4989 434.7991 87.9767 242.2074 183.2065 109.9538 286.9329 594.9866 241.6021 53.7395 264.0007 118.3192 218.4598 162.3908 250.3566 601.1844;
	3.5161 47.5099 89.7879 117.1133 14.4843 9.4882 0.2485 18.1009 1.6416 26.9786 49.8695 74.3954 112.0019 23.3479 186.0956 70.1105 86.9889 92.1823 63.2853 69.6638 0.0828 22.1392 62.5051 86.7486 99.9127 72.4912 13.6796 397.636 543.9809 543.9809 397.9631 96.0406 210.9508 179.3149 73.1988 232.0985 487.7522 224.5584 2.1927 267.6233 121.3626 105.2563 151.4044 241.0858 492.8329;
	3.1783 42.9455 88.6177 113.5724 14.4885 16.7669 0.0 18.1738 0.0 27.285 50.4358 75.2403 113.2739 16.231 176.7383 66.5851 82.6149 87.5471 65.9264 69.2064 0.0 39.1228 67.6933 85.3756 98.8732 71.1761 13.5848 930.7756 468.1219 468.1219 300.6278 91.8647 219.7547 178.1376 50.8863 199.732 838.4242 229.5893 96.711 264.839 118.2936 186.0009 124.8312 231.8762 847.1578;
	3.1759 42.9127 91.1354 118.1113 14.9392 21.1944 0.9548 18.3008 0.732 28.5669 52.8055 78.7754 118.5959 50.0786 191.899 72.2968 89.7016 95.0569 82.6045 71.6104 0.3183 49.4535 70.1436 84.9653 100.0053 73.0006 13.9351 1175.6469 600.2066 600.2066 238.2689 75.3311 275.3482 184.3254 157.0032 256.0882 1071.9116 220.6265 125.6638 267.8714 121.8432 235.1163 171.4617 262.7519 1083.0773;
	2.36 31.8887 91.772 116.2382 14.7425 33.6617 8.1973 18.9933 2.5872 24.4909 45.2711 67.5356 101.6745 56.7822 192.459 72.5078 89.9634 95.3343 57.4958 70.2994 2.7324 78.544 27.4085 86.3908 103.1251 75.6731 13.9777 1262.567 724.564 724.564 315.9601 62.7939 191.6528 180.9508 178.0199 309.1473 1220.1453 146.483 257.5244 276.228 122.0743 373.4205 171.1912 275.458 1232.8551;
	3.746 50.6173 90.8225 86.0795 15.0541 32.8805 13.0849 18.5654 4.8729 16.3341 30.1934 45.0426 67.8114 63.5112 202.5576 76.3124 94.6839 100.3367 45.8998 72.5673 4.3616 76.7213 25.4671 86.7374 102.7636 75.168 13.8939 1353.5775 780.5116 780.5116 416.1614 57.4529 152.9993 186.7884 199.1162 333.0183 1257.4213 127.473 217.646 275.2597 120.242 364.7548 187.0046 270.033 1270.5194;
	3.8185 51.5966 93.5055 117.274 15.2087 33.3762 13.152 18.4956 7.9964 16.3406 30.2053 45.0604 67.8381 63.4771 203.4676 76.6553 95.1093 100.7875 66.113 72.2605 4.384 77.8777 57.8343 88.7325 103.6793 74.0728 13.7281 1335.2174 728.8057 728.8057 672.4181 54.7629 220.3768 185.9986 199.0092 310.9571 1297.8192 180.3495 227.0778 277.7124 119.3752 370.253 201.5432 278.1768 1311.3381;
	3.8718 52.3163 94.3198 116.3844 15.2376 34.2371 25.341 18.5078 27.8837 30.8794 57.0802 85.1524 128.1965 65.1165 205.4508 77.4024 96.0363 101.7698 70.5538 72.3248 8.447 79.8866 74.0362 89.4365 102.6702 73.8117 13.7466 1338.6322 732.9196 732.9196 599.097 76.4285 235.1795 186.1643 204.149 312.7124 1309.3858 235.812 453.8722 275.0093 120.4029 379.8038 204.2331 275.5763 1323.0252;
	3.8068 51.4383 94.7347 118.737 14.9695 33.9037 18.2068 18.8817 27.6557 30.5836 56.5333 84.3366 126.9683 63.1296 203.5094 76.671 95.1288 100.8081 68.4567 71.5902 6.0689 79.1087 72.1637 88.2862 103.3361 73.2146 13.7639 1347.0751 801.8399 801.8399 691.1513 112.6958 228.189 184.2733 197.9197 342.1184 1317.4855 262.6275 470.263 276.7932 120.7482 376.1052 202.4456 276.7271 1331.2093;
	3.797 51.306 91.9921 116.2198 14.9773 32.8305 30.821 18.2624 27.0828 28.7274 53.1022 79.2181 119.2624 63.7412 200.2618 75.4475 93.6108 99.1995 70.6542 71.1376 10.2737 76.6045 72.4137 84.8621 102.4084 71.9817 13.6343 1316.9653 761.988 761.988 641.2852 104.7335 235.5141 183.1085 199.8374 325.1149 1245.3533 236.7537 458.7431 274.3081 121.2045 364.1996 200.4487 275.9735 1258.3258;
];
