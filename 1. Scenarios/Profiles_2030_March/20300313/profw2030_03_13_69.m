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
	0.7029 9.4974 48.838 63.4636 7.0575 0.0 0.0924 7.0638 6.2737 19.3464 35.7616 53.3493 80.3171 7.9001 159.4239 60.062 74.5214 78.9704 82.8617 70.1035 0.0308 0.0 71.2207 68.0472 46.3352 33.8472 3.8197 198.895 346.9012 346.9012 233.8795 41.8754 276.2055 180.4465 24.7679 148.0112 379.9404 83.5955 69.1256 124.1121 47.7708 0.0 0.0 55.5704 383.8981;
	0.4731 6.3925 49.2963 63.8842 6.533 0.1899 1.9614 10.1554 7.803 11.276 20.8435 31.0944 46.8124 8.8445 133.9361 50.4596 62.6073 66.3451 80.1825 70.8551 0.6538 0.4431 36.1381 68.1649 51.9066 40.653 5.5451 86.287 243.7031 243.7031 155.5658 25.8277 267.275 182.3813 27.7286 103.98 293.8384 86.065 107.5847 139.0356 66.2446 2.1065 1.9947 78.5962 296.8992;
	0.3312 4.4746 58.2473 69.8628 6.237 0.0 0.2824 10.3124 0.6336 9.3708 17.3218 25.8408 38.9031 16.9625 91.3724 34.424 42.7113 45.2612 69.9846 67.4051 0.0941 0.0 28.9327 76.2882 55.6625 51.0413 5.8007 25.3237 154.3526 154.3526 74.0663 14.7067 233.2819 173.501 53.1797 65.8571 175.7131 3.8178 12.6749 149.0959 58.6415 0.0 11.3445 90.8918 177.5434;
	0.4355 5.8847 59.3365 73.5924 8.1399 0.0 1.881 11.3969 1.8191 14.8333 27.4191 40.9038 61.5805 21.0255 99.0361 37.3113 46.2936 49.0574 49.3849 68.5854 0.627 0.0 51.2565 74.6026 58.917 59.7821 5.8585 10.8736 32.364 32.364 60.4543 19.1116 164.6162 176.539 65.9177 13.8086 31.324 13.1062 17.1198 157.8134 52.1915 0.0 2.7538 114.5283 31.6503;
	0.5539 7.4841 77.6331 73.0642 9.7588 0.0 0.3935 12.8116 2.4412 15.6108 28.8563 43.0479 64.8083 5.6254 130.056 48.9979 60.7936 64.4231 59.7317 67.536 0.1312 0.0 50.8091 81.8202 75.7764 64.5661 7.7944 15.8838 29.8283 29.8283 64.8151 8.5904 199.1058 173.8378 17.6364 12.7268 22.354 3.5346 0.0 202.9726 54.9479 0.0 2.2858 139.4508 22.5869;
	0.5463 7.3813 76.2126 59.9935 9.6937 3.0395 2.3899 11.6742 3.9622 9.3785 17.336 25.8618 38.9349 15.4602 159.9629 60.2651 74.7733 79.2374 85.263 71.1079 0.7966 7.0921 41.9507 79.5167 54.1082 61.1503 6.9779 51.8104 60.8196 60.8196 63.5912 9.1582 284.2101 183.032 48.4699 25.9497 39.528 3.3969 22.0571 144.9326 43.8405 33.718 23.9938 128.1044 39.9398;
	0.5471 7.3929 54.127 37.3869 8.95 2.1726 3.9779 8.1051 2.7692 7.9752 14.7421 21.9923 33.1093 16.8005 134.5765 50.7009 62.9067 66.6623 73.8778 69.9992 1.326 5.0694 28.7229 56.0598 34.3875 62.0646 4.0668 54.913 41.8322 41.8322 62.3106 0.0052 246.2593 180.1782 52.6719 17.8484 80.3181 1.5892 65.5295 92.1093 23.3066 24.1016 32.0256 129.8295 81.1547;
	0.5545 7.4931 32.0054 26.4333 3.7965 2.2202 4.4851 7.157 3.6994 5.357 9.9023 14.7724 22.2397 9.7936 70.6893 26.6318 33.0432 35.0159 28.6131 52.132 1.495 5.1805 16.8666 38.7903 32.4536 61.8342 4.434 21.2626 3.4606 3.4606 4.9074 0.004 95.3769 134.1879 30.7043 1.4765 18.7238 0.001 87.1964 86.9292 3.4852 24.6295 5.6002 95.5379 18.9189;
	0.5976 8.075 28.0324 26.1395 3.801 0.4556 4.7406 5.6461 17.6137 14.2979 26.4294 39.4275 59.3579 10.5464 20.8871 7.8691 9.7635 10.3464 77.094 20.3942 1.5802 1.0631 9.0678 39.2284 29.09 55.1753 4.4422 2.8951 4.1393 4.1393 0.153 0.0328 256.9799 52.4946 33.0645 1.7661 0.0 0.0 297.5341 77.9196 0.0002 5.0541 12.8687 68.6448 0.0;
	0.6253 8.4493 32.2178 26.9227 8.2849 0.6985 9.0108 4.8201 25.2803 22.7596 42.0708 62.7613 94.4868 5.8643 13.1845 4.9672 6.163 6.5309 79.1637 14.9049 3.0036 1.6297 15.5089 38.8578 29.7299 47.3539 3.2239 38.1724 37.4848 37.4848 0.0 0.001 263.8792 38.3652 18.3855 15.9935 16.1755 0.051 325.7734 79.6338 1.0343 7.7482 47.5003 81.296 16.3439;
	0.8867 11.9817 44.4092 15.8312 11.4335 1.2955 9.1624 3.6416 25.8561 24.5285 45.3406 67.6392 101.8305 8.1422 10.7049 4.033 5.0039 5.3027 33.7316 12.6187 3.0541 3.0229 36.6095 39.4589 45.7099 49.7705 1.3688 75.1443 66.3811 66.3811 2.7764 0.0 112.4387 32.4806 25.527 28.3226 70.0195 3.5481 146.5486 122.4372 1.3129 14.3718 16.7992 85.1024 70.7489;
	1.6949 22.9019 65.5634 11.5769 13.8962 1.0422 12.4989 0.8289 23.8523 17.8281 32.9551 49.1625 74.0138 24.619 0.7792 0.2936 0.3642 0.386 15.4437 10.9337 4.1663 2.4318 52.8202 54.3201 1.6024 46.3694 1.3938 173.1125 94.5735 94.5735 0.0003 0.1135 51.479 28.1433 77.1839 40.3514 128.2854 3.3602 224.25 4.292 0.0 11.5615 8.4615 122.3555 129.6217;
	2.2153 29.9339 81.9208 4.6181 14.2454 0.0 1.8867 0.0945 1.5418 23.642 43.7019 65.1946 98.1502 3.7124 0.0 0.0 0.0 0.0 0.1205 10.187 0.6289 0.0 32.5855 63.1894 59.7659 51.6575 0.3507 233.6095 152.2488 152.2488 0.0 0.886 0.4017 26.2213 11.639 64.9595 171.806 5.2681 23.6909 160.0872 0.0 0.0 101.3819 163.3925 173.5956;
	1.7633 23.8264 4.276 0.3076 14.0633 15.2804 0.3326 0.0318 2.1863 0.4819 0.8908 1.329 2.0007 1.2206 0.0 0.0 0.0 0.0 0.0001 8.6215 0.1109 35.6543 45.9256 1.3617 0.0068 32.4349 0.1001 210.2039 203.2423 203.2423 5.8361 0.4021 0.0005 22.1918 3.8266 86.7167 192.5086 6.8012 26.4018 0.0183 0.0131 169.5108 70.7027 135.269 194.5139;
	2.2873 30.907 62.9089 69.7805 10.9812 0.3152 1.6294 2.1195 8.6857 4.4544 8.2339 12.2834 18.4926 6.2019 0.8417 0.3171 0.3934 0.4169 0.6625 4.0045 0.5431 0.7354 30.6013 41.7437 17.1377 10.2404 0.6929 288.2161 260.9235 260.9235 96.0018 4.2679 2.2083 10.3075 19.4438 111.3274 259.3809 17.2227 102.5581 45.9045 0.7426 3.4963 81.1858 112.9094 262.0828;
	3.0988 41.8713 88.6989 19.6121 14.4951 0.7071 0.4825 4.0825 4.8046 6.449 11.921 17.7837 26.7733 6.9894 0.0 0.0 0.0 0.0 0.0 1.4914 0.1608 1.65 43.7669 30.9957 38.37 15.2709 1.2132 373.9539 289.9043 289.9043 172.9366 8.5965 0.0 3.8389 21.9128 123.6925 310.3133 46.2202 31.1535 102.7768 10.0284 7.8446 19.2415 189.6736 313.5458;
	3.242 43.8061 29.9827 10.8845 14.8372 2.7456 0.2711 12.4429 3.5963 6.6365 12.2675 18.3007 27.5517 0.0133 4.4616 1.6809 2.0855 2.21 3.2328 2.5692 0.0904 6.4064 3.1805 44.3348 55.325 32.3829 4.8613 352.2921 354.5738 354.5738 176.5744 21.3013 10.7761 6.613 0.0416 151.2848 425.5503 71.1651 18.5572 148.1921 0.8495 30.4578 134.8048 229.4363 429.9831;
	2.593 35.0373 20.8859 37.7383 14.5465 18.8613 1.0475 3.4213 3.6708 9.3589 17.2999 25.808 38.8538 4.9651 0.0012 0.0005 0.0006 0.0006 0.0004 0.7372 0.3492 44.0098 12.993 21.8922 39.878 4.0085 0.5758 562.793 482.9849 482.9849 334.5518 31.3932 0.0015 1.8976 15.5664 206.0735 541.4338 93.0166 33.6284 106.816 0.6349 209.2351 109.4147 227.078 547.0737;
	2.6849 36.2791 86.3385 6.5006 14.7407 24.9389 2.128 0.8313 3.2509 9.2472 17.0934 25.4999 38.39 6.6784 0.0 0.0 0.0 0.0 1.0373 34.4518 0.7093 58.1907 30.0787 11.0151 8.4781 62.206 0.02 756.6853 432.5783 432.5783 328.0763 36.762 3.4578 88.679 20.9378 184.5668 589.7639 58.4434 210.8584 22.7093 2.2235 276.6554 103.3143 212.9089 595.9072;
	2.8569 38.6028 27.2763 52.3053 14.9365 1.7637 19.0662 0.4603 26.22 22.918 42.3636 63.1981 95.1444 12.7396 1.8635 0.7021 0.8711 0.9231 15.3045 15.599 6.3554 4.1152 57.1237 18.3539 24.3405 53.0698 0.0214 750.373 434.5785 434.5785 315.4507 37.0774 51.015 40.1519 39.9402 185.4202 545.1536 73.9184 235.8771 65.1977 2.7225 19.5648 110.823 181.4587 550.8323;
	3.0583 41.3244 89.1558 49.7561 15.1964 2.291 3.2821 3.8628 26.8439 23.7593 43.9187 65.5181 98.6371 9.9181 18.1277 6.8295 8.4736 8.9795 21.1167 18.7766 1.094 5.3457 71.1628 86.6417 51.9522 63.7607 1.5159 614.6179 380.1171 380.1171 213.0554 48.3471 70.3889 48.3311 31.0946 162.1833 517.0259 64.2781 150.9194 139.1577 33.9712 25.4148 108.1165 186.3424 522.4116;
	3.5699 48.2368 92.5556 25.1616 15.2265 24.8425 12.2284 14.8378 27.2043 24.4074 45.1168 67.3054 101.3279 13.3786 1.9515 0.7352 0.9122 0.9667 42.1133 49.421 4.0761 57.9658 56.4623 83.2024 101.959 73.0446 6.0615 714.2041 307.9135 307.9135 204.1119 60.372 140.3775 127.2097 41.9438 131.3764 473.4632 96.6834 380.8631 273.1043 14.2135 275.5861 20.3875 214.3344 478.3951;
	3.6533 49.3641 93.5491 115.9198 14.9539 26.4869 12.8502 16.9977 26.7803 24.9673 46.1517 68.8493 103.6522 9.1606 57.5408 21.6782 26.897 28.5028 63.8905 65.6317 4.2834 61.8027 63.9411 88.0318 100.8085 72.5036 7.8677 763.7258 337.9289 337.9289 280.9408 46.9362 212.9683 168.9361 28.7197 144.183 437.58 97.1815 140.9191 270.0228 11.6006 293.8276 134.9273 218.746 442.1381;
	3.6079 48.7506 93.5288 113.0297 14.5697 17.6665 10.9228 17.9214 26.7378 22.7095 41.9782 62.6232 94.2788 12.3212 50.5237 19.0345 23.6169 25.0268 52.1758 52.1891 3.6409 41.2217 52.4816 89.6396 105.9359 75.8102 7.7771 701.4394 382.1484 382.1484 267.9918 50.2527 173.9192 134.3349 38.6288 163.05 435.701 81.1215 322.1856 283.7569 12.1937 195.9798 131.833 243.1475 440.2395;
];
