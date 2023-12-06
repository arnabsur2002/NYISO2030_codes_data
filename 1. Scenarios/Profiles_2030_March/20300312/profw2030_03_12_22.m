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
	3.6739 49.6426 86.7347 103.0743 15.2688 30.7766 28.7881 9.366 27.4223 28.2375 52.1965 77.8669 117.2282 65.648 185.2417 69.7887 86.5897 91.7593 92.0085 68.4885 9.596 71.812 72.6657 82.495 90.4974 59.8702 5.5842 1265.7832 760.7649 760.7649 721.4596 118.3363 306.695 176.2896 205.8153 324.593 1203.4156 295.6645 458.9181 242.4037 110.6703 341.4148 198.3171 245.2388 1215.9512;
	3.8318 51.7762 87.0494 107.5809 15.2688 32.3148 29.3845 10.0283 28.1253 26.9854 49.882 74.4142 112.0301 66.7009 193.0386 72.7262 90.2343 95.6214 90.9925 67.9157 9.7948 75.4013 74.7931 83.6402 95.7143 56.5554 7.1612 1255.7701 773.254 773.254 770.9711 117.7969 303.3082 174.8151 209.1164 329.9217 1243.6466 288.6713 464.1628 256.3777 110.667 358.4792 202.2985 250.1126 1256.6013;
	3.7927 51.2479 88.1946 98.0937 15.1744 32.9937 26.3624 9.2194 27.7189 26.6824 49.322 73.5787 110.7724 65.6746 191.5317 72.1584 89.5299 94.875 87.5241 68.2929 8.7875 76.9853 70.4213 87.4923 82.9666 54.1892 7.8918 1241.4434 781.3523 781.3523 724.4244 118.3454 291.7471 175.7861 205.8987 333.377 1204.3509 265.0504 464.2596 222.2319 112.7866 366.0101 183.2183 255.9847 1216.8962;
	3.603 48.6844 81.7937 91.6888 14.7901 31.9998 21.9449 9.1935 25.1066 25.1634 46.5141 69.39 104.4662 63.3716 174.0191 65.5607 81.3438 86.2002 81.8274 66.726 7.315 74.6663 66.5563 85.6445 75.0113 50.7582 6.7152 1201.9275 756.183 756.183 685.7731 117.4046 272.758 171.7529 198.6785 322.6381 1173.7557 252.5137 422.7831 200.9231 100.0926 354.985 185.5208 241.3196 1185.9823;
	3.5931 48.5505 81.3164 77.5442 14.7837 31.6923 19.8872 8.5917 21.8435 26.5344 49.0484 73.1706 110.1579 65.7825 169.4462 63.8379 79.2063 83.935 83.1709 65.7297 6.6291 73.9488 69.6905 86.7622 66.3407 48.9199 6.6844 1221.847 779.7578 779.7578 692.398 111.4567 277.2364 169.1883 206.2369 332.6967 1156.5997 249.999 393.0326 177.6982 98.5907 351.5737 192.1741 226.7279 1168.6476;
	3.6956 49.9357 75.4822 66.287 14.5865 30.5937 17.3372 6.5565 24.4355 26.0922 48.231 71.9511 108.322 62.8608 170.4034 64.1985 79.6537 84.4091 82.3576 65.3365 5.7791 71.3853 66.3469 84.5651 49.4424 33.0035 5.3884 1182.546 719.4567 719.4567 604.7552 96.4642 274.5255 168.1764 197.077 306.9682 1150.5765 220.0505 333.3061 132.4349 91.009 339.3861 178.6116 178.7823 1162.5616;
	3.3774 45.6363 69.9659 56.6586 14.8499 28.7462 15.0886 5.1862 17.4471 23.455 43.3561 64.6788 97.3736 65.2528 174.5763 65.7706 81.6043 86.4761 84.6733 67.7539 5.0295 67.0745 65.9734 82.0289 46.6141 16.4383 4.4999 1221.3163 690.6197 690.6197 545.6621 62.2677 282.2444 174.3987 204.5765 294.6644 1113.8166 203.4194 262.8741 124.8592 77.3699 318.8913 162.2366 137.8739 1125.4188;
	3.4882 47.1329 68.0562 67.2046 15.0774 27.5668 14.6851 5.0954 14.4481 16.0537 29.6751 44.2694 66.6473 64.4518 172.3083 64.9162 80.5441 85.3527 87.6568 66.5737 4.895 64.3225 51.1242 85.6839 56.3492 19.0222 3.8552 1151.1436 650.222 650.222 606.0024 62.5797 292.1895 171.3609 202.065 277.428 1045.1664 205.701 213.9897 150.9353 75.8703 305.8076 148.1153 141.1882 1056.0535;
	3.1336 42.3423 61.5134 64.8201 15.3091 25.8404 15.263 3.8818 19.2183 12.4816 23.072 34.4189 51.8174 65.1889 163.6136 61.6405 76.4798 81.0458 85.9229 66.1242 5.0877 60.2943 42.6225 85.3856 53.1995 14.661 2.8315 1218.1885 767.6241 767.6241 733.7685 87.9792 286.4095 170.2039 204.3759 327.5196 1101.7936 243.6874 233.5063 142.4986 49.201 286.6563 151.7943 166.7582 1113.2706;
	2.9087 39.303 50.715 61.4434 15.1906 19.1475 19.3077 2.5329 19.7314 17.1312 31.6668 47.2406 71.1205 65.8871 154.1977 58.0931 72.0784 76.3816 84.5297 65.4937 6.4359 44.6775 44.6418 76.0603 35.9239 8.4517 1.5065 1170.4887 811.229 811.229 737.5791 104.7082 281.7657 168.581 206.5651 346.1244 1157.1139 235.1841 350.774 96.2248 42.1256 212.4094 135.6016 136.3403 1169.1672;
	2.3923 32.3248 36.2786 41.8524 14.7338 14.9227 17.329 1.5296 18.5016 13.1171 24.2467 36.1713 54.4557 65.8799 157.7345 59.4256 73.7317 78.1336 83.6214 67.0104 5.7763 34.8197 35.7893 58.7922 23.9954 6.7806 10.5124 1153.3543 795.2035 795.2035 739.4308 100.9091 278.7379 172.4849 206.5423 339.2868 1106.6849 237.5773 371.146 64.2733 36.5735 165.5428 98.6673 92.8925 1118.2128;
	1.7638 23.8335 28.5072 24.1643 11.4439 11.3105 19.259 1.3896 18.3085 14.787 27.3336 40.7764 61.3886 62.9817 170.0903 64.0805 79.5073 84.2541 82.1919 69.9085 6.4197 26.3911 41.8699 41.7872 19.9215 8.3606 4.9593 982.5929 725.1165 725.1165 683.2726 94.7377 273.973 179.9448 197.4561 309.383 1041.5511 203.1629 396.9856 53.3613 25.145 125.4707 70.2392 75.6245 1052.4006;
	1.203 16.2552 27.3144 24.7575 9.9167 9.5961 18.2371 2.401 15.4641 2.9621 5.4755 8.1683 12.2974 59.0008 167.7812 63.2106 78.428 83.1102 78.2064 65.768 6.079 22.3909 38.5265 42.4176 23.3145 12.6426 2.9948 984.5926 746.8882 746.8882 674.2201 89.5446 260.688 169.2871 184.9753 318.6723 1033.9233 207.9453 428.5488 62.4494 24.9273 106.4528 57.1548 54.2148 1044.6933;
	1.0279 13.8892 24.4953 32.1622 8.3855 10.2822 13.5886 2.7737 13.2731 17.7316 32.7766 48.8962 73.613 63.465 176.1455 66.3618 82.3378 87.2535 80.8343 68.554 4.5295 23.9918 53.1641 43.6372 26.7047 14.6226 3.8674 960.5948 704.5813 704.5813 680.4812 87.9879 269.4478 176.4581 198.9712 300.6213 878.2556 203.488 415.5971 71.5304 25.2052 114.0637 48.7785 56.7771 887.4041;
	1.1643 15.7322 24.29 48.7288 7.544 10.999 11.0033 2.3848 12.3868 16.5973 30.6799 45.7684 68.9041 63.9995 158.2201 59.6085 73.9587 78.3741 75.2782 64.9603 3.6678 25.6644 54.178 51.7783 26.6976 8.3661 3.8875 867.04 624.2553 624.2553 595.1415 70.5018 250.9274 167.208 200.6472 266.3489 774.7684 186.6997 323.664 71.5115 21.6974 122.016 47.6952 58.1942 782.8389;
	1.3391 18.0945 19.6481 35.7427 8.5552 23.8548 5.9273 1.895 10.1289 16.7277 30.921 46.128 69.4454 65.8403 176.1486 66.3629 82.3392 87.255 83.715 71.8727 1.9758 55.6612 56.1277 49.4105 25.5525 5.0896 2.7613 866.189 543.3469 543.3469 564.2388 75.7287 279.0501 185.0004 206.4182 231.828 631.9071 190.6071 240.1844 68.4441 29.4164 264.6292 110.726 36.4253 638.4895;
	0.6206 8.3859 47.8347 94.2761 6.4479 14.2228 4.1104 12.2706 12.4763 20.4672 37.8334 56.44 84.9701 64.9119 181.9406 68.5451 85.0467 90.1241 87.2212 70.3294 1.3701 33.1865 57.0086 47.3348 19.405 10.2006 1.8448 748.8971 517.3756 517.3756 582.512 77.7406 290.7373 181.028 203.5077 220.7469 714.9009 195.7956 240.8858 51.9776 34.3378 157.778 23.2628 81.472 722.3478;
	1.2215 16.5052 9.8631 25.416 2.761 7.423 0.7416 0.9945 5.2451 22.4307 41.4629 61.8545 93.1215 64.2642 121.1575 45.6454 56.6341 60.0152 85.7274 58.5434 0.2472 17.3202 69.7087 36.6017 14.0106 1.6796 1.5432 704.4512 529.8535 529.8535 618.3098 84.1823 285.758 150.6908 201.4771 226.0708 701.6478 199.9746 361.5827 37.5283 74.7551 82.3453 41.3487 0.8595 708.9566;
	0.4995 6.7494 23.6224 39.0375 0.8335 2.4944 0.6856 1.4326 3.7515 22.513 41.615 62.0813 93.4631 55.9179 101.8593 38.3749 47.6133 50.4559 8.3436 58.902 0.2285 5.8204 65.4979 42.0462 15.7392 2.5061 0.5567 706.8491 501.2071 501.2071 612.2313 81.4357 27.8119 151.6139 175.3101 213.8484 650.1311 180.8782 349.6484 42.1587 69.9804 27.6717 7.2257 0.0 656.9033;
	0.3626 4.8995 28.7135 50.6561 2.2423 4.4937 0.2325 2.5035 3.5157 25.5626 47.2521 70.4908 106.1236 44.7259 81.1108 30.558 37.9146 40.1781 7.5968 65.2367 0.0775 10.4853 71.4581 58.0023 17.1733 9.7932 1.0159 609.696 360.8832 360.8832 611.9383 73.048 25.3227 167.9194 140.2217 153.9768 574.4804 186.503 106.2326 46.0 75.0331 49.85 3.1893 0.0 580.4646;
	0.6869 9.2814 43.6141 71.8541 5.3945 5.3735 0.8388 2.9315 6.1146 24.5909 45.4559 67.8112 102.0894 43.9341 90.2446 33.9991 42.1841 44.7026 81.6862 66.5908 0.2796 12.5381 68.2532 68.497 5.6993 3.2374 0.0 512.9166 343.4856 343.4856 556.325 59.0499 272.2872 171.4049 137.7393 146.5538 606.3862 191.2522 90.9744 15.266 68.7626 59.6099 0.7244 25.5052 612.7027;
	0.5521 7.4601 41.2714 66.04 0.0357 1.972 0.4435 1.8208 1.6311 22.4496 41.4978 61.9066 93.2 31.8524 124.1347 46.767 58.0257 61.49 83.4201 70.0179 0.1478 4.6014 68.7362 61.5306 27.8735 4.3331 0.0 412.4328 325.1781 325.1781 471.2052 52.0405 278.0671 180.2263 99.8615 138.7426 632.6604 159.9724 66.2251 74.6612 64.7137 21.8762 0.1858 21.3674 639.2506;
	0.6136 8.2907 41.0623 66.2826 6.9775 6.1703 0.0 3.1306 0.0 17.0005 31.4251 46.8801 70.5777 17.6032 122.6716 46.2158 57.3419 60.7653 83.2152 70.881 0.0 14.3973 46.4506 62.9385 34.3928 20.2731 0.2489 408.5275 361.4167 361.4167 516.8607 55.8328 277.3841 182.448 55.1886 154.2045 509.7922 141.5617 9.0377 92.1235 47.2646 68.4487 0.1533 5.1686 515.1025;
	0.0 0.0 47.1133 63.835 0.0 0.0036 0.0 5.5479 0.0 21.4692 39.6855 59.2029 89.1296 5.2856 120.4576 45.3817 56.3069 59.6685 81.8133 69.2092 0.0 0.0083 67.7195 64.3023 36.9763 22.6645 0.3765 274.5167 277.6845 277.6845 378.6 50.5218 272.711 178.1447 16.5709 118.4787 360.6932 109.4482 3.7237 99.0437 40.1901 0.0394 0.0035 47.0751 364.4505;
];
