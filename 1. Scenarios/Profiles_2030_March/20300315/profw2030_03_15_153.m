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
	3.9922 53.944 92.3574 119.2552 15.2429 34.9212 32.5879 18.7278 11.742 17.4608 32.2759 48.1494 72.4886 51.9268 205.7716 77.5232 96.1862 101.9287 92.0823 71.4018 10.8626 81.4827 21.5815 87.0713 103.9453 75.5706 13.9097 1272.6317 815.0138 815.0138 796.6931 115.8235 306.941 183.7885 162.7975 347.7392 1125.6787 273.1493 453.4577 278.4248 123.2169 387.3921 219.7001 278.5066 1137.4045;
	3.92 52.968 93.841 118.7994 15.2393 34.4124 32.6493 18.9817 12.4835 13.3025 24.5894 36.6826 55.2254 59.7337 199.6845 75.23 93.3409 98.9135 87.6053 70.5515 10.8831 80.2956 25.9183 86.5787 101.6793 76.2742 13.9115 1269.581 796.1967 796.1967 793.3962 112.7808 292.0176 181.5998 187.2733 339.7106 1186.4268 247.739 442.7026 272.3552 122.1221 381.748 217.0769 282.2843 1198.7854;
	3.9173 52.9315 94.1522 118.4064 15.335 35.0233 32.9302 18.9989 23.6724 15.1004 27.9129 41.6405 62.6896 60.7718 189.8541 71.5264 88.7458 94.044 88.9739 71.0197 10.9767 81.721 25.2314 89.3889 104.1526 76.1174 13.9577 1216.3818 783.3104 783.3104 794.8264 114.3978 296.5795 182.805 190.5277 334.2124 1142.307 270.3293 443.8108 278.9802 123.5961 388.525 218.1674 268.4422 1154.206;
	3.8364 51.838 92.3712 116.167 15.2243 34.5641 31.4458 18.9257 28.0357 29.0389 53.6779 80.0769 120.5554 65.4235 199.8166 75.2798 93.4027 98.9789 90.1273 65.9584 10.4819 80.6495 23.1311 87.8198 101.1944 74.7538 13.5871 1239.871 769.338 769.338 789.9697 112.5504 300.4245 169.777 205.1114 328.2509 1135.5242 282.2002 448.6438 271.0565 120.9206 383.4305 186.1743 259.7998 1147.3526;
	3.3768 45.6273 93.598 118.9636 14.8359 32.9198 31.0952 18.4852 27.839 29.5818 54.6815 81.574 122.8092 63.9325 199.3278 75.0956 93.1742 98.7368 89.8597 68.239 10.3651 76.8128 69.3658 89.4522 102.7834 74.8575 13.5198 1229.7472 733.711 733.711 744.9056 112.7557 299.5323 175.6474 200.4372 313.05 1061.234 291.1867 441.1522 275.3126 119.5611 365.19 188.9591 260.3219 1072.2885;
	3.8157 51.559 94.6389 119.3057 14.8928 35.0278 19.8981 19.0161 26.777 29.9252 55.3163 82.521 124.2349 52.7314 199.447 75.1405 93.2299 98.7959 60.4892 68.9144 6.6327 81.7316 70.5653 89.773 104.4236 76.2621 13.9423 1171.4762 755.6285 755.6285 765.3971 114.2711 201.6305 177.3859 165.3199 322.4015 1081.7622 297.8973 456.2889 279.706 115.5589 388.5752 173.2403 271.8449 1093.0306;
	3.7409 50.5478 93.9942 118.2254 14.7325 35.096 14.2732 18.8225 26.5048 29.0479 53.6945 80.1017 120.5926 66.9908 196.4516 74.012 91.8297 97.3121 84.1882 71.7066 4.7577 81.8906 69.344 89.2859 104.3017 74.7682 13.8271 1239.7777 788.9323 788.9323 766.6267 110.4173 280.6274 184.5729 210.0252 336.6111 1143.333 300.5851 434.5537 279.3795 119.2163 389.3313 188.732 276.5927 1155.2427;
	3.8029 51.3849 93.4013 117.8251 13.9781 34.5087 0.0 18.7693 0.6322 27.8017 51.3911 76.6654 115.4193 41.2653 203.8318 76.7924 95.2795 100.9678 82.0111 70.6582 0.0 80.5203 68.915 86.6367 102.1058 75.9826 14.0631 1229.7535 766.0531 766.0531 759.1586 114.4867 273.3705 181.8745 129.3724 326.8493 1121.111 301.6767 165.1559 273.4977 119.4168 382.8165 203.9198 281.6208 1132.7892;
	3.8037 51.3965 94.9755 120.3937 14.523 33.3041 1.8908 18.862 1.1131 28.4808 52.6464 78.5381 118.2387 27.8431 198.7327 74.8714 92.896 98.442 81.3626 70.8947 0.6303 77.7096 69.3695 86.3025 103.2058 75.6612 14.0433 1143.8218 701.8471 701.8471 742.0294 118.7563 271.2087 182.4832 87.2917 299.4547 1031.9013 293.4421 44.8422 276.444 119.3281 369.4536 195.1031 282.9722 1042.6503;
	3.7056 50.0703 95.1816 120.8616 14.8809 31.5418 0.2959 19.0738 0.8429 25.3685 46.8933 69.9556 105.3177 22.766 199.8335 75.2861 93.4105 98.9873 85.8395 72.3993 0.0986 73.5976 44.4731 88.9809 105.2384 76.6472 14.093 984.4554 619.8902 619.8902 586.2522 112.673 286.1318 186.3561 71.3746 264.4865 804.0362 255.3335 30.1644 281.8886 121.1287 349.9038 160.3316 280.6327 812.4116;
	3.6437 49.2338 95.2798 119.6077 15.2069 27.7781 0.08 18.7756 1.397 29.2626 54.0914 80.6937 121.4839 3.0975 198.5969 74.8202 92.8325 98.3747 77.5187 71.5724 0.0267 64.8156 70.2541 89.4153 104.4225 75.3228 13.9879 819.9283 690.7569 690.7569 529.7244 113.4885 258.3958 184.2276 9.7111 294.723 735.079 203.412 10.781 279.7032 115.7835 308.1519 150.0993 276.1545 742.736;
	3.3998 45.9386 94.1092 118.8811 14.5801 20.6687 0.0563 18.542 0.0 27.3263 50.5123 75.3543 113.4456 0.8076 202.0046 76.1041 94.4254 100.0627 38.32 72.9375 0.0188 48.227 69.8984 87.1917 101.0157 75.126 13.9649 553.0019 749.9401 749.9401 522.158 116.8787 127.7335 187.7413 2.532 319.9744 749.9092 216.3274 0.1552 270.5777 119.4652 229.2851 142.5488 279.5048 757.7208;
	3.8338 51.8029 94.428 120.0906 14.6556 21.9367 0.0424 18.4826 24.3134 24.3741 45.0552 67.2134 101.1895 49.2328 199.9884 75.3445 93.4829 99.064 54.7403 72.6635 0.0141 51.1856 72.1928 85.3222 103.4445 72.3489 14.0141 627.6487 714.264 714.264 515.8888 112.1282 182.4678 187.0359 154.3515 304.7527 580.9404 230.3328 0.0 277.0835 117.951 243.3509 150.1101 277.9599 586.9918;
	3.8132 51.5245 93.3665 118.5354 14.6123 21.7961 3.0125 18.2425 18.7662 23.2759 43.0251 64.1851 96.6303 37.1686 201.116 75.7693 94.01 99.6226 53.7174 72.8827 1.0042 50.8575 72.7234 84.0596 102.8927 74.1776 13.7488 558.5012 730.7084 730.7084 490.4553 98.6675 179.058 187.6002 116.5286 311.7689 693.3135 247.1781 2.6543 275.6056 119.2816 241.791 164.8806 271.2223 700.5355;
	3.895 52.6298 91.0671 120.0527 15.1982 21.22 8.9452 18.3855 13.4336 24.0654 44.4844 66.362 99.9077 32.3706 190.212 71.6613 88.913 94.2213 64.971 71.9143 2.9817 49.5132 70.3212 85.665 101.4029 72.8946 13.8265 426.0197 723.5619 723.5619 457.4921 93.8466 216.57 185.1076 101.4864 308.7198 630.4045 246.8513 17.2226 271.6148 118.9878 235.4 178.0575 249.6722 636.9712;
	3.6387 49.1669 94.5592 121.0513 14.76 12.3353 3.3212 18.9366 5.7063 26.8903 49.7064 74.1521 111.6356 23.0737 179.4756 67.6164 83.8944 88.903 58.4766 69.971 1.1071 28.7823 70.5623 88.2597 105.6535 74.9718 14.0319 475.6016 596.7412 596.7412 434.4851 98.4851 194.9222 180.1055 72.3391 254.6096 521.6787 223.7379 11.0124 283.0006 123.2591 136.8394 167.7092 254.8241 527.1129;
	3.5944 48.5689 92.6861 119.678 14.103 19.6041 3.9693 18.5442 3.4404 27.8809 51.5375 76.8837 115.748 27.9956 182.0158 68.5734 85.0818 90.1613 59.6053 69.5724 1.3231 45.743 70.8505 84.8359 104.2409 74.8465 13.6431 1084.4042 492.4011 492.4011 285.914 92.9825 198.6842 179.0796 87.7699 210.0911 862.5663 228.7226 100.9755 279.2166 121.6482 217.4751 138.2707 244.1546 871.5514;
	3.4107 46.0854 94.6539 120.9202 14.7772 23.8603 4.7744 18.5201 2.291 29.3205 54.1985 80.8535 121.7245 46.3718 187.7495 70.7335 87.762 93.0015 70.3044 69.8216 1.5915 55.6741 74.0992 85.8247 105.3023 75.4169 13.9179 1244.246 602.9639 602.9639 211.5641 69.8096 234.3478 179.721 145.3818 257.2646 1057.8497 203.4016 126.2515 282.0598 123.278 264.6908 179.0014 274.6705 1068.8689;
	2.733 36.9291 95.1642 120.3655 15.2628 34.4049 16.4508 18.3456 10.1259 26.5054 48.9949 73.0907 110.0376 63.8423 199.6152 75.2039 93.3085 98.8792 55.1812 71.9269 5.4836 80.2781 56.5692 87.4864 104.0662 74.8374 13.3922 1233.1873 761.1089 761.1089 308.7103 61.1377 183.9375 185.14 200.1543 324.7398 1235.8357 135.1485 279.9246 278.7487 122.423 381.6649 183.0085 281.1265 1248.709;
	3.9082 52.8079 95.1761 93.3383 15.3603 34.6483 11.5012 18.7344 9.7002 16.1872 29.9219 44.6376 67.2016 63.7066 200.0278 75.3593 93.5014 99.0835 45.874 71.7869 3.8337 80.8461 44.0999 88.7182 105.0655 76.2522 13.86 1267.6531 735.5019 735.5019 358.6622 54.7788 152.9132 184.7796 199.7289 313.8141 1177.8841 110.1786 111.2642 281.4254 123.115 384.3657 198.1805 285.3742 1190.1538;
	3.8505 52.0282 95.3317 120.7548 14.9462 33.622 3.3406 19.087 1.7136 14.8297 27.4125 40.8941 61.5658 60.343 195.214 73.5457 91.2512 96.699 64.1391 70.8983 1.1135 78.4513 57.038 87.4457 106.0368 76.1801 13.9741 1234.9519 641.796 641.796 526.1792 45.8358 213.797 182.4925 189.1836 273.8329 1171.2042 145.1228 7.0585 284.027 122.4159 372.9797 191.6047 286.4638 1183.4042;
	3.7893 51.2024 95.3183 119.8202 15.3009 33.5266 0.0 19.0483 26.3342 29.0049 53.615 79.9831 120.4141 61.9335 198.1506 74.6521 92.6239 98.1537 68.3442 71.7189 0.0 78.2288 72.5048 89.7772 106.467 76.5384 14.0853 1270.0983 688.6858 688.6858 503.2272 72.8159 227.814 184.6045 194.17 293.8393 1217.6183 212.9117 398.1414 285.1794 122.7181 371.9223 196.6711 287.1202 1230.3018;
	3.66 49.4541 94.2185 119.7201 15.3517 33.4075 0.7909 18.917 26.3056 28.902 53.425 79.6996 119.9873 63.0079 198.6202 74.829 92.8434 98.3863 65.0881 73.2553 0.2636 77.9508 69.6484 88.4962 105.4107 76.4576 14.0474 1301.4569 739.706 739.706 590.7273 110.8236 216.9604 188.5594 197.5384 315.6079 1233.3483 244.7798 443.8438 282.35 123.1068 370.6002 197.0311 285.0744 1246.1957;
	3.6256 48.99 91.1389 117.7904 15.3657 33.4436 28.1257 18.1042 26.2186 26.1577 48.3521 72.1319 108.5941 55.6694 196.6668 74.0931 91.9303 97.4186 72.0647 73.8411 9.3752 78.035 69.5994 85.658 104.4627 75.9218 13.6448 1304.3011 702.033 702.033 585.6716 114.2194 240.2158 190.0672 174.5311 299.5341 1200.0989 237.6087 439.2049 279.8107 120.824 371.0005 194.0659 278.6222 1212.5999;
];