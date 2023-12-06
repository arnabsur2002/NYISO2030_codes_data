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
	3.6638 49.506 91.4077 119.7519 14.3559 32.0263 28.5739 18.7292 27.9874 28.8901 53.4029 79.6666 119.9377 69.8872 201.8694 76.0531 94.3622 99.9958 90.7762 73.2494 9.5246 74.7279 73.9519 85.4533 104.4478 74.9278 13.6544 1313.5502 775.0103 775.0103 589.3146 115.9314 302.5873 188.5441 219.1058 330.6711 1273.7858 234.634 465.4059 279.7708 123.0155 355.2779 190.7989 281.8259 1287.0544;
	3.5849 48.4403 87.9048 113.9323 13.9609 30.7353 25.4941 18.4251 27.7306 28.9645 53.5405 79.8719 120.2467 68.9648 192.4317 72.4975 89.9506 95.3208 90.6902 72.2376 8.498 71.7156 73.4363 85.1654 101.244 73.1945 13.299 1267.4038 762.817 762.817 587.9072 108.2301 302.3006 185.9397 216.2139 325.4686 1230.2701 221.9393 464.2405 271.1893 121.9244 340.9567 174.5303 270.9082 1243.0855;
	3.561 48.1165 87.1229 115.3087 13.9772 31.9746 20.8914 18.6347 27.4284 29.9066 55.2819 82.4697 124.1577 68.4767 191.9277 72.3076 89.715 95.0712 90.1775 71.271 6.9638 74.6073 71.7902 86.7934 102.7851 74.9585 13.477 1280.0902 780.1884 780.1884 602.1514 102.9327 300.5917 183.4518 214.6837 332.8804 1270.8448 222.1042 433.9703 275.3172 122.0706 354.7044 177.0799 266.2141 1284.0828;
	3.5508 47.9788 86.7566 116.1881 14.0342 31.421 22.541 17.7375 27.9929 30.4983 56.3756 84.1012 126.6139 69.2919 194.9497 73.4462 91.1276 96.5681 91.0019 71.3737 7.5137 73.3158 71.6653 87.0773 100.4645 72.5983 13.1479 1301.7543 793.6736 793.6736 588.6001 104.4441 303.3397 183.716 217.2394 338.6341 1279.0917 236.1446 444.3906 269.1014 115.524 348.5641 151.8826 267.0459 1292.4156;
	3.6227 48.9503 88.7599 116.3833 13.9754 32.0738 29.0821 17.5623 27.4651 30.2358 55.8904 83.3775 125.5243 68.9586 197.1502 74.2752 92.1563 97.6581 88.8351 72.122 9.694 74.8388 72.0604 83.3994 101.6092 73.3815 13.0454 1312.4513 795.4119 795.4119 638.6763 109.88 296.117 185.6422 216.1946 339.3758 1272.3939 233.6632 466.9949 272.1674 116.6122 355.8052 191.5245 273.156 1285.648;
	3.5993 48.635 88.0536 115.2021 14.0733 33.3299 28.9745 17.5228 27.7243 29.9086 55.2856 82.4752 124.166 69.5423 202.9771 76.4705 94.88 100.5445 91.5681 71.5524 9.6582 77.7698 71.242 84.0383 99.1693 71.6824 13.0323 1295.7028 786.2039 786.2039 672.7207 113.6439 305.227 184.1761 218.0247 335.447 1238.0811 235.5834 446.5778 265.632 112.669 369.74 175.672 270.8722 1250.9778;
	3.5853 48.4451 87.4198 114.1596 14.2268 33.5415 29.8155 17.1196 26.3961 30.7029 56.7539 84.6657 127.4637 69.7698 203.6622 76.7286 95.2003 100.8838 89.7147 72.5972 9.9385 78.2635 72.9347 83.6739 97.8148 70.6759 12.8273 1295.9766 805.0541 805.0541 710.5978 116.1763 299.0491 186.8653 218.7379 343.4897 1279.0714 282.1181 444.8064 262.0038 112.0164 372.0871 160.5939 263.7093 1292.395;
	3.6447 49.2483 87.2691 114.9497 14.2125 34.2929 30.0696 17.3438 27.2522 30.74 56.8224 84.7678 127.6175 69.8583 204.136 76.907 95.4217 101.1185 90.1319 72.1478 10.0232 80.0168 73.0611 84.9014 97.9092 69.5662 12.4752 1365.3041 816.8162 816.8162 752.4085 121.5315 300.4395 185.7085 219.0151 348.5082 1349.9004 307.5805 455.5489 262.2569 111.2414 380.4229 177.3423 268.8785 1363.9619;
	3.7764 51.028 91.2637 115.6514 14.6161 34.6124 32.2742 18.1309 27.1501 31.0904 57.4702 85.7342 129.0724 69.8292 199.7662 75.2608 93.3791 98.954 91.2658 71.7531 10.7581 80.7622 73.3279 85.0344 101.0895 71.575 12.8524 1342.975 824.6594 824.6594 786.6638 123.5344 304.2192 184.6927 218.924 351.8547 1338.9856 322.165 471.2044 270.7753 116.5032 383.9664 205.8582 270.7624 1352.9333;
	3.8381 51.8609 94.1397 118.1426 15.1622 34.6136 27.0293 19.0003 27.8407 30.8413 57.0097 85.0473 128.0382 69.3552 197.9886 74.5911 92.5482 98.0734 88.8706 71.1706 9.0098 80.7651 74.0553 87.5818 104.3613 73.0716 13.5944 1326.9146 830.7049 830.7049 774.6186 123.7895 296.2352 183.1932 217.438 354.4341 1331.0625 339.6776 464.8785 279.5392 121.3008 383.9805 207.7761 277.9528 1344.9277;
	3.864 52.2107 93.6976 118.4569 14.9123 33.898 27.7056 18.8947 27.5695 30.5039 56.386 84.1168 126.6374 66.7444 196.5849 74.0622 91.892 97.3781 89.8886 72.9596 9.2352 79.0954 72.7186 87.0064 104.8938 70.9572 13.3921 1309.7112 804.726 804.726 771.716 120.1599 299.6288 187.7983 209.2528 343.3498 1318.2 326.2496 455.1255 280.9654 119.4355 376.0421 206.57 276.6717 1331.9313;
	3.8686 52.2729 91.5133 118.4213 14.9252 34.2832 27.024 18.6828 27.6014 29.9587 55.3781 82.6133 124.3738 68.2733 199.1507 75.0289 93.0914 98.649 92.188 71.7834 9.008 79.9941 73.1037 87.8415 102.4589 64.6259 13.2654 1337.854 803.03 803.03 780.9225 120.088 307.2932 184.7706 214.0461 342.6261 1338.5346 325.4795 467.9317 274.4436 118.6475 380.3147 213.6665 271.6746 1352.4776;
	3.8039 51.3991 91.0189 117.2489 14.915 33.58 28.431 18.4996 26.8872 30.3034 56.0154 83.5639 125.805 68.9546 196.8649 74.1677 92.0229 97.5168 91.0808 70.3901 9.477 78.3532 71.9438 85.5318 101.1193 71.0941 13.11 1334.4759 816.0033 816.0033 795.1285 121.1855 303.6028 181.1842 216.1819 348.1614 1343.4255 338.3747 470.7901 270.8552 117.8735 372.5137 211.8375 276.2408 1357.4195;
	3.6662 49.5389 94.2091 120.3455 14.4638 32.5752 26.435 18.8445 27.5801 29.6322 54.7746 81.713 123.0184 68.893 190.9941 71.9559 89.2787 94.6087 88.1632 71.6385 8.8117 76.0089 72.0925 90.1194 103.9432 73.5168 13.4173 1262.9795 768.5456 768.5456 719.523 116.3639 293.8772 184.3978 215.9888 327.9128 1280.5619 299.5819 459.0258 278.4192 117.1128 361.3679 197.4255 272.6574 1293.9011;
	3.6173 48.8781 94.5022 120.252 14.2558 32.3663 21.4474 18.2666 27.2071 29.5066 54.5424 81.3666 122.4969 66.99 190.8175 71.8894 89.1961 94.5212 90.88 71.6367 7.1491 75.5214 73.9836 89.9968 101.4632 72.4232 13.278 1288.5445 779.0019 779.0019 767.0253 120.5034 302.9332 184.3931 210.0227 332.3742 1291.5855 320.6083 463.7884 271.7764 120.0885 359.0504 194.7311 270.9541 1305.0395;
	3.6045 48.7046 92.068 116.1185 14.2314 30.9441 23.0843 18.3518 27.6235 29.2899 54.142 80.7692 121.5975 67.8099 180.694 68.0754 84.4639 89.5065 88.5123 71.1127 7.6948 72.203 72.2111 89.4013 101.3112 68.8758 13.0981 1246.6385 738.1934 738.1934 736.5338 120.2278 295.0409 183.0443 212.5931 314.9625 1212.9879 311.0025 455.7153 271.3694 118.0819 343.2736 168.2065 270.9807 1225.6232;
	3.5963 48.5939 91.8893 111.988 14.3798 27.942 20.9291 18.6506 27.5037 28.8833 53.3903 79.6478 119.9093 68.5535 190.2967 71.6932 88.9527 94.2633 90.1252 68.0685 6.9764 65.1979 68.9175 89.2811 102.1163 62.4558 12.6875 1244.779 709.8729 709.8729 688.2988 117.4141 300.4173 175.2084 214.9244 302.8791 1207.9249 323.8018 460.9588 273.5258 119.2778 309.9695 172.5869 268.2614 1220.5074;
	3.5944 48.5689 90.8785 110.0058 14.5056 28.7714 18.0851 14.7343 26.9057 27.5026 50.8382 75.8406 114.1777 65.1889 193.7978 73.0122 90.5892 95.9975 88.7901 69.6095 6.0284 67.1332 66.0853 86.6529 102.892 72.1065 10.7041 1261.2236 690.8206 690.8206 666.4061 116.4872 295.9671 179.1749 204.3761 294.7501 1249.7808 295.0481 453.6953 275.6035 120.4513 319.1702 170.9123 246.0271 1262.7993;
	3.6117 48.8024 85.2397 92.0288 14.3931 24.124 15.39 8.1315 26.0866 26.6565 49.2742 73.5074 110.6649 65.5145 190.2433 71.6731 88.9277 94.2368 88.3744 68.1665 5.13 56.2893 63.8182 85.5954 95.4448 63.7386 9.3032 1326.3654 673.0213 673.0213 651.52 116.0566 294.5814 175.4608 205.3969 287.1558 1253.133 292.062 447.4385 255.6557 112.9015 267.6152 129.2259 225.2182 1266.1865;
	2.7201 36.7542 82.848 59.5489 14.3752 22.0254 25.5494 10.1026 26.3671 27.9895 51.7382 77.1831 116.1988 63.7097 191.7749 72.2501 89.6436 94.9955 88.387 68.5128 8.5165 51.3927 66.5967 87.4855 92.0562 47.4532 8.7047 1289.1312 700.7944 700.7944 685.6443 114.4366 294.6234 176.352 199.7386 299.0056 1185.5083 288.9821 435.7216 246.5791 112.552 244.3355 103.0724 193.8872 1197.8573;
	2.441 32.9837 85.7002 70.8934 15.006 12.3035 24.3255 10.0471 26.3064 28.2634 52.2444 77.9384 117.3358 63.6126 196.4121 73.9971 91.8113 97.2925 90.3652 71.3441 8.1085 28.7081 68.8831 89.2135 87.0227 55.5598 9.3623 1223.9053 697.6583 697.6583 671.5522 114.9503 301.2173 183.6399 199.4342 297.6675 1178.6423 277.0597 441.1727 233.0966 112.1732 136.4864 78.2257 196.1572 1190.9198;
	2.0044 27.0844 80.208 76.3223 14.5454 15.63 23.1623 11.7625 26.2709 27.1638 50.2119 74.9063 112.771 62.3011 194.9112 73.4317 91.1097 96.549 92.1938 70.0285 7.7208 36.4701 68.5336 86.8669 97.1617 64.5766 9.8445 1209.0565 645.7842 645.7842 633.1289 106.7146 307.3126 180.2536 195.3225 275.5346 1122.0892 241.2382 438.0311 260.2547 113.1754 173.3891 63.4465 193.4527 1133.7776;
	2.5991 35.1192 81.6277 78.9221 14.5146 17.5171 21.8068 14.2777 25.9966 26.5524 49.0817 73.2203 110.2328 64.3388 190.6352 71.8207 89.1108 94.4309 90.9036 70.8871 7.2689 40.8732 68.6852 88.2253 94.7819 66.6772 10.1578 1077.686 674.7716 674.7716 630.2031 106.8751 303.0121 182.4636 201.7109 287.9025 1094.4253 253.244 441.7272 253.8801 115.7775 194.323 75.9892 222.875 1105.8255;
	2.7676 37.3958 84.1175 68.6255 14.2421 19.399 18.078 8.5871 26.6359 28.3224 52.3536 78.1012 117.581 63.5866 185.9256 70.0464 86.9094 92.0981 89.9221 71.8073 6.026 45.2644 70.4578 87.7335 81.7434 60.2844 5.5361 926.9175 647.5334 647.5334 587.7575 104.7996 299.7404 184.8321 199.3527 276.2809 930.7158 239.0252 436.2648 218.9556 110.7993 215.1998 87.9819 227.144 940.4108;
];
