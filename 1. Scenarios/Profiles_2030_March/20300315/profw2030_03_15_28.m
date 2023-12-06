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
	3.7272 50.3621 89.7913 115.5968 15.0121 32.537 30.6651 17.704 0.0529 15.8231 29.2487 43.6333 65.6897 56.4401 205.4141 77.3886 96.0191 101.7516 89.7012 69.4212 10.2217 75.9197 0.0 86.8254 102.8734 73.6871 13.5482 1212.0271 778.6861 778.6861 750.2755 114.6857 299.0041 178.6904 176.9474 332.2394 1067.6414 271.9801 434.1974 275.5536 118.9157 360.9438 211.4718 270.2356 1078.7627;
	3.6846 49.7875 88.1701 115.9002 14.8656 33.0511 31.6125 17.513 10.3741 13.4047 24.7785 36.9646 55.65 62.7089 195.8857 73.7988 91.5652 97.0317 85.3493 70.8613 10.5375 77.1193 0.0 85.5454 101.2253 71.4606 12.9179 1250.8712 795.418 795.418 805.3467 115.8128 284.4978 182.3971 196.6008 339.3783 1212.3462 267.3423 445.1793 271.1392 119.3594 366.6472 212.1274 268.5526 1224.9749;
	3.5143 47.486 85.5294 111.3188 14.5233 32.6507 30.0889 17.3598 14.9773 8.0571 14.8934 22.218 33.4491 55.5293 169.7681 63.9591 79.3567 84.0944 80.2116 68.5304 10.0296 76.1849 0.0 84.5124 99.3983 71.7974 13.038 1217.6788 765.1886 765.1886 756.0971 115.2122 267.3721 176.3975 174.0918 326.4805 1168.5066 278.6077 426.291 266.2453 117.0323 362.205 200.3597 257.9207 1180.6786;
	3.5091 47.4157 84.6293 111.5533 14.4929 32.3678 30.0 16.4329 19.7858 21.788 40.2748 60.0821 90.4533 64.5683 188.9561 71.1881 88.326 93.5992 69.9037 56.3436 10.0 75.5249 0.0 83.1893 99.6307 69.4925 12.8285 1221.4145 754.4517 754.4517 756.1613 115.4458 233.0123 145.0286 202.4303 321.8994 1119.8546 301.6866 409.604 266.868 115.4446 359.0668 177.5458 252.6793 1131.5197;
	2.7374 36.9876 85.0695 112.6606 14.194 27.5148 29.6329 17.1182 19.3317 21.5874 39.9039 59.5288 89.6203 61.8739 194.1105 73.13 90.7354 96.1524 77.2766 67.3884 9.8776 64.2012 62.7858 83.352 98.1465 67.2907 12.7222 1223.1535 733.7212 733.7212 726.7424 114.9452 257.5888 173.458 193.983 313.0544 1063.5678 306.8762 407.7526 262.8924 116.0368 305.2306 179.1023 231.8465 1074.6466;
	3.5634 48.149 86.9265 112.2953 13.9316 30.2524 15.8551 17.4999 20.4307 26.0771 48.2032 71.9097 108.2597 51.6693 192.1289 72.3834 89.8091 95.1708 36.5608 66.8474 5.285 70.5889 67.6711 83.8016 99.4612 71.5707 13.249 1121.6221 716.4932 716.4932 737.2616 114.8755 121.8695 172.0653 161.9902 305.7038 1081.6885 290.9103 423.3424 266.414 118.452 335.5999 158.5023 245.2924 1092.9561;
	3.5819 48.3994 88.8047 113.8573 13.9787 30.2583 12.3499 17.6681 22.5401 25.1311 46.4545 69.3009 104.3322 64.8367 188.6407 71.0693 88.1786 93.4429 65.4409 67.2906 4.1166 70.6028 63.1304 86.5302 103.4954 72.3138 13.0778 1232.2976 732.1676 732.1676 679.8375 113.6623 218.1365 173.2062 203.272 312.3915 1082.0739 293.7121 393.6949 277.2197 118.9521 335.6659 175.0956 266.8571 1093.3455;
	3.6629 49.4944 86.4245 112.5353 13.9861 30.5144 0.0898 18.0594 0.0 26.296 48.6077 72.5131 109.1681 43.7401 193.5424 72.916 90.4698 95.871 71.6096 67.2687 0.0299 71.2004 52.673 82.7608 100.8387 73.1141 13.3251 1237.2314 744.5735 744.5735 678.9151 116.5388 238.6987 173.1499 137.1312 317.6847 1114.9835 282.3271 166.6772 270.1035 119.8343 338.5069 192.1646 262.078 1126.5979;
	3.6848 49.7894 81.9577 106.6313 13.9417 27.3549 0.0 17.7297 0.0 26.5788 49.1306 73.2932 110.3425 24.8449 190.4309 71.7437 89.0154 94.3297 82.5335 68.0082 0.0 63.8282 60.953 82.2552 100.346 73.5585 13.0846 1074.2455 619.5225 619.5225 684.2265 112.1476 275.1117 175.0534 77.8921 264.3296 899.6533 238.8424 4.4683 268.784 119.7619 303.4574 172.4664 265.8373 909.0247;
	3.5606 48.1119 78.3751 102.7295 14.1583 23.8366 0.3342 17.8957 0.0 15.0983 27.909 41.6348 62.6809 15.7969 178.4889 67.2447 83.4332 88.4143 83.4992 68.2136 0.1114 55.6187 13.0464 84.3304 98.0961 74.4597 13.0436 910.4931 588.8099 588.8099 563.0231 109.1441 278.3305 175.5821 49.5253 251.2256 744.9968 228.1435 0.1867 262.7575 120.6345 264.4274 135.744 270.4821 752.7571;
	3.3086 44.7065 88.5459 115.0889 14.0976 20.9234 1.7823 18.2055 0.0 22.8041 42.1531 62.8842 94.6718 0.0 182.208 68.6458 85.1717 90.2565 69.4514 67.9681 0.5941 48.8212 52.2893 86.5442 102.4322 71.9782 13.5667 776.7598 629.3281 629.3281 504.2605 105.687 231.5046 174.9501 0.0 268.5133 697.5995 184.9632 0.8645 274.3719 120.8554 232.1101 132.6477 273.5779 704.8661;
	3.2747 44.2481 89.7656 113.3243 14.369 16.7289 0.0 17.9231 0.0 21.5975 39.9227 59.5568 89.6624 0.0 194.9051 73.4293 91.1068 96.546 38.4152 68.6564 0.0 39.034 55.1038 85.3925 100.8434 73.5985 13.7149 497.2485 640.398 640.398 484.8928 98.0326 128.0508 176.7218 0.0 273.2365 684.2446 184.4841 0.0 270.1162 122.6289 185.5788 129.4571 279.6486 691.3722;
	3.6481 49.2935 89.3398 112.6915 14.2813 17.5593 4.7337 18.4583 23.3837 22.3105 41.2406 61.5228 92.6223 49.0435 192.8373 72.6503 90.1402 95.5217 56.5782 69.5585 1.5779 40.9716 62.8804 83.8573 101.7369 74.2021 14.0008 531.1182 637.4451 637.4451 516.4708 102.8069 188.5942 179.0438 153.7581 271.9766 532.739 214.3817 29.7181 272.5096 122.0844 194.7906 128.3678 272.4921 538.2884;
	3.587 48.4679 91.7194 113.681 13.9985 18.5027 1.2027 19.0264 17.0872 20.6868 38.2392 57.0454 85.8815 36.8798 196.1198 73.887 91.6746 97.1477 56.0761 68.9795 0.4009 43.1729 64.7475 84.7621 103.987 75.3965 14.0636 444.2353 646.514 646.514 458.8105 87.8924 186.9203 177.5534 115.6232 275.846 627.5078 228.817 0.5233 278.5367 123.6228 205.2562 146.8396 272.9221 634.0443;
	3.612 48.8057 88.514 112.3172 14.2087 15.311 2.7123 18.7337 0.6548 21.289 39.3524 58.706 88.3816 32.4295 190.1059 71.6213 88.8635 94.1687 70.4199 68.6624 0.9041 35.7256 56.0217 85.0921 100.9777 74.2618 13.8894 370.3537 683.4171 683.4171 452.7512 88.7401 234.7331 176.7371 101.6707 291.5913 574.5916 228.5311 0.2684 270.4759 120.7365 169.8497 144.4229 248.8553 580.5769;
	3.1413 42.4464 87.8165 113.3003 13.9443 7.6099 7.8916 18.5177 0.022 25.9527 47.9732 71.5666 107.7431 24.7184 186.7224 70.3466 87.2819 92.4927 62.6649 69.533 2.6305 17.7563 59.6434 85.7889 101.0983 72.0802 13.8254 385.5076 550.5997 550.5997 388.6659 90.9565 208.8831 178.9782 77.4955 234.9225 454.4763 204.8063 4.9052 270.799 122.7962 84.4187 141.5089 234.7217 459.2104;
	3.3494 45.2581 87.296 110.0422 14.0343 17.6326 0.16 18.3632 0.0 28.0092 51.7747 77.2376 116.2808 34.6172 182.7769 68.8601 85.4376 90.5383 61.8325 69.3596 0.0533 41.1428 65.8334 83.2235 100.7144 70.8597 13.3241 868.9497 457.2394 457.2394 275.8153 89.4564 206.1084 178.5317 108.5295 195.0888 768.4322 210.0835 89.9235 269.7708 119.3764 195.6046 124.8583 219.1305 776.4367;
	3.2276 43.6121 90.4927 113.4409 14.0059 22.3129 1.5171 18.1254 0.0 28.4887 52.661 78.5598 118.2714 57.9986 193.1481 72.7674 90.2855 95.6757 76.5706 69.7066 0.5057 52.0634 69.0255 84.6054 99.8473 69.675 13.5098 1197.4222 574.6944 574.6944 219.2013 70.3904 255.2354 179.4249 181.8334 245.203 1043.3582 205.1189 115.2941 267.4482 121.6538 247.5242 173.9601 253.933 1054.2265;
	2.4046 32.4909 89.0641 111.5242 14.1149 32.7539 0.0 18.2718 0.0 24.1986 44.7307 66.7294 100.4608 65.6133 197.5875 74.4399 92.3607 97.8747 54.1261 72.1644 0.0 76.4257 48.7283 86.7119 101.0291 71.5884 13.7303 1213.1237 703.2425 703.2425 300.9619 62.4461 180.4205 185.7515 205.7065 300.0501 1181.9188 136.5762 234.2023 270.6138 120.6374 363.3496 166.0546 248.0636 1194.2305;
	3.6795 49.7176 90.8108 86.2668 14.4211 32.807 0.0 17.9527 0.0 15.3571 28.3874 42.3485 63.7554 68.5453 201.8059 76.0292 94.3325 99.9643 36.8677 73.2607 0.0 76.5496 44.7948 86.3795 104.3188 75.0656 13.8056 1303.0952 739.2805 739.2805 372.6002 57.1415 122.8924 188.5732 214.8988 315.4264 1205.2619 116.0107 0.0 279.4254 120.5221 363.9386 188.717 249.0315 1217.8167;
	3.597 48.6037 86.9473 112.8419 14.1653 32.0806 0.0 17.9738 0.0 15.864 29.3243 43.7461 65.8595 67.6249 203.2163 76.5605 94.9918 100.6629 58.168 71.4454 0.0 74.8548 70.4556 83.3442 102.4173 72.4298 13.3859 1229.6059 643.6366 643.6366 594.5193 47.8584 193.8933 183.9007 212.0134 274.6183 1167.6621 145.632 0.0 274.3321 116.5462 355.8812 185.5392 224.094 1179.8252;
	3.6772 49.6872 88.1385 114.9023 14.8755 32.7788 0.0 17.3703 25.6868 29.3518 54.2564 80.9398 121.8545 64.8266 198.8342 74.9096 92.9434 98.4923 59.0965 71.2916 0.0 76.484 73.64 86.6653 101.2897 71.7029 13.3673 1250.3272 660.9559 660.9559 509.669 73.3305 196.9882 183.5048 203.2403 282.0079 1196.6439 198.3812 353.5516 271.3118 119.7209 363.6267 194.5543 237.0302 1209.109;
	3.7352 50.4708 89.7629 118.7221 14.6708 32.8102 0.0 18.0999 26.3149 29.9012 55.2719 82.4547 124.1351 66.8807 200.8262 75.6601 93.8746 99.479 63.2526 72.8414 0.0 76.5572 73.9013 85.525 100.1937 71.8883 13.4141 1264.8671 715.114 715.114 597.4257 109.4622 210.842 187.494 209.6801 305.1153 1196.0227 233.5409 426.6235 268.3759 122.1833 363.975 194.8356 220.3716 1208.4813;
	3.6559 49.3997 90.0457 116.8011 14.309 32.3436 28.5784 17.4062 27.1964 28.7073 53.0651 79.1626 119.1789 65.2599 195.057 73.4866 91.1778 96.6212 70.3088 73.116 9.5261 75.4683 75.029 84.1577 100.2307 72.3386 13.0136 1236.1311 698.3115 698.3115 562.8777 111.6452 234.3627 188.2008 204.5987 297.9463 1127.2366 226.7636 439.8526 268.4751 122.4033 358.798 187.4664 263.4267 1138.9786;
];
