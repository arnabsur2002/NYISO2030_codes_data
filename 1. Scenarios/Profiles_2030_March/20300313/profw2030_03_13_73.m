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
	0.7509 10.1461 59.142 65.8072 7.4212 0.1127 7.3852 9.1928 12.8776 17.9849 33.2449 49.5949 74.6648 8.3729 156.2806 58.8778 73.0521 77.4134 78.9747 73.3703 2.4617 0.263 68.3707 69.8774 51.8519 49.1911 4.4478 159.027 308.2824 308.2824 234.265 41.6948 263.2491 188.8553 26.2502 131.5338 353.6531 92.7712 179.9064 138.8891 52.6395 1.2504 0.0128 67.4586 357.337;
	0.4792 6.4748 54.2739 63.182 7.2021 0.1065 2.9056 11.7067 5.7578 11.2771 20.8456 31.0975 46.8172 9.4538 124.5671 46.9299 58.2279 61.7042 71.2144 73.6449 0.9685 0.2486 33.2296 70.8828 55.7902 56.1741 6.2323 54.394 203.8893 203.8893 156.9223 27.5233 237.3813 189.5621 29.639 86.9928 261.6777 96.8312 146.5067 149.438 67.5596 1.1818 0.0851 84.1213 264.4035;
	0.3574 4.8287 61.6923 66.9672 6.3479 4.8619 9.2743 12.64 8.735 9.6968 17.9244 26.7397 40.2565 9.8006 85.7674 32.3124 40.0913 42.4848 62.608 73.3368 3.0914 11.3445 25.5254 77.1727 58.6158 57.2592 6.7288 6.7567 4.9142 4.9142 95.9621 16.8081 208.6934 188.7692 30.7262 2.0967 161.7808 77.9929 183.498 157.0066 60.0987 53.935 9.6055 93.7571 163.4661;
	0.4019 5.431 65.9324 74.485 7.8563 4.0329 13.176 14.3378 8.4316 15.4643 28.5855 42.644 64.2002 5.0455 94.736 35.6912 44.2836 46.9274 48.1387 72.3244 4.392 9.4102 48.3771 76.306 63.4856 66.0101 7.6246 9.4894 2.603 2.603 177.9 20.3652 160.4623 186.1631 15.8184 1.1106 24.5843 134.3716 194.6792 170.0508 60.8047 44.7387 31.4487 134.0275 24.8403;
	0.5175 6.9923 81.0335 77.3261 9.8857 19.0401 9.3678 15.7736 11.6171 15.8434 29.2863 43.6894 65.7741 8.3629 123.024 46.3486 57.5066 60.9398 53.3917 72.1859 3.1226 44.4268 45.8627 79.8307 81.433 69.5272 9.0226 34.2056 8.3159 8.3159 296.707 12.9476 177.9724 185.8067 26.2188 3.5481 137.8567 150.9773 138.1442 218.1241 56.7482 211.2176 125.7394 152.737 139.2927;
	0.4965 6.7092 79.2256 62.5824 9.5014 4.9362 5.3948 13.4214 7.245 9.1075 16.835 25.1145 37.8098 14.1164 136.8394 51.5534 63.9644 67.7832 76.8326 70.5328 1.7983 11.5177 33.4604 78.9605 58.0051 62.3324 7.8587 36.7095 5.4663 5.4663 276.7202 13.5882 256.1087 181.5517 44.2569 2.3323 116.0935 168.2657 47.2114 155.3709 45.5014 54.7586 27.5256 146.7689 117.3029;
	0.4789 6.4715 60.1437 43.601 9.4038 4.4975 4.2263 8.3836 5.8865 7.941 14.6789 21.898 32.9673 19.414 106.3963 40.0842 49.7341 52.7033 56.4322 69.1026 1.4088 10.4943 21.5508 55.1914 35.1682 60.365 4.3414 50.5821 4.3754 4.3754 198.7553 23.5247 188.1074 177.8704 60.8655 1.8669 157.4192 132.4909 77.8339 94.2004 21.7981 49.8927 36.7453 144.6257 159.0589;
	0.6611 8.9324 43.7512 32.4474 4.1962 7.0646 5.5132 8.1863 13.4834 5.6867 10.5118 15.6816 23.6086 22.7601 55.9459 21.0773 26.1514 27.7127 14.1231 49.0788 1.8377 16.484 13.3553 36.8471 33.8513 63.485 4.7553 13.4717 48.001 48.001 411.7586 16.8773 47.077 126.329 71.3561 20.4804 118.4573 83.432 214.5551 90.6732 10.7214 78.3699 112.2641 115.8667 119.6913;
	0.7786 10.521 34.1655 28.9137 3.6231 13.0095 9.2313 6.388 4.8768 4.8384 8.9436 13.3421 20.0865 8.9992 16.7071 6.2943 7.8096 8.2758 0.0 19.1393 3.0771 30.3556 4.5648 35.8948 30.5852 54.4086 4.4307 2.6967 53.6986 53.6986 529.3815 3.4097 0.0 49.2645 28.2137 22.9114 49.1219 68.3615 54.346 81.9246 17.1047 144.3193 47.1524 88.9506 49.6336;
	0.7789 10.5241 34.0483 25.3971 6.7791 12.0207 1.8504 4.222 1.8969 3.9253 7.2559 10.8243 16.2959 1.865 10.8505 4.0879 5.072 5.3748 0.0 13.1588 0.6168 28.0483 8.816 28.9501 27.7352 37.4353 3.1068 31.167 27.7892 27.7892 181.9746 2.4951 0.0 33.8708 5.847 11.8567 19.3575 18.603 4.5768 74.2908 1.9355 133.3495 53.5748 90.5821 19.5591;
	0.9219 12.4565 45.3331 4.2469 10.1523 15.8193 5.8786 3.5478 3.533 14.136 26.1301 38.981 58.6857 4.5816 19.6258 7.3939 9.1739 9.7216 0.0109 13.0078 1.9595 36.9116 31.4511 38.833 43.7802 46.1153 1.2597 85.5134 75.3407 75.3407 160.446 6.0582 0.0364 33.4821 14.364 32.1454 92.9095 23.1801 21.7735 117.2684 2.4083 175.4883 34.5958 90.2398 93.8773;
	1.6317 22.0479 62.7598 6.8107 13.2668 7.3082 1.3811 0.8343 0.8215 7.1305 13.1805 19.6628 29.6022 5.5522 35.0922 13.2208 16.4036 17.3829 0.0159 10.9542 0.4604 17.0524 47.8547 54.4337 4.411 38.7867 0.6809 134.5275 96.4887 96.4887 157.2187 4.1147 0.053 28.1961 17.4068 41.1685 120.7485 37.18 5.6963 11.8152 2.0117 81.0718 12.8336 123.0814 122.0062;
	2.286 30.8886 79.2506 0.0239 13.9565 8.13 2.3313 0.9747 1.5736 24.4783 45.2478 67.5009 101.6222 10.1851 45.3972 17.1031 21.2206 22.4875 0.2663 11.4419 0.7771 18.97 28.0711 64.5398 65.6206 46.9148 0.202 206.4406 168.686 168.686 160.6915 3.2902 0.8876 29.4514 31.9316 71.9727 187.915 37.9797 0.6672 175.7694 2.0408 90.1888 113.1296 154.9998 189.8725;
	1.804 24.3765 2.0057 1.4581 13.6491 19.8685 4.5843 1.7665 1.9638 4.2914 7.9325 11.8338 17.8157 6.212 8.8133 3.3204 4.1197 4.3657 0.1062 8.9428 1.5281 46.3598 41.4416 13.8759 7.6875 30.6118 0.3787 168.5865 197.9021 197.9021 83.9447 4.547 0.3542 23.0188 19.4756 84.4382 191.1092 46.9943 1.5066 20.5916 1.5671 220.4079 84.4354 129.8007 193.0999;
	2.1124 28.543 0.0281 8.3749 9.1027 6.0487 1.9079 0.8461 2.3859 4.1072 7.5921 11.3259 17.0511 1.5379 8.9974 3.3897 4.2058 4.4569 0.3115 18.0315 0.636 14.1137 18.8514 4.8957 0.7766 0.802 0.0995 274.4625 249.4154 249.4154 101.6655 7.7303 1.0384 46.4132 4.8215 106.4172 260.124 26.8643 0.0635 2.08 6.6245 67.1005 83.3978 92.2217 262.8336;
	3.1622 42.7286 83.1565 19.0764 13.2965 3.9019 5.5628 0.9752 2.7099 1.1367 2.1012 3.1346 4.7192 3.1347 14.858 5.5977 6.9453 7.3599 2.8125 4.5127 1.8543 9.1044 23.1561 47.3668 7.895 0.7 0.1792 398.1127 296.9285 296.9285 194.9327 12.3195 9.3749 11.6157 9.8278 126.6895 339.125 46.7433 0.0 21.1472 22.2604 43.2848 20.0993 170.6876 342.6576;
	3.3415 45.1517 2.119 1.952 13.6584 1.3546 0.1798 0.5674 0.0125 0.4555 0.842 1.2561 1.8911 2.6898 10.2739 3.8706 4.8025 5.0892 0.3071 0.269 0.0599 3.1606 0.0 10.099 11.9903 1.0037 1.2354 350.3542 367.2909 367.2909 192.1416 25.7335 1.0236 0.6924 8.4328 156.7108 440.8454 81.5889 0.0 32.1169 17.2374 15.0265 138.2814 205.3043 445.4375;
	2.1823 29.4879 0.0 0.0 12.7816 16.8839 0.0 0.0 0.0 0.0061 0.0113 0.0168 0.0254 0.1073 2.3233 0.8753 1.086 1.1508 3.7081 0.3912 0.0 39.3959 0.6617 1.2923 0.1958 0.0342 0.0008 465.653 442.6895 442.6895 315.9491 33.7874 12.3605 1.0069 0.3364 188.8809 492.8526 93.8408 0.0 0.5244 8.5136 187.2992 106.007 192.1831 497.9865;
	2.8061 37.9162 80.3208 0.0 11.2141 22.6631 0.0 0.0 0.0 5.047 9.3294 13.9176 20.9529 5.6872 0.0 0.0 0.0 0.0 0.0 35.6714 0.0 52.8805 0.0 0.0 0.2168 56.8328 0.0 684.9921 404.4376 404.4376 342.786 40.2056 0.0 91.8183 17.8302 172.56 559.546 73.4271 0.0 0.5808 26.0626 251.4088 100.9442 179.8661 565.3746;
	2.978 40.2393 0.1647 0.0112 13.3992 1.2017 16.5338 0.0199 25.2567 21.3087 39.3889 58.7605 88.4636 4.7473 2.2004 0.829 1.0286 1.09 4.9618 19.5958 5.5113 2.8039 50.5034 0.5377 8.5963 47.9488 0.1694 649.4292 407.4187 407.4187 320.1879 39.3489 16.5392 50.4395 14.8836 173.832 493.074 75.4371 0.0 23.0259 66.8721 13.3303 107.6356 159.8893 498.2102;
	3.2487 43.8964 85.2459 0.0 13.7018 2.647 0.0 0.0 26.0717 23.1876 42.8619 63.9416 96.2637 8.9902 21.3227 8.0332 9.9671 10.5622 3.343 31.547 0.0 6.1764 69.188 76.9876 6.2689 54.9013 0.0237 636.2582 375.1765 375.1765 242.02 49.0828 11.1434 81.2021 28.1854 160.0753 517.7596 70.9437 0.0 16.7917 38.3464 29.3645 100.5683 162.0282 523.1529;
	3.6523 49.3509 88.7811 1.8665 14.115 23.0739 11.3572 12.5504 26.9136 25.9852 48.0332 71.6561 107.8778 13.7814 21.0664 7.9366 9.8473 10.4352 66.8071 58.4336 3.7857 53.8391 56.6287 80.5641 96.6543 67.0067 5.5322 720.8566 337.698 337.698 240.2555 56.5888 222.6902 150.4083 43.2065 144.0845 470.0466 101.4834 19.4036 258.8956 15.4611 255.9665 0.5097 190.6739 474.9429;
	3.7067 50.0857 89.2035 115.1138 13.6636 25.4867 12.6982 14.8563 27.1643 26.9554 49.8266 74.3315 111.9057 8.4338 60.0109 22.6088 28.0516 29.7263 58.8275 68.7606 4.2327 59.469 67.9485 81.75 95.1747 61.6924 7.4059 697.9787 358.3461 358.3461 316.2553 45.2435 196.0916 176.99 26.441 152.8943 395.7035 100.3368 84.1164 254.9322 12.0563 282.7327 132.2653 188.1088 399.8254;
	3.6225 48.948 88.7473 110.3979 14.0895 16.5316 10.5626 15.6788 27.698 25.9366 47.9434 71.5221 107.6761 10.959 51.389 19.3605 24.0214 25.4555 32.9346 53.8978 3.5209 38.5736 63.5109 82.5985 97.2669 63.6622 7.0722 719.7772 398.3741 398.3741 280.8577 46.3507 109.782 138.733 34.3579 169.9729 427.5185 79.5986 320.5949 260.5362 11.1005 183.3901 128.4033 211.9999 431.9718;
];