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
	1.8715 25.2876 84.0233 111.9816 14.0134 13.5179 8.0172 15.0069 25.6345 22.8584 42.2534 63.0337 94.8969 0.3842 23.5191 8.8607 10.9938 11.6502 13.3284 24.767 2.6724 31.5417 55.6879 82.1291 91.9881 67.1508 6.7204 604.589 389.654 389.654 209.342 36.9612 44.4278 63.7504 1.2044 166.2524 462.6305 54.8661 146.3304 246.3966 2.2655 149.9583 97.0794 172.5394 467.4495;
	2.6052 35.2026 85.7985 112.4496 14.3787 15.0175 9.6518 15.2352 25.6877 23.9311 44.2363 65.9919 99.3504 0.0 16.9852 6.3991 7.9396 8.4136 13.0394 14.3368 3.2173 35.0408 57.505 83.1375 91.3844 70.0221 6.2094 534.9657 367.3903 367.3903 164.0855 30.7004 43.4646 36.9028 0.0 156.7532 401.5309 48.2442 220.4591 244.7797 7.6732 166.5938 93.9787 194.4519 405.7135;
	2.9542 39.9171 88.2809 114.6504 14.9255 12.7689 7.3653 16.6885 25.8991 24.4371 45.1716 67.3872 101.451 3.1344 18.7405 7.0604 8.7601 9.2831 23.1349 21.9998 2.4551 29.7941 66.67 83.3311 90.7429 69.903 7.9137 576.2593 348.7025 348.7025 142.6479 31.6488 77.1162 56.6275 9.8268 148.7797 369.1847 41.5228 194.0956 243.0612 4.5862 141.6496 79.9005 186.3505 373.0304;
	2.616 35.3477 87.6877 113.2071 14.7368 11.1635 8.6299 17.0777 25.8349 24.3341 44.9812 67.1031 101.0233 6.887 16.2291 6.1142 7.5861 8.039 11.7483 23.9313 2.8766 26.0481 72.5243 85.9252 96.6674 72.5257 9.0387 488.4953 271.887 271.887 155.5745 25.7953 39.1609 61.5993 21.5916 116.0051 290.7849 36.312 141.8326 258.9307 0.1328 123.84 70.1691 180.3713 293.814;
	2.0524 27.7318 89.7967 115.7007 14.2051 13.1417 8.0363 17.4052 15.9772 22.4315 41.4643 61.8566 93.1248 12.081 17.8368 6.7199 8.3377 8.8355 21.7319 24.921 2.6788 30.6639 61.1708 86.8738 98.326 72.1494 9.3542 359.1552 210.8654 210.8654 140.8029 24.0378 72.4397 64.1468 37.8755 89.9693 157.0997 33.4133 130.0157 263.3731 9.2784 145.7851 73.6523 200.7908 158.7362;
	2.8211 38.1195 90.4125 118.622 14.2206 21.9092 10.0053 18.2886 9.1568 20.8525 38.5455 57.5024 86.5695 26.5152 16.9126 6.3717 7.9057 8.3777 34.834 27.6736 3.3351 51.1215 64.0848 85.1833 97.725 71.7 8.3703 295.5086 195.5207 195.5207 125.6476 13.7901 116.1132 71.2319 83.1286 83.4222 148.2243 29.2005 167.6268 261.7634 11.2163 243.046 87.5125 188.4592 149.7683;
	2.2967 31.0335 88.1751 113.6034 13.354 22.2192 11.4409 16.8929 7.9126 26.6425 49.2482 73.4687 110.6067 43.7147 23.3023 8.779 10.8924 11.5427 39.6867 35.3574 3.8136 51.8448 70.4212 82.9846 96.5929 71.3231 10.5846 274.137 227.54 227.54 100.9305 10.8758 132.2889 91.0101 137.0515 97.0837 184.0087 21.0228 146.6087 258.7309 7.3696 246.4848 87.587 212.9548 185.9254;
	1.5692 21.2028 63.7549 110.4629 11.1365 17.4457 10.9388 17.7705 14.1723 28.0574 51.8636 77.3703 116.4806 44.8864 22.4912 8.4734 10.5133 11.141 49.0406 46.6829 3.6463 40.7066 73.2848 82.3265 97.052 72.3985 12.1839 137.0606 170.0102 170.0102 64.4275 7.7964 163.4686 120.1619 140.725 72.5377 109.7437 15.051 142.9333 259.9608 6.0356 193.531 81.9777 183.0645 110.8869;
	2.6626 35.9771 82.1794 106.8428 12.9755 21.9278 10.8062 18.3196 20.027 28.4344 52.5606 78.4101 118.046 47.891 10.9763 4.1352 5.1308 5.4371 63.2455 44.7187 3.6021 51.1649 73.1792 83.2064 97.033 71.8468 12.5132 124.578 139.2224 139.2224 69.0874 5.8186 210.8184 115.1059 150.1449 59.4016 105.4954 20.3241 139.3553 259.9098 16.1443 243.2524 75.0254 225.8052 106.5943;
	1.9938 26.9406 84.5301 112.309 11.3019 13.7819 10.7354 18.3943 25.7754 29.2502 54.0685 80.6595 121.4325 49.9898 1.7881 0.6737 0.8358 0.8857 79.952 40.6256 3.5785 32.1578 71.0148 81.2625 98.1584 70.2801 12.5375 261.5315 236.7546 236.7546 94.4331 6.4712 266.5066 104.5704 156.7249 101.0153 225.5113 27.2501 277.5671 262.9244 14.0582 152.8874 75.7018 205.073 227.8604;
	1.6379 22.1316 79.1036 107.862 11.1162 25.0642 14.3388 18.2592 26.0562 29.6398 54.7887 81.734 123.0501 53.4442 1.5985 0.6022 0.7472 0.7918 72.7826 26.9459 4.7796 58.4832 73.1734 83.9678 95.1786 70.5589 12.0726 356.5415 289.1877 289.1877 146.8647 5.759 242.6085 69.3589 167.5549 123.3867 303.2647 27.7175 179.0905 254.9426 28.8871 278.0459 94.519 184.5502 306.4237;
	1.7387 23.4931 84.0303 95.1642 11.5242 28.81 19.6368 18.2492 26.2856 28.7494 53.1428 79.2786 119.3534 54.1654 32.1518 12.113 15.0291 15.9263 86.3313 45.9099 6.5456 67.2234 74.2845 81.7569 96.2794 69.6552 12.6534 414.7442 363.2649 363.2649 268.3169 7.2929 287.7711 118.1722 169.8158 154.993 404.4223 44.9917 214.15 257.8912 11.7819 319.5993 106.6108 175.5061 408.635;
	2.8349 38.3054 87.0762 91.7427 14.0894 29.1319 19.6487 17.6386 26.0989 28.2983 52.309 78.0347 117.4808 58.0053 49.481 18.6417 23.1295 24.5103 87.8672 56.1258 6.5496 67.9744 72.6138 83.9282 99.7139 69.7217 11.2266 510.7209 415.0115 415.0115 304.2137 10.9073 292.8906 144.4679 181.8544 177.0716 539.0065 58.1709 216.5316 267.0907 3.8373 323.1696 127.1324 204.8 544.6211;
	3.5553 48.0404 87.2485 109.3748 14.3237 29.4937 21.6143 18.2058 25.9302 28.9049 53.4303 79.7075 119.9992 58.3648 67.8466 25.5608 31.7143 33.6077 87.7664 55.959 7.2048 68.8187 69.938 84.4573 100.3542 70.9074 11.7584 672.3444 560.699 560.699 391.7546 24.907 292.5546 144.0385 182.9816 239.2316 676.4331 81.3707 282.0443 268.806 3.2185 327.1836 131.6593 239.3354 683.4793;
	3.571 48.2515 84.6757 105.5953 13.9796 30.8249 22.9053 17.5003 24.8827 26.1015 48.2482 71.9768 108.3606 63.7859 102.809 38.7327 48.0573 50.9263 86.6763 58.7272 7.6351 71.9247 53.5299 83.7618 97.6126 68.685 11.8213 877.7504 617.8007 617.8007 489.9102 33.5998 288.921 151.1639 199.9773 263.595 866.5018 108.6736 395.4823 261.4624 0.4971 341.9505 138.6944 236.8142 875.5279;
	3.7159 50.21 88.1264 111.2863 14.3961 32.1626 28.3097 18.0593 26.9553 20.9641 38.7519 57.8102 87.0329 65.7432 137.3995 51.7644 64.2263 68.0607 91.3361 64.0087 9.4366 75.0461 48.4987 86.4824 103.5993 70.739 12.3969 977.6897 703.6114 703.6114 646.6052 45.2534 304.4537 164.7584 206.1137 300.2075 958.7702 155.1105 381.0724 277.4981 0.2594 356.7905 163.6474 260.6418 968.7574;
	3.6909 49.8724 87.3015 114.6702 14.3507 32.5221 28.5878 18.337 26.5612 19.8455 36.684 54.7253 82.3887 67.6731 173.5216 65.3733 81.1113 85.9537 91.3755 69.4476 9.5293 75.885 31.4885 84.4552 103.8685 72.6882 12.4415 1038.2372 741.0424 741.0424 712.8695 78.4854 304.585 178.7584 212.1642 316.1781 970.7044 203.8513 394.1074 278.2193 0.1918 360.779 194.1607 270.742 980.8159;
	3.6757 49.6663 90.7966 111.877 14.7698 32.828 28.6884 18.5373 26.7814 17.0633 31.5412 47.0533 70.8385 65.2499 187.3585 70.5862 87.5792 92.8078 89.624 70.7346 9.5628 76.5986 31.1501 85.0422 105.597 69.9929 13.0992 1079.1666 744.2825 744.2825 677.4665 88.5976 298.7468 182.071 204.5672 317.5606 1003.4553 223.0518 442.2101 282.8492 102.2219 364.1714 159.1199 258.2294 1013.9079;
	3.8946 52.6252 91.902 117.6802 14.539 34.5512 30.1771 13.9919 27.4548 20.167 37.2784 55.612 83.7236 65.9774 189.3629 71.3414 88.5162 93.8007 88.7583 68.1014 10.059 80.6194 50.5281 83.7811 106.1393 60.8011 13.1208 1174.6595 778.0166 778.0166 689.4813 106.4936 295.8611 175.2931 206.848 331.9537 1065.8198 238.5722 466.2151 284.3018 116.4304 383.2877 198.5682 269.0317 1076.9221;
	3.9213 52.9854 94.1114 110.8996 15.2242 34.9038 31.9269 9.4807 28.0736 21.0234 38.8614 57.9736 87.2789 67.0149 198.0005 74.5955 92.5537 98.0793 90.5517 68.023 10.6423 81.4423 51.237 39.9049 51.475 62.4023 11.8794 1151.5358 757.0705 757.0705 704.2211 102.791 301.8391 175.0914 210.1007 323.0167 1065.13 262.086 474.8467 137.8794 118.9948 387.1998 202.9904 246.3007 1076.2251;
	3.9178 52.938 93.2153 116.291 14.6689 34.0959 31.6702 19.0222 18.315 22.0757 40.8066 60.8754 91.6475 65.7142 194.3613 73.2245 90.8526 96.2767 87.8471 68.7545 10.5567 79.557 42.9962 78.5489 105.9954 71.5457 14.023 1250.5614 787.6798 787.6798 739.551 105.6677 292.8236 176.9744 206.023 336.0767 1105.8021 253.7119 476.9324 283.9162 118.4152 378.2368 200.9086 266.7365 1117.3208;
	3.9214 52.9866 92.5626 119.5836 14.8932 34.2538 30.5615 18.8193 9.2809 22.9042 42.338 63.16 95.0871 64.2909 201.6082 75.9547 94.2401 99.8664 90.7892 72.6878 10.1872 79.9255 50.4813 87.8387 106.3342 72.7864 14.0754 1286.7379 796.8009 796.8009 770.0494 109.9973 302.6307 187.0985 201.5606 339.9684 1170.6064 264.3847 470.1233 284.8238 121.2739 379.9888 207.8462 237.1655 1182.8002;
	3.9154 52.9057 94.6329 119.8061 15.2155 34.0057 30.6261 18.8959 19.1393 21.5902 39.9092 59.5367 89.6322 65.7956 203.907 76.8208 95.3147 101.0051 92.0958 70.2854 10.2087 79.3466 53.6197 88.2097 100.3628 73.8623 14.094 1271.2744 796.3926 796.3926 770.8112 115.2501 306.9859 180.9147 206.2782 339.7942 1182.9739 277.1966 464.5631 268.8288 123.1771 377.2365 205.2182 262.3993 1195.2965;
	3.8924 52.5944 94.4699 119.5215 15.0437 33.5136 31.9191 18.6097 9.8036 19.7673 36.5396 54.5099 82.0644 61.2539 205.9259 77.5814 96.2584 102.0051 92.2585 72.5482 10.6397 78.1985 51.415 87.4914 106.0136 72.2235 13.831 1252.7231 796.3921 796.3921 779.5691 115.527 307.5284 186.7393 192.0392 339.794 1190.965 286.8344 462.2513 283.965 123.6827 371.7779 212.6052 267.8178 1203.3709;
];
