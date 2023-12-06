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
	3.8563 52.107 95.1926 112.0715 15.3903 34.2447 24.685 18.6282 26.2435 29.6094 54.7326 81.6502 122.924 65.4687 196.6438 74.0844 91.9195 97.4073 37.565 72.0305 8.2283 79.9043 74.0617 89.5693 105.6669 76.4547 13.8099 1106.5458 685.4171 685.4171 623.7772 111.6565 125.2168 185.4067 205.2533 292.4446 1135.7782 240.9315 440.361 283.0363 121.5786 379.8878 157.3771 284.2811 1147.6092;
	3.798 51.3191 95.2853 119.2435 15.3785 33.6158 25.5145 18.9654 25.9619 29.8927 55.2563 82.4315 124.1001 65.8963 195.2573 73.5621 91.2715 96.7205 31.0382 72.9 8.5048 78.437 73.1035 89.9725 105.3153 76.6313 14.0063 1136.5337 708.1984 708.1984 618.1561 110.7258 103.4608 187.6448 206.5937 302.1646 1153.7772 249.0075 433.84 282.0946 122.7635 372.9118 148.6299 285.975 1165.7957;
	3.732 50.4277 92.8512 56.8077 15.0381 33.0443 24.5843 17.9311 24.5805 29.2826 54.1284 80.749 121.5671 66.751 200.7181 75.6194 93.824 99.4255 33.1481 72.8953 8.1948 77.1034 71.3085 89.0759 101.0037 74.0692 13.4693 1156.9355 679.4925 679.4925 556.1887 108.9802 110.4935 187.6328 209.2736 289.9168 1142.4124 225.2037 421.0215 270.5455 121.215 366.5718 142.5267 274.4252 1154.3125;
	3.7425 50.5699 91.3621 78.811 15.3435 33.7056 24.1073 17.9334 25.8723 29.2167 54.0067 80.5673 121.2936 66.9907 203.9715 76.8451 95.3448 101.0371 43.6819 73.1034 8.0358 78.6463 67.4684 88.8479 100.1966 74.5147 13.3767 1154.277 690.9436 690.9436 556.1595 102.5996 145.6063 188.1683 210.025 294.8026 1071.725 240.4772 436.5803 268.3838 117.6943 373.907 174.3642 275.2248 1082.8888;
	3.4405 46.489 90.4473 114.1883 15.0598 32.1637 21.5503 17.9441 26.3244 29.9583 55.3774 82.6123 124.3723 66.69 198.1264 74.643 92.6126 98.1417 75.8134 73.4073 7.1834 75.0487 57.919 87.599 100.3708 73.9768 13.2595 1134.6094 615.8247 615.8247 532.1409 96.4782 252.7114 188.9506 209.0823 262.7519 1112.4344 235.943 436.874 268.8503 116.0444 356.8032 182.6685 269.2065 1124.0223;
	3.8671 52.253 92.7416 117.6959 15.1045 34.1182 27.1035 18.2647 26.9022 30.7336 56.8105 84.7501 127.5908 65.6588 201.7552 76.0101 94.3088 99.9392 86.6982 73.8444 9.0345 79.609 71.8986 89.0868 103.9354 75.2709 13.8522 1131.0797 668.6417 668.6417 517.4054 95.4662 288.994 190.0756 205.8492 285.2871 1029.2818 218.5636 445.906 278.3983 117.6622 378.4841 201.7889 276.762 1040.0035;
	3.8853 52.4992 90.466 114.8559 14.3087 32.8606 28.2359 18.1229 26.2039 29.709 54.9166 81.9248 123.3374 65.3659 201.8128 76.0318 94.3357 99.9677 88.4655 73.7237 9.412 76.6747 71.4827 85.2339 99.0416 75.2856 13.6603 1136.2337 723.7939 723.7939 555.5491 97.156 294.8851 189.7651 204.9308 308.8188 1036.6306 245.1996 455.0637 265.2901 119.6635 364.5336 203.7013 270.2551 1047.4288;
	3.842 51.9138 87.6449 114.5156 14.4862 32.492 28.5725 18.0292 25.9854 30.1513 55.7342 83.1445 125.1735 63.5406 203.0315 76.4909 94.9054 100.5714 87.9002 73.6593 9.5242 75.8147 72.0496 85.1745 103.2744 73.5882 13.7174 1056.0712 663.1851 663.1851 468.8121 81.8806 293.0007 189.5993 199.2083 282.959 970.8696 228.8686 460.1356 276.6278 115.4791 360.4448 199.3512 257.0691 980.9829;
	3.7774 51.0403 91.324 116.1735 14.2285 32.3377 30.1086 17.932 26.7421 29.7675 55.0247 82.0861 123.5801 65.7399 203.8975 76.8172 95.3102 101.0004 89.9434 73.0163 10.0362 75.4546 67.1004 86.0337 103.1031 73.7629 13.7587 1143.5781 743.9578 743.9578 535.2212 72.5408 299.8112 187.944 206.1034 317.422 1089.3071 258.6898 466.3279 276.169 120.3088 358.7329 179.9646 268.678 1100.654;
	3.8062 51.4299 92.5392 113.6082 14.5934 32.6636 30.3191 17.5089 26.2027 29.6888 54.8793 81.8692 123.2536 66.2488 206.0076 77.6122 96.2966 102.0456 92.7085 73.4924 10.1064 76.2151 68.3947 85.6018 101.0005 71.0101 13.3664 1137.4093 733.3878 733.3878 639.1071 85.2493 309.0282 189.1696 207.6989 312.9121 1117.3553 294.583 462.0949 270.5371 120.3823 362.3485 172.4561 269.1698 1128.9944;
	3.7236 50.3137 90.9664 112.1044 14.6702 32.8375 27.2296 17.4503 25.9683 30.2634 55.9415 83.4537 125.6391 64.8057 205.4737 77.411 96.047 101.7811 90.198 73.8638 9.0765 76.6207 71.7849 84.9079 98.6698 70.7129 13.4066 1078.5862 738.086 738.086 602.0768 91.9432 300.6601 190.1257 203.1745 314.9167 1070.9534 291.5323 449.9063 264.2942 121.3613 364.2768 179.2878 263.1492 1082.1092;
	3.7501 50.6718 91.4873 114.0271 14.6614 32.9342 25.8655 17.531 25.8949 29.8826 55.2376 82.4036 124.0581 65.0666 203.9699 76.8445 95.3441 101.0362 91.2171 73.6932 8.6218 76.8466 70.4221 84.8256 99.818 70.8985 12.9224 1020.1522 741.4346 741.4346 645.982 100.9497 304.0571 189.6864 203.9926 316.3454 1090.7481 291.8618 448.6131 267.3696 115.6719 365.3505 191.9948 262.6033 1102.1101;
	3.7779 51.0482 91.9727 115.887 15.1617 32.0307 27.2387 18.6232 26.4767 31.1094 57.5053 85.7866 129.1513 66.0992 202.1204 76.1477 94.4796 100.1201 85.128 72.6067 9.0796 74.7383 73.7977 89.5335 104.1182 76.2426 13.6092 977.763 721.3023 721.3023 624.5123 103.648 283.7602 186.8899 207.2299 307.7557 949.5445 301.3739 439.2214 278.8881 119.5878 355.3271 158.3913 270.6275 959.4356;
	3.7965 51.2985 92.7026 117.4446 15.0958 32.1052 28.6205 18.9818 26.3932 30.785 56.9056 84.8919 127.8043 64.8988 205.0074 77.2353 95.829 101.5502 90.7612 73.6559 9.5402 74.9122 73.998 89.5102 104.9817 75.8771 13.9842 1025.5359 708.9131 708.9131 681.9985 102.0188 302.5372 189.5904 203.4666 302.4696 981.6683 305.2703 442.8027 281.201 118.4327 356.1538 157.9064 270.6387 991.894;
	3.6486 49.3 91.4843 112.5445 14.5931 31.8459 25.8785 18.4271 26.0435 30.5489 56.4693 84.241 126.8244 66.7574 204.3346 76.9819 95.5146 101.2169 89.9867 73.5524 8.6262 74.3072 73.1036 88.2146 100.9553 74.2615 13.0434 1070.5524 712.6023 712.6023 700.843 106.2382 299.9556 189.324 209.2935 304.0437 937.9615 330.7514 462.4619 270.4159 114.409 353.2775 168.3641 260.5802 947.7319;
	3.5816 48.3953 94.0315 116.4361 14.619 31.0278 26.7579 18.1177 25.2439 30.2793 55.9709 83.4976 125.7052 66.0104 200.7002 75.6126 93.8157 99.4166 88.3569 71.2981 8.9193 72.3981 73.0897 87.902 102.3172 75.4694 12.9794 1113.4824 711.4495 711.4495 643.154 98.0582 294.523 183.5216 206.9516 303.5518 999.5245 300.577 462.1575 274.0639 116.6537 344.2014 170.3685 260.6747 1009.9363;
	3.175 42.9015 92.5372 115.3164 14.6098 31.863 24.6468 18.1671 25.7632 30.2933 55.9967 83.5361 125.7632 63.3838 199.6958 75.2342 93.3462 98.9191 90.5959 72.1713 8.2156 74.347 73.0245 88.8193 100.3997 75.3213 11.8996 988.5132 688.0792 688.0792 626.7821 100.0672 301.9862 185.7692 198.7169 293.5805 1009.0605 286.353 454.124 268.9278 113.5537 353.467 161.065 244.1783 1019.5716;
	3.4218 46.2358 90.9043 109.747 14.5981 27.086 24.1813 14.4674 25.5431 30.2094 55.8415 83.3046 125.4146 56.0192 195.86 73.7891 91.5532 97.019 89.6251 69.92 8.0604 63.2007 73.1622 85.4034 97.7355 67.9839 10.3462 1072.9717 628.0309 628.0309 564.4712 92.8778 298.7504 179.9742 175.6278 267.9599 965.8072 276.7809 449.6977 261.7914 114.3081 300.4742 165.112 249.6879 975.8677;
	3.4495 46.6101 92.4063 109.6064 14.3496 28.4788 25.6547 15.5089 25.9992 30.0748 55.5928 82.9336 124.856 65.7101 198.1994 74.6705 92.6467 98.1779 92.3896 70.7445 8.5516 66.4505 73.2682 86.8596 100.9257 50.0371 11.6534 1212.9834 726.0133 726.0133 576.1819 103.5936 307.9653 182.0966 206.0102 309.7657 1131.2492 292.6269 466.145 270.3366 113.3354 315.9244 150.5452 231.7707 1143.033;
	3.5805 48.3798 92.382 107.4572 14.3737 26.9695 27.7367 14.5316 26.7569 30.4159 56.2233 83.8741 126.272 67.294 196.5464 74.0477 91.874 97.359 92.4504 72.1446 9.2456 62.9288 72.9402 87.4133 101.028 49.6203 10.1303 1274.8927 769.4427 769.4427 630.1013 114.4529 308.168 185.7005 210.9757 328.2956 1258.2011 292.1883 472.5293 270.6108 113.6932 299.1816 170.7849 250.4538 1271.3073;
	3.4899 47.1561 88.4569 96.9852 14.1489 26.6159 29.6009 13.4604 26.0283 30.2566 55.9288 83.4348 125.6106 67.5792 194.6433 73.3307 90.9844 96.4163 91.4154 71.0308 9.867 62.1038 72.2557 87.8733 96.5525 57.3052 9.479 1251.4343 729.984 729.984 633.0228 115.7296 304.7179 182.8335 211.8698 311.4598 1189.901 309.3651 450.9833 258.6227 112.0337 295.2593 142.9143 233.0519 1202.2959;
	3.3785 45.6507 84.6215 84.6007 14.0809 25.0169 27.5915 9.8546 25.8784 30.3627 56.1251 83.7275 126.0514 65.9183 186.4759 70.2537 87.1666 92.3706 90.3082 68.9372 9.1972 58.3729 71.1483 84.3547 95.0345 58.6195 6.6502 1285.8832 778.4892 778.4892 673.2967 113.4576 301.0272 177.4445 206.6628 332.1554 1169.2967 316.7601 441.1463 254.5567 106.2012 277.5212 135.6607 223.9445 1181.4769;
	3.569 48.2247 85.7352 84.4703 14.1313 27.2153 29.9801 9.636 25.2545 29.6402 54.7894 81.735 123.0515 66.5668 187.7455 70.732 87.7601 92.9995 89.2139 68.0651 9.9934 63.5024 71.6778 82.8484 91.7653 53.0053 7.9009 1260.3299 797.0349 797.0349 739.5747 115.8996 297.3796 175.1998 208.6958 340.0682 1200.0527 323.2677 445.9529 245.7999 109.5215 301.9087 167.1055 218.259 1212.5533;
	3.6633 49.4987 87.46 94.5491 14.2822 29.8637 27.6739 11.6282 25.442 29.0937 53.7792 80.228 120.7829 65.0966 193.0611 72.7347 90.2449 95.6326 86.919 69.7295 9.2246 69.682 70.8784 88.5453 96.7728 57.8263 9.8589 1248.7603 785.3175 785.3175 710.8678 110.6607 289.7299 179.4839 204.0866 335.0688 1174.6741 302.7722 431.4887 259.2128 114.3704 331.2879 172.3494 207.1686 1186.9103;
];
