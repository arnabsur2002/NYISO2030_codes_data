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
	3.8036 51.3947 87.3096 110.3015 14.2915 33.1882 26.4267 17.966 25.4919 29.8769 55.2269 82.3877 124.0343 63.2924 199.9409 75.3266 93.4607 99.0405 39.3777 71.6354 8.8089 77.4391 73.8022 86.693 103.4627 71.9623 13.354 1149.5224 667.1177 667.1177 533.5297 107.3435 131.259 184.3897 198.4302 284.6369 1098.2665 202.4461 431.2556 277.1322 114.3077 368.1677 146.8076 261.5288 1109.7067;
	3.8574 52.122 90.5295 119.4103 14.5024 33.4314 28.6267 18.7139 26.2828 29.9929 55.4414 82.7077 124.516 63.2983 198.3032 74.7096 92.6952 98.2293 30.8777 72.0463 9.5422 78.0066 74.4972 88.1789 105.315 71.2422 13.3795 1233.5022 664.3367 664.3367 512.9427 106.636 102.9257 185.4475 198.4487 283.4503 1139.2845 207.9815 432.6551 282.0937 117.5191 370.8655 145.869 273.3181 1151.1521;
	3.8723 52.3237 91.3817 65.7248 14.5344 33.6502 27.9912 18.4531 26.185 29.1553 53.8931 80.3979 121.0387 65.0681 199.807 75.2761 93.3982 98.9742 35.0493 70.3763 9.3304 78.5171 73.1625 87.9147 105.3388 70.5304 13.6391 1201.6351 677.391 677.391 515.8579 105.6905 116.8312 181.1487 203.9973 289.0201 1155.1344 197.3401 428.1883 282.1576 117.0271 373.2927 140.0124 271.8968 1167.167;
	3.7009 50.0073 89.4907 83.2074 14.102 32.2597 26.0456 18.257 25.9085 30.236 55.8907 83.378 125.5251 67.1122 200.4705 75.5261 93.7083 99.3028 42.5939 71.7415 8.6819 75.2726 71.1088 86.3855 104.4914 72.056 13.5488 1194.3375 685.9071 685.9071 489.9605 91.4147 141.9796 184.6628 210.4057 292.6537 1060.9004 215.4083 429.3971 279.8876 115.1788 357.8676 171.3216 272.0126 1071.9514;
	3.6038 48.6955 93.5868 120.6394 14.5738 32.8556 23.2189 18.9404 27.4612 31.2074 57.6863 86.0566 129.5578 68.3805 199.3495 75.1038 93.1843 98.7475 77.5827 71.1905 7.7396 76.663 68.7976 86.7604 105.5328 73.4045 13.7808 1121.5155 643.0401 643.0401 484.016 88.0019 258.6089 183.2444 214.3822 274.3638 1066.6471 202.5044 451.4842 282.6771 115.5425 364.4779 190.0362 276.4261 1077.758;
	3.7021 50.0232 93.495 119.7127 14.826 33.3443 28.0699 18.8436 28.0753 31.3888 58.0218 86.5571 130.3112 67.8389 202.3293 76.2264 94.5772 100.2236 91.2473 72.5178 9.3566 77.8034 74.5093 87.5903 106.3002 73.7022 13.9636 1205.1152 700.3007 700.3007 473.5138 82.6812 304.1578 186.6611 212.6843 298.795 1054.684 186.847 472.2564 284.7328 112.3139 369.8998 190.944 270.75 1065.6702;
	3.84 51.8867 93.5371 117.6119 14.8072 32.81 28.6557 18.8573 27.6883 31.3121 57.8799 86.3454 129.9926 67.5442 200.8355 75.6636 93.8789 99.4836 91.1337 73.2359 9.5519 76.5566 75.4011 86.4653 106.2268 75.7763 13.9259 1166.6855 729.6153 729.6153 521.6972 80.1678 303.7789 188.5094 211.7602 311.3025 1050.8278 201.5932 460.0889 284.536 118.0032 363.9721 198.2523 270.3765 1061.774;
	3.8232 51.6597 91.5095 115.4284 14.8539 32.6532 27.1549 18.4126 26.5188 31.2897 57.8386 86.2837 129.8997 68.6191 203.641 76.7206 95.1903 100.8733 92.8019 73.0135 9.0516 76.1909 75.516 86.5221 106.0549 75.0258 13.7419 1148.9693 702.6521 702.6521 500.252 71.3154 309.3398 187.9369 215.13 299.7982 1063.5982 198.5678 451.4521 284.0756 112.9368 362.2333 192.6049 261.9507 1074.6774;
	3.7822 51.1058 91.9156 117.4192 14.5037 32.6931 26.1681 18.4226 26.1604 31.3644 57.9766 86.4897 130.2098 68.771 204.7235 77.1284 95.6963 101.4095 92.3505 73.4121 8.7227 76.2839 75.5682 88.3331 106.021 75.2377 13.8646 1131.2956 770.7014 770.7014 570.7406 71.4458 307.835 188.963 215.6065 328.8326 1106.4225 225.9761 450.7416 283.9849 117.0893 362.6755 166.3353 266.0859 1117.9477;
	3.8408 51.8983 93.7964 118.6228 14.7645 33.2567 28.0387 18.8802 27.0842 31.386 58.0165 86.5492 130.2994 68.6534 202.4065 76.2555 94.6133 100.2618 92.9267 73.4668 9.3462 77.599 75.6288 88.0111 106.0985 74.8624 14.0225 1128.655 760.297 760.297 603.801 83.5114 309.7557 189.1037 215.2378 324.3934 1104.6012 238.4411 459.6275 284.1924 119.1957 368.928 156.3205 267.7323 1116.1075;
	3.8421 51.9156 94.6024 119.9622 14.8825 33.4362 26.3246 18.8326 27.3724 31.6 58.4122 87.1394 131.1879 68.437 200.958 75.7098 93.9362 99.5443 91.6395 72.7896 8.7749 78.0179 75.5727 88.8005 106.0243 75.0019 13.8909 1052.1909 743.2019 743.2019 591.2996 88.8304 305.4649 187.3607 214.5594 317.0995 1035.3715 251.3601 465.387 283.9936 119.7869 370.9192 164.2913 270.0636 1046.1566;
	3.8223 51.6478 94.6059 120.0403 14.5315 34.4662 25.9982 18.2563 27.0936 31.2891 57.8374 86.282 129.8971 68.063 193.8171 73.0195 90.5982 96.0071 87.6658 70.7658 8.6661 80.4211 75.2475 85.0698 103.5325 74.2753 13.4921 988.3555 747.6254 747.6254 623.1848 91.6741 292.2192 182.1514 213.3868 318.9868 1048.5118 268.9051 453.8612 277.3193 115.1479 382.345 185.7001 273.5509 1059.4338;
	3.9006 52.7062 94.712 119.6907 15.0565 34.3701 28.9097 18.301 27.8567 31.3148 57.8849 86.353 130.0039 68.6034 195.8218 73.7747 91.5353 97.0001 86.8631 71.3848 9.6366 80.197 75.4487 89.0724 103.9674 74.3127 13.6488 1055.6197 762.3903 762.3903 622.3719 87.8671 289.5437 183.7446 215.0809 325.2865 1015.4871 260.6965 471.278 278.4842 114.0763 381.2794 162.1472 269.9304 1026.0651;
	3.8756 52.3683 91.775 117.1129 14.6667 33.6331 27.4705 18.3177 27.6294 30.945 57.2014 85.3332 128.4686 65.9491 195.4742 73.6438 91.3728 96.8279 86.7257 71.4813 9.1568 78.4772 75.2462 87.9402 101.5383 71.2437 13.5148 1028.4361 726.1898 726.1898 639.3332 88.1145 289.0858 183.9929 206.7594 309.841 977.9113 237.4123 467.9864 271.9775 115.4642 373.1031 152.5099 266.6121 988.0979;
	3.7868 51.1678 91.9659 114.3047 14.6714 32.964 25.0084 18.2488 26.5781 30.3114 56.0302 83.586 125.8383 66.8585 197.821 74.5279 92.4698 97.9904 85.942 70.4311 8.3361 76.9159 73.3651 88.6989 102.7582 72.639 13.5538 995.7719 734.2222 734.2222 670.1486 94.7087 286.4734 181.2898 209.6103 313.2681 904.4996 281.792 453.7568 275.2451 115.5439 365.6804 168.45 255.4729 913.9215;
	3.8652 52.2269 91.0845 114.9307 14.5194 34.0279 26.7689 18.0087 26.689 29.439 54.4176 81.1804 122.2166 66.4718 196.1583 73.9015 91.6926 97.1668 84.8244 69.7049 8.923 79.3985 72.0841 86.8088 102.9119 73.5349 13.5704 1157.1447 770.8412 770.8412 639.6879 102.405 282.748 179.4206 208.3981 328.8922 1027.7314 299.0311 466.6269 275.6568 115.921 377.4829 180.8318 258.9265 1038.4369;
	3.6768 49.6817 89.2069 111.4618 14.1469 33.2141 25.3485 17.7082 26.5596 30.2656 55.9455 83.4597 125.6481 64.8998 198.0228 74.6039 92.5641 98.0904 87.0105 70.8953 8.4495 77.4995 72.9841 87.0173 101.8913 72.3462 12.7485 1105.8407 767.5425 767.5425 665.1774 98.746 290.035 182.4846 203.4695 327.4848 1100.9529 285.6936 447.5781 272.9231 117.9507 368.455 180.7746 232.0451 1112.4212;
	3.8945 52.6235 92.5844 113.428 14.4094 33.3205 25.8527 15.0623 27.122 30.7735 56.8844 84.8604 127.7568 65.0995 195.3103 73.582 91.2962 96.7467 87.24 69.2066 8.6176 77.7478 73.9779 84.5298 100.809 67.484 11.6079 1158.95 736.6232 736.6232 658.1014 96.1138 290.8 178.1381 204.0958 314.2925 1064.5161 293.1845 462.6774 270.024 119.5652 369.6351 189.6384 246.679 1075.6048;
	3.5482 47.9439 88.225 107.3925 14.2945 32.5058 24.5838 14.4495 25.8184 29.4805 54.4943 81.2948 122.3889 66.41 187.9357 70.8037 87.849 93.0937 83.7451 68.4828 8.1946 75.8469 74.4978 83.5624 99.3374 39.7932 11.7583 1216.1894 772.3238 772.3238 640.4082 98.6624 279.1505 176.275 208.2043 329.5248 1178.3396 293.8905 438.4261 266.0824 113.6005 360.5978 152.9397 212.1786 1190.614;
	3.7308 50.4115 89.7603 105.2211 14.5366 28.5173 25.7104 14.6875 26.1882 28.8655 53.3574 79.5987 119.8355 64.6522 186.1585 70.1341 87.0183 92.2134 86.0349 64.6546 8.5701 66.5403 72.8752 86.8288 100.0204 49.0592 10.4942 1243.5671 777.2268 777.2268 635.5211 107.8091 286.783 166.4211 202.6932 331.6168 1242.4414 279.9921 430.4999 267.9119 116.1143 316.3514 179.6762 236.5782 1255.3835;
	3.7238 50.317 91.7533 109.9806 14.8767 29.5075 28.3606 15.3534 26.8122 30.5162 56.4087 84.1507 126.6884 64.5936 188.2273 70.9135 87.9853 93.2382 87.8998 64.5908 9.4535 68.8508 75.3349 88.7005 100.7641 62.0151 10.755 1170.2839 778.2361 778.2361 628.4484 105.6622 292.9993 166.2568 202.5097 332.0474 1169.4493 293.5102 422.7997 269.9037 118.7604 327.3362 154.8158 239.4832 1181.6311;
	3.5886 48.4904 89.4373 102.8992 14.746 28.7161 27.1144 13.3459 26.4903 30.1338 55.7018 83.0961 125.1008 65.1455 192.6106 72.5649 90.0343 95.4095 88.0666 67.9058 9.0381 67.0042 72.9407 88.7335 99.4674 65.0488 9.9855 1184.6945 762.9256 762.9256 715.0676 101.4906 293.5553 174.7898 204.2398 325.5149 1083.3358 310.1661 433.825 266.4305 113.5834 318.557 158.1631 223.201 1094.6205;
	3.4899 47.1558 87.0179 94.4218 14.6675 27.4382 28.6299 12.5072 25.9291 29.5058 54.5411 81.3646 122.4939 66.3924 192.5502 72.5422 90.006 95.3795 86.986 66.4578 9.5433 64.0224 72.7832 87.8634 97.5232 60.1347 9.6823 1191.9303 776.9221 776.9221 782.0196 107.8624 289.9533 171.0625 208.1492 331.4868 1154.7913 312.7182 432.4111 261.2229 111.9321 304.3809 167.1337 211.7878 1166.8204;
	3.7537 50.7207 88.7752 104.2219 15.2917 31.3696 25.124 12.3311 26.1842 29.4175 54.3778 81.1209 122.1271 64.0125 189.9031 71.5449 88.7686 94.0683 86.9936 66.8435 8.3747 73.1957 71.5482 89.3659 100.3433 61.2209 9.7533 1262.6539 783.316 783.316 806.7848 108.3388 289.9787 172.0553 200.6879 334.2148 1181.428 302.4997 401.3048 268.7766 114.2619 347.9934 179.8506 210.7972 1193.7346;
];
