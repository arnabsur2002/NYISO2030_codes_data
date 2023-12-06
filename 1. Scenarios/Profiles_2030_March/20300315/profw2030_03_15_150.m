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
	3.8704 52.2971 92.3193 119.043 15.0861 34.7134 32.073 18.3667 12.5419 17.0655 31.5453 47.0594 70.8477 45.4126 203.7514 76.7622 95.242 100.928 88.7187 71.0066 10.691 80.998 21.8319 86.8639 103.4972 72.2921 13.6508 1240.1305 767.4821 767.4821 744.7375 111.9807 295.7289 182.7711 142.3745 327.459 1108.657 280.444 476.5495 277.2245 122.1152 385.0874 216.1842 277.2615 1120.2055;
	3.7882 51.1871 90.4577 114.6886 14.6308 33.7936 32.898 17.8155 14.0132 13.8629 25.6254 38.2281 57.5521 60.4761 191.8883 72.2928 89.6966 95.0517 85.2594 70.4919 10.966 78.8516 24.7761 83.7627 99.8995 69.5553 12.928 1258.6157 784.079 784.079 753.1822 109.3339 284.1979 181.4463 189.6006 334.5404 1208.4724 252.5337 478.1449 267.5881 121.9982 374.8832 204.4133 272.6151 1221.0606;
	3.7559 50.75 87.443 112.814 14.7339 34.3813 33.2509 17.0709 24.3953 13.5779 25.0985 37.442 56.3687 53.6318 175.0691 65.9563 81.8346 86.7203 85.8161 71.4132 11.0836 80.2231 4.6932 83.2868 98.9928 67.2732 12.1259 1234.773 762.5372 762.5372 722.9859 108.3128 286.0536 183.8178 168.1429 325.3492 1183.5858 279.8868 474.2114 265.1592 121.5397 381.4037 210.7382 253.1206 1195.9148;
	3.7501 50.6719 88.2768 116.4789 14.6909 34.332 32.5378 17.166 28.3008 28.9579 53.5282 79.8536 120.2191 63.2969 198.9216 74.9425 92.9843 98.5356 84.9437 69.1883 10.8459 80.1081 23.3713 83.4904 98.2609 69.7271 12.6033 1270.0037 704.7491 704.7491 729.963 105.0067 283.1457 178.0909 198.4444 300.693 1101.7979 293.545 478.7759 263.1988 118.3921 380.8567 179.752 252.6143 1113.275;
	3.1715 42.8542 86.751 114.838 14.3812 30.9199 32.0675 17.4172 27.9168 29.9257 55.3172 82.5224 124.2371 63.2597 201.8312 76.0387 94.3443 99.9768 88.3695 71.6831 10.6892 72.1465 70.37 85.8586 98.7869 68.4649 12.6036 1262.7902 767.6196 767.6196 765.0812 108.3323 294.5649 184.5126 198.3277 327.5177 1078.964 305.2228 476.0575 264.6079 114.8653 343.0051 178.6026 250.9612 1090.2032;
	3.8608 52.1673 87.3362 110.8935 14.893 32.798 20.0336 17.4044 26.8249 28.8349 53.3009 79.5145 119.7086 49.2644 198.8015 74.8973 92.9281 98.4761 57.35 72.0873 6.6779 76.5288 69.0709 84.6422 97.7052 69.3786 13.1234 1258.0142 768.0087 768.0087 732.5452 111.9588 191.1665 185.553 154.4504 327.6837 1099.4521 277.4136 476.6659 261.7104 113.5568 363.8396 164.1808 258.8402 1110.9047;
	3.8772 52.3894 89.7066 115.0051 15.2154 33.7378 14.4321 18.0763 26.3887 29.8269 55.1345 82.2499 123.8268 64.0048 200.1142 75.3919 93.5418 99.1264 85.6035 72.208 4.8107 78.7215 70.1855 86.7111 101.1708 69.4158 13.7299 1248.5324 788.5313 788.5313 737.1218 114.8222 285.345 185.8636 200.6636 336.44 1117.3872 315.0966 447.8629 270.9933 118.275 374.2647 184.7563 265.4319 1129.0267;
	3.894 52.6166 92.1258 116.7443 14.8154 33.8643 9.677 18.2637 6.9556 30.0199 55.4913 82.7821 124.628 38.7102 198.6842 74.8531 92.8733 98.418 86.2784 70.0634 3.2257 79.0167 72.9108 85.5629 100.0215 72.163 13.5241 1264.8925 779.7649 779.7649 739.7403 117.3545 287.5948 180.3434 121.3617 332.6997 1161.9803 311.6603 203.4362 267.9146 116.6604 375.6679 203.1204 267.059 1174.0842;
	3.8291 51.74 91.9439 117.1391 14.5724 31.3077 7.6311 18.4537 2.9654 30.576 56.5193 84.3157 126.9368 2.4829 200.0295 75.3599 93.5021 99.0844 85.0169 72.52 2.5437 73.0513 74.0769 87.1917 101.0728 74.0327 13.8023 1074.7472 659.8737 659.8737 684.55 111.8295 283.3898 186.6667 7.7842 281.5461 942.9844 272.6498 307.0878 270.7306 121.3724 347.3067 184.5625 271.2006 952.8072;
	3.8484 52.0003 90.3809 115.6559 14.8685 29.933 2.6489 18.1105 0.0 25.8999 47.8756 71.4209 107.5238 10.9151 191.4458 72.1261 89.4898 94.8325 84.6046 71.4458 0.883 69.8437 51.8316 85.6339 97.9427 72.8571 13.2567 830.9054 548.5272 548.5272 547.6087 106.7946 282.0152 183.9017 34.2204 234.0383 711.6416 239.2015 131.3668 262.3466 119.7408 332.057 161.2037 275.3191 719.0546;
	3.6391 49.1721 90.7607 115.7025 14.6236 25.0527 5.751 17.8813 0.0182 28.6376 52.9362 78.9704 118.8895 0.0 191.8464 72.277 89.677 95.0309 70.601 69.9926 1.917 58.4563 70.0708 87.7626 99.4956 71.7662 13.4849 696.5395 615.2111 615.2111 499.7575 105.6496 235.3367 180.1612 0.0 262.4901 659.574 200.8345 46.4209 266.5061 118.7682 277.9181 148.3052 272.0619 666.4446;
	3.4426 46.5165 93.8215 117.2015 14.9047 18.4269 6.1841 18.4282 0.9 26.9799 49.872 74.3992 112.0076 0.1784 197.1035 74.2576 92.1344 97.635 37.1315 70.4553 2.0614 42.996 70.5928 88.8931 103.0544 73.5029 13.9238 504.1502 657.4383 657.4383 507.8912 103.3544 123.7718 181.352 0.5594 280.507 654.625 203.2902 107.3973 276.0385 121.7729 204.4153 137.4799 275.4011 661.444;
	3.8148 51.5459 93.9617 118.3521 15.0482 20.4143 13.9761 18.5935 26.4089 24.9499 46.1196 68.8013 103.58 52.1339 193.5596 72.9225 90.4779 95.8795 57.3052 70.3383 4.6587 47.6334 72.0367 87.5213 104.5642 72.9936 14.135 617.7171 687.4152 687.4152 530.8635 108.204 191.0173 181.0509 163.4468 293.2971 559.4763 233.3062 269.7091 280.0827 122.7499 226.4628 144.8527 270.7815 565.3042;
	3.7858 51.1544 90.9413 118.1683 14.6082 20.0326 1.7025 18.7003 18.5444 21.6793 40.0738 59.7823 90.0019 34.3716 195.437 73.6298 91.3555 96.8095 53.8502 70.7541 0.5675 46.7428 68.1195 85.1419 99.9704 73.9604 14.0285 461.6603 617.8123 617.8123 455.5257 85.2857 179.5007 182.1213 107.7595 263.5999 546.0433 219.7359 61.326 267.778 121.7796 222.2285 160.1281 263.4693 551.7313;
	3.9017 52.7203 89.6239 115.8929 15.1943 18.8735 4.2273 17.9885 23.5659 25.9176 47.9083 71.4698 107.5974 30.7398 189.2563 71.3012 88.4663 93.7479 66.7514 70.1384 1.4091 44.0381 71.1473 85.3415 98.6694 72.6637 13.5641 314.3712 658.6215 658.6215 437.1613 79.1188 222.5047 180.5364 96.3734 281.0118 532.5805 224.4714 241.1885 264.293 117.8522 209.3697 173.9345 242.3943 538.1282;
	3.6939 49.9123 91.2457 120.5641 15.2114 10.5793 3.2379 18.4543 15.4389 27.6619 51.1327 76.2799 114.839 22.8971 182.2065 68.6452 85.1709 90.2558 66.5912 70.321 1.0793 24.685 70.6065 87.6384 103.0109 74.4778 13.7724 342.5719 556.66 556.66 420.6276 85.4812 221.9706 181.0065 71.7856 237.5083 449.0323 216.7224 343.4348 275.9219 121.781 117.3597 163.0752 244.5143 453.7097;
	3.6576 49.4216 90.4013 118.869 15.1291 18.826 0.591 18.6394 13.2403 28.2952 52.3033 78.0262 117.468 32.909 182.579 68.7856 85.345 90.4403 67.813 70.9009 0.197 43.9274 72.778 87.0323 104.2918 74.181 13.4783 894.1502 482.0501 482.0501 321.3934 79.5989 226.0433 182.4992 103.1742 205.6747 792.9966 226.5454 119.6563 279.353 121.1846 208.8435 137.717 243.3775 801.257;
	3.5107 47.4372 91.9336 120.3121 14.9606 22.0664 1.9489 19.0624 4.1967 28.759 53.1606 79.3052 119.3936 55.5463 188.5341 71.0291 88.1287 93.3902 84.2827 70.8871 0.6496 51.4882 72.5994 88.4857 105.6394 74.9581 13.8795 1154.7532 596.4881 596.4881 241.7781 62.4678 280.9422 182.4635 174.145 254.5016 1008.826 204.209 148.6639 282.9626 121.592 244.7895 178.7165 266.3607 1019.3346;
	2.4758 33.4535 89.0744 117.028 14.6999 32.7032 0.0 18.7082 0.0135 24.5002 45.2883 67.5613 101.7131 60.2538 183.4931 69.1299 85.7723 90.8931 56.0057 67.9035 0.0 76.3075 52.1674 87.3685 102.9563 73.2352 13.6147 1158.5334 680.0676 680.0676 336.1275 56.7939 186.6857 174.7838 188.9039 290.1622 1094.2289 141.8782 256.5464 275.7759 118.3982 362.7879 165.9111 264.0775 1105.6271;
	3.8471 51.9829 93.6979 89.5138 14.8147 32.9698 1.2538 18.6134 0.0 14.7872 27.3338 40.7767 61.3891 64.2006 194.4219 73.2473 90.8809 96.3067 47.8312 70.6289 0.4179 76.9296 41.7663 87.3351 105.4966 75.1635 13.6956 1249.7781 730.6391 730.6391 419.8115 50.9062 159.4373 181.799 201.2776 311.7393 1166.8719 122.0666 34.4951 282.5802 117.1792 365.7451 188.4472 267.2175 1179.0268;
	3.7839 51.1287 93.3859 119.2473 14.3311 33.1705 2.4553 18.7471 0.4251 14.9131 27.5666 41.1239 61.9118 63.7792 189.498 71.3923 88.5793 93.8676 64.3733 68.9782 0.8184 77.3979 65.6938 87.1372 105.3276 72.2304 13.8063 1177.6654 695.1426 695.1426 665.0913 48.7424 214.5776 177.55 199.9565 296.5942 1183.1093 163.4632 14.4536 282.1274 118.9006 367.9717 195.7608 276.0497 1195.4334;
	3.8557 52.0987 92.9251 118.3868 14.5517 34.0586 4.8329 18.6118 27.6508 29.8104 55.104 82.2044 123.7582 64.5595 194.8756 73.4183 91.093 96.5314 69.0401 70.9507 1.611 79.47 74.2158 87.2997 103.5316 72.2936 13.6767 1230.3485 691.3006 691.3006 590.12 70.2389 230.1335 182.6273 202.4028 294.9549 1204.8867 229.7329 431.2269 277.3167 118.6952 377.8232 201.346 270.1537 1217.4377;
	3.7788 51.0604 91.9584 117.9988 14.7629 34.375 0.0 18.7254 26.9119 29.6865 54.8751 81.8628 123.244 63.3799 191.1528 72.0157 89.3528 94.6873 65.7513 72.1204 0.0 80.2083 73.998 85.8602 103.7481 72.7562 13.7074 1256.4025 740.3452 740.3452 640.1608 106.845 219.1709 185.6382 198.7046 315.8806 1208.3577 251.5635 439.2161 277.8968 116.9676 381.3332 202.788 271.4742 1220.9447;
	3.8791 52.4155 95.2644 120.6013 15.2963 34.8954 28.3365 18.619 27.3996 28.1466 52.0286 77.6165 116.8512 66.2253 188.9798 71.197 88.3371 93.6109 73.7744 70.793 9.4455 81.4225 74.708 88.9711 106.0965 73.7234 13.7953 1274.424 727.4069 727.4069 619.1308 109.9582 245.9145 182.2213 207.6254 310.3603 1196.2529 248.0123 442.4286 284.1871 119.6215 387.1058 201.9862 272.757 1208.7138;
];