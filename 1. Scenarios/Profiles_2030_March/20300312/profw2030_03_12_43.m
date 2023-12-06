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
	3.6942 49.9162 91.5651 110.6776 15.0555 32.901 28.8681 13.3489 27.1427 29.8493 55.176 82.3118 123.92 68.03 194.1634 73.1499 90.7601 96.1786 90.4711 72.7978 9.6227 76.7691 75.2466 86.709 96.2645 70.0105 10.0783 1146.7756 798.86 798.86 763.2359 114.4473 301.5703 187.3817 213.2832 340.847 1143.7075 301.438 475.9755 257.8513 119.3135 364.982 200.758 253.0989 1155.6211;
	3.7994 51.3384 89.0458 111.4111 14.985 32.5501 29.3059 12.6296 26.9549 26.0025 48.0653 71.704 107.9499 68.9287 191.5099 72.1502 89.5197 94.8642 85.7588 69.5226 9.7686 75.9503 71.0759 86.0549 97.7331 66.6778 9.2098 1134.5726 761.4465 761.4465 763.6444 117.0122 285.8626 178.9513 216.1008 324.8838 1141.1602 291.9619 469.0555 261.7851 118.3265 361.0896 198.7747 261.1122 1153.0473;
	3.6003 48.6478 85.6504 95.6485 14.1497 31.9172 25.492 11.1301 25.7392 25.44 47.0254 70.1527 105.6144 67.4785 189.9199 71.5512 88.7765 94.0766 86.4493 70.5027 8.4973 74.4735 68.4136 84.9534 85.7099 63.2282 9.3096 1138.7277 782.5645 782.5645 791.0239 115.082 288.1642 181.4742 211.5543 333.8942 1116.8538 282.5951 454.1401 229.5802 113.6692 354.0684 174.5245 249.9531 1128.4877;
	3.4268 46.3042 84.6667 97.2262 14.1419 30.5239 22.6358 10.5809 25.7387 26.0378 48.1306 71.8013 108.0965 62.7433 182.0728 68.5949 85.1085 90.1896 85.6994 70.9471 7.5453 71.2225 69.9121 82.7703 77.6735 54.7028 7.9833 1100.3348 783.9104 783.9104 758.2922 111.2541 285.6648 182.6179 196.7088 334.4684 1101.9188 259.2102 433.0936 208.054 106.5297 338.6123 170.9588 238.4783 1113.3971;
	3.5668 48.1952 83.6332 85.6338 14.9326 30.8458 18.8816 8.9003 21.1175 24.7471 45.7446 68.2419 102.7378 63.6719 186.5086 70.266 87.1819 92.3868 86.49 71.0486 6.2939 71.9734 68.5598 84.6152 69.9325 47.6389 6.7779 1152.1434 783.0959 783.0959 708.1471 108.8052 288.3 182.8793 199.6201 334.1209 1117.013 241.7076 390.4914 187.3193 106.9134 342.1822 194.3893 229.12 1128.6486;
	3.5578 48.0734 81.0042 77.9272 14.4591 28.7028 16.7037 3.7379 22.9668 27.0206 49.9472 74.5115 112.1766 61.1991 182.1236 68.614 85.1322 90.2147 83.9157 68.8744 5.5679 66.9732 69.2169 82.7144 52.4436 25.8748 0.305 1182.4821 719.4628 719.4628 636.8628 98.4243 279.7189 177.2828 191.8674 306.9708 1127.0146 219.3634 328.3115 140.4739 88.2892 318.4099 185.7872 187.1164 1138.7544;
	3.0864 41.7035 68.9991 63.1297 14.1622 27.5266 15.0876 2.7028 17.6818 25.8164 47.7212 71.1907 107.1772 61.8303 180.6109 68.0441 84.4251 89.4654 84.6578 69.4979 5.0292 64.2287 67.661 72.032 41.3677 0.0 0.3716 1114.0343 655.9107 655.9107 508.7309 65.4137 282.1927 178.8878 193.8464 279.8552 1060.4524 193.6264 268.5342 110.8063 80.2683 305.3614 155.9218 133.7668 1071.4988;
	3.0922 41.7824 66.5196 68.174 14.1472 27.3605 15.7576 2.9994 15.4219 18.2123 33.6651 50.2217 75.6085 61.941 189.1427 71.2584 88.4132 93.6916 88.1398 70.2886 5.2525 63.8412 43.1165 77.538 51.2051 5.6921 0.9495 1155.8583 687.0431 687.0431 596.1786 67.9245 293.7992 180.9231 194.1934 293.1384 1082.9121 204.138 225.5859 137.1566 75.4109 303.5191 152.1493 137.3821 1094.1924;
	2.7618 37.3181 54.6146 63.1273 14.2003 22.0958 15.4914 0.7205 20.6907 19.6806 36.3794 54.2709 81.7045 63.8008 183.4162 69.101 85.7364 90.855 85.8324 68.9198 5.1638 51.5569 29.0009 72.1474 47.4447 2.4255 0.0 1195.9006 783.1236 783.1236 732.3018 92.8243 286.1081 177.3997 200.0241 334.1327 1116.6973 235.8231 214.393 127.0841 57.0661 245.1162 143.2633 146.9701 1128.3296;
	2.5816 34.8833 47.5727 62.0842 14.9335 17.6685 18.7984 1.7664 21.0198 17.1502 31.7019 47.293 71.1993 63.9698 179.2524 67.5323 83.7901 88.7925 86.1634 68.1353 6.2661 41.2265 35.3641 63.5542 34.029 4.2074 0.972 1127.2129 767.4856 767.4856 715.0327 105.7485 287.2113 175.3804 200.554 327.4605 1091.4421 220.5885 309.4466 91.1491 46.3184 196.0024 128.6545 122.5205 1102.8113;
	2.2919 30.9693 37.0028 49.4925 14.2981 13.8182 18.8795 1.3093 20.2363 14.9613 27.6557 41.2569 62.112 64.4403 170.4002 64.1973 79.6522 84.4076 84.7959 70.0135 6.2932 32.2424 12.6185 52.4262 24.4438 4.2102 1.8217 1125.362 766.2981 766.2981 691.2116 100.3017 282.653 180.215 202.0292 326.9539 1078.5058 210.7856 387.2009 65.4745 44.0141 153.2895 93.2841 93.8583 1089.7403;
	1.5598 21.0758 28.135 29.4511 10.9559 10.6159 18.7302 1.1403 18.2589 16.8887 31.2185 46.5718 70.1136 65.0779 172.2698 64.9016 80.5261 85.3336 83.6389 70.0988 6.2434 24.7705 36.762 37.3096 19.4425 4.6683 0.8066 979.4106 711.0245 711.0245 662.8129 97.3185 278.7963 180.4346 204.028 303.3705 962.0536 183.8222 385.7527 52.0782 31.416 117.7658 67.6964 75.2342 972.075;
	1.0607 14.332 25.7602 27.6408 9.2102 7.5515 17.8449 2.001 15.343 14.1024 26.0681 38.8884 58.5463 64.4963 173.7974 65.4772 81.2402 86.0903 87.5943 69.9399 5.9483 17.6202 38.5667 35.3567 21.348 8.4931 2.4265 934.7877 768.5884 768.5884 680.3109 97.989 291.981 180.0256 202.2048 327.9311 987.2902 204.8758 404.6427 57.1821 31.2841 83.7717 49.8062 53.2034 997.5744;
	0.8116 10.9668 18.2655 31.8762 7.8254 8.0324 12.9746 2.3366 13.2354 17.669 32.6608 48.7236 73.353 65.5925 178.2261 67.1457 83.3104 88.2841 83.9987 69.444 4.3249 18.7422 46.5391 38.5907 23.3317 7.5286 3.6158 749.6196 704.4265 704.4265 681.7859 89.4175 279.9957 178.7491 205.6415 300.5553 795.4803 204.5955 380.8037 62.4956 35.2532 89.1056 36.0533 51.967 803.7665;
	0.8526 11.5204 19.6107 12.4693 6.1719 8.2407 10.663 1.7885 12.9917 16.7465 30.9556 46.1797 69.5232 65.3775 167.2259 63.0014 78.1684 82.8352 74.564 66.9491 3.5543 19.2283 52.3498 46.4364 23.8583 1.952 3.3165 764.7363 662.4428 662.4428 622.6269 79.246 248.5468 172.327 204.9672 282.6422 749.253 201.8739 328.0955 63.906 30.7928 91.4168 36.5537 51.179 757.0577;
	0.8867 11.9809 16.1685 27.0914 6.6444 1.995 5.443 0.8505 9.8401 16.0216 29.6157 44.1808 66.5139 64.1102 172.9432 65.1553 80.8409 85.6672 77.0998 68.1356 1.8143 4.6549 55.3127 37.9051 22.5182 2.1937 2.1358 776.0982 565.7036 565.7036 574.026 77.8419 256.9993 175.3812 200.9941 241.3669 602.8769 198.7431 228.4186 60.3167 31.1267 22.1309 22.4931 20.7092 609.1568;
	0.5041 6.8113 0.1441 0.0957 5.818 2.2747 4.0711 0.1085 11.4887 19.7751 36.554 54.5314 82.0968 61.0265 182.7685 68.857 85.4336 90.5342 84.4715 67.2728 1.357 5.3077 54.0664 37.1673 15.3517 3.8728 1.6107 785.8544 570.4138 570.4138 623.6424 76.3615 281.5717 173.1604 191.3263 243.3765 760.2036 197.3419 239.0013 41.1205 39.4287 25.2345 18.4051 8.3323 768.1223;
	1.1637 15.7237 0.756 0.5257 2.7261 11.8598 8.4792 0.6555 2.2065 21.4094 39.575 59.0381 88.8815 65.2403 145.1316 54.6775 67.8406 71.8908 84.9911 53.0236 2.8264 27.6729 64.4547 33.2975 14.3552 3.1082 1.7116 801.7589 567.8493 567.8493 669.4151 85.0738 283.3037 136.4828 204.5372 242.2824 776.0438 216.6884 356.8037 38.4515 81.5687 131.5651 27.9315 17.7326 784.1276;
	0.5701 7.7035 22.5176 37.7568 1.4762 5.8807 4.2429 2.3584 12.6398 24.1649 44.6684 66.6364 100.3208 65.0904 129.6173 48.8326 60.5886 64.2058 26.9543 59.7631 1.4143 13.7216 72.2807 44.94 23.4785 8.0347 2.3491 839.1268 512.8187 512.8187 655.1726 84.3751 89.8476 153.8303 204.0673 218.8027 710.1273 198.7132 360.6413 62.8888 95.4784 65.2364 17.5701 11.2036 717.5244;
	0.3602 4.8671 32.2918 56.542 2.7951 5.6367 5.0131 3.3864 25.0598 26.8864 49.6991 74.1413 111.6193 62.4933 115.2319 43.413 53.8642 57.08 34.886 63.0443 1.671 13.1522 72.9865 68.3369 38.2591 19.4561 3.0448 712.5096 353.7619 353.7619 613.8085 69.9792 116.2866 162.2762 195.9248 150.9384 595.5827 202.4618 60.6212 102.4797 98.8771 62.5294 1.1545 34.4316 601.7867;
	0.6925 9.3566 46.5483 77.6826 6.146 7.872 0.0295 4.5965 1.9051 25.6316 47.3797 70.6812 106.4101 49.0337 129.5059 48.7906 60.5365 64.1506 84.3439 63.5393 0.0098 18.3679 70.6491 81.3177 42.4874 13.6375 2.4125 597.1238 328.4653 328.4653 510.6525 50.0437 281.1465 163.5504 153.7271 140.1452 586.6356 185.7223 39.1434 113.8056 105.2384 87.3264 9.1971 41.9912 592.7464;
	0.6296 8.5068 45.0984 73.0263 7.4332 14.4136 2.9553 2.996 12.4583 23.0913 42.684 63.6761 95.864 35.2691 157.5795 59.3672 73.6593 78.0568 83.4775 64.7792 0.9851 33.6316 69.0762 71.4703 40.4453 16.8172 1.4584 440.8094 327.5038 327.5038 461.2725 48.7127 278.2584 166.7419 110.5734 139.735 670.3045 164.7911 147.2177 108.3355 88.6468 159.8943 24.1321 38.5417 677.2868;
	0.8311 11.2294 41.1869 66.4473 7.6468 13.9698 7.5697 3.2117 10.6936 16.5842 30.6556 45.7321 68.8494 22.1915 148.7985 56.059 69.5546 73.7072 83.8491 65.6703 2.5232 32.5962 33.9401 62.0938 36.1762 29.009 1.6596 419.424 386.4126 386.4126 526.9699 52.95 279.4971 169.0355 69.5735 164.8694 550.3177 152.4526 126.6101 96.9006 71.3222 154.9715 61.4532 0.1904 556.0502;
	0.919 12.418 47.1414 68.4629 1.2066 9.8612 6.2644 5.4085 7.6476 18.8584 34.8594 52.0034 78.2909 8.4022 159.9833 60.2728 74.7829 79.2475 85.8499 63.0437 2.0881 23.0095 48.5751 62.8815 44.9475 33.4604 2.9855 307.1626 303.1936 303.1936 387.4409 52.786 286.1663 162.2748 26.3421 129.3626 388.4683 118.3404 94.1677 120.395 66.5536 109.3939 20.4138 50.1993 392.5148;
];
