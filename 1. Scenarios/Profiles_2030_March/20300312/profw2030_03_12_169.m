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
	3.6957 49.9376 88.49 105.4948 15.3433 30.8083 27.6923 11.702 27.2761 28.1884 52.1059 77.7317 117.0246 64.8814 196.0896 73.8756 91.6605 97.1328 90.9139 67.4632 9.2308 71.886 63.0871 82.7798 96.0414 61.3103 8.8474 1219.4905 777.1725 777.1725 759.9105 111.9414 303.0465 173.6504 203.4119 331.5936 1124.1822 293.3866 461.8293 257.2537 113.1248 341.7664 190.6229 242.1888 1135.8924;
	3.7874 51.176 87.9008 100.8197 15.1466 30.1996 27.5632 10.5672 26.7207 26.3476 48.7031 72.6555 109.3824 64.0477 194.7578 73.3739 91.0379 96.473 88.8305 66.5258 9.1877 70.4658 65.4097 80.3034 96.1679 61.0345 7.3928 1202.1647 810.6327 810.6327 776.8993 114.3635 296.1017 171.2376 200.7983 345.8699 1231.1346 277.184 453.7338 257.5927 110.8381 335.0147 200.021 239.5702 1243.9589;
	3.7324 50.4333 86.4458 84.7931 14.8961 31.226 25.8043 9.329 26.7929 26.3299 48.6705 72.6068 109.3091 63.2836 191.6323 72.1964 89.577 94.9248 86.8464 66.9849 8.6014 72.8607 66.7283 79.2595 80.6623 58.0342 7.3324 1236.0446 812.5517 812.5517 768.0811 113.3366 289.4882 172.4194 198.4025 346.6887 1200.8686 256.59 458.6654 216.0597 110.4143 346.4004 182.4603 247.9838 1213.3776;
	3.6532 49.3634 86.7053 91.8571 15.1913 31.6903 21.4888 10.9569 25.9487 26.6694 49.298 73.5429 110.7185 56.8858 187.8775 70.7818 87.8218 93.0649 85.8016 62.4386 7.1629 73.944 68.9338 81.4788 80.5113 55.4089 7.686 1150.1559 817.4633 817.4633 744.728 115.5946 286.0053 160.7172 178.3446 348.7844 1185.2937 251.9254 435.6714 215.6552 111.0528 351.5511 188.5736 242.7471 1197.6405;
	3.5789 48.3583 83.9845 76.7816 14.9544 30.7375 17.396 8.724 19.7784 26.2731 48.5655 72.4501 109.0733 55.9433 186.9227 70.422 87.3755 92.5919 90.1423 65.0643 5.7987 71.7209 69.3123 81.8344 67.2927 48.3845 6.9446 1194.9535 794.9088 794.9088 719.9998 110.4492 300.4743 167.4758 175.3897 339.1611 1173.6715 246.1369 378.8557 180.2483 101.2402 340.9816 192.9325 222.5071 1185.8972;
	3.6989 49.9799 83.7702 76.3449 15.3324 31.3638 15.7321 6.1942 22.0957 27.4865 50.8084 75.7962 114.1108 49.6321 179.0216 67.4454 83.6822 88.6782 91.0462 60.9071 5.244 73.1822 67.5679 82.2929 54.5386 33.838 4.6386 1150.222 761.9145 761.9145 668.4631 100.238 303.4874 156.7749 155.6032 325.0835 1124.5064 232.2914 344.7071 146.0856 88.7326 347.9289 187.615 185.9285 1136.22;
	3.5124 47.4597 76.5161 63.6943 15.343 29.5176 14.4811 5.0293 16.9237 27.3139 50.4894 75.3202 113.3942 61.0642 193.2309 72.7986 90.3242 95.7167 90.6897 66.9574 4.827 68.8744 70.0959 79.1751 49.8621 25.5163 3.4178 1197.463 712.0749 712.0749 594.3551 65.7439 302.2991 172.3485 191.4446 303.8186 1118.1848 212.8813 289.1112 133.5593 79.799 327.4485 161.8361 136.8343 1129.8326;
	3.7284 50.3792 73.1627 70.2916 15.353 29.8069 16.0264 5.0364 14.7776 23.3991 43.2529 64.5248 97.1418 65.09 188.6422 71.0699 88.1793 93.4437 91.4831 66.8948 5.3421 69.5495 52.1979 80.1168 57.0585 18.0827 2.6535 1197.4869 730.2575 730.2575 689.0646 67.0425 304.9436 172.1874 204.0658 311.5765 1129.9927 219.3347 272.2838 152.8352 77.832 330.6584 158.8938 140.6037 1141.7635;
	3.0026 40.5721 63.9221 65.5045 14.8137 23.6832 16.2503 3.4958 19.6728 20.1227 37.1965 55.4899 83.5397 65.4114 180.3828 67.9582 84.3185 89.3524 89.2594 64.5566 5.4168 55.2607 25.0901 79.0083 53.774 11.1135 1.6253 1244.2621 830.3064 830.3064 794.6919 89.7516 297.5313 166.1688 205.0735 354.2641 1168.1151 241.8661 263.5538 144.0376 56.5453 262.7253 135.357 160.2772 1180.2829;
	2.6539 35.8603 56.0726 63.5591 14.7581 18.8853 19.4665 2.2549 20.2152 17.7128 32.7418 48.8443 73.5348 63.077 166.6898 62.7994 77.9178 82.5696 87.8604 64.8306 6.4888 44.0657 17.0683 69.3435 35.1735 3.6973 1.0134 1154.3314 785.1784 785.1784 767.0767 101.2866 292.8681 166.8742 197.7548 335.0094 1130.7528 225.3691 350.6629 94.2148 48.57 209.5008 127.279 126.0731 1142.5314;
	2.1881 29.5665 43.0039 49.2551 14.4473 14.3604 19.0582 1.4454 19.5289 16.0498 29.6678 44.2585 66.6309 63.8208 169.5167 63.8644 79.2392 83.9699 88.9515 67.4549 6.3527 33.5077 28.8558 56.082 23.7513 4.2244 0.9126 1168.1777 795.1263 795.1263 755.9335 96.5822 296.505 173.629 200.0867 339.2539 1120.0865 224.0721 409.3667 63.6194 36.3175 159.3051 90.7654 97.7922 1131.7541;
	1.5193 20.5295 32.7077 29.0677 11.1792 10.3801 20.2654 1.0859 17.8216 16.3605 30.2421 45.1153 67.9208 65.0833 167.6914 63.1767 78.386 83.0657 84.3571 60.2079 6.7551 24.2202 33.3199 36.7516 16.8588 4.3849 0.627 1011.6335 722.1839 722.1839 724.9496 93.057 281.1903 154.9754 204.045 308.1318 1033.6096 198.7461 410.4407 45.1575 29.3525 115.1499 69.7657 76.1287 1044.3764;
	1.1593 15.6649 32.8362 29.2032 9.9182 8.6966 20.1014 1.8567 16.0028 14.7362 27.2396 40.6362 61.1775 64.689 175.2143 66.011 81.9025 86.7922 87.4223 60.7692 6.7005 20.2921 36.9829 37.2676 20.8512 6.2229 1.8717 1005.8678 758.0826 758.0826 753.4876 94.9117 291.4078 156.4202 202.8087 323.4486 1052.0425 216.4567 447.151 55.8514 31.9031 96.4746 58.0995 51.0283 1063.0013;
	0.9186 12.4122 25.4171 32.5317 8.4297 8.7912 14.1465 2.2885 13.4347 18.032 33.332 49.7247 74.8603 64.3083 176.8756 66.6369 82.6791 87.6151 86.2795 65.2051 4.7155 20.5129 49.7521 37.809 23.5645 5.2995 3.5157 991.0065 730.1143 730.1143 738.4051 87.632 287.5982 167.838 201.6152 311.5154 908.9153 215.0343 433.4732 63.1193 29.5819 97.5241 41.7793 59.3826 918.3832;
	0.9113 12.3137 23.8089 16.4137 7.3815 9.1807 12.7094 1.2818 13.1579 17.75 32.8106 48.947 73.6895 64.4774 164.6419 62.0279 76.9605 81.5552 78.3615 64.0873 4.2365 21.4216 54.8655 46.9974 21.5905 0.4796 2.876 881.5476 693.2383 693.2383 675.366 78.5864 261.2049 164.9608 202.1455 295.7817 810.9094 208.3009 370.8176 57.8317 29.3179 101.8444 39.1035 47.116 819.3563;
	0.9065 12.2489 17.2501 25.5914 7.5772 1.1812 5.9335 0.7711 5.979 12.2862 22.7108 33.8801 51.0063 61.459 161.6194 60.8892 75.5477 80.058 81.3659 59.7706 1.9778 2.7561 47.2866 41.5409 19.0615 0.6248 1.9151 843.22 517.8849 517.8849 576.7332 70.5017 271.2198 153.8496 192.6823 220.9642 588.6625 194.3767 237.6313 51.0575 21.7222 13.1031 34.6009 19.7351 594.7944;
	0.485 6.5529 18.9722 1.3336 6.5625 0.1241 4.2572 0.0006 9.7071 16.6499 30.777 45.9133 69.1222 62.6417 159.699 60.1657 74.65 79.1067 84.4766 60.3359 1.4191 0.2896 44.7847 41.7114 15.3841 3.3304 1.2023 810.9951 524.4948 524.4948 620.336 80.4557 281.5886 155.3048 196.3903 223.7845 720.8501 206.9121 234.9648 41.2074 31.4861 1.3767 24.9577 10.8293 728.359;
	0.9081 12.2704 0.0 0.0 2.4938 0.0207 5.7125 0.0 0.0075 17.9303 33.1438 49.444 74.4377 64.2057 128.857 48.5461 60.2331 63.8292 83.686 52.9949 1.9042 0.0484 61.8051 17.5981 5.4098 0.0 0.7766 775.8481 527.6042 527.6042 650.8069 85.8927 278.9535 136.409 201.2934 225.1111 725.1828 215.449 341.6296 14.4906 62.4006 0.2302 4.2639 0.0599 732.7368;
	0.3794 5.1268 22.0242 4.6399 0.3138 0.0098 8.8333 0.9135 2.9521 22.4802 41.5543 61.9909 93.3269 64.8153 116.1526 43.7598 54.2946 57.536 0.5592 60.9033 2.9444 0.0228 67.3815 36.5494 15.9078 4.2805 0.5976 839.126 512.6944 512.6944 669.7055 84.6914 1.8642 156.7652 203.2048 218.7496 693.1335 205.1997 366.1218 42.6103 78.3896 0.1082 8.9262 0.0018 700.3537;
	0.2863 3.8692 29.6666 50.4034 2.6623 1.1129 21.3418 1.9058 11.8053 26.5454 49.0688 73.201 110.2037 66.0361 104.6515 39.4269 48.9185 51.839 1.691 66.7144 7.1139 2.5967 70.3507 60.2194 28.4963 16.145 2.0288 676.1477 375.4519 375.4519 637.0581 70.1273 5.6368 171.723 207.032 160.1928 569.567 194.1492 353.9964 76.3294 83.198 12.3453 17.292 0.034 575.5;
	0.6625 8.9524 44.1818 71.4517 5.814 0.4018 19.6368 3.3338 10.0597 26.627 49.2196 73.426 110.5425 56.6985 123.0632 46.3633 57.5249 60.9592 78.3285 69.8035 6.5456 0.9375 71.0496 73.0506 32.9359 12.5038 1.7871 551.0859 358.6806 358.6806 542.3671 57.771 261.0949 179.6744 177.7573 153.0371 598.1045 185.8657 290.9403 88.2212 74.7444 4.457 2.8328 21.6549 604.3347;
	0.465 6.2829 43.8422 57.8838 5.5977 0.0016 3.0335 2.1489 0.0 22.9705 42.4605 63.3428 95.3622 40.0189 147.0755 55.4098 68.7492 72.8537 73.9702 71.4365 1.0112 0.0037 68.0573 65.2583 33.4108 10.7113 1.183 392.0471 333.9056 333.9056 467.5343 47.6724 246.5674 183.8778 125.4647 142.4664 598.6785 147.2064 85.0426 89.4932 67.0624 0.0175 2.1537 13.8538 604.9147;
	0.5843 7.8945 40.1347 44.6254 7.7974 0.0 0.7432 2.5592 0.0 18.9076 34.9504 52.1392 78.4952 20.9959 147.589 55.6033 68.9893 73.108 79.1872 72.8698 0.2477 0.0 49.1534 63.8709 33.2435 29.0094 1.4731 337.7538 382.7157 382.7157 516.6646 52.022 263.9572 187.567 65.8251 163.292 461.9967 142.0734 45.359 89.0451 57.1829 0.0 0.0 0.4429 466.8092;
	0.1749 2.3632 43.1323 27.4114 2.0672 0.0 5.0869 4.908 1.542 23.7671 43.9332 65.5397 98.6697 6.5508 158.9863 59.8972 74.3168 78.7537 81.3079 70.7864 1.6956 0.0 72.6969 64.9698 36.1896 30.7963 2.6026 276.0161 300.8536 300.8536 408.8673 50.7414 271.0262 182.2044 20.5377 128.3642 353.8907 123.5759 14.0662 96.9364 53.0642 0.0 0.0 51.6501 357.5771;
];
