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
	3.6896 49.855 83.8058 114.5004 14.8446 34.9628 30.4535 7.6681 26.2481 11.8831 21.9657 32.7685 49.3328 41.9763 172.2605 64.8981 80.5218 85.329 81.9222 68.1523 10.1512 81.5799 27.3084 37.304 49.137 30.0554 5.0209 1210.4288 813.3687 813.3687 716.4502 90.0294 273.074 175.4242 131.6014 347.0373 1266.8135 227.6839 447.6878 131.6169 113.413 387.8543 206.511 112.9557 1280.0095;
	3.0761 41.5649 72.6626 42.9117 15.0115 28.2621 30.3058 7.8751 8.8985 12.9387 23.917 35.6795 53.7153 37.6787 184.1386 69.3732 86.0741 91.2129 85.2714 68.8745 10.1019 65.9449 24.4546 32.5675 39.8364 31.4833 5.5387 1260.2036 834.595 834.595 758.0136 78.9048 284.2382 177.2832 118.1279 356.0939 1305.3578 221.5705 450.1657 106.7047 117.3321 313.5207 207.1695 93.9762 1318.9552;
	2.9159 39.4005 88.6943 50.111 14.9797 24.5384 30.6994 7.4335 8.12 12.7523 23.5724 35.1653 52.9412 35.911 194.796 73.3883 91.0558 96.492 89.1128 66.5027 10.2331 57.2563 25.8609 40.9369 42.2176 31.8292 6.2097 1282.2866 827.1872 827.1872 752.6523 93.8561 297.0427 171.1781 112.5858 352.9332 1290.2093 220.5928 456.7565 113.0829 34.7248 272.213 205.8655 132.0879 1303.649;
	3.1992 43.2285 86.9895 51.5389 14.7603 14.2295 31.6782 7.794 10.6311 12.7112 23.4964 35.0521 52.7707 22.6986 196.072 73.869 91.6523 97.124 85.0217 65.9375 10.5594 33.2023 29.8198 38.5762 39.4463 35.2532 5.5765 1280.165 827.5416 827.5416 793.0018 98.0033 283.4056 169.7233 71.1633 353.0844 1284.1568 240.6787 469.4793 105.6596 36.5552 157.853 199.8731 115.8199 1297.5334;
	3.5885 48.4886 83.9117 44.0681 15.0394 22.9669 31.6496 7.7775 11.13 12.0114 22.2029 33.1223 49.8655 25.6391 178.1075 67.1009 83.2549 88.2253 86.3712 64.6458 10.5499 53.5893 17.3082 30.2241 42.8631 66.7344 6.0071 1277.9929 830.2881 830.2881 808.8811 100.4734 287.9039 166.3985 80.3822 354.2562 1295.9005 247.6798 471.8092 114.8118 38.3044 254.779 210.4076 204.2065 1309.3995;
	3.6403 49.1885 94.5192 118.9584 15.2612 34.0982 31.8742 7.97 10.9945 13.1493 24.3063 36.2602 54.5895 24.0403 189.9263 71.5536 88.7795 94.0798 89.1523 68.0433 10.6247 79.5625 22.1344 34.8768 60.0228 72.6043 5.9405 1212.9158 822.6064 822.6064 797.1718 110.8682 297.1742 175.1435 75.3696 350.9787 1284.302 261.0223 470.7136 160.7753 72.2781 378.2627 210.8593 250.4384 1297.6802;
	3.8126 51.5162 93.0091 120.8499 15.2439 35.1279 31.6579 12.3395 8.185 12.8231 23.7032 35.3606 53.2351 32.055 191.7904 72.2559 89.6509 95.0032 82.4951 70.4883 10.5526 81.9651 30.828 55.5446 105.0013 76.2611 12.4154 1139.9197 840.5862 840.5862 784.6931 113.6588 274.9837 181.4371 100.4966 358.6501 1303.3112 304.4188 455.5395 281.2535 108.9492 389.6855 213.6135 279.9337 1316.8873;
	3.7 49.9947 92.164 120.2318 15.2091 34.9782 30.8374 18.7931 1.0384 11.3022 20.892 31.1667 46.9213 42.5373 186.9381 70.4278 87.3827 92.5996 78.2531 57.3954 10.2791 81.6159 26.5374 60.7153 105.8906 76.1121 13.9519 1001.9485 823.6836 823.6836 778.4114 107.1438 260.8436 147.7358 133.3603 351.4383 1236.1999 309.7949 446.1516 283.6355 119.6451 388.0254 208.9542 281.3947 1249.0769;
	3.8437 51.9372 94.5985 120.6261 15.2536 34.8222 31.0442 18.4932 5.6757 11.3166 20.9185 31.2063 46.9809 46.8713 188.4733 71.0062 88.1003 93.36 40.9848 57.264 10.3481 81.2518 25.4645 88.9806 106.4173 76.2782 13.6812 814.7228 840.0075 840.0075 763.9738 110.9933 136.6161 147.3978 146.9479 358.4032 1259.0101 311.3126 448.9841 285.0463 121.7041 386.2941 216.0565 277.7325 1272.1248;
	3.786 51.1568 94.1221 119.1453 15.1575 34.5526 31.0328 18.0919 17.616 10.0931 18.657 27.8325 41.9017 44.6148 179.0311 67.4489 83.6866 88.6829 36.2198 48.6555 10.3443 80.6227 23.1253 88.3828 104.7518 75.4077 12.9443 614.0326 842.1076 842.1076 780.8337 109.3451 120.7326 125.2393 139.8735 359.2993 1137.5462 285.0466 456.0918 280.5852 114.5633 383.3032 209.7128 273.0374 1149.3956;
	3.79 51.2109 94.5853 118.4239 14.9665 34.7067 31.0815 17.8625 26.023 15.6585 28.9445 43.1794 65.0064 62.2246 196.3427 73.971 91.7788 97.2581 16.4579 56.9648 10.3605 80.9823 28.0059 87.2778 103.1799 75.3474 13.1324 442.2914 786.6175 786.6175 729.1457 93.0658 54.8598 146.6275 195.0824 335.6235 956.0511 264.6165 464.8867 276.3747 117.2257 385.0129 203.8979 267.3341 966.01;
	3.3074 44.6902 93.9772 116.292 15.1652 33.3832 30.3448 17.5756 27.201 19.1755 35.4457 52.878 79.6075 63.2518 191.6736 72.2119 89.5963 94.9453 41.0177 52.8618 10.1149 77.8941 34.541 86.662 102.1496 72.8654 12.9131 326.0714 772.5574 772.5574 681.452 101.9812 136.7258 136.0664 198.3029 329.6245 795.7696 251.9534 463.792 273.6151 115.7412 370.3309 188.6117 266.3848 804.0588;
	2.0983 28.3523 93.4158 113.3696 14.6364 22.4352 28.3479 18.4487 27.6299 27.6463 51.1038 76.2368 114.7741 64.8183 192.1532 72.3926 89.8205 95.1829 90.7847 59.3974 9.4493 52.3489 60.3397 86.5854 100.007 72.9693 13.8057 352.2825 722.3471 722.3471 657.9179 105.8935 302.6157 152.889 203.2141 308.2014 717.5119 243.5937 457.0267 267.8759 117.4833 248.8816 174.4594 269.5046 724.986;
	2.111 28.5248 91.48 111.6587 14.7596 13.0018 27.2576 17.6459 27.6573 30.7124 56.7715 84.6919 127.5032 66.1993 198.5712 74.8105 92.8205 98.362 90.0116 68.9728 9.0859 30.3376 72.9133 83.6357 97.6707 71.279 13.2596 349.1065 652.7646 652.7646 625.6305 108.6519 300.0388 177.5361 207.5439 278.5129 541.5506 224.2926 467.8653 261.6179 118.9744 144.2338 141.196 258.8384 547.1918;
	2.1018 28.4005 89.1004 109.884 12.4463 4.7501 23.5131 17.653 27.79 30.7481 56.8374 84.7903 127.6513 65.8999 204.6337 77.0946 95.6544 101.3651 91.8643 71.988 7.8377 11.0835 75.0991 82.6492 96.349 71.4533 13.445 485.058 527.4324 527.4324 438.0338 95.4418 306.2144 185.2972 206.6052 225.0378 470.5771 201.662 471.9996 258.0778 117.2974 52.6943 117.1007 242.9025 475.4789;
	3.3199 44.8593 89.4995 77.8986 14.758 27.2147 16.8364 18.0022 23.9879 30.379 56.1552 83.7725 126.119 56.1002 203.9741 76.8461 95.346 101.0384 90.2676 72.4318 5.6121 63.5009 75.2574 83.8952 94.3476 72.4293 13.4649 520.1327 533.192 533.192 420.8617 50.6055 300.8919 186.4396 175.8818 227.4953 496.2578 177.5899 471.6362 252.7168 118.1202 301.9016 89.7132 258.0477 501.4271;
	3.3941 45.862 93.8656 65.8931 15.364 33.9882 17.1545 18.5536 28.3249 28.4383 52.5677 78.4207 118.0619 57.3828 198.4385 74.7605 92.7584 98.2963 87.5469 69.578 5.7182 79.3057 74.6319 84.897 101.3261 75.5936 13.7761 627.2915 615.6308 615.6308 468.8636 31.7911 291.8229 179.0939 179.9027 262.6692 641.0464 129.8837 218.4632 271.4092 119.1798 377.042 124.4744 266.1412 647.7239;
	3.7484 50.6496 90.7742 64.1526 15.244 33.5929 31.3026 18.4739 28.3041 14.4906 26.7857 39.959 60.158 59.3603 185.7901 69.9954 86.8461 92.0309 76.5011 69.7676 10.4342 78.3835 57.566 85.2644 102.3583 73.9848 13.4838 705.0546 647.2877 647.2877 427.0097 28.9314 255.0038 179.5821 186.1026 276.1761 830.3152 93.0056 450.9775 274.1741 123.3158 372.6576 128.8725 253.67 838.9643;
	3.8005 51.353 89.1264 53.7108 14.7641 33.1606 29.7641 18.5107 28.0925 24.6991 45.656 68.1097 102.5388 63.8687 176.3756 66.4485 82.4453 87.3674 53.6694 67.9003 9.9214 77.3748 60.9191 77.0445 103.0645 74.5861 13.509 985.116 687.9584 687.9584 456.087 37.1154 178.8981 174.7755 200.237 293.5289 1021.0306 94.5918 471.7399 276.0656 121.0879 367.862 147.0906 239.5931 1031.6663;
	3.6573 49.4184 64.5774 41.3785 15.0554 32.8759 15.3737 18.7585 27.9272 28.6664 52.9894 79.0498 119.009 63.8213 187.4456 70.6191 87.6199 92.851 43.6574 69.6432 5.1246 76.7103 72.996 71.1591 104.4504 75.6932 13.6009 1096.4503 600.0951 600.0951 547.4394 59.2589 145.5245 179.2619 200.0883 256.0406 1124.4186 143.0036 459.2108 279.7779 123.2407 364.7028 148.1001 240.7186 1136.1313;
	3.8443 51.9456 66.0215 66.8759 15.1297 33.6011 29.7485 19.0363 4.8112 27.2557 50.3818 75.1597 113.1525 64.9041 177.9779 67.0522 83.1943 88.1612 38.4222 69.9906 9.9162 78.4025 72.1284 85.8197 105.0444 76.3465 13.8335 1205.951 696.0672 696.0672 389.747 61.0586 128.0739 180.1561 203.4831 296.9887 1117.1036 185.097 435.6126 281.369 119.3907 372.7481 132.9205 273.1722 1128.7401;
	3.8338 51.8036 48.9462 83.5578 15.1017 34.2641 7.8892 18.7394 27.1581 30.1072 55.6528 83.023 124.9907 68.4936 186.069 70.1004 86.9765 92.1691 40.3354 70.619 2.6297 79.9496 70.6818 84.9825 104.5171 75.9519 13.858 1245.0831 738.8417 738.8417 506.5763 80.3254 134.4515 181.7736 214.7367 315.2391 1230.3374 217.2003 472.7242 279.9566 119.7277 380.1033 144.5619 256.3451 1243.1534;
	3.8101 51.483 60.8607 94.1205 15.0601 32.9897 29.9365 18.257 27.1336 29.3431 54.2403 80.9158 121.8183 67.5335 179.6526 67.6831 83.9772 88.9907 18.5779 69.0886 9.9788 76.9759 68.3684 87.6778 104.0905 75.2131 13.7091 1251.6793 724.5871 724.5871 535.0724 103.9991 61.9263 177.8343 211.7265 309.1572 1185.8711 239.1318 465.6693 278.8137 120.6988 365.9654 140.3454 264.9543 1198.2239;
	3.8983 52.6744 91.738 107.6937 15.1849 34.7486 31.2505 18.7025 27.9463 30.5619 56.4932 84.2768 126.8782 68.4236 185.0541 69.7181 86.5021 91.6664 31.8924 71.3023 10.4168 81.0801 72.6111 87.427 105.87 74.9372 13.8015 1303.1924 730.0871 730.0871 582.6146 110.3319 106.308 183.5324 214.5171 311.5038 1279.805 225.6028 478.315 283.5804 121.4176 385.4781 162.5964 279.3177 1293.1363;
];