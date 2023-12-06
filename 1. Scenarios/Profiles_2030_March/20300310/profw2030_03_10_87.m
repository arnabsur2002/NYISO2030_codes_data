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
	3.2557 43.9919 82.8874 114.5071 14.7529 34.2887 29.6302 6.1967 26.3704 11.3007 20.8891 31.1625 46.9149 37.27 168.3637 63.43 78.7002 83.3988 87.3446 68.9753 9.8767 80.007 19.3763 36.808 44.9537 23.4719 4.8125 1255.7373 811.115 811.115 691.2075 89.3212 291.1487 177.5425 116.8465 346.0757 1247.2005 218.3707 434.1086 120.4117 111.676 380.3762 199.9148 118.1887 1260.1922;
	3.027 40.9011 72.0645 40.2264 14.7767 27.3203 29.8267 0.6554 9.8951 11.404 21.0801 31.4473 47.3438 37.1281 179.6779 67.6926 83.9889 89.0032 89.8988 72.0052 9.9422 63.7473 23.5982 31.9541 17.0137 20.4682 4.3557 1253.5851 811.0103 811.0103 723.502 82.0153 299.6626 185.3416 116.4016 346.0311 1280.4834 211.1953 444.4056 45.5723 108.7126 303.073 199.3551 96.4283 1293.8218;
	2.9877 40.3701 82.6354 44.4508 14.5481 24.2189 30.453 3.6219 9.7142 11.1328 20.5789 30.6996 46.2181 30.8858 186.9243 70.4226 87.3762 92.5927 89.1059 67.3637 10.151 56.5108 25.1786 36.2644 33.0725 26.9527 4.6292 1263.3866 824.85 824.85 748.808 96.0448 297.0198 173.3942 96.8312 351.936 1280.0607 216.754 449.2154 88.5871 30.0399 268.6685 203.4875 132.3424 1293.3946;
	3.4935 47.2054 79.4498 46.4961 14.3741 13.9663 30.8616 6.1895 12.0577 12.2329 22.6123 33.7331 50.785 25.222 186.8601 70.3984 87.3462 92.5609 84.3528 67.5853 10.2872 32.5881 28.8158 34.9217 35.1024 24.5509 4.2515 1293.2898 815.3076 815.3076 729.1239 100.3953 281.176 173.9647 79.0743 347.8646 1297.7045 232.8147 465.5863 94.0244 33.7783 154.9332 208.2507 117.3693 1311.2222;
	3.8275 51.7184 75.4324 40.7309 14.7837 22.0812 30.9671 6.0538 11.9346 10.9085 20.1641 30.0809 45.2867 27.6042 166.2563 62.6361 77.7151 82.3548 85.5968 66.9006 10.3224 51.5229 23.4772 22.6523 34.7527 59.4957 4.8395 1212.7948 816.4484 816.4484 762.5706 101.0393 285.3225 172.2024 86.5428 348.3513 1279.1128 237.9324 447.3029 93.0876 34.8414 244.9546 211.2567 198.6878 1292.4369;
	3.8348 51.8166 92.8536 111.7767 14.8495 33.6453 31.0177 7.1791 10.9723 12.3167 22.7672 33.9642 51.133 26.3859 185.5117 69.8904 86.7159 91.893 87.0586 67.9242 10.3392 78.5058 12.0748 31.4367 52.629 70.7772 5.5371 1160.1464 808.6924 808.6924 783.2304 103.5093 290.1952 174.8372 82.7234 345.0421 1265.1339 241.824 454.3918 140.9706 67.8056 373.2388 209.0108 250.5042 1278.3123;
	3.8464 51.9729 94.1654 119.3728 14.9429 35.1477 30.8221 12.3304 10.8326 13.3074 24.5985 36.6962 55.2459 37.1187 191.3044 72.0728 89.4237 94.7624 76.4573 71.0885 10.274 82.0112 29.7698 55.4303 103.8379 76.6486 12.6953 1066.6435 809.4711 809.4711 750.318 104.2122 254.8577 182.9819 116.3723 345.3743 1245.4232 265.0169 453.4962 278.1373 107.7338 389.9048 208.4378 280.657 1258.3963;
	3.6198 48.9111 89.1377 113.4832 14.5973 33.2826 29.69 18.2316 10.4122 12.4637 23.039 34.3697 51.7434 61.0248 191.7036 72.2232 89.6103 94.9602 70.4687 63.0674 9.8967 77.6593 31.9055 55.484 102.3331 74.7479 13.8134 923.5105 762.7248 762.7248 725.8332 109.1989 234.8957 162.3357 191.321 325.4293 1155.6234 279.2131 451.3535 274.1066 115.0911 369.2147 200.9177 271.1901 1167.6612;
	3.7127 50.1663 92.9528 115.1851 15.1274 34.719 29.7543 18.127 9.235 14.3053 26.4431 39.448 59.3887 62.572 193.8603 73.0357 90.6184 96.0285 45.5558 66.859 9.9181 81.0111 37.9435 88.4132 104.3862 73.8068 13.8291 714.3073 800.0488 800.0488 739.9958 100.5771 151.8528 172.0953 196.1716 341.3541 1160.0127 278.59 453.1444 279.6058 116.2216 385.1497 213.968 272.3705 1172.0961;
	3.7016 50.0171 93.0023 118.5247 15.3525 34.3623 30.3236 18.1333 20.5105 13.3699 24.714 36.8685 55.5053 60.5584 188.0631 70.8517 87.9086 93.1568 51.8615 62.1934 10.1079 80.1786 35.1224 89.7838 105.4121 75.0493 13.6833 592.8071 791.2026 791.2026 745.0397 103.056 172.8718 160.086 189.8588 337.5798 1050.107 264.6509 447.6805 282.3539 116.7456 381.1921 208.5364 274.231 1061.0456;
	3.5949 48.5744 93.3119 118.2157 15.1908 34.0792 30.5063 18.3652 27.4253 19.7446 36.4975 54.4472 81.9699 68.1167 195.6452 73.7082 91.4528 96.9126 36.017 67.7178 10.1688 79.5182 35.4792 88.9045 105.4714 75.683 13.6261 423.975 747.9635 747.9635 691.1014 99.6515 120.0566 174.3057 213.555 319.1311 909.8941 253.8946 445.8505 282.5128 115.9698 378.0524 200.6033 272.8615 919.3721;
	2.6801 36.2136 91.6565 115.2887 15.1859 32.0522 29.4055 18.2495 27.8479 21.6047 39.936 59.5767 89.6924 65.0191 195.9238 73.8131 91.583 97.0506 50.1117 70.0156 9.8018 74.7886 43.5178 87.029 102.639 75.6828 13.4184 331.8101 732.555 732.555 657.5794 102.4879 167.0389 180.2204 203.8438 312.5568 767.0521 235.6909 452.0898 274.9258 116.1366 355.5663 178.7129 266.6002 775.0422;
	1.8796 25.3973 88.806 113.1011 14.9357 20.487 26.0129 18.8899 27.6048 29.497 54.5248 81.3402 122.4573 67.0691 201.6884 75.9849 94.2776 99.9061 92.1894 70.9745 8.671 47.803 69.7068 85.3357 100.1343 75.8678 13.9771 320.9926 670.9911 670.9911 609.5756 102.5872 307.2982 182.6886 210.2708 286.2895 653.0343 220.4295 435.8153 268.2169 116.7992 227.2692 169.5396 271.758 659.8367;
	1.6657 22.5074 87.9266 113.2099 14.3109 12.2658 23.7934 18.8125 25.7689 31.0828 57.4561 85.7132 129.0408 68.0044 204.0038 76.8572 95.3599 101.053 91.4506 73.4086 7.9311 28.6203 75.4047 85.6931 103.4133 76.236 14.135 311.1101 554.4189 554.4189 580.7031 104.181 304.8353 188.954 213.2029 236.5521 472.9362 204.6525 436.8588 277.0 120.1438 136.0691 128.3754 261.6172 477.8626;
	1.5264 20.6245 89.5104 114.6713 12.7631 5.9208 21.8734 18.5745 26.4036 30.3228 56.0511 83.6173 125.8854 64.9722 205.855 77.5547 96.2252 101.97 92.5854 73.8689 7.2911 13.8152 75.3445 87.3564 104.0782 75.8236 14.1165 462.9924 452.3302 452.3302 405.7207 97.5752 308.6181 190.1387 203.6966 192.9942 419.4501 182.0882 440.5544 278.7809 120.3964 65.6812 111.0213 252.7523 423.8193;
	3.2781 44.2938 92.329 89.3821 14.8959 28.7372 16.7978 18.9958 22.6503 29.7986 55.0823 82.172 123.7094 59.9602 205.9484 77.5899 96.2689 102.0163 92.8237 73.7211 5.5993 67.0536 75.2493 89.1002 106.0919 76.1461 14.1392 519.7743 503.3761 503.3761 401.5005 52.9779 309.4125 189.7582 187.9833 214.7738 495.835 160.8066 448.5731 284.1748 119.1337 318.7918 87.181 265.5728 500.9999;
	3.0419 41.1023 91.7807 67.6584 14.7645 33.5577 14.1076 19.0321 27.0927 27.4836 50.8031 75.7882 114.0987 63.3694 200.6125 75.5796 93.7747 99.3732 92.4572 71.1769 4.7025 78.3013 74.4339 88.812 106.5373 76.1031 14.1357 573.5738 566.1131 566.1131 442.5419 34.1758 308.1908 183.2096 198.6717 241.5416 606.5755 124.6406 178.7436 285.3678 117.8337 372.2668 110.0838 267.4263 612.894;
	3.6183 48.8906 91.0546 67.7926 14.8407 33.8134 28.44 19.0973 27.2353 13.5542 25.0547 37.3767 56.2704 59.4601 197.6973 74.4813 92.412 97.9291 81.7806 72.9494 9.48 78.8979 55.6563 89.6421 106.765 76.308 14.0998 727.7643 599.6263 599.6263 419.1363 30.9033 272.6019 187.772 186.4156 255.8406 838.1544 89.4349 416.7746 285.9776 119.2429 375.1033 122.3133 257.101 846.8851;
	3.748 50.6438 92.1018 59.3604 14.8466 33.7402 27.6991 19.1637 26.9214 23.8093 44.0112 65.656 98.8448 62.1952 194.4518 73.2586 90.8949 96.3215 60.5129 72.3102 9.233 78.7272 57.4913 89.7498 106.7885 76.327 14.132 1044.5384 684.2088 684.2088 501.8612 46.2634 201.7098 186.1266 194.9905 291.9291 1079.9815 100.7738 450.8646 286.0407 121.5717 374.2917 149.6661 252.3466 1091.2313;
	3.6758 49.6683 66.8248 41.2984 14.5898 31.9489 0.7006 19.0506 26.6378 28.6514 52.9616 79.0083 118.9466 66.0005 200.4914 75.534 93.7181 99.3132 47.6896 72.1084 0.2335 74.5475 71.5337 83.2562 106.2576 73.9617 13.8404 1224.7806 626.1036 626.1036 587.5086 64.1439 158.9654 185.6072 206.9206 267.1375 1191.3442 142.3413 438.7888 284.6186 121.0818 354.4202 151.7574 229.9333 1203.754;
	3.7484 50.6488 62.4958 61.1066 14.87 32.3604 29.0163 18.9186 6.6377 28.9232 53.4641 79.7579 120.0751 65.9779 201.1628 75.7869 94.0319 99.6458 62.1703 73.1083 9.6721 75.5075 73.2661 88.8746 105.0208 73.8097 13.805 1239.7936 742.1194 742.1194 464.1375 70.4166 207.2344 188.181 206.8495 316.6376 1174.1325 199.1113 436.4443 281.3057 119.791 358.9842 138.587 254.8817 1186.363;
	3.7957 51.2886 47.5787 81.6553 15.1791 32.4748 0.0 18.8611 26.6928 30.7603 56.86 84.824 127.702 67.6627 200.2433 75.4405 93.6021 99.1903 59.3383 73.0376 0.0 75.7746 73.6663 87.4129 105.2522 74.3575 13.8375 1237.6807 763.9617 763.9617 593.6801 90.3872 197.7945 187.999 212.1316 325.957 1252.1165 226.945 444.5812 281.9255 121.6201 360.254 151.9322 255.7498 1265.1594;
	3.7698 50.9385 58.7461 90.6816 14.9397 31.2565 27.9699 18.7081 26.4918 30.3536 56.1081 83.7023 126.0134 68.4317 200.2111 75.4284 93.5871 99.1743 51.4845 73.3871 9.3233 72.9317 72.4361 87.2819 103.2893 74.0971 13.7673 1218.5882 736.7429 736.7429 630.6288 106.6863 171.6152 188.8985 214.5427 314.3437 1220.9349 254.732 440.4566 276.6678 119.3023 346.7383 145.2931 263.0129 1233.653;
	3.7005 50.0018 89.5237 99.9909 15.0223 32.0477 29.7267 18.4993 27.2875 30.5357 56.4448 84.2046 126.7695 67.2653 197.1496 74.275 92.156 97.6578 40.6737 72.3987 9.9089 74.7779 73.1422 86.0799 103.2451 73.4403 13.6184 1155.978 709.4966 709.4966 632.4033 110.7445 135.5789 186.3544 210.886 302.7186 1233.5782 221.258 454.3352 276.5493 118.0204 355.5154 156.2357 271.5798 1246.428;
];