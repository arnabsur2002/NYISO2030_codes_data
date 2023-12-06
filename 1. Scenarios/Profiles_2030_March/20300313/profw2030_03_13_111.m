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
	0.3639 4.9169 45.2772 44.377 6.6076 0.0 14.9836 4.4203 11.3104 20.8846 38.6049 57.5909 86.7028 22.9053 158.4938 59.7116 74.0866 78.5097 76.909 71.5375 4.9945 0.0 70.4265 68.0437 28.832 47.5041 3.5441 149.9543 305.3556 305.3556 204.2594 44.1474 256.3632 184.1378 71.8113 130.2851 358.8861 83.5433 163.6041 77.2286 60.4522 0.0 0.0 65.1701 362.6245;
	0.3963 5.3551 40.364 44.5911 6.0639 0.4589 21.3663 7.4702 25.289 13.5931 25.1267 37.4841 56.4321 59.0481 132.6342 49.9692 61.9988 65.7002 76.162 69.9399 7.1221 1.0708 38.3447 69.0732 42.291 47.8374 4.9234 58.4468 211.9446 211.9446 136.6659 29.8424 253.8735 180.0255 185.1237 90.4297 287.3065 89.077 358.2752 113.2795 76.1805 5.0909 0.0 78.6397 290.2993;
	0.2533 3.4223 43.8955 38.8074 0.0041 0.1364 6.8342 5.037 7.6814 10.2018 18.8578 28.1322 42.3528 9.4261 85.7243 32.2961 40.0711 42.4634 62.8408 64.8571 2.2781 0.3182 30.4164 70.0171 41.2067 49.6246 3.484 0.0 3.2671 3.2671 0.6226 16.3479 209.4694 166.9422 29.5521 1.394 163.7533 22.1582 73.8853 110.3752 63.4535 1.5127 0.0 87.7463 165.4591;
	0.3049 4.1201 57.2832 57.4886 6.0833 0.0 0.8535 10.7446 0.0387 15.2017 28.1 41.9197 63.1099 3.8066 82.4061 31.046 38.52 40.8197 42.6668 61.387 0.2845 0.0 52.1214 74.3613 49.8963 63.307 5.2117 0.0 3.2747 3.2747 3.3371 16.7094 142.2226 158.0103 11.9341 1.3972 12.5079 2.9624 5.137 133.6509 63.2875 0.0 0.0 131.56 12.6382;
	0.335 4.5272 73.4359 66.2276 8.0445 0.0089 0.4757 11.8417 1.7467 16.2929 30.1172 44.9289 67.6402 2.6886 104.1816 39.2498 48.6988 51.6062 47.2352 62.6232 0.1586 0.0207 49.3933 75.5917 68.233 69.9312 7.2101 5.7281 6.025 6.025 1.2794 7.0028 157.4508 161.1923 8.4291 2.5707 20.8296 0.2691 0.0705 182.767 68.329 0.0985 0.0 145.9659 21.0466;
	0.3919 5.2948 75.7202 57.6127 8.6645 3.3797 0.5335 12.049 5.9709 10.0611 18.5978 27.7442 41.7688 2.3037 134.7803 50.7777 63.002 66.7633 77.3802 66.8912 0.1778 7.8859 40.1256 78.0638 52.5204 72.2292 7.628 13.2383 37.9138 37.9138 3.8175 8.9739 257.9341 172.178 7.2225 16.1766 26.8485 5.1105 27.5968 140.6795 57.3256 37.4918 10.5905 141.9119 27.1281;
	0.4553 6.1516 57.0612 38.7847 8.5128 2.5998 3.8866 8.2837 4.4825 8.1979 15.1538 22.6064 34.0339 1.6695 117.3899 44.226 54.873 58.149 60.9826 68.4909 1.2955 6.0663 23.9473 57.9261 34.0606 67.9312 3.8904 20.3183 5.5913 5.5913 2.7937 0.0 203.2753 176.2957 5.234 2.3856 14.6056 3.1489 32.9368 91.2337 31.7319 28.8407 17.7898 142.8612 14.7577;
	0.4148 5.6051 33.2919 27.2956 2.6716 1.476 3.709 7.2123 2.0316 5.4603 10.0933 15.0572 22.6685 0.4206 49.5622 18.6723 23.1675 24.5506 13.0137 41.5008 1.2363 3.4441 11.665 37.7477 32.1949 58.7491 3.9956 10.686 2.0988 2.0988 0.0669 0.0 43.379 106.8232 1.3188 0.8955 18.9238 1.4687 0.2184 86.2362 11.681 16.3741 0.0 97.0007 19.1209;
	0.5238 7.0781 26.8888 24.2131 2.5402 0.0 0.0 5.7163 0.1429 11.8392 21.8846 32.6475 49.1506 0.6934 7.8789 2.9683 3.6829 3.9028 1.0875 13.0051 0.0 0.0 6.2594 35.1411 24.8996 52.7541 3.9605 1.0117 2.0424 2.0424 0.5944 0.2904 3.6249 33.4752 2.1738 0.8714 13.2285 13.3946 0.0 66.6955 18.4486 0.0 0.0 70.9157 13.3663;
	0.4827 6.5225 30.0139 26.7354 5.2744 0.0 0.0 4.8198 0.0868 4.6056 8.5134 12.7002 19.1202 7.8989 4.7641 1.7949 2.227 2.3599 2.1582 10.1939 0.0 0.0 9.6699 37.569 31.9352 48.4877 3.0265 11.7529 33.8185 33.8185 9.6656 0.8494 7.1939 26.2391 24.764 14.4292 8.088 4.5328 0.0 85.5408 53.6039 0.0 34.9486 78.425 8.1723;
	0.67 9.0527 41.6421 27.2326 9.1236 0.0 0.0183 3.9796 4.314 8.3995 15.5264 23.1623 34.8707 4.6905 17.2037 6.4814 8.0417 8.5218 20.9955 11.9275 0.0061 0.0 32.6093 46.8501 53.4488 54.0486 1.4591 50.5671 68.8601 68.8601 11.9241 1.1069 69.9849 30.7013 14.7052 29.3803 72.8649 7.9556 0.1355 143.1665 80.393 0.0 0.0 87.8287 73.624;
	1.3646 18.4389 67.1037 97.0361 12.0 0.0769 0.7117 12.8572 4.6997 2.7557 5.0938 7.5989 11.4401 18.0922 21.7781 8.2048 10.18 10.7878 17.3888 10.5421 0.2372 0.1795 48.6442 64.3218 90.0545 56.1915 4.2117 154.7359 110.9576 110.9576 73.9706 7.4068 57.9626 27.1354 56.7216 47.3419 137.3591 7.2663 22.9904 241.2174 57.0606 0.8532 0.0 131.2002 138.7899;
	1.7068 23.063 84.1108 62.6506 12.9933 0.5651 1.8063 7.0728 6.3944 24.5606 45.3998 67.7276 101.9635 19.9947 34.6027 13.0364 16.1747 17.1404 54.4538 9.1549 0.6021 1.3186 28.7681 71.1564 75.1248 56.8999 2.059 228.1682 185.6105 185.6105 170.2064 13.1646 181.5127 23.5647 62.686 79.1938 201.8196 37.0645 36.3 201.2273 28.9206 6.2688 101.4094 155.3278 203.9218;
	1.6822 22.7308 48.2085 59.7034 13.9141 20.3569 2.7498 15.7708 22.3075 7.3865 13.6538 20.3687 30.665 11.0071 79.936 30.1154 37.3654 39.5962 48.651 9.228 0.9166 47.4995 42.073 65.7327 75.5291 36.98 6.4345 205.8905 228.7224 228.7224 171.1034 5.6755 162.1701 23.7528 34.5087 97.5882 213.371 33.8904 140.1413 202.3102 64.2562 225.826 73.297 128.5575 215.5936;
	2.0392 27.554 14.919 18.8221 8.6079 3.2967 8.0034 4.2617 26.6473 3.128 5.782 8.6256 12.9858 10.1972 31.8565 12.0018 14.8911 15.7801 15.3401 7.3053 2.6678 7.6922 27.5168 18.0151 9.4788 7.4692 1.4594 283.3278 284.9466 284.9466 122.2114 7.682 51.1338 18.8037 31.9695 121.5772 279.7264 50.4573 123.1661 25.3896 41.3812 36.571 82.893 102.3893 282.6402;
	2.8698 38.7778 85.3893 5.1865 12.0981 1.6858 2.1794 3.3311 11.0827 1.6528 3.0551 4.5577 6.8616 1.4233 38.42 14.4745 17.9591 19.0313 16.7436 1.5781 0.7265 3.9334 46.8455 13.6045 6.5249 2.1822 2.2907 372.4658 280.462 280.462 178.2638 10.5881 55.8121 4.0619 4.4623 119.6638 313.4304 44.77 8.293 17.4774 80.9829 18.7007 0.0 176.432 316.6953;
	3.1973 43.202 3.0268 0.3123 13.8947 5.2749 2.9754 1.3376 7.7537 4.7447 8.7705 13.0839 19.6977 1.3825 37.8459 14.2582 17.6907 18.7469 4.1142 5.9706 0.9918 12.3081 5.8878 0.0031 0.6918 0.8841 0.1333 350.3516 382.9721 382.9721 203.3139 25.0392 13.714 15.3684 4.3343 163.4014 457.8848 77.726 106.7142 1.853 45.812 58.5163 132.7135 221.3163 462.6544;
	2.7088 36.6013 4.823 4.543 13.495 21.0907 3.7371 0.5892 17.732 5.1506 9.5207 14.2031 21.3826 2.2816 119.1669 44.8954 55.7036 59.0292 56.8216 2.9282 1.2457 49.2116 16.2183 0.0 0.0014 1.2553 1.8426 523.3032 505.8955 505.8955 366.8101 35.3559 189.4054 7.5372 7.1531 215.8487 558.1075 107.0872 198.0176 0.0038 65.2906 233.9658 116.9349 225.5185 563.9211;
	2.8339 38.2922 84.8147 0.5541 13.9576 26.225 0.7361 0.4657 14.6281 9.0237 16.6803 24.8837 37.4622 8.6736 106.2803 40.0405 49.6799 52.6458 29.8587 39.743 0.2454 61.1916 32.4199 0.0 0.5318 61.2131 0.246 784.8065 476.07 476.07 395.5132 44.9337 99.5291 102.2986 27.193 203.1232 620.9315 83.4653 78.3481 1.4244 5.1545 290.9224 106.9146 214.4715 627.3995;
	2.9155 39.3944 7.0083 4.559 14.3236 4.4046 18.1604 0.2057 27.0499 23.6204 43.662 65.1352 98.0606 15.4721 114.1682 43.0122 53.367 56.5531 50.3349 18.724 6.0535 10.2775 60.3104 2.5245 15.8912 52.4771 0.259 727.0344 463.8512 463.8512 350.5965 40.5454 167.7829 48.1957 48.5072 197.9099 545.218 80.2986 26.6113 42.5657 17.2236 48.8621 108.997 189.83 550.8973;
	3.0107 40.6817 87.19 5.8994 14.0172 0.4904 1.4995 0.0315 27.4589 24.4515 45.1982 67.4268 101.5106 13.2656 30.0965 11.3387 14.0684 14.9083 63.1268 31.5055 0.4998 1.1443 71.9245 82.0917 23.3174 59.5561 0.0142 594.5401 424.8532 424.8532 265.1651 53.499 210.4228 81.0952 41.5893 181.2707 547.6283 79.6624 135.0216 62.4574 6.4297 5.4403 101.3026 188.6806 553.3328;
	3.3207 44.8693 88.8119 2.586 14.1785 22.7782 11.6989 13.8291 27.0519 24.9387 46.0989 68.7704 103.5335 13.6132 67.5497 25.449 31.5756 33.4607 73.6428 55.1329 3.8996 53.1491 60.225 80.7184 102.1144 71.4404 5.3321 665.1896 339.4812 339.4812 230.6785 58.5652 245.476 141.9123 42.6792 144.8453 504.6084 107.9995 96.8633 273.5208 10.5171 252.686 2.3344 205.0928 509.8648;
	3.6539 49.3718 93.3248 116.429 14.2714 25.9252 14.0635 17.3249 27.8662 27.4206 50.6865 75.6144 113.837 9.0813 62.2029 23.4346 29.0762 30.8121 83.0797 66.2336 4.6878 60.4921 71.3377 85.9389 103.136 73.5262 7.9298 719.6683 364.6899 364.6899 325.3045 46.2134 276.9323 170.4855 28.4711 155.601 452.8589 108.8899 400.1053 276.2572 12.2824 287.5968 139.7969 215.3137 457.5761;
	3.5095 47.4206 89.0194 109.7293 14.0156 16.8121 13.0786 17.5522 28.3181 26.8263 49.588 73.9755 111.3697 13.8292 55.8032 21.0235 26.0848 27.6421 77.685 49.9017 4.3595 39.2283 63.6502 83.7213 103.2735 72.5762 7.5828 698.7306 413.6046 413.6046 292.8381 48.213 258.95 128.4472 43.3565 176.4713 439.4046 85.1156 362.638 276.6254 12.0447 186.5027 141.0293 220.6899 443.9818;
];