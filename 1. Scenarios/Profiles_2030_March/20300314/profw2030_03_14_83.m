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
	3.6581 49.4286 92.9071 120.4245 15.2992 16.4698 15.732 18.0723 27.7611 23.3799 43.2174 64.4719 97.0621 6.4944 22.4303 8.4505 10.4849 11.1108 34.4831 30.7558 5.244 38.4295 57.6847 89.8669 104.7669 75.3146 7.8229 751.7303 404.8697 404.8697 207.7794 36.7568 114.9436 79.1656 20.3607 172.7444 557.6323 54.0387 322.2229 280.6257 15.2691 182.705 119.5406 249.8313 563.4409;
	3.4379 46.4532 89.9808 117.1137 14.9659 16.7783 13.5693 16.5417 26.5868 22.6392 41.8482 62.4292 93.9868 4.9697 6.6881 2.5197 3.1263 3.3129 15.4551 16.5582 4.5231 39.1495 57.9969 89.4153 101.8693 73.6356 6.5431 726.0006 371.5946 371.5946 168.1488 30.6343 51.5168 42.6209 15.5806 158.547 512.6103 47.522 298.9155 272.8642 11.662 186.1278 109.584 230.0898 517.9499;
	3.163 42.7386 91.2145 116.4761 15.2074 14.5341 12.204 16.9347 27.0529 22.6408 41.8511 62.4336 93.9935 5.9138 12.3187 4.641 5.7583 6.102 22.5203 24.6458 4.068 33.913 60.1735 88.4939 98.6716 71.7456 6.9366 641.9759 340.9594 340.9594 145.6729 29.8155 75.0676 63.4383 18.5405 145.476 422.7195 34.2327 241.2679 264.299 4.9605 161.232 91.0292 216.4583 427.1228;
	2.8377 38.3433 90.7586 112.1769 15.0744 13.9466 10.8493 16.9721 26.3326 23.3637 43.1875 64.4273 96.9949 8.4898 11.7569 4.4293 5.4957 5.8238 11.6627 24.401 3.6164 32.542 62.56 88.7594 101.9677 73.957 7.8793 528.2463 269.14 269.14 160.6198 28.4584 38.8757 62.8082 26.6167 114.8331 340.02 32.5715 179.9986 273.1279 0.4115 154.7139 77.1156 224.4539 343.5619;
	2.281 30.8208 90.3481 114.0527 14.6817 15.5328 10.0759 17.3696 18.434 22.1324 40.9115 61.0318 91.8831 13.5723 18.6198 7.0149 8.7037 9.2233 20.8139 25.5976 3.3586 36.2432 54.5227 85.8965 101.5432 73.8941 8.2546 416.3411 215.1439 215.1439 144.9707 25.8194 69.3797 65.8883 42.5511 91.7947 224.6385 31.2868 180.4754 271.9908 11.7951 172.3107 83.3626 233.2598 226.9784;
	3.0485 41.1919 92.1765 117.9734 14.5069 22.3573 10.9128 18.1625 11.7012 20.5006 37.895 56.5319 85.1085 26.655 17.2794 6.5099 8.0771 8.5593 35.1712 30.4411 3.6376 52.1669 58.1694 87.3394 104.4791 74.5404 8.0509 350.186 186.8016 186.8016 121.8742 21.8313 117.2372 78.3554 83.5671 79.702 182.557 28.2953 191.893 279.8546 13.4063 248.0164 85.5345 240.2505 184.4587;
	2.5241 34.1068 90.6599 116.1093 14.0441 22.2241 10.8661 17.4756 13.0517 26.719 49.3896 73.6796 110.9242 35.7741 14.864 5.5999 6.948 7.3628 37.054 34.4711 3.622 51.8562 60.7408 86.9757 105.9558 74.8431 10.7171 274.0489 208.2511 208.2511 78.891 13.8064 123.5135 88.7287 112.1568 88.8538 189.4535 14.0756 147.8136 283.8102 13.2026 246.5394 84.8662 248.7088 191.427;
	1.7635 23.8288 71.1879 116.0851 14.3328 18.2771 10.9295 17.3153 19.9887 28.565 52.802 78.7702 118.588 38.6294 14.4181 5.4319 6.7396 7.142 49.4988 52.8663 3.6432 42.6466 70.8541 86.9979 104.5346 71.0931 11.0677 153.2434 161.5887 161.5887 76.9233 9.2404 164.996 136.0781 121.1084 68.9445 116.8331 14.5538 170.3223 280.0033 10.9387 202.754 85.7819 221.1805 118.0501;
	2.6557 35.8846 83.8277 109.1967 14.1697 23.2471 9.8789 16.9729 20.2098 28.1029 51.9478 77.4958 116.6696 40.8667 0.0 0.0 0.0 0.0 60.3191 49.3528 3.293 54.2432 68.8262 87.0864 102.3755 72.0446 10.4931 155.4482 143.9823 143.9823 81.0536 6.9968 201.0637 127.0341 128.1228 61.4324 129.6651 15.7418 123.7302 274.2201 18.1258 257.8879 75.5846 231.8312 131.0157;
	1.8351 24.7967 77.8494 107.3001 12.2795 12.5152 8.0606 17.4017 24.8598 29.2988 54.1584 80.7937 121.6344 38.8289 0.0 0.0 0.0 0.0 61.8845 43.3165 2.6869 29.2022 70.812 83.7458 100.1473 71.8369 11.5737 259.3214 212.2513 212.2513 92.7164 8.497 206.2817 111.4967 121.7337 90.5606 218.1654 17.6907 0.0 268.2517 2.7877 138.8357 63.1582 215.9075 220.438;
	1.3987 18.8995 65.7568 96.8583 11.3659 20.1591 11.7691 16.1058 24.216 27.5313 50.8912 75.9196 114.2966 31.6709 0.0 0.0 0.0 0.0 53.9635 31.9546 3.923 47.038 67.6546 82.1382 92.7326 70.3366 10.9333 333.6754 254.7486 254.7486 144.9196 11.0885 179.8784 82.2513 99.2926 108.6927 295.7461 21.3159 126.6557 248.391 0.986 223.6321 76.3049 182.4263 298.8268;
	1.5697 21.2096 79.0623 87.7089 11.4444 26.2451 17.1915 17.0647 23.7496 27.0048 49.9179 74.4677 112.1107 40.0232 0.0 0.0 0.0 0.0 68.0011 48.6463 5.7305 61.2386 69.3285 77.9756 94.0748 69.9114 11.0287 424.112 339.9121 339.9121 263.3097 13.9866 226.6703 125.2157 125.4782 145.0292 396.0866 35.8025 150.1159 251.986 0.0 291.1458 95.4454 179.3505 400.2125;
	2.7919 37.7244 84.4554 86.455 13.8867 27.2995 19.5271 16.7603 25.9893 26.3107 48.635 72.5538 109.2294 51.8277 27.1962 10.246 12.7127 13.4716 77.8417 62.3306 6.509 63.6988 65.318 78.6444 98.6272 70.8637 10.6238 592.6515 438.3771 438.3771 304.7621 19.7703 259.4723 160.4392 162.487 187.0409 571.3617 47.7595 205.9914 264.1801 0.0127 302.8421 127.4517 215.0144 577.3134;
	3.2913 44.4733 83.8536 104.8202 14.1906 27.216 20.4996 16.7699 26.0838 28.4033 52.5031 78.3243 117.9169 50.0301 58.6742 22.1051 27.4268 29.0642 84.6074 63.0761 6.8332 63.504 58.9686 82.8939 98.5131 70.2923 10.2197 722.4827 546.7545 546.7545 384.7476 27.8624 282.0247 162.3582 156.8511 233.2819 667.7156 70.6319 285.6066 263.8743 0.2022 301.9162 131.1141 245.0664 674.671;
	3.2564 44.001 86.7309 108.4819 14.4813 30.0176 24.3732 16.7542 27.3743 25.0711 46.3436 69.1356 104.0832 46.1742 95.7203 36.0621 44.7437 47.4149 80.9956 62.4042 8.1244 70.0412 41.7042 84.9667 98.2558 70.461 11.6366 877.9414 618.5008 618.5008 467.079 32.9119 269.9853 160.6286 144.7623 263.8937 821.1814 92.2068 409.6593 263.1853 1.6237 332.9958 134.5629 244.8611 829.7354;
	3.2432 43.8233 88.9134 107.5776 14.7792 30.7753 25.1813 17.1775 27.1181 20.6973 38.2587 57.0745 85.9253 56.3005 139.0486 52.3858 64.9971 68.8776 89.1027 67.7167 8.3938 71.8091 45.1029 84.0099 98.68 70.9665 11.913 918.2503 615.3509 615.3509 609.008 46.0367 297.0091 174.3029 176.5096 262.5497 867.6429 142.8528 366.4527 264.3213 0.0 341.4011 141.6801 253.3805 876.6809;
	3.3488 45.2501 88.1376 112.4536 14.8655 31.9634 28.8461 17.8071 28.308 20.1455 37.2386 55.5527 83.6343 63.5231 171.5766 64.6405 80.2021 84.9903 87.9951 72.127 9.6154 74.5813 31.909 84.7096 100.8133 74.2319 12.4258 931.0924 663.3035 663.3035 633.2165 77.6338 293.317 185.655 199.1534 283.0095 935.6417 193.2706 425.6719 270.0356 0.0 354.5809 186.1492 274.1478 945.388;
	3.1511 42.5782 91.7059 114.1847 14.475 31.3776 27.8203 18.395 28.2672 18.1605 33.5694 50.079 75.3936 62.7678 182.2118 68.6472 85.1734 90.2584 90.1207 71.5311 9.2734 73.2144 36.1683 85.8879 102.7929 74.7839 13.379 1104.2982 665.2734 665.2734 615.7637 92.3552 300.4024 184.1212 196.7854 283.85 1034.8402 227.3169 447.7279 275.3382 100.23 348.0823 168.471 266.1286 1045.6198;
	3.276 44.2661 89.1933 111.2746 14.6458 30.7 30.2334 13.9508 28.2848 20.2367 37.4072 55.8041 84.0128 62.2471 185.1673 69.7607 86.555 91.7224 89.1807 69.8286 10.0778 71.6333 51.8649 83.2952 103.4412 65.2785 12.8659 1191.9763 745.1024 745.1024 658.5898 101.937 297.2689 179.7389 195.1531 317.9104 1067.4082 242.8396 452.1694 277.0746 109.405 340.5651 195.5799 273.2121 1078.5271;
	3.5959 48.5887 91.8261 108.9379 15.0617 32.8166 31.0775 9.5861 28.4548 20.9707 38.7639 57.8282 87.06 63.0604 189.8567 71.5274 88.747 94.0453 88.9047 66.9556 10.3592 76.572 50.8377 40.4382 47.4996 66.0732 11.6086 1202.1613 751.2436 751.2436 679.0318 106.2271 296.349 172.344 197.7027 320.5306 1089.0425 247.76 463.0363 127.231 116.142 364.0451 208.525 249.7042 1100.3867;
	3.8752 52.3626 94.0406 117.1411 15.1881 34.8778 31.2577 19.0726 22.0324 23.8756 44.1337 65.8387 99.1199 63.7197 191.658 72.206 89.589 94.9376 90.8172 69.2815 10.4192 81.3815 45.9324 80.1496 105.3121 74.2076 14.0673 1250.5631 775.6003 775.6003 738.2879 108.1166 302.724 178.3308 199.77 330.9228 1134.5663 241.7369 464.2483 282.086 118.856 386.9111 212.9574 284.046 1146.3847;
	3.7522 50.7 92.1541 119.2478 14.8261 34.3468 31.3177 18.6853 13.7495 23.7882 43.9721 65.5978 98.7571 61.1358 190.202 71.6575 88.9084 94.2163 92.4611 70.1427 10.4392 80.1426 50.9939 86.0722 104.342 74.3757 14.0683 1290.9736 775.3627 775.3627 747.654 114.8274 308.2037 180.5475 191.669 330.8214 1164.1026 249.6247 464.8353 279.4876 120.5667 381.0206 211.5737 262.5451 1176.2287;
	3.7939 51.2641 93.4932 118.2455 15.0663 34.5658 31.7097 18.6836 22.1556 22.0657 40.7881 60.8478 91.6061 62.9957 196.7186 74.1126 91.9545 97.4444 91.792 68.6362 10.5699 80.6535 49.397 86.9563 96.1597 75.1046 14.1149 1284.0878 782.7024 782.7024 718.3357 112.6696 305.9735 176.6699 197.4999 333.953 1200.2243 245.486 473.1831 257.5708 119.2506 383.4497 207.9748 270.169 1212.7267;
	3.8073 51.4444 92.0591 119.3004 15.0742 33.6708 33.3874 18.2336 12.5952 20.4519 37.8051 56.3978 84.9065 60.5209 192.3937 72.4832 89.9329 95.302 88.9696 66.3164 11.1291 78.5651 47.534 85.4625 104.5345 72.7486 13.8016 1288.2429 784.0833 784.0833 709.4256 110.8555 296.5654 170.6987 189.7412 334.5422 1191.8782 255.1143 455.4412 280.0032 118.9407 373.521 211.4704 277.4481 1204.2936;
];