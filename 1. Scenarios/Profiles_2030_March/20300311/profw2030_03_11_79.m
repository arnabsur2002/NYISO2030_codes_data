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
	3.8651 52.226 89.651 106.5719 14.0145 32.7201 27.4441 18.6845 26.9405 31.2039 57.68 86.0472 129.5436 68.4193 201.4727 75.9037 94.1768 99.7993 37.0273 73.1589 9.148 76.3469 74.93 86.9033 104.0071 75.5482 13.6386 1142.2317 699.2387 699.2387 595.7172 102.8418 123.4244 188.3113 214.5036 298.3418 1106.1943 234.0819 448.0846 278.5905 121.2114 362.9749 146.8969 268.2967 1117.7172;
	3.7223 50.296 91.5256 113.7135 14.0824 32.135 28.5358 18.7837 26.9673 30.6331 56.6248 84.4731 127.1738 65.9569 196.296 73.9534 91.757 97.235 32.7777 73.264 9.5119 74.9817 74.7696 86.9443 102.6439 74.9701 13.5937 1173.9544 713.6112 713.6112 566.4277 101.0357 109.2591 188.5816 206.7837 304.4741 1113.0376 230.893 445.3562 274.939 122.1072 356.4845 132.9117 266.2176 1124.6317;
	3.7919 51.2365 94.3713 59.8352 14.0972 33.2997 28.7039 18.5995 27.8247 30.9315 57.1764 85.296 128.4127 68.173 204.0631 76.8796 95.3877 101.0824 34.2844 72.6103 9.568 77.6993 75.276 88.5065 105.34 75.7023 13.7921 1195.5525 689.5136 689.5136 557.1718 110.1815 114.2814 186.8991 213.7317 294.1925 1148.3126 230.2909 446.6746 282.1607 120.8122 369.4049 134.128 268.3428 1160.2742;
	3.6753 49.6613 92.9508 72.8568 13.9669 33.0634 27.4471 18.4893 28.1607 29.661 54.8279 81.7925 123.1382 64.4029 201.543 75.9301 94.2096 99.8341 40.0353 71.8684 9.149 77.1479 69.3719 87.2452 103.6098 74.9627 13.667 1270.9227 681.3699 681.3699 522.7517 99.5756 133.4511 184.9893 201.9117 290.7178 1081.2718 232.8323 437.5333 277.5261 121.2773 366.7832 170.8016 270.2117 1092.535;
	3.281 44.3339 90.173 109.4469 14.0626 31.9085 22.7492 18.0401 27.6053 29.8819 55.2362 82.4015 124.055 63.4451 194.5885 73.3101 90.9588 96.3892 71.5164 69.8259 7.5831 74.4531 60.9822 86.1236 100.7985 73.1146 13.3316 1235.6144 634.5867 634.5867 487.3535 97.6521 238.3881 179.732 198.9088 270.757 1118.5487 229.2471 429.1052 269.9959 119.3999 353.9711 181.6076 262.1841 1130.2003;
	3.6057 48.7206 92.148 110.177 14.6395 32.2478 24.8359 18.4267 26.2108 31.0125 57.3262 85.5194 128.749 64.4342 200.2986 75.4613 93.6279 99.2177 86.7824 72.3516 8.2786 75.2449 73.9625 87.4153 104.3752 74.0223 13.6945 1233.2251 635.5393 635.5393 457.9608 93.1767 289.2746 186.2331 202.0098 271.1634 1047.6494 215.5737 424.8866 279.5764 120.6902 357.7358 187.2695 259.7196 1058.5624;
	3.6366 49.1386 90.1598 110.1151 14.753 32.0454 27.0411 17.957 25.8162 30.5386 56.4501 84.2124 126.7813 64.3659 200.5709 75.5639 93.7552 99.3525 87.7099 73.2476 9.0137 74.7726 73.9857 85.7486 100.1005 75.4215 13.0112 1222.1528 679.7789 679.7789 539.1412 98.8087 292.3663 188.5396 201.7958 290.039 1093.5689 250.7307 432.4023 268.1264 120.4115 355.4903 192.9183 262.0705 1104.9603;
	3.582 48.4005 86.9524 110.0398 14.6342 30.2584 25.779 17.8016 25.7372 30.1086 55.6553 83.0268 124.9963 63.047 195.4771 73.6449 91.3742 96.8294 84.0163 70.7411 8.593 70.603 74.9595 84.6283 101.7334 73.5655 13.0135 1130.6088 646.1388 646.1388 510.0759 86.7975 280.0543 182.0877 197.661 275.6859 1012.3801 246.8173 418.022 272.5001 118.926 335.6669 177.4674 237.0775 1022.9257;
	3.7396 50.5303 89.3519 115.7748 14.9812 32.0475 24.8628 18.2929 25.8132 30.7698 56.8775 84.85 127.7413 66.4586 200.6883 75.6081 93.8101 99.4107 87.0533 71.1474 8.2876 74.7775 75.546 85.919 103.2634 74.3302 13.1443 1144.2346 736.8726 736.8726 571.5361 81.4604 290.1777 183.1337 208.3567 314.399 1091.0057 277.4824 341.1924 276.5985 123.058 355.5138 168.5645 269.0537 1102.3703;
	3.6513 49.3368 89.2278 111.804 14.5304 30.9259 24.9935 18.579 25.9673 30.9759 57.2586 85.4185 128.5971 65.5867 200.0949 75.3846 93.5328 99.1168 89.7365 69.839 8.3312 72.1604 75.4958 85.2167 100.2869 73.0698 13.2351 1038.3508 724.436 724.436 638.16 88.8034 299.1216 179.7657 205.6231 309.0927 1050.4074 290.6724 325.4406 268.6256 123.7754 343.0711 144.1474 262.5536 1061.3492;
	3.6089 48.7646 90.957 114.7562 14.3463 31.9464 23.9377 18.4672 26.2093 31.3223 57.8987 86.3735 130.0348 63.9814 198.848 74.9148 92.9499 98.4991 87.6792 72.4557 7.9792 74.5417 75.6411 84.9123 98.7477 72.0696 13.5194 1037.1376 737.5234 737.5234 609.4372 88.6233 292.2641 186.5012 200.5904 314.6766 1065.3317 292.8345 417.9645 264.5029 120.9125 354.3926 150.794 262.797 1076.4289;
	3.5794 48.3659 88.711 113.5718 14.113 31.2538 25.5074 17.7789 27.3843 31.0484 57.3925 85.6183 128.8978 63.9359 199.3173 75.0916 93.1693 98.7316 87.721 71.4366 8.5025 72.9256 74.9125 82.0749 96.9092 71.8055 12.8758 982.5532 710.9226 710.9226 617.7424 94.3883 292.4032 183.8781 200.4478 303.327 1049.5641 283.1789 434.6063 259.5781 119.7974 346.709 159.3286 256.4056 1060.4971;
	3.5932 48.552 88.4505 114.8381 14.2013 31.0897 28.7337 18.4755 27.7243 30.9883 57.2814 85.4526 128.6484 66.1063 199.6103 75.202 93.3062 98.8768 85.3336 71.9874 9.5779 72.5426 73.7715 85.7682 96.4538 71.9816 13.0678 983.6194 737.0255 737.0255 646.4625 97.263 284.4452 185.2957 207.2522 314.4642 984.6457 291.9261 448.9892 258.3583 122.2507 344.8883 141.8281 257.5452 994.9024;
	3.7964 51.2979 93.2863 120.1772 14.9565 32.3624 29.6439 18.7668 27.915 30.9569 57.2233 85.3659 128.5179 66.1018 203.9136 76.8233 95.3178 101.0084 89.1196 73.6378 9.8813 75.5122 75.0786 86.0697 97.276 71.7884 13.1644 1020.5104 716.783 716.783 687.4841 97.9818 297.0652 189.5438 207.2381 305.8274 995.2908 305.0994 460.8917 260.5608 122.1124 359.0067 146.8562 262.9265 1005.6584;
	3.5938 48.5603 89.3395 111.858 14.482 31.6237 27.0915 18.2237 27.4348 31.3648 57.9773 86.4908 130.2114 67.4331 203.1658 76.5415 94.9682 100.6379 90.5263 73.4979 9.0305 73.7887 75.8226 86.7132 92.0766 72.7656 12.9655 975.9231 693.5206 693.5206 637.3725 96.8234 301.7542 189.1838 211.4119 295.9021 916.1967 298.7524 450.3382 246.6338 115.2638 350.8127 158.8903 239.0103 925.7405;
	3.6332 49.0931 87.2686 113.5059 14.508 31.8678 26.9187 17.3024 26.7191 31.0053 57.3129 85.4995 128.7191 67.1725 202.5134 76.2957 94.6632 100.3148 87.4617 73.8894 8.9729 74.3582 75.8271 83.4967 79.3965 71.9862 12.3355 1110.8344 732.5353 732.5353 663.5156 103.2307 291.5392 190.1914 210.595 312.5484 1048.6106 281.1778 450.7565 212.6693 112.0608 353.5202 173.3017 240.091 1059.5337;
	3.7144 50.1894 87.561 114.4772 14.8824 33.063 25.6464 17.3608 27.2533 31.1165 57.5183 85.806 129.1804 65.1384 202.0208 76.1101 94.433 100.0708 90.3254 73.9586 8.5488 77.147 75.8261 85.6776 93.7877 71.4595 11.0882 1031.653 709.9673 709.9673 621.2652 91.7941 301.0847 190.3697 204.2176 302.9194 1037.6764 255.6493 451.2728 251.2172 112.8821 366.7788 183.2167 232.3303 1048.4855;
	3.7764 51.0271 88.1849 112.9714 15.2251 32.8966 25.5219 14.8142 27.1083 30.7817 56.8996 84.883 127.7908 64.7485 199.0795 75.002 93.0581 98.6138 87.1033 73.5781 8.5073 76.7587 75.3024 83.233 96.4507 66.7535 10.572 1093.4156 699.4347 699.4347 653.7253 93.7213 290.3444 189.3901 202.9954 298.4255 1063.1429 279.4107 467.8361 258.35 113.8423 364.9329 187.8771 240.2824 1074.2173;
	3.744 50.5895 86.2624 109.3683 15.3113 33.2802 26.3001 14.5095 27.2229 30.0043 55.4625 82.7391 124.5633 65.8938 199.8784 75.303 93.4315 99.0095 90.1296 73.2845 8.7667 77.6538 73.9628 82.0899 96.4554 44.3315 11.1107 1127.9099 726.3943 726.3943 609.3417 92.9564 300.4319 188.6346 206.5859 309.9282 1123.554 263.9874 465.4017 258.3628 113.8189 369.1884 156.7492 215.2994 1135.2577;
	3.7966 51.3007 89.6086 105.1634 15.3871 28.5649 27.1498 14.5944 27.7568 30.4346 56.2578 83.9256 126.3495 63.919 196.3704 73.9814 91.7918 97.2719 88.0014 71.8437 9.0499 66.6515 74.2116 83.8692 96.2386 48.3888 10.8296 1150.4071 718.0558 718.0558 615.1821 105.8587 293.338 184.926 200.3946 306.3705 1182.2896 247.17 465.2355 257.7821 113.2321 316.8805 181.4495 235.6747 1194.6051;
	3.7566 50.7605 91.8197 111.3317 15.4227 31.5309 30.5764 15.3252 28.185 30.2298 55.8794 83.3611 125.4996 64.9203 195.5687 73.6794 91.417 96.8747 86.261 71.1792 10.1921 73.5722 73.3861 87.4161 99.5361 61.2768 10.8563 1144.7529 700.4263 700.4263 603.6211 103.5395 287.5365 183.2153 203.534 298.8486 1126.576 248.2739 461.946 266.6144 115.6514 349.7833 159.2763 237.2887 1138.3112;
	3.6738 49.6412 89.5727 103.0827 15.425 30.8004 28.8875 14.4055 27.5937 30.4265 56.2428 83.9033 126.3159 64.6873 195.9444 73.8209 91.5926 97.0608 86.1784 70.3912 9.6292 71.8675 73.5931 88.8647 99.5774 68.43 11.4532 1166.1892 743.4707 743.4707 653.6177 95.4457 287.2612 181.1872 202.8035 317.2142 1024.3497 253.519 469.7509 266.7253 112.8875 341.6787 155.8719 245.1962 1035.02;
	3.7077 50.0997 91.8435 100.0058 15.4244 31.3266 30.8829 13.5001 26.9002 29.6425 54.7936 81.7413 123.0611 69.2578 196.0188 73.8489 91.6274 97.0977 85.9766 72.5538 10.2943 73.0954 72.6178 89.9786 101.1374 65.1054 10.5842 1168.5147 774.2592 774.2592 732.2304 105.1977 286.5886 186.7536 217.1324 330.3506 1133.0124 262.577 466.6862 270.9037 118.1561 347.5163 170.5006 233.7235 1144.8146;
	3.7942 51.2679 88.6707 108.3211 15.3994 33.2136 28.0954 12.4952 26.585 28.4624 52.6124 78.4873 118.1622 66.2312 191.2291 72.0445 89.3885 94.7251 86.1462 71.1214 9.3651 77.4983 69.3151 88.6695 100.1263 59.6242 10.1471 1152.0235 741.9226 741.9226 753.7895 112.8291 287.1538 183.0667 207.6437 316.5536 1095.9118 280.642 455.1666 268.1953 116.2197 368.4493 184.3014 218.9777 1107.3276;
];