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
	3.635 49.1165 85.2597 115.7084 14.6473 14.5097 14.9197 16.5831 26.8789 23.1035 42.7064 63.7096 95.9145 6.2876 19.7271 7.4321 9.2213 9.7718 9.1784 26.5558 4.9732 33.8559 47.4004 82.0582 96.656 69.8735 7.4977 692.1679 381.701 381.701 198.8744 38.3836 30.5947 68.3546 19.7125 162.8591 482.8338 50.6999 314.8679 258.8999 14.9567 160.9608 125.4066 204.7914 487.8634;
	3.4636 46.8006 85.8786 115.7701 14.2495 16.8952 13.9263 16.6999 25.8519 19.6821 36.382 54.2748 81.7103 9.0184 15.6255 5.8868 7.304 7.7401 10.7092 15.5098 4.6421 39.4221 38.715 81.736 95.0351 71.3637 7.1274 715.1389 373.8812 373.8812 169.9249 36.1966 35.6972 39.9223 28.274 159.5226 490.0047 59.3293 308.8792 254.5583 14.4422 187.4238 118.7869 202.7695 495.1089;
	3.0558 41.2908 86.7656 114.8018 14.3876 12.9268 13.5908 16.8497 26.4393 20.4355 37.7748 56.3526 84.8385 10.8764 17.9109 6.7478 8.3723 8.8722 15.6827 21.2907 4.5303 30.1625 41.4515 81.906 94.5876 71.5576 7.5183 659.7934 345.5855 345.5855 145.3246 34.2179 52.2758 54.8022 34.099 147.4498 408.8927 41.8002 242.5052 253.3597 31.5618 143.4014 88.775 200.7881 413.152;
	2.6618 35.9666 87.88 111.3212 14.3649 11.5011 12.0818 16.4189 25.6858 14.7956 27.3494 40.8 61.4241 13.2434 8.7725 3.305 4.1006 4.3455 7.1661 15.5383 4.0273 26.836 36.6034 82.8652 97.6816 72.7343 8.9292 518.8511 254.8824 254.8824 143.1818 30.0355 23.8871 39.9955 41.52 108.7498 310.2708 34.0823 178.6372 261.6471 0.8044 127.5859 81.2278 206.6281 313.5028;
	2.1028 28.4135 87.018 111.177 14.3627 14.0201 12.5156 15.786 17.2438 13.4422 24.8477 37.0679 55.8055 25.0362 15.7742 5.9428 7.3735 7.8137 15.2512 21.4103 4.1719 32.7136 25.0483 81.5731 96.3333 73.0284 8.2163 392.6835 187.1708 187.1708 126.8308 26.8117 50.8373 55.1103 78.492 79.8595 184.7743 34.3128 172.7035 258.0358 11.3917 155.5297 88.0555 204.1104 186.699;
	2.7019 36.5085 86.6292 111.7523 13.9942 21.2199 11.2667 15.7958 3.4624 10.3547 19.1405 28.5538 42.9876 31.2128 13.5488 5.1044 6.3333 6.7114 29.0797 18.6179 3.7556 49.513 30.9097 80.7202 93.7158 72.4105 7.1063 300.0766 154.7501 154.7501 114.0094 24.1862 96.9324 47.9226 97.8565 66.0267 147.9781 34.1225 182.4786 251.0244 9.002 235.399 92.7014 198.1382 149.5195;
	2.4375 32.9357 87.2002 112.383 14.2675 22.3145 12.7463 16.4213 11.0771 22.8127 42.1689 62.9076 94.7071 43.4714 16.1514 6.085 7.5499 8.0006 28.9844 29.5103 4.2488 52.0671 47.6062 84.0051 95.8613 71.4013 11.1667 262.7339 187.0208 187.0208 97.2416 16.6695 96.6146 75.9596 136.2886 79.7955 155.4599 25.7252 157.6631 256.7712 10.7844 247.5419 102.2905 216.866 157.0793;
	1.8767 25.3584 71.225 115.5492 14.9204 19.1602 12.9188 17.3708 18.6145 26.9142 49.7504 74.2178 111.7345 42.4737 28.3307 10.6734 13.243 14.0336 50.1776 56.6035 4.3063 44.7072 58.5006 83.8493 97.4957 71.4521 12.5567 155.1877 129.4198 129.4198 98.2732 9.6926 167.2586 145.6975 133.1609 55.2191 97.4815 43.7084 176.906 261.1491 8.859 212.5508 103.8011 197.7591 98.4969;
	2.7337 36.9379 82.9846 101.0919 14.2722 23.9901 11.6455 16.4685 21.0564 23.8144 44.0206 65.6701 98.866 43.3569 17.3015 6.5182 8.0874 8.5703 54.9808 51.5089 3.8818 55.977 52.1594 81.7944 96.5268 70.787 11.7333 156.9888 79.8205 79.8205 80.5046 5.0007 183.2693 132.5841 135.9297 34.0567 105.7093 18.0252 138.0 258.554 17.0995 266.1305 90.0499 221.5168 106.8105;
	1.975 26.6866 83.3976 107.0528 12.852 13.9051 11.3567 17.3949 26.9351 27.2303 50.3347 75.0895 113.0469 45.472 8.4821 3.1956 3.9649 4.2016 70.8917 48.6565 3.7856 32.4451 67.3365 81.3486 98.362 71.7774 12.4267 259.8788 211.9186 211.9186 109.0306 6.5135 236.3058 125.242 142.5608 90.4186 206.9631 24.0846 107.6221 263.4696 17.2268 154.2534 86.6701 213.4645 209.119;
	1.6747 22.6284 76.2351 103.2412 12.3273 25.0363 14.7254 16.273 26.4191 25.4117 46.9731 70.0747 105.497 50.0476 1.5277 0.5755 0.7141 0.7567 65.3822 35.0325 4.9085 58.418 51.7529 78.6792 84.5494 70.5687 11.6711 371.5466 289.187 289.187 159.6928 7.9559 217.9406 90.1738 156.9059 123.3865 299.291 24.4599 170.4749 226.4716 2.0951 277.7359 99.3234 176.9654 302.4086;
	1.7957 24.2634 86.5923 96.2992 11.9341 31.0194 20.0515 17.9562 27.0206 27.8854 51.5458 76.8962 115.7668 51.33 0.424 0.1597 0.1982 0.21 81.0163 52.6433 6.6838 72.3786 59.3307 83.2579 96.1041 72.7027 12.7993 491.7031 348.5122 348.5122 265.8754 12.6624 270.0545 135.504 160.9264 148.6985 417.5391 38.3297 199.3658 257.4216 20.7442 344.1087 115.797 180.7094 421.8884;
	2.8169 38.0618 86.5731 90.5905 13.9506 31.2137 19.8718 16.5647 26.5806 28.5742 52.8189 78.7954 118.626 53.6275 39.4169 14.8501 18.4251 19.5251 79.4352 63.4638 6.6239 72.8319 66.3661 79.5032 95.4676 66.5206 10.9118 606.8096 387.8007 387.8007 288.0359 14.2993 264.7839 163.356 168.1294 165.4616 529.4987 42.9678 214.3063 255.7169 0.1979 346.2634 142.4819 198.9261 535.0143;
	3.5573 48.067 85.8869 100.8909 14.0715 29.3483 20.8958 16.788 26.3712 28.4831 52.6506 78.5443 118.248 54.1101 45.4411 17.1197 21.2411 22.5092 82.3255 58.9092 6.9653 68.4794 53.6202 80.4341 95.996 64.0799 11.0422 771.0385 501.7304 501.7304 371.2324 19.8217 274.4182 151.6324 169.6424 214.0716 654.92 65.0066 269.4579 257.1322 5.4107 325.5707 143.9196 225.5388 661.742;
	3.7101 50.1322 86.833 102.3212 13.9909 31.4877 23.233 17.0168 26.4838 25.5672 47.2606 70.5035 106.1426 62.8826 86.4396 32.5656 40.4055 42.8177 84.3608 58.3845 7.7443 73.4714 45.6811 82.0515 97.3855 62.228 12.2366 973.6985 637.1586 637.1586 474.105 32.2946 281.2027 150.2818 197.1453 271.8543 869.4906 103.3903 397.5335 260.854 23.1661 349.3041 156.2338 238.2588 878.5477;
	3.5594 48.0957 82.7807 99.5287 13.414 31.9448 27.2646 16.0991 26.4295 18.068 33.3984 49.8238 75.0094 62.1476 103.2794 38.9099 48.2771 51.1593 88.5878 64.3639 9.0882 74.538 38.9344 76.1387 91.236 54.5095 11.9329 1067.9081 672.7868 672.7868 602.0069 41.8335 295.2925 165.6728 194.841 287.0557 930.5436 149.9098 370.3968 244.3821 0.0453 354.3748 168.3007 235.0677 940.2368;
	3.6024 48.6762 86.0634 100.341 12.5098 32.3174 31.1573 17.4637 25.8535 8.3894 15.5078 23.1345 34.8289 65.0091 109.8004 41.3667 51.3253 54.3895 85.2779 64.4037 10.3858 75.4074 0.7765 81.943 97.5131 67.0585 12.6081 1120.6331 724.3019 724.3019 663.2428 75.104 284.2596 165.7753 203.8124 309.0355 985.4891 202.4239 405.665 261.1959 0.0011 358.5081 201.3281 261.572 995.7546;
	3.6378 49.1545 90.2949 109.7255 13.7398 32.0144 30.1956 17.6978 26.7356 6.8676 12.6947 18.9381 28.5111 62.9732 158.6411 59.7671 74.1555 78.5827 86.5467 67.5377 10.0652 74.7003 7.6656 82.6004 100.3306 67.002 12.9816 1151.8309 733.3071 733.3071 689.8471 91.0371 288.4891 173.8422 197.4296 312.8777 1031.8277 222.6139 425.6612 268.7428 101.1087 355.1465 191.9314 259.0548 1042.5759;
	3.7845 51.1366 93.3053 115.5319 14.0689 32.625 31.4603 13.8598 26.3924 8.4793 15.6739 23.3824 35.202 57.8338 171.152 64.4805 80.0036 84.7799 85.113 63.6491 10.4868 76.1251 20.4605 86.0278 104.9379 63.9007 12.8743 1177.0536 754.9338 754.9338 679.9808 104.4916 283.71 163.833 181.3168 322.1051 1042.6125 238.0281 444.0544 281.0837 114.3596 361.9203 200.2483 271.1324 1053.473;
	3.7587 50.7885 93.4147 106.4472 14.4657 33.7027 31.5957 8.3753 26.2516 8.3911 15.5108 23.1391 34.8358 56.9197 183.8691 69.2716 85.9481 91.0793 82.9629 66.7901 10.5319 78.6397 21.3166 41.0072 44.409 60.1222 10.4037 1231.8236 763.7951 763.7951 703.8509 108.4449 276.543 171.9179 178.4509 325.8859 1083.6057 251.5256 448.5796 118.9527 117.5462 373.8754 203.5936 240.796 1094.8933;
	3.8542 52.0782 93.9862 116.2921 14.4915 33.6693 31.1878 18.9788 16.3391 10.1506 18.7633 27.9911 42.1404 63.238 188.2369 70.9172 87.9898 93.2429 83.9912 67.2563 10.3959 78.5617 17.7035 79.9852 102.7957 72.5219 13.8629 1234.752 800.0961 800.0961 745.6685 108.0992 279.9706 173.118 198.2596 341.3743 1079.3843 252.7234 439.8526 275.3456 117.576 373.5049 201.3794 272.5014 1090.6279;
	3.6833 49.77 92.4938 118.8053 14.7548 34.1671 31.0002 18.2678 8.6438 13.7847 25.4807 38.0123 57.2272 62.6729 188.7122 71.0962 88.212 93.4784 85.0667 69.1455 10.3334 79.7233 25.3914 87.5501 103.3322 74.4131 13.4282 1253.8481 805.0187 805.0187 750.9505 111.0677 283.5555 177.9806 196.4879 343.4747 1156.272 245.5101 453.2302 276.7828 116.7487 379.0274 203.6081 242.537 1168.3165;
	3.7677 50.9105 92.4749 115.1107 15.0605 34.5743 32.2363 17.782 18.6189 17.1066 31.6213 47.1727 71.0182 63.0104 193.6947 72.9734 90.541 95.9465 81.1398 68.4406 10.7454 80.6733 45.7962 85.5578 92.5435 74.314 13.6106 1234.3372 797.1646 797.1646 729.5038 108.928 270.466 176.1663 197.5462 340.1236 1147.2593 244.2373 465.3547 247.8845 116.2028 383.5441 200.9131 259.4971 1159.2099;
	3.8083 51.4579 93.2694 117.4185 15.1787 35.0369 33.7599 18.6904 10.7059 17.0134 31.449 46.9157 70.6314 63.9798 196.7975 74.1423 91.9914 97.4834 78.7139 69.2136 11.2533 81.7529 49.8667 88.6414 105.8354 75.2887 13.8201 1225.8037 785.9002 785.9002 737.6492 113.1642 262.3797 178.1561 200.5852 335.3174 1137.095 256.0596 465.422 283.4877 120.3185 388.6764 204.2219 277.3021 1148.9398;
];
