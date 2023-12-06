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
	3.6876 49.8279 90.2965 108.1953 14.9394 32.3773 28.76 12.7449 27.7223 27.7897 51.3689 76.6323 115.3696 62.9697 187.7009 70.7152 87.7393 92.9774 85.083 67.593 9.5867 75.5471 70.4556 86.8994 96.6698 65.4624 9.0301 1255.8717 752.4707 752.4707 693.9379 105.8429 283.6099 173.9847 197.4184 321.0542 1092.3682 271.825 454.4887 258.9371 118.7439 359.1727 202.7918 235.4771 1103.747;
	3.6326 49.0849 89.1766 108.1675 14.7429 31.7417 27.4318 12.0481 27.8434 24.4087 45.1191 67.3088 101.333 62.931 184.7719 69.6117 86.3701 91.5265 83.8822 62.5158 9.1439 74.064 68.1838 85.7387 96.9662 66.5825 8.2874 1203.3928 784.4233 784.4233 731.0479 105.9124 279.6074 160.9158 197.2971 334.6873 1158.6777 260.829 455.3303 259.7309 115.0897 352.1212 203.7811 237.8731 1170.7472;
	3.6474 49.2845 89.205 98.111 15.0126 32.5291 24.5392 10.2084 26.9862 21.754 40.2119 59.9883 90.3121 62.5007 183.4205 69.1026 85.7384 90.8571 83.5291 64.0471 8.1797 75.9013 63.9781 84.4393 84.2591 61.1872 8.649 1237.3676 786.399 786.399 730.6459 107.1042 278.4304 164.8574 195.948 335.5303 1133.4525 261.4596 447.2068 225.6939 112.4508 360.8563 202.6788 237.9397 1145.2593;
	3.7519 50.6962 87.2964 97.6421 14.8378 33.057 21.2068 9.992 25.947 18.6004 34.3826 51.292 77.2199 48.8988 168.2157 63.3743 78.6311 83.3255 84.2235 60.2183 7.0689 77.133 47.6008 81.9138 75.6388 54.5241 7.9266 1148.3415 772.7331 772.7331 721.9798 101.1133 280.7451 155.002 153.3044 329.6995 1079.748 240.3667 404.5381 202.604 107.004 366.7125 201.8327 236.1242 1090.9953;
	3.7871 51.1724 87.3104 85.6979 15.1554 32.9105 18.7745 9.5304 23.5114 25.5856 47.2947 70.5544 106.2192 55.5351 186.4318 70.2371 87.1461 92.3488 88.4647 66.7819 6.2582 76.7911 59.1417 86.1783 71.7104 52.9689 8.0387 1213.592 774.2526 774.2526 720.7031 100.6048 294.8825 171.8968 174.11 330.3478 1083.8242 240.9243 381.851 192.0814 107.0899 365.0869 209.6749 221.793 1095.1141;
	3.7132 50.1733 83.2778 77.3558 14.3323 30.2696 16.4161 6.8015 22.0489 26.8521 49.6357 74.0468 111.477 46.905 180.4643 67.9889 84.3566 89.3928 87.2601 66.7955 5.472 70.6292 58.269 85.1648 54.3669 33.769 5.5856 1142.8711 706.3903 706.3903 638.3004 85.3968 290.8671 171.9319 147.0536 301.3932 1071.3205 218.9773 322.5902 145.6257 94.4582 335.7912 194.234 177.11 1082.4801;
	3.4636 46.8003 73.309 64.8306 14.3325 29.3655 14.8222 4.4632 16.9141 25.7944 47.6806 71.1301 107.086 58.6523 185.7814 69.9921 86.842 92.0266 87.0091 67.3723 4.9407 68.5194 58.4442 78.9159 43.0419 18.8145 3.8376 1162.6888 656.4313 656.4313 542.6154 61.758 290.0304 173.4165 183.8829 280.0774 1058.4027 202.1306 257.5203 115.2909 76.5204 325.761 162.7074 110.8113 1069.4277;
	3.5904 48.5137 71.1992 71.2223 14.5986 28.4834 14.9388 5.0283 11.5625 21.7509 40.2063 59.9798 90.2993 63.9904 177.3793 66.8266 82.9145 87.8646 85.17 66.1299 4.9796 66.4614 35.695 81.5566 51.8597 19.9611 3.553 1217.3517 668.6822 668.6822 646.3003 63.8916 283.8999 170.2184 200.6184 285.3044 1104.3935 214.5063 210.4413 138.9098 80.24 315.9763 153.9096 133.0111 1115.8976;
	3.2221 43.5381 60.0232 69.7732 14.7172 25.8647 15.2948 3.4101 16.3182 20.393 37.6962 56.2354 84.662 64.7564 185.2404 69.7883 86.5891 91.7586 86.5823 67.2663 5.0983 60.351 36.0277 80.3668 52.9409 11.1108 2.6296 1194.7435 772.4221 772.4221 774.6667 87.8838 288.6076 173.1437 203.0202 329.5668 1103.9654 240.2291 227.466 141.806 59.1725 286.9259 154.3522 148.9337 1115.4651;
	3.054 41.2668 49.526 66.5658 14.5802 21.2971 20.0936 2.0918 20.4478 18.7246 34.6121 51.6344 77.7353 65.1809 178.9547 67.4201 83.6509 88.645 90.9602 67.5637 6.6979 49.6933 43.6153 64.9292 35.0775 6.0904 1.3411 1154.524 804.2246 804.2246 780.5677 104.7238 303.2008 173.9091 204.351 343.1358 1186.3458 236.4699 368.0899 93.9577 48.2012 236.2561 149.9093 123.3952 1198.7035;
	2.366 31.9695 35.4859 46.613 13.6394 15.3555 20.3729 0.8526 19.1443 15.4072 28.4801 42.4866 63.9634 66.0064 175.3612 66.0663 81.9711 86.8649 88.6747 69.4595 6.791 35.8296 32.2409 41.0578 18.6829 4.0347 0.9383 1153.401 816.9514 816.9514 755.3436 102.7334 295.5822 178.7891 206.9391 348.5659 1147.7566 227.834 393.9133 50.0434 36.9424 170.3442 100.1154 86.731 1159.7124;
	1.5824 21.3823 26.3182 28.7858 9.6277 10.5239 20.8664 1.0091 17.3271 15.5222 28.6925 42.8036 64.4406 67.6368 184.9279 69.6705 86.443 91.6038 87.8718 71.5566 6.9555 24.5559 37.65 28.7997 16.9108 5.5137 1.2712 1057.5527 743.3442 743.3442 714.8845 99.4206 292.9061 184.1869 212.0504 317.1602 1049.5132 192.1276 393.258 45.2967 29.5131 116.7456 68.0887 69.2226 1060.4456;
	1.1673 15.7723 30.5154 40.6565 9.7858 8.5687 20.5565 2.2046 16.9074 13.5425 25.033 37.3444 56.2217 65.3607 174.8594 65.8773 81.7366 86.6164 84.2348 68.6642 6.8522 19.9937 37.2935 41.4673 26.8465 11.3082 2.6558 1043.5074 734.9795 734.9795 678.9121 92.7974 280.7825 176.7417 204.9146 313.5912 1035.4987 208.2696 435.8429 71.9104 30.2829 95.056 54.6209 54.7591 1046.2851;
	0.979 13.2289 26.5454 59.3375 8.6908 8.8051 15.1944 2.6633 13.9147 17.111 31.6294 47.1848 71.0364 65.3209 185.7533 69.9815 86.8288 92.0127 87.8448 68.4788 5.0648 20.5452 46.9403 42.6973 26.5737 11.4368 4.0059 964.6768 717.9593 717.9593 694.1993 91.2368 292.8161 176.2646 204.7897 306.3293 864.303 195.9287 423.2663 71.1795 30.4206 97.6776 45.9503 59.4492 873.3062;
	0.9107 12.3057 25.6524 97.6632 6.9726 9.1906 12.3611 1.6791 14.3916 17.5418 32.4257 48.3728 72.8249 64.1576 173.903 65.517 81.2896 86.1427 80.9083 66.5709 4.1204 21.4447 54.3246 51.7615 26.5437 7.7921 3.4972 891.4875 615.1071 615.1071 598.0672 78.7354 269.6942 171.3536 201.1426 262.4457 772.0735 176.9521 355.6656 71.0991 30.7762 101.9542 36.9036 52.7788 780.1159;
	0.9515 12.8564 19.3823 31.845 7.7408 9.3187 6.2732 1.1515 9.9265 15.0255 27.7745 41.434 62.3787 65.625 177.7188 66.9545 83.0732 88.0328 80.6001 68.3832 2.0911 21.7436 52.0471 46.0904 24.2797 4.7873 2.4632 842.406 542.6873 542.6873 518.0504 78.8203 268.6669 176.0186 205.7432 231.5466 605.7835 171.3101 231.8475 65.0349 28.5123 103.3755 0.3961 27.1686 612.0937;
	0.6101 8.2435 53.7226 98.1793 7.0157 28.6433 4.9313 0.0996 12.3333 18.4844 34.1682 50.9722 76.7384 66.3443 185.5546 69.9066 86.736 91.9143 83.1026 64.6277 1.6438 66.8343 48.6914 43.9102 19.2482 8.0675 1.7976 895.9288 534.6641 534.6641 562.7761 79.3025 277.0087 166.3519 207.9984 228.1234 777.9409 173.8857 239.6758 51.5577 37.1293 317.7494 26.3798 30.4657 786.0444;
	1.0852 14.6637 13.8513 9.1068 2.8602 9.537 0.4314 0.0 0.0 19.0803 35.2696 52.6153 79.212 68.7125 143.6209 54.1083 67.1344 71.1424 88.4404 53.1491 0.1438 22.2529 53.7968 37.7984 15.7998 2.3818 1.6853 828.7618 524.941 524.941 626.5887 88.5348 294.8013 136.8059 215.423 223.9748 752.0671 201.6607 337.2043 42.3209 74.2866 105.7968 10.4617 2.3442 759.9012;
	0.5134 6.9371 28.7303 44.6904 4.9494 28.8079 3.0702 1.5402 3.8854 22.9037 42.3371 63.1586 95.085 68.9622 118.6499 44.7007 55.4619 58.7731 32.6098 57.176 1.0234 67.2183 66.2095 53.6857 26.5487 9.1915 2.3807 817.3031 486.2257 486.2257 593.1025 74.99 108.6992 147.1712 216.2057 207.4563 677.9778 176.1272 366.8311 71.1125 92.7169 319.5752 19.3509 100.1847 685.0401;
	0.3887 5.2521 34.4478 59.4642 3.0486 29.3813 12.0772 2.8164 8.0756 25.8039 47.6981 71.1562 107.1253 64.2323 97.8897 36.8794 45.7578 48.4896 7.0823 63.3951 4.0257 68.5564 72.4259 69.2761 38.6938 22.0555 2.9574 669.0451 356.6383 356.6383 592.239 65.4223 23.6078 163.1791 201.377 152.1657 543.3307 173.6575 393.3569 103.6442 98.2703 325.9365 82.0468 91.9317 548.9904;
	0.7848 10.6039 46.4272 81.6001 6.0297 15.9867 11.723 4.3454 9.7587 25.1159 46.4263 69.2589 104.2689 59.3461 113.8892 42.9071 53.2366 56.4149 84.3783 67.3039 3.9077 37.3023 70.116 79.0328 43.1898 17.1996 2.3737 573.6237 359.2853 359.2853 520.6959 53.0959 281.2609 173.2404 186.0581 153.295 598.732 172.7344 221.6922 115.687 98.2985 177.3458 69.9686 56.5016 604.9688;
	0.565 7.6347 45.5506 71.9337 0.5507 3.1287 0.2964 2.5237 12.8504 21.9901 40.6483 60.6393 91.2921 45.3009 139.424 52.5272 65.1726 69.0635 83.7899 67.1646 0.0988 7.3003 69.9677 66.0828 40.6851 14.9275 1.4083 430.7394 333.6915 333.6915 466.2357 51.3478 279.2997 172.8819 142.0244 142.375 627.3457 151.774 43.9148 108.978 76.3486 34.7079 20.4726 37.3992 633.8806;
	0.6734 9.0987 40.7554 65.3969 8.222 4.7141 0.0 3.0758 4.6227 16.2053 29.9552 44.6873 67.2764 23.0559 139.2632 52.4666 65.0975 68.9839 83.9096 67.9455 0.0 10.9995 45.2608 62.0183 37.1988 29.6482 1.6231 382.6896 376.7354 376.7354 508.586 52.9293 279.6986 174.892 72.2833 160.7405 499.2961 133.9785 0.0531 99.6397 62.8381 52.2949 11.0844 6.3144 504.4971;
	0.4631 6.2578 49.5142 70.4646 4.263 8.4194 2.7619 5.021 12.351 22.3107 41.2409 61.5233 92.623 6.7685 157.9953 59.5238 73.8536 78.2628 89.0716 71.2075 0.9206 19.6452 71.5933 62.3048 44.7242 35.7198 2.503 282.6434 302.6841 302.6841 387.2218 52.1391 296.9053 183.2883 21.2201 129.1452 356.6651 107.7243 84.787 119.797 60.02 93.3989 30.248 51.7281 360.3804;
];
