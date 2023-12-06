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
	3.6277 49.0184 85.1308 97.2561 15.0802 30.9308 28.2567 11.6209 26.9431 27.6967 51.1969 76.3757 114.9833 66.84 185.9356 70.0502 86.9141 92.103 86.5212 67.5925 9.4189 72.1719 70.4137 70.346 80.8188 57.5 8.9621 1196.3259 746.1614 746.1614 716.2848 112.0692 288.4039 173.9832 209.5523 318.3622 1099.4851 303.8607 461.8256 216.4791 114.1705 343.1258 188.3332 224.5321 1110.938;
	3.6175 48.8797 80.6352 99.6009 14.9468 30.23 27.1652 11.1321 26.4124 25.3989 46.9495 70.0395 105.444 65.2242 190.2344 71.6697 88.9235 94.2324 87.5249 66.2372 9.0551 70.5367 70.2363 69.7117 80.3543 59.0639 7.9112 1214.1186 774.5854 774.5854 711.0078 112.4298 291.7498 170.4946 204.4866 330.4898 1182.5889 287.3684 452.293 215.2346 113.3781 335.3514 191.9853 211.0349 1194.9075;
	3.702 50.0217 81.2335 91.6587 15.1766 32.0764 25.8741 9.8172 27.1889 26.9219 49.7647 74.2391 111.7666 67.6125 191.7842 72.2536 89.648 95.0001 86.2404 67.668 8.6247 74.845 69.3583 76.3167 68.0128 56.629 8.4063 1232.4309 814.6678 814.6678 744.6907 111.5201 287.4682 174.1775 211.9744 347.5916 1215.101 281.6484 465.7206 182.177 113.798 355.8343 187.5202 224.7283 1227.7583;
	3.6856 49.8007 81.8142 95.8805 14.9822 31.4838 23.1062 10.834 27.4408 27.5105 50.8527 75.8623 114.2102 62.9553 188.9822 71.1979 88.3382 93.6121 84.3743 67.7006 7.7021 73.4622 70.3644 77.2496 73.6074 53.6788 7.6137 1168.0496 798.2074 798.2074 712.9742 109.8944 281.2476 174.2616 197.3734 340.5685 1191.3355 274.1728 441.0137 197.1628 106.489 349.2602 191.9289 211.5105 1203.7452;
	3.7296 50.3952 80.8694 80.5064 15.2035 31.7777 19.5617 8.8474 24.3317 27.0651 50.0293 74.6339 112.361 65.038 193.5394 72.9148 90.4684 95.8695 88.9885 69.4378 6.5206 74.1479 70.7511 80.8388 63.9897 50.6576 7.3093 1211.1238 798.2961 798.2961 700.3798 103.5556 296.6282 178.7332 203.9028 340.6063 1163.5066 250.8696 406.1572 171.4011 106.056 352.5203 203.1927 207.0878 1175.6264;
	3.706 50.0761 78.338 77.8744 15.0928 30.854 18.5449 6.8602 25.7854 28.8197 53.2729 79.4726 119.6456 65.2221 189.077 71.2336 88.3825 93.659 83.5523 67.6355 6.1816 71.9927 70.1079 81.2267 54.1081 33.0508 5.5462 1235.0969 764.4627 764.4627 654.5138 88.7322 278.5077 174.094 204.4801 326.1707 1175.1211 220.0403 373.0601 144.9325 99.3871 342.2741 194.8301 166.9461 1187.362;
	3.4113 46.0947 66.1245 60.7379 14.911 28.1968 15.4512 5.0355 17.6581 27.0759 50.0494 74.6639 112.4061 66.4199 188.2198 70.9107 87.9818 93.2345 84.6903 67.475 5.1504 65.7925 68.4998 70.8505 42.028 19.0988 3.9858 1210.6498 698.5755 698.5755 522.553 60.5443 282.3009 173.6807 208.2353 298.0589 1081.6019 195.1012 277.8558 112.5749 78.9865 312.7965 160.943 115.8759 1092.8686;
	3.5195 47.5567 61.2885 62.4837 14.4309 27.6842 15.9819 4.4184 15.7127 22.983 42.4837 63.3773 95.4142 64.8727 186.048 70.0925 86.9666 92.1586 85.629 66.0579 5.3273 64.5966 56.3545 70.8692 46.8975 11.3076 1.4142 1247.9411 724.3924 724.3924 608.8225 66.9019 285.4299 170.0332 203.3846 309.0741 1110.7423 208.3059 248.2981 125.6183 81.592 307.1105 153.6216 113.0655 1122.3125;
	2.8515 38.53 53.8446 59.2685 14.1773 23.2467 15.1629 2.9804 21.4296 21.653 40.0252 59.7097 89.8926 65.0178 175.7275 66.2043 82.1424 87.0464 84.4723 63.0749 5.0543 54.2424 51.1072 76.7473 49.7666 5.041 1.7296 1225.1339 777.6366 777.6366 718.2997 88.6104 281.5743 162.355 203.8397 331.7916 1101.9983 230.9178 239.4639 133.3035 52.6256 257.8838 141.7907 125.6523 1113.4775;
	2.4852 33.5801 44.6946 53.7035 14.4583 17.6971 17.0851 1.9099 20.9292 17.4617 32.2777 48.152 72.4926 63.1958 140.323 52.8659 65.5929 69.5089 72.829 54.3736 5.695 41.2933 41.6686 66.8209 32.8009 4.4171 0.7584 1079.2562 737.6788 737.6788 683.8132 100.398 242.7635 139.9577 198.1273 314.7429 1035.514 212.1331 320.8988 87.8596 42.1286 196.3204 130.0803 97.5268 1046.3006;
	1.753 23.6874 26.9635 35.0812 12.8893 12.1887 16.7869 0.4613 19.6187 14.2196 26.2847 39.2115 59.0328 63.5635 145.5083 54.8194 68.0167 72.0774 68.0338 62.6295 5.5956 28.4404 32.4587 45.8441 12.0941 0.0 0.579 1095.4296 766.3873 766.3873 719.4179 104.6158 226.7794 161.2086 199.2802 326.9919 1041.4875 223.5614 380.4262 32.3948 17.8176 135.2137 87.3068 0.0 1052.3363;
	1.2978 17.5366 25.5145 24.0763 9.7051 9.2321 18.7376 0.9734 17.8246 15.2066 28.1092 41.9334 63.1304 64.0971 157.7728 59.44 73.7496 78.1526 76.8988 57.6956 6.2459 21.5416 36.5544 34.2301 14.9976 2.838 0.6343 989.8676 719.6117 719.6117 689.7161 104.0789 256.3295 148.5087 200.9531 307.0343 994.3683 202.5256 399.4484 40.1721 14.5279 102.4148 67.0721 31.0033 1004.7263;
	0.6672 9.0154 20.9715 22.1809 8.4545 5.8105 18.3474 0.7745 16.4396 11.3469 20.9745 31.2899 47.1068 65.3749 166.6558 62.7866 77.9019 82.5528 83.9229 58.2479 6.1158 13.5579 30.4587 32.8824 12.5006 1.2119 0.4305 994.4148 747.0519 747.0519 687.9258 99.4738 279.743 149.9303 204.959 318.7421 991.4094 213.7704 436.4759 33.4837 13.7862 64.4581 50.222 11.3869 1001.7366;
	0.6678 9.0229 22.0136 28.9276 7.2681 7.7113 13.4492 2.0136 13.2408 17.4206 32.2017 48.0387 72.322 64.8481 181.2545 68.2866 84.726 89.7842 86.0845 67.9721 4.4831 17.993 52.1523 38.9613 21.7527 3.9367 2.3901 1008.3504 739.4393 739.4393 721.3656 98.8759 286.9482 174.9603 203.3075 315.4941 889.3819 222.2603 416.6225 58.2661 27.3386 85.5439 38.5565 41.5212 898.6463;
	0.7906 10.6829 22.2133 3.3986 6.0711 8.1984 11.4198 1.8757 13.5137 16.2405 30.0204 44.7845 67.4228 64.481 168.5305 63.4929 78.7782 83.4814 81.8933 67.1023 3.8066 19.1297 56.0434 46.4252 19.7136 2.5273 2.6615 885.1739 655.84 655.84 644.786 81.8708 272.9776 172.7215 202.1567 279.8251 791.7255 201.5754 352.5787 52.8042 30.9278 90.9481 34.6538 50.4975 799.9726;
	0.7799 10.5385 17.8648 27.6399 5.8552 0.0027 6.117 1.0605 10.5088 15.4298 28.5218 42.549 64.0572 64.7102 168.5854 63.5136 78.8039 83.5086 78.6488 68.2906 2.039 0.0063 55.2809 41.3953 18.0566 0.0 1.6347 855.1892 557.3777 557.3777 561.2386 77.4764 262.1628 175.7801 202.8751 237.8145 613.0209 181.6945 248.0979 48.3658 30.0252 0.0297 0.0263 17.6912 619.4065;
	0.4736 6.3988 0.0019 0.0 0.9373 0.0404 4.0696 0.0192 11.401 17.0279 31.4759 46.9558 70.6918 65.9331 163.5412 61.6132 76.446 81.01 81.382 64.3648 1.3565 0.0942 48.9338 36.0911 6.9297 0.0 0.7837 855.5953 555.354 555.354 610.9565 82.1606 271.2733 165.6751 206.7092 236.951 772.5854 183.5052 241.3731 18.5616 33.6632 0.4479 0.0002 0.0 780.6331;
	1.0146 13.7089 0.0007 0.0 0.7356 0.0 2.6675 0.0181 6.6439 19.6753 36.3694 54.256 81.6821 67.2729 131.3419 49.4823 61.3947 65.0601 82.2557 54.9564 0.8892 0.0 66.6905 33.5368 6.4177 1.3752 1.0393 760.6177 571.8222 571.8222 680.5465 85.8582 274.1858 141.458 210.9095 243.9775 796.2249 202.1971 355.2089 17.1902 72.3047 0.0 0.053 0.002 804.5189;
	0.4845 6.5469 21.7421 38.9922 0.0005 0.1875 0.4229 1.7658 4.3114 23.7523 43.9058 65.4988 98.6081 66.5718 108.1991 40.7634 50.5768 53.5963 15.3693 57.2199 0.141 0.4374 66.2211 48.6569 19.7141 7.2368 1.8455 766.9578 548.8624 548.8624 677.0467 81.1926 51.231 147.2843 208.7115 234.1813 742.9984 199.1056 365.0315 52.8055 82.3534 2.0795 0.1604 0.5451 750.738;
	0.3052 4.1244 27.9777 54.3083 2.0615 2.6173 0.0 3.0527 1.6384 25.0359 46.2785 69.0384 103.9369 64.5286 96.102 36.2059 44.9221 47.604 12.8573 61.0048 0.0 6.1071 65.4621 62.6303 30.1314 19.9644 2.451 543.0537 368.2362 368.2362 616.9081 66.3143 42.8576 157.0265 202.3058 157.1141 560.8424 194.4946 10.1641 80.7091 88.8704 29.0347 0.0613 1.8171 566.6845;
	0.6908 9.3337 35.2042 73.5604 5.6992 0.7011 0.0 4.3827 1.5409 24.6065 45.4847 67.8543 102.1542 59.0313 113.4491 42.7413 53.0309 56.1969 81.3396 67.5661 0.0 1.6359 63.7393 72.3732 27.8302 13.5354 1.7123 413.6883 338.602 338.602 516.0557 53.2752 271.1319 173.9153 185.0711 144.4702 576.9438 185.8967 2.6768 74.5453 90.6463 7.7776 0.0 45.0741 582.9536;
	0.5588 7.5503 42.3573 69.9034 6.6861 2.881 0.0 2.9669 2.9817 23.5986 43.6217 65.075 97.97 42.5518 145.536 54.8299 68.0296 72.0911 79.155 68.3561 0.0 6.7223 69.3858 65.9324 33.8353 12.5266 0.7968 426.521 349.945 349.945 478.4279 53.0712 263.8498 175.9487 133.4058 149.3098 673.5665 159.6751 0.4034 90.6302 73.076 31.96 18.1146 41.1936 680.5828;
	0.621 8.3915 37.4048 61.3967 7.8433 1.0655 0.0 3.4474 2.9129 18.0815 33.4235 49.8612 75.0658 25.5372 146.483 55.1866 68.4723 72.5602 82.9999 68.4723 0.0 2.4861 44.5832 59.6661 27.2554 27.4696 1.2935 401.5139 375.8925 375.8925 483.2012 57.8758 276.6664 176.248 80.0626 160.3808 519.5952 140.5455 0.002 73.0055 57.8259 11.8197 12.628 32.2442 525.0077;
	0.0295 0.3982 47.8802 60.788 1.7396 0.7946 0.0 5.6079 1.8177 22.0236 40.7104 60.7318 91.4315 7.8746 160.4741 60.4577 75.0123 79.4907 86.9976 67.3037 0.0 1.8541 68.6101 67.199 39.5637 32.1982 2.4728 304.0843 290.5699 290.5699 378.6202 55.6368 289.9918 173.2399 24.688 123.9765 392.3587 119.1733 7.7343 105.9743 61.0861 8.8149 0.9732 59.9819 396.4458;
];
