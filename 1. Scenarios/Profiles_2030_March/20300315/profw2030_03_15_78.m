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
	3.9438 53.2893 90.1557 120.7416 15.3409 34.7448 32.5577 17.7922 12.6935 17.8448 32.9858 49.2083 74.0829 58.1106 201.2496 75.8196 94.0725 99.6888 89.4858 68.8664 10.8526 81.0711 26.1429 87.5637 103.4834 75.2381 13.6239 1266.0747 791.165 791.165 719.6802 117.1416 298.2861 177.2624 182.1846 337.5637 1149.9319 263.4461 470.6755 277.1877 120.7074 385.4352 219.7703 284.2263 1161.9103;
	3.8397 51.8831 91.3926 117.4706 15.1348 33.9937 32.7352 17.6161 13.0677 13.6076 25.1534 37.524 56.4921 63.9484 198.0857 74.6276 92.5936 98.1215 85.3507 70.9347 10.9117 79.3186 25.9747 86.0685 99.4877 73.7786 13.0215 1235.2006 809.7918 809.7918 757.8739 119.192 284.5025 182.5861 200.487 345.5112 1203.0118 245.679 458.446 266.485 119.3016 377.1032 216.6733 280.3298 1215.5432;
	3.8231 51.6586 88.2989 114.024 15.3362 34.8623 33.6513 17.4979 24.0499 12.4311 22.9788 34.2798 51.608 64.9022 180.2906 67.9234 84.2754 89.3067 84.273 69.3254 11.2171 81.3453 24.972 85.2301 99.4159 72.4722 12.8852 1239.9201 826.0875 826.0875 736.434 122.4951 280.91 178.4438 203.4772 352.464 1249.5284 268.358 462.3592 266.2926 118.0392 386.7389 216.2646 272.3657 1262.5444;
	3.7546 50.7335 87.7693 116.0682 15.35 34.6193 32.4512 17.7325 28.2806 28.5846 52.8383 78.8243 118.6696 68.6563 202.0823 76.1333 94.4617 100.1012 84.9063 68.1111 10.8171 80.7784 25.934 85.9707 99.9286 72.3804 12.8979 1285.4237 833.8444 833.8444 792.2618 123.3672 283.0211 175.3181 215.2466 355.7736 1231.2244 299.1976 469.9703 267.6659 120.1283 384.0435 190.082 272.3537 1244.0497;
	2.8022 37.8634 86.5431 112.0442 14.9905 30.4833 31.7911 17.4725 26.4856 28.2264 52.176 77.8364 117.1823 68.0758 196.12 73.8871 91.6747 97.1478 86.4516 66.7774 10.597 71.1278 68.7477 85.3166 97.9986 69.2388 12.7962 1324.2081 812.1197 812.1197 782.5375 122.6239 288.1718 171.8852 213.4269 346.5044 1199.2997 326.4337 466.518 262.4962 120.7961 338.1617 179.6229 262.6356 1211.7924;
	3.5868 48.4661 88.9 113.7772 14.941 32.8701 19.7693 17.4848 24.8343 27.3014 50.4662 75.2856 113.3421 56.2345 193.0186 72.7186 90.225 95.6116 53.3894 66.1346 6.5898 76.6968 64.5227 87.052 99.1756 69.8995 13.2009 1228.3019 798.7429 798.7429 755.5756 119.6277 177.9645 170.2306 176.3027 340.797 1200.4773 318.1639 465.1463 265.649 121.2741 364.6387 163.6623 261.7517 1212.9823;
	3.5576 48.071 87.9543 113.147 15.0909 33.5238 12.8987 17.351 23.0044 27.3904 50.6308 75.5312 113.7118 65.9508 187.0577 70.4729 87.4386 92.6588 74.0541 68.7369 4.2996 78.2223 69.2646 87.8659 100.0554 69.2993 13.0815 1240.687 759.8232 759.8232 687.2715 117.6221 246.847 176.929 206.7648 324.1913 1115.3068 306.3792 411.7816 268.0056 120.2917 371.8912 181.4085 267.3306 1126.9245;
	3.5977 48.6125 86.9017 112.2575 14.4964 32.4693 0.001 17.5484 0.0 28.0193 51.7932 77.2652 116.3224 46.2259 194.2919 73.1983 90.8202 96.2423 80.6193 69.5721 0.0003 75.7618 71.6958 85.0098 99.2805 69.5999 13.2277 1243.9157 722.9871 722.9871 692.9612 116.6937 268.7311 179.0788 144.9243 308.4745 1104.3481 293.7347 164.6334 265.9299 117.977 360.193 195.0538 266.9191 1115.8517;
	3.5822 48.4038 88.4502 113.4753 14.5627 30.4973 0.3446 17.8163 0.0 29.2363 54.0428 80.6213 121.3749 27.0401 191.4643 72.1331 89.4984 94.8416 82.9052 70.6562 0.1149 71.1603 72.8747 87.798 102.5371 70.7395 13.105 1115.7082 647.5641 647.5641 681.8851 117.9004 276.3506 181.8692 84.7744 276.294 929.5954 276.1427 15.1743 274.6529 119.1222 338.3163 177.8586 271.7514 939.2787;
	3.4239 46.2647 89.1254 116.9471 15.1034 30.0014 6.6935 18.2388 0.0036 26.8366 49.607 74.0038 111.4124 23.008 187.5307 70.6511 87.6597 92.8931 84.8331 71.7562 2.2312 70.0033 53.7362 88.4069 102.9231 73.399 13.0764 964.8552 574.0508 574.0508 578.3967 117.4866 282.777 184.7006 72.1333 244.9284 749.5365 254.053 78.4636 275.6869 119.5058 332.8157 156.1507 276.4416 757.3442;
	3.1569 42.6565 89.5922 117.5782 15.0005 24.7323 11.1147 17.7339 0.0201 29.3371 54.2293 80.8994 121.7936 7.6463 192.2315 72.4221 89.857 95.2216 80.0861 70.8432 3.7049 57.7086 73.0145 87.7567 102.5289 72.2233 13.4132 827.7673 639.5388 639.5388 507.4546 115.8889 266.9538 182.3505 23.9721 272.8699 727.3517 207.6657 70.0895 274.6309 118.8089 274.3631 141.8161 277.3032 734.9283;
	2.3105 31.22 88.3573 113.5581 14.6046 17.2634 7.9752 17.6836 0.0144 25.598 47.3174 70.5883 106.2703 8.9591 196.3364 73.9686 91.7758 97.255 34.8277 71.512 2.6584 40.2812 68.9803 86.841 102.991 71.0294 13.256 601.589 686.9239 686.9239 511.0537 114.3504 116.0925 184.0721 28.0881 293.0875 791.0786 212.4292 53.7026 275.8688 123.3489 191.5085 129.7657 273.9104 799.319;
	3.3332 45.0394 91.1796 113.6748 14.4146 18.6458 1.9601 18.0868 24.936 21.8403 40.3715 60.2263 90.6704 49.6364 192.9355 72.6873 90.1861 95.5704 51.2252 71.8463 0.6534 43.507 68.494 87.3427 104.8196 71.2258 13.7599 587.9681 623.3862 623.3862 495.484 108.8877 170.7508 184.9326 155.6169 265.9781 556.5649 213.1688 1.4881 280.7668 123.4025 206.8445 135.1569 270.1358 562.3624;
	3.3568 45.358 87.8277 111.6473 14.6099 20.314 11.5215 17.6157 18.7655 22.9292 42.3842 63.229 95.1908 37.672 194.6428 73.3306 90.9842 96.4161 45.5043 70.8894 3.8405 47.3993 71.9537 85.5474 100.0336 70.4566 13.5069 499.7888 634.3403 634.3403 477.942 91.6394 151.6809 182.4696 118.1069 270.6519 647.4215 231.0945 80.5693 267.9471 123.5116 225.3496 156.0075 266.8408 654.1655;
	3.6587 49.4364 89.7371 115.162 15.1945 19.8839 12.8552 18.5499 5.5282 25.5792 47.2827 70.5366 106.1924 30.0907 186.9055 70.4155 87.3674 92.5834 62.6713 69.6462 4.2851 46.3957 72.0786 89.201 103.4988 73.5745 13.761 395.3147 642.1231 642.1231 466.6468 83.732 208.9044 179.2696 94.3385 273.9725 583.7607 240.8489 146.2969 277.229 123.3206 220.5786 172.249 253.5956 589.8415;
	3.4378 46.4527 87.9641 113.4012 15.0757 10.166 4.7393 17.97 1.4733 27.5843 50.9892 76.0658 114.5167 17.1068 159.852 60.2233 74.7215 79.1825 50.7962 68.6775 1.5798 23.7207 70.6777 86.0978 100.3186 70.8501 13.4303 395.722 491.2656 491.2656 395.0279 86.0041 169.3205 176.776 53.6321 209.6067 451.9808 214.5761 94.9626 268.7104 122.2005 112.7748 158.2386 244.5474 456.689;
	3.3893 45.7973 87.907 112.6653 15.1877 18.5435 3.9809 18.3659 3.1488 29.9616 55.3836 82.6215 124.3862 23.5394 183.2569 69.041 85.662 90.7761 58.5272 72.8535 1.327 43.2682 74.109 86.4715 103.6136 71.7218 13.4067 936.6823 449.0482 449.0482 296.354 79.3866 195.0906 187.5251 73.7991 191.5939 770.4038 217.7325 120.4011 277.5365 122.9411 205.7093 133.4779 236.5841 778.4288;
	3.3046 44.6528 86.5592 110.5372 14.8428 22.1778 6.1561 18.2977 2.5848 29.9182 55.3034 82.5017 124.2059 52.0276 199.9902 75.3451 93.4838 99.0649 77.4386 73.7615 2.052 51.7481 74.9184 84.1536 98.4515 72.7677 13.5855 1199.4031 568.582 568.582 211.4396 56.2978 258.1285 189.8622 163.1134 242.595 984.8382 185.702 165.7893 263.7095 122.9325 246.0254 179.0072 258.476 995.0969;
	2.3922 32.3245 87.2759 109.6128 14.1375 33.1277 3.7909 18.2582 0.0448 25.3284 46.8191 69.8449 105.1511 59.0503 191.6037 72.1856 89.5636 94.9107 51.979 71.2387 1.2636 77.298 54.0983 85.8879 100.7896 73.3156 13.5993 1172.008 657.0589 657.0589 287.6067 49.4826 173.2633 183.3686 185.1306 280.3451 1108.0406 117.2954 252.643 269.9722 122.877 367.4969 165.1665 262.5297 1119.5827;
	3.7749 51.0072 87.8263 77.3756 14.3615 32.4943 8.0339 17.5935 0.0 13.4395 24.8427 37.0605 55.7944 64.5183 193.421 72.8702 90.4131 95.8109 40.9764 72.365 2.678 75.82 42.2308 87.1555 101.5865 73.9526 13.6121 1247.1553 686.0928 686.0928 370.3765 47.9425 136.5881 186.2677 202.2734 292.7329 1144.9002 97.9594 110.2873 272.1066 123.5214 360.4701 181.6018 257.8361 1156.8263;
	3.8679 52.2641 89.4172 117.6724 14.4925 32.3968 15.7571 18.1811 7.1238 14.1295 26.1182 38.9632 58.6588 61.7857 189.6217 71.4389 88.6371 93.9289 44.3253 69.1167 5.2524 75.5924 64.9446 86.5368 103.8353 73.1624 13.556 1201.2385 663.4345 663.4345 574.1441 42.5397 147.751 177.9067 193.7065 283.0654 1171.8487 147.9675 341.6566 278.1302 123.2387 359.3881 195.2561 264.6615 1184.0555;
	3.8868 52.5194 92.7041 118.2139 15.0794 33.1348 18.9052 17.7958 27.5751 28.742 53.1291 79.2581 119.3227 61.4318 193.2991 72.8243 90.3561 95.7505 54.9873 69.0125 6.3017 77.3146 73.9639 89.5387 104.3712 72.228 13.5736 1253.6166 666.8717 666.8717 531.0518 72.0234 183.2908 177.6384 192.5971 284.5319 1215.0658 212.5592 449.7499 279.5656 122.6091 367.5758 202.3781 267.9842 1227.7227;
	3.7893 51.2013 91.584 118.1436 15.0661 33.2959 23.1618 18.644 28.4178 30.6082 56.5787 84.4044 127.0703 64.6178 197.6871 74.4775 92.4072 97.9241 61.0247 72.1379 7.7206 77.6904 74.7934 87.6127 103.0676 73.1113 13.5777 1271.3628 758.9286 758.9286 606.876 107.052 203.4158 185.6832 202.5855 323.8095 1236.2186 236.7162 476.9729 276.074 121.4258 369.3624 200.7338 263.2466 1249.0958;
	3.8487 52.0049 92.5332 119.1865 15.1554 33.8253 31.5962 17.8632 28.4444 29.0725 53.7401 80.1697 120.695 65.4678 189.9311 71.5554 88.7818 94.0822 65.5854 70.8965 10.5321 78.9258 75.3511 86.9217 103.4861 72.3444 13.1167 1262.278 763.3496 763.3496 617.4561 112.6342 218.618 182.4877 205.2504 325.6958 1207.0925 242.2825 477.335 277.195 118.5459 375.2356 200.3297 270.6376 1219.6664;
];