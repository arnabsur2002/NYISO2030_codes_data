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
	3.2532 43.9584 91.2938 117.3872 14.7504 33.1608 31.215 17.765 10.3953 17.2349 31.8584 47.5264 71.5508 59.1232 198.3459 74.7257 92.7152 98.2504 84.4181 68.0944 10.405 77.3751 26.1507 85.4317 100.6412 72.6087 13.4786 1274.5378 790.5408 790.5408 743.108 113.1082 281.3937 175.2751 185.3593 337.2974 1092.6227 262.5937 466.0268 269.5747 119.485 367.8636 212.5954 272.1061 1104.0042;
	3.7025 50.0287 92.2156 115.8923 14.7001 34.2225 31.127 18.1459 12.7593 14.846 27.4426 40.939 61.6334 65.7475 191.2263 72.0434 89.3872 94.7237 85.9123 72.2116 10.3757 79.8526 32.9494 84.942 99.55 71.2462 13.065 1258.5509 784.4038 784.4038 698.5635 110.7951 286.3745 185.8729 206.1274 334.679 1175.5747 243.16 468.1662 266.6517 119.0668 379.6421 211.5236 266.9074 1187.8203;
	3.8235 51.6643 93.2703 115.3851 15.0469 34.8932 32.0235 18.5913 24.1214 16.013 29.5998 44.157 66.4782 63.0889 179.1777 67.5042 83.7552 88.7555 83.3323 72.451 10.6745 81.4174 32.7985 88.0809 103.4589 72.4265 13.1591 1262.0879 786.8045 786.8045 703.9246 113.1607 277.7744 186.489 197.7922 335.7033 1212.0448 269.7741 474.382 277.1221 118.7623 387.0816 215.5635 266.8918 1224.6703;
	3.7782 51.0516 94.0414 117.1955 15.0894 34.9761 31.4947 18.9815 28.0081 29.6364 54.7825 81.7246 123.036 69.0153 200.0549 75.3695 93.514 99.0969 85.8866 70.84 10.4982 81.6108 31.146 88.4166 104.1537 73.5378 13.4577 1270.0329 796.1727 796.1727 696.3094 118.7583 286.2888 182.3424 216.3723 339.7003 1202.2132 295.5862 474.4822 278.9831 117.525 388.0013 188.4 272.8966 1214.7363;
	3.1346 42.3548 92.9355 116.0372 14.724 32.0068 30.2662 18.8595 26.7971 29.1348 53.8553 80.3415 120.9537 67.6766 199.2409 75.0629 93.1336 98.6938 86.3765 71.5037 10.0887 74.6825 72.7632 85.422 101.5078 70.8026 13.5585 1284.6131 789.7864 789.7864 727.3641 121.3419 287.9217 184.0508 212.1754 336.9755 1141.9709 305.9443 451.9527 271.896 116.8056 355.0618 185.4851 266.2831 1153.8664;
	3.727 50.3603 94.3774 117.9623 14.6879 33.8967 17.3616 18.8702 24.7107 28.9047 53.4298 79.7068 119.9981 57.9082 199.7873 75.2687 93.3889 98.9644 57.2041 70.9888 5.7872 79.0923 71.8773 87.3821 105.0063 72.6415 13.9316 1186.7121 786.3625 786.3625 702.4214 118.9706 190.6802 182.7254 181.5499 335.5147 1132.5856 287.7584 447.0308 281.2669 115.4185 376.0272 168.2262 275.4966 1144.3833;
	3.8122 51.5108 94.2864 117.5153 15.0685 34.9346 13.5314 18.6848 25.8612 29.3365 54.2281 80.8977 121.791 67.9746 199.4002 75.1229 93.208 98.7726 81.9216 71.5427 4.5105 81.5141 71.8323 87.9867 103.9756 71.6615 13.9899 1295.988 810.3367 810.3367 681.2324 115.5021 273.0719 184.151 213.1096 345.7437 1182.272 283.6523 436.9201 278.506 118.4893 387.5415 184.2246 276.8368 1194.5873;
	3.8654 52.2297 94.5421 119.5606 15.0217 34.8351 4.1906 17.7998 5.7526 28.7172 53.0833 79.1899 119.2199 47.3864 198.5602 74.8064 92.8153 98.3565 84.5252 71.852 1.3969 81.2818 71.3272 87.3641 100.5421 70.8395 13.4845 1297.2558 793.9079 793.9079 702.7168 118.6092 281.7507 184.9472 148.5628 338.734 1246.0037 294.17 183.1167 269.3091 119.2815 386.4371 205.0388 280.7041 1258.9829;
	3.6927 49.8971 94.1681 118.8654 14.7399 33.0667 3.1878 18.0699 7.9488 29.8451 55.1682 82.3001 123.9024 22.1845 201.3899 75.8725 94.1381 99.7583 87.3306 72.8442 1.0626 77.1557 70.5785 86.2806 100.3183 70.888 13.1225 1145.8912 679.611 679.611 627.5798 107.5915 291.1019 187.5011 69.5513 289.9674 1024.0779 243.3914 93.4891 268.7097 122.2221 366.8204 190.5553 272.2948 1034.7454;
	3.7652 50.8756 93.5331 120.2565 14.7464 31.7951 2.5175 17.8726 1.6935 25.5753 47.2755 70.5258 106.1762 21.2745 195.5403 73.6687 91.4037 96.8607 85.5687 72.9476 0.8392 74.1887 45.3676 86.7607 99.3203 73.0234 13.1418 1025.408 629.9782 629.9782 558.1944 114.4067 285.229 187.7674 66.6983 268.7907 850.9971 244.2064 64.6898 266.0366 121.4937 352.7142 160.7747 280.9128 859.8616;
	3.5997 48.64 93.0331 119.6933 14.4617 27.5652 0.951 17.3591 0.0 29.191 53.9591 80.4963 121.1868 4.7713 195.1194 73.5101 91.207 96.6522 78.7114 71.3795 0.317 64.3189 70.471 86.1924 98.4566 70.1108 13.2458 769.8219 653.227 653.227 488.7805 113.6825 262.3715 183.731 14.9586 278.7102 730.9603 201.4074 2.5948 263.723 118.2851 305.7904 155.17 270.6376 738.5745;
	3.3997 45.9376 91.2497 116.491 14.6386 19.8924 0.2508 17.011 0.0605 26.4847 48.9567 73.0337 109.9518 3.7972 194.9815 73.4581 91.1425 96.5838 31.2186 71.794 0.0836 46.4155 69.4164 85.8635 96.6486 70.6781 12.9707 521.8316 683.7474 683.7474 465.3147 108.9379 104.0621 184.798 11.9049 291.7322 748.7891 194.5191 8.3988 258.88 120.6448 220.6725 137.8372 271.9388 756.589;
	3.6692 49.5792 92.7066 115.1239 14.6334 21.4805 3.4668 17.864 24.9932 23.7887 43.9731 65.5993 98.7593 48.0176 194.4806 73.2694 90.9084 96.3357 55.2413 71.2395 1.1556 50.1211 70.1451 85.3928 101.6283 70.4113 13.4545 615.2624 662.9738 662.9738 468.3413 105.9973 184.1378 183.3706 150.5417 282.8688 602.3478 204.767 39.7721 272.2187 121.6862 238.2902 143.3047 272.9437 608.6223;
	3.5454 47.9058 91.5781 114.095 14.1944 21.0897 2.0043 17.8846 18.237 22.5799 41.7385 62.2657 93.7407 35.2167 198.7151 74.8648 92.8878 98.4333 54.7265 71.8984 0.6681 49.2093 69.9208 82.6913 97.3443 70.2312 13.0912 477.9848 607.9055 607.9055 414.7528 85.6103 182.4217 185.0665 110.4093 259.373 646.3581 208.6643 26.5899 260.7437 123.1621 233.9553 154.9078 269.1388 653.091;
	3.5525 48.0027 91.0956 111.0789 14.572 18.7473 0.5424 17.7588 0.0014 24.4022 45.1071 67.2909 101.3061 25.3019 195.4638 73.6398 91.3679 96.8227 72.3754 71.6464 0.1808 43.7437 68.5198 84.82 98.2968 70.7004 13.1015 305.8982 537.456 537.456 334.9483 75.7821 241.2514 184.4181 79.3249 229.3146 510.2721 205.6044 0.0 263.2949 121.012 207.9702 159.1557 253.9202 515.5875;
	3.3289 44.9812 93.2079 117.0547 14.1571 9.6898 0.0227 18.4736 1.1911 26.5878 49.1472 73.3179 110.3797 9.8812 195.5703 73.68 91.4178 96.8755 69.5926 71.29 0.0076 22.6094 66.8406 87.3264 100.6373 69.8497 13.4307 355.8251 467.1938 467.1938 328.2963 86.367 231.9752 183.5006 30.979 199.336 436.5059 208.643 0.0031 269.5643 123.26 107.4917 153.2174 257.9469 441.0529;
	3.4383 46.4595 92.3745 117.3426 13.956 17.2243 0.0 18.8721 0.0145 28.4914 52.666 78.5673 118.2826 30.1475 182.7398 68.8461 85.4202 90.5199 68.4709 68.9622 0.0 40.1899 69.8367 87.3921 104.658 70.9939 13.7847 971.2979 434.7652 434.7652 271.2913 86.9403 228.2364 177.5089 94.5164 185.4998 802.3934 227.7806 98.6026 280.334 123.8377 191.0744 136.8848 249.1505 810.7517;
	3.2663 44.1354 93.2628 117.2175 14.026 20.1776 1.7264 18.7367 2.1984 28.7642 53.1702 79.3195 119.4151 52.5163 186.4861 70.2575 87.1714 92.3757 74.7161 68.3135 0.5755 47.081 69.8739 86.5909 103.4001 70.9578 13.9366 1191.2691 546.153 546.153 188.8629 60.3479 249.0537 175.839 164.6458 233.0253 1012.5649 214.0731 129.3133 276.9645 123.7275 223.8366 173.3261 263.0223 1023.1124;
	2.3547 31.8173 91.2374 114.7508 14.1275 32.0504 0.0 18.822 0.0 20.741 38.3394 57.1949 86.1065 58.7026 180.3771 67.956 84.3158 89.3496 52.2551 67.6685 0.0 74.7843 29.4791 86.2763 99.4356 72.1996 13.6134 1235.3796 675.6094 675.6094 240.4571 56.8955 174.1836 174.179 184.0407 288.26 1174.7164 147.574 238.4219 266.3455 122.5628 355.5461 151.3179 265.1483 1186.953;
	3.7495 50.664 91.1027 82.8408 14.2131 32.4558 0.0 17.9311 0.2677 13.9538 25.7933 38.4785 57.9292 59.9179 187.8944 70.7881 87.8297 93.0733 40.1129 70.417 0.0 75.7303 42.1101 86.738 100.1848 72.9833 13.4641 1299.7842 712.3049 712.3049 346.093 51.5261 133.7096 181.2535 187.8507 303.9168 1177.0396 121.1263 2.7048 268.3521 121.5804 360.0433 169.0056 263.7563 1189.3004;
	3.6862 49.8085 89.1403 112.1154 13.9586 31.8233 0.0 18.488 0.0 12.0437 22.2625 33.2113 49.9994 46.8823 193.4249 72.8717 90.4149 95.8128 64.1392 69.664 0.0 74.2543 54.4747 84.3588 97.8479 72.556 13.3973 1236.8119 645.796 645.796 534.8555 49.8524 213.7972 179.3153 146.9823 275.5396 1170.7685 155.0063 0.0 262.0925 118.4276 353.0263 174.9961 265.9951 1182.964;
	3.7432 50.5783 91.6081 110.6677 14.2687 32.8941 0.0 17.776 25.7488 28.4527 52.5944 78.4605 118.1218 51.5277 200.8015 75.6508 93.863 99.4668 70.428 68.9462 0.0 76.7528 70.9638 87.438 97.9393 71.397 13.2842 1275.0597 638.8975 638.8975 493.1294 74.7751 234.7602 177.4676 161.5463 272.5963 1206.6894 214.5401 398.6756 262.3373 119.4757 364.905 191.7237 269.0717 1219.2591;
	3.7218 50.2892 90.0864 110.2507 14.2317 31.9635 0.0 18.1013 25.5002 28.514 52.7077 78.6295 118.3762 51.4971 194.3817 73.2322 90.8621 96.2867 70.1171 70.0678 0.0 74.5814 68.7347 85.6092 97.2989 72.4306 13.2568 1264.8845 675.2271 675.2271 545.4956 107.7372 233.7238 180.3546 161.4502 288.0969 1198.3153 231.5413 425.2521 260.6221 114.5871 354.5815 180.1653 270.0938 1210.7978;
	3.8059 51.4258 89.6482 111.1234 14.9552 33.8983 27.5285 17.5018 26.6849 26.0395 48.1337 71.806 108.1036 56.4365 191.6492 72.2027 89.5849 94.9332 75.0095 69.7854 9.1762 79.0961 70.126 84.9596 99.8407 70.5285 12.92 1306.7197 676.5111 676.5111 525.6365 112.1887 250.0318 179.6277 176.9362 288.6448 1186.1937 232.9514 446.5172 267.4304 116.437 376.0454 196.0115 271.5964 1198.5499;
];