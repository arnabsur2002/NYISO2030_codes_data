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
	3.8887 52.545 84.768 112.4148 15.2602 35.81 31.9013 6.0914 28.0785 13.0937 24.2035 36.1068 54.3586 45.5058 182.8094 68.8724 85.4528 90.5544 87.9807 70.7793 10.6338 83.5567 31.1207 34.4974 40.9085 22.4592 2.9103 1327.1282 825.2969 825.2969 671.379 90.2295 293.2688 182.1861 142.6669 352.1267 1316.0114 198.0547 462.4426 109.5764 114.2775 397.2522 212.9576 115.3529 1329.7199;
	3.2816 44.3422 78.4708 43.6892 15.2705 29.4993 31.2834 7.1765 10.2165 13.3491 24.6757 36.8113 55.4191 47.2953 197.5606 74.4298 92.3481 97.8614 91.1384 72.7044 10.4278 68.8318 27.2905 33.7343 34.7418 27.3374 4.8453 1322.9014 850.5848 850.5848 755.5849 83.6787 303.7947 187.1412 148.2773 362.9162 1360.2135 207.635 474.9596 93.0584 114.0208 327.2459 216.6747 99.9544 1374.3824;
	3.0953 41.8238 86.9923 37.117 14.8564 24.0101 31.7121 0.4316 9.5295 12.1018 22.3699 33.3715 50.2407 42.5692 194.3595 73.2238 90.8517 96.2757 89.4478 64.934 10.5707 56.0236 22.1631 19.6535 0.0 6.0525 0.4456 1337.8032 851.4727 851.4727 774.3509 95.2818 298.1593 167.1403 133.4602 363.295 1326.1148 205.2956 471.7472 0.0 28.7789 266.352 215.0016 116.9481 1339.9285;
	3.0728 41.5206 84.378 38.022 14.5221 13.2947 31.6027 0.3688 9.6102 12.5022 23.1102 34.4759 51.9033 30.2664 193.4835 72.8938 90.4423 95.8418 84.6296 65.8013 10.5342 31.0209 25.2265 9.949 0.0 3.0168 0.0301 1334.996 851.6663 851.6663 737.0899 94.6529 282.0986 169.3726 94.8894 363.3776 1312.9719 217.3878 459.2486 0.0 30.0683 147.4824 210.6376 82.9406 1326.6487;
	3.6306 49.0571 87.1896 42.3976 15.1431 22.3421 30.1489 7.0411 10.2688 12.2191 22.5869 33.6952 50.728 33.6881 179.6932 67.6984 83.9961 89.0108 84.1189 66.5906 10.0496 52.1315 10.9016 30.3742 36.7488 60.7539 4.7646 1261.2791 832.5151 832.5151 755.2179 95.268 280.3964 171.4044 105.6166 355.2064 1253.9762 215.9131 444.0028 98.4343 35.0181 247.8482 211.271 179.2027 1267.0384;
	3.6418 49.2081 94.9323 113.7766 15.2404 33.7368 31.061 6.9955 10.9933 13.047 24.1171 35.978 54.1646 27.6595 189.2968 71.3165 88.4853 93.768 87.4097 65.3715 10.3537 78.7192 13.7546 34.3305 50.88 64.9405 4.6572 1121.2211 828.8814 828.8814 736.5318 97.9125 291.3656 168.2663 86.7163 353.6561 1220.6783 213.3423 448.119 136.2856 73.6469 374.2536 208.5689 229.1116 1233.3937;
	3.8618 52.181 93.7853 116.8405 15.2103 34.7968 30.9124 11.3222 11.5518 12.7705 23.6061 35.2157 53.017 33.803 192.8584 72.6583 90.1501 95.5322 80.5416 68.3795 10.3041 81.1926 25.2858 52.9109 99.0676 73.5959 11.0666 1108.9408 844.0247 844.0247 755.2987 101.5309 268.472 176.009 105.977 360.1172 1257.2933 260.411 435.8544 265.3597 117.8684 386.0129 208.1809 267.0114 1270.3901;
	3.7782 51.0515 94.4701 117.5496 15.1714 33.4341 30.5396 18.809 11.1603 12.4118 22.943 34.2265 51.5278 54.3807 185.1343 69.7483 86.5395 91.7061 76.8699 57.1272 10.1799 78.013 25.7526 60.7339 105.7533 74.1405 13.8406 1039.8611 818.9628 818.9628 742.1324 111.9338 256.2332 147.0457 170.4908 349.4241 1199.1837 291.2956 440.0864 283.2679 123.2515 370.8959 201.742 276.2169 1211.6752;
	3.5898 48.5061 90.9616 114.9352 14.5156 30.9706 29.0862 17.7955 9.3206 11.4849 21.2296 31.6704 47.6796 61.2071 194.0528 73.1083 90.7084 96.1238 47.0714 62.976 9.6954 72.2647 26.6358 87.1286 103.0058 70.1286 13.4647 845.9594 833.3638 833.3638 754.1637 111.1025 156.9046 162.1005 191.8924 355.5685 1191.8235 304.1944 435.8952 275.9083 121.0125 343.5668 198.5706 258.0741 1204.2383;
	3.7208 50.2757 88.8964 113.1776 14.7216 32.2695 28.2197 17.6259 17.4286 7.7411 14.3093 21.3467 32.1373 56.5856 190.8753 71.9112 89.2231 94.5499 56.32 57.4119 9.4066 75.2955 20.5654 87.6491 99.9861 67.9727 13.0032 644.2692 828.1808 828.1808 773.201 119.005 187.7334 147.7783 177.4035 353.3571 1091.6576 287.8685 427.5303 267.82 115.1991 357.9764 205.2064 259.877 1103.029;
	3.8059 51.4265 94.2213 117.5538 14.9248 33.3168 29.5064 17.8462 27.6704 15.1761 28.0529 41.8494 63.004 66.7855 197.1578 74.2781 92.1598 97.6619 36.7222 67.0619 9.8355 77.7391 28.3771 87.0067 101.3034 70.3097 13.2833 476.9556 791.311 791.311 750.5197 106.4495 122.4074 172.6176 209.3817 337.626 933.9038 266.5713 439.9385 271.3483 115.5125 369.594 202.0708 261.6397 943.632;
	3.108 41.9962 87.0524 109.9684 14.4942 25.0657 27.5656 17.2679 27.0564 15.8949 29.3815 43.8315 65.9881 63.8061 192.8392 72.6511 90.1411 95.5227 44.868 56.7576 9.1885 58.4866 29.9106 85.0477 97.0258 70.4347 12.1517 301.0737 720.6943 720.6943 644.0136 105.4755 149.5599 146.0942 200.0406 307.4963 682.7074 233.6146 434.9101 259.8906 114.0477 278.0619 135.9275 255.9802 689.819;
	2.002 27.0518 89.7719 110.2543 14.3793 15.699 24.2776 18.1601 27.7092 24.0966 44.5423 66.4483 100.0375 61.8223 190.2891 71.6903 88.9491 94.2595 89.5787 58.8059 8.0925 36.631 53.9881 84.8213 97.4608 70.5738 13.6163 313.2103 623.1972 623.1972 544.2336 103.6731 298.5957 151.3667 193.8214 265.8975 583.1517 209.9126 421.2024 261.0558 117.5659 174.1541 150.081 266.6195 589.2262;
	2.1845 29.5169 89.8621 109.2799 14.3361 9.4757 24.2082 17.8552 27.052 30.2113 55.8451 83.3099 125.4226 63.7469 191.1414 72.0114 89.3475 94.6817 86.6098 66.8488 8.0694 22.11 72.6223 83.6106 97.2796 70.574 13.3618 332.3432 582.5535 582.5535 551.4493 103.6904 288.6993 172.069 199.8553 248.5562 472.2613 205.5387 428.9869 260.5704 118.5023 105.1173 118.6633 261.8438 477.1807;
	2.073 28.0109 89.561 108.9467 12.0087 0.0025 20.8604 17.5631 27.1555 28.5918 52.8515 78.8441 118.6994 59.7288 192.842 72.6521 90.1424 95.524 74.6857 69.3826 6.9535 0.0058 72.8213 84.494 97.7585 69.5991 13.3895 469.294 476.7097 476.7097 404.4677 90.9662 248.9524 178.591 187.2579 203.3961 425.716 193.6642 428.5226 261.8532 114.9654 0.0274 102.7657 249.424 430.1505;
	3.3172 44.823 89.195 76.2992 14.7648 25.6105 16.5567 18.0116 24.0474 27.9347 51.6368 77.0319 115.9711 45.8882 191.5468 72.1641 89.537 94.8825 84.5053 68.4569 5.5189 59.7579 70.764 86.0468 97.1977 71.6011 13.3953 522.4199 513.5247 513.5247 395.4031 50.3093 281.6844 176.2083 143.8658 219.1039 491.8819 167.5573 449.8791 260.351 118.3408 284.1063 77.1144 265.2239 497.0057;
	3.0985 41.8677 87.044 57.6649 14.3623 31.9012 12.8057 18.1952 27.2686 25.0255 46.2593 69.0098 103.8939 53.7492 186.2816 70.1805 87.0758 92.2744 85.8975 68.4464 4.2686 74.4361 70.1433 85.7193 101.1055 72.8156 13.4592 595.7773 567.6965 567.6965 404.1038 27.8388 286.325 176.1812 168.5112 242.2172 575.886 105.1219 160.5751 270.8182 117.4635 353.8907 104.0372 266.4717 581.8848;
	3.5564 48.0543 87.6192 60.9644 14.6256 33.2771 27.9586 18.7542 27.4824 11.8799 21.9598 32.7596 49.3194 60.8302 168.5331 63.4938 78.7794 83.4827 70.9995 69.2006 9.3195 77.6465 49.9511 87.684 102.2426 74.0084 13.5868 662.3282 593.9054 593.9054 375.9834 25.2528 236.6649 178.1225 190.7109 253.3996 765.3239 73.4338 401.3176 273.8641 122.4579 369.1539 118.0832 259.9234 773.296;
	3.7263 50.3501 88.1693 52.4074 14.2417 34.514 28.8305 18.9451 28.0811 21.2846 39.3442 58.6938 88.3633 62.5705 165.0544 62.1833 77.1533 81.7595 56.6547 67.3747 9.6102 80.5326 50.896 83.6627 103.64 73.8625 13.912 1079.824 676.6708 676.6708 467.4345 38.586 188.849 173.4227 196.1671 288.7129 1034.2827 88.584 447.2376 277.6072 122.7125 382.875 151.1808 244.7121 1045.0565;
	3.6032 48.6867 61.7863 36.9624 14.2603 33.6334 1.6452 18.647 27.0173 27.4028 50.6537 75.5654 113.7633 64.6693 163.8599 61.7333 76.595 81.1678 42.465 68.1018 0.5484 78.4779 63.7067 77.2763 103.342 72.5106 13.5393 1253.3579 603.2522 603.2522 543.9668 55.6428 141.5499 175.2943 202.7469 257.3876 1165.7299 124.4392 442.1074 276.8088 121.9888 373.1061 155.7086 222.2859 1177.8729;
	3.7449 50.6024 60.3684 59.4492 14.3701 33.7422 29.3718 18.0811 21.6753 26.976 49.8647 74.3884 111.9913 67.4102 181.412 68.3459 84.7996 89.8622 61.1843 70.833 9.7906 78.7319 68.8171 85.101 100.426 72.733 13.5168 1319.3492 754.3182 754.3182 448.0842 61.9882 203.9476 182.3243 211.3401 321.8424 1176.2673 182.13 455.6435 268.9983 120.8043 374.314 149.0314 258.9724 1188.5201;
	3.8205 51.6231 43.9302 82.3085 14.5491 34.9854 1.7248 17.7881 28.2157 30.1656 55.7607 83.1839 125.233 69.4489 189.5587 71.4151 88.6077 93.8977 59.4933 71.8863 0.5749 81.6325 71.9402 84.1174 100.8664 72.7796 13.7153 1310.1302 746.9925 746.9925 565.8121 81.8045 198.311 185.0356 217.7316 318.7168 1267.6442 221.0239 467.0002 270.1778 119.6381 388.1042 161.0199 249.4441 1280.8489;
	3.921 52.9817 61.7984 97.5656 15.2628 35.1333 30.1744 17.8433 28.4109 31.0518 57.3987 85.6276 128.9119 69.7996 198.4255 74.7556 92.7524 98.2898 58.7978 73.479 10.0581 81.9778 72.6132 87.4569 103.5531 74.191 13.7015 1277.4193 767.4838 767.4838 613.9096 106.3007 195.9925 189.1351 218.8313 327.4597 1247.8433 241.1629 476.6963 277.3745 121.538 389.7459 166.6294 266.0882 1260.8416;
	3.9303 53.1068 91.8684 111.0916 15.3864 35.1274 30.2322 18.4559 27.9021 30.4707 56.3247 84.0254 126.4997 69.4765 191.8342 72.2724 89.6713 95.0249 43.9971 73.4213 10.0774 81.9639 69.4484 88.4369 105.0301 75.2986 13.5304 1225.0252 756.5955 756.5955 645.1897 109.1327 146.6571 188.9865 217.8181 322.8141 1312.2946 228.1368 478.2941 281.3305 122.6275 389.68 184.052 283.9647 1325.9643;
];
