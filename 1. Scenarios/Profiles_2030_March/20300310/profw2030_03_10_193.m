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
	3.7708 50.9522 74.5407 109.6686 14.605 34.914 31.1389 6.4552 27.2197 12.1506 22.4603 33.5063 50.4436 41.9396 186.9662 70.4384 87.3958 92.6135 85.8015 70.4645 10.3796 81.4659 30.7016 34.5982 42.2023 27.9278 4.4871 1244.8441 765.2431 765.2431 626.8687 90.0758 286.0049 181.3758 131.4864 326.5037 1213.2748 211.0985 459.6276 113.0419 96.5299 387.3122 207.3176 113.4941 1225.9131;
	3.2527 43.9517 75.8996 42.9144 14.7933 27.6492 30.1969 7.1119 9.2795 12.8195 23.6966 35.3507 53.2203 37.6789 176.5954 66.5313 82.5481 87.4763 91.086 68.8717 10.0656 64.5148 25.267 35.4776 39.0076 28.251 5.0096 1276.9579 788.9718 788.9718 666.584 79.6966 303.6201 177.276 118.1286 336.628 1255.1947 203.2894 455.6947 104.4847 102.9876 306.7216 206.1462 104.8377 1268.2697;
	3.0575 41.3138 86.4486 44.5686 14.8332 23.2766 30.3012 6.651 3.8402 11.7963 21.8053 32.5292 48.9725 35.0888 188.931 71.1787 88.3143 93.5867 89.1396 63.838 10.1004 54.3121 26.4484 33.7481 37.3337 28.9646 5.8515 1274.7297 806.1999 806.1999 684.039 95.037 297.132 164.3191 110.008 343.9786 1255.0699 209.936 454.9234 100.001 23.3876 258.2152 211.5452 133.4327 1268.1436;
	3.3815 45.6918 80.7205 45.0562 14.2021 13.0307 30.482 7.1923 0.0488 10.8063 19.9754 29.7993 44.8627 26.9987 191.3072 72.0739 89.425 94.7638 88.1344 64.1201 10.1607 30.4049 25.5371 29.4768 34.8679 30.7749 5.3885 1258.8735 805.3254 805.3254 634.8105 101.6956 293.7813 165.0454 84.6445 343.6055 1253.1471 226.6966 445.2435 93.3961 33.0498 144.5536 212.8282 114.7346 1266.2007;
	3.8157 51.5578 82.457 41.5821 14.7547 21.2697 29.7362 7.4628 0.0 9.758 18.0375 26.9084 40.5104 31.3476 182.3567 68.7018 85.2411 90.3302 88.6069 67.7006 9.9121 49.6294 0.3241 23.8804 38.059 60.9413 5.4386 1230.2594 804.0822 804.0822 668.6721 106.972 295.3563 174.2615 98.2791 343.0751 1259.2072 238.7482 449.0831 101.9437 37.2684 235.9524 213.6039 195.8278 1272.324;
	3.8405 51.8933 93.9016 111.294 14.6312 33.657 31.2775 6.1844 8.2413 11.3999 21.0726 31.4362 47.327 29.2657 201.0258 75.7353 93.9679 99.5779 90.8818 69.9994 10.4258 78.533 1.7999 24.1677 52.036 64.5609 4.6817 1193.1011 825.0738 825.0738 751.6387 112.5123 302.9393 180.1785 91.752 352.0315 1258.2921 247.7285 470.6127 139.382 66.4611 373.3682 215.2666 252.2138 1271.3993;
	3.9307 53.1124 92.5862 116.2207 14.6079 34.2614 31.5682 10.2917 9.5207 11.8354 21.8776 32.6371 49.135 39.6364 205.1813 77.3009 95.9103 101.6363 85.9628 72.8407 10.5227 79.9433 24.0246 42.8785 97.5301 73.5317 10.8648 1178.3659 829.0557 829.0557 755.2107 115.5737 286.5425 187.4921 124.2654 353.7304 1299.2296 295.8724 470.436 261.2413 107.9399 380.0733 212.2349 279.7362 1312.7632;
	3.713 50.1713 91.3376 112.8005 14.5092 33.8063 31.874 18.4703 9.6868 11.0363 20.4004 30.4333 45.8172 63.2907 200.339 75.4766 93.6469 99.2377 83.278 60.382 10.6247 78.8813 24.9854 53.1159 103.0973 72.8687 13.7489 1013.8806 800.9578 800.9578 737.2879 114.6337 277.5933 155.4234 198.4249 341.742 1222.8335 301.1175 465.0772 276.1535 119.2031 375.0242 210.4694 281.7103 1235.5713;
	3.74 50.5351 90.0078 110.6935 14.678 34.0798 30.1633 17.724 6.0097 11.4282 21.1249 31.5141 47.4443 63.9937 201.9879 76.0978 94.4176 100.0545 51.3111 66.5393 10.0544 79.5196 26.4862 83.6782 97.8826 69.4985 13.2365 774.3075 819.1536 819.1536 772.3959 115.754 171.037 171.2724 200.629 349.5056 1184.3645 308.9068 468.7303 262.1855 121.1639 378.0587 216.1746 274.2491 1196.7016;
	3.7864 51.1624 92.0168 114.3496 15.0056 34.6002 31.6604 18.135 19.6134 11.9739 22.1336 33.019 49.71 62.5446 192.7785 72.6282 90.1128 95.4926 54.2144 57.3741 10.5535 80.7339 25.1684 86.8097 97.212 64.1073 13.27 636.4656 842.0325 842.0325 782.1092 114.7991 180.7148 147.681 196.0857 359.2672 1148.6705 283.2666 465.2158 260.3892 121.1314 383.832 217.2944 274.9537 1160.6358;
	3.8494 52.014 92.8697 118.1803 15.2393 34.7794 31.6969 18.2852 27.8267 19.2855 35.6489 53.1812 80.064 69.6547 200.9657 75.7127 93.9398 99.5481 38.665 69.0772 10.5656 81.152 31.8906 84.4868 97.7428 65.4189 13.225 469.3779 839.153 839.153 775.9707 110.6558 128.8834 177.805 218.3769 358.0386 977.0764 288.286 468.6335 261.811 119.163 385.8197 215.8435 273.2257 987.2542;
	3.4721 46.916 93.2506 119.4211 15.191 33.8509 30.4493 17.8394 27.2523 20.4859 37.8679 56.4915 85.0477 67.0546 193.1323 72.7615 90.2781 95.6679 50.6229 65.245 10.1498 78.9855 35.9238 85.8413 98.6232 70.8831 12.7402 350.9222 815.5275 815.5275 765.7948 113.391 168.743 167.9407 210.2252 347.9584 825.0003 274.3331 452.167 264.1693 116.8161 375.5196 208.1087 276.0395 833.594;
	1.9835 26.8015 91.1993 116.3428 14.974 22.7495 26.7507 18.0252 27.0042 28.6256 52.9139 78.9371 118.8394 67.8358 191.2194 72.0408 89.384 94.7203 90.7107 63.9826 8.9169 53.0821 62.4137 82.0363 96.4235 69.3651 13.1358 337.6534 751.9103 751.9103 710.8517 114.0466 302.3689 164.6915 212.6745 320.8151 735.4666 247.513 423.9362 258.2773 116.7224 252.3676 179.4396 275.0579 743.1277;
	2.3675 31.9896 93.5476 120.1844 15.0983 14.7815 26.107 17.966 26.8716 31.1888 57.652 86.0054 129.4807 67.5958 193.3778 72.854 90.3929 95.7895 88.7624 69.083 8.7023 34.4902 75.0515 84.729 102.7605 70.8253 13.3191 327.8929 633.0088 633.0088 639.1267 111.9309 295.8747 177.8198 211.9219 270.0838 519.1217 220.59 439.8655 275.2513 118.8445 163.9762 145.5102 274.5795 524.5292;
	2.1982 29.7026 94.0241 119.6993 13.453 6.4524 22.3113 18.0551 26.4799 30.1402 55.7137 83.1138 125.1274 68.6351 199.4082 75.1259 93.2117 98.7766 88.491 73.2227 7.4371 15.0557 75.2244 88.5212 101.9151 70.4456 13.4669 477.4472 500.9111 500.9111 476.941 98.4356 294.97 188.4754 215.1804 213.7221 459.4787 198.8657 433.8524 272.9868 116.1181 71.5789 116.8323 260.575 464.2649;
	3.2836 44.3686 93.3645 93.9669 14.9501 28.3257 17.3647 18.8959 22.9575 29.1954 53.9673 80.5087 121.2053 60.7815 201.686 75.984 94.2765 99.9049 88.4458 73.2185 5.7882 66.0933 71.946 89.4594 105.4258 73.3859 13.5759 486.429 500.0821 500.0821 422.715 50.2038 294.8193 188.4646 190.5582 213.3684 484.7941 166.2 436.4653 282.3905 119.6849 314.2265 83.3186 266.1377 489.844;
	3.0549 41.2778 92.6029 69.8089 14.7232 32.1627 15.6032 19.0772 27.0533 28.4632 52.6138 78.4895 118.1655 63.8201 203.4149 76.6354 95.0846 100.7613 88.2672 72.8273 5.2011 75.0462 73.4673 89.7591 106.4728 75.2095 13.7711 593.948 566.9149 566.9149 434.7753 29.8928 294.2239 187.4577 200.0848 241.8837 574.8919 122.3385 172.5585 285.1949 119.1063 356.7911 108.6776 263.8998 580.8804;
	3.5219 47.5888 90.5835 66.3095 14.4648 31.4722 28.5307 18.9972 26.1452 12.0714 22.3137 33.2877 50.1144 64.2945 187.9749 70.8184 87.8673 93.1131 70.8851 71.2961 9.5102 73.4352 46.4746 88.7308 105.4436 73.1471 13.621 643.3472 571.652 571.652 384.168 27.5033 236.2838 183.5163 201.5719 243.9048 701.1834 81.9679 373.8792 282.4382 118.3463 349.1321 110.127 259.1751 708.4874;
	3.6055 48.7184 89.3209 58.116 14.9456 32.1828 28.1386 19.0255 26.4293 20.6192 38.1142 56.8589 85.6008 66.4455 183.9956 69.3193 86.0072 91.142 55.0026 70.1593 9.3795 75.0933 52.1845 87.548 105.9088 73.9349 13.7847 981.2459 654.1228 654.1228 468.5346 39.2844 183.3419 180.5902 208.3157 279.0924 953.8312 92.8441 425.9448 283.6843 116.1004 357.0149 145.2386 235.627 963.767;
	3.5625 48.1372 64.9289 40.313 15.0642 31.0465 2.0521 19.052 26.3806 25.844 47.7723 71.2668 107.2918 67.556 191.4122 72.1134 89.4741 94.8158 45.5187 72.7951 0.684 72.4419 65.5107 81.5213 105.7053 73.8395 13.6158 1160.1812 554.5351 554.5351 546.5567 62.2729 151.7289 187.3747 211.7973 236.6016 1063.5007 135.6715 414.8257 283.1391 117.7842 344.4093 150.8478 219.4422 1074.5788;
	3.6666 49.5444 66.8768 68.3669 15.2074 32.5672 29.3287 19.0088 0.8045 26.2433 48.5104 72.368 108.9496 68.2206 192.8665 72.6613 90.1539 95.5362 62.5976 72.5506 9.7762 75.9901 69.2329 89.0471 105.4911 75.9183 13.8789 1257.1016 644.3378 644.3378 449.0199 71.211 208.6587 186.7454 213.8807 274.9175 1076.1378 193.1999 386.0165 282.5654 118.1029 361.2788 145.7024 261.8678 1087.3475;
	3.667 49.5492 52.4468 90.6562 15.1009 33.5055 5.8334 18.7149 27.9326 30.0635 55.572 82.9025 124.8092 68.7134 190.5769 71.7987 89.0836 94.402 56.2487 69.3458 1.9445 78.1795 71.5837 89.6282 106.3342 74.5802 14.0048 1261.5039 668.7014 668.7014 541.2483 88.6415 187.4956 178.4963 215.4258 285.3126 1179.603 215.6992 441.7212 284.8238 119.4319 371.6876 153.1791 260.854 1191.8906;
	3.5891 48.4966 62.0768 98.6792 14.8396 32.81 29.7345 18.3789 27.7159 29.3145 54.1874 80.8369 121.6995 67.7894 186.6636 70.3244 87.2544 92.4636 47.9516 68.0038 9.9115 76.5566 69.4795 89.3109 105.3253 75.3836 13.8699 1257.134 641.9486 641.9486 547.3016 103.6484 159.8386 175.0419 212.529 273.8981 1120.8156 232.0275 442.3951 282.1214 119.0123 363.9719 149.4087 264.8705 1132.4907;
	3.7459 50.616 90.4963 106.2249 15.234 33.8232 29.7653 18.3665 27.6229 29.859 55.1939 82.3385 123.9601 68.8383 193.3561 72.8458 90.3827 95.7787 42.7132 71.1214 9.9218 78.9208 71.6752 88.9151 104.5464 74.8577 13.5461 1239.4403 658.7594 658.7594 619.6718 111.0821 142.3774 183.0667 215.8175 281.0707 1197.0362 230.2243 463.36 280.0351 116.9439 375.2118 171.4005 268.6977 1209.5053;
];