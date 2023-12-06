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
	3.8857 52.504 89.8679 108.9046 14.1828 34.2078 28.6665 18.5712 26.0895 29.5979 54.7113 81.6186 122.8763 64.1243 192.0824 72.3659 89.7873 95.1478 32.1952 71.0072 9.5555 79.8182 73.2506 86.8179 100.4884 75.0336 13.4286 1188.3484 703.6454 703.6454 609.1985 112.3821 107.3175 182.7726 201.0385 300.222 1191.7124 223.7216 472.9551 269.1652 122.0547 379.4785 146.4922 261.9456 1204.126;
	3.8139 51.5345 92.4006 115.0083 14.6281 33.6747 29.0691 18.7037 26.2267 29.4798 54.493 81.2928 122.3858 63.4008 189.1693 71.2684 88.4256 93.7048 31.0367 72.0428 9.6897 78.5742 71.1535 86.6787 100.2473 75.156 13.2155 1143.5213 695.5139 695.5139 595.6911 109.2562 103.4557 185.4382 198.7702 296.7526 1128.3826 216.9194 463.2543 268.5196 123.1256 373.5643 143.7674 271.4544 1140.1366;
	3.875 52.3596 93.6138 60.7324 14.7273 33.9809 29.1803 18.1975 26.4261 29.6386 54.7866 81.7308 123.0453 63.6988 191.7893 72.2555 89.6503 95.0026 29.6811 70.5523 9.7268 79.2888 71.6475 87.1304 101.6042 74.8567 13.3763 1101.3349 696.9945 696.9945 566.3449 112.3996 98.9369 181.6018 199.7043 297.3843 1153.4839 216.1263 464.4885 272.1541 122.5427 376.9618 142.1532 268.1727 1165.4994;
	3.7752 51.0107 91.9083 77.1637 14.4847 33.3999 27.9598 18.2109 26.1002 30.283 55.9776 83.5076 125.7202 63.4909 192.7691 72.6246 90.1083 95.4879 33.0088 71.0232 9.3199 77.9331 67.4311 86.1631 99.9124 75.9289 13.3486 1104.0191 699.1164 699.1164 513.9549 100.3635 110.0293 182.8138 199.0524 298.2897 1070.5391 223.94 449.8989 267.6226 120.1806 370.5164 170.9975 269.7476 1081.6906;
	3.5736 48.2878 90.6417 117.4491 14.635 32.688 23.686 18.4062 26.4148 30.0518 55.5503 82.8701 124.7605 63.9415 181.7982 68.4914 84.9801 90.0535 69.3099 70.2503 7.8953 76.2721 62.024 86.9826 102.173 74.9975 13.2179 1119.4452 661.0135 661.0135 509.4798 100.2443 231.033 180.8244 200.4652 282.0324 1143.2092 231.4941 458.0857 273.6776 120.3705 362.6193 182.1162 264.7601 1155.1176;
	3.7064 50.0821 90.296 118.5807 14.8917 33.2319 28.1964 18.9025 27.0476 31.0741 57.4401 85.6893 129.0048 65.329 187.2825 70.5576 87.5437 92.7702 86.5494 71.098 9.3988 77.5411 74.4414 87.8869 105.603 76.1701 13.6787 1200.9033 723.6103 723.6103 495.0655 98.9967 288.4979 183.0065 204.8153 308.7404 1097.2014 223.8477 459.257 282.865 118.2127 368.6528 191.9376 252.3906 1108.6306;
	3.6796 49.7199 90.3079 118.3418 14.5525 33.0107 30.1748 18.4214 27.3955 31.0649 57.4231 85.6639 128.9666 64.6893 192.4393 72.5004 89.9542 95.3246 87.6309 71.6781 10.0583 77.0249 75.4362 86.4357 102.0312 75.1671 13.1643 1241.178 722.7977 722.7977 544.3205 95.4094 292.1029 184.4997 202.8096 308.3937 1119.8436 250.1194 459.1883 273.2979 118.6432 366.1986 197.0436 240.9847 1131.5087;
	3.5718 48.2632 88.5003 116.5241 14.9848 32.631 28.779 18.4176 26.5733 30.875 57.072 85.1402 128.1782 66.5025 194.9637 73.4515 91.1342 96.5751 82.1001 70.7433 9.593 76.1391 75.0859 85.1651 104.054 74.9297 13.1449 1172.5617 709.6448 709.6448 530.4252 74.2757 273.667 182.0934 208.4942 302.7818 1101.3447 238.8001 461.2141 278.716 114.3767 361.987 187.2526 250.3258 1112.8171;
	3.6505 49.3264 92.0897 119.3251 14.8571 33.2342 27.7315 18.6843 25.3541 30.0815 55.6051 82.9519 124.8836 67.3003 194.8392 73.4046 91.076 96.5134 84.7241 69.669 9.2438 77.5464 72.3813 86.0322 105.4072 75.6528 13.4543 1178.5995 761.5903 761.5903 572.6196 66.6024 282.4136 179.3281 210.9956 324.9452 1179.1319 273.954 453.0494 282.3408 118.4461 368.6778 171.4904 261.3612 1191.4145;
	3.5574 48.0679 90.303 112.4834 14.7233 32.9116 27.2038 18.4095 24.633 30.0793 55.6011 82.9459 124.8745 68.1407 193.6979 72.9745 90.5425 95.948 89.9404 69.4699 9.0679 76.7938 71.1133 85.1955 103.2542 72.9798 13.1961 1123.2826 722.4062 722.4062 641.4481 74.678 299.8013 178.8156 213.6303 308.2266 1125.2231 288.5521 446.0786 276.5738 116.5276 365.0999 148.6258 260.4494 1136.9442;
	3.6055 48.7179 94.1166 116.4643 14.8832 32.2778 25.8917 18.8312 26.0294 31.0371 57.3716 85.5872 128.851 67.9635 198.2896 74.7045 92.6889 98.2225 88.0959 69.7526 8.6306 75.3149 72.6764 87.2773 104.2006 73.3637 13.3799 1140.9833 729.9299 729.9299 630.6725 79.1018 293.6531 179.5435 213.0748 311.4367 1090.7093 297.3982 470.5359 279.1087 121.1969 358.0686 154.7347 265.3396 1102.0709;
	3.6757 49.6671 91.9612 118.4118 14.7149 32.7299 25.9528 18.0655 26.0351 30.5737 56.515 84.3093 126.9271 66.9294 196.105 73.8814 91.6677 97.1404 87.5365 69.2809 8.6509 76.3698 72.9078 84.4149 100.4477 70.7617 12.8826 1058.3833 696.0575 696.0575 604.8373 92.1509 291.7883 178.3292 209.8327 296.9845 1076.6696 277.1971 464.0483 269.0563 116.5894 363.0839 175.697 260.3997 1087.8849;
	3.7535 50.7187 93.1339 118.3079 14.749 32.639 29.0172 18.6093 26.3253 31.2221 57.7135 86.0972 129.6189 68.4712 199.2085 75.0506 93.1184 98.6777 89.0528 70.5762 9.6724 76.1576 74.7258 87.3128 102.2767 73.2605 13.3245 1093.6815 708.8842 708.8842 627.7665 97.0742 296.8426 181.6633 214.6663 302.4573 992.2069 289.2621 466.778 273.9553 116.099 362.0748 156.4854 260.2739 1002.5424;
	3.7897 51.2066 91.8214 116.8954 14.5759 32.3373 27.6428 18.319 26.1402 31.0833 57.457 85.7145 129.0428 65.8298 199.5496 75.1792 93.2778 98.8467 88.8748 70.705 9.2143 75.4538 75.3718 85.9394 98.8657 73.7922 13.2465 1052.0021 629.4775 629.4775 623.0984 93.3356 296.2493 181.9949 206.3852 268.5771 942.895 282.6006 452.2368 264.8189 114.1239 358.7289 153.3191 263.3906 952.7168;
	3.7693 50.9314 94.0026 116.2238 14.3097 32.3936 25.023 18.8036 26.1337 31.0028 57.3081 85.4924 128.7084 67.0639 196.472 74.0197 91.8393 97.3222 85.9072 70.594 8.341 75.5851 75.1563 88.0674 102.3305 74.3668 13.5331 1050.3708 661.4289 661.4289 655.3399 100.8522 286.3574 181.7092 210.2545 282.2097 913.0943 306.3305 445.1023 274.0995 114.7983 359.3531 168.4987 258.5105 922.6057;
	3.7829 51.1156 93.3386 118.8939 14.2385 32.2619 26.3589 19.1238 25.9961 30.7335 56.8105 84.7501 127.5908 66.1522 198.3769 74.7373 92.7296 98.2657 84.4083 70.4717 8.7863 75.2777 74.6515 88.1986 105.0803 75.9692 13.9817 1076.4753 683.9517 683.9517 666.187 105.9465 281.3609 181.3943 207.3962 291.8194 1000.7861 304.5252 439.7345 281.465 115.1715 357.8916 171.6687 253.2268 1011.211;
	3.5988 48.6276 92.5355 117.6036 14.2999 32.311 23.9114 18.8832 25.9547 30.863 57.0499 85.1072 128.1284 62.9023 199.4084 75.1259 93.2118 98.7767 91.0618 72.4147 7.9705 75.3922 75.4708 89.3618 103.9432 75.7783 13.2618 1038.7967 707.3187 707.3187 676.9595 101.9048 303.5395 186.3956 197.2071 301.7893 1077.404 296.1088 420.8346 278.4192 115.6936 358.4362 170.9118 235.3516 1088.627;
	3.5884 48.4874 88.5276 112.0433 14.0491 29.8584 23.836 14.6926 25.7467 29.8158 55.114 82.2193 123.7807 63.8355 193.536 72.9136 90.4668 95.8678 90.638 71.4568 7.9453 69.6696 74.4032 85.9576 98.6221 66.3519 10.6921 1112.4733 695.9106 695.9106 676.0509 100.4368 302.1268 183.93 200.133 296.9219 1104.5403 294.1805 434.4818 264.1662 116.0409 331.2294 173.1717 239.5415 1116.0459;
	3.5895 48.5023 87.2292 108.1909 14.2746 31.6471 23.5838 14.897 25.6612 29.9547 55.3707 82.6022 124.3572 65.7613 188.3555 70.9618 88.0453 93.3017 86.074 70.5265 7.8613 73.8432 74.6405 85.4363 97.4516 42.2924 11.0007 1184.487 757.0133 757.0133 657.3382 103.0376 286.9135 181.5354 206.1706 322.9923 1206.6481 286.089 436.1614 261.0311 113.3289 351.0716 148.6008 216.1997 1219.2173;
	3.5674 48.2029 85.6507 101.6939 14.0529 25.5175 24.309 14.8735 25.1639 29.6922 54.8856 81.8785 123.2676 62.8207 191.1377 72.01 89.3457 94.6798 87.4347 68.3539 8.103 59.5408 73.6487 85.2037 94.8275 48.4239 10.1505 1235.9325 730.5627 730.5627 617.6419 116.6891 291.4492 175.943 196.9514 311.7067 1232.2309 283.5635 422.0258 254.0024 114.9448 283.0741 155.3207 192.221 1245.0667;
	3.609 48.7649 86.0741 107.9413 13.9265 29.548 29.1747 15.0108 25.792 30.0781 55.5988 82.9425 124.8695 64.6764 195.5685 73.6793 91.4169 96.8746 88.8856 70.1106 9.7249 68.9452 74.6956 84.3842 94.5169 56.0872 10.1829 1286.0815 728.9833 728.9833 636.5096 115.1959 296.2853 180.4649 202.7693 311.0329 1227.8759 294.1156 432.2641 253.1702 113.5884 327.7854 137.9822 213.573 1240.6663;
	3.5797 48.3691 82.8329 99.3417 14.0362 29.3805 27.8166 14.3192 25.1453 29.7442 54.9818 82.022 123.4836 63.3183 189.8465 71.5236 88.7422 94.0403 88.261 69.4833 9.2722 68.5545 74.7581 84.7362 96.2347 61.7525 10.9206 1263.6914 738.3717 738.3717 669.5012 114.6243 294.2035 178.8501 198.5114 315.0386 1095.9785 278.1029 438.6328 257.7715 114.1356 325.9277 147.4409 218.6244 1107.3949;
	3.5637 48.1533 87.5698 97.0601 14.5805 28.9671 30.3225 13.6334 26.4908 29.8208 55.1233 82.2331 123.8014 65.7176 193.0609 72.7346 90.2447 95.6325 87.6949 69.4283 10.1075 67.59 73.8931 85.828 97.0937 62.6769 10.1893 1230.0051 760.7193 760.7193 719.5595 115.6693 292.3163 178.7087 206.0337 324.5735 1108.9056 278.6418 455.993 260.0725 114.9761 321.3421 163.8873 220.5841 1120.4567;
	3.6615 49.4745 88.98 105.9967 14.689 32.2171 28.3776 13.5135 26.1825 29.5457 54.6147 81.4744 122.6593 62.5217 186.8434 70.3922 87.3384 92.5527 85.5073 68.0558 9.4592 75.1731 73.0071 85.824 99.7326 58.7203 10.4408 1155.2069 745.9219 745.9219 715.0267 113.5561 285.0242 175.1757 196.0141 318.26 1062.9794 281.8221 445.2638 267.1409 119.4758 357.3945 179.46 221.1373 1074.0521;
];
