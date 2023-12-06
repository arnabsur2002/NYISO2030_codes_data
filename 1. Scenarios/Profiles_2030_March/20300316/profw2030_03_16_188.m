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
	3.7057 50.0724 93.2137 119.2084 14.2255 32.4544 28.6638 17.6517 27.2974 29.5929 54.7021 81.6047 122.8555 65.4469 196.7042 74.1072 91.9478 97.4372 85.6568 72.2732 9.5546 75.7268 73.9092 82.4293 100.0526 71.2775 13.1195 1302.361 751.6066 751.6066 530.9654 113.0611 285.5227 186.0314 205.1848 320.6855 1227.4666 213.7009 465.9588 267.998 119.0224 360.0271 198.3116 277.5624 1240.2527;
	3.7824 51.1082 92.1618 118.5694 14.8141 32.3072 25.5755 17.641 27.0595 29.7761 55.0407 82.1099 123.6161 64.9656 178.2371 67.1498 83.3155 88.2896 84.0821 69.9642 8.5252 75.3835 72.5791 84.4612 99.715 69.2482 12.9147 1329.9659 746.0867 746.0867 559.9479 101.7371 280.2736 180.0879 203.6759 318.3303 1182.9656 205.5942 456.2056 267.0936 120.2933 358.3947 188.79 272.3962 1195.2882;
	3.6238 48.9654 92.048 117.3737 14.5009 32.0618 20.7021 18.1576 26.1029 29.9827 55.4226 82.6796 124.4737 63.816 189.0994 71.2421 88.393 93.6702 86.2681 69.6099 6.9007 74.8108 72.2799 85.8388 100.6378 73.9855 13.5472 1288.6446 750.8524 750.8524 610.2844 93.606 287.5602 179.1762 200.0719 320.3637 1214.7335 214.2318 406.1151 269.5656 122.6286 355.6718 187.2787 266.2124 1227.3869;
	3.6143 48.8372 90.4418 118.5339 14.4063 31.9979 21.523 18.6421 26.6046 30.2529 55.9221 83.4248 125.5955 65.2752 190.4963 71.7684 89.0459 94.3621 86.2385 69.8835 7.1743 74.6618 72.1021 86.9161 99.5016 71.2365 13.7075 1289.6623 751.8043 751.8043 603.3407 91.811 287.4615 179.8803 204.6466 320.7699 1229.6843 226.6226 398.4071 266.5221 123.3272 354.9636 150.1364 272.157 1242.4935;
	3.5812 48.3905 91.1098 116.6163 14.0276 31.11 29.1314 18.2562 26.3464 30.4207 56.2321 83.8873 126.2918 64.0947 191.28 72.0636 89.4123 94.7503 84.8837 71.2376 9.7105 72.59 73.1109 83.0573 98.3731 71.1335 13.7212 1245.3629 752.6676 752.6676 618.957 92.8722 282.9458 183.3659 200.9457 321.1382 1165.4611 222.0489 434.9725 263.4994 122.37 345.1137 180.0095 263.1274 1177.6014;
	3.7543 50.7288 92.5158 118.8149 14.1883 32.4454 27.9985 18.2977 26.8159 30.1213 55.6787 83.0617 125.049 64.8735 196.191 73.9138 91.7079 97.183 88.1633 69.9335 9.3328 75.7059 73.5067 84.6789 98.2788 70.0346 13.8262 1250.0412 727.3728 727.3728 643.737 102.4677 293.8776 180.009 203.3873 310.3457 1144.27 235.9084 435.8744 263.2469 123.6791 359.9276 170.2775 269.7114 1156.1894;
	3.8255 51.6915 93.939 119.7619 14.7711 33.2943 29.7996 17.8562 27.4511 30.8485 57.0231 85.0672 128.0682 66.2727 194.8349 73.4029 91.074 96.5112 87.5134 71.2222 9.9332 77.6868 74.6263 87.4853 98.6243 70.4398 13.6951 1207.2237 725.1629 725.1629 665.5443 105.8473 291.7114 183.3262 207.7739 309.4028 1140.627 267.2085 451.2368 264.1721 123.065 369.345 163.022 267.8024 1152.5085;
	3.9156 52.9078 94.1717 119.9117 14.7169 34.7147 29.5683 18.0394 27.9967 30.648 56.6524 84.5142 127.2356 68.1241 197.0245 74.2279 92.0975 97.5959 86.8435 70.1912 9.8561 81.001 74.4446 87.9788 98.882 70.2013 13.6655 1271.772 764.0699 764.0699 709.4746 108.5754 289.4785 180.6723 213.5783 326.0032 1215.9598 290.2142 446.4216 264.8624 121.9215 385.1019 186.9581 277.2795 1228.6261;
	3.9321 53.1312 94.7992 119.237 14.8067 35.0064 31.756 18.0729 28.3954 30.8626 57.049 85.1059 128.1264 68.6958 195.7847 73.7607 91.5179 96.9817 90.2648 70.7978 10.5853 81.6816 74.3941 87.6441 100.837 71.1766 13.788 1343.0065 794.5507 794.5507 772.5826 118.5795 300.8826 182.2337 215.3705 339.0083 1276.6529 316.4293 462.9862 270.0992 122.8453 388.3378 213.248 282.2021 1289.9514;
	3.8495 52.0152 92.9604 119.1368 14.6539 34.7634 27.1528 17.3994 28.3571 30.709 56.7652 84.6825 127.4891 68.5045 198.3559 74.7294 92.7198 98.2554 89.1147 71.9898 9.0509 81.1145 74.0972 86.6583 98.4636 69.6435 13.0545 1339.7293 815.8012 815.8012 765.2649 119.6002 297.0489 185.3019 214.7707 348.0752 1282.3382 325.9633 470.2547 263.7418 120.7054 385.6415 212.5236 272.9374 1295.6959;
	3.8535 52.069 91.8196 119.1698 14.6548 34.0213 29.4561 18.1343 28.3638 30.7126 56.7717 84.6922 127.5036 65.4416 198.2412 74.6862 92.6663 98.1986 90.9335 72.6141 9.8187 79.3831 73.9181 86.9106 101.0813 71.2975 13.269 1327.7987 807.7639 807.7639 771.9799 116.5523 303.1116 186.909 205.1683 344.6459 1290.1264 312.6388 471.9672 270.7536 117.6041 377.4098 205.9392 277.9486 1303.5653;
	3.9021 52.7258 92.8699 120.4657 14.8818 34.2946 28.7545 18.3166 28.4001 29.6046 54.7237 81.637 122.904 67.9075 196.0765 73.8707 91.6544 97.1263 92.8487 70.8489 9.5848 80.0207 74.2941 89.0338 104.0591 70.4654 13.0584 1350.5942 815.1402 815.1402 782.7063 117.7446 309.4955 182.3653 212.8992 347.7931 1302.9087 329.1391 479.6153 278.7297 118.9684 380.4411 203.6974 280.4542 1316.4807;
	3.9097 52.8284 94.1291 120.7428 15.211 35.0343 28.8072 18.1971 28.4814 31.1162 57.5178 85.8052 129.1793 68.8143 201.2428 75.8171 94.0693 99.6854 92.8907 71.2467 9.6024 81.7466 75.1109 89.3683 104.9684 73.1872 13.3061 1339.8495 829.1742 829.1742 779.0862 118.8267 309.6358 183.3891 215.7422 353.781 1304.201 346.5824 477.4749 281.1653 121.9551 388.6467 208.6756 279.7225 1317.7864;
	3.9229 53.0075 94.6408 120.6911 15.3237 34.8938 28.2953 18.5421 28.3862 31.0017 57.3061 85.4894 128.7039 67.9984 195.8433 73.7828 91.5454 97.0108 91.9711 71.2056 9.4318 81.4188 75.6172 88.6184 104.1166 72.9887 13.5454 1362.0397 821.5849 821.5849 772.9008 119.8726 306.5703 183.2834 213.1842 350.5429 1308.8943 343.2598 477.0632 278.8837 117.1665 387.0884 205.6038 285.1056 1322.5286;
	3.8761 52.374 93.7467 120.1381 14.8505 34.0426 23.6235 18.467 28.0301 29.6048 54.724 81.6374 122.9046 68.4223 199.0732 74.9997 93.0552 98.6107 92.2154 70.5811 7.8745 79.4326 75.5846 88.3141 103.9899 72.2467 13.5533 1338.4914 802.9288 802.9288 740.1864 119.0233 307.3847 181.6761 214.5131 342.583 1300.0352 340.3928 466.3372 278.5443 118.9499 377.6454 204.22 284.8739 1313.5773;
	3.8425 51.9213 91.3087 119.1608 14.8722 32.5571 24.5993 18.1085 27.6397 28.5358 52.748 78.6896 118.4668 67.5897 189.9649 71.5682 88.7975 94.0989 91.2499 70.7879 8.1998 75.9666 73.9464 87.6114 101.8883 70.0089 13.017 1285.7048 773.9162 773.9162 712.0133 114.4098 304.1665 182.2082 211.9029 330.2043 1217.2765 319.3874 458.4726 272.915 118.1734 361.1668 201.3814 281.1784 1229.9565;
	3.6647 49.5178 91.7831 115.5846 14.5514 29.6466 22.9378 17.9102 27.9904 28.346 52.3972 78.1663 117.6789 68.2053 196.8345 74.1562 92.0087 97.5017 87.5889 68.93 7.6459 69.1754 70.2281 86.801 101.8799 59.7328 11.7622 1247.253 722.6998 722.6998 632.3435 113.4763 291.963 177.426 213.8329 308.3519 1164.0127 309.5019 458.1959 272.8927 112.9584 328.8796 182.5979 268.8381 1176.1379;
	3.82 51.6166 95.0463 119.3606 15.0911 30.5415 20.8722 14.6365 28.3868 28.8666 53.3595 79.6019 119.8402 67.8699 197.9008 74.558 92.5071 98.0299 90.5899 67.0043 6.9574 71.2635 72.6297 89.8498 106.3894 72.3624 10.7545 1260.0933 717.891 717.891 624.0354 107.5889 301.9663 172.4694 212.7815 306.3002 1220.4719 293.6574 469.0357 284.9717 115.4061 338.8071 183.5034 259.8778 1233.1851;
	3.7897 51.2075 90.6857 111.3493 15.2581 27.3206 16.7876 8.4125 28.1388 29.8822 55.2369 82.4025 124.0565 67.5867 192.5469 72.5409 90.0045 95.3779 86.4561 67.2268 5.5959 63.7482 73.0826 89.1007 102.804 63.746 9.3743 1259.5705 720.6407 720.6407 629.814 109.017 288.1872 173.0419 211.8935 307.4734 1219.7839 303.3398 459.1954 275.3677 114.8565 303.0769 138.0927 241.867 1232.49;
	2.8296 38.2338 84.7329 70.0834 14.876 23.4413 26.3983 10.1617 27.8744 29.3313 54.2185 80.8833 121.7693 68.3116 188.7784 71.1212 88.2429 93.5111 85.6585 66.4079 8.7994 54.6963 72.7057 88.4059 93.882 43.8211 9.234 1308.5753 800.378 800.378 695.5494 109.5087 285.5283 170.9342 214.166 341.4946 1269.279 308.2623 440.9279 251.4696 115.6042 260.0418 107.825 208.1075 1282.5007;
	2.4902 33.6474 84.0474 75.3725 15.0537 12.4296 26.3102 10.4229 27.3095 28.9507 53.5148 79.8336 120.1891 68.3998 193.6944 72.9732 90.5409 95.9463 86.2255 66.8278 8.7701 29.0025 69.0358 86.0479 84.3543 50.2844 10.0857 1233.072 756.2516 756.2516 717.8779 118.153 287.4183 172.0148 214.4425 322.6674 1200.6139 304.4167 444.4166 225.949 114.2075 137.8861 76.0528 192.0422 1213.1203;
	2.1967 29.6825 83.4076 86.6323 15.2385 16.0591 26.5261 12.7562 27.6573 28.7806 53.2004 79.3646 119.4829 69.5001 194.8915 73.4243 91.1005 96.5393 87.3826 69.4019 8.842 37.4713 69.5893 84.6897 98.981 67.4929 11.3887 1209.1906 730.7263 730.7263 718.1103 110.3715 291.2752 178.6406 217.8921 311.7766 1150.5108 270.4956 463.2883 265.1277 116.2166 178.1494 67.9557 191.7546 1162.4953;
	2.7978 37.8043 80.3723 88.879 14.6826 19.1447 25.2476 14.4577 27.1618 29.1192 53.8263 80.2983 120.8886 68.6858 188.2665 70.9283 88.0037 93.2576 87.4614 69.2164 8.4159 44.671 69.8748 82.7693 93.3829 62.9136 10.4491 1085.7807 747.7642 747.7642 732.4149 110.2251 291.538 178.1633 215.3392 319.046 1112.9696 288.0433 448.3521 250.1327 119.6788 212.3788 78.7602 216.9372 1124.5631;
	2.8978 39.1552 82.7286 79.0434 14.2887 21.3849 21.4997 10.5891 27.3708 27.4961 50.8261 75.8225 114.1504 68.4094 187.0223 70.4595 87.422 92.6413 87.5659 69.297 7.1666 49.8981 70.1326 81.7892 81.6878 59.5308 7.5201 913.6081 674.157 674.157 657.2176 107.0267 291.8864 178.3706 214.4728 287.6403 932.5396 257.9245 447.5058 218.8066 116.3846 237.2298 89.6214 230.3819 942.2536;
];