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
	3.8981 52.6717 90.4032 101.5457 15.2537 34.6039 29.2656 18.226 27.3981 30.7253 56.7952 84.7273 127.5564 64.5682 198.156 74.6541 92.6264 98.1563 38.0407 71.593 9.7552 80.7425 72.3528 87.8078 100.5312 74.1126 13.7428 1145.2491 716.556 716.556 625.3931 112.8999 126.8024 184.2806 202.4301 305.7305 1201.9653 235.0146 452.7976 269.2799 120.4772 383.873 154.6589 275.1263 1214.4858;
	3.883 52.4682 91.7818 111.3571 15.374 34.4754 29.3596 18.1872 26.7867 29.9274 55.3204 82.5271 124.2441 64.4762 188.7743 71.1196 88.241 93.5091 19.0458 71.7972 9.7865 80.4425 68.7379 86.6999 97.9136 71.9683 13.5941 1143.5243 725.7446 725.7446 604.106 108.0697 63.4858 184.8061 202.1416 309.651 1188.372 234.6757 457.1137 262.2685 121.508 382.4467 154.0968 281.2609 1200.7509;
	3.8028 51.3848 89.1022 27.3416 14.7143 34.3211 27.7439 17.8003 26.8745 29.2617 54.0898 80.6913 121.4803 63.7832 195.1725 73.5301 91.2318 96.6785 29.916 71.5152 9.248 80.0825 68.1973 86.7159 98.5309 71.6578 13.7286 1120.8241 675.7103 675.7103 578.8071 107.5972 99.7199 184.0803 199.9689 288.3031 1183.6598 229.2311 425.2442 263.9221 121.4127 380.7352 138.7004 280.6304 1195.9896;
	3.7682 50.9164 89.0385 56.7157 14.873 34.2778 24.1175 17.8739 26.2289 28.8032 53.2423 79.427 119.5769 55.3834 195.8734 73.7942 91.5594 97.0257 38.3393 71.1782 8.0392 79.9816 54.806 85.864 97.9104 72.7617 13.7563 1195.0697 650.442 650.442 551.6636 95.2516 127.7975 183.2129 173.6345 277.5219 1103.7478 233.6059 361.3902 262.26 121.7601 380.2551 170.2162 281.6183 1115.2452;
	3.5782 48.3487 92.3603 111.3039 15.0843 34.3781 21.2005 18.1943 25.8612 29.1655 53.9119 80.4259 121.0808 62.8377 189.1485 71.2606 88.4159 93.6945 76.3513 69.616 7.0668 80.2155 44.2772 87.1972 100.4337 72.7439 13.7501 1141.21 624.7789 624.7789 541.1011 96.7171 254.5044 179.1918 197.0045 266.5723 1149.8771 242.658 433.9034 269.019 122.875 381.3676 188.9005 272.5596 1161.855;
	3.7933 51.2557 91.4758 110.9894 15.2739 34.7163 25.1404 18.0363 24.6527 29.7508 54.994 82.0402 123.5111 63.7583 190.6398 71.8224 89.113 94.4332 84.938 70.304 8.3801 81.0047 67.7667 87.2423 102.3891 72.4658 13.7166 1195.4666 669.0651 669.0651 483.1183 94.9253 283.1266 180.9627 199.8908 285.4678 1070.2112 227.0065 439.7813 274.2565 121.3682 385.1195 199.8405 277.1143 1081.3593;
	3.8331 51.7929 92.268 112.5444 15.2122 34.854 26.5631 18.4413 26.0637 29.9567 55.3745 82.6078 124.3656 64.2702 193.7833 73.0067 90.5824 95.9903 87.2642 70.4884 8.8544 81.3261 71.8214 87.6089 100.7102 75.5023 13.8109 1186.6984 712.4331 712.4331 544.3017 91.4749 290.8807 181.4374 201.4957 303.9714 1087.2462 231.6573 449.2961 269.7595 121.0258 386.6474 203.6766 270.7625 1098.5716;
	3.8642 52.2142 90.7011 116.0595 15.137 34.8161 27.62 18.5391 26.3152 30.1086 55.6553 83.0267 124.9962 65.3842 194.1943 73.1616 90.7745 96.1939 84.8282 71.2731 9.2067 81.2376 73.5753 88.2334 103.9076 75.7948 13.79 1135.4579 702.0931 702.0931 535.5873 76.2732 282.7605 183.4572 204.9884 299.5597 1086.9992 222.2151 472.9487 278.3238 120.834 386.2269 201.2171 266.1154 1098.3221;
	3.9313 53.1208 93.4051 120.0738 15.3114 35.154 29.3189 18.4679 28.0518 30.7893 56.9136 84.9038 127.8223 68.9458 198.6776 74.8506 92.8702 98.4147 90.742 70.7716 9.773 82.026 73.4904 89.2024 103.6581 74.1578 13.9584 1224.3433 816.5274 816.5274 637.08 79.2953 302.4734 182.1664 216.1543 348.385 1240.2619 271.3646 479.1797 277.6555 122.5939 389.975 191.4416 274.7208 1253.1812;
	3.9177 52.9367 94.2209 119.6154 15.303 35.1258 29.4805 18.7303 28.0615 30.8431 57.0131 85.0523 128.0457 68.7987 195.2752 73.5688 91.2798 96.7293 89.851 69.2595 9.8268 81.9603 74.5298 89.7971 104.5708 75.5991 14.0627 1185.8258 771.1917 771.1917 695.959 91.5437 299.5032 178.2741 215.6931 329.0418 1196.3872 289.994 478.696 280.1004 121.0165 389.6625 170.4055 279.2734 1208.8495;
	3.9052 52.7673 94.2824 119.341 15.3628 34.8731 24.4725 18.9693 27.1897 30.9053 57.1281 85.2238 128.304 68.9972 198.9562 74.9556 93.0005 98.5527 87.3927 70.5825 8.1575 81.3705 74.2175 88.3263 103.447 74.9985 13.9176 1181.8895 725.7387 725.7387 616.6467 90.773 291.3091 181.6797 216.3155 309.6485 1128.0289 275.4068 473.0087 277.0902 121.6795 386.8588 175.7423 275.2552 1139.7792;
	3.8037 51.3966 88.8688 114.4087 15.0891 34.3789 24.8246 17.8586 27.6358 30.5908 56.5467 84.3565 126.9983 68.1508 195.5122 73.6581 91.3906 96.8467 86.6737 69.9923 8.2749 80.2173 74.325 85.2078 99.5257 71.739 13.5614 1091.9426 743.4623 743.4623 605.9439 95.8805 288.9122 180.1605 213.6619 317.2106 1135.7993 268.8909 471.7539 266.5866 116.9709 381.3761 188.894 263.879 1147.6305;
	3.7206 50.2729 88.8678 115.2814 15.0749 33.1528 27.9484 18.0256 27.0131 29.9273 55.3202 82.5268 124.2436 68.3983 194.1786 73.1557 90.7672 96.1862 75.617 70.8962 9.3161 77.3566 73.4594 87.0566 98.3367 72.988 13.1965 1122.8362 760.0609 760.0609 658.7094 102.7755 252.0565 182.4871 214.438 324.2927 1069.2483 282.2681 470.782 263.4019 115.2272 367.7754 166.3245 258.4887 1080.3864;
	3.7876 51.1782 90.5335 115.3639 15.0343 33.2639 26.0673 18.3252 25.961 29.8528 55.1825 82.3215 123.9345 67.6515 194.8698 73.4161 91.0903 96.5285 85.7851 70.9544 8.6891 77.6158 74.2048 87.5287 100.4182 73.6738 13.3704 1071.093 698.7807 698.7807 668.3405 100.7449 285.9503 182.6368 212.0966 298.1464 1002.0224 298.849 462.8948 268.9774 115.3696 369.0078 160.3711 273.5435 1012.4601;
	3.561 48.1169 90.3467 110.0161 14.165 31.5013 21.6418 18.2735 25.9701 30.1614 55.7529 83.1724 125.2156 67.1299 182.3803 68.7107 85.2522 90.3419 78.0045 70.4571 7.2139 73.5031 72.1222 87.6524 99.1112 74.1298 13.5179 1016.8706 674.0193 674.0193 598.0047 100.8052 260.0151 181.3569 210.4612 287.5816 910.9701 298.8115 444.5913 265.4764 114.2575 349.4546 164.9412 248.6529 920.4594;
	3.5284 47.6765 86.9759 101.0598 14.1376 31.3568 20.5993 17.8366 25.9514 29.3335 54.2225 80.8894 121.7785 66.7224 180.3343 67.9399 84.2958 89.3284 80.8115 69.7188 6.8664 73.1658 67.7814 85.552 97.6466 74.7632 13.6874 1045.5817 703.9822 703.9822 573.5421 99.7079 269.3717 179.4563 209.1838 300.3657 979.1689 292.7683 439.3158 261.5535 112.9742 347.8511 165.0345 240.643 989.3686;
	3.5894 48.501 89.7392 112.9964 14.5143 33.0941 22.4638 18.6067 27.0859 30.5624 56.4942 84.2782 126.8804 68.5771 188.39 70.9748 88.0614 93.3188 85.0891 71.7323 7.4879 77.2196 72.8388 88.374 102.1795 76.3053 13.6501 1058.4625 703.802 703.802 565.9526 100.3287 283.6302 184.6392 214.9984 300.2889 1057.2768 273.8366 451.3728 273.695 119.6484 367.1239 182.4374 232.7528 1068.2901;
	3.6938 49.9111 87.2055 109.5445 14.1681 31.8205 23.8702 15.9042 27.1651 30.173 55.7744 83.2044 125.2637 69.0907 187.7296 70.726 87.7527 92.9917 86.5064 71.4413 7.9567 74.2477 71.4946 83.8311 97.8831 72.21 12.978 1133.1278 717.5762 717.5762 600.8051 95.3908 288.3547 183.8901 216.6087 306.1658 1079.5134 280.3433 458.9717 262.1869 122.7973 352.9949 175.0255 249.6576 1090.7584;
	3.5792 48.363 86.3071 104.5689 14.2595 31.9981 23.7687 16.4196 26.117 28.8358 53.3025 79.5169 119.7122 69.0271 193.7795 73.0053 90.5807 95.9885 85.4407 71.1408 7.9229 74.6623 71.9175 84.6602 100.7319 52.2737 13.3513 1196.1034 717.1362 717.1362 527.2557 96.5469 284.8023 183.1166 216.4094 305.9781 1108.824 250.6238 437.0034 269.8177 123.1338 354.9661 137.5046 227.1403 1120.3743;
	3.7132 50.1733 86.5774 102.6404 14.5561 28.07 24.9201 15.0498 26.4133 30.2451 55.9075 83.4031 125.5629 68.8439 191.1461 72.0132 89.3497 94.684 87.6139 70.3977 8.3067 65.4967 72.4782 82.4559 97.7169 53.6201 10.9549 1255.2779 747.4205 747.4205 557.7322 103.3013 292.0463 181.2038 215.8349 318.8994 1232.1013 260.2159 448.6901 261.7417 118.5529 311.3898 169.8828 246.2085 1244.9357;
	3.6756 49.6649 87.5124 108.513 14.3662 29.4171 29.0197 15.0403 26.8852 30.1416 55.7163 83.1178 125.1334 68.349 188.84 71.1444 88.2717 93.5417 87.4641 66.9936 9.6732 68.64 74.047 83.2311 97.2472 60.7173 10.4433 1256.4252 757.7541 757.7541 615.856 106.6395 291.5468 172.4416 214.2832 323.3084 1199.3946 267.5276 453.4178 260.4836 119.0195 326.3342 156.907 239.7666 1211.8883;
	3.5158 47.506 87.0181 96.4114 14.1735 28.1546 23.6377 14.3751 25.8862 30.5361 56.4455 84.2056 126.7711 65.4315 190.6412 71.823 89.1137 94.4339 86.6833 68.5869 7.8792 65.6942 74.1782 86.1929 97.7827 67.8339 11.0214 1213.2617 773.1347 773.1347 684.5632 107.4422 288.9444 176.5429 205.1366 329.8708 1062.1584 284.3386 443.002 261.9178 115.0567 312.3288 142.2243 240.8606 1073.2226;
	3.5106 47.4356 86.4173 90.6443 14.0825 28.4308 29.4981 12.5216 26.5049 29.9268 55.3193 82.5255 124.2417 67.8832 188.6198 71.0614 88.1688 93.4326 84.8201 65.6846 9.8327 66.3385 71.6493 82.798 90.3059 61.5941 9.322 1197.7824 794.2193 794.2193 744.6957 111.8879 282.7337 169.0724 212.8231 338.8669 1152.7265 308.8861 466.1471 241.8907 116.1143 315.3924 165.5595 223.7862 1164.7341;
	3.7497 50.6669 84.7476 97.6139 14.4928 32.0367 28.0643 10.4832 27.2624 30.5932 56.5511 84.3632 127.0083 68.3626 189.1442 71.259 88.4139 93.6924 83.6101 67.4472 9.3548 74.7523 73.214 82.3248 87.6922 55.8793 7.9639 1105.3658 756.2295 756.2295 746.9632 113.5836 278.7004 173.6092 214.3261 322.6579 1096.8533 308.2337 463.3956 234.8899 117.6308 355.3937 183.9899 208.6226 1108.2788;
];
