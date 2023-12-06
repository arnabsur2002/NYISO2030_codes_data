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
	4.0179 54.2905 95.3359 120.8546 15.391 35.143 32.8689 18.7997 14.585 18.9452 35.0199 52.2428 78.6512 62.7301 205.3123 77.3502 95.9716 101.7012 91.2635 70.0809 10.9563 82.0002 25.6731 88.3036 104.5191 75.5149 13.813 1316.6416 830.8197 830.8197 803.413 117.3559 304.2116 180.3884 196.6672 354.4831 1237.453 301.5757 480.0833 279.9619 123.3134 389.8525 220.5998 276.361 1250.3431;
	3.9758 53.7212 94.4213 118.8965 15.3836 35.0864 33.3379 18.6877 14.2979 15.052 27.8235 41.5072 62.4888 68.7561 198.9831 74.9657 93.013 98.566 88.8831 70.1334 11.1126 81.8682 26.9772 84.4284 102.6408 75.9463 13.4611 1358.4899 823.9908 823.9908 821.9397 120.2464 296.2769 180.5236 215.5597 351.5694 1301.4637 294.3716 479.5842 274.9307 122.3472 389.225 219.4125 273.7186 1315.0206;
	3.8867 52.5183 88.7518 111.6253 15.2993 34.5156 34.0305 17.8937 23.4862 16.0856 29.734 44.3572 66.7796 64.1082 183.5422 69.1485 85.7953 90.9174 89.892 70.1266 11.3435 80.5363 23.6532 84.8905 99.4327 73.9634 12.8874 1337.766 809.6297 809.6297 797.5758 121.1033 299.6401 180.5061 200.9879 345.442 1278.1416 317.4708 478.7997 266.3377 119.3143 382.8926 218.1105 259.4695 1291.4555;
	3.7041 50.0502 87.3906 111.2838 15.1874 32.9252 32.4321 17.3996 27.9995 28.7483 53.1408 79.2756 119.3489 67.0837 200.1168 75.3928 93.543 99.1276 88.3426 67.5606 10.8107 76.8256 19.8929 81.7146 95.2102 73.6857 12.4201 1285.6657 781.6806 781.6806 769.5266 118.2857 294.4753 173.9011 210.3164 333.5171 1204.0194 310.4928 472.6876 255.0274 117.7244 365.2506 181.943 248.7616 1216.5613;
	3.1715 42.8542 91.089 114.0628 15.2733 30.4667 31.7948 18.5026 28.2798 30.2539 55.924 83.4276 125.5997 67.4257 203.1536 76.5369 94.9625 100.6319 90.0793 69.6647 10.5983 71.0889 72.2844 87.0293 101.6138 75.4736 12.941 1330.2652 809.009 809.009 783.5948 121.3436 300.2643 179.3171 211.3888 345.1772 1188.5376 333.268 474.8113 272.1798 120.8016 337.9768 176.7875 257.1787 1200.9182;
	3.6951 49.9287 89.0183 110.7656 14.9655 32.2363 20.0984 18.1439 26.5324 29.3298 54.2157 80.8792 121.7632 54.6468 201.9552 76.0854 94.4023 100.0382 58.9077 68.0437 6.6995 75.2179 70.8262 84.4183 98.8463 74.4908 13.1786 1327.4539 803.8385 803.8385 773.1241 120.0094 196.359 175.1446 171.3251 342.9711 1226.5953 316.6095 468.0686 264.7668 122.1264 357.6075 158.3071 262.7787 1239.3724;
	3.8269 51.7094 90.3273 115.0293 15.2474 33.7769 16.0402 18.0002 26.7308 28.7718 53.1842 79.3403 119.4464 65.1244 201.8665 76.052 94.3608 99.9943 86.2031 70.0762 5.3467 78.8127 70.7291 86.9926 101.6107 74.1217 13.3415 1360.0057 818.0495 818.0495 769.2446 119.1561 287.3438 180.3763 204.1739 349.0345 1268.525 328.1221 444.2581 272.1715 121.1835 374.6979 183.9433 262.5994 1281.7388;
	3.9161 52.915 92.4031 116.9871 15.2879 33.872 23.5267 18.6834 21.6782 29.1388 53.8626 80.3523 120.97 43.2476 201.169 75.7892 94.0348 99.6488 80.8577 69.7962 7.8422 79.0347 71.4054 88.2778 103.4514 73.7491 13.8087 1358.2136 821.2312 821.2312 772.6866 122.3276 269.5257 179.6557 135.587 350.392 1270.9854 328.1753 189.3116 277.1019 122.3454 375.7535 204.9293 271.9617 1284.2249;
	3.9155 52.9069 93.2322 119.3095 14.8965 33.3002 22.8539 18.7712 21.9022 30.062 55.5692 82.8983 124.8029 25.4603 200.4837 75.5311 93.7145 99.3094 87.4437 71.0962 7.618 77.7004 73.1975 86.8093 103.2341 71.7803 13.6379 1265.9664 761.0069 761.0069 770.2448 120.4534 291.479 183.0017 79.8215 324.6963 1129.4622 306.4858 192.7705 276.5199 120.672 369.4101 196.8633 269.0439 1141.2274;
	3.9232 53.0116 92.8063 119.9598 14.9543 32.1273 11.5135 18.8455 8.3114 26.4005 48.8009 72.8013 109.6019 21.647 196.5526 74.0501 91.8769 97.3621 88.2655 70.1585 3.8378 74.9637 51.4645 87.6562 102.7003 72.6986 13.5366 1011.7951 633.3581 633.3581 620.743 120.1678 294.2184 180.5882 67.8662 270.2328 864.2317 276.5874 83.143 275.0901 122.0507 356.399 174.6493 269.2493 873.2341;
	3.8535 52.0692 93.0441 119.5096 15.1174 27.8062 6.5157 18.9259 11.3837 30.0625 55.57 82.8996 124.8049 26.7844 201.2578 75.8227 94.0763 99.6928 81.0958 71.8584 2.1719 64.8811 74.9214 88.6481 102.7806 70.8342 13.9633 850.5665 664.439 664.439 531.7111 115.9757 270.3193 184.9637 83.9726 283.494 765.8765 218.1707 96.9115 275.3051 122.0314 308.4634 160.6395 264.2931 773.8544;
	3.7261 50.3473 92.1888 117.9495 15.2189 21.7213 14.5914 18.983 21.186 27.5883 50.9966 76.0769 114.5333 14.4896 203.6567 76.7265 95.1977 100.8811 38.7377 72.4854 4.8638 50.683 74.0443 89.4912 104.0853 73.1195 14.0436 640.8377 715.1584 715.1584 528.1391 120.3558 129.1256 186.5776 45.4268 305.1342 831.5667 226.4187 199.6139 278.7998 123.0302 240.9617 157.5069 266.0003 840.2288;
	3.8863 52.5129 94.0314 118.8927 15.1973 23.0635 14.1456 19.1524 26.7386 25.2869 46.7424 69.7305 104.9788 52.8017 197.7721 74.5095 92.4469 97.9662 56.9126 72.0438 4.7152 53.8147 72.7225 90.0327 105.8191 74.5937 14.0753 635.9747 682.7183 682.7183 529.7463 115.4612 189.7087 185.4409 165.5404 291.2931 618.0498 242.2076 55.9695 283.4441 122.5021 255.8506 159.6652 269.4466 624.4878;
	3.84 51.8865 94.2118 118.4861 15.1329 21.4443 6.1768 19.0706 20.4051 23.403 43.2601 64.5355 97.1579 40.7969 200.6608 75.5978 93.7973 99.3971 57.3899 73.4187 2.0589 50.0367 70.9685 89.5843 104.1227 74.1994 13.8473 538.0261 682.7128 682.7128 499.8149 101.1323 191.2996 188.9799 127.9037 291.2908 675.1995 261.9115 131.2214 278.9001 122.0259 237.8886 168.8976 265.1167 682.2329;
	3.7308 50.411 92.5364 118.8179 14.843 20.7024 2.494 18.9324 3.8354 24.7571 45.7631 68.2695 102.7793 35.3372 193.4496 72.881 90.4264 95.825 73.8365 71.9196 0.8313 48.3057 68.5191 88.745 102.7733 74.4272 13.8381 382.666 659.179 659.179 458.535 89.7604 246.1215 185.1211 110.7868 281.2497 568.7698 240.1062 18.1084 275.2856 121.1342 229.6589 171.0594 242.4821 574.6945;
	3.6452 49.2549 92.6525 119.5583 14.6707 11.163 0.1861 19.072 7.0198 27.4875 50.8102 75.7988 114.1147 29.6939 185.4451 69.8654 86.6848 91.86 63.5026 70.5968 0.062 26.047 70.1386 89.3171 104.4191 74.5514 13.9954 395.8002 542.7363 542.7363 421.0571 88.9665 211.6754 181.7164 93.0944 231.5675 462.6814 224.9083 40.5309 279.6941 123.6297 123.8351 159.1728 245.7085 467.501;
	3.3531 45.3077 90.7003 118.7149 14.5031 19.2067 0.0 18.7016 0.626 26.8415 49.6162 74.0175 111.433 34.719 181.3119 68.3082 84.7527 89.8126 63.5192 70.4201 0.0 44.8157 68.918 87.5063 104.6493 72.5937 13.5785 885.5681 447.0758 447.0758 298.9463 84.3433 211.7305 181.2615 108.8487 190.7523 747.828 234.5449 103.5411 280.3107 121.555 213.0664 132.6232 238.7553 755.6178;
	3.1741 42.8888 92.4446 118.5362 14.5533 21.4018 0.0 19.0417 1.7074 27.3599 50.5744 75.447 113.5851 63.3114 186.1978 70.1489 87.0367 92.2329 71.3772 70.5937 0.0 49.9374 68.9985 88.6657 105.4568 74.0286 14.0852 1160.8885 558.2182 558.2182 214.5578 65.5136 237.9239 181.7083 198.4898 238.1731 963.4514 214.0494 132.9672 282.4736 123.4131 237.4169 162.1718 266.5286 973.4873;
	2.3091 31.2005 91.5975 117.4891 15.2728 32.6965 0.0059 18.8334 6.4383 24.4484 45.1924 67.4182 101.4978 64.6232 185.0439 69.7142 86.4972 91.6613 55.7045 69.2371 0.002 76.2919 45.0665 87.3969 105.1011 72.2755 13.6855 1197.4808 662.5709 662.5709 290.1917 55.69 185.6817 178.2164 202.6023 282.6969 1102.6598 148.2983 261.6827 281.5207 120.3563 362.7136 159.664 268.93 1114.1458;
	3.655 49.3874 92.1031 88.9569 15.3146 32.932 0.8269 18.8689 9.8725 8.9164 16.4819 24.5877 37.0167 66.3465 184.6068 69.5495 86.293 91.4448 44.9224 70.0995 0.2756 76.8413 15.6625 88.8809 105.8932 75.0467 13.5438 1265.593 673.612 673.612 353.0452 50.7989 149.7412 180.4363 208.0052 287.4078 1147.0255 126.0302 108.2196 283.6425 117.1327 365.3256 179.2156 263.9945 1158.9737;
	3.7829 51.1154 90.1172 119.6649 15.2811 32.5641 0.0 18.8243 19.4807 16.4989 30.498 45.497 68.4955 66.3888 189.9432 71.56 88.7874 94.0881 68.2943 69.1909 0.0 75.9829 61.1313 85.6572 104.8269 73.1294 13.3143 1237.2365 618.8656 618.8656 588.1132 48.693 227.6478 178.0974 208.1378 264.0493 1176.3319 170.4762 163.2711 280.7864 118.1742 361.2446 186.9961 263.0761 1188.5853;
	3.8974 52.6629 94.9569 120.2229 15.3372 33.9936 0.0 19.0544 28.1904 30.5458 56.4634 84.2324 126.8113 65.2388 195.4625 73.6394 91.3674 96.8221 71.5064 69.5008 0.0 79.3183 72.7229 89.3567 106.6045 74.6456 13.8223 1278.2915 612.2268 612.2268 500.1527 73.2245 238.3546 178.8952 204.5325 261.2168 1150.317 226.8868 432.5667 285.5477 121.8251 377.102 204.6451 265.722 1162.2995;
	3.9032 52.7414 94.8794 120.3623 15.3502 34.7584 0.0 19.1089 28.3534 30.8728 57.0679 85.134 128.1688 66.9073 198.3914 74.7428 92.7364 98.273 73.3185 71.5023 0.0 81.1029 72.5488 89.0804 106.4054 75.8866 14.002 1276.2821 687.1429 687.1429 559.9628 102.8242 244.395 184.047 209.7635 293.181 1165.3523 241.1296 458.8346 285.0144 122.386 385.5864 206.4044 272.8136 1177.4914;
	3.9285 53.0822 92.8049 119.0661 15.4019 35.0418 28.0344 18.8792 28.0872 27.9438 51.6538 77.0573 116.0093 67.1464 186.3652 70.212 87.1149 92.3158 69.6897 68.7425 9.3448 81.7642 70.6922 88.1552 105.3047 75.7294 13.7061 1246.6229 687.6179 687.6179 553.8538 110.7222 232.2989 176.9433 210.5131 293.3836 1132.7771 239.6796 452.8913 282.0662 120.1461 388.7302 206.5745 272.8998 1144.5768;
];