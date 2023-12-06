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
	3.7385 50.5149 87.8654 117.4074 14.4955 14.2403 15.4322 16.2503 26.5559 25.763 47.6226 71.0435 106.9556 2.8909 21.8484 8.2313 10.2129 10.8226 13.5568 25.572 5.1441 33.2275 58.9255 84.941 100.1098 68.3273 7.8234 606.1367 385.214 385.214 191.5617 36.1747 45.1894 65.8225 9.0633 164.358 500.9552 47.9235 313.7887 268.1512 13.9841 157.9729 121.8988 230.7991 506.1735;
	3.6656 49.5297 87.3475 115.1445 14.2871 15.9764 14.3519 13.7895 25.8787 25.048 46.3008 69.0717 103.9871 5.3564 14.1203 5.3197 6.6004 6.9945 13.4745 14.0296 4.784 37.2783 58.8803 84.8291 98.0991 67.5052 6.2917 644.3527 352.7918 352.7918 154.633 32.3338 44.915 36.1123 16.7929 150.5245 486.4505 46.4723 312.4619 262.7654 9.897 177.2318 110.7896 206.2405 491.5177;
	3.2258 43.5882 87.5648 111.3513 14.1661 11.5353 13.1895 16.3419 26.5156 25.1596 46.5071 69.3794 104.4503 7.7369 16.863 6.353 7.8825 8.3531 21.1357 23.5159 4.3965 26.9157 66.5989 84.8902 99.3935 69.9006 7.2331 596.5723 331.6978 331.6978 140.9175 30.3497 70.4522 60.5299 24.2562 141.5244 409.2955 33.7036 246.266 266.2325 4.3549 127.965 80.8523 199.5399 413.559;
	3.0699 41.4804 86.2574 108.6043 14.4141 12.4853 11.842 16.4353 25.2358 23.8937 44.1671 65.8886 99.195 7.9721 10.2135 3.8479 4.7742 5.0593 11.635 23.4929 3.9473 29.1324 64.7142 83.2779 101.5056 72.7575 9.2335 467.8062 263.4631 263.4631 152.1727 28.9663 38.7835 60.4708 24.9936 112.4109 313.7118 29.3489 182.6012 271.8899 1.4229 138.5038 76.9759 211.8541 316.9796;
	2.3451 31.6872 83.0848 105.8671 13.8637 12.2674 10.4072 16.5136 14.6035 22.9291 42.3842 63.2289 95.1907 13.7122 18.6809 7.0379 8.7323 9.2536 19.3043 27.9222 3.4691 28.6239 53.324 82.5752 98.004 71.7774 8.1971 348.6292 216.6379 216.6379 149.2491 28.1927 64.3476 71.8719 42.9895 92.4322 197.8853 34.7296 168.1853 262.5107 10.3958 136.0862 73.9437 212.7769 199.9466;
	3.1505 42.5698 86.6288 110.3444 13.9713 19.2349 11.3672 17.332 9.6691 21.5308 39.7994 59.3729 89.3856 27.8695 21.692 8.1723 10.1397 10.7451 34.4208 29.4344 3.7891 44.8814 59.8967 84.273 98.879 71.6943 7.4567 305.1476 196.6881 196.6881 129.9255 26.3858 114.7358 75.7643 87.3747 83.9202 167.1104 35.7291 193.7693 264.8545 13.8966 213.3789 86.065 206.5022 168.8511;
	2.6928 36.3855 87.8012 110.9402 13.8684 21.5184 11.5786 17.3899 12.0186 27.0857 50.0675 74.6909 112.4468 37.7455 25.7197 9.6897 12.0225 12.7402 38.174 38.4005 3.8595 50.2096 66.9582 86.342 100.9649 72.8892 10.8276 259.3419 219.0366 219.0366 104.4923 17.8515 127.2465 98.8431 118.3373 93.4556 181.2657 27.5711 158.93 270.4416 12.524 238.7109 87.1246 223.6826 183.1539;
	1.8182 24.5678 63.9455 111.8008 14.2179 17.2713 12.6115 17.5225 18.9313 28.3081 52.3271 78.0617 117.5214 40.9723 27.6942 10.4336 12.9454 13.7183 53.6529 56.6707 4.2038 40.2998 68.7557 85.2498 99.6421 71.7242 11.9005 140.3854 170.4489 170.4489 96.0776 11.0038 178.8431 145.8707 128.4538 72.7249 126.1924 32.5817 191.6467 266.8984 9.5308 191.5966 87.7319 199.6912 127.5069;
	2.7584 37.2717 75.0798 99.7956 13.9365 21.3547 10.9639 17.3852 21.145 28.247 52.2142 77.8933 117.268 43.1334 20.0304 7.5463 9.363 9.922 64.7067 58.7368 3.6546 49.8277 66.6629 82.7549 96.1852 70.9399 11.144 131.6908 151.8339 151.8339 96.2707 8.4232 215.6888 151.1887 135.2289 64.7825 121.9865 41.7899 152.5171 257.6389 20.9574 236.8953 72.2056 210.6706 123.2572;
	1.9029 25.7118 76.1934 99.4306 11.8715 11.9845 9.6146 16.6969 25.1321 27.8923 51.5585 76.9151 115.7953 44.6194 57.1644 21.5363 26.721 28.3163 74.2086 53.16 3.2049 27.9638 60.2348 81.5345 97.0178 69.5654 11.5805 253.875 237.0288 237.0288 108.4426 10.8118 247.362 136.8339 139.8879 101.1323 225.2565 25.9598 50.288 259.8691 3.2988 132.9477 61.2417 192.6655 227.6029;
	1.5807 21.3593 74.4478 98.5422 11.7368 24.1301 14.4344 15.8831 26.434 27.913 51.5967 76.9721 115.8811 52.8677 38.9285 14.6661 18.1968 19.2832 68.9217 40.5091 4.8115 56.3035 62.9922 82.8954 87.2917 68.8745 11.0376 399.0817 303.6592 303.6592 167.112 14.9089 229.7389 104.2704 165.7475 129.5612 329.1534 30.8469 177.0784 233.817 6.1108 267.683 85.3867 176.5628 332.5821;
	1.6991 22.9584 81.7227 87.2261 11.2235 27.8557 19.2725 17.0189 25.9312 27.5391 50.9057 75.9413 114.3292 53.2978 69.346 26.1257 32.4152 34.3505 81.8716 52.3606 6.4242 64.9967 62.6789 82.6322 94.9394 70.7697 11.2828 467.2006 359.2075 359.2075 271.1059 17.2812 272.9052 134.7763 167.096 153.2619 424.6526 39.7416 194.85 254.302 0.4151 309.0127 101.969 182.8893 429.0761;
	2.9004 39.191 86.5003 85.6735 13.5329 29.5738 19.8035 17.0452 25.7828 28.6798 53.0141 79.0867 119.0645 53.1053 51.5744 19.4303 24.108 25.5473 85.3223 66.0392 6.6012 69.0056 72.4711 84.0813 98.8491 69.5527 10.6607 600.238 419.4427 419.4427 297.7424 22.9189 284.4077 169.9849 166.4922 178.9622 555.0954 49.6723 187.4373 264.7745 1.2038 328.0725 132.8313 216.952 560.8776;
	3.5963 48.5939 86.4498 105.0437 14.1319 28.5962 21.2706 17.5491 25.9769 28.8205 53.2742 79.4747 119.6487 53.5853 73.697 27.7649 34.4491 36.5057 85.4317 62.6461 7.0902 66.7245 65.2361 85.7617 100.8581 70.378 11.1432 780.9435 554.2654 554.2654 387.3146 28.2522 284.7723 161.2512 167.9972 236.4866 681.2896 75.706 259.0183 270.1557 4.8599 317.2275 130.8833 240.5415 688.3864;
	3.7488 50.655 87.2509 107.7164 14.1861 32.4405 27.1642 17.2422 26.9194 25.1072 46.4103 69.2351 104.233 64.7396 106.8009 40.2366 49.9232 52.9037 84.739 61.4839 9.0547 75.6944 49.2262 83.3603 98.8784 69.1004 12.3046 942.8974 673.7416 673.7416 499.4687 35.7127 282.4632 158.2598 202.9673 287.4631 921.631 110.8595 411.4096 264.853 0.3808 359.8728 152.9558 248.6882 931.2314;
	3.6187 48.8971 85.7193 101.3017 14.177 31.9416 29.9447 16.3717 28.1533 18.9034 34.9426 52.1274 78.4776 63.5766 145.4632 54.8024 67.9956 72.055 88.8014 71.5467 9.9816 74.5304 45.982 82.8032 93.1945 66.6078 11.8041 1059.9661 714.7034 714.7034 657.6649 44.6899 296.0048 184.1614 199.3211 304.9401 1000.5174 148.5951 388.7267 249.6282 0.0 354.3388 157.4446 254.1781 1010.9394;
	3.5731 48.2808 86.7896 110.0503 14.1664 30.9822 29.3473 16.2421 27.1818 18.7981 34.7481 51.8373 78.0408 63.3264 170.0049 64.0483 79.4674 84.2117 85.1474 72.465 9.7824 72.2918 32.7933 84.1966 96.711 70.5092 11.874 983.6435 719.5944 719.5944 683.4586 75.5641 283.8248 186.525 198.5367 307.0269 947.3114 189.4815 387.7032 259.0474 0.0 343.6959 192.5438 268.5729 957.1793;
	3.6239 48.967 91.796 114.0359 14.2686 32.3066 29.4079 17.6382 27.1587 16.4826 30.4678 45.4519 68.4276 63.9709 185.2332 69.7855 86.5857 91.755 86.8006 72.3917 9.8026 75.3821 34.5891 87.0127 100.3631 70.1204 13.2908 1118.3636 752.1789 752.1789 726.3239 89.2523 289.3352 186.3365 200.5574 320.9297 1024.9565 224.8557 433.7028 268.8298 81.1468 358.3878 193.4504 257.4305 1035.6332;
	3.7802 51.0794 92.9809 118.8813 14.7414 32.8095 30.8569 11.8368 27.4201 19.8911 36.7683 54.8511 82.578 67.7963 191.3691 72.0972 89.4539 94.7945 86.6072 70.3883 10.2856 76.5556 40.4854 88.5163 100.9148 63.7685 12.8407 1186.2377 752.7397 752.7397 683.975 105.3464 288.6908 181.1797 212.5504 321.1689 1041.8273 226.2538 447.331 270.3075 112.2633 363.9672 205.8105 271.3925 1052.6796;
	3.7475 50.6368 93.4364 111.9935 15.2542 33.4671 30.4928 7.471 26.7437 21.1297 39.058 58.2669 87.7204 64.5627 192.9735 72.7017 90.2039 95.5892 85.0837 71.2195 10.1643 78.0898 45.8746 44.5946 42.6273 62.1297 10.4892 1198.275 747.5762 747.5762 700.8558 106.5848 283.6123 183.3191 202.4129 318.9659 1092.178 241.0886 437.9143 114.1803 113.9045 371.2614 203.2399 239.7184 1103.5549;
	3.9041 52.7528 94.7356 120.7553 15.3465 34.3243 30.5959 18.7282 16.6558 20.1965 37.3329 55.6933 83.8459 64.0043 186.9375 70.4276 87.3824 92.5993 84.1499 68.9068 10.1986 80.0901 21.1523 84.2507 103.8316 73.0721 13.936 1216.669 782.9851 782.9851 730.5871 105.638 280.4995 177.3663 200.6621 334.0736 1111.8041 242.2046 440.6566 278.1203 116.6541 380.771 211.2628 271.5004 1123.3854;
	3.8362 51.8358 94.1445 121.9249 15.3506 34.6126 30.5626 17.9452 8.4386 20.9751 38.7721 57.8404 87.0784 63.4311 186.5206 70.2705 87.1875 92.3927 84.4617 69.8669 10.1875 80.7627 22.8099 88.3299 102.9427 75.4602 13.9016 1233.1002 770.4406 770.4406 709.0918 101.9078 281.5391 179.8376 198.865 328.7213 1171.9446 241.5237 441.0259 275.7393 116.8315 383.9692 207.1988 246.2902 1184.1523;
	3.8744 52.3511 94.5802 119.436 15.3721 34.8912 30.1938 18.3819 17.9319 19.0728 35.2558 52.5947 79.181 67.1062 191.1958 72.0319 89.3729 94.7086 85.6219 66.8758 10.0646 81.4128 36.4663 89.7043 95.2566 76.3622 14.0907 1233.9396 791.5441 791.5441 703.5135 111.3348 285.4064 172.1385 210.3871 337.7255 1184.8973 248.7623 436.2668 255.1517 117.8798 387.0597 205.8656 264.6445 1197.24;
	3.8922 52.592 94.0589 120.1894 15.4156 35.076 31.3563 18.9836 8.9689 18.3348 33.8916 50.5596 76.1172 63.6403 196.3184 73.9618 91.7674 97.2461 88.9906 67.5516 10.4521 81.8441 44.1192 90.0652 106.1813 76.3324 14.1538 1247.8605 805.7912 805.7912 704.7826 113.4179 296.6352 173.8781 199.521 343.8043 1170.3479 260.8877 435.4522 284.4143 122.584 389.1101 211.576 275.9079 1182.539;
];
