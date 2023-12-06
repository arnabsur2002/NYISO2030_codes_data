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
	3.9305 53.1102 78.067 109.6855 14.7085 35.0797 31.0004 7.0182 28.0485 13.4243 24.8145 37.0184 55.731 37.0386 187.3346 70.5772 87.568 92.796 90.765 70.9694 10.3335 81.8525 34.5766 32.9561 42.1778 10.1873 4.899 1203.2144 784.047 784.047 586.2004 82.3787 302.5501 182.6755 116.1211 334.5267 1198.9958 196.955 445.6607 112.9762 116.5962 389.1503 205.8273 101.2272 1211.4853;
	3.2645 44.1103 71.7721 36.3531 14.6971 25.8429 30.0672 7.1786 10.7289 12.7934 23.6484 35.2788 53.112 37.4777 193.7909 73.0096 90.586 95.9941 92.4545 71.1946 10.0224 60.3001 28.2165 28.4167 31.4777 1.7449 5.3471 1229.2017 788.8996 788.8996 637.3785 75.5014 308.1817 183.255 117.4975 336.5972 1243.6182 185.6284 438.6736 84.3152 112.0751 286.6837 201.1623 64.0601 1256.5726;
	3.1256 42.2343 80.0214 16.1188 14.5176 21.9219 29.7256 6.4823 9.6491 13.3587 24.6934 36.8377 55.4589 34.7492 201.5111 75.9182 94.1947 99.8183 92.6516 70.3215 9.9085 51.1511 30.5277 10.2193 32.9004 2.3564 5.7583 1214.7257 780.3448 780.3448 600.2785 86.6858 308.8386 181.0078 108.9435 332.9471 1219.5018 186.8417 435.6067 88.1261 19.4891 243.1868 202.0266 102.1979 1232.2049;
	3.2517 43.938 72.4415 0.0 13.2024 11.3446 29.9083 4.6353 9.6633 13.0284 24.0827 35.9267 54.0874 23.7564 204.3431 76.9851 95.5185 101.2211 92.894 69.8865 9.9694 26.4708 29.4715 7.3713 23.4986 1.1079 4.7607 1207.5903 787.9411 787.9411 631.6768 93.6309 309.6465 179.8881 74.4795 336.1882 1213.3672 214.446 440.077 62.9426 32.3609 125.8496 189.5618 12.0151 1226.0064;
	3.673 49.6301 73.0233 0.0 14.1109 18.8447 30.375 5.9084 10.3504 11.0786 20.4786 30.5501 45.993 29.4123 192.7284 72.6093 90.0893 95.4678 92.9991 69.2692 10.125 43.971 0.6765 15.281 23.938 53.8406 4.6875 1188.5647 779.7769 779.7769 704.9136 94.9207 309.9969 178.2991 92.2114 332.7048 1224.4194 228.4176 449.5664 64.1196 32.0737 209.0506 201.7072 180.4547 1237.1738;
	3.8747 52.3558 90.707 101.4351 14.4906 32.4844 31.1633 6.0753 9.5226 11.4773 21.2156 31.6495 47.6482 25.6495 194.6699 73.3408 90.9969 96.4295 92.9242 67.2042 10.3878 75.797 0.4917 24.7129 45.9489 59.2343 5.2714 1234.6083 801.1462 801.1462 765.1886 108.6133 309.7475 172.9837 80.4145 341.8224 1275.8171 246.476 451.8526 123.0774 66.0089 360.3607 205.149 249.3548 1289.1069;
	3.9542 53.4301 86.9458 97.7485 14.5439 33.3648 30.1882 8.4592 5.2901 10.0688 18.612 27.7654 41.8006 34.7137 193.2845 72.8188 90.3493 95.7433 87.2536 68.3745 10.0627 77.8512 21.0464 39.919 95.4808 71.6144 10.2806 1193.7853 819.4357 819.4357 782.1257 109.8433 290.8455 175.9962 108.8322 349.6259 1319.7156 293.7611 438.2475 255.7523 98.0601 370.127 206.5529 270.5504 1333.4627;
	3.8774 52.3926 87.7017 111.3701 14.3836 32.8822 29.7247 17.9595 10.0984 10.3202 19.0768 28.4589 42.8446 56.6883 200.7183 75.6195 93.8242 99.4256 87.3955 56.8793 9.9082 76.7252 21.2675 46.9222 100.6464 72.3468 13.4066 1015.1573 798.7265 798.7265 774.8916 108.0561 291.3185 146.4074 177.7255 340.79 1239.6152 299.8344 446.9576 269.5886 115.2956 364.7733 202.7488 275.8829 1252.5279;
	3.8918 52.5867 88.1772 110.9951 14.5659 32.4257 29.6363 17.5598 8.496 10.113 18.6937 27.8873 41.9842 63.4739 194.3594 73.2238 90.8517 96.2757 49.3979 56.0036 9.8788 75.66 24.5636 84.3548 99.683 70.7 13.4232 775.5164 834.3219 834.3219 784.3457 103.8229 164.6597 144.1535 198.9991 355.9774 1239.3209 309.0892 448.5146 267.008 115.6797 359.7093 212.9054 272.8869 1252.2305;
	3.8821 52.4563 87.1987 110.4032 14.5973 32.6721 30.0128 17.6741 19.9932 10.9774 20.2916 30.271 45.5729 59.1891 188.6709 71.0807 88.1927 93.4579 54.3831 56.5055 10.0043 76.2349 24.412 86.2258 97.6747 70.5982 13.2006 610.53 836.1134 836.1134 749.1395 99.4463 181.2768 145.4453 185.5658 356.7417 1137.5792 269.282 440.9643 261.6288 116.2734 362.4424 210.8329 268.1051 1149.429;
	3.8255 51.6913 87.2761 108.3192 14.5123 32.6233 30.6091 17.7732 27.7518 16.0734 29.7115 44.3236 66.729 67.9455 196.455 74.0133 91.8313 97.3137 41.7685 63.3886 10.203 76.121 26.6514 83.8944 98.9588 72.6217 13.3471 433.0891 822.665 822.665 733.7374 92.1815 139.2284 163.1623 213.0182 351.0037 973.5882 277.355 449.2577 265.0681 116.2057 361.9009 203.9644 267.2638 983.7298;
	3.187 43.0639 86.2409 107.7043 14.1747 27.2801 29.3657 17.4192 27.1812 17.336 32.0454 47.8054 71.9707 65.0112 193.4103 72.8662 90.4081 95.8056 54.5542 60.965 9.7886 63.6537 34.9367 81.4377 91.6265 71.737 12.7998 312.8166 792.2229 792.2229 682.361 98.1221 181.8475 156.9241 203.8189 338.0151 773.5096 242.8311 452.7965 245.428 114.8295 302.6277 181.1984 261.8188 781.567;
	2.2403 30.2713 89.5115 111.1108 14.2682 18.3243 24.5287 18.5864 26.521 25.6586 47.4296 70.7557 106.5223 63.9382 190.127 71.6292 88.8733 94.1792 91.2502 61.4543 8.1762 42.7567 57.7 83.9971 100.499 72.9348 13.9324 338.5373 718.975 718.975 609.6362 95.2575 304.1672 158.1834 200.4549 306.7627 672.3617 223.7385 423.9658 269.1937 119.2069 203.2774 163.1785 275.8255 679.3655;
	2.3547 31.8169 88.4431 111.0442 14.3111 12.4949 23.8351 18.0064 26.0191 28.4063 52.5086 78.3325 117.9292 59.9505 193.0985 72.7487 90.2623 95.6511 90.8288 67.3568 7.945 29.1547 70.6472 83.4024 101.1833 72.5096 13.4719 326.2346 623.4431 623.4431 577.7265 93.8186 302.7626 173.3766 187.9528 266.0024 493.5141 201.2118 416.0805 271.0266 120.5718 138.6099 136.9816 264.913 498.6548;
	2.1392 28.9056 84.7124 102.2364 11.8238 0.0208 18.3263 17.5771 23.7688 23.5915 43.6085 65.0553 97.9404 45.9587 196.363 73.9786 91.7883 97.2682 88.2652 71.1101 6.1088 0.0484 68.4562 82.9995 96.3223 69.8692 13.4463 465.0568 492.2992 492.2992 389.4662 89.0927 294.2174 183.0377 144.0868 210.0476 433.1403 177.0787 319.2853 258.0062 115.5423 0.2302 100.4882 237.2992 437.6522;
	3.3484 45.2447 86.1666 71.072 14.1922 26.0169 9.7454 18.0115 11.6136 21.7052 40.1217 59.8537 90.1095 34.6598 192.141 72.388 89.8147 95.1768 88.0995 70.0577 3.2485 60.7061 69.3761 84.8525 96.7784 71.627 13.4896 504.2742 521.1769 521.1769 386.5494 50.4329 293.6651 180.3288 108.6632 222.3688 482.507 157.881 335.8653 259.2279 116.066 288.614 79.6353 255.2782 487.5331;
	3.2696 44.1797 86.532 57.605 14.5763 32.6094 11.2745 17.9876 23.1532 25.3021 46.7705 69.7724 105.042 47.4705 191.6211 72.1921 89.5717 94.9193 88.9044 71.6424 3.7582 76.0886 71.0359 84.0816 92.7141 72.8116 13.3303 588.7683 567.6881 567.6881 420.154 29.5316 296.348 184.4078 148.8263 242.2136 572.9063 115.6613 117.7889 248.3413 116.8405 361.7469 111.3058 257.8697 578.874;
	3.8057 51.4231 86.5324 56.9394 14.5592 33.0171 25.4029 18.1195 22.8516 2.4038 4.4433 6.6285 9.9792 50.2967 166.0925 62.5744 77.6386 82.2737 67.106 70.1142 8.4676 77.0399 32.7974 85.4352 97.7451 71.2112 12.1125 671.6443 615.2972 615.2972 408.955 27.7791 223.6867 180.4741 157.6869 262.5268 761.5847 78.5375 360.2413 261.8171 118.7313 366.2697 123.3137 257.3384 769.5178;
	3.9078 52.803 90.9229 55.636 15.2944 34.3294 26.8628 18.467 25.9056 17.7474 32.8058 48.9398 73.6786 62.0838 162.0448 61.0494 75.7465 80.2687 53.6352 68.6985 8.9543 80.1019 35.8738 83.6955 101.7241 72.768 13.0795 989.7932 668.5194 668.5194 474.6914 41.4995 178.7841 176.8301 194.641 285.235 979.716 98.2179 438.4582 272.4752 117.9176 380.8272 166.2353 246.8319 989.9214;
	3.8243 51.6751 66.9288 39.1031 15.1411 33.2681 0.0 18.3963 25.9375 23.1447 42.7827 63.8233 96.0857 63.3734 180.7773 68.1068 84.5029 89.5478 45.5161 69.5241 0.0 77.6255 52.1127 71.7273 100.2935 72.0023 13.0852 1227.3199 583.9628 583.9628 560.3311 63.2855 151.7203 178.9553 198.6843 249.1574 1155.8888 143.3854 428.2363 268.6433 119.9799 369.0537 168.2691 228.2388 1167.9293;
	3.8557 52.0984 63.916 62.8179 15.257 32.8906 26.3506 18.1881 0.9901 27.0526 50.0064 74.5997 112.3095 63.1573 186.5969 70.2993 87.2232 92.4306 55.4947 72.8338 8.7835 76.7447 71.303 85.4628 101.3529 73.4464 13.0853 1301.1082 699.2015 699.2015 417.8712 73.0762 184.9825 187.4743 198.0067 298.326 1158.1865 188.2531 415.2564 271.481 115.1539 364.8664 149.2511 250.2954 1170.2509;
	3.9272 53.0651 50.3676 88.1876 15.2265 34.3729 0.6276 18.2234 28.0457 29.4256 54.3927 81.1432 122.1606 65.9658 195.382 73.609 91.3297 96.7822 55.99 73.137 0.2092 80.2034 68.9966 84.9981 103.7056 73.6744 13.5534 1324.9375 745.5602 745.5602 553.3541 91.051 186.6334 188.2549 206.8117 318.1057 1280.4709 214.9808 461.0416 277.7829 117.916 381.3097 164.7546 249.3896 1293.8091;
	3.8574 52.1213 61.2693 95.0222 14.8406 33.08 28.9688 18.0588 27.1786 28.4546 52.5978 78.4656 118.1296 64.0568 183.8147 69.2511 85.9227 91.0524 47.5898 70.9151 9.6563 77.1866 50.0511 84.5179 103.2797 72.7499 13.3468 1316.7352 730.964 730.964 591.4875 107.5389 158.6328 182.5355 200.8267 311.878 1213.3902 234.4281 454.9631 276.6421 120.8288 366.9672 155.8746 263.5154 1226.0297;
	3.8991 52.6849 89.0512 105.4486 14.9695 33.8189 29.2652 18.634 27.1901 29.4595 54.4555 81.2369 122.3017 64.502 196.5623 74.0537 91.8815 97.3669 42.8582 73.5351 9.7551 78.9107 64.7839 85.7563 103.955 73.2554 13.387 1275.1438 725.5796 725.5796 631.2602 108.6264 142.8606 189.2797 202.2224 309.5806 1217.2924 218.9203 463.836 278.451 120.7215 375.1638 172.9407 270.3461 1229.9725;
];