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
	3.5541 48.0234 88.1912 111.6521 14.6605 14.2071 15.537 16.5562 26.852 16.46 30.4261 45.3897 68.3339 4.0053 15.2981 5.7635 7.151 7.5779 14.3184 16.5975 5.179 33.1498 52.2253 80.6218 90.6528 70.2148 7.668 703.2117 392.8004 392.8004 187.8728 31.8142 47.7279 42.722 12.5573 167.5948 506.4159 41.2648 302.5869 242.82 7.3779 157.6038 121.6646 228.5435 511.6911;
	3.2464 43.8657 85.1997 109.6447 14.0634 13.7802 14.5329 16.9395 26.5981 20.8377 38.5182 57.4616 86.5082 4.109 5.4468 2.052 2.5461 2.6981 11.9646 1.4653 4.8443 32.1539 60.5075 79.5066 88.6487 72.3408 7.3103 668.6109 364.2792 364.2792 154.3269 28.8004 39.8821 3.7717 12.8822 155.4258 444.2054 32.7903 316.5865 237.4519 7.4721 152.8686 110.9343 209.8823 448.8325;
	3.1709 42.8463 87.3736 111.8356 14.8153 12.9775 13.4332 17.9992 27.5406 22.6051 41.7851 62.3352 93.8453 7.999 13.897 5.2356 6.496 6.8838 19.4548 17.0401 4.4777 30.2808 64.8311 81.7362 94.6877 73.043 8.8963 618.3746 334.4209 334.4209 140.1187 32.338 64.8494 43.8614 25.078 142.6862 402.3622 30.6651 250.3911 253.6279 5.9186 143.9636 94.1527 206.5673 406.5535;
	2.8769 38.8736 88.3243 110.0393 14.6814 12.4421 12.6773 17.9505 27.2689 22.9125 42.3534 63.1829 95.1215 11.1931 11.3404 4.2724 5.301 5.6174 10.4268 20.4727 4.2258 29.0316 65.7647 81.9119 97.8709 74.7834 10.137 511.222 266.345 266.345 160.2578 28.5243 34.756 52.6967 35.0919 113.6405 314.7107 25.2787 195.6108 262.1542 0.963 138.0243 83.7802 213.4812 317.9889;
	2.359 31.8753 88.3908 111.1999 14.539 14.424 11.7759 18.2283 19.3432 22.3587 41.3297 61.6558 92.8225 14.7935 14.5828 5.494 6.8166 7.2236 15.9117 24.0457 3.9253 33.6561 56.4159 81.9762 98.6054 74.2172 9.4185 392.0459 201.3573 201.3573 144.5794 27.9115 53.0389 61.8936 46.3797 85.9124 175.3875 31.4836 192.5065 264.1216 10.2103 160.0106 84.5309 216.3876 177.2145;
	2.8873 39.0141 88.8318 112.1265 14.242 22.1276 11.5299 18.0609 11.882 20.9433 38.7133 57.7527 86.9463 28.6962 15.4253 5.8114 7.2104 7.6409 29.093 26.9162 3.8433 51.6311 58.1297 83.4329 98.8082 73.4461 8.1758 321.2471 183.5463 183.5463 128.2209 24.0295 96.9768 69.2823 89.9666 78.3131 141.1633 29.4417 204.4854 264.6647 10.4521 245.4692 85.1266 204.0937 142.6338;
	2.3099 31.2113 83.2874 109.4361 13.941 22.0313 11.8425 16.2251 13.6725 27.2615 50.3924 75.1756 113.1764 40.4879 20.3619 7.6712 9.518 10.0862 37.4361 29.371 3.9475 51.4063 68.6262 81.7343 96.325 71.2137 10.3891 271.5714 204.7365 204.7365 106.6598 16.393 124.7869 75.6011 126.9351 87.3542 153.2705 21.1077 161.8378 258.0134 6.097 244.4002 87.0319 216.6795 154.8671;
	1.7957 24.2638 63.4057 109.9539 14.8413 19.6115 13.1013 17.3646 21.3693 28.6202 52.904 78.9223 118.8171 41.509 26.8983 10.1338 12.5734 13.324 49.6289 48.2983 4.3671 45.7602 73.0651 83.2979 98.2478 71.5297 12.039 164.8013 175.9649 175.9649 103.083 10.6108 165.4296 124.3199 130.1364 75.0784 122.3199 26.8257 194.8363 263.1639 4.7665 217.5572 88.5722 205.8026 123.5941;
	2.776 37.5096 81.5474 103.8012 14.6186 25.8542 11.0078 18.0439 22.9501 29.4787 54.4909 81.2897 122.3812 40.6215 20.6207 7.7687 9.639 10.2144 61.7301 49.7381 3.6693 60.3265 74.8424 86.5354 99.1129 70.7705 11.7742 146.604 148.106 148.106 99.4736 8.3622 205.767 128.026 127.3539 63.1919 123.9915 23.7041 156.6073 265.4809 16.4308 286.8096 77.5716 229.7135 125.283;
	1.9868 26.8459 81.6384 104.216 12.7036 15.2621 9.7183 18.0907 26.9344 30.4217 56.234 83.8901 126.2961 41.4359 9.4566 3.5627 4.4204 4.6843 72.6342 43.6195 3.2394 35.6115 74.3112 86.0894 99.587 71.1775 12.0494 241.1525 227.2174 227.2174 109.4924 9.5036 242.1141 112.2766 129.9071 96.9461 230.3194 23.1401 78.1982 266.751 0.0058 169.3072 71.0076 199.2298 232.7186;
	1.698 22.9432 76.4702 100.0232 12.72 27.0313 13.052 17.081 27.7369 30.8338 56.9958 85.0265 128.0069 46.6543 29.329 11.0495 13.7096 14.5281 67.1061 36.6323 4.3507 63.0729 74.7176 83.3501 82.9636 72.7831 11.0 333.8614 271.4984 271.4984 156.895 14.1174 223.6869 94.2915 146.2674 115.8393 295.6633 23.9614 174.5508 222.2239 0.0 299.8668 89.3654 180.7429 298.7431;
	1.8313 24.7453 79.5367 86.7646 12.4609 31.2545 19.4505 17.0923 27.2102 29.8286 55.1378 82.2547 123.834 51.7576 32.5255 12.2538 15.2038 16.1115 74.0453 49.4277 6.4835 72.9272 73.9597 76.7324 81.0652 70.4802 11.4842 452.7395 342.6255 342.6255 282.7269 17.7817 246.8177 127.2269 162.2669 146.1869 425.3139 38.25 205.9437 217.139 0.0 346.7166 108.3051 173.6156 429.7443;
	2.9743 40.189 82.0666 82.1562 13.7851 32.2188 21.0485 14.5265 26.9461 29.4855 54.5035 81.3084 122.4094 55.2703 39.1496 14.7494 18.3002 19.3927 79.0162 60.715 7.0162 75.1773 74.2198 70.046 85.1569 68.4246 10.0165 636.6718 449.8174 449.8174 326.6353 24.4385 263.3873 156.2806 173.2798 191.9221 625.5515 54.4495 216.5323 228.0989 0.0 357.4142 141.1581 198.6868 632.0677;
	3.5664 48.1905 80.9363 100.3037 14.5397 30.0962 22.0469 15.3296 26.0765 29.6058 54.7258 81.6401 122.9087 56.6707 57.6671 21.7257 26.956 28.5653 83.4336 60.1466 7.349 70.2245 71.3621 74.517 85.8162 70.7511 10.262 792.1944 574.3842 574.3842 386.1738 28.5361 278.1121 154.8176 177.6702 245.0706 750.9811 73.328 291.2379 229.8648 0.0 333.8674 142.3512 241.774 758.8039;
	3.6859 49.8052 81.6774 103.5053 14.2328 31.814 26.4223 16.4505 27.4667 25.8848 47.8477 71.3794 107.4613 64.1129 82.1067 30.9332 38.3801 40.6714 86.8547 54.8603 8.8074 74.2326 47.3439 75.1292 85.9468 69.6333 11.4907 985.23 635.8806 635.8806 492.6787 35.4196 289.5156 141.2105 201.0025 271.3091 951.1816 106.9944 436.6295 230.2148 0.0 352.9231 153.3168 241.1057 961.0897;
	3.6552 49.3893 88.3212 108.7866 14.035 32.0511 28.1814 16.6519 28.0226 20.5671 38.0179 56.7152 85.3845 64.379 117.0264 44.089 54.7031 57.9689 91.4858 62.134 9.3938 74.7859 40.1757 77.3023 90.2063 70.7112 11.5649 1048.4223 676.1671 676.1671 639.4576 46.3984 304.9526 159.9331 201.8368 288.498 991.2279 155.4568 400.1984 241.6241 0.0 355.5536 163.3019 266.7223 1001.5532;
	3.6843 49.7831 86.7371 111.9533 13.8361 30.1238 27.3673 17.383 25.7976 19.859 36.7091 54.7628 82.445 64.9819 143.4076 54.028 67.0347 71.0368 88.2023 66.9852 9.1224 70.2889 22.1173 82.1115 96.6965 72.0288 11.7432 1007.3077 713.6101 713.6101 648.4727 78.9679 294.0076 172.42 203.727 304.4736 988.1671 199.36 389.2424 259.0084 0.0 334.1734 185.4305 267.2146 998.4605;
	3.6857 49.8026 90.3464 111.1601 13.7392 30.3194 26.6259 17.858 25.027 18.6766 34.5233 51.502 77.536 63.6433 170.268 64.1475 79.5904 84.3421 88.7535 69.3468 8.8753 70.7452 36.2621 83.2546 99.5542 70.8733 12.565 1148.4077 725.1814 725.1814 669.198 97.3566 295.845 178.4989 199.5303 309.4107 1073.8194 233.6319 404.6463 266.6632 109.1927 336.3431 182.297 265.1812 1085.005;
	3.7482 50.6467 88.4795 114.1325 13.9726 32.729 30.4336 12.9798 26.699 19.2324 35.5509 53.0349 79.8438 65.9227 188.2867 70.9359 88.0131 93.2676 87.4048 68.4087 10.1445 76.3676 47.5957 81.5623 99.6655 56.7755 11.9178 1273.4494 780.1038 780.1038 675.2709 115.9038 291.3494 176.0843 206.6765 332.8443 1157.4813 244.0422 445.8066 266.9611 120.5688 363.0734 206.1757 268.4812 1169.5384;
	3.7248 50.33 87.5329 104.3893 14.2743 32.333 30.7213 7.3561 26.3309 18.9872 35.0976 52.3587 78.8258 67.7281 200.7077 75.6155 93.8192 99.4203 89.9079 70.6533 10.2404 75.4436 41.2304 2.9286 11.5382 41.5112 8.6767 1245.9009 794.8721 794.8721 701.2718 115.616 299.6931 181.8618 212.3366 339.1454 1135.4314 258.17 447.8824 30.906 120.192 358.6802 209.4069 226.6186 1147.2589;
	3.7537 50.7208 89.9164 114.8613 14.5976 33.4798 31.1019 18.1162 16.233 17.6509 32.6274 48.6736 73.2778 67.5775 201.1427 75.7793 94.0225 99.6358 87.4849 71.1017 10.3673 78.1196 29.2151 68.6578 99.2677 66.594 13.5129 1279.2852 806.1469 806.1469 693.8039 114.3406 291.6162 183.0159 211.8646 343.956 1160.1354 247.6575 445.5873 265.8958 121.0505 371.4028 210.3184 263.0854 1172.2201;
	3.8281 51.7255 89.1511 117.1784 14.4835 33.59 31.4173 16.7723 9.2219 18.9767 35.0781 52.3296 78.7819 65.2534 198.4274 74.7564 92.7533 98.2908 84.8039 70.907 10.4724 78.3766 20.5348 84.1566 99.4856 69.7837 13.1025 1326.3454 803.1537 803.1537 664.3172 110.6868 282.6797 182.5148 204.5781 342.6789 1246.9062 242.0412 446.1586 266.4793 118.1048 372.6246 215.3658 243.2532 1259.8948;
	3.8618 52.1817 91.0697 116.7385 14.7965 34.0788 31.8942 17.4085 18.5265 17.9907 33.2555 49.6107 74.6886 66.6964 195.4074 73.6186 91.3416 96.7948 82.8086 67.1981 10.6314 79.5171 33.5569 83.0964 87.5921 72.0702 13.3695 1335.5577 794.7929 794.7929 668.7379 109.2975 276.0285 172.968 209.1023 339.1116 1252.8209 242.4428 446.7778 234.6218 114.8268 378.047 214.5797 265.1558 1265.8711;
	3.7719 50.9666 88.6462 113.725 14.4349 33.6477 33.3782 17.4379 10.0782 16.1001 29.7607 44.3972 66.8397 62.5404 195.8809 73.797 91.5629 97.0294 84.1523 68.3991 11.1261 78.5112 38.3039 84.9049 102.631 69.265 12.8666 1324.4265 808.6404 808.6404 701.5077 112.02 280.5075 176.0594 196.0726 345.0199 1227.0886 261.0722 449.9066 274.9044 118.1155 373.2647 210.9245 263.8853 1239.8708;
];
