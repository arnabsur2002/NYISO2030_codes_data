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
	3.6971 49.9565 92.7878 119.4107 14.7597 32.88 29.353 18.8867 27.4426 29.861 55.1977 82.3441 123.9686 67.8973 192.3909 72.4822 89.9316 95.3006 89.0739 68.6914 9.7843 76.72 74.7145 88.7512 104.336 76.1567 13.6768 1254.7314 759.0744 759.0744 584.1112 119.239 296.9129 176.812 212.8673 323.8718 1242.289 237.4681 451.4895 279.4714 118.9969 364.7488 201.6569 284.2092 1255.2295;
	3.7252 50.3355 94.5635 119.8393 14.576 32.8557 27.2246 18.6569 27.4821 30.0214 55.4942 82.7864 124.6344 67.0312 188.1038 70.867 87.9276 93.177 90.3217 68.0601 9.0749 76.6634 72.529 89.7117 104.5223 75.5957 13.6485 1291.2049 796.7261 796.7261 661.5475 116.6338 301.0723 175.1868 210.1519 339.9365 1251.7129 241.6944 457.0783 279.9705 120.6026 364.4795 188.9623 276.9029 1264.7516;
	3.5561 48.051 88.1757 116.3494 14.2609 32.5469 22.0155 17.8218 27.7194 30.1231 55.6822 83.0669 125.0567 64.5296 194.4168 73.2454 90.8785 96.3041 89.8996 68.5496 7.3385 75.9428 72.1022 87.2618 101.4405 74.9546 13.2515 1241.7072 782.7378 782.7378 673.7906 108.402 299.6652 176.4468 202.3091 333.9681 1261.1141 240.933 432.969 271.7156 116.3772 361.054 188.0477 264.3398 1274.2507;
	3.2337 43.6938 87.3049 113.5861 14.2466 32.3564 22.9697 17.4988 26.7263 30.2274 55.8748 83.3542 125.4893 63.8886 204.2235 76.94 95.4626 101.1619 92.4035 70.6024 7.6566 75.4983 72.3128 86.6475 101.0925 73.7906 12.9666 1252.6631 785.4067 785.4067 671.8179 110.1222 308.0117 181.7307 200.2995 335.1069 1252.6309 253.8337 435.9702 270.7835 112.6316 358.9403 154.8759 267.7689 1265.6791;
	3.566 48.1839 86.5407 111.7902 14.1306 32.9125 29.9154 16.5724 27.0177 30.4813 56.3442 84.0544 126.5435 63.944 202.887 76.4365 94.8379 100.4998 91.8014 71.8843 9.9718 76.7958 73.7335 83.1807 97.812 73.5455 12.6798 1205.404 773.3427 773.3427 683.2434 112.154 306.0046 185.0304 200.4729 329.9595 1213.5226 248.0826 459.9354 261.9965 105.341 365.1091 192.5743 264.0948 1226.1635;
	3.5721 48.2665 86.994 111.9196 14.3123 32.9788 29.3421 17.5216 27.7924 30.9068 57.1307 85.2278 128.31 64.1353 204.5702 77.0706 95.6247 101.3336 90.1773 70.5382 9.7807 76.9506 74.0922 83.1155 97.5153 70.7579 12.8866 1241.904 767.263 767.263 688.4012 113.5579 300.5909 181.5656 201.0728 327.3655 1175.3039 246.2102 448.0179 261.2017 114.4747 365.8452 177.2741 263.8516 1187.5466;
	3.3558 45.3442 86.9338 110.8298 14.2325 31.945 30.0514 17.6918 27.5082 29.7861 55.0591 82.1374 123.6574 63.9641 201.4831 75.9076 94.1817 99.8044 91.1154 71.7534 10.0171 74.5383 72.5498 82.5505 97.7647 72.8936 12.9559 1242.3139 742.4329 742.4329 704.3345 113.86 303.718 184.6934 200.536 316.7714 1215.1649 293.147 452.9121 261.8697 111.5667 354.3765 158.662 257.1282 1227.8229;
	3.6641 49.51 88.0137 112.0978 14.2735 33.6121 28.9182 17.9295 27.2402 29.1337 53.8532 80.3384 120.9491 65.4085 196.0225 73.8503 91.6291 97.0995 87.7664 68.7506 9.6394 78.4283 70.7088 85.9296 98.5459 72.1122 12.996 1283.2545 761.5973 761.5973 697.296 117.4713 292.5547 176.9642 205.0643 324.9482 1248.4198 315.1509 452.9502 263.9621 114.9312 372.8707 177.1663 261.8008 1261.4241;
	3.7804 51.0812 93.0233 116.7462 14.9937 34.5577 31.6421 17.8465 27.7138 29.5247 54.576 81.4166 122.5722 68.2258 193.9618 73.074 90.6659 96.0788 86.679 70.3791 10.5474 80.6345 70.1391 87.4527 101.8187 73.1217 12.8883 1321.673 759.487 759.487 682.9515 120.0951 288.9301 181.1559 213.8972 324.0478 1274.0849 318.0505 465.6754 272.7286 119.4108 383.3596 211.0205 266.9292 1287.3566;
	3.7076 50.098 90.2715 115.063 14.5556 33.9347 26.8647 17.667 27.681 29.1452 53.8745 80.3701 120.9968 67.2659 194.3363 73.2151 90.8409 96.2643 85.9092 70.0408 8.9549 79.1809 71.7006 87.1317 100.2516 70.3013 12.9819 1323.8262 803.0782 803.0782 710.8903 121.2257 286.364 180.2852 210.8876 342.6467 1270.4345 339.4114 467.2648 268.5311 115.3428 376.4486 210.2494 261.586 1283.6682;
	3.7076 50.0973 86.7408 112.5119 14.5608 33.4862 28.2407 17.5146 27.2811 30.1396 55.7127 83.1124 125.1252 64.3447 193.9378 73.0649 90.6547 96.0669 88.1516 72.2312 9.4136 78.1344 71.2241 84.4278 97.6141 65.2335 12.7986 1315.559 811.6483 811.6483 766.3906 123.0113 293.8388 185.9233 201.7292 346.3033 1305.3347 345.339 470.1475 261.4663 113.9779 371.4733 212.274 253.4299 1318.9319;
	3.7407 50.5444 87.8279 113.7225 14.9724 34.8249 27.6209 17.6176 27.5839 29.4078 54.3599 81.0943 122.087 66.223 194.6436 73.3308 90.9846 96.4165 85.3915 71.1272 9.207 81.2581 72.757 86.1914 99.7177 64.2912 13.0441 1340.2679 795.476 795.476 765.3724 120.7517 284.6383 183.0816 207.6181 339.4031 1285.1148 341.6593 479.1893 267.1009 117.419 386.3244 215.1226 260.3966 1298.5015;
	3.9088 52.8171 91.3926 118.504 15.3398 35.1126 28.8026 18.5929 28.0505 30.8316 56.9917 85.0204 127.9977 68.4933 198.4685 74.7719 92.7725 98.3111 88.5294 70.9271 9.6009 81.9293 75.1508 85.5026 104.0957 71.1786 13.7737 1322.104 815.9176 815.9176 755.8222 118.1317 295.0979 182.5665 214.7358 348.1248 1315.5849 343.429 479.1692 278.8278 118.9158 389.5153 219.2873 270.3111 1329.2889;
	3.8585 52.1363 89.1191 118.4922 14.7799 34.2396 27.3203 18.3586 27.4262 29.8625 55.2004 82.3482 123.9747 67.1264 200.0939 75.3842 93.5323 99.1163 84.8914 72.3891 9.1068 79.8924 73.5985 87.0295 101.6917 71.4294 13.6924 1303.7775 776.9547 776.9547 685.69 117.4158 282.9713 186.3296 210.4503 331.5007 1251.2221 317.9136 478.2981 272.3886 113.544 379.8311 210.8225 269.7317 1264.2557;
	3.6682 49.5657 87.534 116.5309 14.2265 33.6606 22.2942 18.06 26.0832 29.5241 54.5749 81.415 122.5698 66.7138 197.1552 74.2771 92.1586 97.6606 84.708 70.1844 7.4314 78.5414 73.8747 87.1742 99.8819 70.4048 13.3957 1293.5028 738.6105 738.6105 673.7398 117.1721 282.3601 180.6547 209.1568 315.1405 1215.37 315.7326 467.0892 267.5407 115.709 373.4082 204.1793 271.1644 1228.0301;
	3.8923 52.593 92.6684 119.358 15.1158 34.4295 25.8651 18.0959 27.3582 30.1162 55.6693 83.0476 125.0278 66.4764 201.1127 75.7681 94.0085 99.621 90.5357 71.629 8.6217 80.3356 74.1613 87.4339 100.9863 69.935 13.3853 1286.8508 742.6136 742.6136 721.8202 116.0494 301.7857 184.3732 208.4125 316.8485 1184.1395 315.2429 479.7969 270.499 114.6702 381.9383 207.2326 276.7791 1196.4743;
	3.9042 52.7539 94.2963 119.6207 15.3879 32.7346 24.1157 18.576 28.0403 29.5105 54.5498 81.3776 122.5135 66.6657 204.5493 77.0628 95.6149 101.3233 89.3481 71.3502 8.0386 76.3808 75.1755 88.5378 103.7442 62.1937 13.264 1201.3753 724.0491 724.0491 671.5721 113.8404 297.8269 183.6556 209.0059 308.9276 1097.3635 314.9133 479.4877 277.8862 117.8051 363.1362 198.99 264.4899 1108.7944;
	3.8574 52.1225 91.4499 113.6186 15.2437 30.3904 20.5535 13.8539 27.4853 28.6173 52.8986 78.9143 118.8051 64.4688 199.8935 75.3087 93.4386 99.017 90.876 70.1794 6.8512 70.9108 72.5861 88.1122 101.7825 72.5351 10.3336 1221.0818 698.6718 698.6718 627.7472 111.3795 302.9199 180.6419 202.1183 298.1 1155.5235 295.5522 479.5885 272.6316 114.5062 337.1303 181.0817 252.9462 1167.5602;
	3.8257 51.6941 87.0337 103.2041 15.0198 24.7909 18.1338 8.3761 27.4843 28.4355 52.5627 78.4132 118.0506 67.306 185.7114 69.9657 86.8093 91.9919 86.7064 67.8667 6.0446 57.8455 71.8092 84.9591 96.7072 64.8592 9.1238 1207.1204 693.9245 693.9245 607.2037 101.8724 289.0214 174.6892 211.0133 296.0745 1112.7229 299.5105 478.0959 259.0371 108.4587 275.0142 129.6629 235.8299 1124.3138;
	3.0068 40.6281 84.5994 69.6833 14.8961 22.9052 28.4327 10.4861 27.1307 29.2323 54.0355 80.6103 121.3584 67.1263 194.0267 73.0984 90.6962 96.1109 87.428 70.6063 9.4776 53.4455 70.4047 86.9718 91.8277 50.2012 8.5129 1243.4548 723.5249 723.5249 612.2186 105.8995 291.4265 181.7409 210.4499 308.7039 1100.1637 295.6356 475.5822 245.9671 101.9993 254.0954 112.4218 211.3332 1111.6237;
	2.5736 34.7752 81.4834 71.8375 14.4279 14.2116 26.6936 9.1909 26.0886 28.5898 52.8478 78.8385 118.6909 64.5948 191.4306 72.1204 89.4827 94.8249 86.3793 70.4855 8.8979 33.1604 70.4716 82.313 73.7505 53.7926 8.6891 1205.5678 730.1643 730.1643 655.7496 108.3651 287.931 181.4297 202.5134 311.5368 1139.433 280.4727 473.0387 197.5461 102.0836 157.6538 84.963 185.7177 1151.3021;
	2.1708 29.3324 81.6108 82.5392 14.4627 17.6901 26.562 11.6621 26.3955 28.0455 51.8416 77.3375 116.4312 65.0793 194.0164 73.0945 90.6914 96.1058 85.7566 68.9485 8.854 41.2769 71.1238 84.2499 90.7167 68.797 10.1806 1146.1605 686.5644 686.5644 612.2748 102.282 285.8554 177.4736 204.0325 292.9342 1072.7766 243.476 467.3345 242.9912 109.2416 196.242 73.5714 187.453 1083.9514;
	2.8559 38.5889 82.428 88.2792 14.3627 20.2557 24.9685 13.9746 26.6715 28.8478 53.3248 79.5501 119.7622 65.6278 188.2733 70.9309 88.0068 93.2609 87.4973 68.3146 8.3228 47.2633 71.985 83.8758 83.6184 68.533 10.1064 961.0137 719.8983 719.8983 651.061 100.0712 291.6577 175.8419 205.752 307.1566 1019.7211 265.7773 456.1656 223.9778 110.6338 224.7034 84.9248 214.8272 1030.3432;
	2.9727 40.1675 86.3013 77.4878 14.0617 24.6614 20.2083 10.1722 26.5177 27.2644 50.3978 75.1836 113.1885 63.4588 177.1741 66.7493 82.8186 87.763 86.7338 66.6938 6.7361 57.5432 69.1468 83.3465 74.2123 64.7445 7.1934 812.0418 615.5608 615.5608 569.4229 102.1788 289.1127 171.6701 198.9519 262.6393 827.7016 239.0249 435.9205 198.7829 112.1515 273.5769 94.9212 226.0966 836.3235;
];