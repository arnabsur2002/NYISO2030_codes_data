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
	3.6562 49.4034 90.5717 107.3972 14.6767 31.921 28.9518 10.9339 27.9998 29.3118 54.1824 80.8294 121.6882 65.1382 185.558 69.9079 86.7376 91.9159 86.61 65.8125 9.6506 74.4824 69.3697 87.2149 95.4223 63.5528 9.0188 1187.8044 794.9854 794.9854 708.5839 98.3244 288.7002 169.4014 204.2171 339.1938 1112.1318 247.2597 473.5228 255.5954 113.5217 354.1104 178.6234 236.2963 1123.7165;
	3.7886 51.1927 91.1643 110.1701 14.8669 32.4024 28.333 10.6118 28.1304 29.0468 53.6925 80.0987 120.5882 65.8663 195.9433 73.8205 91.5921 97.0603 88.9173 66.9302 9.4443 75.6056 74.4588 86.4666 97.1627 64.2483 8.1406 1149.7802 799.631 799.631 746.4298 109.4171 296.391 172.2785 206.4997 341.1759 1201.9119 246.0513 475.4649 260.2573 118.0926 359.4507 188.3231 253.4922 1214.4318;
	3.6434 49.2302 89.4274 97.607 14.2813 32.3573 25.676 8.4008 27.265 28.448 52.5858 78.4476 118.1025 62.9713 189.6627 71.4543 88.6563 93.9492 88.2841 67.6349 8.5587 75.5004 69.1807 86.8777 80.4703 56.5357 8.222 1155.8249 812.116 812.116 743.4498 111.8844 294.2803 174.0925 197.4236 346.5028 1145.6422 236.6853 467.9455 215.5455 115.9263 358.9504 169.4975 254.1917 1157.576;
	3.556 48.0491 87.5902 98.281 13.9693 32.2706 22.3459 10.2244 25.9245 27.766 51.325 76.5669 115.271 61.2526 187.4139 70.6071 87.6051 92.8353 89.0013 64.6582 7.4486 75.298 65.4968 84.485 77.0763 53.8386 7.939 1091.8108 816.4353 816.4353 740.9684 109.3451 296.6711 166.4303 192.0353 348.3457 1132.4415 240.2818 435.6132 206.4544 106.1944 357.9883 169.4326 246.7842 1144.2378;
	3.4602 46.7543 82.9267 84.1104 12.8889 31.326 18.5407 8.9805 19.5383 28.0028 51.7628 77.22 116.2543 60.4441 187.4628 70.6255 87.6279 92.8595 90.1669 65.0147 6.1802 73.0939 70.0162 84.9203 67.2716 48.8482 7.5862 1094.0703 789.0144 789.0144 697.5687 104.9054 300.5565 167.348 189.5006 336.6461 1064.145 227.0987 354.1453 180.1919 101.8528 347.5095 186.1334 225.5395 1075.2299;
	3.3997 45.9373 80.3668 78.7375 13.5501 29.8359 16.3119 6.5599 21.958 29.0349 53.6706 80.0659 120.5388 60.9644 182.6707 68.8201 85.3879 90.4857 88.4129 62.406 5.4373 69.617 70.6845 81.9363 53.6325 32.3589 5.6738 1076.6888 746.3697 746.3697 655.4364 95.9093 294.7098 160.6331 191.1316 318.4511 1071.7908 214.35 308.875 143.6584 85.4858 330.9793 166.1118 183.6815 1082.9553;
	3.2513 43.9319 71.2252 63.7799 14.0687 28.769 14.1451 5.3753 15.7743 28.9703 53.5511 79.8877 120.2705 63.225 185.7785 69.991 86.8406 92.0252 89.3588 66.1272 4.715 67.1277 71.6717 77.4055 49.829 19.6899 4.5813 1152.5381 700.0741 700.0741 546.2153 63.2347 297.8625 170.2116 198.2189 298.6983 1078.763 190.8104 250.9446 133.4705 78.2044 319.1441 144.1028 129.63 1090.0001;
	3.5118 47.4517 70.6083 67.7271 14.6089 28.9744 14.6747 5.3457 14.305 25.6106 47.3409 70.6233 106.323 63.596 180.1433 67.868 84.2065 89.2338 87.2328 60.6388 4.8916 67.6069 61.8036 84.0312 58.8384 19.3139 3.5973 1140.5629 706.5689 706.5689 619.5623 65.6256 290.7762 156.0843 199.3822 301.4694 1053.8677 191.256 211.693 157.6028 76.7392 321.4226 141.08 141.6196 1064.8455;
	2.8662 38.7292 58.2077 64.73 14.8163 24.9064 15.8642 4.1887 20.4895 24.058 44.4709 66.3418 99.8772 63.151 173.093 65.2118 80.9109 85.7414 87.0458 51.436 5.2881 58.1149 55.7839 83.1038 58.3389 14.1783 2.6747 1204.5315 795.001 795.001 764.8253 91.543 290.1528 132.3964 197.9869 339.2004 1113.2202 227.2587 236.7124 156.2649 55.8812 276.2948 142.2047 162.9709 1124.8163;
	2.7788 37.5472 44.642 58.9985 14.3874 20.9944 19.7004 2.4121 21.7959 21.5807 39.8916 59.5104 89.5926 63.8602 166.5377 62.7421 77.8467 82.4943 90.37 63.3862 6.5668 48.987 51.7954 67.3471 34.6462 6.3797 1.1358 1132.3975 797.262 797.262 796.8625 113.6615 301.2332 163.1561 200.2103 340.1651 1153.1187 225.9 352.3007 92.8024 47.9507 232.898 139.1628 124.4568 1165.1304;
	2.1933 29.6362 32.4337 43.6519 13.0992 14.9837 18.6338 1.192 20.2155 18.8803 34.8999 52.0637 78.3817 60.3329 160.9603 60.6408 75.2396 79.7315 88.8349 66.9998 6.2113 34.962 42.5954 50.4418 22.6258 5.0818 1.1113 1105.5553 781.0145 781.0145 765.3272 107.9872 296.1164 172.4577 189.1517 333.2329 1082.4695 225.5226 370.0767 60.6048 35.509 166.2194 90.5365 81.5398 1093.7452;
	1.5397 20.8046 25.1585 24.7375 9.0002 10.7142 19.35 1.2393 17.1202 18.1505 33.551 50.0515 75.3522 50.4434 164.1926 61.8586 76.7505 81.3326 84.7522 65.8142 6.45 24.9997 43.8415 37.2682 19.1972 6.0696 1.0431 1028.1045 724.7385 724.7385 692.8743 103.9625 282.5073 169.4059 158.147 309.2218 1060.1754 198.1086 367.6607 51.421 27.1706 118.8558 63.9747 65.7514 1071.2189;
	1.1491 15.5265 25.917 26.8433 8.7097 8.9248 22.1095 2.3621 17.6936 16.7223 30.9109 46.1129 69.4228 58.5347 183.9059 69.2855 85.9653 91.0976 89.0159 71.9791 7.3698 20.8245 47.5021 33.8202 22.132 11.5283 2.4675 1101.5003 780.1579 780.1579 711.8637 98.5633 296.7197 185.2743 183.5141 332.8674 1111.5255 218.8734 438.2395 59.2821 29.4918 99.0058 53.9229 47.2285 1123.1039;
	0.9278 12.5361 20.402 30.6844 7.6199 9.2223 16.8076 2.9119 15.2166 20.4683 37.8354 56.443 84.9746 61.7914 189.2589 71.3022 88.4676 93.7492 90.9054 72.2921 5.6025 21.5187 60.0663 32.4431 22.8125 11.4384 3.7917 982.4339 710.0564 710.0564 710.7097 91.9473 303.018 186.0801 193.7245 302.9574 917.9966 211.3297 436.573 61.105 27.4498 102.3058 42.7237 52.9557 927.559;
	0.9254 12.504 18.7813 2.3615 6.2768 9.1887 14.4511 2.0024 14.0266 20.0384 37.0407 55.2575 83.1898 63.54 178.6954 67.3224 83.5297 88.5166 79.7372 70.7371 4.817 21.4404 62.4603 44.0445 22.2882 6.5932 3.254 844.4624 631.7877 631.7877 614.8241 73.0361 265.7908 182.0775 199.2066 269.5627 804.9756 191.0863 349.5653 59.7006 24.919 101.9337 36.3136 52.4053 813.3608;
	0.9696 13.1016 16.0153 28.8996 7.43 11.1409 9.2029 1.4033 10.2825 17.8352 32.968 49.1818 74.0429 61.441 164.6379 62.0264 76.9586 81.5532 81.806 67.8407 3.0676 25.9955 59.6049 39.9646 21.667 5.0844 2.4162 847.0421 523.5649 523.5649 509.6884 67.5128 272.6865 174.6223 192.6259 223.3877 633.8689 171.9124 234.5024 58.0366 26.6856 123.59 3.4797 25.4643 640.4717;
	0.5325 7.1949 0.0006 7.1003 6.4555 1.2836 5.4868 0.487 11.6817 19.3937 35.849 53.4796 80.5133 55.6057 155.754 58.6794 72.806 77.1526 81.3234 63.8807 1.8289 2.9951 51.4074 29.2525 10.0578 7.9602 1.7497 725.9469 514.2816 514.2816 524.6898 68.3299 271.078 164.429 174.3313 219.4268 703.0152 165.8433 229.475 26.9406 25.4357 14.2396 1.0966 1.7824 710.3383;
	1.18 15.9448 0.0 7.6339 3.06 12.4047 29.7285 0.5327 15.4721 21.4471 39.6447 59.1421 89.0381 64.0757 129.3551 48.7338 60.466 64.0759 84.5857 53.7905 9.9095 28.9442 62.8202 34.5569 12.1348 5.6709 1.9032 739.8697 551.3759 551.3759 637.5853 82.7624 281.9524 138.457 200.886 235.2537 744.1085 200.569 353.847 32.5038 68.7067 137.6091 11.9289 7.59 751.8597;
	0.5243 7.0841 21.0212 39.1568 0.2666 1.9276 30.7381 1.7262 22.7017 23.4087 43.2707 64.5513 97.1817 63.4688 106.4201 40.0932 49.7452 52.7151 12.9594 56.0648 10.246 4.4978 61.5016 40.5129 19.2792 8.5874 2.204 750.5172 506.8439 506.8439 625.0164 72.3435 43.1979 144.3108 198.9832 216.2534 669.6959 178.5568 360.3165 51.6408 68.0393 21.3837 12.903 42.5675 676.6719;
	0.3631 4.9062 12.6892 50.6972 2.1498 1.8447 21.5892 0.8779 8.4316 23.0595 42.6252 63.5884 95.732 63.723 91.5806 34.5025 42.8086 45.3643 2.6067 61.6206 7.1964 4.3043 48.9525 40.6097 6.1654 14.6994 2.3171 653.1394 364.9376 364.9376 586.959 64.0743 8.6889 158.6117 199.7803 155.7067 576.8833 182.2117 95.1237 16.5144 75.9095 20.4639 20.1359 12.852 582.8925;
	0.7436 10.0483 41.3326 74.4237 5.1194 1.0723 9.1616 4.1451 1.5276 24.6176 45.5052 67.8848 102.2002 53.4236 90.4818 34.0885 42.295 44.8201 76.8371 60.7713 3.0539 2.502 43.0034 66.599 35.7113 13.2604 2.3726 565.1933 351.312 351.312 501.0255 51.8263 256.1236 156.4255 167.4903 149.8931 641.9907 175.4385 50.4907 95.6554 88.383 11.895 5.0513 43.2896 648.6781;
	0.6014 8.1266 47.9098 74.9043 0.6259 0.8109 11.0097 3.1729 9.6315 24.4656 45.2243 67.4658 101.5694 36.7606 130.031 48.9884 60.7819 64.4107 77.6568 63.6166 3.6699 1.8921 58.0549 62.7695 39.7509 18.4672 1.6271 415.0531 340.0338 340.0338 474.7091 47.3783 258.8561 163.7494 115.2494 145.0811 655.8657 155.3874 55.1046 106.4756 74.3018 8.9954 17.0499 42.9679 662.6977;
	0.6547 8.8466 41.0898 66.0801 7.0424 0.0458 4.5314 3.1224 0.2908 17.9541 33.1879 49.5097 74.5367 21.5001 129.4959 48.7868 60.5318 64.1456 76.4218 66.8301 1.5105 0.1068 18.5194 61.9045 34.3948 29.9756 1.5554 401.9258 402.372 402.372 498.1662 51.3289 254.7393 172.0208 67.4059 171.6787 534.3051 136.1136 46.5691 92.129 53.6846 0.5079 8.4614 12.8963 539.8708;
	0.4701 6.3527 48.1271 66.7654 0.6796 0.9274 6.4148 5.9045 0.0 19.5977 36.2261 54.0422 81.3603 6.2028 120.5252 45.4071 56.3385 59.702 73.4101 64.5654 2.1383 2.1639 38.8288 68.7365 43.979 40.1685 3.1286 332.0312 325.8595 325.8595 385.4699 51.0706 244.7002 166.1915 19.4467 139.0334 409.9744 117.2894 24.563 117.801 53.3801 10.2876 18.3654 59.6409 414.245;
];