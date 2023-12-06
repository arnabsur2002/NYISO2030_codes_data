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
	3.0853 41.6897 85.5898 109.657 14.397 10.5563 14.7086 16.7426 25.969 24.2573 44.8392 66.8912 100.7044 5.785 17.4182 6.5622 8.142 8.6281 14.8812 29.9407 4.9029 24.6313 61.345 81.4826 97.9917 71.2215 6.6147 677.6641 388.5705 388.5705 205.4358 33.497 49.604 77.0674 18.1366 165.7901 483.2399 51.8391 287.0591 262.4779 13.8096 117.1043 105.4223 222.5788 488.2737;
	3.2272 43.6063 88.3083 107.7991 14.2678 13.4165 13.1362 16.6492 23.9636 23.9636 44.2963 66.0813 99.485 5.3174 10.3684 3.9062 4.8466 5.136 12.7963 17.5194 4.3787 31.3052 61.8434 83.6427 99.1611 71.7893 6.22 665.2804 354.9403 354.9403 159.6809 29.4128 42.6543 45.095 16.6706 151.4412 456.0821 42.8902 251.4998 265.6101 14.3912 148.8339 106.7241 208.1241 460.833;
	3.0691 41.47 89.1122 106.4641 14.7887 12.3681 11.6995 16.5338 25.3984 24.4071 45.1162 67.3045 101.3265 6.106 10.361 3.9034 4.8432 5.1323 21.1767 22.0648 3.8998 28.8588 66.7127 85.0545 98.9365 72.4063 6.3452 614.8324 335.0031 335.0031 134.6592 27.7658 70.589 56.7949 19.143 142.9347 379.776 30.7293 203.1039 265.0085 23.1095 137.2031 89.9564 207.3807 383.732;
	2.8334 38.286 90.1409 105.9558 14.9388 12.9142 10.5118 17.5459 25.6262 24.6487 45.5628 67.9708 102.3297 9.5588 7.4708 2.8146 3.4922 3.7007 13.5996 23.7225 3.5039 30.133 67.0615 86.2239 103.5003 75.6603 9.4124 468.6063 264.793 264.793 141.7586 26.541 45.3321 61.0619 29.9682 112.9783 283.8155 25.7418 161.1256 277.2329 18.628 143.2611 79.9022 214.8261 286.7719;
	2.138 28.8888 86.6821 104.8033 14.0659 13.2152 9.3624 16.7584 16.2023 21.2654 39.3088 58.641 88.2837 13.5076 19.0519 7.1777 8.9056 9.4373 23.2194 29.1589 3.1208 30.8355 55.6297 84.4953 98.1182 74.5553 8.1428 372.7903 205.9231 205.9231 128.975 26.8941 77.3981 75.055 42.3483 87.8605 175.0809 29.4735 144.1764 262.8166 12.0976 146.6006 83.5205 202.0426 176.9047;
	2.8773 38.879 88.4244 107.9562 14.2264 20.2535 9.4715 18.0405 8.6817 20.5976 38.0744 56.7994 85.5113 26.1736 18.3818 6.9252 8.5924 9.1054 35.024 29.1917 3.1572 47.2582 62.6964 86.0051 99.1979 75.5695 7.889 300.0302 193.3501 193.3501 123.8892 21.9496 116.7467 75.1394 82.0578 82.496 151.6534 29.4568 172.5686 265.7087 11.0574 224.6789 88.4274 213.0114 153.2331;
	2.1441 28.9711 85.395 104.0436 13.6001 20.7325 10.4344 16.0447 11.3291 26.3136 48.6403 72.5618 109.2413 41.4256 20.7691 7.8246 9.7083 10.2879 39.6816 37.8085 3.4781 48.3759 69.4591 82.6867 96.0048 72.4149 9.1309 260.892 216.0123 216.0123 95.2445 14.2228 132.2719 97.3191 129.8749 92.1653 176.2679 21.1776 144.2149 257.1557 11.9503 229.9927 84.7817 222.2287 178.104;
	1.3767 18.6028 64.3382 96.9063 14.2123 16.8609 9.3543 17.2119 16.7457 27.9359 51.6391 77.0353 115.9763 39.7851 27.6166 10.4044 12.9091 13.6798 49.5796 57.9483 3.1181 39.3421 71.4428 82.956 94.3853 71.7227 11.5434 145.8284 161.1139 161.1139 82.5581 8.2957 165.2653 149.159 124.7317 68.7419 109.7289 19.2283 140.6438 252.8176 9.7325 187.0434 81.4102 181.1525 110.8719;
	2.1065 28.4629 79.7965 88.1464 14.0163 20.9248 9.2982 17.0829 19.1961 28.1908 52.1103 77.7383 117.0346 40.5637 19.965 7.5217 9.3325 9.8896 60.0015 55.806 3.0994 48.8245 71.5484 83.5805 95.5354 72.5015 11.3764 128.0346 134.6624 134.6624 79.1342 8.5183 200.005 143.6449 127.1728 57.456 102.0928 22.7237 122.956 255.8985 8.7409 232.1254 70.8174 203.2735 103.1562;
	1.4736 19.9119 78.0844 95.2211 12.3935 13.5124 8.1005 17.4857 22.2714 29.4255 54.3926 81.143 122.1603 43.7443 7.2455 2.7297 3.3868 3.589 64.51 45.417 2.7002 31.5289 72.1663 81.2897 95.3179 71.415 11.7455 218.1769 207.5707 207.5707 94.5123 9.9971 215.0334 116.9034 137.1442 88.5635 130.2769 21.6028 0.0 255.3157 0.0461 149.8972 73.262 181.286 131.6339;
	1.4191 19.1751 67.2947 88.862 12.0723 24.9351 12.3226 16.0494 24.3761 28.9701 53.5508 79.8872 120.2698 51.229 0.0 0.0 0.0 0.0 52.8479 34.8626 4.1075 58.1819 70.1714 77.5097 78.7997 70.5142 10.906 350.0524 231.0614 231.0614 133.9915 12.8905 176.1596 89.7363 160.6098 98.5862 222.2535 21.7285 138.7287 211.0705 0.0015 276.6133 90.3534 133.5575 224.5687;
	1.5727 21.2501 75.6685 81.59 11.8938 30.5546 18.1271 16.4865 25.7856 29.028 53.6577 80.0468 120.51 57.6686 0.0 0.0 0.0 0.0 67.4146 51.5013 6.0424 71.294 70.2423 76.106 83.4036 70.4376 11.2846 457.5767 320.3857 320.3857 252.6524 14.8547 224.7155 132.5644 180.7989 136.6979 352.2764 34.7281 171.0991 223.4026 1.2354 338.9519 109.5337 132.2096 355.9459;
	2.8149 38.0353 83.0436 88.218 13.611 30.9022 19.6507 15.9837 26.901 28.6887 53.0307 79.1114 119.1017 60.4109 28.1142 10.5919 13.1418 13.9263 75.8618 61.8555 6.5502 72.1052 70.2917 78.0092 88.1367 68.0352 10.2838 596.1623 376.3341 376.3341 284.0802 22.9803 252.8728 159.2162 189.3963 160.5692 527.1325 46.251 209.5637 236.0805 4.8951 342.8088 143.9705 195.0463 532.6235;
	3.27 44.1852 83.1627 101.793 14.0045 29.954 20.2148 16.5992 26.1186 29.4496 54.4371 81.2094 122.2603 56.2567 41.9758 15.8141 19.6212 20.7926 76.7769 59.373 6.7383 69.8927 69.3149 78.1587 87.4805 70.7999 10.6008 752.6708 501.1365 501.1365 361.1255 28.3518 255.9229 152.8263 176.3724 213.8183 675.3141 69.0049 262.2137 234.3229 1.0484 332.2901 140.492 239.4028 682.3486;
	3.6005 48.6507 83.5711 101.1238 14.0216 32.0816 24.5487 16.391 26.5557 26.3785 48.7603 72.7407 109.5108 61.8686 82.7001 31.1568 38.6575 40.9654 64.9815 60.6174 8.1829 74.857 50.8159 80.8278 88.2497 70.1634 11.678 944.5746 545.5671 545.5671 441.119 32.7067 216.605 156.0292 193.9664 232.7753 850.3711 81.5561 402.229 236.3831 6.033 355.8916 157.4418 245.8211 859.2291;
	3.6712 49.6058 86.5468 97.2732 14.3621 33.4865 28.405 14.7615 26.7069 21.7905 40.2794 60.089 90.4637 61.3448 117.3032 44.1933 54.8324 58.106 82.227 67.2881 9.4683 78.1351 48.3537 77.241 86.09 66.3193 10.4744 1088.6353 661.826 661.826 617.1602 44.0371 274.0899 173.1997 192.3241 282.3791 989.773 143.4083 389.6648 230.5983 0.9433 371.4765 172.6372 254.0191 1000.0832;
	3.6562 49.4026 87.555 106.5234 14.3914 32.4571 30.0662 16.3858 26.6205 21.6794 40.0741 59.7827 90.0025 63.3937 158.8252 59.8365 74.2416 78.6739 86.6908 73.4496 10.0221 75.7332 33.528 81.9331 93.3612 70.2129 10.6693 1045.9215 689.8214 689.8214 632.0578 75.5159 288.9692 189.0595 198.7479 294.3238 1011.7487 186.8608 398.196 250.0746 0.3404 360.0573 201.0699 264.9566 1022.2878;
	3.7698 50.938 91.9388 110.8164 14.418 33.9488 30.0477 18.0307 27.9746 20.0401 37.0438 55.262 83.1967 64.527 176.8125 66.6131 82.6496 87.5839 89.9655 73.1692 10.0159 79.2139 38.4461 82.8791 99.3277 69.9432 12.8903 1125.0544 729.1006 729.1006 648.2164 96.9615 299.8851 188.3377 202.3009 311.0829 1056.073 223.9301 441.8045 266.0564 103.0396 376.6055 198.9075 262.335 1067.0737;
	3.8724 52.3249 90.8386 112.0981 14.3494 34.2355 31.4767 11.5579 28.3512 22.6397 41.8491 62.4307 93.989 64.9178 188.7991 71.129 88.2526 93.5214 87.6043 72.0186 10.4922 79.8829 53.8225 81.4219 100.2737 54.0944 12.5835 1214.1224 759.6736 759.6736 665.2934 108.695 292.0144 185.3761 203.5259 324.1274 1107.9777 227.6263 451.0613 268.5904 113.6102 379.7861 212.9026 269.9366 1119.5192;
	3.8742 52.3492 94.8465 111.7193 15.26 34.1736 31.7481 8.6356 28.3918 23.5499 43.5317 64.9407 97.7679 67.5739 202.3009 76.2157 94.5639 100.2095 89.0817 73.2973 10.5827 79.7383 53.3871 36.5975 43.5118 62.423 10.0456 1218.6466 777.7365 777.7365 712.3251 111.8557 296.9389 188.6675 211.8533 331.8343 1116.7785 247.5436 457.1086 116.5493 116.8343 379.0987 211.3359 244.1331 1128.4117;
	3.8721 52.3201 93.3003 118.8625 15.1738 33.4252 31.6485 18.5164 19.8196 23.7955 43.9856 65.6178 98.7872 63.8315 201.8164 76.0332 94.3374 99.9695 89.0406 72.1412 10.5495 77.9921 43.5585 78.3941 104.0487 72.0576 13.6185 1178.6778 770.834 770.834 706.6199 108.01 296.802 185.6917 200.1202 328.8892 1061.6936 237.9986 446.7006 278.7018 116.1853 370.7966 205.8959 264.3631 1072.7529;
	3.8918 52.5863 92.4002 122.2722 15.4084 34.5935 31.8206 17.39 11.409 24.4046 45.1115 67.2976 101.3161 65.5889 199.453 75.1428 93.2327 98.7988 88.2993 72.6012 10.6069 80.7181 46.7519 87.873 104.5164 73.7809 13.2078 1314.1482 803.4853 803.4853 747.9496 116.787 294.331 186.8756 205.63 342.8204 1211.6362 266.8341 467.9321 279.9547 118.9764 383.7571 212.1477 238.2914 1224.2574;
	3.857 52.1167 92.4111 117.6638 15.1882 34.373 30.7026 17.43 18.8549 22.079 40.8126 60.8844 91.6611 64.0828 199.6312 75.2099 93.316 98.8871 87.0882 69.2966 10.2342 80.2038 48.9299 85.401 94.4406 74.0022 13.3694 1187.6802 763.8544 763.8544 671.3721 114.7788 290.2939 178.3696 200.9083 325.9112 1090.2335 248.739 450.2272 252.9659 117.348 381.3116 207.3478 249.1208 1101.5901;
	3.7898 51.2082 92.0907 117.7096 14.8045 33.6241 32.5951 18.3211 10.451 19.38 35.8237 53.4419 80.4565 64.7357 194.9173 73.434 91.1125 96.5521 85.1233 67.9593 10.865 78.4562 44.81 86.3577 104.7312 73.1607 13.6453 1192.5888 774.9557 774.9557 680.2361 113.0821 283.7443 174.9275 202.955 330.6477 1085.1078 254.432 461.7104 280.5301 122.2544 373.0034 206.6022 265.3743 1096.411;
];
