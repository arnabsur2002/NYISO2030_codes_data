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
	3.8213 51.6346 91.6716 111.5 14.3221 33.2844 30.3422 18.4282 28.0296 29.6777 54.8588 81.8386 123.2075 67.5952 193.131 72.761 90.2775 95.6672 32.101 70.2618 10.1141 77.6636 72.9061 87.6434 104.126 73.1964 13.8368 1281.4272 710.6551 710.6551 601.3441 107.1421 107.0034 180.8542 211.9201 303.2129 1242.3389 240.6928 470.8979 278.9091 115.6485 369.235 142.8377 272.4291 1255.2799;
	3.6298 49.047 92.6574 117.2491 14.2069 31.8465 28.9488 18.431 27.1177 28.9432 53.501 79.8129 120.1579 65.0407 191.7818 72.2527 89.6469 94.9989 31.0699 71.7765 9.6496 74.3086 70.2465 88.323 103.8549 72.1069 13.5142 1264.6924 696.0886 696.0886 585.3619 103.9045 103.5664 184.7528 203.9115 296.9978 1215.7417 236.2695 451.3256 278.1828 118.9526 353.2844 134.5256 271.7971 1228.4057;
	3.5633 48.1479 91.296 63.8806 14.0873 32.4757 27.1586 17.5416 26.2298 29.3337 54.2228 80.8898 121.7791 65.311 197.1892 74.2899 92.1745 97.6774 32.3467 70.6556 9.0529 75.7766 70.2415 86.7951 101.4549 71.5277 13.3971 1230.44 688.619 688.619 570.4339 102.6893 107.8222 181.8678 204.7589 293.8108 1245.8896 220.1597 442.7172 271.7543 121.2913 360.2634 132.4382 264.6084 1258.8676;
	3.6204 48.9198 94.7329 89.4479 14.662 33.0932 26.5804 18.2452 26.4675 29.3686 54.2875 80.9862 121.9243 63.5305 197.2694 74.3201 92.212 97.7172 41.5459 70.407 8.8601 77.2174 66.8078 88.5762 104.0066 72.827 13.8103 1182.9626 671.252 671.252 529.3304 85.2174 138.4864 181.2278 199.1766 286.4009 1085.059 225.7799 450.647 278.5892 122.5842 367.1134 167.3931 268.3829 1096.3617;
	3.2936 44.504 94.3274 119.3201 14.8798 32.6875 22.1784 17.9162 26.297 30.2869 55.9849 83.5185 125.7366 65.8044 187.6877 70.7102 87.7331 92.9709 70.7955 69.8262 7.3928 76.2708 63.1948 87.3966 103.6576 72.2367 13.2367 1199.9636 657.0415 657.0415 534.0796 87.8697 235.9851 179.7329 206.3057 280.3377 1149.9774 223.8961 464.6578 277.6543 118.2634 362.6132 175.7402 269.7541 1161.9564;
	3.6308 49.0599 94.2438 119.1924 14.5903 33.4582 28.5134 18.1088 26.3012 31.0317 57.3615 85.5721 128.8284 67.8691 192.9196 72.6813 90.1787 95.5625 89.3962 71.6137 9.5045 78.069 73.9568 88.2972 104.9185 72.9813 13.7123 1297.1531 741.0189 741.0189 545.8257 92.4727 297.9875 184.3339 212.7787 316.1681 1158.512 222.832 468.2809 281.0316 116.9605 371.1625 182.6188 271.1726 1170.5798;
	3.6415 49.2043 93.0185 117.2505 14.6073 32.6937 28.9668 17.6302 27.2019 30.9493 57.2092 85.3449 128.4863 66.8202 191.2695 72.0597 89.4074 94.7451 86.2449 69.3335 9.6556 76.2854 74.3018 86.5406 98.9987 73.9169 13.1738 1286.2505 726.3201 726.3201 595.0886 94.3415 287.483 178.4646 209.4904 309.8966 1133.8333 242.3856 474.5989 265.175 117.1212 362.6826 189.1606 265.028 1145.644;
	3.6683 49.5664 93.4656 119.1483 15.1718 32.9403 29.3432 17.8589 27.5729 30.889 57.0979 85.1789 128.2363 64.8617 194.2625 73.1873 90.8064 96.2277 86.4883 70.5467 9.7811 76.8607 74.7075 87.8198 103.6538 73.8037 13.1827 1211.5073 721.5784 721.5784 577.7785 78.7284 288.2945 181.5875 203.3503 307.8734 1106.5441 241.2343 473.8858 277.6441 114.2491 365.4178 190.1746 257.7146 1118.0706;
	3.8008 51.3571 94.2523 121.141 14.9043 33.9412 30.1019 18.0253 28.0866 31.0236 57.3467 85.5501 128.7951 68.3798 200.0115 75.3532 93.4937 99.0755 90.1603 71.6455 10.034 79.196 72.857 88.6936 104.5706 74.4794 13.2685 1267.1035 780.0015 780.0015 635.0326 80.1433 300.5342 184.4158 214.38 332.8007 1205.092 283.6284 478.3058 280.0997 120.1537 376.5206 178.572 275.5855 1217.6451;
	3.7782 51.0521 93.8686 120.8216 14.8123 34.0821 29.3936 18.6458 27.0481 31.0428 57.3821 85.6028 128.8746 66.1439 194.62 73.3219 90.9735 96.4048 89.929 69.8489 9.7979 79.5248 72.3237 88.6624 104.2049 73.7034 13.6827 1249.7142 740.0688 740.0688 670.5312 87.2078 299.7633 179.7913 207.37 315.7627 1131.7037 290.5659 467.2316 279.1204 122.1582 378.0837 165.839 272.949 1143.4923;
	3.7135 50.177 91.7452 119.9378 14.3353 33.178 24.9825 18.3795 26.046 30.4032 56.1998 83.839 126.2192 65.4906 202.1855 76.1722 94.51 100.1524 90.2256 72.9771 8.3275 77.4154 73.2937 86.5617 99.0412 71.3641 13.3438 1240.6958 722.7431 722.7431 638.8884 85.8202 300.7519 187.8433 205.3219 308.3704 1037.6619 294.4867 445.0075 265.2889 120.4228 368.0549 169.1339 260.276 1048.4709;
	3.6017 48.6667 87.3359 112.387 13.9778 31.8643 23.7063 17.1131 25.7673 30.359 56.1181 83.7171 126.0356 65.6146 198.6837 74.8529 92.8731 98.4178 90.0662 71.1001 7.9021 74.35 73.2856 83.0599 95.6025 69.823 12.2678 1102.4873 668.3935 668.3935 595.3224 82.6293 300.2207 183.0118 205.7108 285.1812 956.4422 277.7722 441.3717 256.0782 117.5006 353.4813 170.3639 248.3543 966.4051;
	3.7782 51.0513 88.75 114.687 14.4206 32.1267 25.4745 17.4181 25.9689 30.9177 57.151 85.258 128.3555 66.4984 198.1279 74.6436 92.6133 98.1424 85.4035 70.8872 8.4915 74.9623 74.9998 87.1509 98.0298 72.1266 12.914 1139.3179 710.0616 710.0616 642.7764 93.5609 284.6784 182.4638 208.4813 302.9596 948.2775 285.7835 444.8154 262.5799 118.4071 356.392 153.5022 258.785 958.1554;
	3.8145 51.5422 90.2732 115.2643 14.5797 31.8675 25.4015 17.5888 26.0769 30.7082 56.7637 84.6803 127.4857 65.0258 199.3129 75.09 93.1672 98.7294 86.7274 71.8683 8.4672 74.3574 75.1339 86.031 97.8741 70.7124 13.1075 1044.1785 656.6101 656.6101 615.9207 84.9602 289.0912 184.9891 203.8647 280.1536 883.496 254.235 454.497 262.1629 120.7119 353.5163 151.926 261.7651 892.6991;
	3.6952 49.9306 91.2908 111.4111 14.9254 31.7791 24.0068 17.6752 26.1323 30.6104 56.5828 84.4104 127.0794 65.6162 194.5115 73.2811 90.9228 96.351 89.317 71.3436 8.0023 74.1512 74.1433 87.2697 97.7189 72.0179 13.0435 1073.4405 679.1016 679.1016 674.6642 89.8286 297.7234 183.6386 205.7155 289.75 894.0152 303.4718 461.0766 261.7472 118.7504 352.5358 170.6747 250.8856 903.3278;
	3.7353 50.4717 92.567 117.2542 14.9252 32.6099 22.6908 17.9521 26.1906 30.5135 56.4038 84.1433 126.6773 63.1218 195.7031 73.73 91.4798 96.9413 87.801 71.5313 7.5636 76.0898 74.9752 86.6463 100.4853 72.6318 13.3301 1161.6446 712.6108 712.6108 662.2899 99.2856 292.67 184.1218 197.8953 304.0473 998.8873 315.1561 449.6768 269.1571 116.2151 361.7525 173.5637 250.1437 1009.2923;
	3.4195 46.2048 89.2982 114.8305 14.3469 32.311 20.0824 16.6981 24.5897 30.3946 56.1839 83.8153 126.1835 61.0906 193.8211 73.021 90.6001 96.0091 88.9481 71.8526 6.6941 75.3923 74.2041 85.9912 99.0734 71.2385 11.8263 1083.9389 725.2322 725.2322 672.3411 91.1961 296.4938 184.9489 191.5272 309.4324 1061.6231 297.3448 438.8232 265.3753 117.1937 358.4364 174.6983 231.3644 1072.6816;
	3.2635 44.0975 86.6231 111.0105 14.0201 30.1038 22.2879 12.927 25.952 30.1066 55.6516 83.0212 124.9879 64.1209 192.1736 72.4003 89.83 95.193 88.2427 69.8622 7.4293 70.2423 72.9063 82.7059 97.9253 61.0075 10.2358 1176.4181 710.3592 710.3592 693.9985 97.4813 294.1422 179.8254 201.0277 303.0866 1098.119 309.5098 438.6428 262.2998 115.5547 333.952 183.2292 226.2673 1109.5578;
	3.1477 42.5327 85.6207 105.6108 13.9849 25.724 21.6694 13.5514 25.2213 28.4394 52.5699 78.4239 118.0668 61.8153 190.5811 71.8003 89.0856 94.4041 83.8938 68.9604 7.2231 60.0228 71.748 81.4842 98.2217 47.4329 10.6946 1197.939 677.0126 677.0126 607.9651 96.4335 279.6459 177.5041 193.7994 288.8587 1134.7478 274.017 412.4456 263.0939 114.1609 285.3654 139.6342 221.6517 1146.5681;
	3.5551 48.0371 81.4809 99.2495 14.2979 26.9702 22.2969 14.0241 25.9409 28.5965 52.8601 78.8569 118.7187 63.6724 185.4848 69.8803 86.7034 91.8797 84.2412 66.648 7.4323 62.9305 71.5717 82.6684 98.4703 47.9581 10.3102 1229.539 715.6882 715.6882 603.7574 107.9437 280.804 171.552 199.6214 305.3603 1223.7525 261.8272 435.4494 263.7598 112.6278 299.1894 174.3928 229.1464 1236.4999;
	3.3369 45.0892 74.7796 91.5711 14.0325 28.5815 29.7029 13.9973 27.4555 29.6463 54.8007 81.7519 123.077 66.2835 192.4293 72.4966 89.9495 95.3196 85.2665 67.2247 9.901 66.6902 73.5376 82.541 94.3359 58.1883 10.1995 1240.5647 740.3422 740.3422 629.0354 112.9942 284.2215 173.0367 207.8079 315.8794 1222.494 282.0467 455.797 252.6855 113.8716 317.0643 145.3187 220.3573 1235.2283;
	3.4964 47.2445 75.7628 86.3704 14.2535 28.712 29.1896 12.1234 27.8124 29.5446 54.6127 81.4715 122.6548 65.3436 188.2987 70.9404 88.0187 93.2736 84.1476 67.2701 9.7299 66.9946 71.9508 82.9706 89.7412 63.5797 9.5057 1193.7182 746.9844 746.9844 663.4653 110.7822 280.492 173.1533 204.8611 318.7133 1092.5231 288.2208 458.2629 240.3782 104.2895 318.5114 144.368 224.2526 1103.9035;
	3.6612 49.4713 84.5184 93.1043 14.923 29.8599 31.3066 11.516 28.2796 29.2898 54.1418 80.769 121.5972 68.5902 186.8743 70.4038 87.3529 92.568 84.0235 66.8693 10.4355 69.673 72.3747 84.8214 92.2289 61.2548 9.1686 1163.5814 778.9909 778.9909 733.3759 111.3558 280.0782 172.1219 215.0396 332.3695 1138.7782 299.0478 473.0491 247.0417 107.746 331.2456 172.3255 227.3125 1150.6405;
	3.7077 50.0991 85.6808 101.1919 14.8667 31.4589 30.7887 11.5271 28.3209 27.4722 50.7819 75.7566 114.0511 69.5993 180.9878 68.1861 84.6013 89.6521 83.8825 67.0753 10.2629 73.4041 68.887 83.3003 91.8641 58.0665 9.5358 1159.3708 763.0777 763.0777 753.4147 108.142 279.6083 172.6521 218.2031 325.5798 1143.62 300.595 475.7204 246.0645 111.4172 348.9841 182.2721 223.0074 1155.5327;
];