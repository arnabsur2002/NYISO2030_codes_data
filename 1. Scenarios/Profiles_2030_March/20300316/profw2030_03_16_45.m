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
	3.886 52.509 91.6247 119.9674 15.0901 34.3738 28.0025 18.3905 26.879 29.4247 54.391 81.1407 122.1569 67.6303 202.6212 76.3364 94.7136 100.3682 79.4874 71.5664 9.3342 80.2056 74.2193 84.4674 101.7691 71.4307 13.318 1266.7157 765.1265 765.1265 556.9748 113.9836 264.9579 184.2121 212.0302 326.454 1237.7737 242.321 458.7134 272.5957 113.8468 381.3204 209.6283 277.0628 1250.6672;
	3.9263 53.053 94.3723 120.6328 15.3908 34.4367 25.3197 18.9539 26.922 30.3808 56.1585 83.7774 126.1264 67.6137 189.1487 71.2607 88.416 93.6946 76.1136 71.0411 8.4399 80.3524 74.5759 88.7689 103.9877 72.85 13.6699 1325.5148 793.93 793.93 641.0207 110.8952 253.7119 182.86 211.9782 338.7435 1281.9419 244.4965 459.0916 278.5385 116.7883 382.0183 206.3004 282.8872 1295.2955;
	3.9056 52.7731 94.5135 118.945 15.411 34.7477 21.2158 18.9256 27.5193 31.318 57.8908 86.3616 130.017 65.1045 191.746 72.2392 89.6301 94.9811 79.1618 70.6356 7.0719 81.0781 75.6549 89.0337 104.8012 76.1444 13.8542 1278.7925 760.8606 760.8606 643.0788 108.4974 263.8725 181.8163 204.1116 324.6339 1253.2314 236.1607 437.2854 280.7174 117.7405 385.4682 201.8385 280.2574 1266.2859;
	3.8899 52.5608 92.9124 118.4963 15.1488 33.8379 21.6119 18.6791 27.0261 30.8353 56.9987 85.0308 128.0134 65.5252 190.6588 71.8296 89.1219 94.4426 84.3398 69.4126 7.204 78.9551 74.525 88.383 101.1218 73.2079 13.2425 1271.4422 768.961 768.961 633.7538 104.5953 281.1326 178.6682 205.4302 328.09 1248.4756 259.3849 419.1873 270.8619 116.3868 375.375 156.0353 278.5482 1261.4805;
	3.9063 52.7829 93.7009 115.1368 15.2308 34.1779 29.5145 18.7282 27.3987 30.9446 57.2006 85.3321 128.467 67.1899 191.5988 72.1837 89.5613 94.9082 78.9015 71.2356 9.8382 79.7485 74.4272 87.7453 103.8803 74.3768 13.1698 1259.5276 769.4085 769.4085 662.0002 111.2648 263.0049 183.3606 210.6495 328.2809 1250.1829 263.8582 449.198 278.2509 116.8468 379.1471 193.6001 275.4765 1263.2057;
	3.8845 52.4875 90.1082 111.7867 15.3155 33.9746 28.5196 18.5701 27.8648 30.9785 57.2632 85.4255 128.6076 68.7984 197.2687 74.3198 92.2116 97.7168 85.1074 71.7752 9.5065 79.274 75.3321 86.2217 101.1801 74.3936 13.3678 1298.8807 787.2029 787.2029 712.9579 114.7008 283.6913 184.7497 215.6922 335.8732 1259.8285 264.8096 449.7998 271.0181 113.5632 376.8913 185.3766 278.75 1272.9517;
	3.8067 51.4368 88.7181 113.0986 15.2625 33.7264 30.2975 18.2846 27.2772 30.3004 56.0099 83.5557 125.7927 69.2341 195.2208 73.5483 91.2544 96.7024 85.2394 72.7548 10.0992 78.6949 72.8962 85.2286 100.1259 72.8263 13.4773 1327.324 792.4744 792.4744 731.4561 112.4785 284.1315 187.2709 217.0583 338.1224 1296.5203 301.3234 450.1631 268.1944 117.2653 374.138 162.8269 266.866 1310.0257;
	3.8958 52.6413 89.5134 116.5428 15.2689 34.6672 29.7916 18.5942 27.0654 29.4363 54.4126 81.1728 122.2052 69.6639 197.2024 74.2949 92.1807 97.684 85.1545 72.3976 9.9305 80.8902 72.0715 87.8423 103.3182 73.9254 13.5419 1345.7273 812.0386 812.0386 764.193 116.6501 283.8485 186.3517 218.4057 346.4698 1353.607 314.8255 447.112 276.7452 115.4264 384.5753 183.0779 276.6071 1367.707;
	3.9256 53.0436 92.8761 118.389 15.4239 34.9299 31.721 18.7033 27.3725 30.9473 57.2056 85.3395 128.4782 69.9324 194.454 73.2594 90.896 96.3226 88.079 70.8089 10.5737 81.5032 73.742 88.5515 106.1045 74.623 13.3794 1337.4847 802.5768 802.5768 785.9196 119.6575 293.5968 182.2622 219.2474 342.4328 1335.5705 328.1777 473.1225 284.2084 118.5723 387.4894 213.3235 281.6449 1349.4827;
	3.9242 53.0251 94.1487 117.9033 15.4229 34.8952 27.1389 18.3528 27.3936 30.9049 57.1272 85.2226 128.3022 69.8848 192.7707 72.6252 90.1091 95.4887 85.5268 69.5551 9.0463 81.4221 75.0195 89.7646 105.6095 74.5349 13.3144 1280.8669 821.4877 821.4877 771.8086 119.4022 285.0893 179.0351 219.0982 350.5014 1276.4626 337.2673 474.9956 282.8825 117.0211 387.1039 217.7375 272.1739 1289.7591;
	3.9171 52.9287 94.1437 118.6569 15.4231 34.6673 27.6991 18.7166 27.0799 30.905 57.1275 85.223 128.3027 68.4451 196.5702 74.0567 91.8852 97.3708 88.434 72.0362 9.233 80.8903 74.5685 90.1025 106.2815 76.0069 13.5189 1257.6602 801.7619 801.7619 776.8691 120.4847 294.7801 185.4213 214.5847 342.0851 1260.211 325.9126 467.2396 284.6826 117.785 384.5757 213.957 279.7436 1273.3382;
	3.8752 52.3629 91.6083 116.9614 15.4143 34.5441 25.5471 18.5841 27.1633 30.2964 56.0025 83.5447 125.7761 67.8342 197.661 74.4676 92.395 97.9111 91.2911 71.7943 8.5157 80.603 74.6098 89.7169 105.9064 75.082 13.3943 1277.9937 809.6189 809.6189 777.1489 122.2463 304.3037 184.7987 212.6695 345.4374 1274.6114 334.7494 463.7488 283.6778 121.059 383.2095 211.3704 278.6424 1287.8886;
	3.8909 52.5747 92.0021 117.0564 15.3947 34.7506 28.715 18.923 27.9845 30.5974 56.5588 84.3745 127.0254 68.9937 202.4096 76.2566 94.6147 100.2634 89.8556 71.3598 9.5717 81.0847 75.2481 89.0853 106.2228 76.0267 13.6263 1286.3842 829.2445 829.2445 755.4934 120.2101 299.5186 183.6803 216.3047 353.811 1305.4763 340.8652 477.4307 284.5252 123.1955 385.5 216.8296 272.3596 1319.075;
	3.7406 50.5432 93.3775 119.2981 15.2605 34.2623 27.3214 18.849 27.4278 29.5465 54.6163 81.4768 122.6629 67.2692 203.4223 76.6382 95.0881 100.765 90.2314 73.7434 9.1071 79.9453 74.008 89.1631 105.4024 75.1444 13.727 1256.3594 789.0941 789.0941 746.0127 120.2669 300.7713 189.8157 210.898 336.6801 1247.4978 333.4224 467.6904 282.3278 121.4979 380.0826 204.159 275.586 1260.4926;
	3.7805 51.0825 91.8065 117.4028 15.159 34.1799 22.8602 18.0966 27.0823 29.0876 53.768 80.2113 120.7577 67.0873 198.403 74.7472 92.7419 98.2787 89.8882 73.4966 7.6201 79.7532 74.3972 87.6305 101.5528 72.9967 13.6377 1287.8182 779.5885 779.5885 735.1973 117.4825 299.6273 189.1805 210.3279 332.6244 1263.4234 340.6067 463.7891 272.0165 119.9337 379.1694 207.0585 274.6048 1276.5841;
	3.6789 49.7098 90.063 117.4116 14.9298 33.2411 25.2818 18.507 27.5197 29.2912 54.1443 80.7727 121.6028 69.2031 194.5788 73.3064 90.9543 96.3844 87.2628 71.9079 8.4273 77.5626 72.782 87.9531 101.4189 73.9747 13.66 1274.5869 784.4838 784.4838 754.1723 118.0554 290.8761 185.0912 216.9612 334.7131 1223.7623 333.2545 469.9322 271.6579 120.2938 368.755 194.7456 273.5964 1236.5098;
	3.7009 50.0079 92.6586 114.3477 14.8307 31.0595 21.9995 18.3687 27.3609 29.9677 55.3948 82.6381 124.4112 68.7782 203.177 76.5458 94.9734 100.6435 85.9413 72.0599 7.3332 72.4722 73.4627 89.1862 103.245 64.4917 12.9626 1252.8151 757.1866 757.1866 675.9099 115.179 286.4709 185.4824 215.6289 323.0663 1203.1677 323.0065 445.8082 276.5491 116.9972 344.5538 166.4034 264.9619 1215.7007;
	3.7346 50.4622 94.4664 113.5644 15.2079 29.5166 18.7656 14.0216 27.1404 28.9092 53.4382 79.7193 120.017 69.0067 189.2484 71.2982 88.4626 93.744 82.9483 68.6208 6.2552 68.872 73.9031 90.1253 104.5678 72.8575 10.2429 1191.1268 693.8529 693.8529 594.9659 106.7391 276.4942 176.6301 216.3452 296.0439 1160.7371 277.2834 440.1565 280.0924 117.7323 327.4371 150.243 252.7695 1172.8281;
	3.7521 50.6995 86.7978 102.6429 14.5771 24.5368 15.6735 8.333 26.6908 29.0928 53.7776 80.2257 120.7793 69.1618 181.5092 68.3826 84.845 89.9104 83.3151 67.2621 5.2245 57.2524 71.8591 87.3431 97.4948 65.4034 8.8497 1217.8077 704.0918 704.0918 615.4433 106.6339 277.717 173.1329 216.8317 300.4125 1109.499 292.5683 442.4058 261.1468 116.5278 272.1945 118.6138 233.909 1121.0562;
	3.0319 40.968 82.5712 67.734 15.0931 21.5837 25.201 9.9865 26.6799 29.142 53.8685 80.3613 120.9834 69.3429 189.0559 71.2257 88.3727 93.6486 80.168 67.1178 8.4003 50.3619 73.0436 89.6304 94.8781 51.1583 8.0713 1271.8509 738.1731 738.1731 674.6701 102.829 267.2266 172.7615 217.3995 314.9538 1090.7057 292.5549 430.4011 254.1378 118.9052 239.4349 96.9977 211.4844 1102.0672;
	2.4967 33.7362 82.8023 71.1115 14.8027 11.9332 23.7842 9.8581 26.5574 29.8593 55.1945 82.3394 123.9615 66.6507 183.7446 69.2247 85.8899 91.0177 75.1661 66.8627 7.9281 27.8442 71.9341 89.0807 83.4268 57.0436 9.1918 1255.1111 731.1882 731.1882 659.3367 101.4312 250.5538 172.1047 208.9589 311.9736 1094.482 260.0252 432.1686 223.4646 111.2079 132.3794 64.7144 203.548 1105.8828;
	2.0937 28.29 79.7593 82.3229 14.6235 16.2188 25.21 11.8229 26.5385 29.5014 54.5328 81.3523 122.4754 66.3095 183.4464 69.1124 85.7505 90.87 74.3123 62.3632 8.4033 37.8439 70.7686 86.9423 95.6296 70.0431 10.1799 1190.0744 714.0514 714.0514 662.5887 104.8959 247.7077 160.5231 207.8893 304.6619 1044.2005 242.5695 442.895 256.1508 112.8738 179.9205 55.2881 199.8958 1055.0775;
	2.8909 39.062 78.9288 85.8104 14.2993 19.1985 24.7701 14.6996 27.3067 29.793 55.0719 82.1564 123.6861 65.4153 170.5284 64.2456 79.7121 84.471 74.1879 64.8263 8.2567 44.7965 72.8602 86.6472 93.7101 67.7208 10.1539 1069.6753 755.4249 755.4249 705.0572 104.2684 247.2931 166.8632 205.0859 322.3146 1069.926 253.7648 456.5773 251.0092 116.6933 212.9754 73.4851 221.6303 1081.0711;
	3.1217 42.1809 86.0811 79.1175 14.4533 23.9735 21.7793 11.0576 27.7833 29.0779 53.75 80.1845 120.7173 65.0791 160.7014 60.5433 75.1185 79.6032 72.6298 63.6488 7.2598 55.9382 69.1142 88.3005 87.2753 61.813 7.4748 920.6235 689.8252 689.8252 615.8202 102.569 242.0992 163.8323 204.0319 294.3254 897.5801 234.2418 449.5897 233.7732 118.8438 265.946 95.1173 235.0314 906.9299;
];
