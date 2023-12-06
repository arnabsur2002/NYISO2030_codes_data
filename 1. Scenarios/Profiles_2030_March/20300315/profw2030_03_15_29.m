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
	3.9421 53.2666 92.7232 116.0009 14.9707 34.9164 30.9877 17.9421 0.0 5.1876 9.5892 14.3052 21.5363 51.6322 196.792 74.1403 91.9888 97.4807 86.1633 67.8471 10.3292 81.4716 15.6842 87.0341 105.4704 74.6416 13.5033 1242.7911 768.891 768.891 702.1046 107.1285 287.2109 174.6385 161.874 328.0601 1149.9782 270.6737 446.6044 282.51 117.3941 387.3395 217.2245 282.753 1161.9572;
	3.9002 52.7008 94.337 118.6265 15.0777 34.587 31.4622 18.2596 0.9187 3.0697 5.6743 8.465 12.744 58.1145 187.6507 70.6963 87.7158 92.9526 82.779 69.5458 10.4874 80.703 1.8154 86.8714 105.3776 75.6809 13.0628 1253.7765 774.3732 774.3732 650.5393 103.4541 275.9299 179.0111 182.1968 330.3992 1219.7366 254.9118 446.3746 282.2614 116.9955 383.6851 212.7444 283.5909 1232.4422;
	3.6563 49.4043 90.1395 112.6774 14.8716 34.1414 32.8664 18.2171 20.3206 13.0152 24.0583 35.8903 54.0327 59.7736 169.1116 63.7118 79.0498 83.7692 84.286 70.0505 10.9555 79.6633 20.3654 86.6552 104.0516 74.673 12.9065 1261.0622 772.5958 772.5958 686.113 108.9878 280.9534 180.3103 187.3982 329.6409 1264.4735 282.9975 466.2492 278.7096 115.9003 378.7421 207.8227 268.457 1277.6451;
	3.6082 48.7542 91.3249 114.2835 15.0553 33.5242 32.0383 18.8409 27.5371 28.544 52.7632 78.7123 118.5009 65.4586 195.1283 73.5135 91.2112 96.6566 89.1657 66.3675 10.6794 78.2231 24.0625 86.8814 104.5638 76.1294 13.1995 1255.8065 781.7469 781.7469 746.2542 110.0728 297.219 170.8302 205.2214 333.5454 1218.9296 312.9805 472.0373 280.0815 116.8118 371.8951 173.3908 273.6637 1231.6268;
	3.2067 43.3294 93.7653 117.4972 15.0902 31.4323 32.3306 18.7436 27.6975 28.6935 53.0395 79.1244 119.1214 63.7352 198.838 74.9111 92.9452 98.4942 86.0674 67.6792 10.7769 73.3421 69.1241 86.4159 103.4925 75.7707 13.4202 1266.1047 782.8745 782.8745 748.1965 110.0511 286.8912 174.2065 199.8184 334.0265 1185.2393 330.7145 476.3149 277.212 120.2114 348.6895 182.5683 266.7218 1197.5856;
	3.73 50.4006 92.7144 114.659 14.6587 33.1632 22.6245 18.4233 26.17 27.9347 51.6368 77.0319 115.9711 46.9531 200.2738 75.452 93.6164 99.2054 59.7427 68.0025 7.5415 77.3809 70.9398 84.3248 100.1711 72.2973 13.7058 1202.786 783.6748 783.6748 742.501 110.039 199.1424 175.0387 147.2043 334.3679 1203.3238 320.8204 476.1219 268.3155 118.8855 367.8909 164.2153 259.5527 1215.8584;
	3.6607 49.4641 92.7764 114.4072 14.3476 33.7596 15.3285 18.4666 26.1599 27.3778 50.6074 75.4962 113.6592 64.4349 200.7852 75.6446 93.8554 99.4587 86.5649 71.4181 5.1095 78.7724 69.6861 85.9583 101.724 73.2564 13.8123 1270.1279 807.0368 807.0368 738.2244 103.4493 288.5497 183.8303 202.0121 344.3357 1233.9531 312.9381 435.9535 272.475 119.6639 374.5065 175.2885 269.1005 1246.8067;
	3.7167 50.2207 92.8419 114.7355 14.1502 33.3709 30.5639 17.4622 6.1265 27.4019 50.6519 75.5627 113.7593 45.7163 203.717 76.7492 95.2259 100.911 85.42 71.2831 10.188 77.8654 69.5301 83.3429 98.1056 71.0108 13.4713 1303.6951 785.3898 785.3898 740.2457 107.8283 284.7333 183.483 143.3268 335.0997 1244.1489 320.4424 186.1694 262.783 120.6624 370.1945 200.5156 268.0997 1257.1088;
	3.661 49.4676 92.5848 116.881 14.2357 31.1994 26.9554 17.7637 2.8393 24.9469 46.1139 68.7929 103.5673 27.9894 198.0687 74.6212 92.5856 98.1131 82.777 71.8017 8.9851 72.7987 65.8445 84.087 99.1455 71.4703 13.1752 1187.1953 706.9747 706.9747 731.4902 106.4679 275.9234 184.8178 87.7507 301.6425 1107.0809 298.8887 108.1263 265.5684 120.8995 346.1059 183.5459 271.4079 1118.613;
	3.6715 49.6096 93.5358 119.5343 14.5375 30.596 9.325 18.7678 1.9022 22.4952 41.582 62.0322 93.3891 23.1821 189.804 71.5075 88.7223 94.0192 76.0628 71.9584 3.1083 71.3906 39.3894 86.8861 103.1634 74.0643 13.5656 928.0907 634.212 634.212 599.0977 106.7541 253.5427 185.2211 72.6791 270.5971 858.2843 269.1557 78.7925 276.3305 121.4476 339.4114 151.964 279.5218 867.2248;
	3.5907 48.5183 94.5352 119.7183 14.3245 27.355 13.5263 18.7651 1.0503 28.7136 53.0767 79.18 119.205 10.5182 192.1785 72.4021 89.8323 95.1954 66.9391 70.7133 4.5088 63.8282 71.2619 87.1766 104.6278 71.9603 13.789 777.5837 675.1521 675.1521 496.3311 104.166 223.1303 182.0162 32.9759 288.0649 798.1146 211.7286 116.8807 280.2529 120.869 303.4577 149.9083 278.4802 806.4283;
	3.2872 44.4172 94.6982 117.9051 14.6055 18.5069 4.7839 18.1507 0.0 26.5307 49.0416 73.1604 110.1426 11.0692 194.8463 73.4072 91.0793 96.5169 28.0947 70.5137 1.5946 43.1827 70.8481 86.0267 102.1095 74.2476 13.3388 603.957 751.7918 751.7918 504.27 107.485 93.6489 181.5024 34.7033 320.7645 868.6812 205.1228 20.2523 273.5076 121.8853 205.303 140.1764 283.5431 877.73;
	3.7725 50.9747 94.3868 118.1538 14.8096 21.0168 9.0007 17.9811 25.3604 23.8907 44.1615 65.8803 99.1824 49.2145 191.2677 72.059 89.4065 94.7442 48.2972 69.1994 3.0002 49.0392 71.7642 84.2487 102.1711 74.2837 13.591 676.7267 735.5732 735.5732 515.8792 105.0181 160.9908 178.1195 154.294 313.8446 685.9188 232.6162 65.541 273.6725 121.5378 233.1462 152.2342 281.7214 693.0638;
	3.6991 49.9836 91.2416 113.4788 14.8091 19.0129 4.2271 17.7967 18.7258 22.5257 41.6383 62.1162 93.5156 35.6668 196.5899 74.0641 91.8943 97.3806 39.449 70.452 1.409 44.3634 71.0239 82.7924 96.8488 71.3565 13.0567 505.9006 689.6651 689.6651 458.5654 90.0572 131.4968 181.3437 111.8201 294.2571 698.161 234.7481 22.6333 259.4163 119.9645 210.9164 158.037 272.1648 705.4336;
	3.5796 48.3687 89.0726 110.6145 14.7756 16.7893 2.8649 17.9251 0.6131 24.6012 45.4749 67.8395 102.1321 31.3243 187.518 70.6463 87.6538 92.8868 53.4873 69.4159 0.955 39.175 72.1027 84.0204 95.1095 70.8926 13.307 389.5934 688.1993 688.1993 446.1129 87.5411 178.2909 178.6766 98.2058 293.6317 648.5614 235.2359 77.5762 254.7576 117.425 186.2492 161.9687 240.5872 655.3173;
	3.4522 46.6468 90.6042 115.7421 14.8978 8.7109 16.2093 18.6263 7.6473 27.9184 51.6068 76.9872 115.9038 27.2878 183.474 69.1228 85.7634 90.8836 51.5212 69.0753 5.4031 20.3254 72.7776 86.8763 97.3761 72.4056 13.9476 476.305 577.8682 577.8682 430.3776 90.7816 171.7374 177.8 85.5509 246.5571 574.8907 231.8645 318.9561 260.8288 121.5729 96.6327 156.4656 248.0864 580.8791;
	3.568 48.211 91.2955 116.6313 15.3226 18.5762 4.5297 18.4814 3.6844 27.9833 51.7267 77.1661 116.1731 36.2235 166.8351 62.8542 77.9857 82.6416 57.5004 67.312 1.5099 43.3446 71.0549 85.519 100.2443 73.1439 13.7189 1059.9119 511.2922 511.2922 339.6453 91.9497 191.668 173.2613 113.5657 218.1513 934.7946 246.6841 120.2625 268.5115 120.5997 206.0725 143.5426 253.8578 944.532;
	3.5748 48.3032 94.0784 118.5563 15.1323 21.7651 3.0065 19.0117 0.7253 28.1397 52.0157 77.5972 116.8222 60.1884 186.2015 70.1503 87.0384 92.2347 74.5033 69.6853 1.0022 50.7853 69.8252 88.2197 103.4996 74.8972 14.0813 1263.5343 587.0348 587.0348 240.058 67.5612 248.3443 179.3701 188.6988 250.4682 1110.3819 217.6443 146.1937 277.2311 122.9417 241.448 181.9986 281.6481 1121.9483;
	2.6523 35.839 91.9945 116.573 15.1736 32.3001 1.4977 18.7963 0.4757 23.2243 42.9297 64.0427 96.416 65.724 186.5 70.2628 87.1779 92.3826 53.9935 69.7106 0.4992 75.3669 47.6543 86.4841 104.2174 73.5047 13.9811 1260.5322 722.0979 722.0979 297.0357 60.5782 179.9784 179.4353 206.0538 308.0951 1220.8655 131.9745 267.9873 279.1537 121.8022 358.3157 168.2273 276.148 1233.5829;
	3.8961 52.6447 92.5555 85.4561 15.0012 33.5746 0.9631 17.948 0.0 15.1228 27.9543 41.7023 62.7826 68.2995 194.5168 73.2831 90.9253 96.3537 41.8831 71.5943 0.321 78.3408 40.2564 87.0279 104.3367 74.1072 13.7603 1255.3279 730.0141 730.0141 360.1614 50.6735 139.6104 184.284 214.128 311.4727 1189.359 105.0169 71.2222 279.4734 121.6784 372.4546 191.6583 277.037 1201.7482;
	3.8935 52.6099 94.3158 118.8947 15.3268 33.0003 0.0119 18.8767 0.0 14.8596 27.4678 40.9765 61.6899 68.5416 193.2028 72.788 90.3111 95.7028 56.8285 72.0076 0.004 77.0007 58.4549 88.488 106.5596 73.691 14.0854 1177.4408 662.6617 662.6617 568.1121 46.9615 189.4282 185.3477 214.8873 282.7356 1192.0255 152.0408 35.712 285.4275 122.8847 366.0832 200.0436 283.7971 1204.4424;
	3.8712 52.3081 94.2765 116.3024 15.1417 33.4009 2.0487 18.9086 26.096 29.144 53.8722 80.3667 120.9916 66.6471 194.8087 73.393 91.0617 96.4983 66.2566 71.8045 0.6829 77.9355 72.6335 88.8676 106.3646 74.1546 13.8825 1240.3044 671.1501 671.1501 515.1316 68.3532 220.8552 184.825 208.9475 286.3574 1221.745 209.6524 440.7805 284.9051 120.8633 370.5274 203.9833 283.3034 1234.4715;
	3.858 52.1301 94.2901 117.8185 15.2246 33.4568 3.5525 19.1321 25.9011 29.3071 54.1737 80.8164 121.6687 64.6088 192.0086 72.3381 89.7529 95.1112 66.984 71.2656 1.1842 78.0658 69.773 87.6242 105.6316 74.2465 14.1189 1269.9142 766.3863 766.3863 636.9657 110.5425 223.28 183.4377 202.5574 326.9915 1254.09 246.4515 460.0606 282.9418 121.7811 371.1471 206.3478 283.7424 1267.1535;
	3.7749 51.0068 93.4308 116.453 15.0138 32.5814 28.7392 19.1288 25.7396 28.0501 51.8502 77.3502 116.4504 64.5721 191.1929 72.0308 89.3716 94.7072 72.8611 70.5638 9.5797 76.0233 72.1614 88.7984 106.576 75.6642 14.1369 1241.1993 736.2121 736.2121 597.6362 109.701 242.8705 181.6314 202.4421 314.1172 1212.8342 240.3586 449.7621 285.4714 119.4945 361.4365 197.1128 285.2144 1225.4679;
];