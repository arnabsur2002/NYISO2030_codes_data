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
	0.674 9.1078 40.2833 50.9857 7.0899 3.545 1.2333 7.3561 3.5234 20.3123 37.5471 56.0128 84.327 1.4199 130.9277 49.3262 61.2011 64.8549 84.4776 66.9308 0.4111 8.2716 73.0593 63.8716 37.3676 38.6858 4.0021 191.6548 333.7815 333.7815 237.4529 44.6697 281.592 172.2801 4.4515 142.4134 397.2261 86.7074 54.8785 100.0917 57.3355 39.3257 5.9594 56.1593 401.3639;
	0.4321 5.838 48.9051 58.332 6.1772 3.8194 3.4144 10.7623 0.7716 12.1709 22.4977 33.5622 50.5276 1.9712 116.6168 43.9347 54.5116 57.766 78.7124 67.78 1.1381 8.9119 37.5326 70.2294 50.1114 49.2155 6.2751 193.3939 229.2586 229.2586 160.7716 28.5221 262.3745 174.4658 6.1799 97.817 311.6566 87.4452 96.6392 134.227 69.3049 42.3698 0.4692 85.8239 314.903;
	0.2586 3.4937 59.0476 61.3531 3.9816 8.4914 2.3328 10.8112 1.0058 9.6811 17.8954 26.6965 40.1914 2.5061 67.7528 25.5255 31.6705 33.5613 69.0031 63.997 0.7776 19.8133 30.0278 76.0483 53.1648 54.806 5.9611 130.6047 24.6169 24.6169 13.7171 17.0638 230.0102 164.7285 7.857 10.5032 169.3637 5.0682 85.0438 142.4057 70.0714 94.1982 3.5369 97.4002 171.1279;
	0.3867 5.2247 65.3624 66.7479 7.4077 19.2775 0.0019 12.7739 2.2888 15.7861 29.1803 43.5312 65.5361 1.96 72.4017 27.2769 33.8436 35.8641 46.6347 60.2546 0.0006 44.9809 51.0889 77.5815 55.2646 62.8533 7.246 56.4362 32.1967 32.1967 41.1833 20.8248 155.4489 155.0955 6.145 13.7373 28.1583 5.7947 15.4358 148.0302 68.6647 213.852 9.7963 142.4884 28.4516;
	0.4404 5.9503 74.7373 68.0716 8.5233 13.483 1.5108 13.2544 4.6237 15.9375 29.4602 43.9489 66.1648 1.8613 91.0887 34.3171 42.5787 45.1207 51.4141 60.8683 0.5036 31.4603 49.5812 77.6626 71.9332 65.9734 8.1687 294.8376 117.3439 117.3439 75.6293 11.264 171.3802 156.6751 5.8354 50.0667 119.4704 5.8243 29.3048 192.6782 66.3622 149.5714 9.5727 146.1862 120.7149;
	0.4201 5.6759 72.1155 55.0286 7.4611 4.5335 0.789 11.9285 2.4132 9.9544 18.4006 27.4501 41.326 7.2141 105.978 39.9266 49.5386 52.4961 75.8913 64.9734 0.263 10.5782 37.0909 63.1805 51.0356 64.7008 6.8204 22.8558 28.2239 28.2239 11.3134 9.8715 252.9711 167.2416 22.6173 12.0422 8.9304 0.0 26.6796 136.7025 50.9199 50.2919 22.7836 138.7446 9.0234;
	0.3836 5.1828 42.168 31.5849 6.4202 3.1289 3.7031 6.9682 2.0432 7.2327 13.3696 19.9448 30.0268 8.2077 96.1224 36.2136 44.9316 47.6141 62.7909 66.4759 1.2344 7.3008 23.9107 13.9758 19.1878 53.7879 3.3603 48.2191 48.6057 48.6057 31.3829 5.3954 209.303 171.109 25.7323 20.7384 18.3901 1.2695 22.8345 51.3959 27.1814 34.7099 26.909 123.6742 18.5817;
	0.4779 6.4571 23.4949 24.3929 2.9446 3.6269 4.9182 7.2679 3.336 5.6152 10.3796 15.4844 23.3116 6.8346 56.0087 21.1009 26.1808 27.7438 19.2969 49.1282 1.6394 8.4627 13.2776 2.5934 31.7678 55.6009 3.8745 12.7747 29.1841 29.1841 7.2545 1.175 64.3229 126.4562 21.4275 12.4519 14.0712 0.2728 276.461 85.0924 12.1034 40.234 2.7836 103.3194 14.2178;
	0.5099 6.89 25.0161 24.9364 2.9161 8.7092 3.3057 5.9358 11.2845 8.4959 15.7045 23.428 35.2707 7.0311 5.7799 2.1775 2.7017 2.863 6.3545 16.4552 1.1019 20.3214 5.7286 17.7026 28.5048 51.8877 4.0823 3.7358 49.9661 49.9661 12.6089 0.9951 21.1818 42.3557 22.0434 21.3189 12.0976 4.9224 256.2922 76.3521 18.233 96.6139 0.018 82.4576 12.2237;
	0.5322 7.1911 30.8996 26.715 5.7527 3.8858 2.9735 5.0731 11.9642 7.5516 13.9591 20.8242 31.3507 38.559 2.584 0.9735 1.2079 1.28 19.3884 11.5682 0.9912 9.0668 11.4391 35.3353 30.6146 50.8964 3.2132 30.0728 75.6593 75.6593 7.5827 0.9865 64.6279 29.7765 120.8876 32.2813 9.1033 0.3849 341.0291 82.0035 9.463 43.106 34.3472 95.0886 9.1981;
	0.9049 12.2278 46.4465 43.0878 10.917 15.8083 15.4194 5.9179 26.4748 13.7416 25.4012 37.8936 57.0486 58.4829 0.0111 0.0042 0.0052 0.0055 6.0737 10.1105 5.1398 36.886 32.8878 44.0713 51.438 60.142 1.5184 74.0273 87.9176 87.9176 133.0931 10.7759 20.2455 26.0243 183.3518 37.5115 98.9441 16.5362 433.0606 137.7803 10.003 175.3667 0.0297 112.1158 99.9748;
	1.5583 21.0562 63.0878 6.2955 12.1574 5.15 19.7553 1.7632 20.6138 9.4769 17.5179 26.1333 39.3436 15.2641 1.4575 0.5491 0.6813 0.7219 30.6721 9.9198 6.5851 12.0166 55.1525 54.578 7.9961 50.1171 0.1049 165.2241 120.0078 120.0078 64.5954 3.5887 102.2405 25.5335 47.8551 51.2033 137.4378 3.2952 433.4137 21.418 3.1489 57.1303 0.0 140.7716 138.8694;
	2.1719 29.3472 82.7936 17.888 13.6988 11.2575 24.1484 1.3796 13.7193 25.9942 48.0499 71.6811 107.9154 28.6739 0.0022 0.0008 0.001 0.0011 21.5825 10.2845 8.0495 26.2676 40.4491 69.1725 69.3196 57.0694 0.0834 244.0757 193.5762 193.5762 192.6918 20.4485 71.9417 26.4724 89.8964 82.5925 199.4926 30.0691 434.1893 185.6774 2.8683 124.8835 103.9209 179.3954 201.5706;
	1.6913 22.8529 0.0983 0.0205 12.8175 20.1758 19.2971 0.0237 20.1709 7.4563 13.7829 20.5614 30.955 5.8751 3.8318 1.4436 1.7911 1.8981 37.0427 9.2828 6.4324 47.0769 47.7376 0.8792 0.001 33.7138 0.0 207.0501 225.6746 225.6746 65.4216 8.2964 123.4756 23.894 18.4192 96.2878 191.0078 15.788 315.6004 0.0026 9.6061 223.817 74.6156 140.1117 192.9975;
	2.0778 28.075 0.0187 0.0 7.7022 2.2546 9.1609 0.0001 7.5146 8.0218 14.8282 22.1207 33.3027 7.9837 7.4949 2.8236 3.5034 3.7126 22.9201 14.7351 3.0536 5.2607 32.2091 0.0 0.0 0.054 0.0 285.5926 278.2426 278.2426 113.5725 9.2568 76.4004 37.9283 25.0299 118.7169 268.5744 54.7713 34.1817 0.0 2.8212 25.0108 77.4869 102.6154 271.3721;
	2.8121 37.9982 77.873 0.0 11.3382 0.6017 4.9455 0.0007 5.1343 5.9857 11.0645 16.506 24.8497 4.9355 12.2505 4.6153 5.7264 6.0683 19.0254 3.6248 1.6485 1.404 50.3608 0.0 0.0 0.9443 0.0 382.7512 288.573 288.573 188.4198 14.2212 63.418 9.3302 15.4734 123.1245 307.4082 50.6379 22.029 0.0 1.0097 6.6751 0.0 169.2276 310.6103;
	3.2076 43.3411 0.0064 0.0 13.4416 0.2061 3.5014 0.018 7.0337 6.3734 11.7812 17.5752 26.4593 3.4761 26.819 10.1039 12.5363 13.2847 15.2297 2.7975 1.1671 0.4809 3.9548 0.0 2.7224 0.2815 0.002 353.2941 384.8554 384.8554 189.6538 26.2109 50.7656 7.2008 10.8979 164.205 436.7301 73.0913 57.5398 7.2921 1.7375 2.2862 122.6668 208.2663 441.2794;
	2.6009 35.1436 0.0 0.0 13.6382 17.8321 4.3567 0.0282 3.4387 0.2278 0.421 0.6281 0.9456 17.4441 0.0 0.0 0.0 0.0 6.3015 0.0564 1.4522 41.6081 12.2889 0.0 4.8446 0.203 0.0531 576.0645 498.5036 498.5036 322.3091 34.7792 21.005 0.1451 54.6896 212.6949 545.9638 94.2998 71.3367 12.9767 11.7955 197.8169 98.1995 208.0492 551.651;
	2.8873 39.0138 80.9583 0.0 14.0629 24.5084 6.054 0.0 7.6435 8.3547 15.4435 23.0387 34.6846 9.3618 0.0802 0.0302 0.0375 0.0397 0.0783 39.1394 2.018 57.1862 28.5524 0.0 0.5616 50.4382 0.007 804.3818 483.7364 483.7364 363.3438 45.1887 0.261 100.745 29.3506 206.3942 631.7272 73.3762 116.6723 1.5042 4.6105 271.8796 102.3496 178.8395 638.3077;
	2.9253 39.527 0.5293 0.0048 14.2963 0.6277 18.8567 0.1706 26.3995 22.7174 41.9928 62.645 94.3117 21.4574 0.1682 0.0634 0.0786 0.0833 0.0237 20.0006 6.2856 1.4647 58.4579 0.6534 8.8717 48.0615 0.1677 778.196 449.8306 449.8306 314.8352 43.9181 0.0789 51.4815 67.2718 191.9277 558.1879 69.8415 45.2232 23.7636 48.9745 6.9637 103.1004 182.4627 564.0023;
	3.192 43.1311 82.3672 0.0 13.9505 0.9924 0.7585 2.0198 26.6006 23.8627 44.1098 65.8031 99.0663 8.4324 1.5228 0.5737 0.7118 0.7543 0.0 28.266 0.2528 2.3156 71.5899 78.5793 3.6175 58.8842 1.353 682.7873 379.522 379.522 233.1588 57.2032 0.0 72.7569 26.4366 161.9294 570.5182 68.9449 2.2255 9.6897 99.9996 11.009 95.318 183.5748 576.4611;
	3.6712 49.6058 86.1359 0.2415 14.0057 23.1951 12.055 14.4913 26.3552 25.4611 47.0644 70.2108 105.702 11.4719 0.0 0.0 0.0 0.0 13.4544 55.1753 4.0183 54.122 58.5908 75.2436 95.0176 66.0404 6.212 735.0543 315.9724 315.9724 207.7077 63.6033 44.8479 142.0213 35.9661 134.8149 506.0039 98.2697 71.8215 254.5114 15.7403 257.3113 0.0119 196.7522 511.2748;
	3.6859 49.8042 83.6647 106.5915 14.5554 25.1611 13.1178 15.4408 26.2971 27.2071 50.292 75.0257 112.9508 7.6753 41.5756 15.6634 19.4342 20.5944 6.6332 65.3831 4.3726 58.7092 68.9592 80.5964 91.6397 65.5785 7.5149 752.2256 329.9615 329.9615 282.6296 49.6371 22.1107 168.2964 24.0632 140.7836 444.7705 97.0632 51.2141 245.4635 11.6395 279.1204 135.6151 196.8369 449.4035;
	3.5528 48.0055 86.6678 108.0176 14.7032 17.5398 11.2916 17.1972 27.0665 27.7817 51.354 76.61 115.336 11.1776 33.3873 12.5785 15.6066 16.5384 3.1957 51.1869 3.7639 40.9262 66.2779 84.4644 100.2642 69.7754 7.5133 716.1697 387.0689 387.0689 264.3296 53.2457 10.6525 131.7553 35.0434 165.1494 434.8718 77.7114 331.7355 268.5649 12.4439 194.575 136.3484 222.9975 439.4017;
];