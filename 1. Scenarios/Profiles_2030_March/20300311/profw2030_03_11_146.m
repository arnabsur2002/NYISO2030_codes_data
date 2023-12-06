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
	3.9191 52.9557 91.2051 113.2203 14.8442 33.3422 29.5004 18.4764 27.5485 30.1596 55.7496 83.1674 125.208 66.3397 201.0575 75.7473 93.9827 99.5936 41.5938 70.8094 9.8335 77.7984 71.0059 87.4967 104.7693 75.1431 13.8336 1192.2647 732.892 732.892 648.7162 106.5807 138.646 182.2637 207.984 312.7006 1219.239 232.0048 473.5671 280.632 117.3371 369.8761 154.656 271.0969 1231.9394;
	3.8566 52.1107 93.9695 120.44 15.0964 33.0706 30.2256 18.5108 27.5819 29.8361 55.1515 82.2752 123.8649 66.6631 194.9548 73.4481 91.13 96.5706 38.8571 71.5268 10.0752 77.1647 67.8407 87.9351 104.5021 74.2042 13.5882 1194.4794 761.0285 761.0285 646.5409 104.1566 129.5237 184.1103 208.9979 324.7055 1235.9235 239.0192 476.5449 279.9164 119.7118 366.8632 142.7616 278.2027 1248.7977;
	3.8511 52.0369 94.4892 71.2774 14.6859 34.009 30.3089 18.2945 27.1785 28.7089 53.068 79.167 119.1854 65.1643 200.7457 75.6298 93.837 99.4392 38.436 70.4191 10.103 79.3544 57.7866 89.6667 105.9855 75.336 13.6628 1178.3716 727.9495 727.9495 572.5432 104.8723 128.1201 181.259 204.2989 310.5918 1229.3872 218.2555 465.0374 283.8897 121.1584 377.2733 141.2951 278.4834 1242.1933;
	3.7471 50.6312 93.5026 91.6543 14.8528 33.297 28.4518 18.5012 26.7754 27.2273 50.3293 75.0814 113.0346 65.072 200.3222 75.4702 93.639 99.2293 47.9328 70.242 9.4839 77.6929 44.9603 89.4083 105.1253 76.2541 13.5265 1237.0031 689.136 689.136 533.3323 96.2514 159.7759 180.803 204.0095 294.0314 1129.6712 241.0775 457.6828 281.5856 118.364 369.3743 170.4826 275.1413 1141.4386;
	3.6699 49.589 94.7317 120.9242 15.3198 33.8296 25.5403 19.0423 28.3836 29.5806 54.6793 81.5708 122.8043 66.3421 192.2088 72.4135 89.8464 95.2104 79.6712 69.0852 8.5134 78.9356 41.9223 89.9434 106.5256 76.5894 13.8229 1198.3703 670.7592 670.7592 524.742 100.4371 265.5707 177.8255 207.9913 286.1906 1173.463 247.3962 475.7458 285.3365 118.6354 375.2826 183.7663 281.6501 1185.6866;
	3.9293 53.094 94.9028 120.9931 15.3302 34.9832 28.5491 18.9879 28.0856 29.9792 55.4162 82.67 124.4592 68.5727 192.7773 72.6277 90.1122 95.492 88.3978 70.2271 9.5164 81.6274 64.0879 89.8104 106.5705 76.3257 13.947 1231.6434 705.0746 705.0746 498.4603 97.093 294.6594 180.7647 214.9846 300.8318 1105.7679 227.0242 464.9012 285.4566 116.9853 388.08 200.0503 281.088 1117.2864;
	3.9305 53.1099 95.0863 120.9551 15.2624 34.9727 29.7105 19.0324 27.9713 30.757 56.8539 84.8148 127.6883 69.0134 193.6324 72.9499 90.5119 95.9156 89.1993 70.2806 9.9035 81.6031 72.4998 89.4848 105.335 76.5216 13.982 1298.0756 758.1303 758.1303 567.7356 97.8847 297.3311 180.9024 216.3663 323.4689 1158.6104 245.5824 470.3089 282.1473 120.4814 387.9643 199.7103 281.0261 1170.6793;
	3.9299 53.1012 94.7765 121.0185 15.1306 34.9755 29.9336 19.0963 28.0852 30.2557 55.9271 83.4323 125.6068 68.0136 195.4858 73.6481 91.3782 96.8337 89.9033 70.314 9.9779 81.6095 70.3132 88.4743 106.3404 75.1792 14.1132 1213.7052 724.2709 724.2709 571.3987 83.8596 299.6776 180.9884 213.2317 309.0222 1118.059 243.5963 466.6496 284.8402 119.9791 387.9951 201.7965 272.6976 1129.7055;
	3.9159 52.9121 95.1174 121.2441 15.026 34.57 30.1018 19.122 27.5357 30.7089 56.765 84.6822 127.4886 69.2082 195.7192 73.7361 91.4873 96.9493 89.1907 69.9473 10.0339 80.6634 72.1195 89.5992 106.2092 75.0767 14.1194 1207.1573 781.3852 781.3852 611.4374 80.2391 297.3024 180.0444 216.9769 333.391 1133.9866 276.6825 464.6273 284.4889 120.6126 383.4969 180.5849 278.8388 1145.799;
	3.9265 53.0551 93.6261 120.731 15.3765 34.0817 30.3301 18.7766 27.831 30.7302 56.8044 84.741 127.5771 67.7542 199.5709 75.1872 93.2878 98.8572 91.4593 71.5902 10.11 79.524 73.8637 88.6486 106.082 72.5804 14.0055 1253.4991 778.4979 778.4979 695.3332 94.4195 304.8642 184.2733 212.4187 332.1591 1180.1474 305.4481 458.4151 284.1481 121.6005 378.0798 170.759 273.5913 1192.4406;
	3.8629 52.1967 93.433 119.9308 15.215 33.0646 27.9153 18.4861 26.6091 31.0721 57.4364 85.6838 128.9965 66.7936 195.2355 73.5539 91.2613 96.7097 88.863 70.5907 9.3051 77.1508 73.2533 88.3446 105.0189 70.9693 13.562 1247.2632 790.5271 790.5271 663.2325 95.5388 296.2099 181.7007 209.407 337.2916 1133.4826 310.1719 445.8123 281.3005 117.7966 366.7968 169.5136 273.7679 1145.2897;
	3.9258 53.0466 94.5763 119.312 15.3609 34.1146 27.4245 18.8604 27.1627 30.2673 55.9487 83.4644 125.6552 68.9593 195.66 73.7138 91.4597 96.92 89.9623 70.6432 9.1415 79.6006 72.9811 89.5058 105.8462 72.6171 13.7199 1187.6951 741.7175 741.7175 628.9838 101.5785 299.8743 181.8357 216.1966 316.4662 1110.8586 296.5604 455.9198 283.5167 116.906 378.4442 188.52 278.1565 1122.4301;
	3.9322 53.133 94.439 120.8602 15.3037 34.4803 29.9772 18.9579 27.1007 30.6244 56.6088 84.4492 127.1378 69.655 193.9235 73.0596 90.648 96.0598 88.4259 71.303 9.9924 80.454 73.7513 89.9252 106.5262 74.0832 13.9237 1204.4634 767.7178 767.7178 651.7427 105.1842 294.7529 183.5341 218.3778 327.5596 1080.9183 306.797 466.5009 285.338 119.8987 382.5012 166.8261 281.1104 1092.1779;
	3.9291 53.0907 93.8128 120.3879 15.1387 34.5919 30.888 18.8551 27.9158 30.9757 57.2581 85.4178 128.5961 69.8752 200.6391 75.5896 93.7871 99.3864 92.6909 72.1679 10.296 80.7144 74.6654 87.9999 105.998 73.0125 13.7882 1193.8558 733.531 733.531 698.8741 102.0342 308.9695 185.7603 219.0681 312.9732 1081.648 319.188 469.8666 283.9233 121.2733 383.7391 161.8704 280.1617 1092.9151;
	3.9116 52.8537 94.153 120.1094 14.9312 34.2951 27.6312 18.6554 28.3461 31.1687 57.6149 85.9501 129.3974 69.5813 196.9782 74.2104 92.0759 97.5729 91.4549 71.6952 9.2104 80.0218 74.8236 89.2306 105.0826 73.9443 13.8948 1128.3393 708.5822 708.5822 675.2948 103.2262 304.8497 184.5436 218.1468 302.3284 975.2653 332.9678 465.751 281.4712 114.8898 380.4465 178.6064 266.2287 985.4243;
	3.9003 52.7022 94.5499 119.3782 14.7689 34.1511 28.6366 18.2903 28.2419 30.8756 57.0731 85.1418 128.1806 69.6462 198.6766 74.8502 92.8697 98.4142 89.0457 70.7779 9.5455 79.6858 75.4548 89.0563 105.7337 74.4179 13.8158 1204.1599 773.5892 773.5892 678.9785 111.6337 296.8191 182.1826 218.3504 330.0647 1097.1398 315.156 468.0059 283.2152 115.099 378.8491 190.281 262.2222 1108.5684;
	3.8237 51.6662 93.776 118.7967 14.8132 33.6627 26.2131 18.0219 27.6137 30.7395 56.8216 84.7666 127.6157 69.1808 193.7486 72.9936 90.5662 95.9731 90.0065 70.9225 8.7377 78.5463 74.9745 89.1989 103.3555 74.164 13.2263 1177.635 741.923 741.923 661.1576 113.9867 300.0216 182.5548 216.8911 316.5538 1157.4024 300.1962 461.7712 276.845 116.6403 373.4315 190.2547 236.9214 1169.4587;
	3.879 52.4143 94.6194 117.388 14.9789 32.3315 26.8658 16.0831 28.2503 30.6182 56.5973 84.432 127.112 68.1252 189.4639 71.3794 88.5634 93.8507 88.4951 68.518 8.9553 75.4401 73.3545 89.6418 104.3077 71.3058 13.2237 1265.9641 735.6136 735.6136 673.3237 110.1592 294.9837 176.3654 213.5816 313.8618 1194.0741 314.4068 465.6852 279.3955 121.3366 358.664 190.6698 250.4749 1206.5124;
	3.6774 49.6891 93.3269 114.5318 14.6084 32.5289 26.597 17.2038 28.234 31.1475 57.5758 85.8917 129.3095 67.679 188.812 71.1338 88.2586 93.5278 89.3062 70.4897 8.8657 75.9007 75.0847 89.7994 105.2853 52.2571 13.6018 1231.5391 797.8934 797.8934 671.3274 110.1488 297.6872 181.4407 212.1828 340.4345 1267.0233 313.2023 454.3605 282.0141 120.2743 360.8538 150.3899 225.0285 1280.2215;
	3.704 50.0493 91.4663 111.4784 14.8443 28.0284 27.1391 16.1655 28.3975 31.3039 57.8648 86.3229 129.9586 69.3524 185.8144 70.0045 86.8574 92.0429 88.6102 67.1259 9.0464 65.3996 74.8393 89.3601 101.4364 50.1816 11.9473 1257.5944 814.5073 814.5073 687.3602 112.72 295.3674 172.7823 217.4291 347.5231 1334.3691 299.1761 461.3304 271.7046 118.0055 310.9284 170.6822 231.037 1348.2688;
	3.6083 48.7556 88.9885 111.3035 14.366 29.4964 29.1058 14.1595 28.3253 31.0939 57.4766 85.7438 129.0869 69.5015 186.9364 70.4272 87.3819 92.5987 85.4952 66.7088 9.7019 68.825 75.1872 87.9807 96.4052 50.3083 10.3884 1243.5247 821.8681 821.8681 687.2216 113.1553 284.9839 171.7086 217.8965 350.6637 1289.7713 301.2634 462.0353 258.2282 117.0645 327.2138 154.7093 205.5283 1303.2064;
	3.6772 49.6872 89.2319 106.026 15.081 28.9505 27.3942 13.8483 28.3842 30.9652 57.2387 85.3889 128.5526 67.3728 183.1046 68.9836 85.5908 90.7007 90.0728 67.127 9.1314 67.5511 74.8497 89.6822 99.3979 65.7218 10.9622 1223.5995 799.1963 799.1963 743.8662 114.4192 300.2428 172.7851 211.2228 340.9904 1161.5647 311.3986 462.0867 266.2445 112.2702 321.1573 153.6664 235.3174 1173.6643;
	3.6569 49.4128 92.8146 100.167 15.2466 29.5078 29.4477 13.5943 28.2903 29.9565 55.3742 82.6074 124.365 65.7464 174.1821 65.6221 81.42 86.2809 89.7925 64.2936 9.8159 68.8516 73.158 90.1329 100.4731 65.7016 10.2153 1175.2407 779.8447 779.8447 749.8905 114.6377 299.3082 165.4919 206.1237 332.7338 1186.043 316.5732 460.1846 269.1244 116.9458 327.3402 169.559 237.3771 1198.3976;
	3.7816 51.0982 91.4973 108.5613 15.2323 32.8091 27.6122 13.3068 27.9361 29.1117 53.8126 80.2778 120.8578 65.6161 173.1753 65.2428 80.9494 85.7822 88.9335 66.0839 9.2041 76.5546 72.0459 90.1277 101.9015 64.8822 10.1108 1198.4285 752.5162 752.5162 750.6254 114.629 296.445 170.1001 205.7153 321.0736 1172.7787 308.9887 463.1931 272.9503 118.7149 363.9625 179.5916 232.7213 1184.9952;
];
