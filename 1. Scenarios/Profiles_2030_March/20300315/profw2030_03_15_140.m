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
	3.895 52.6299 92.8959 117.5988 14.8286 33.9873 32.5496 18.3174 5.8072 6.1999 11.4605 17.0967 25.7391 56.8264 201.396 75.8748 94.1409 99.7613 87.4525 70.8358 10.8499 79.3038 0.0 86.635 103.9494 73.5534 13.6894 1212.8814 823.319 823.319 715.4495 113.6435 291.5082 182.3315 178.1584 351.2828 1172.6434 262.2177 468.0581 278.4358 117.0512 377.033 215.5965 274.0727 1184.8585;
	3.8346 51.8139 94.2546 118.9202 14.7067 34.4636 33.0448 18.1009 9.2173 3.3155 6.1286 9.1427 13.7643 63.244 194.2504 73.1827 90.8008 96.2217 87.1944 70.2827 11.0149 80.4151 0.0 85.0456 100.2238 72.0441 13.5257 1239.9341 818.2421 818.2421 714.4046 113.8536 290.6481 180.9077 198.2786 349.1166 1228.0121 254.7733 465.3805 268.4567 116.3768 382.3162 212.1853 275.1382 1240.8038;
	3.7487 50.6533 91.4614 117.6614 14.7472 34.447 32.9232 17.7329 20.6616 13.5863 25.114 37.4651 56.4036 61.0736 182.3984 68.7176 85.2607 90.3509 89.5667 71.6163 10.9744 80.3764 18.6296 85.9695 101.9625 72.5723 13.473 1181.2852 800.8386 800.8386 723.2529 113.1458 298.5558 184.3404 191.4741 341.6912 1207.7014 269.2561 449.5556 273.1138 117.261 382.1323 212.3175 260.0246 1220.2817;
	3.5176 47.5308 88.9077 113.9312 14.6544 32.3021 30.0985 18.2801 26.431 27.4502 50.7412 75.6959 113.9597 63.4401 196.2412 73.9327 91.7313 97.2078 85.5252 68.8799 10.0328 75.3715 0.9726 85.2949 103.6501 73.3858 13.7272 1140.49 758.9889 758.9889 605.1074 111.7499 285.0838 177.2971 198.8934 323.8353 1069.7702 266.325 439.4378 277.6343 114.178 358.3377 156.749 248.6907 1080.9137;
	2.3647 31.9527 89.8061 112.8246 14.4115 27.9421 30.1641 18.4746 19.741 27.0259 49.957 74.526 112.1986 60.0781 199.5478 75.1785 93.277 98.8458 87.0987 71.0188 10.0547 65.1982 56.3792 86.872 101.9324 73.6592 13.8311 1209.5081 763.1184 763.1184 636.3025 112.7606 290.3291 182.8025 188.3528 325.5972 1090.9415 292.4622 437.681 273.0333 111.9746 309.9709 156.9285 255.5742 1102.3055;
	3.349 45.2522 88.8627 115.5475 14.7612 31.3 17.3483 17.8531 21.4436 26.6504 49.2629 73.4905 110.6396 50.1163 201.8336 76.0396 94.3455 99.978 60.1225 72.7991 5.7828 73.0334 62.0645 87.2961 100.6675 72.8958 13.4216 1133.022 774.4141 774.4141 672.7055 112.4967 200.4085 187.3852 157.1213 330.4167 1102.8876 269.9435 434.8101 269.6452 113.5774 347.2219 151.0728 255.0076 1114.376;
	3.5628 48.1415 90.8367 118.9 14.641 32.4896 12.4165 18.3501 23.3159 28.2296 52.1821 77.8454 117.1958 61.8705 199.7222 75.2442 93.3585 98.9322 87.4822 72.7776 4.1388 75.809 67.6773 89.6604 104.2169 72.4825 13.7282 1176.3162 779.4842 779.4842 677.9999 110.0032 291.6074 187.3296 193.9722 332.5799 1120.9392 266.4555 389.8089 279.1525 117.2108 360.4179 172.1622 266.477 1132.6156;
	3.5939 48.5609 92.8614 120.2201 14.6825 32.5083 0.0 18.5784 0.0 27.8155 51.4164 76.7032 115.4763 19.1126 203.295 76.5902 95.0286 100.7019 86.333 71.9677 0.0 75.8526 68.6605 89.9143 104.9608 75.1838 13.7284 1215.4704 739.5654 739.5654 684.0081 110.0063 287.7767 185.2451 59.9206 315.5479 1142.7459 282.2024 149.6561 281.1451 118.605 360.625 195.9222 274.932 1154.6495;
	3.6465 49.272 93.0503 119.6094 14.7771 31.1992 0.0 18.979 0.0 27.6077 51.0324 76.1303 114.6137 25.0304 197.0339 74.2314 92.1019 97.6005 89.5593 72.2273 0.0 72.7982 69.2809 89.9341 104.8965 75.3818 13.6 1087.0944 651.688 651.688 667.2622 110.0576 298.5309 185.9133 78.4737 278.0535 993.3059 273.1788 0.0 280.9727 118.942 346.1034 181.2195 279.1843 1003.6528;
	3.8047 51.4097 94.0392 120.4206 14.71 31.1075 0.0 19.0081 0.0 24.925 46.0735 68.7327 103.4767 20.3591 199.2219 75.0557 93.1247 98.6843 90.5184 73.6263 0.0 72.5843 49.2018 89.6524 102.9836 76.185 13.5734 882.5208 597.8587 597.8587 581.5708 111.7606 301.7281 189.5142 63.8285 255.0864 778.3401 249.8901 0.0 275.8489 119.7044 345.0864 157.7065 279.1638 786.4478;
	3.6858 49.8036 93.4791 120.1502 15.0777 26.5145 1.3437 18.7565 0.0 28.7787 53.1969 79.3593 119.475 1.4221 200.9205 75.6956 93.9187 99.5258 85.1221 73.817 0.4479 61.8672 69.9834 88.6552 102.0075 74.5286 13.565 712.7183 676.9904 676.9904 536.1024 112.8885 283.7402 190.0051 4.4584 288.8492 725.4525 209.7453 2.3343 273.2342 117.4802 294.1345 146.5242 271.3968 733.0093;
	3.6206 48.9224 92.8329 115.7308 15.3194 20.0471 3.6921 18.8078 0.4976 27.7523 51.2998 76.5292 115.2143 4.1469 199.3732 75.1127 93.1954 98.7593 40.9279 73.3667 1.2307 46.7766 70.7968 89.0156 101.3708 75.177 13.484 510.6062 703.6619 703.6619 518.2195 111.7623 136.4263 188.8462 13.001 300.2291 769.1625 208.0574 17.3774 271.5289 122.3336 222.3895 147.818 275.5373 777.1746;
	3.7737 50.9904 92.9698 116.7681 15.2164 21.1974 0.304 18.0531 24.3724 24.4046 45.1115 67.2974 101.3159 52.2248 193.8374 73.0271 90.6077 96.0171 57.3866 73.6038 0.1013 49.4606 70.1059 85.9245 99.9579 72.0983 13.357 604.5008 712.0146 712.0146 499.2898 106.4069 191.2887 189.4563 163.7317 303.7929 591.733 211.4389 28.596 267.7443 121.6739 235.15 148.2656 268.9831 597.8968;
	3.7696 50.9358 88.0239 113.7393 15.1762 20.5466 3.2404 18.7286 17.3299 22.8077 42.1596 62.8939 94.6864 36.5416 197.6995 74.4822 92.413 97.9302 58.9813 73.5392 1.0801 47.9422 68.8062 85.0252 99.5208 75.3039 13.3514 501.7532 694.8424 694.8424 480.5666 91.1479 196.6043 189.2901 114.5628 296.4661 674.0139 230.7639 60.3335 266.5736 120.2981 227.9308 163.0223 273.5621 681.0349;
	3.8216 51.6381 91.301 115.3756 15.2956 18.9878 1.6552 18.5241 0.0 25.3021 46.7706 69.7725 105.0421 30.3939 200.6303 75.5863 93.783 99.382 73.4651 72.7324 0.5517 44.305 67.6162 87.3427 100.4595 75.2141 13.1976 355.8837 675.2729 675.2729 443.7905 85.3323 244.8837 187.2135 95.2891 288.1164 577.9899 227.1178 10.8434 269.088 115.5092 210.6384 168.1663 266.0885 584.0106;
	3.4903 47.162 93.5437 117.8847 15.2924 9.2644 0.0756 18.6934 0.0 27.1793 50.2405 74.9489 112.8352 23.6966 186.5096 70.2664 87.1824 92.3873 63.4866 71.5336 0.0252 21.6169 58.0386 88.5494 103.5818 76.3466 13.8539 434.2442 582.9283 582.9283 442.1368 91.5987 211.6221 184.1276 74.2921 248.7161 507.1634 221.0759 0.0 277.4513 118.0735 102.7727 151.0827 269.3489 512.4463;
	3.2333 43.6896 92.848 114.3009 15.0229 16.9313 0.0 18.6577 0.0 26.4635 48.9173 72.975 109.8634 30.1605 192.9745 72.702 90.2044 95.5897 61.7694 70.8284 0.0 39.5064 62.2819 88.3669 104.0451 76.244 13.7752 986.5002 484.1937 484.1937 310.6277 85.9003 205.898 182.3125 94.5574 206.5893 862.7141 229.3741 80.8799 278.6923 114.0139 187.8248 121.4234 260.3266 871.7008;
	3.0887 41.735 88.7643 109.8769 14.5298 20.1739 1.9339 17.6375 0.0 25.2837 46.7365 69.7217 104.9656 55.0442 191.9674 72.3226 89.7336 95.0908 71.4426 69.585 0.6446 47.0724 55.1061 84.965 98.1036 71.9137 13.4631 1175.7484 605.2571 605.2571 247.7523 66.7157 238.142 179.112 172.5711 258.243 1068.3032 220.1976 127.0507 262.7774 115.6312 223.7958 167.1735 268.7455 1079.4313;
	2.3909 32.3058 89.8255 110.2588 14.6355 31.9602 1.5391 18.0175 0.0 17.7863 32.8778 49.0472 73.8402 62.5682 191.5397 72.1615 89.5337 94.879 55.4565 68.898 0.513 74.5738 19.759 85.9813 101.3231 73.8317 13.3474 1207.735 711.9974 711.9974 333.376 61.9066 184.855 177.3436 196.1598 303.7856 1216.9185 159.0874 240.4265 271.4012 116.0977 354.545 160.6315 273.4886 1229.5948;
	3.6504 49.3248 89.0529 78.7545 14.1861 31.8273 1.4984 16.589 0.0 11.1814 20.6687 30.8337 46.4199 64.7864 201.867 76.0522 94.3611 99.9946 43.6844 71.6927 0.4995 74.2636 19.7464 85.1218 100.7038 73.991 13.0788 1247.7643 745.4458 745.4458 394.4024 52.0906 145.6146 184.5371 203.1142 318.0569 1220.6704 122.613 10.6636 269.7424 114.0737 353.0705 176.3244 268.1686 1233.3857;
	3.645 49.2522 90.2516 116.61 14.3295 31.3323 8.6383 18.1045 0.0 13.9658 25.8156 38.5118 57.9793 63.7591 195.8031 73.7677 91.5266 96.9909 63.512 68.1219 2.8794 73.1088 63.0645 84.2519 102.3851 73.0529 13.5095 1201.6986 681.8967 681.8967 613.7454 48.11 211.7067 175.3459 199.8934 290.9426 1209.7684 164.6371 102.4789 274.2457 115.8481 347.5799 187.7202 274.2058 1222.3702;
	3.677 49.6844 91.6561 114.008 14.5999 31.8423 1.6178 17.6664 25.9464 29.7188 54.9347 81.9518 123.378 63.605 192.3496 72.4666 89.9123 95.2802 66.0177 68.3188 0.5393 74.2988 74.5565 87.8029 103.9723 72.1978 13.6978 1208.0466 681.6655 681.6655 533.8933 70.8479 220.0591 175.8527 199.4102 290.844 1185.2431 227.9458 427.623 278.4972 118.1495 353.2376 195.5649 273.1056 1197.5894;
	3.746 50.616 93.3291 116.6795 14.6375 32.4197 0.0 18.335 25.8629 29.8006 55.086 82.1774 123.7176 63.5434 191.6576 72.2059 89.5888 94.9374 64.53 69.149 0.0 75.646 73.7248 86.6252 104.0542 73.2948 13.7417 1245.8504 728.2032 728.2032 611.6085 107.4112 215.1 177.9896 199.2172 310.7 1188.2026 251.8854 445.347 278.7167 116.3645 359.6428 202.682 274.9851 1200.5797;
	3.8441 51.9422 94.8003 119.7412 15.015 34.0871 27.6816 17.8142 26.1984 28.5833 52.8357 78.8205 118.6638 62.2985 187.7547 70.7355 87.7644 93.0041 64.0212 68.3058 9.2272 79.5365 74.7852 86.6493 105.1548 72.744 13.6116 1216.9007 707.2236 707.2236 568.326 106.8069 213.4041 175.8193 195.3143 301.7487 1132.4491 246.3977 446.628 281.6647 119.6063 378.1392 198.642 279.7945 1144.2454;
];
