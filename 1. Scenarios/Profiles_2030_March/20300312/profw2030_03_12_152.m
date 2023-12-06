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
	3.8515 52.0428 89.4698 106.1461 15.3692 32.3959 28.074 12.072 28.0787 28.1246 51.9879 77.5557 116.7597 68.6775 191.1485 72.0141 89.3508 94.6852 91.005 70.6473 9.358 75.5905 70.124 87.2303 94.4562 65.4373 9.1317 1165.8583 783.8653 783.8653 753.4748 118.0201 303.3501 181.8463 215.3133 334.4492 1107.2979 304.4447 463.4951 253.0077 120.1128 359.3787 198.352 224.0591 1118.8322;
	3.8696 52.2868 89.3023 109.2451 15.3643 32.0999 28.2074 11.0464 27.4525 26.8616 49.6533 74.0729 111.5163 66.968 190.8364 71.8965 89.2049 94.5306 90.8433 67.6186 9.4025 74.8997 68.2208 85.6354 95.3343 60.6011 7.8055 1211.2771 799.4708 799.4708 772.8267 115.2858 302.8108 174.0504 209.9536 341.1075 1189.9405 291.0516 459.8629 255.3596 119.0863 356.0944 206.9372 228.4872 1202.3357;
	3.8341 51.807 91.6083 99.7819 15.3715 32.3412 26.8448 10.3866 27.8832 28.2461 52.2124 77.8907 117.264 65.3726 184.9083 69.6631 86.4339 91.5941 90.5634 66.8357 8.9483 75.4627 63.5655 87.4249 90.1261 61.796 9.0321 1230.5736 807.9866 807.9866 778.549 112.7603 301.8781 172.0352 204.9518 344.7409 1183.9262 267.1165 476.8911 241.4091 117.1408 358.7714 187.8755 247.4321 1196.2587;
	3.8307 51.7609 89.8049 102.1425 15.3812 31.9756 23.4467 11.4686 27.5063 28.112 51.9645 77.5209 116.7072 64.0149 187.8601 70.7752 87.8137 93.0563 90.8567 66.6635 7.8156 74.6097 64.8647 86.6473 85.7186 57.0519 8.38 1217.47 828.3303 828.3303 790.0767 116.6102 302.8558 171.592 200.6954 353.4209 1220.9367 265.9614 457.2869 229.6033 112.0795 354.7159 195.8228 236.7768 1233.6548;
	3.8361 51.8338 86.947 87.6214 15.4009 32.1419 20.0313 9.3547 24.4189 28.1952 52.1185 77.7505 117.053 67.6763 185.2566 69.7944 86.5967 91.7666 89.7334 67.0559 6.6771 74.9978 68.7809 86.9151 75.5419 50.6086 8.0217 1285.2229 807.3577 807.3577 736.8266 110.0087 299.1112 172.6022 212.1744 344.4726 1205.5938 258.7841 407.0953 202.3445 115.1288 356.5611 205.8273 218.8442 1218.152;
	3.8542 52.0787 86.2858 81.7886 15.323 32.5805 18.0598 7.6112 25.9783 28.4872 52.6581 78.5555 118.2649 65.6638 179.6408 67.6786 83.9716 88.9849 88.9851 65.7951 6.0199 76.0211 68.211 85.9325 57.3276 37.2317 6.3171 1258.493 766.3826 766.3826 686.5515 96.0275 296.6171 169.3567 205.865 326.9899 1199.9474 231.0135 366.9645 153.5561 101.6449 361.4261 198.0579 186.053 1212.4469;
	3.6219 48.9404 72.9964 64.2343 14.6976 30.4396 16.0358 5.3774 20.3756 27.6576 51.1247 76.2679 114.821 66.8526 176.3743 66.448 82.4447 87.3668 91.0478 66.8681 5.3453 71.0257 68.8279 77.4055 44.8616 23.2882 4.4133 1274.2214 730.8825 730.8825 580.2125 66.1972 303.4926 172.1188 209.592 311.8432 1161.1673 208.7047 294.3448 120.165 83.2929 337.6764 164.2685 133.5368 1173.2627;
	3.6916 49.882 70.5546 66.887 14.8128 28.5619 16.096 4.8157 16.7569 23.4782 43.399 64.7428 97.47 67.259 177.3216 66.8049 82.8875 87.836 89.0888 64.0918 5.3653 66.6444 55.4909 76.2199 49.1308 16.6582 3.2406 1274.4346 682.5609 682.5609 587.7273 64.5544 296.9628 164.9725 210.866 291.226 1164.9471 211.4574 253.6421 131.6002 74.8313 316.8467 152.8729 141.9058 1177.0819;
	3.0949 41.8184 55.2274 57.1993 14.4365 23.4473 16.3243 3.4673 21.8965 21.9704 40.6119 60.585 91.2104 68.9813 171.7183 64.6939 80.2683 85.0604 89.4763 66.7545 5.4414 54.7104 47.4446 66.146 45.1297 12.0573 2.4109 1259.9136 820.2735 820.2735 715.6836 88.9591 298.2543 171.8263 216.2658 349.9834 1203.8865 246.9876 262.2181 120.8832 55.5229 260.1089 148.4268 147.4572 1216.427;
	2.8695 38.7734 51.4583 57.8522 14.7194 19.285 19.3083 2.4887 22.8952 18.8864 34.9113 52.0808 78.4073 68.6746 184.2184 69.4032 86.1114 91.2524 92.1421 71.9783 6.4361 44.9983 41.067 65.0024 33.2566 7.6069 1.5361 1140.7085 824.2553 824.2553 751.0908 108.6071 307.1402 185.2725 215.3042 351.6823 1211.1244 246.0235 351.3054 89.0802 42.2499 213.9346 135.1357 131.4452 1223.7403;
	2.327 31.4427 37.3933 41.2432 14.0167 14.1955 18.8934 1.4449 21.0435 16.1668 29.8841 44.5812 67.1167 66.2709 172.5633 65.0122 80.6633 85.479 87.7516 70.8662 6.2978 33.1229 30.9799 44.4239 21.3418 6.5971 7.9248 1127.0921 804.326 804.326 726.5383 111.3499 292.5053 182.4098 207.7681 343.1791 1130.5308 253.7877 379.2067 57.1654 37.1715 157.4759 94.5212 96.189 1142.3071;
	1.5732 21.2577 28.8104 20.9807 10.2177 9.7914 17.5547 1.3867 17.7312 16.311 30.1506 44.9787 67.7152 67.4547 182.9187 68.9135 85.5038 90.6085 90.922 71.5019 5.8516 22.8466 38.9304 29.9264 18.6903 7.8839 2.2869 1016.1458 738.0489 738.0489 685.4833 112.9329 303.0733 184.0462 211.4796 314.9009 1044.839 217.3888 377.932 50.0633 27.8199 108.6192 67.449 80.0964 1055.7227;
	1.1491 15.5263 26.4894 24.8219 9.0958 7.3686 17.6485 2.4977 14.4746 13.0648 24.1501 36.0271 54.2387 64.4929 179.6865 67.6958 83.993 89.0075 87.0233 70.9983 5.8828 17.1933 35.1289 31.1492 20.9937 12.2854 2.7279 1069.754 762.5966 762.5966 728.1239 108.0646 290.0776 182.7497 202.1938 325.3746 1107.7957 235.2351 398.9443 56.2332 27.1811 81.7419 54.9288 48.6047 1119.3352;
	0.8446 11.413 23.5806 31.6778 7.5182 7.8012 12.9264 2.4992 12.9896 16.8447 31.1372 46.4505 69.931 66.7114 171.7534 64.7071 80.2847 85.0778 85.0713 66.0509 4.3088 18.2028 46.6254 31.6824 22.034 12.1394 3.9031 995.9387 735.2426 735.2426 728.2637 100.9171 283.5711 170.0151 209.1493 313.7035 924.1258 229.6412 390.7346 59.0197 28.9352 86.5412 41.5001 53.9098 933.7521;
	0.7677 10.3732 23.9819 6.2057 6.1375 6.4204 10.8263 1.9262 10.5448 14.4571 26.7236 39.8664 60.0187 65.0732 154.265 58.1184 72.1099 76.415 80.6736 66.2558 3.6088 14.9809 48.5879 46.8283 21.8725 7.367 3.6515 866.2292 625.4935 625.4935 626.9612 86.299 268.9119 170.5427 204.0133 266.8772 774.3126 211.7373 321.5781 58.5871 21.3792 71.2236 32.3098 47.1413 782.3784;
	0.6653 8.9901 18.7491 27.8606 6.6037 0.0 5.6226 1.4304 8.854 14.408 26.633 39.7311 59.815 63.4229 140.6893 53.0039 65.7641 69.6903 78.2548 66.0446 1.8742 0.0 49.8313 41.2923 20.6103 4.4794 2.4555 857.3939 520.8227 520.8227 559.0366 82.6412 260.8493 169.9989 198.8395 222.2177 614.8831 198.2354 212.5036 55.2063 23.452 0.0 0.0 16.6209 621.2881;
	0.3768 5.0917 4.4961 0.0 4.8776 0.0272 4.1899 1.4346 11.4531 17.5847 32.5051 48.4913 73.0033 64.1308 157.4561 59.3207 73.6016 77.9957 82.8714 64.5995 1.3966 0.0635 46.8679 37.6511 12.1355 16.7779 1.6108 865.9048 535.2904 535.2904 579.8171 84.059 276.2379 166.2792 201.0588 228.3906 756.1938 193.4991 235.0703 32.5059 32.6221 0.3021 0.0 3.0795 764.0708;
	0.7745 10.4654 0.6641 0.0 0.3465 0.0017 0.606 0.1059 1.0514 20.4813 37.8593 56.4786 85.0283 65.6678 111.5156 42.0128 52.127 55.2391 85.1038 47.6829 0.202 0.0039 63.3027 30.9417 8.6851 3.9234 1.5666 758.4599 500.2299 500.2299 623.3555 92.5098 283.6795 122.7359 205.8774 213.4314 712.1287 211.4378 338.9344 23.2637 60.0885 0.0187 0.0 0.0238 719.5467;
	0.4025 5.4391 24.8582 36.0404 0.0015 0.3904 1.0262 1.8157 1.945 23.1448 42.7828 63.8235 96.0859 67.0693 98.592 37.144 46.086 48.8374 14.8799 54.4164 0.3421 0.9109 67.652 47.3756 20.3078 9.273 1.845 781.8453 491.9107 491.9107 603.6362 86.3852 49.5998 140.0679 210.2713 209.8819 682.1617 194.2417 369.3019 54.396 84.9285 4.3309 5.4747 0.0 689.2675;
	0.2654 3.5867 30.1473 49.5142 2.1219 0.1927 0.3015 3.0733 3.9401 25.336 46.8332 69.8659 105.1828 68.269 88.6775 33.4087 41.4516 43.9263 5.9814 59.2716 0.1005 0.4495 65.7267 59.0028 25.1304 21.8504 2.6772 676.0724 357.8811 357.8811 570.2158 71.1903 19.9379 152.5652 214.0324 152.6959 580.793 186.0704 84.9271 67.3136 88.3775 2.1372 13.6527 0.0 586.843;
	0.6066 8.1966 47.0397 76.5881 5.693 1.4284 1.1704 4.8177 6.7109 25.4598 47.062 70.2073 105.6967 56.1958 107.3976 40.4614 50.2022 53.1993 84.4034 66.3814 0.3901 3.333 66.0906 71.5082 33.5004 16.9527 2.2979 542.7707 332.0416 332.0416 472.3402 51.6099 281.3447 170.8659 176.1814 141.6711 617.0936 179.9694 85.0403 89.7332 90.2014 15.8459 14.8052 41.2736 623.5217;
	0.5075 6.8575 44.3274 63.8684 1.029 0.4381 0.8112 2.9028 6.6756 23.5533 43.5379 64.95 97.7819 43.9023 128.2368 48.3125 59.9433 63.522 85.3092 68.8846 0.2704 1.0223 68.3791 59.7305 23.6352 18.0092 1.2711 387.7338 339.4179 339.4179 426.0792 49.1172 284.3641 177.3093 137.6396 144.8183 648.2596 156.7465 80.3895 63.3085 70.4953 4.8603 6.8007 32.4833 655.0123;
	0.72 9.729 44.5679 64.8089 7.9209 2.552 0.6154 3.3847 2.9541 18.9062 34.9478 52.1352 78.4892 24.5526 124.8902 47.0516 58.3789 61.8642 84.5731 68.1986 0.2051 5.9547 47.0994 61.2338 29.9469 33.0953 1.656 388.7115 381.1755 381.1755 463.4831 52.8453 281.9104 175.5435 76.9758 162.6349 527.2399 138.4333 38.7113 80.2149 51.3032 28.3105 35.0712 13.9747 532.732;
	0.7843 10.5976 49.3959 60.0535 8.4082 3.3988 1.6012 5.5044 0.1419 22.6037 41.7827 62.3315 93.8398 7.8739 155.4007 58.5463 72.6408 76.9775 87.5246 68.0607 0.5337 7.9306 69.7039 63.8522 33.1866 37.7559 2.7938 301.753 302.4141 302.4141 354.7318 49.4661 291.7487 175.1885 24.6857 129.03 381.9287 114.3253 30.1778 88.8927 52.0957 37.7046 28.8648 51.2619 385.9072;
];
