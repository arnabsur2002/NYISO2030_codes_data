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
	3.679 49.7112 88.5701 113.5192 14.9883 32.8173 27.9004 18.0761 25.8841 28.0067 51.7699 77.2306 116.2702 64.7543 189.8053 71.5081 88.723 94.0199 81.4968 69.3062 9.3001 76.5737 72.0373 85.8583 103.922 73.8894 13.5782 1261.6967 678.4894 678.4894 548.4267 102.147 271.656 178.3943 203.0135 289.4888 1183.9425 216.1137 449.4644 278.3624 122.738 364.0532 194.0904 278.6125 1196.2752;
	3.6845 49.7857 86.7436 113.6548 14.9468 31.859 24.2313 18.7323 26.0969 28.2068 52.1398 77.7823 117.1008 65.087 173.8459 65.4954 81.2628 86.1143 83.0648 69.5136 8.0771 74.3376 71.3715 87.6598 103.7472 72.5082 13.8112 1247.1904 721.5961 721.5961 604.1855 101.4551 276.8826 178.9283 204.0565 307.881 1184.6599 214.027 439.3388 277.8942 122.76 353.4222 177.0874 270.7493 1197.0001;
	3.8644 52.2161 88.5948 114.7361 15.2963 33.9619 21.4361 18.4564 27.0586 29.3105 54.18 80.8259 121.683 64.9045 186.7576 70.3598 87.2983 92.5102 84.8673 68.9562 7.1454 79.2444 70.9337 88.8065 104.6462 74.315 13.8844 1252.423 755.5336 755.5336 660.8906 96.9844 282.8908 177.4935 203.4842 322.361 1255.8033 230.3391 418.0019 280.3023 123.771 376.7504 187.2054 272.1718 1268.8846;
	3.7962 51.2947 87.8025 114.7381 14.6811 32.9907 23.0128 18.6445 26.9803 29.3645 54.2798 80.9748 121.9071 66.589 189.8494 71.5247 88.7436 94.0417 86.6512 69.2498 7.6709 76.9783 71.2398 87.3704 102.2229 72.2056 13.7915 1275.9444 796.4937 796.4937 671.9779 101.7802 288.8372 178.2491 208.7655 339.8373 1287.6378 244.6569 436.3364 273.8113 122.6072 365.9769 153.296 273.9706 1301.0507;
	3.8072 51.4441 88.3698 112.2379 14.7509 33.276 29.555 18.4991 27.7386 30.5136 56.404 84.1437 126.6778 67.7803 191.6064 72.1866 89.5649 94.912 86.507 70.4161 9.8517 77.644 74.1689 85.58 102.7218 72.3083 13.9871 1270.2521 792.1647 792.1647 713.2417 109.7336 288.3566 181.2511 212.5003 337.9903 1276.3162 239.2112 469.5916 275.1477 121.4519 369.1417 188.3303 268.1877 1289.6112;
	3.8553 52.0933 88.8168 113.7284 14.8936 33.0435 28.2514 18.3978 27.6387 30.4565 56.2983 83.986 126.4405 67.0162 197.1647 74.2807 92.163 97.6653 85.4107 69.5858 9.4171 77.1016 74.4905 86.2213 102.0308 70.3223 13.7177 1240.3544 757.6253 757.6253 708.0404 108.2988 284.7022 179.114 210.1048 323.2535 1161.7473 236.6489 459.7244 273.2967 121.8063 366.5628 179.1989 268.0007 1173.8489;
	3.7357 50.4774 88.01 115.0587 14.475 32.4891 30.0964 18.455 27.7118 30.6214 56.6032 84.4409 127.1253 66.2499 203.3961 76.6283 95.0758 100.752 89.2767 71.675 10.0321 75.808 74.8109 85.8652 101.9692 70.176 13.6814 1183.3473 743.3872 743.3872 709.5838 109.3009 297.5891 184.4918 207.7024 317.1785 1175.0375 267.3489 464.3424 273.1317 119.1355 360.4129 160.9451 259.6932 1187.2775;
	3.8395 51.8804 92.6447 120.0646 14.711 34.294 30.0676 18.9828 28.219 30.1225 55.681 83.0651 125.054 69.7059 201.5507 75.9331 94.2132 99.8379 90.2215 70.0812 10.0225 80.0194 74.0801 89.593 104.958 71.579 13.7474 1263.2219 794.2811 794.2811 693.3468 111.3188 300.7382 180.3891 218.5373 338.8933 1225.3098 290.8096 475.6925 281.1375 119.232 380.4352 180.3645 268.3337 1238.0734;
	3.8688 52.2755 94.4717 119.3091 15.2274 34.2079 30.8882 18.988 28.0873 30.8202 56.9707 84.989 127.9505 69.5695 198.9597 74.9569 93.0021 98.5544 91.0589 69.9044 10.2961 79.8184 72.6636 89.7792 106.3877 71.7627 13.8406 1293.6204 823.4286 823.4286 748.6545 117.2805 303.5295 179.9341 218.1099 351.3295 1263.3255 300.7112 474.0721 284.9671 123.1502 379.4793 209.0806 271.9131 1276.4851;
	3.8379 51.858 93.7648 118.2115 15.2528 34.1629 25.2192 19.025 27.2605 29.4913 54.5143 81.3246 122.4337 69.514 195.1369 73.5167 91.2152 96.6608 88.2515 69.9231 8.4064 79.7133 72.5913 90.0253 106.6994 74.7836 13.6456 1269.104 814.4558 814.4558 701.0101 116.9554 294.1718 179.9821 217.9358 347.5011 1222.6943 293.4001 465.3631 285.802 122.6673 378.98 209.0155 275.8854 1235.4307;
	3.902 52.725 94.6607 119.644 15.1686 34.5992 26.7662 19.1427 27.6491 30.4503 56.287 83.9691 126.4151 68.2979 195.0751 73.4934 91.1863 96.6302 89.7185 72.0437 8.9221 80.7316 72.8503 90.1089 106.7674 76.2473 13.8803 1305.6419 820.4171 820.4171 759.6449 114.4848 299.0618 185.4406 214.1232 350.0446 1271.2909 311.9851 458.2905 285.984 121.4068 383.8209 213.7729 281.963 1284.5336;
	3.8433 51.9313 93.1905 118.2797 15.0881 34.8115 25.6115 19.0625 27.9643 29.3432 54.2405 80.9161 121.8187 67.7178 194.8166 73.396 91.0654 96.5022 90.3179 69.393 8.5372 81.2268 72.548 89.0227 105.8767 74.3199 13.5485 1278.0012 801.7114 801.7114 773.3632 113.8878 301.0595 178.6177 212.3043 342.0635 1257.6814 310.0196 467.5398 283.5983 122.7706 386.1753 210.2724 267.6618 1270.7822;
	3.8306 51.7603 91.144 116.5467 14.9984 34.3525 25.2421 19.0578 26.307 30.0564 55.5588 82.8828 124.7796 67.2597 192.2967 72.4467 89.8875 95.2539 91.0712 69.2624 8.414 80.1558 71.7311 87.9492 105.9102 75.8903 13.9197 1292.0257 800.1954 800.1954 752.6871 113.6713 303.5706 178.2817 210.8684 341.4167 1256.0814 319.4812 452.6305 283.688 121.9593 381.0835 208.8749 267.1967 1269.1655;
	3.9211 52.983 93.3593 120.1501 15.045 35.1526 25.8908 18.9703 27.3573 30.5952 56.5548 84.3686 127.0165 67.4075 194.6075 73.3173 90.9677 96.3986 91.1047 70.9092 8.6303 82.0228 72.9567 89.1855 105.6502 73.1506 13.9923 1305.4299 810.8337 810.8337 781.7529 116.0631 303.6825 182.5206 211.3317 345.9557 1290.45 323.1976 457.2438 282.9917 122.7619 389.9596 211.6121 274.1939 1303.8922;
	3.9037 52.7479 93.6838 118.9328 14.984 34.8034 21.4439 19.0727 25.933 29.0854 53.764 80.2053 120.7487 65.1807 189.5891 71.4266 88.6219 93.9127 89.9963 69.163 7.148 81.208 72.2296 89.2795 105.5112 71.9393 13.9388 1259.5706 762.5862 762.5862 739.9801 115.058 299.9878 178.0257 204.3504 325.3701 1241.9196 299.8245 444.7813 282.6193 121.4605 386.0858 210.5259 277.002 1254.8563;
	3.8864 52.5132 91.7976 118.9378 15.0327 34.8637 23.3223 19.0474 26.3763 29.023 53.6486 80.0332 120.4895 63.2672 175.8268 66.2417 82.1888 87.0956 89.9614 68.344 7.7741 81.3486 67.3078 88.941 105.1611 71.0804 13.6168 1179.482 729.229 729.229 684.9188 111.2115 299.8715 175.9176 198.3513 311.1377 1130.0748 278.9614 446.3178 281.6815 117.9081 386.7543 209.6619 278.3078 1141.8464;
	3.7882 51.1875 88.0731 114.312 14.322 32.0986 20.4566 18.0229 26.0264 29.7074 54.9136 81.9204 123.3306 63.8891 186.0938 70.1098 86.988 92.1813 85.3942 67.5799 6.8189 74.8967 69.6916 85.5794 102.818 56.1238 12.6176 1196.9017 714.6152 714.6152 674.3005 100.4315 284.6474 173.9509 200.301 304.9025 1139.1257 265.7894 435.1151 275.4055 116.6071 356.0803 189.4705 252.2371 1150.9916;
	3.7171 50.2265 91.7274 111.3416 14.8369 30.781 17.3682 14.2494 26.4612 29.8839 55.2399 82.407 124.0633 63.5193 187.949 70.8087 87.8552 93.1003 86.0969 67.2249 5.7894 71.8223 73.0133 88.3259 103.5562 72.6426 10.869 1131.1905 675.0517 675.0517 651.6282 90.1312 286.9897 173.037 199.1417 288.0221 1132.2403 253.483 438.4099 277.3826 113.9484 341.4636 175.8467 238.9392 1144.0344;
	3.7576 50.7729 86.2243 104.2363 15.0105 25.7669 16.1001 8.6029 27.3606 30.0834 55.6088 82.9573 124.8918 63.3029 185.567 69.9113 86.7418 91.9204 86.6896 68.1634 5.3667 60.1227 74.4378 89.185 98.7224 63.9791 8.9149 1176.7068 647.5778 647.5778 641.0151 103.8951 288.9653 175.4529 198.4633 276.2999 1095.3647 279.3788 452.7252 264.4349 112.3386 285.8406 130.8835 230.2093 1106.7747;
	2.915 39.3877 78.7493 65.2436 14.6243 22.6402 26.2433 9.3355 27.7089 30.939 57.1903 85.3167 128.4439 64.542 181.1232 68.2371 84.6646 89.7192 85.0854 68.5242 8.7478 52.8271 75.2446 88.319 90.6785 43.4353 7.4476 1217.1111 698.2292 698.2292 692.6353 94.3077 283.6181 176.3816 202.3478 297.9111 1100.0092 269.6086 454.2595 242.8887 111.1107 251.1551 103.9742 198.9274 1111.4676;
	2.515 33.9835 81.1478 74.0216 13.9842 12.4547 25.4402 9.5488 27.307 29.9047 55.2784 82.4644 124.1497 64.3431 190.4277 71.7425 89.0139 94.3282 87.5453 71.3508 8.4801 29.0611 72.9207 88.5017 81.556 47.1798 8.1811 1166.4424 678.5952 678.5952 636.5316 97.6203 291.8175 183.6571 201.7242 289.5339 1108.3048 265.5725 461.4356 218.4535 106.2566 138.1647 75.8072 200.1065 1119.8496;
	1.8918 25.5628 75.6408 78.8684 13.0787 13.716 24.8477 11.4346 26.6368 29.1862 53.9502 80.4831 121.1669 63.5323 193.6647 72.9621 90.527 95.9316 88.0948 72.4469 8.2826 32.004 73.5039 85.8916 90.8998 65.2849 7.4838 1080.2005 621.2588 621.2588 618.607 94.4477 293.6494 186.4786 199.1824 265.0704 987.1229 236.2913 460.9566 243.4816 111.3995 152.1562 55.9159 183.2828 997.4055;
	2.6812 36.2289 76.045 82.496 13.7291 16.0271 23.7946 10.5264 26.6243 28.3295 52.3666 78.1207 117.6103 62.5164 179.3513 67.5696 83.8363 88.8415 87.7415 68.1551 7.9315 37.3966 70.6534 84.0331 82.0828 56.5417 5.4265 971.5314 625.2823 625.2823 615.542 94.6994 292.4717 175.4313 195.9973 266.7871 984.3833 251.0023 456.0531 219.8645 112.7341 177.7941 73.2575 183.3058 994.6373;
	2.9844 40.3259 80.3666 74.6543 13.8175 20.2913 19.6445 8.1162 26.6847 25.5328 47.197 70.4086 105.9997 62.4074 179.0098 67.4409 83.6767 88.6723 85.2609 67.5488 6.5482 47.3465 69.5434 82.0813 69.5505 53.3747 2.2532 856.7743 538.6313 538.6313 542.9645 92.486 284.2029 173.8707 195.6555 229.816 827.9462 229.9808 441.6226 186.2959 111.2686 225.0986 88.3494 200.0035 836.5706;
];
