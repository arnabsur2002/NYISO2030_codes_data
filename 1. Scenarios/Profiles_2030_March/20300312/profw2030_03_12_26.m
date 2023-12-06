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
	3.8731 52.3339 91.9028 115.0771 15.3841 33.467 27.3942 12.2478 28.0008 27.2066 50.2911 75.0244 112.9488 65.6932 191.6791 72.214 89.5989 94.948 87.4861 66.8802 9.1314 78.0897 71.663 88.1161 98.2802 66.4874 8.0088 1109.6856 731.6243 731.6243 702.759 107.3767 291.6202 172.1497 205.9572 312.1597 1071.5918 286.7644 445.9218 263.2506 120.1787 371.2606 204.7164 246.0081 1082.7543;
	3.8642 52.214 90.0936 113.1423 15.3786 32.498 26.3236 11.3728 27.7629 24.9592 46.1366 68.8268 103.6184 63.457 194.1238 73.135 90.7416 96.159 87.8417 66.991 8.7745 75.8286 71.4473 83.8186 95.5123 65.5652 7.4459 1165.3315 770.6958 770.6958 734.7553 109.6926 292.8058 172.435 198.9462 328.8302 1187.402 276.5958 438.6075 255.8364 119.7449 360.511 207.1325 241.1261 1199.7708;
	3.7674 50.9054 88.6628 100.9022 15.1774 31.8879 24.4749 9.8048 27.7508 25.3473 46.8542 69.8972 105.2298 65.3532 186.194 70.1475 87.0349 92.231 87.7054 68.2664 8.1583 74.4052 67.761 85.2273 84.2264 61.8402 6.98 1148.2243 751.1953 751.1953 699.5133 112.0383 292.3513 175.7179 204.891 320.51 1098.8215 257.327 442.8969 225.6064 113.0129 353.7434 180.5441 247.8255 1110.2675;
	3.7393 50.5262 87.3409 102.9154 15.2661 31.844 21.9901 10.6075 28.1694 26.2699 48.5595 72.4412 109.0599 61.3848 186.7177 70.3448 87.2797 92.4904 89.0347 67.9116 7.33 74.3026 70.0311 85.921 84.8638 56.8813 7.4019 1118.4108 761.7726 761.7726 693.8841 106.5129 296.7825 174.8046 192.4496 325.023 1128.585 259.3256 403.8892 227.3137 111.3524 353.2556 189.184 246.5311 1140.3411;
	3.5478 47.9386 82.2418 87.6365 14.908 29.2512 17.9583 8.9082 24.9937 26.9536 49.8232 74.3265 111.8981 59.541 191.8756 72.288 89.6907 95.0454 88.8422 68.4761 5.9861 68.2527 71.4225 87.4455 74.4623 52.1286 7.0135 1136.5014 747.8034 747.8034 678.6557 99.77 296.1408 176.2578 186.6691 319.0628 1065.2551 249.3119 364.4468 199.4525 113.0773 324.4931 182.4347 214.2709 1076.3515;
	3.5933 48.5527 79.3182 83.6472 14.409 29.2628 16.153 6.4166 26.3381 26.59 49.1513 73.324 110.3889 56.87 179.7629 67.7246 84.0287 89.0454 90.8205 67.0023 5.3843 68.2798 68.4158 82.1729 55.4653 31.4193 4.914 1132.0337 703.3285 703.3285 603.6793 87.9284 302.735 172.4642 178.2952 300.0868 1074.4621 217.0666 308.2128 148.5678 105.4306 324.6216 183.4603 175.8118 1085.6544;
	3.3195 44.8538 73.8762 70.0369 15.2019 28.1214 15.0461 5.3271 20.7266 25.6522 47.4178 70.738 106.4957 61.719 187.1957 70.5249 87.5031 92.7272 91.6398 69.5498 5.0154 65.6166 65.0197 78.2036 48.582 17.8392 4.3699 1151.0324 664.0742 664.0742 527.7845 62.4927 305.4659 179.0214 193.4973 283.3383 1074.3815 197.3829 273.737 130.1303 85.508 311.9601 157.9074 127.9556 1085.573;
	3.5654 48.1761 69.2785 71.5301 14.7461 27.3846 15.7444 4.622 16.7555 18.4324 34.072 50.8288 76.5224 61.7323 187.3428 70.5803 87.5719 92.8 88.7908 69.4188 5.2481 63.8975 34.9404 76.5271 54.8104 14.7586 3.1255 1147.0777 674.6827 674.6827 632.4641 61.595 295.9692 178.6841 193.5392 287.8646 1076.325 200.722 227.1527 146.8136 89.5717 303.7868 151.7906 135.5617 1087.5367;
	3.1921 43.1327 59.8498 68.8183 14.4889 24.0416 16.2499 2.7556 21.2972 16.3482 30.2193 45.0813 67.8696 61.2929 185.5087 69.8893 86.7145 91.8915 91.0154 71.2846 5.4166 56.097 30.1977 75.9749 55.4449 11.4408 2.0941 1181.9164 789.1886 789.1886 757.4969 87.0814 303.3847 183.4866 192.1616 336.7205 1146.797 232.1757 234.2992 148.5132 67.2562 266.7013 147.5502 150.6603 1158.7428;
	2.8678 38.7503 47.4138 59.3572 14.8922 19.1481 18.1184 2.0989 19.6497 8.9148 16.4789 24.5833 37.01 63.7807 181.4029 68.3425 84.7953 89.8577 92.2779 70.692 6.0395 44.679 19.4461 67.9605 36.3259 7.1564 1.1854 1086.0943 776.911 776.911 693.7102 95.4029 307.593 181.9613 199.9612 331.482 1121.5795 205.2763 303.0422 97.3015 51.4612 212.4166 132.71 117.3132 1133.2626;
	2.3197 31.3436 36.519 43.8503 14.1831 15.4326 17.4036 1.3128 18.5959 14.9693 27.6705 41.2789 62.1452 61.4072 170.9176 64.3922 79.8941 84.6638 92.3103 69.9233 5.8012 36.0093 25.5505 52.6767 24.8857 5.3483 1.7984 1065.1469 771.9507 771.9507 675.4503 91.203 307.7008 179.9827 192.5198 329.3656 1063.4171 216.593 344.5579 66.6581 45.5953 171.1986 94.2581 89.1043 1074.4943;
	1.6414 22.179 28.8014 24.4772 10.5465 11.1373 18.9736 1.2768 18.0797 15.4656 28.588 42.6477 64.2059 63.7177 179.1135 67.48 83.7252 88.7237 88.8526 71.5231 6.3245 25.987 37.4801 35.0096 18.8692 7.6569 0.9364 950.1469 718.0627 718.0627 601.3119 94.8929 296.1752 184.1007 199.7636 306.3734 990.9154 196.5362 385.0285 50.5426 34.1419 123.5495 65.5005 73.3299 1001.2374;
	1.1046 14.9255 25.6811 23.5816 9.4156 8.288 17.6484 2.2146 15.985 12.6339 23.3536 34.839 52.45 55.9083 185.1924 69.7702 86.5667 91.7349 85.9347 70.4326 5.8828 19.3386 35.9245 35.3353 21.2767 11.5313 2.6867 856.3569 683.6865 683.6865 578.1383 83.6723 286.449 181.2936 175.2801 291.7062 963.0697 198.4964 402.2633 56.9913 34.6092 91.941 49.3431 47.4971 973.1017;
	0.9275 12.5326 19.6715 26.2985 8.368 9.3555 12.2071 2.4811 12.3133 18.0586 33.381 49.7978 74.9704 59.2327 180.507 68.005 84.3765 89.4139 86.4176 68.7328 4.069 21.8296 55.2327 34.2945 23.1059 11.1424 3.6386 914.014 671.8822 671.8822 671.872 86.8196 288.0585 176.9183 185.7024 286.6697 873.8333 208.6788 384.3007 61.8909 34.9697 103.7841 38.8679 53.4352 882.9358;
	0.889 12.0125 22.2712 0.0847 6.452 8.9551 10.223 1.9906 12.3575 16.7565 30.9741 46.2073 69.5648 61.1638 163.5367 61.6115 76.4439 81.0077 75.306 69.4123 3.4077 20.8953 56.5845 48.4735 24.7265 5.8663 3.434 797.7369 588.6335 588.6335 591.7746 79.7159 251.0201 178.6674 191.7567 251.1503 782.2809 197.9438 315.4885 66.2316 33.3056 99.3423 26.1454 51.9694 790.4296;
	0.9326 12.6015 17.4455 26.2189 7.6978 6.8529 5.6407 1.5193 10.0889 15.317 28.3133 42.2378 63.5888 64.0008 162.5121 61.2255 75.9649 80.5002 76.7408 69.4936 1.8802 15.9901 55.1214 44.9931 23.7724 4.0648 2.418 855.7918 519.5436 519.5436 537.6113 74.1282 255.8027 178.8766 200.651 221.672 641.7626 187.4866 231.9238 63.6761 33.014 76.0213 0.0893 26.5383 648.4477;
	0.5483 7.4093 0.0017 0.0 6.3592 4.5811 3.7102 0.4632 11.5509 18.803 34.7571 51.8508 78.0611 64.0345 161.1083 60.6966 75.3088 79.8048 76.7954 66.6282 1.2367 10.6893 53.981 37.031 13.8648 3.4994 1.5243 772.2854 500.3216 500.3216 529.3856 74.2699 255.9847 171.5011 200.7567 213.4706 716.3081 180.3618 233.0915 37.1379 35.121 50.82 0.8239 6.9301 723.7696;
	1.1211 15.1489 0.0 0.0 2.6122 0.7751 0.0012 0.5546 1.337 20.6084 38.0943 56.8292 85.5561 64.0745 135.0866 50.8931 63.1451 66.915 76.9534 56.8187 0.0004 1.8086 67.0473 34.2741 14.5313 3.7218 1.7815 696.2232 488.4687 488.4687 572.683 72.8764 256.5112 146.2515 200.8824 208.4133 686.7829 192.7791 320.8994 38.9232 77.1491 8.5984 0.0 8.7208 693.9369;
	0.4602 6.2186 11.503 28.2507 0.0431 0.0107 0.0 1.9968 0.0 22.5389 41.6627 62.1526 93.5704 57.9386 113.2031 42.6486 52.9159 56.075 3.5008 61.9422 0.0 0.0249 67.7163 40.8619 19.1009 7.4376 2.1165 703.4533 427.0911 427.0911 539.0193 60.8374 11.6693 159.4394 181.6453 182.2255 621.3183 176.8651 316.0535 51.163 83.6576 0.1184 0.0 14.3197 627.7903;
	0.2458 3.3218 30.6482 54.0501 2.2254 0.4264 0.0267 3.3212 0.0 25.095 46.3877 69.2013 104.1822 42.9252 98.5447 37.1261 46.0639 48.814 0.1243 63.6522 0.0089 0.995 68.7622 64.9879 38.0797 20.3579 2.8942 644.3207 291.7684 291.7684 523.6157 58.9555 0.4143 163.841 134.5764 124.4878 558.1582 175.7724 2.7784 101.9993 93.7136 4.7307 0.0786 43.4143 563.9723;
	0.53 7.1613 41.4881 75.8885 4.5179 0.0 0.0 4.8734 0.0 24.826 45.8906 68.4597 103.0657 32.4222 113.528 42.771 53.0677 56.2359 79.9608 70.1185 0.0 0.0 65.8703 70.2667 37.5837 14.464 2.0838 567.4198 296.0902 296.0902 481.0808 51.9123 266.5359 180.4852 101.6481 126.3318 613.8874 177.2108 32.773 100.6707 88.1785 0.0 0.0124 38.4205 620.282;
	0.4662 6.2998 41.125 68.1505 0.063 0.0036 0.0 3.0821 0.0 22.4483 41.4953 61.9028 93.1944 28.468 133.8355 50.4218 62.5603 66.2953 76.8298 70.6216 0.0 0.0083 60.6003 65.6232 38.5241 16.5553 1.107 448.5254 316.7021 316.7021 445.1675 49.8467 256.0992 181.7802 89.2511 135.1262 687.4506 155.1096 0.0 103.1895 61.3456 0.0394 8.0584 34.9395 694.6115;
	0.528 7.1339 34.3957 62.6031 6.429 0.0 0.5057 3.1831 0.0 16.929 31.2929 46.6829 70.2808 17.5832 136.5362 51.4392 63.8227 67.6331 79.9684 69.8837 0.1686 0.0 38.9986 58.9409 27.2868 29.7414 1.0327 412.8088 364.2995 364.2995 531.7119 57.7975 266.5614 179.8808 55.1256 155.4344 561.3071 142.9425 8.8886 73.0897 50.4568 0.0 0.4527 0.3035 567.1541;
	0.136 1.8376 46.4129 71.7553 0.1359 1.0133 1.9611 6.0948 0.0 20.1032 37.1604 55.436 83.4586 3.0781 157.7251 59.422 73.7273 78.129 83.6858 71.1872 0.6537 2.3643 55.7536 66.1004 41.6004 38.626 2.9272 307.8886 292.8387 292.8387 415.8706 53.0152 278.9526 183.236 9.6503 124.9445 383.7316 121.3931 30.2072 111.4295 53.057 11.2406 17.6918 45.1573 387.7288;
];