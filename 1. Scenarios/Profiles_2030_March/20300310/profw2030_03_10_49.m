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
	3.9302 53.106 80.44 111.7683 14.7087 34.713 31.4302 7.2409 27.2301 12.4214 22.9607 34.2528 51.5674 40.8647 174.7946 65.8528 81.7063 86.5843 79.1548 69.5004 10.4767 80.9971 30.756 4.16 41.3111 27.9596 4.9807 1267.6683 831.0839 831.0839 686.766 80.8764 263.8492 178.8942 128.1162 354.5958 1295.989 214.7423 466.1393 110.6547 115.1437 385.0833 211.6435 116.6025 1309.4889;
	3.3655 45.4751 68.2053 41.3164 14.5785 27.851 31.3556 6.4238 10.5699 13.5915 25.1237 37.4796 56.4254 39.5327 188.5282 71.0269 88.126 93.3872 87.4041 69.8778 10.4519 64.9857 29.395 23.3382 34.1657 26.293 5.1536 1294.988 844.8008 844.8008 736.9923 77.7348 291.347 179.8657 123.9403 360.4484 1323.7295 212.9727 469.6796 91.5152 113.2182 308.9607 204.9247 99.1847 1337.5183;
	3.1811 42.984 81.8282 43.0974 14.5383 23.9083 31.8976 6.5489 10.0671 13.1301 24.2709 36.2074 54.51 37.4218 194.7069 73.3547 91.0142 96.4479 90.3809 66.7842 10.6325 55.786 30.1849 32.1144 35.3686 26.2904 5.6553 1269.325 831.4442 831.4442 746.1222 87.7909 301.2697 171.9028 117.3225 354.7495 1296.013 206.3077 471.7445 94.7374 33.336 265.2226 213.5689 130.7827 1309.5131;
	3.5333 47.7432 78.5751 44.1331 14.1051 13.85 31.9759 6.2099 11.8534 12.9867 24.0058 35.8119 53.9146 25.0956 200.3373 75.4759 93.646 99.2368 87.3246 69.3027 10.6586 32.3166 29.8712 20.5443 33.2906 18.528 4.9267 1276.0713 836.6282 836.6282 790.4998 95.5705 291.082 178.3852 78.678 356.9614 1285.0578 232.8879 464.3457 89.1713 33.8382 153.6423 211.049 110.0842 1298.4438;
	3.8768 52.3842 80.2544 41.1946 14.4016 22.3482 31.5649 7.0421 11.0755 11.2343 20.7665 30.9795 46.6394 28.05 186.3494 70.206 87.1075 92.3079 87.4438 71.0938 10.5216 52.1458 3.6002 24.4432 37.9145 56.1149 5.3955 1249.1296 807.7003 807.7003 780.3416 100.6228 291.4794 182.9956 87.9406 344.6188 1247.5173 236.3063 443.9298 101.5568 35.5754 247.9159 209.7814 188.3588 1260.5123;
	3.9296 53.0981 93.8215 114.7397 14.8426 34.3409 31.485 7.1498 11.2106 12.7617 23.5898 35.1914 52.9804 29.2526 196.6383 74.0823 91.917 97.4046 91.3509 72.1941 10.495 80.1288 14.3792 29.7119 53.2634 61.1513 5.2386 1186.2007 814.4907 814.4907 788.5858 106.3943 304.5031 185.8279 91.7107 347.516 1248.834 236.4014 448.7221 142.6698 67.9039 380.9551 211.2064 237.7325 1261.8427;
	3.9209 52.9803 88.8505 117.7117 14.4756 34.2939 30.9833 10.5709 10.3132 12.412 22.9435 34.2271 51.5287 43.116 202.6296 76.3395 94.7176 100.3724 84.5667 72.3658 10.3278 80.0192 26.9153 46.3912 97.144 72.7943 10.5951 1086.9883 814.9151 814.9151 791.2889 113.1893 281.889 186.2699 135.1745 347.6971 1254.8565 287.1307 438.8996 260.207 109.5828 380.4342 201.0046 265.9816 1267.9279;
	3.9008 52.7089 89.1583 120.1497 14.9547 34.7481 29.7976 18.4516 10.4339 13.0257 24.0778 35.9193 54.0763 65.2509 202.3832 76.2467 94.6024 100.2503 86.9439 66.0492 9.9325 81.0788 30.2956 61.0237 103.8352 72.1317 13.669 960.4791 817.6134 817.6134 813.0963 118.0828 289.8129 170.0109 204.5703 348.8484 1246.2003 322.2525 438.7118 278.13 119.5524 385.4717 207.9872 255.2619 1259.1816;
	3.9014 52.716 89.6302 120.6631 14.8453 34.5127 29.952 18.4278 9.3152 12.7685 23.6024 35.2102 53.0087 66.3507 200.9292 75.6989 93.9227 99.53 57.9602 68.3244 9.984 80.5296 31.1633 89.571 104.4592 71.8308 13.3787 667.4034 841.0149 841.0149 806.698 115.719 193.2007 175.8673 208.0183 358.833 1199.4812 316.4295 440.1507 279.8014 120.736 382.8606 214.6135 266.2088 1211.9758;
	3.8859 52.5075 89.9332 119.9078 14.7116 35.0439 30.1458 17.9198 19.3974 11.4088 21.0891 31.4607 47.364 63.902 195.0339 73.4779 91.167 96.6098 59.9725 59.5722 10.0486 81.7692 28.5164 89.5738 101.4681 70.8971 13.2078 471.673 834.6349 834.6349 795.5985 111.6267 199.9082 153.339 200.3414 356.1109 1078.9645 274.8666 439.5325 271.7895 117.9091 388.754 214.8438 268.8053 1090.2037;
	3.9203 52.9722 92.5725 119.9793 14.8504 35.0404 30.3424 18.7163 27.0228 17.5497 32.4404 48.3947 72.8579 69.094 199.553 75.1804 93.2794 98.8484 43.3476 66.3529 10.1141 81.761 29.2843 88.6099 102.3754 71.2294 13.7084 333.9951 807.1165 807.1165 771.9358 97.9892 144.492 170.7924 216.619 344.3697 941.259 264.6999 445.0694 274.2199 120.1686 388.7152 208.0912 260.3913 951.0638;
	3.4893 47.1478 89.7175 120.0712 14.9612 33.1997 29.6633 18.2923 27.9414 21.2406 39.263 58.5726 88.1808 68.0497 200.0492 75.3674 93.5114 99.0942 58.0643 65.737 9.8878 77.4659 37.8986 85.5485 99.6532 72.2365 12.9875 241.8542 791.9302 791.9302 714.507 103.418 193.5478 169.2073 213.345 337.8902 772.6573 246.6299 456.903 266.9281 122.5867 368.2952 192.5986 254.3469 780.7058;
	2.3752 32.0948 90.2587 118.7223 14.8238 22.0372 25.2559 18.6048 27.4367 27.694 51.1919 76.3682 114.9719 66.0069 196.7593 74.1279 91.9735 97.4645 92.2913 66.3552 8.4186 51.4201 59.4794 87.5401 101.8459 71.077 13.7479 272.4862 708.0165 708.0165 639.2197 105.2837 307.6377 170.7984 206.9405 302.087 651.4502 216.7521 428.1715 272.8016 122.549 244.4658 174.86 259.7614 658.2361;
	2.4425 33.0036 88.7256 118.0093 14.4099 12.9828 24.73 18.6519 27.2246 30.5886 56.5425 84.3503 126.9889 62.9414 201.4475 75.8942 94.165 99.7868 91.161 71.653 8.2433 30.2932 74.1062 86.8166 99.7005 72.3323 13.6483 257.5437 609.1061 609.1061 602.6046 99.3743 303.8701 184.435 197.3298 259.8853 459.9726 195.9084 439.3113 267.0549 122.6023 144.0227 136.4427 255.5509 464.764;
	2.366 31.9705 90.7517 120.2536 12.8747 6.5179 20.5827 18.8661 26.9836 28.9801 53.5693 79.9148 120.3114 63.334 202.9929 76.4764 94.8874 100.5523 89.7839 72.9909 6.8609 15.2085 72.0781 89.8889 105.1072 73.8641 13.9365 435.4017 501.5663 501.5663 429.2258 89.8091 299.2797 187.8788 198.5607 214.0016 432.8598 172.2421 429.6745 281.537 122.6098 72.3056 114.6726 251.9989 437.3687;
	3.5376 47.8007 90.7965 90.5372 14.3108 27.1626 14.2119 18.6199 20.6833 27.9415 51.6495 77.0509 115.9996 57.6189 198.513 74.7886 92.7933 98.3332 90.6261 72.8616 4.7373 63.3794 73.8485 88.3028 101.1253 73.7898 13.8543 463.2147 517.3431 517.3431 414.0434 49.4664 302.0872 187.5459 180.643 220.7331 489.637 157.2251 427.8353 270.8713 122.5859 301.3237 83.8511 264.7232 494.7374;
	3.4032 45.9842 92.0957 69.1467 14.6391 32.7424 12.2963 18.6662 26.0061 26.49 48.9664 73.0483 109.9737 59.4969 190.6791 71.8372 89.1314 94.4527 88.4073 71.9745 4.0988 76.399 70.5918 88.2545 104.1461 73.5978 13.7969 562.9003 587.7093 587.7093 442.8128 31.1398 294.691 185.2625 186.5308 250.756 586.1796 112.777 150.7538 278.9627 121.9431 363.2227 110.597 260.3855 592.2857;
	3.6862 49.8083 91.6688 64.8243 14.569 31.7095 26.6044 18.4968 25.744 4.4856 8.2915 12.3692 18.6218 64.4322 178.0025 67.0614 83.2058 88.1733 79.2301 72.2527 8.8681 73.9889 47.0116 88.0163 104.5555 72.3391 13.5323 676.5434 624.9485 624.9485 410.0425 29.3216 264.1002 185.9785 202.0036 266.6447 810.4259 82.015 399.554 280.0594 120.9772 351.7644 112.4663 253.3837 818.8678;
	3.6217 48.9373 89.804 54.2076 14.1508 32.0796 25.8559 18.185 25.6232 18.3502 33.9201 50.6021 76.1812 66.6151 180.9153 68.1588 84.5674 89.6162 64.2988 72.0635 8.6186 74.8524 41.0849 83.408 103.4231 72.0549 13.4084 935.0328 679.7387 679.7387 463.2216 45.1762 214.3293 185.4915 208.8474 290.0219 988.6161 98.5296 439.1719 277.0262 117.9086 355.8697 141.7333 230.7418 998.9141;
	3.6152 48.8492 64.4164 36.9241 14.2372 31.1205 0.0 18.3297 24.9051 26.0142 48.0868 71.736 107.9982 67.0193 184.3388 69.4486 86.1677 91.312 53.8602 73.0244 0.0 72.6145 60.7843 70.6937 102.6948 70.9773 13.065 1160.6159 595.4731 595.4731 536.7302 64.7385 179.5341 187.9651 210.1146 254.0685 1158.7499 141.0421 429.1989 275.0753 118.6267 345.2301 141.3312 200.1864 1170.8202;
	3.7773 51.0402 59.031 55.7481 14.3205 31.4889 28.0311 17.9912 0.4425 25.0414 46.2886 69.0535 103.9597 68.2771 187.5378 70.6538 87.663 92.8966 65.7491 72.5248 9.3437 73.4741 61.1192 84.3575 101.1366 72.4625 12.8659 1172.193 689.6896 689.6896 435.7643 71.2457 219.1636 186.679 214.0578 294.2676 1088.4939 195.2976 427.788 270.9015 114.9632 349.317 129.2055 231.7111 1099.8323;
	3.7108 50.1411 45.2007 77.2968 14.2949 32.1369 0.8128 17.8973 26.3202 28.9833 53.5752 79.9237 120.3247 68.7216 187.7819 70.7457 87.7771 93.0175 59.6866 70.9823 0.2709 74.986 68.6945 83.792 102.274 73.1686 13.5285 1162.4641 726.021 726.021 547.5858 90.9421 198.9552 182.7085 215.4516 309.7689 1151.2767 234.0311 439.7885 273.9481 116.5151 356.5049 139.68 220.3435 1163.2692;
	3.6841 49.7798 58.3999 94.1455 14.2304 31.5739 28.9718 17.9585 27.3862 29.2595 54.0858 80.6854 121.4714 67.5607 187.6054 70.6792 87.6946 92.9301 54.709 72.3824 9.6573 73.6725 67.7946 85.5662 101.9917 73.5412 13.5027 1203.2254 736.6139 736.6139 596.4336 107.1784 182.3632 186.3124 211.812 314.2886 1170.7151 241.1911 458.5751 273.192 115.8747 350.2602 141.9003 238.7035 1182.91;
	3.6366 49.1382 86.4101 100.7329 14.1745 31.4877 28.5438 18.4356 26.8807 28.4178 52.5299 78.3643 117.977 68.7481 185.9286 70.0475 86.9108 92.0995 40.6197 71.6814 9.5146 73.4714 52.1798 86.2655 102.9168 73.2964 13.6109 1188.7902 703.8678 703.8678 595.9356 107.46 135.399 184.508 215.5345 300.3169 1186.9546 223.0573 458.5998 275.6701 115.4677 349.3041 153.9706 247.4846 1199.3187;
];