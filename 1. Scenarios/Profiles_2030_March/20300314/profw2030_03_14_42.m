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
	3.6558 49.3982 85.0075 114.8143 14.3533 16.5745 15.4213 17.3943 27.6818 24.603 45.4782 67.8446 102.1396 6.1199 20.5025 7.7242 9.5837 10.1559 14.8773 28.1938 5.1404 38.6738 59.8114 83.2595 95.4987 70.9463 7.5301 607.878 368.3173 368.3173 233.5304 38.4145 49.5912 72.571 19.1868 157.1487 473.9326 59.196 312.2619 255.8002 11.3625 183.8664 121.507 210.4004 478.8694;
	3.4658 46.8307 86.9185 112.657 14.0096 17.186 14.5232 16.4106 26.4668 25.0062 46.2235 68.9564 103.8134 7.618 5.037 1.8976 2.3545 2.495 10.9237 15.5518 4.8411 40.1007 60.5228 83.3472 96.7345 71.8245 6.5406 569.4839 345.2163 345.2163 174.1322 31.1797 36.4123 40.0304 23.8834 147.2923 438.2153 52.8203 319.6515 259.1102 9.6499 190.6501 113.2144 208.2587 442.78;
	3.308 44.6985 89.2295 113.8095 14.4591 15.685 12.7775 17.118 28.0306 25.2328 46.6424 69.5813 104.7543 8.5498 15.9289 6.0011 7.4458 7.8904 21.918 26.2333 4.2592 36.5984 66.7161 85.8835 97.3915 72.7912 8.1947 562.9793 331.0758 331.0758 146.85 32.3674 73.06 67.5247 26.8049 141.259 381.9619 39.3788 251.6053 260.87 4.9652 173.9994 87.3016 199.665 385.9407;
	2.963 40.0369 90.6637 110.9614 14.1227 17.4655 12.4072 16.788 27.3387 24.7957 45.8344 68.376 102.9397 11.7047 13.4502 5.0673 6.2872 6.6625 13.6367 29.1644 4.1357 40.7528 67.5338 84.2527 99.895 73.9299 9.7635 489.4853 255.619 255.619 158.7158 29.5852 45.4556 75.0692 36.6959 109.0641 303.7674 35.1199 194.0546 267.5758 0.9637 193.7505 82.5834 197.0788 306.9317;
	2.3589 31.8737 90.0494 110.8181 13.9428 17.5786 11.0495 16.5109 17.667 22.3458 41.3059 61.6203 92.769 15.1786 15.5941 5.875 7.2893 7.7245 19.8206 29.0427 3.6832 41.0166 55.3442 82.2384 98.5354 72.8273 9.5664 383.1005 205.9333 205.9333 142.0352 27.8516 66.0686 74.7559 47.5869 87.8649 189.5568 37.2773 186.4083 263.9342 10.3911 195.0048 86.072 204.5404 191.5313;
	2.9541 39.9163 92.1152 114.2145 13.6366 24.5097 11.7566 17.7081 9.1788 20.5065 37.9059 56.5482 85.133 29.8431 22.5482 8.4949 10.54 11.1692 33.4962 32.3248 3.9189 57.1893 58.5367 84.69 101.3076 73.3992 7.736 296.916 185.7332 185.7332 127.5891 26.5487 111.6541 83.204 93.5622 79.2462 136.2868 33.9138 189.4166 271.3597 10.8494 271.8943 94.5893 205.7422 137.7065;
	2.3298 31.4804 90.5566 111.2196 12.7439 24.7026 12.188 17.2763 9.9795 27.1206 50.1319 74.787 112.5914 41.373 24.3787 9.1845 11.3956 12.076 40.4009 36.7798 4.0627 57.6395 70.3172 83.5284 101.5915 72.6444 10.3582 265.1751 201.4768 201.4768 102.1878 16.9938 134.6697 94.6713 129.71 85.9634 134.5169 20.934 144.1858 272.1201 9.4307 274.0344 96.2641 218.0454 135.9181;
	1.7313 23.3943 73.1566 112.5046 14.0442 20.6382 13.1643 17.2102 18.7183 28.8137 53.2616 79.4558 119.6203 43.053 28.6663 10.7999 13.3998 14.1998 53.095 55.524 4.3881 48.1558 74.1054 83.3201 98.5147 70.4468 11.1466 152.844 174.145 174.145 95.4799 10.4782 176.9834 142.9189 134.9771 74.3019 96.7241 22.2761 169.6376 263.8787 9.6885 228.9467 98.7615 196.4613 97.7316;
	2.8154 38.0419 86.2574 104.0269 14.9147 27.2714 11.5141 17.6898 21.5485 28.7341 53.1145 79.2364 119.29 44.9578 21.738 8.1897 10.1613 10.7679 65.9248 56.3755 3.838 63.6333 74.9949 83.9495 98.8689 71.4345 11.6842 95.4032 140.5757 140.5757 83.3538 7.4267 219.7492 145.1107 140.9489 59.979 94.8241 23.5048 135.3579 264.8273 18.3499 302.5309 89.1097 218.0276 95.8118;
	1.9826 26.7895 83.7585 102.7466 13.5024 15.3784 10.3071 17.286 25.9021 29.2375 54.045 80.6245 121.3798 42.5016 9.6739 3.6446 4.522 4.7919 69.6552 47.5426 3.4357 35.8829 71.5559 81.5419 96.5985 70.1481 11.6714 209.644 234.0786 234.0786 94.4248 6.7518 232.1839 122.3749 133.2482 99.8735 214.568 20.3749 19.8996 258.7461 6.8406 170.5974 88.9055 194.5451 216.8031;
	1.613 21.7957 79.9409 100.1738 12.752 27.5012 14.4555 17.5038 26.0813 29.2287 54.0288 80.6003 121.3433 47.5057 57.5646 21.6871 26.9081 28.5145 65.868 39.912 4.8185 64.1694 68.8614 84.3505 95.9046 71.0239 11.2382 363.8259 319.4439 319.4439 157.3802 9.6136 219.5598 102.7335 148.9369 136.296 331.0732 24.3406 163.7199 256.8873 0.6934 305.0799 96.1094 170.1187 334.5219;
	1.7424 23.5434 85.9579 94.2995 12.3747 32.0283 20.1207 17.5205 26.8146 28.8258 53.284 79.4893 119.6707 50.0755 64.0442 24.1283 29.9369 31.7242 81.2709 54.5995 6.7069 74.7327 69.2599 83.4235 97.2695 71.5168 11.7302 476.2255 391.8562 391.8562 276.6413 15.7722 270.9029 140.5391 156.9933 167.192 439.2819 39.7351 196.7872 260.5432 7.153 355.3006 113.8759 159.7085 443.8578;
	3.035 41.009 91.0202 93.9908 14.4571 33.5938 21.5535 17.0179 27.8576 29.601 54.7171 81.6271 122.8892 53.9398 45.4747 17.1323 21.2568 22.5259 80.959 62.3286 7.1845 78.3854 69.6918 83.5893 99.8084 70.916 10.6185 637.7575 487.326 487.326 325.5187 24.0106 269.8632 160.4341 169.1085 207.9257 620.9647 60.9035 231.0508 267.344 12.497 372.6667 145.744 196.5712 627.4331;
	3.5958 48.5877 87.9655 105.5232 14.5194 32.4321 23.1462 17.2274 26.6714 29.0509 53.7001 80.1099 120.6051 53.1308 54.803 20.6467 25.6172 27.1466 83.7721 53.0035 7.7154 75.6749 55.7024 80.9532 98.1383 72.8815 10.4037 730.1504 588.8274 588.8274 385.8429 25.4999 279.2405 136.4312 166.5722 251.233 714.2114 74.8997 291.6323 262.8704 3.6033 359.78 141.0047 237.4671 721.6511;
	3.7664 50.8924 89.1024 107.299 14.57 34.0474 26.8573 17.6811 27.5582 27.0141 49.9352 74.4936 112.1496 57.982 80.3343 30.2655 37.5516 39.7935 80.9624 51.7139 8.9524 79.4438 40.3413 83.6869 98.2709 71.6723 11.7799 943.9333 686.6578 686.6578 491.34 32.76 269.8748 133.1117 181.7814 292.974 926.3138 110.5728 441.0588 263.2255 6.9181 377.6987 153.2192 238.747 935.9629;
	3.657 49.4136 93.5642 111.1282 14.637 33.287 28.9045 16.6834 27.9556 22.1819 41.0029 61.1683 92.0886 62.5468 117.0756 44.1075 54.726 57.9933 83.7864 65.3549 9.6348 77.6697 43.2524 83.1236 98.8426 70.9668 11.8189 1073.437 744.3052 744.3052 659.6266 45.3065 279.288 168.2237 196.0927 317.5702 1024.9058 162.4331 402.7418 264.7568 29.7001 369.2641 167.195 260.3462 1035.5819;
	3.7209 50.278 91.8963 115.2013 14.4356 33.6941 30.7304 17.3002 27.5113 21.5623 39.8576 59.4597 89.5162 64.3 144.11 54.2926 67.363 71.3847 87.0764 69.8869 10.2435 78.6196 17.1475 82.213 99.1049 71.738 11.9004 1071.1375 793.7355 793.7355 697.2514 78.0748 290.2545 179.889 201.589 338.6605 1081.0196 218.3185 430.9917 265.4595 8.0952 373.7799 208.9433 271.9507 1092.2802;
	3.6349 49.1152 93.7034 117.5181 14.0408 33.9101 30.0003 17.6232 27.3908 19.8464 36.6857 54.7279 82.3925 62.9976 170.4836 64.2287 79.6912 84.4489 89.7668 72.5456 10.0001 79.1237 39.8261 84.6168 102.2122 71.3188 12.8251 1149.518 809.607 809.607 749.5126 94.3937 299.2228 186.7326 197.5059 345.4323 1130.2689 247.0878 446.6323 273.7826 113.942 376.1765 193.4802 261.7938 1142.0425;
	3.6565 49.4078 93.343 118.3803 14.0218 33.7696 29.9278 10.4427 26.2297 21.0217 38.8584 57.9691 87.2721 65.0575 186.3716 70.2144 87.1179 92.319 92.1984 71.93 9.9759 78.7957 51.1838 81.5236 101.3273 60.9712 11.7196 1203.9512 814.9418 814.9418 746.7916 104.4281 307.3281 185.148 203.9641 347.7085 1165.0281 270.4478 439.306 271.4125 121.8902 374.6173 200.0903 266.8452 1177.1638;
	3.7246 50.3278 93.1664 113.1501 14.5739 34.086 31.4413 4.2378 27.8687 21.4095 39.5751 59.0382 88.8817 67.574 195.0819 73.496 91.1894 96.6336 91.0793 71.9603 10.4804 79.5341 51.3435 33.4205 43.2692 63.9292 9.9483 1312.8231 834.3997 834.3997 760.3041 105.9131 303.5977 185.2259 211.8537 356.0106 1225.1942 265.0905 459.8159 115.8995 123.6748 378.1279 200.3061 236.8893 1237.9566;
	3.6828 49.7623 93.6062 119.4927 14.4389 33.7301 30.8263 18.4616 18.3642 20.1723 37.2881 55.6265 83.7454 66.6708 187.0742 70.4791 87.4463 92.667 89.2079 71.5314 10.2754 78.7035 40.4847 77.091 104.7466 74.1908 13.7908 1308.0465 810.7066 810.7066 765.2272 107.3284 297.3597 184.1221 209.0221 345.9015 1172.3196 252.5378 444.3469 280.5713 120.9345 374.1791 202.4493 268.5667 1184.5312;
	3.7273 50.3646 91.9486 121.6367 14.5908 33.8248 30.1632 17.7419 9.9522 21.5322 39.802 59.3768 89.3914 61.513 187.2752 70.5548 87.5403 92.7666 89.3336 71.7307 10.0544 78.9245 49.7065 85.9668 105.4517 75.0869 13.5207 1297.7544 814.9342 814.9342 783.6456 110.8 297.7786 184.635 192.8514 347.7052 1228.7526 255.5403 436.3108 282.4599 122.8115 375.2296 206.4407 245.4196 1241.5521;
	3.8897 52.5587 95.0095 120.83 15.1686 34.8358 31.7322 18.6611 21.0537 20.0366 37.0373 55.2523 83.1821 66.3381 190.1773 71.6482 88.8968 94.2041 90.65 72.3688 10.5774 81.2836 51.947 88.307 100.0787 76.445 14.0599 1292.7206 822.4422 822.4422 774.3345 113.3606 302.1667 186.2775 207.9791 350.9087 1241.0487 260.207 461.6704 268.0679 123.6463 386.4457 211.9814 265.7819 1253.9763;
	3.8481 51.9969 94.7275 120.4757 14.9948 34.7183 33.2838 18.3744 11.6488 16.9627 31.3554 46.7761 70.4211 67.1813 186.6721 70.3276 87.2584 92.4678 85.3778 68.3663 11.0946 81.0095 45.4585 87.0649 106.4175 75.2171 13.8839 1286.5886 823.7083 823.7083 799.7533 109.4752 284.5927 175.975 210.6225 351.4489 1245.2153 272.0091 455.8637 285.0469 123.6806 385.1421 211.4709 264.5734 1258.1863;
];
