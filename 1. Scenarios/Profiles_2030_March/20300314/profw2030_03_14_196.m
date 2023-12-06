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
	3.671 49.6029 89.6192 113.3016 15.1787 14.7916 15.6456 17.3613 26.9239 24.6902 45.6395 68.0851 102.5018 6.3067 18.483 6.9634 8.6397 9.1555 14.9531 17.4357 5.2152 34.5137 59.3432 84.7377 100.6797 69.9447 7.7234 737.0446 424.5164 424.5164 213.2417 33.3268 49.8437 44.8795 19.7724 181.127 566.9494 58.549 326.8625 269.6777 16.3394 164.0878 131.1451 240.0171 572.8551;
	3.397 45.9014 87.2242 109.7864 14.784 15.5229 13.7848 16.042 25.9621 25.0547 46.3133 69.0904 104.0152 4.7331 9.8047 3.6939 4.5831 4.8568 12.5085 5.8514 4.5949 36.2201 62.9478 81.536 96.8615 69.8957 6.6371 646.5314 364.7494 364.7494 154.522 27.201 41.695 15.0616 14.839 155.6264 500.0325 50.6157 300.3207 259.4505 12.9821 172.2005 113.5489 219.1528 505.2412;
	3.0391 41.0646 87.1874 109.3722 14.8223 12.2217 11.3787 17.2194 24.628 23.5889 43.6036 65.048 97.9295 2.0037 11.5623 4.356 5.4047 5.7274 19.5702 19.286 3.7929 28.5173 66.3886 83.9152 98.3699 71.203 7.8418 593.0137 343.2444 343.2444 140.5749 28.2091 65.2341 49.6422 6.282 146.4509 443.2483 38.3431 224.3565 263.4907 18.4546 135.5792 86.7401 204.1087 447.8655;
	2.867 38.7389 91.8677 110.7747 15.0098 12.8296 10.7958 17.6003 25.4413 24.2205 44.7712 66.7899 100.5518 6.3833 9.5261 3.5889 4.4529 4.7187 11.9918 19.9223 3.5986 29.9357 68.8301 85.5822 100.7958 74.3003 9.7749 506.8826 269.6274 269.6274 153.2101 23.498 39.9728 51.28 20.0124 115.041 343.2488 31.3575 173.4852 269.9887 34.8812 142.3229 81.088 214.582 346.8243;
	2.2265 30.085 92.7484 114.326 14.791 13.9616 9.7564 17.7421 16.7012 22.9731 42.4655 63.3502 95.3733 11.2411 9.3756 3.5322 4.3825 4.6442 21.9592 19.6515 3.2521 32.577 59.0535 86.4207 103.3635 74.2796 9.3031 351.2326 218.1854 218.1854 133.6205 22.8157 73.1972 50.5831 35.2422 93.0925 198.4336 29.6784 160.6642 276.8664 14.399 154.8804 86.8341 210.9062 200.5006;
	2.8394 38.3661 90.4801 117.2071 14.2272 21.6725 10.7184 17.4442 9.3117 19.7569 36.5204 54.4813 82.0212 12.4526 10.3487 3.8988 4.8374 5.1262 33.9774 21.4763 3.5728 50.5692 57.8271 86.2765 102.3069 71.8992 7.6453 266.7922 196.6386 196.6386 124.8443 23.9175 113.258 55.28 39.0405 83.8991 161.7076 30.8635 173.0289 274.0363 14.582 240.4206 89.4057 216.3542 163.392;
	2.3308 31.4944 87.6888 113.7196 13.3145 21.3836 11.0001 17.3403 11.1111 26.8236 49.5831 73.9682 111.3588 16.9233 21.9094 8.2543 10.2414 10.8528 36.0944 30.4563 3.6667 49.895 68.6005 87.7589 102.9335 73.4253 11.0201 230.8287 217.7218 217.7218 98.2575 16.0632 120.3146 78.3947 53.0569 92.8946 174.5039 21.249 142.564 275.7148 10.7462 237.2149 78.8878 223.806 176.3216;
	1.7259 23.321 70.437 116.3116 14.3745 18.1123 12.8949 18.2019 18.8757 28.5675 52.8067 78.7772 118.5986 37.4687 25.1184 9.4632 11.7414 12.4424 52.3646 46.6639 4.2983 42.2621 69.0566 87.9631 103.0466 74.286 12.7631 142.7058 190.246 190.246 89.2101 8.956 174.5486 120.1131 117.4694 81.1716 132.1341 22.6664 169.8452 276.0177 10.2223 200.9261 84.9482 218.7681 133.5105;
	2.5734 34.7719 83.0307 109.2747 14.4519 22.219 10.415 17.7618 20.0641 27.3316 50.522 75.3689 113.4675 18.1931 21.4972 8.0989 10.0487 10.6486 56.5914 45.0008 3.4717 51.8443 59.0563 86.6301 100.1096 74.2971 11.7301 132.4027 145.5782 145.5782 79.1095 6.9262 188.638 115.8323 57.0377 62.1134 126.0613 17.1283 120.9093 268.1508 19.5213 246.4824 74.0927 233.4057 127.3745;
	1.8392 24.8518 82.1882 110.0745 13.38 13.1045 10.1586 17.8766 25.8131 30.0389 55.5264 82.8345 124.7069 18.9909 65.6174 24.721 30.6723 32.5035 70.0774 45.3879 3.3862 30.5772 71.2401 85.7671 99.5119 75.563 12.2279 251.6087 233.5617 233.5617 104.3431 8.0097 233.5913 116.8285 59.5391 99.653 221.1199 25.0306 66.2872 266.5497 3.4398 145.3727 69.0837 219.809 223.4232;
	1.5662 21.163 74.4817 102.7309 13.2312 24.5323 13.5071 16.8894 26.3989 28.9256 53.4685 79.7645 120.085 29.0437 38.5781 14.5341 18.033 19.1096 63.5736 37.2195 4.5024 57.242 68.1164 86.0697 92.4931 73.7863 11.237 395.0858 301.6116 301.6116 173.4218 11.9344 211.9118 95.8032 91.0558 128.6876 317.8635 28.4373 155.1309 247.7493 0.3621 272.1449 88.7485 182.0187 321.1746;
	1.7841 24.1077 84.1548 92.9137 13.399 32.2754 20.0725 18.0837 27.0964 29.1863 53.9504 80.4833 121.1672 47.2623 62.2528 23.4534 29.0996 30.8369 79.1924 54.0792 6.6908 75.3092 69.267 86.1219 96.9472 74.1539 11.9437 493.6291 380.0659 380.0659 298.0804 15.8504 263.9748 139.2 148.1737 162.1615 445.8313 48.1466 192.2936 259.68 0.0 358.0416 108.6594 196.6169 450.4753;
	2.8551 38.5782 86.8842 88.1168 14.8488 32.4568 20.5054 17.327 27.5403 29.4534 54.4442 81.2201 122.2764 53.3001 44.6722 16.83 20.8816 22.1283 84.0246 65.2453 6.8351 75.7324 71.182 84.2926 97.6642 73.6761 11.2395 598.8813 449.2189 449.2189 311.0787 19.9006 280.082 167.9415 167.1031 191.6667 578.3886 55.6246 206.0061 261.6005 0.0 360.0537 137.7847 217.8684 584.4135;
	3.4647 46.815 86.8068 106.6677 15.089 30.7244 21.007 17.7475 26.6907 30.3345 56.0729 83.6497 125.9342 54.9567 66.4494 25.0344 31.0612 32.9156 85.4394 62.7967 7.0023 71.6903 67.1199 84.6961 99.5964 75.3636 11.1713 790.0483 587.0664 587.0664 410.0072 26.8133 284.7981 161.6387 172.2968 250.4816 718.978 76.8849 263.9714 266.7761 0.0 340.8362 135.1758 254.3842 726.4674;
	3.5727 48.2756 90.7864 112.0985 14.7301 33.2209 26.6379 17.8279 27.5516 27.2628 50.3949 75.1792 113.1819 61.9312 98.3293 37.045 45.9632 48.7073 84.2073 60.8393 8.8793 77.5155 49.7955 88.493 101.2709 74.6488 12.142 943.1801 666.0944 666.0944 514.9658 30.4209 280.6912 156.6006 194.1628 284.2003 899.8571 104.0605 419.5498 271.2614 0.0012 368.5307 150.6401 253.9575 909.2306;
	3.6496 49.3141 94.0028 113.2142 15.1247 34.4799 27.4713 17.5559 27.0858 21.0736 38.9543 58.1122 87.4875 64.9213 135.3149 50.9791 63.2519 67.0281 87.8842 69.0073 9.1571 80.4531 45.2273 87.3924 102.5308 71.6833 12.4192 1063.6699 729.9531 729.9531 692.2425 44.385 292.9472 177.625 203.537 311.4466 990.9136 159.6281 381.4502 274.6361 0.0 382.4968 166.6117 267.8654 1001.2357;
	3.8253 51.6888 95.1909 120.9875 15.0325 35.0142 29.5479 18.8708 27.3539 20.7038 38.2707 57.0923 85.9522 65.4478 171.9958 64.7984 80.398 85.1979 88.2079 71.2388 9.8493 81.6998 29.7689 89.8732 106.3404 76.2873 13.4611 1011.0739 778.6361 778.6361 737.7572 77.7918 294.0263 183.3688 205.1878 332.2181 997.0856 214.8949 430.9614 284.8403 2.838 388.424 205.9222 285.3466 1007.4719;
	3.8578 52.1268 95.0774 120.8143 15.2392 34.1558 28.3625 18.7942 27.0914 18.4326 34.0724 50.8293 76.5232 63.1355 177.5236 66.881 82.982 87.9361 86.9999 71.6521 9.4542 79.6969 35.2194 89.636 106.43 74.7021 13.6666 1109.5903 801.9459 801.9459 741.7435 95.1992 289.9997 184.4326 197.9382 342.1636 1052.76 233.052 441.1985 285.0803 111.2769 378.9018 191.0513 276.6663 1063.7263;
	3.7962 51.2954 93.2005 119.0973 14.8116 32.8799 29.7478 14.6441 26.4746 20.3608 37.6367 56.1466 84.5284 62.5291 188.3938 70.9763 88.0631 93.3206 87.2805 71.7674 9.9159 76.7197 51.8652 86.3512 105.9809 64.9534 13.2259 1176.4473 792.9608 792.9608 709.6496 109.2199 290.9351 184.7294 196.037 338.3299 1101.4912 250.4311 443.9691 283.8774 116.9441 364.7474 198.6453 276.1799 1112.9651;
	3.7649 50.8722 93.3909 109.7484 14.2971 31.9937 29.6376 9.0977 25.9113 18.7632 34.6835 51.7409 77.8956 60.0911 190.7083 71.8482 89.145 94.4671 85.5948 69.7581 9.8792 74.652 50.1536 37.5819 47.6421 61.3408 10.9369 1204.0933 762.3885 762.3885 717.6228 110.8659 285.3162 179.5576 188.3939 325.2857 1112.1722 257.177 430.3461 127.6128 116.4966 354.917 187.0142 244.4665 1123.7573;
	3.8751 52.3612 94.8705 120.9026 14.384 32.77 30.6626 18.6573 17.169 17.812 32.9252 49.1179 73.9467 63.7442 189.4787 71.385 88.5703 93.8581 85.1515 68.0645 10.2209 76.4632 40.2453 80.8707 105.1054 69.7025 13.7048 1212.9634 783.979 783.979 727.3258 107.9773 283.8384 175.1982 199.8467 334.4977 1102.279 238.1424 444.4764 281.5323 113.4546 363.5281 201.4514 270.6921 1113.7611;
	3.8171 51.577 94.5697 123.222 14.4791 33.1857 30.9839 18.1019 9.608 19.4622 35.9756 53.6685 80.7977 60.5964 187.6589 70.6994 87.7196 92.9566 85.1981 68.5862 10.328 77.4333 43.2057 86.5579 105.3211 73.0275 13.8413 1275.4852 808.2023 808.2023 763.5368 111.9738 283.9937 176.5411 189.9778 344.833 1178.8798 252.8936 444.5034 282.11 117.9084 368.1402 201.1563 237.7805 1191.1598;
	3.6721 49.6175 92.7198 119.0676 14.4528 32.1762 32.0726 18.057 18.7245 17.0552 31.5263 47.0311 70.805 61.7337 188.0469 70.8456 87.901 93.1488 85.5615 62.5846 10.6909 75.0778 45.6759 84.2805 94.678 73.4893 13.887 1271.432 815.0088 815.0088 768.6616 113.1796 285.2049 161.093 193.5436 347.7371 1204.0033 259.2867 455.4768 253.6019 115.2014 356.9415 175.9501 249.0729 1216.545;
	3.6515 49.3404 93.3208 118.3424 14.6035 32.26 33.1993 18.2086 10.7822 11.2759 20.8432 31.094 46.8119 62.3073 184.0381 69.3353 86.0271 91.1631 84.9248 65.6313 11.0664 75.2733 30.2435 85.9022 104.9908 71.5218 13.7838 1254.3032 802.2132 802.2132 782.1723 110.7614 283.0826 168.9353 195.3418 342.2776 1171.5685 266.2878 460.1916 281.2254 119.1422 357.8709 183.7127 263.9055 1183.7723;
];