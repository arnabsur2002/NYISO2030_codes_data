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
	3.7949 51.278 93.1638 119.6275 14.7695 33.7785 29.4604 18.3551 27.3416 30.7618 56.8627 84.828 127.708 67.9974 203.3743 76.6201 95.0657 100.7412 84.3063 73.5767 9.8201 78.8164 74.7439 87.8947 106.2256 74.3726 13.4723 1288.3627 805.1222 805.1222 583.7736 112.3825 281.021 189.3866 213.1809 343.5188 1263.7547 218.3958 469.6878 284.5328 119.1388 374.7157 203.9245 285.0471 1276.9188;
	3.9053 52.7692 94.29 120.2303 14.9562 34.1341 27.2778 19.0879 27.8629 30.8665 57.0562 85.1166 128.1426 69.3826 200.5722 75.5644 93.7559 99.3532 80.1391 73.521 9.0926 79.6461 75.0049 89.6071 106.5949 75.3248 13.9099 1286.425 814.8111 814.8111 649.1676 106.2948 267.1304 189.2433 217.5238 347.6527 1267.2844 221.1558 476.7543 285.522 122.4449 378.6605 195.3053 281.9933 1280.4853;
	3.8379 51.8583 93.5549 119.9202 14.9269 34.9354 23.8669 18.8084 28.3579 30.6795 56.7107 84.6012 127.3666 68.2633 205.2088 77.3112 95.9232 101.6499 83.0893 73.4645 7.9556 81.5159 75.182 88.9201 105.3911 76.5667 13.7908 1270.3291 802.5048 802.5048 671.7304 98.4654 276.9645 189.0979 214.0147 342.4021 1267.56 226.7417 464.3027 282.2976 122.9991 387.5501 200.644 273.1497 1280.7638;
	3.7751 51.01 92.303 117.9967 14.6995 34.2626 25.0164 18.6033 28.1949 30.9382 57.1888 85.3145 128.4405 68.8014 205.3666 77.3707 95.997 101.7281 85.4916 73.3532 8.3388 79.9461 75.3272 88.4896 103.2072 75.4222 13.8683 1281.1612 790.3774 790.3774 658.5247 98.5924 284.972 188.8112 215.7016 337.2277 1285.0037 232.6848 472.4025 276.4479 122.4512 380.0864 162.7739 269.1348 1298.3892;
	3.7674 50.9059 91.2854 117.9002 14.5576 34.6298 30.8152 18.65 27.9739 31.0668 57.4265 85.669 128.9743 68.8992 205.3024 77.3465 95.967 101.6963 84.9263 73.1861 10.2717 80.8029 75.7731 86.6214 104.6203 75.2785 13.9488 1271.3131 775.4378 775.4378 679.507 102.7269 283.0878 188.3812 216.0084 330.8535 1274.1337 237.921 479.7372 280.233 121.5425 384.1602 194.8061 262.435 1287.406;
	3.7669 50.8998 92.0378 118.5923 14.7804 34.5877 29.4762 18.9175 27.9031 31.3031 57.8633 86.3207 129.9553 68.4199 205.2214 77.316 95.9291 101.6562 89.1087 73.1993 9.8254 80.7046 75.8233 89.1081 105.3311 76.0065 14.0546 1286.4945 772.5822 772.5822 700.6952 107.7962 297.029 188.4152 214.5056 329.6351 1251.8987 233.2261 471.2409 282.1368 122.4418 383.6928 185.9144 269.436 1264.9393;
	3.6844 49.7848 92.6856 117.1337 14.4726 33.6732 31.0427 18.9468 27.0458 31.159 57.597 85.9233 129.3571 67.4207 205.0548 77.2532 95.8512 101.5737 89.9377 73.6056 10.3476 78.5708 75.6764 88.4784 104.5939 75.7782 13.9641 1300.2224 771.5369 771.5369 724.2273 110.4941 299.7922 189.4611 211.373 329.1891 1272.2043 277.7902 475.7753 280.1621 121.5211 373.5482 173.2149 266.5645 1285.4564;
	3.7475 50.6373 91.448 116.7427 14.8473 34.3662 30.4057 19.0284 28.2187 31.2114 57.6938 86.0678 129.5746 69.4857 204.9821 77.2258 95.8172 101.5376 89.7951 73.045 10.1352 80.1878 75.6725 88.5436 104.7846 75.2336 13.9313 1340.1556 794.6953 794.6953 742.0576 115.6476 299.3171 188.0181 217.847 339.07 1301.0829 296.6052 478.1608 280.6731 122.2373 381.2359 189.9847 275.5424 1314.6359;
	3.8096 51.4758 95.04 119.8298 15.2259 34.9638 32.0285 19.0403 27.6314 31.1827 57.6407 85.9886 129.4553 67.6038 203.259 76.5767 95.0118 100.6841 92.1835 71.8215 10.6762 81.5821 75.3004 89.7534 106.4739 75.8434 13.8081 1360.8866 822.4752 822.4752 774.7664 120.0409 307.2785 184.8688 211.9471 350.9227 1333.4662 324.0019 478.2851 285.1981 123.3786 387.8645 215.4586 281.8474 1347.3565;
	3.6143 48.8367 92.0157 115.9123 14.7593 34.3655 25.0677 18.4765 26.7713 29.7812 55.0501 82.124 123.6372 68.3928 200.3664 75.4869 93.6596 99.2512 86.5931 72.1239 8.3559 80.1861 72.4777 88.5053 103.6817 73.2148 13.1252 1313.8511 824.1871 824.1871 751.8515 119.6674 288.6437 185.6471 214.4207 351.6532 1290.7599 323.3913 470.9705 277.7187 116.2311 381.2274 210.67 271.2938 1304.2053;
	3.6519 49.3449 90.9463 113.1627 14.6529 34.3197 28.0962 18.3374 26.6769 29.5458 54.6149 81.4747 122.6597 66.5551 199.9389 75.3258 93.4598 99.0395 87.4254 72.2453 9.3654 80.0793 71.4384 86.2017 100.2134 70.7739 13.0481 1294.6214 829.0922 829.0922 781.9799 118.4918 291.418 185.9596 208.6594 353.746 1310.9265 337.6313 466.5018 268.4288 117.9827 380.7198 212.1302 259.4942 1324.582;
	3.5676 48.2058 89.65 111.6143 14.5284 33.3038 25.1817 18.4448 26.8778 29.4382 54.4161 81.178 122.2131 68.655 198.5662 74.8087 92.8181 98.3595 87.2973 70.083 8.3939 77.709 73.1042 86.8902 100.6915 70.2665 13.0741 1270.6528 804.7989 804.7989 767.341 118.7325 290.9911 180.3938 215.2427 343.3809 1266.4341 332.8001 459.4558 269.7093 118.7561 369.4506 207.0894 262.5619 1279.6261;
	3.7406 50.5437 94.2116 116.3096 15.177 34.6888 26.54 18.3627 27.279 30.2993 56.0078 83.5527 125.7881 68.8512 201.1656 75.788 94.0332 99.6471 89.7009 68.9902 8.8467 80.9405 72.4254 89.0533 105.3524 74.07 13.1145 1289.537 815.3386 815.3386 755.3868 114.9949 299.0029 177.5809 215.8578 347.8778 1290.2675 337.2461 455.3831 282.194 121.1486 384.8143 213.9034 266.1451 1303.7078;
	3.7206 50.2741 94.5347 119.1944 14.6228 34.6831 25.496 19.0109 27.4986 29.7769 55.0422 82.1121 123.6193 69.1369 200.688 75.608 93.81 99.4106 89.9033 70.5579 8.4987 80.9273 72.7315 88.4193 105.9222 75.1279 13.9037 1302.7178 791.7701 791.7701 704.3374 114.7616 299.6777 181.6162 216.7535 337.8219 1252.5832 308.42 458.4431 283.7203 122.6997 384.7513 208.8013 271.4805 1265.631;
	3.8069 51.4395 91.9877 113.0606 14.5439 34.808 22.9412 18.3941 27.9448 29.8663 55.2073 82.3585 123.9902 68.9266 201.5341 75.9268 94.2055 99.8297 89.7536 69.4155 7.6471 81.2186 73.8562 86.736 101.6546 74.3002 13.3937 1293.1372 792.8484 792.8484 721.8788 116.239 299.1785 178.6756 216.0943 338.282 1278.5165 321.0471 459.0279 272.2891 123.128 386.1366 215.6488 272.6083 1291.8344;
	3.7317 50.4234 88.2657 109.5413 14.7348 32.9999 22.6346 17.7867 27.5333 30.0724 55.5884 82.9269 124.846 69.4863 194.7911 73.3864 91.0535 96.4895 89.4809 69.2416 7.5449 76.9999 74.425 85.7823 97.4579 68.9804 13.0053 1268.5966 740.2899 740.2899 653.4406 112.2685 298.2696 178.2281 217.8488 315.857 1218.8747 297.37 458.4532 261.0479 120.5254 366.0794 205.4791 270.9016 1231.5713;
	3.5748 48.3037 86.3146 99.348 14.1758 29.9944 21.0331 17.4706 27.6774 28.6418 52.9439 78.9819 118.9068 65.8714 193.5381 72.9144 90.4678 95.8689 89.8018 68.3906 7.011 69.9869 71.3063 82.5577 97.9391 52.1286 12.1431 1258.1602 657.8086 657.8086 602.9729 112.3671 299.3393 176.0375 206.5157 280.665 1144.5024 283.7834 440.8646 262.3369 114.6373 332.7375 190.1187 243.5173 1156.4243;
	3.557 48.0628 85.8182 81.8317 13.9377 25.9166 18.835 11.8524 27.337 28.5553 52.784 78.7434 118.5477 66.743 185.7462 69.9788 86.8255 92.0091 88.0438 67.0995 6.2783 60.4721 70.7611 80.7962 94.5447 60.0961 8.1533 1234.1963 689.2335 689.2335 566.4314 108.4637 293.4793 172.7143 209.2484 294.0729 1189.7527 255.6023 454.4834 253.2446 110.9875 287.5014 168.5088 211.6593 1202.146;
	3.5505 47.9747 68.4808 68.9104 13.2317 22.8598 16.1119 7.2651 26.7872 28.8221 53.2771 79.479 119.6552 68.2596 188.7417 71.1073 88.2258 93.493 85.043 68.3422 5.3706 53.3395 71.5504 80.9867 84.6438 58.0316 7.8694 1238.3913 673.1731 673.1731 577.493 108.2145 283.4767 175.913 214.003 287.2205 1148.0041 257.8755 449.2948 226.7245 99.2442 253.5913 128.7984 217.2262 1159.9625;
	2.658 35.9158 71.971 47.6813 13.3811 20.7958 25.2285 7.11 26.2467 29.2269 54.0255 80.5955 121.3361 66.9959 185.7849 69.9934 86.8436 92.0283 82.012 68.6567 8.4095 48.5235 70.8404 80.2782 80.4753 35.855 5.9638 1225.6546 687.474 687.474 580.8217 105.7431 273.3732 176.7224 210.0411 293.3222 1103.6236 252.4752 433.1156 215.5589 87.9952 230.6947 108.2536 198.7215 1115.1197;
	2.3546 31.8152 74.7225 61.7893 12.828 11.8476 22.7342 8.529 24.4382 29.0289 53.6595 80.0495 120.514 65.4077 182.6449 68.8104 85.3759 90.4729 75.0425 67.1229 7.5781 27.6445 69.8281 81.8657 77.6837 47.8459 7.9377 1161.2217 678.9304 678.9304 547.9464 102.0572 250.1417 172.7745 205.0619 289.677 1050.451 243.7697 420.5786 208.0814 95.513 131.4296 78.5024 184.3354 1061.3932;
	1.8828 25.4413 67.8131 67.4317 11.9019 14.1206 23.36 10.7269 24.0188 28.7694 53.1799 79.3339 119.4367 64.9089 180.3343 67.9399 84.2958 89.3284 72.0009 61.1505 7.7867 32.948 69.3784 80.5718 89.9691 64.4848 9.9805 1087.441 650.8928 650.8928 546.3253 95.8231 240.003 157.4017 203.4981 277.7143 985.039 220.0916 410.7961 240.9887 102.9307 156.644 67.145 181.2408 995.2998;
	2.7364 36.9741 75.8002 78.9697 13.0103 16.9891 23.1073 13.3624 25.6313 30.3794 56.1558 83.7734 126.1204 66.8818 166.5995 62.7654 77.8756 82.5249 65.9355 63.5643 7.7024 39.6412 72.2551 81.4568 88.7372 59.285 9.9212 969.5136 674.5158 674.5158 529.1414 97.3905 219.785 163.6146 209.6835 287.7934 994.0166 231.1811 424.7707 237.6888 111.8366 188.4657 78.7277 199.5987 1004.3709;
	3.0491 41.2 84.7837 76.2762 14.0394 23.1747 19.4977 9.9208 26.6132 28.9716 53.5536 79.8914 120.2761 66.2353 168.617 63.5255 78.8187 83.5243 77.3827 63.3144 6.4992 54.0743 71.7832 82.5345 84.2342 60.5277 7.2094 906.7951 627.825 627.825 574.5947 106.2194 257.9422 162.9714 207.6566 267.872 905.2501 243.5501 429.3969 225.6272 111.6403 257.0847 101.016 226.8067 914.6798;
];