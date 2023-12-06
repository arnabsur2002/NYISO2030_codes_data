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
	3.6267 49.004 90.5162 107.7338 14.5802 32.7241 26.5574 18.6778 26.3832 30.4204 56.2316 83.8865 126.2906 67.7843 191.2751 72.0618 89.41 94.7479 27.8788 70.6182 8.8525 76.3562 72.2168 86.0165 102.8534 73.5866 13.9193 1144.6812 673.6732 673.6732 590.3841 105.449 92.9294 181.7713 212.5131 287.4339 1139.8986 222.419 456.0709 275.5002 116.9177 363.0193 143.9444 270.1654 1151.7725;
	3.6476 49.2873 92.6745 115.1941 14.3369 31.6424 26.607 18.6427 26.891 30.7911 56.9169 84.9088 127.8297 68.5048 194.7837 73.3836 91.0501 96.4859 30.1657 72.1454 8.869 73.8324 73.1283 85.7106 102.8979 73.666 13.6257 1145.4028 704.0388 704.0388 594.7856 106.1591 100.5523 185.7026 214.7717 300.3899 1138.3738 231.2946 456.3279 275.6195 120.2987 351.0201 129.806 273.4411 1150.2319;
	3.6367 49.1393 92.7214 62.3422 14.3126 32.4478 26.7583 18.1464 26.1321 30.0624 55.5699 82.8993 124.8044 68.1182 201.6042 75.9532 94.2382 99.8644 32.1817 70.4082 8.9194 75.7115 72.605 86.2985 102.9115 74.8084 13.851 1106.2199 686.2262 686.2262 572.3418 107.2434 107.2723 181.231 213.5597 292.7898 1146.4513 231.6549 440.2485 275.6559 119.5435 359.9541 137.7383 273.751 1158.3935;
	3.5982 48.6199 89.1652 76.8739 14.0106 30.7192 25.303 18.0058 26.1527 30.0046 55.4631 82.74 124.5646 68.4122 198.432 74.7581 92.7554 98.2931 41.5515 71.3771 8.4343 71.6781 67.1241 84.0357 99.9113 73.3093 13.7033 1146.0769 685.9425 685.9425 551.957 97.4322 138.5049 183.7248 214.4816 292.6688 1041.6815 250.7078 444.0743 267.6194 117.3607 340.7783 164.6477 261.4916 1052.5323;
	3.5805 48.3808 94.5055 117.971 14.9832 32.2107 21.157 18.7094 27.163 30.7145 56.7752 84.6974 127.5115 65.4408 193.5224 72.9085 90.4605 95.8611 72.6106 70.2926 7.0523 75.1584 61.7844 85.9106 103.0316 74.3384 13.8916 1114.2023 654.9926 654.9926 549.0578 92.9723 242.0354 180.9333 205.1658 279.4635 1122.8005 243.0342 448.2873 275.9774 120.2538 357.3246 195.2199 262.8963 1134.4964;
	3.8267 51.7072 93.553 116.2061 15.0681 33.4594 24.284 18.479 26.9987 31.2176 57.7053 86.085 129.6004 64.0329 193.995 73.0865 90.6814 96.0952 86.7513 71.9837 8.0947 78.072 69.9474 86.9301 105.4648 73.1832 13.8399 1145.0089 669.7326 669.7326 491.3918 87.0915 289.1711 185.2861 200.7519 285.7526 1045.6936 216.1562 448.6433 282.4949 121.0541 371.1765 203.4661 273.3359 1056.5862;
	3.8254 51.6893 94.7787 118.0469 15.1188 32.0186 25.8781 18.1779 27.323 31.1601 57.5989 85.9262 129.3615 55.9474 192.8211 72.6442 90.1326 95.5137 88.4866 71.7551 8.626 74.71 74.6059 88.3567 105.6658 74.7931 13.3953 1159.3042 715.8461 715.8461 569.1527 88.0109 294.9553 184.6977 175.4027 305.4277 1089.598 244.2674 439.8445 283.0335 122.7649 355.1929 203.2444 275.8464 1100.948;
	3.8481 51.9956 93.0765 117.9185 14.966 32.9657 24.5265 18.0339 27.0363 30.6059 56.5745 84.3981 127.0609 55.7596 193.5075 72.9028 90.4535 95.8537 84.2331 71.5407 8.1755 76.9199 73.1443 87.3555 106.2491 73.2714 13.1269 1119.4035 715.089 715.089 546.3801 75.9896 280.7771 184.146 174.814 305.1047 1124.5775 221.2853 437.2572 284.5957 115.616 365.699 205.9105 269.0728 1136.2918;
	3.8321 51.78 94.7871 120.7374 15.2706 33.3518 26.1635 18.0711 26.9293 31.0344 57.3665 85.5796 128.8396 61.8898 199.7025 75.2368 93.3493 98.9224 89.3831 70.7305 8.7212 77.8208 73.3027 88.0065 106.0143 73.8997 13.2557 1136.8099 758.4177 758.4177 585.0949 70.6878 297.9438 182.0606 194.033 323.5915 1173.8934 264.7031 434.8688 283.967 116.4579 369.9821 181.3122 280.3201 1186.1215;
	3.7247 50.3294 94.0694 120.5185 14.8332 33.0249 28.0697 18.8178 26.8414 30.9794 57.265 85.4282 128.6116 58.7338 198.4306 74.7576 92.7548 98.2924 90.4469 70.174 9.3566 77.0581 73.4107 89.5396 106.5275 74.1169 13.397 1090.6594 725.5073 725.5073 633.7431 75.1933 301.4895 180.6281 184.1385 309.5498 1105.5518 277.5922 438.1178 285.3414 119.4874 366.3565 167.9787 274.4376 1117.068;
	3.7038 50.0463 92.6795 120.5541 14.6523 33.301 25.5767 18.9756 27.0342 31.4055 58.0527 86.6032 130.3806 61.9855 198.6562 74.8426 92.8602 98.4041 87.5237 70.3846 8.5256 77.7024 74.2821 89.4473 105.5186 75.7021 13.4546 1164.3991 758.4114 758.4114 652.3831 78.927 291.7456 181.1702 194.333 323.5889 1114.5738 291.1434 449.1699 282.639 117.232 369.4194 173.6154 274.474 1126.1839;
	3.7601 50.8074 95.1417 120.6745 15.0834 33.5733 24.4001 19.0972 27.596 31.2084 57.6883 86.0596 129.5623 66.3527 201.359 75.8608 94.1236 99.743 88.3451 70.5512 8.1334 78.3376 74.8942 90.0762 106.5021 76.1215 13.7516 1113.2492 756.8372 756.8372 656.4844 88.828 294.4837 181.5991 208.0248 322.9172 1134.6501 291.7261 454.0823 285.2734 117.0254 372.4394 184.1467 284.3915 1146.4693;
	3.773 50.9818 94.5151 120.8588 14.8057 32.7038 26.6016 18.9502 26.687 31.2512 57.7673 86.1775 129.7398 65.6687 197.2104 74.2979 92.1844 97.6879 86.4048 71.3201 8.8672 76.3088 74.8755 90.059 104.5446 75.6887 13.8226 1155.0112 760.5558 760.5558 661.8918 98.6534 288.016 183.5781 205.8801 324.5038 1037.2076 301.1613 440.3691 280.0301 119.1055 362.7937 155.6261 271.4921 1048.0118;
	3.5593 48.0936 91.5233 117.5826 14.7644 31.7027 25.2224 18.4279 26.9433 31.1392 57.5604 85.8688 129.275 59.0408 196.6262 74.0778 91.9113 97.3986 88.6495 72.2436 8.4075 73.9729 74.6688 88.8865 100.7173 75.1651 13.323 1035.5673 694.2853 694.2853 640.3773 90.3737 295.4984 185.9552 185.101 296.2284 981.4006 286.1185 435.4662 269.7785 117.4443 351.6885 134.9525 262.8845 991.6236;
	3.6821 49.7538 93.3984 118.2186 15.0332 32.5124 23.5202 18.203 27.0826 31.1427 57.5668 85.8783 129.2894 66.4807 196.441 74.008 91.8247 97.3068 84.9981 73.0242 7.8401 75.8623 74.8908 88.9555 102.8395 74.7835 13.1094 1043.3343 684.8115 684.8115 641.617 96.3056 283.3271 187.9644 208.4261 292.1862 921.8246 301.1164 438.4322 275.463 118.8884 360.6711 163.9365 256.7285 931.427;
	3.6695 49.5832 91.7028 114.8475 15.2394 32.3087 22.5219 17.8119 27.3906 30.6901 56.7301 84.6302 127.4103 66.3825 194.8577 73.4115 91.0846 96.5225 85.6371 72.1082 7.5073 75.387 75.4217 86.2819 101.3209 74.9848 13.1069 1139.5512 723.8089 723.8089 655.9597 101.5715 285.457 185.6067 208.118 308.8251 1009.1485 304.6443 432.0577 271.3952 118.8192 358.4115 162.9246 257.6885 1019.6605;
	3.5819 48.3988 91.0971 113.321 14.7771 32.1867 21.8698 17.8671 26.8029 30.3276 56.0601 83.6306 125.9055 63.7379 195.2102 73.5443 91.2494 96.6971 90.5267 73.3314 7.2899 75.1023 75.5806 87.5016 104.1703 73.729 12.2877 1011.8359 689.0124 689.0124 652.5486 97.4384 301.7558 188.7552 199.827 293.9786 1024.5273 276.3044 425.941 279.0276 119.5999 357.0578 158.3535 237.0074 1035.1995;
	3.7984 51.3248 93.4111 117.7389 15.1795 32.2876 24.7766 15.7197 27.3523 30.5983 56.5604 84.3771 127.0292 66.2503 192.0798 72.365 89.7861 95.1465 89.9476 70.5941 8.2589 75.3377 75.2018 87.175 105.6051 71.0186 11.2715 1129.6454 690.9082 690.9082 648.2169 86.8409 299.8254 181.7094 207.7037 294.7875 1066.3783 287.3135 438.6155 282.8708 121.1727 358.1769 181.9469 258.3679 1077.4864;
	3.5885 48.4881 89.335 109.553 14.9627 31.4522 25.5631 16.2973 26.4267 30.0505 55.5479 82.8666 124.7552 68.0407 190.2099 71.6605 88.9121 94.2203 87.9485 69.6444 8.521 73.3884 74.615 84.9515 103.1942 47.0319 11.3313 1143.4156 738.1718 738.1718 609.5179 88.969 293.1616 179.2649 213.3169 314.9533 1147.2865 267.1946 448.4691 276.4129 116.8783 348.9092 142.9073 227.5624 1159.2374;
	3.6574 49.4194 86.9536 105.4786 14.6407 26.7724 27.4512 15.5159 28.2587 30.9771 57.2606 85.4216 128.6017 66.8773 190.1928 71.654 88.9041 94.2118 88.637 69.6661 9.1504 62.469 75.6152 82.8009 101.5376 47.2279 10.1032 1235.3441 774.785 774.785 638.1019 103.0328 295.4565 179.3208 209.6693 330.575 1263.9746 276.0705 460.864 271.9756 113.8184 296.9957 161.6859 232.5441 1277.141;
	3.6026 48.6793 82.6401 107.0621 14.6692 27.4782 30.5763 14.388 28.0328 30.0879 55.617 82.9696 124.9102 68.1088 187.1818 70.5197 87.4966 92.7203 84.9847 67.8316 10.1921 64.1159 74.7777 81.5161 91.1262 44.3248 7.4164 1253.2656 794.6429 794.6429 674.1523 110.7334 283.2825 174.5986 213.5304 339.0477 1247.2132 301.9625 467.1016 244.088 112.0749 304.8253 150.8006 223.3558 1260.205;
	3.6043 48.7026 85.6597 100.1563 14.1181 27.724 29.1574 13.9733 27.5012 30.1324 55.6993 83.0924 125.0952 68.3667 190.6213 71.8155 89.1044 94.424 86.4662 70.3388 9.7191 64.6893 73.7144 83.3184 93.5512 59.2282 9.8589 1265.5466 809.9669 809.9669 738.6778 116.7056 288.2207 181.0523 214.3389 345.5859 1207.5548 321.8488 466.5321 250.5835 110.9811 307.5512 148.6032 235.2355 1220.1335;
	3.4986 47.2733 85.7374 96.4617 14.3226 26.9497 30.2441 13.5238 27.1548 28.7898 53.2175 79.3901 119.5213 67.5175 193.6212 72.9457 90.5067 95.91 86.2937 69.7437 10.0814 62.8825 74.2663 83.6918 95.3601 59.5815 9.7378 1243.1754 810.5601 810.5601 770.3763 116.3576 287.6457 179.5204 211.6766 345.839 1213.9397 313.1192 465.5217 255.4288 112.6444 298.9616 165.7327 235.5892 1226.5849;
	3.7551 50.7393 88.9538 106.9363 14.7049 32.1209 29.145 13.309 27.5361 27.8407 51.4631 76.7728 115.581 66.0164 192.3692 72.474 89.9214 95.2899 83.7936 67.5804 9.715 74.9487 72.0675 84.5463 97.8298 53.7793 10.1649 1259.6134 788.1639 788.1639 766.4558 120.2885 279.3121 173.9522 206.9704 336.2833 1227.531 305.058 451.4281 262.0442 113.0251 356.3275 179.4705 228.7775 1240.3178;
];
