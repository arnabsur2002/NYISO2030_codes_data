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
	3.5516 47.9894 87.9311 107.2752 14.1893 32.3728 27.922 18.9747 26.9344 30.7469 56.8352 84.7869 127.6463 65.6476 204.1776 76.9227 95.4411 101.1391 41.9115 71.6796 9.3073 75.5366 74.0813 88.1302 102.3892 75.4456 13.9879 1190.3778 700.8565 700.8565 628.7911 105.7508 139.7049 184.5034 205.8142 299.0321 1215.5038 230.9847 462.9378 274.2569 118.4921 359.1224 132.6676 271.826 1228.1653;
	3.5693 48.2292 93.2676 118.5331 14.6939 31.9616 28.7881 19.0973 26.9535 29.9783 55.4144 82.6675 124.4554 63.5719 199.9017 75.3118 93.4424 99.0211 37.5139 72.1062 9.596 74.5771 69.9541 88.2193 102.9455 75.5665 13.8018 1204.1314 706.7225 706.7225 611.9816 107.8336 125.0462 185.6017 199.3065 301.5349 1216.6735 233.4642 454.761 275.7468 118.4579 354.5607 124.3744 279.7778 1229.3472;
	3.2609 44.0625 90.3247 61.0634 14.2081 32.2081 28.1608 18.3775 26.9948 29.1696 53.9196 80.4375 121.0982 63.8102 200.6597 75.5974 93.7968 99.3966 38.438 70.3635 9.3869 75.1523 68.9288 86.5234 100.7244 74.5101 13.7439 1172.2941 688.8077 688.8077 569.9016 108.9194 128.1268 181.1158 200.0537 293.8913 1221.1861 224.9899 439.4824 269.7975 118.063 357.2955 115.672 266.4325 1233.9068;
	3.5569 48.0612 91.5801 82.075 14.6173 33.1448 27.9852 18.8828 27.4041 28.9363 53.4883 79.794 120.1295 64.4717 203.7813 76.7734 95.2559 100.9428 47.2871 72.3351 9.3284 77.3378 63.5774 85.1607 100.3745 76.1269 13.8586 1240.6965 703.9212 703.9212 538.9286 102.2635 157.6236 186.1908 202.1274 300.3397 1160.1993 248.5259 440.9802 268.8603 116.1529 367.686 159.6845 279.5846 1172.2848;
	3.4257 46.2888 94.0979 119.2553 14.6642 33.7027 24.5857 18.9654 27.2375 29.9694 55.398 82.643 124.4185 64.2894 199.2128 75.0522 93.1204 98.6798 78.0708 70.4202 8.1952 78.6396 58.9637 86.0466 102.9347 76.1966 13.8003 1171.5868 660.5342 660.5342 531.8429 97.4693 260.2359 181.2619 201.5559 281.8279 1190.9246 242.4109 440.3905 275.7179 118.1105 373.8753 178.356 279.4113 1203.3301;
	3.7124 50.163 93.3031 120.0894 15.1972 33.7454 27.7256 18.7783 27.2386 31.141 57.5636 85.8736 129.2822 65.6941 204.7665 77.1446 95.7164 101.4308 90.6575 72.9634 9.2419 78.7392 73.277 86.2158 102.6463 75.3359 13.6645 1213.6059 680.171 680.171 501.8244 98.3031 302.1916 187.8079 205.9599 290.2063 1100.6018 219.9798 433.8037 274.9453 113.8511 374.3486 192.5036 275.8786 1112.0664;
	3.6286 49.03 94.3196 119.1381 14.8487 32.7187 29.3881 18.3263 27.6213 31.0163 57.3332 85.5298 128.7647 68.0202 204.277 76.9602 95.4876 101.1884 92.4554 73.2146 9.796 76.3437 73.5332 85.2051 100.1492 76.3744 13.182 1254.707 725.9197 725.9197 551.6453 99.454 308.1848 188.4546 213.2526 309.7257 1142.4322 248.3543 451.1865 268.2569 115.4067 362.9596 192.3507 275.246 1154.3325;
	3.5932 48.5519 93.8357 118.932 15.286 33.3507 28.3477 18.5812 27.5299 31.1406 57.563 85.8726 129.2808 66.461 202.4431 76.2693 94.6304 100.28 88.4669 72.5663 9.4492 77.8182 75.3615 85.265 103.6062 74.952 13.3354 1213.8726 674.7823 674.7823 549.3511 84.5911 294.8897 186.7859 208.3644 287.9071 1108.3372 240.6527 451.5834 277.5165 115.9748 369.9701 192.9531 264.0043 1119.8824;
	3.6764 49.6762 94.5158 120.1945 15.2973 33.9979 29.5601 18.5537 27.8432 31.3083 57.8728 86.3349 129.9767 66.1827 202.9641 76.4655 94.8739 100.538 91.8982 71.6556 9.8534 79.3284 74.4173 85.9307 101.3896 73.9679 13.4553 1225.0751 756.4767 756.4767 598.1127 83.2373 306.3274 184.4418 207.4918 322.7634 1162.4541 274.0706 458.6077 271.5793 117.9983 377.1498 186.3081 270.4978 1174.563;
	3.6223 48.9448 93.6209 116.7696 15.1874 34.0592 29.7405 18.0157 26.9655 30.888 57.096 85.176 128.2319 66.2073 199.0094 74.9756 93.0253 98.5791 91.9265 70.7222 9.9135 79.4715 73.8311 85.7419 98.7375 74.1792 13.078 1208.0531 723.7682 723.7682 659.1324 89.1069 306.4215 182.0392 207.5688 308.8078 1134.7925 298.4292 452.2927 264.4755 117.9279 377.83 166.3021 264.1568 1146.6133;
	3.5804 48.3792 92.7836 114.0351 15.0365 33.3179 27.9769 17.8073 26.7673 30.8088 56.9495 84.9575 127.9031 65.4529 202.7691 76.3921 94.7828 100.4414 92.1623 72.5363 9.3256 77.7419 72.2974 85.0752 98.0286 73.1358 13.0208 1178.1333 755.7876 755.7876 665.326 93.3769 307.2077 186.7087 205.2036 322.4694 1138.7802 306.3883 461.8286 262.5767 117.119 369.607 168.9825 267.5368 1150.6425;
	3.5795 48.3664 89.8958 110.8156 14.8732 33.8741 27.4638 17.3653 27.2319 30.7977 56.9292 84.9271 127.8573 66.8398 201.0811 75.7561 93.9937 99.6053 92.0226 72.5108 9.1546 79.0396 71.934 82.7166 97.3764 72.009 11.7664 1138.7931 736.7222 736.7222 652.3538 97.9635 306.7421 186.643 209.5519 314.3348 1152.5008 295.1664 462.2566 260.8297 115.9397 375.777 182.5794 264.3786 1164.506;
	3.7425 50.5696 90.6773 114.1959 14.719 33.4597 30.0713 17.5264 27.5769 31.3189 57.8925 86.3642 130.0209 68.4345 200.0363 75.3625 93.5054 99.0878 86.6743 72.508 10.0238 78.0727 74.1241 86.4658 100.3186 73.3006 12.0565 1084.7944 745.5143 745.5143 679.5711 100.1591 288.9144 186.6359 214.5515 318.0861 1051.9971 282.6212 472.7045 268.7104 118.4732 371.1799 158.3473 263.5181 1062.9554;
	3.6993 49.9856 88.5161 110.3427 14.453 32.4202 28.9425 17.853 26.6672 31.0225 57.3446 85.5469 128.7903 68.2007 196.7601 74.1282 91.9739 97.4649 87.8217 71.5942 9.6475 75.6472 74.4137 85.9389 97.6726 73.8407 12.8637 1035.3454 698.8941 698.8941 688.3256 98.4579 292.7388 184.2838 213.8185 298.1948 1003.9314 287.7699 464.8029 261.6232 114.7544 359.6484 150.197 264.1598 1014.3891;
	3.7254 50.3388 91.1357 111.349 14.374 32.3824 25.9716 18.2039 26.5475 31.2347 57.7369 86.1322 129.6715 68.3428 192.246 72.4276 89.8638 95.2288 83.8983 71.0068 8.6572 75.5589 75.0965 87.4641 100.4352 74.5372 13.0083 973.6051 654.3782 654.3782 672.1861 97.3642 279.6609 182.7717 214.2638 279.2014 917.8722 308.4216 464.4694 269.0229 114.2153 359.2285 169.6018 259.6442 927.4334;
	3.6018 48.6677 90.7221 114.7921 14.4866 32.2617 26.9517 18.0245 27.249 30.69 56.7301 84.6301 127.4102 68.5268 195.8515 73.7859 91.5492 97.0148 83.8229 71.2603 8.9839 75.2774 74.2548 84.4478 99.6603 75.4664 13.0442 1062.412 696.8531 696.8531 655.896 101.7471 279.4096 183.4243 214.8407 297.324 1021.3656 303.6865 467.2643 266.9471 112.2267 357.8902 173.3686 254.7252 1032.0048;
	3.5059 47.3731 92.3503 116.107 14.8149 32.9572 23.0256 18.1767 26.3019 30.6419 56.641 84.4973 127.2102 66.7312 191.5853 72.1787 89.555 94.9016 88.2707 71.8785 7.6752 76.9002 72.3028 87.1081 100.5937 75.7007 12.1821 1116.4354 684.8269 684.8269 657.7874 103.0845 294.2356 185.0155 209.2113 292.1928 1116.2272 300.0795 446.8101 269.4474 114.0028 365.6057 176.9747 237.3548 1127.8545;
	3.5848 48.4381 92.3838 112.7538 14.5919 31.9299 23.0121 14.3067 26.2246 30.1892 55.8042 83.2489 125.3308 67.5494 195.9326 73.8165 91.5871 97.055 87.0168 72.8275 7.6707 74.5032 70.9343 84.5591 99.3889 71.8612 10.5997 1232.3662 695.5301 695.5301 655.7469 97.993 290.0561 187.4581 211.7766 296.7595 1142.0907 297.2755 445.3506 266.2202 116.0183 354.2093 179.9881 248.7805 1153.9875;
	3.5632 48.147 90.9474 110.7683 15.1605 33.094 26.3037 15.8569 26.4803 30.0687 55.5815 82.9166 124.8305 67.9178 195.5758 73.682 91.4203 96.8782 88.4079 73.2143 8.7679 77.2194 71.9811 85.8625 103.1795 54.2419 11.7998 1254.1656 783.3201 783.3201 652.3078 106.8371 294.6932 188.4538 212.9316 334.2166 1250.9257 294.2566 469.0198 276.3738 113.8749 367.1229 157.5816 231.4718 1263.9561;
	3.6144 48.8385 90.9124 107.6966 14.6712 28.5734 26.037 15.1538 27.0153 29.8236 55.1284 82.2407 123.813 69.1905 185.8267 70.0091 86.8632 92.049 87.4331 70.2701 8.679 66.6714 72.0645 87.0168 101.679 55.7073 10.2676 1293.9676 788.295 788.295 650.0 116.6757 291.4438 180.8753 216.9214 336.3392 1337.3636 281.508 466.2449 272.3545 113.4751 316.9747 176.1247 243.1044 1351.2945;
	3.4679 46.8592 89.7566 106.7851 14.4063 29.8333 28.6678 14.0091 26.4918 29.728 54.9517 81.9772 123.4162 69.1668 185.9532 70.0568 86.9223 92.1117 87.6509 67.9119 9.5559 69.6111 72.2683 84.5859 98.4465 61.5338 8.774 1287.4634 771.2362 771.2362 660.5942 115.196 292.1698 174.8054 216.8471 329.0608 1301.1856 292.0926 457.6514 263.6959 113.5179 330.9513 149.5581 242.8036 1314.7397;
	3.2838 44.3713 87.2876 99.1507 14.53 28.222 24.3442 12.7415 26.1044 29.2435 54.0561 80.6411 121.4048 69.3201 185.8093 70.0026 86.855 92.0404 87.1911 70.9552 8.1147 65.8514 70.4611 83.9397 96.7494 67.1612 8.8269 1289.798 763.6444 763.6444 693.4179 114.0093 290.6371 182.6388 217.328 325.8216 1195.8964 294.6391 457.1602 259.1502 110.3113 313.0763 144.6593 232.4254 1208.3537;
	3.5714 48.2577 91.5925 98.7922 15.0801 29.949 27.8212 11.7764 27.0824 29.3663 54.2831 80.9797 121.9145 68.901 190.2679 71.6823 88.9392 94.249 88.4209 71.6259 9.2737 69.8809 70.3185 86.3745 95.7043 67.1337 8.2504 1261.897 766.2676 766.2676 754.6234 119.2709 294.7362 184.3652 216.0141 326.9408 1238.3815 300.3305 466.154 256.3508 111.105 332.2339 174.5918 223.3129 1251.2813;
	3.8683 52.2687 90.0905 108.5355 15.2264 33.4966 25.1267 11.7797 27.2064 29.5305 54.5866 81.4325 122.5962 67.5527 191.5176 72.1531 89.5233 94.868 87.8454 71.9968 8.3756 78.1587 71.0167 86.7975 97.6159 58.0751 9.4994 1265.5133 758.7789 758.7789 763.5319 114.8537 292.8181 185.32 211.7868 323.7456 1218.5624 292.9241 455.3535 261.4713 117.3219 371.5889 193.3009 215.5078 1231.2557;
];
