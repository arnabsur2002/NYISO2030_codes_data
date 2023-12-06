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
	3.6739 49.6427 93.1826 110.8005 15.0363 30.8962 27.6421 12.0883 27.0923 28.8945 53.4111 79.6788 119.956 65.325 188.3755 70.9694 88.0546 93.3116 87.0972 70.4348 9.214 72.0912 71.4462 88.1911 98.5489 63.1074 8.1613 1160.1336 797.0269 797.0269 729.1165 108.2027 290.324 181.2993 204.8028 340.0648 1106.3487 284.2171 451.2031 263.9704 103.5897 342.7421 187.9782 247.7029 1117.8732;
	3.6192 48.903 90.116 106.9238 14.3655 29.6483 26.8705 10.0851 26.1606 24.4809 45.2525 67.5079 101.6327 64.4332 189.2798 71.3101 88.4773 93.7596 84.5436 69.814 8.9568 69.1794 69.5618 86.2965 95.5863 61.2885 6.6927 1130.9025 768.3877 768.3877 746.3787 113.9537 281.812 179.7013 202.0067 327.8454 1157.3715 268.6345 442.807 256.0347 108.5013 328.8988 189.3785 244.028 1169.4275;
	3.6142 48.8364 93.9355 98.192 14.7791 30.5936 24.3629 10.4377 25.9435 25.4448 47.0343 70.166 105.6345 61.5922 188.7544 71.1121 88.2317 93.4993 85.4334 71.564 8.121 71.3851 67.0017 86.2664 89.2261 61.4829 8.1407 1080.5895 769.709 769.709 751.6007 112.3343 284.7778 184.2059 193.0999 328.4092 1075.2347 250.2802 439.3776 238.9986 110.9988 339.3852 174.4411 250.5868 1086.435;
	3.572 48.2651 93.2187 99.0721 14.4043 26.8454 19.6357 11.2483 24.368 25.8738 47.8272 71.3488 107.4153 52.3808 178.8587 67.384 83.606 88.5974 83.9978 69.7698 6.5452 62.6394 68.2017 87.4602 84.5475 57.8227 7.9215 1017.512 752.5915 752.5915 734.3239 111.8026 279.9927 179.5877 164.221 321.1057 1076.8895 255.1525 380.5174 226.4665 103.3502 297.8055 163.588 244.5408 1088.1071;
	3.6723 49.6203 89.5515 88.1051 14.749 28.3501 17.3912 9.0673 20.9513 26.6912 49.3383 73.6031 110.809 60.7816 171.6955 64.6853 80.2577 85.0492 83.731 67.8163 5.7971 66.1503 69.5572 86.0373 71.5219 49.4736 7.3192 1072.6057 742.3592 742.3592 703.917 104.4888 279.1035 174.5592 190.5585 316.7399 1044.1035 252.093 349.0458 191.5764 110.8796 314.4975 190.1491 217.7646 1054.9796;
	3.7797 51.0718 88.1494 83.8217 15.0754 30.5104 17.0861 7.1026 22.039 26.2364 48.4976 72.3489 108.9209 62.8467 165.3245 62.2851 77.2796 81.8933 84.0601 67.3324 5.6954 71.1909 67.5685 84.7386 56.1774 26.079 5.4194 1129.2268 682.8663 682.8663 627.6439 95.7612 280.2002 173.3138 197.0329 291.3563 1084.2834 215.7876 316.5537 150.4753 98.5505 338.4617 190.9369 176.319 1095.578;
	3.5173 47.5264 77.5224 68.2364 15.038 28.1329 15.7371 5.0864 18.6829 26.7775 49.4978 73.8409 111.1671 63.8385 179.9645 67.8006 84.1229 89.1452 84.0943 68.0292 5.2457 65.6435 70.1352 75.6848 48.4261 15.4785 3.8224 1133.2348 652.5072 652.5072 546.5225 63.1232 280.3142 175.1074 200.1422 278.4031 1018.9467 205.1783 266.5163 129.7127 77.8141 312.0878 163.5784 127.3964 1029.5607;
	3.5949 48.5756 73.3491 72.4396 14.6126 28.8858 16.417 5.0929 16.7567 24.969 46.1549 68.854 103.6594 66.1741 184.396 69.4701 86.1944 91.3403 88.4333 69.9606 5.4723 67.4003 60.4748 79.1888 57.1767 1.8368 3.3295 1113.4522 667.3363 667.3363 620.962 67.1057 294.7777 180.0788 207.4646 284.7302 1007.7849 212.8834 250.0677 153.1518 67.8942 320.4403 153.0185 135.8359 1018.2827;
	2.9383 39.7032 58.0045 64.1641 14.0428 22.8427 15.3985 3.0428 19.6737 20.711 38.284 57.1123 85.9822 63.5259 177.2383 66.7735 82.8486 87.7948 88.2018 68.6544 5.1328 53.2997 50.2176 74.0623 53.0353 0.0 1.396 1090.9606 722.4712 722.4712 723.6081 90.4154 294.0059 176.7166 199.1624 308.2544 995.2751 238.6951 215.8548 142.0588 44.8183 253.402 138.2691 142.6325 1005.6426;
	2.6665 36.0301 45.8669 58.7216 13.9856 18.05 19.0337 2.2215 19.24 19.7039 36.4224 54.335 81.8011 64.1731 176.6709 66.5598 82.5834 87.5137 85.5467 69.2381 6.3446 42.1166 46.1133 66.0265 33.7302 0.0 0.8969 984.6215 713.0048 713.0048 717.4952 103.2653 285.1558 178.2192 201.1915 304.2154 1030.116 234.5634 309.7741 90.3487 41.6035 200.2342 121.7133 119.1329 1040.8463;
	2.1456 28.9922 32.9537 46.38 13.2239 14.5997 18.0968 1.2585 17.4464 15.0485 27.8169 41.4974 62.4741 62.2215 177.4781 66.8639 82.9607 87.9136 88.2305 71.5089 6.0323 34.0661 35.084 48.8115 22.3037 0.0 0.6087 1012.8037 730.8431 730.8431 707.1164 96.199 294.1015 184.064 195.0728 311.8264 978.4991 235.4404 334.6804 59.742 33.2719 161.9598 91.1253 72.7566 988.6918;
	1.3612 18.3931 22.0682 20.233 8.9991 9.4279 17.7144 0.8979 15.4041 15.3722 28.4154 42.3901 63.8181 62.2574 181.809 68.4955 84.9851 90.0589 86.778 69.6167 5.9048 21.9985 35.3519 28.2063 15.3309 1.8992 0.627 921.4179 693.9638 693.9638 676.7783 101.5808 289.2601 179.1935 195.1853 296.0912 938.8845 205.3581 318.6081 41.0648 10.0751 104.5872 62.6274 65.9926 948.6645;
	0.6197 8.3735 18.2984 21.4417 7.9664 6.7025 15.4525 1.544 13.0278 12.514 23.1319 34.5083 51.952 62.324 183.3096 69.0608 85.6866 90.8022 83.757 70.144 5.1508 15.6392 34.2857 24.0999 14.3344 4.8146 1.9131 894.1598 688.5578 688.5578 681.0028 94.5954 279.19 180.5509 195.3941 293.7847 957.1226 212.6172 293.5196 38.3958 10.7095 74.3534 41.853 44.5615 967.0926;
	0.5566 7.5214 4.3624 17.7013 6.3323 5.9631 12.0803 1.6645 12.5095 17.9649 33.2078 49.5395 74.5814 65.4372 183.0344 68.9572 85.5579 90.6659 85.4457 69.0215 4.0268 13.9138 50.1763 5.3092 16.3703 3.852 2.3513 881.5691 649.2449 649.2449 642.8212 87.7576 284.8192 177.6615 205.1545 277.0112 807.7871 207.1393 347.531 43.849 5.1196 66.1504 34.4013 50.6705 816.2015;
	0.6543 8.8412 0.835 0.0 5.2883 6.7879 9.4712 1.2828 11.66 17.0823 31.5764 47.1058 70.9176 61.3507 169.473 63.848 79.2188 83.9483 76.9414 65.7144 3.1571 15.8385 51.4035 40.4173 22.051 2.8584 2.5304 761.7927 576.0106 576.0106 579.954 79.5303 256.4713 169.1491 192.3426 245.7645 684.1282 191.0857 276.6076 59.0651 8.5619 75.3009 29.2032 49.0906 691.2546;
	0.5655 7.6413 5.1168 26.5037 3.8049 0.0 4.0662 0.8833 9.0936 14.432 26.6772 39.7972 59.9145 61.8995 161.8361 60.9708 75.649 80.1653 80.8198 67.195 1.3554 0.0 43.7604 35.2365 20.6105 0.7151 1.4933 791.9138 467.5611 467.5611 503.3059 73.5224 269.3995 172.96 194.0634 199.4927 500.6984 170.9291 196.8516 55.2068 11.3058 0.0 0.0 18.7231 505.914;
	0.4066 5.4939 0.0 0.1452 3.5141 0.0 3.4683 0.0 11.4651 18.7633 34.6837 51.7412 77.8961 62.2069 167.2873 63.0245 78.1971 82.8656 83.8243 67.4706 1.1561 0.0 52.1913 29.2606 11.6967 2.5311 1.1267 753.264 509.3356 509.3356 570.3397 81.6314 279.4143 173.6695 195.0269 217.3165 688.0322 175.9859 227.4154 31.3303 19.5145 0.0 0.0195 14.8137 695.1992;
	1.0588 14.3067 0.631 25.3933 1.6307 0.18 1.1839 0.6316 1.5357 19.201 35.4928 52.9482 79.7133 67.6069 129.836 48.9149 60.6908 64.3141 85.268 55.2712 0.3946 0.4199 63.0517 33.7157 14.7871 2.7412 1.6555 726.5352 512.7318 512.7318 588.9728 83.5264 284.2268 142.2682 211.9568 218.7656 714.651 188.4402 338.9875 39.6084 65.3586 1.9966 0.27 83.7414 722.0953;
	0.5032 6.7987 18.5959 37.5723 0.0 0.2029 3.4455 0.7573 0.0025 20.6385 38.1499 56.9121 85.6809 63.166 117.5862 44.2999 54.9647 58.2462 44.4546 63.3472 1.1485 0.4734 60.0861 42.1443 20.3608 3.2288 1.374 793.1027 497.739 497.739 605.488 84.4903 148.1819 163.0558 198.0339 212.3687 701.1495 186.4976 334.9702 54.538 67.8677 2.2508 1.1607 6.7213 708.4531;
	0.3393 4.584 21.0067 51.0888 2.3511 1.5255 0.0 2.234 0.0 25.7291 47.5599 70.9499 106.8148 60.9299 98.4234 37.0804 46.0072 48.7539 69.5172 66.9997 0.0 3.5594 70.43 61.1601 31.6856 11.5981 2.4788 679.5856 356.5842 356.5842 581.7447 75.1644 231.7239 172.4574 191.0236 152.1426 590.8429 190.2084 0.0511 84.8722 75.8781 16.9226 8.042 0.5538 596.9975;
	0.7256 9.8042 40.0853 71.2101 5.9879 1.6376 0.0 3.8424 0.0 25.6096 47.339 70.6205 106.3188 54.2219 117.3171 44.1985 54.8389 58.1129 84.9258 69.1312 0.0 3.8211 72.1314 75.8947 31.8829 10.6573 2.1608 568.4887 319.944 319.944 456.8004 55.4249 283.086 177.9438 169.9931 136.5094 596.1222 170.2928 0.0 85.4005 91.0999 18.1667 2.6265 27.5667 602.3318;
	0.6087 8.2255 42.2469 67.0673 3.406 2.0702 0.0059 2.6717 0.0 23.3565 43.1742 64.4074 96.9651 36.7455 131.8896 49.6886 61.6507 65.3313 81.3875 68.0526 0.002 4.8305 71.981 68.7577 34.1087 9.2706 1.2956 459.0775 296.1657 296.1657 421.7613 54.0144 271.2917 175.1677 115.202 126.364 646.8154 147.2974 0.0 91.3626 75.0737 22.9656 16.1513 30.7772 653.5531;
	0.6087 8.2254 34.4194 55.9767 7.1866 0.525 0.0 1.8583 0.0 18.073 33.4077 49.8377 75.0304 17.4292 136.2092 51.316 63.6699 67.4711 85.3964 69.291 0.0 1.225 48.9493 61.2484 29.7128 17.6143 1.379 412.7376 311.2731 311.2731 457.5886 53.8353 284.6547 178.3553 54.6429 132.8099 444.9175 124.3119 0.0 79.588 53.3774 5.824 0.1117 0.0 449.5521;
	0.0101 0.1371 47.0977 69.3874 0.5857 4.2301 0.0178 5.3546 0.0 21.7607 40.2243 60.0068 90.3399 6.1465 160.9259 60.6279 75.2235 79.7144 87.7281 70.0165 0.0059 9.8703 69.7884 71.6878 46.161 34.8201 2.7183 327.1249 276.4766 276.4766 354.0065 49.2663 292.4268 180.2227 19.2702 117.9633 370.132 106.4484 0.0 123.6454 58.8378 46.9261 0.0235 58.5872 373.9875;
];
