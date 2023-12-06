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
	3.6868 49.8173 93.6179 113.529 15.3041 32.5416 28.6991 12.6315 28.094 30.0055 55.4648 82.7425 124.5684 68.9301 189.8705 71.5326 88.7534 94.0521 83.943 72.5536 9.5664 75.9304 74.1805 89.8611 101.8515 64.789 8.9253 1267.3719 771.8193 771.8193 741.7553 116.4607 279.8098 186.7531 216.1052 329.3096 1146.9282 290.6842 471.7147 272.8166 118.5928 360.9947 198.2559 246.5747 1158.8753;
	3.4617 46.7746 86.8892 106.7672 14.5241 29.6445 26.9997 10.297 25.9893 26.5926 49.156 73.331 110.3995 66.8669 186.0508 70.0936 86.9679 92.16 81.7186 67.8891 8.9999 69.1704 70.7508 87.9388 97.7556 59.4475 7.3034 1234.2718 753.5861 753.5861 754.0936 118.453 272.3954 174.7467 209.6367 321.5301 1170.5171 284.3189 437.8963 261.8453 114.5646 328.8558 188.6396 237.3772 1182.71;
	3.5647 48.1669 86.322 92.2838 14.9716 31.1012 26.6254 8.9566 27.49 27.6712 51.1498 76.3055 114.8775 67.1942 182.6861 68.8259 85.3951 90.4934 82.8863 67.489 8.8751 72.5695 71.2272 85.9658 85.6232 52.4378 6.6493 1204.4289 756.5866 756.5866 738.8009 114.7789 276.2877 173.7168 210.6628 322.8103 1126.0346 270.4172 465.9302 229.3478 112.0081 345.0161 179.3846 243.1916 1137.7642;
	3.5416 47.855 79.8822 92.4734 14.4233 31.0635 22.1496 9.1155 26.5405 28.36 52.423 78.2047 117.7368 66.6853 186.0478 70.0924 86.9665 92.1586 83.5943 67.1938 7.3832 72.4815 70.4915 83.9646 80.2798 43.0983 6.0932 1132.6199 762.4391 762.4391 705.6667 115.458 278.6476 172.957 209.0675 325.3073 1088.0845 256.4801 442.3663 215.0353 109.4665 344.5978 175.1249 225.2549 1099.4187;
	3.5828 48.4113 78.7826 79.9378 14.4455 30.2904 18.4558 8.2423 23.4683 28.8557 53.3394 79.5719 119.7951 63.136 168.48 63.4739 78.7546 83.4564 76.6864 65.7838 6.1519 70.6776 72.8148 85.0634 69.2086 43.202 6.2084 1080.4404 733.9829 733.9829 606.9843 105.0325 255.6213 169.3277 197.9398 313.166 1011.0907 224.0371 406.8679 185.3803 108.0386 336.0215 177.0419 205.7667 1021.6229;
	3.6814 49.7444 79.7432 76.9511 14.7437 29.9945 16.3598 6.5979 24.1464 29.1553 53.8931 80.3979 121.0386 62.7613 173.5799 65.3952 81.1385 85.9826 82.4851 65.4082 5.4533 69.9871 69.4588 85.6499 55.7726 32.8071 4.6233 1082.3716 705.7625 705.7625 589.4515 93.6987 274.9504 168.3608 196.7651 301.1254 1004.43 201.2776 365.0224 149.3909 94.508 332.7384 177.4235 181.4474 1014.8928;
	3.5186 47.5443 71.0737 64.4084 15.1463 28.43 13.7862 5.4276 18.2803 28.7996 53.2355 79.417 119.5618 62.8658 183.2042 69.0211 85.6373 90.75 88.1997 67.675 4.5954 66.3367 67.9173 81.877 52.3962 23.4473 4.425 1137.223 659.689 659.689 481.0637 62.9702 293.999 174.1956 197.0929 281.4673 1010.522 184.0721 272.1868 140.3469 70.0323 315.3834 157.6127 135.3265 1021.0483;
	3.6577 49.4238 69.6688 68.529 15.2243 27.9739 15.6487 5.2142 16.671 25.86 47.8017 71.3108 107.358 63.7774 181.4651 68.3659 84.8244 89.8885 84.6823 61.5706 5.2162 65.2724 57.7261 84.4781 60.1752 16.6491 3.7818 1194.9668 677.5896 677.5896 524.8962 63.5602 282.2745 158.4828 199.9506 289.1049 1036.4326 196.4054 258.7307 161.1835 75.1758 310.3235 148.2154 139.2306 1047.2288;
	3.1765 42.9211 57.6619 63.6042 14.8225 23.4446 14.8724 3.8469 21.0257 23.7732 43.9443 65.5563 98.6947 64.1126 175.4596 66.1034 82.0172 86.9137 88.5137 61.9896 4.9575 54.704 51.0142 82.1065 56.577 13.6026 2.6897 1202.0192 769.7869 769.7869 692.8059 88.7052 295.0456 159.5615 201.0017 328.4424 1070.2422 245.0524 244.9433 151.5456 56.4245 260.0783 147.0598 158.9826 1081.3905;
	2.9356 39.6663 52.3749 62.8778 14.7015 18.1642 19.2248 2.1019 21.6404 20.2391 37.4117 55.811 84.0231 63.9738 163.7311 61.6847 76.5348 81.104 84.9528 62.8475 6.4083 42.3831 41.9614 69.6996 39.0583 6.1436 1.1854 1188.3215 775.0127 775.0127 682.9578 111.8297 283.176 161.7696 200.5664 330.6721 1129.982 239.5458 353.4338 104.6205 48.9809 201.5012 137.3971 135.5426 1141.7527;
	2.2664 30.6245 38.019 48.7024 14.1652 13.2457 17.4496 0.9668 18.6912 16.0144 29.6024 44.161 66.4841 60.6215 151.2828 56.9949 70.7159 74.9377 80.9133 65.1051 5.8165 30.9066 27.5596 51.5686 22.8992 4.4925 1.3953 1179.3954 759.4834 759.4834 678.3998 108.8635 269.7112 167.5806 190.0565 324.0463 1040.4577 239.2756 366.9688 61.3371 31.023 146.9388 91.9821 91.3415 1051.2958;
	1.5305 20.6807 27.1528 28.0481 9.8508 10.1657 17.9277 1.0992 15.909 16.7878 31.032 46.2937 69.6949 62.6564 168.9206 63.6399 78.9606 83.6746 83.4089 66.866 5.9759 23.72 37.0176 32.9148 19.0803 5.3212 1.0895 1043.2927 680.1482 680.1482 616.656 108.9815 278.0297 172.1132 196.4363 290.1966 979.6049 202.6319 387.5798 51.1079 14.5553 112.7718 67.7439 70.6245 989.8092;
	1.0805 14.5995 27.9505 27.6405 7.2595 7.8903 17.2105 1.8298 14.4999 13.3195 24.6209 36.7295 55.2961 57.6699 168.0129 63.2979 78.5363 83.225 80.7573 65.9513 5.7368 18.4106 35.0168 31.9202 21.3093 10.1095 2.3545 1083.7173 724.3492 724.3492 655.6397 104.8441 269.1911 169.7588 180.803 309.0557 1010.612 218.3066 414.395 57.0786 14.5244 87.5295 50.1606 54.1478 1021.1392;
	0.7529 10.1733 21.9274 30.4774 6.024 7.9419 11.249 2.1662 10.2619 16.6885 30.8485 46.0199 69.2827 55.3251 163.3841 61.554 76.3726 80.9321 84.3452 61.2988 3.7497 18.5312 40.763 20.1747 22.5718 8.9242 2.913 986.9804 656.7047 656.7047 637.9322 96.0718 281.1505 157.7832 173.4517 280.194 840.9716 216.5041 358.9544 60.4603 11.3772 88.1026 33.5983 54.7329 849.7317;
	0.8519 11.5115 24.1198 31.0657 6.1122 8.9283 10.5766 2.2842 12.3656 16.5967 30.6787 45.7667 68.9014 62.7012 156.5414 58.9761 73.174 77.5426 80.3719 64.2418 3.5255 20.8327 49.9091 45.8843 26.5365 7.8647 3.363 822.3639 576.9442 576.9442 579.1959 79.5965 267.9063 165.3587 196.5767 246.1629 749.2758 195.5788 320.9211 71.08 26.4011 99.0444 31.1876 55.7024 757.0808;
	0.9083 12.2725 18.7694 31.0278 7.1299 0.9567 5.022 1.2884 9.8145 14.1742 26.2008 39.0865 58.8445 62.3058 125.4923 47.2785 58.6604 62.1625 66.1458 58.4708 1.674 2.2324 51.8242 41.9987 24.0597 4.5586 2.0655 805.5424 471.7213 471.7213 501.5354 76.2251 220.4861 150.5039 195.3371 201.2677 558.2894 186.5301 205.07 64.4455 29.3226 10.6134 1.5918 25.7529 564.105;
	0.5223 7.0579 5.7969 21.5736 6.2056 0.0866 2.8949 0.0387 10.701 17.8017 32.9063 49.0897 73.9042 58.4524 144.2373 54.3406 67.4225 71.4478 58.5574 46.688 0.965 0.202 56.5168 32.3778 14.2255 3.9729 1.3406 811.0054 457.3038 457.3038 525.5526 77.3104 195.1914 120.1752 183.2561 195.1163 673.3314 182.2725 210.3815 38.104 35.524 0.9606 0.1022 1.3738 680.3453;
	1.0856 14.6687 21.235 27.0228 2.6677 1.3569 0.0 0.614 2.0302 20.0668 37.0932 55.3358 83.3077 60.4614 113.9548 42.9318 53.2673 56.4474 78.6487 43.1097 0.0 3.166 67.7411 35.5239 16.4249 3.2551 1.6087 711.2102 452.729 452.729 533.5616 78.0591 262.1624 110.9645 189.5548 193.1644 626.3951 181.9617 301.0023 43.9953 78.7111 15.0522 1.5318 7.8666 632.9201;
	0.5602 7.5698 28.6547 46.753 4.1524 1.7 0.0 2.0185 4.6226 22.44 41.48 61.88 93.16 63.2212 113.7182 42.8427 53.1566 56.3302 2.9272 57.8871 0.0 3.9666 67.5549 51.3249 25.1585 7.882 2.0423 724.0905 439.4283 439.4283 538.4287 75.1266 9.7572 149.0014 198.2071 187.4894 568.5408 172.5259 289.737 67.3888 93.983 18.8585 10.5981 20.4274 574.4631;
	0.3562 4.8128 33.3177 59.6436 2.7306 0.75 0.0 3.1863 1.5648 24.0872 44.5249 66.4223 99.9985 60.0527 89.0104 33.5341 41.6072 44.0912 0.3191 59.1775 0.0 1.7499 68.7821 68.0529 36.6092 15.5932 2.8179 638.3401 314.9133 314.9133 537.9315 56.383 1.0637 152.3231 188.2734 134.363 458.9709 172.9172 0.0 98.0603 95.2034 8.3196 5.6885 12.9456 463.7519;
	0.7993 10.8003 49.301 80.7398 5.9246 2.8249 0.2935 4.5698 8.4614 25.1707 46.5276 69.41 104.4964 53.8125 109.1145 41.1083 51.0047 54.0498 74.7545 66.5553 0.0978 6.5913 69.5551 79.4769 38.24 9.6424 2.1002 569.4651 311.2668 311.2668 456.165 48.6659 249.1817 171.3135 168.7096 132.8072 551.5815 167.477 6.2005 102.4286 98.2293 31.3371 10.7368 49.0046 557.3271;
	0.5649 7.6332 51.718 76.9541 1.5787 0.5115 2.9615 3.1597 18.6791 23.3372 43.1385 64.3542 96.8849 40.5965 118.2961 44.5674 55.2965 58.5978 64.8758 67.5377 0.9872 1.1935 67.1838 73.5174 39.5244 11.1342 1.3734 449.894 329.9707 329.9707 431.9378 43.3169 216.2527 173.8423 127.2756 140.7875 665.6818 149.4925 41.7598 105.8689 80.9 5.6741 18.1347 41.6999 672.616;
	0.6514 8.8017 45.9133 67.234 7.4078 0.3767 0.6404 3.0422 2.8115 16.8612 31.1676 46.496 69.9994 21.8582 106.3544 40.0684 49.7145 52.6826 60.4459 68.5185 0.2135 0.879 39.2692 64.4284 32.723 19.7061 1.1893 396.1575 346.8043 346.8043 456.0697 43.6399 201.4863 176.3668 68.5283 147.9698 489.8248 133.0211 1.7942 87.6508 65.8424 4.1788 9.141 11.8032 494.9271;
	0.0845 1.1414 51.8216 69.6964 1.571 0.3204 0.2255 6.0037 4.073 19.6882 36.3933 54.2916 81.7357 7.0961 120.9586 45.5705 56.5411 59.9167 77.5361 68.0765 0.0752 0.7477 59.585 69.5747 42.3427 35.3922 3.0519 319.5543 284.8208 284.8208 354.4681 43.6494 258.4536 175.2291 22.2472 121.5235 365.4662 104.2295 0.0003 113.4178 68.7907 3.5548 14.0338 57.6452 369.2731;
];