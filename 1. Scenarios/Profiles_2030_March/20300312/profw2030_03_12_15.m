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
	3.5695 48.2317 86.5172 99.5299 14.4981 30.0704 25.7673 11.4153 26.0621 25.9521 47.9721 71.5649 107.7406 65.5327 182.9436 68.9229 85.5155 90.6209 90.2239 67.1724 8.5891 70.1643 66.0407 81.6 88.2272 54.5132 8.6678 1169.7594 743.6286 743.6286 723.5367 115.4917 300.7462 172.9018 205.454 317.2815 1123.7917 271.4718 439.952 236.3228 113.4856 333.5812 164.1053 214.9544 1135.4979;
	3.5841 48.4296 83.3241 93.1176 14.6533 29.6516 24.6336 10.7603 25.6336 22.7536 42.0597 62.7448 94.4619 64.574 188.0985 70.865 87.9251 93.1744 88.7761 68.3223 8.2112 69.187 61.7948 80.9027 88.166 54.3363 7.5275 1123.2218 743.2368 743.2368 748.4197 109.477 295.9203 175.8618 202.4482 317.1144 1135.182 252.6616 436.7594 236.1588 111.8337 328.9348 173.1534 212.7704 1147.0068;
	3.5778 48.3436 82.4847 80.8347 14.6622 31.3026 22.4552 9.8922 26.3248 25.341 46.8425 69.8798 105.2037 60.7568 189.2962 71.3162 88.485 93.7676 91.2877 68.1517 7.4851 73.0395 64.0711 80.7479 71.4639 45.5707 8.3337 1083.5073 742.3614 742.3614 748.7882 107.7466 304.2923 175.4227 190.4809 316.7409 1095.509 258.0896 439.0427 191.4211 115.9855 347.2506 173.3399 186.8639 1106.9206;
	3.5567 48.059 80.7273 87.9783 14.8683 31.9744 21.4823 10.3286 26.6835 26.9667 49.8475 74.3627 111.9526 62.7736 182.1895 68.6388 85.163 90.2473 89.5082 66.0203 7.1608 74.6069 68.5395 78.6156 70.6873 48.418 7.1021 1039.2656 760.8459 760.8459 734.226 106.0143 298.3605 169.9363 196.8039 324.6276 1112.6878 251.9355 424.9093 189.3409 110.8429 354.7026 182.0453 217.2479 1124.2783;
	3.5044 47.3523 78.6178 74.7374 14.9416 31.483 17.5613 8.9413 21.5079 26.9299 49.7795 74.2612 111.7998 62.6298 186.5429 70.2789 87.1979 92.4038 89.4602 67.7546 5.8538 73.4603 69.0044 79.9245 57.4433 42.5385 7.114 1105.5128 762.3205 762.3205 716.0628 101.071 298.2006 174.4005 196.353 325.2567 1125.8841 246.0071 368.4393 153.8659 112.9802 349.2512 183.7515 193.7535 1137.6121;
	3.6494 49.3114 72.9238 63.8182 14.9318 30.8809 15.6955 6.0639 22.9229 27.9859 51.7315 77.1732 116.1838 58.7858 184.0605 69.3437 86.0376 91.1741 89.8154 65.8995 5.2318 72.0555 67.0472 74.8023 43.1307 19.0735 3.8386 1093.9595 723.7415 723.7415 647.3683 84.5919 299.3847 169.6254 184.3013 308.7964 1099.426 212.3185 318.3788 115.5287 102.3025 342.5726 180.1258 147.9057 1110.8784;
	3.2677 44.1539 65.8996 57.6486 15.0637 29.3706 14.1208 4.2908 18.6012 28.8079 53.2509 79.4399 119.5963 64.4426 186.7157 70.344 87.2787 92.4894 89.174 68.8353 4.7069 68.5313 70.7099 70.6529 39.6438 1.536 3.3757 1140.9045 697.1877 697.1877 550.641 61.1625 297.2466 177.1823 202.0362 297.4668 1055.8653 202.2006 256.0939 106.1887 82.7525 325.8176 154.3809 117.624 1066.8639;
	3.2277 43.6132 61.374 59.4381 14.2979 27.3174 14.6212 3.9578 14.4743 23.2384 42.9558 64.0816 96.4746 63.2918 181.1312 68.2401 84.6683 89.7231 86.5091 64.7843 4.8737 63.7406 54.5907 75.4741 48.1848 6.2769 1.3131 1193.0527 673.8569 673.8569 599.9 55.5162 288.3638 166.7551 198.4282 287.5123 1063.1941 203.6856 201.0522 129.0664 76.1498 303.041 130.0352 124.0564 1074.269;
	2.7479 37.13 55.5687 52.7728 14.2051 23.8209 15.2238 3.7655 19.9023 21.6019 39.9308 59.5688 89.6805 64.7834 171.7035 64.6883 80.2614 85.0531 83.979 61.8915 5.0746 55.5822 50.2195 76.7549 49.0082 12.0556 2.4465 1201.033 761.9147 761.9147 720.8004 86.2877 279.9299 159.3089 203.1049 325.0836 1108.418 242.9181 223.4187 131.272 57.0004 264.2535 137.096 141.8096 1119.964;
	2.6596 35.9367 45.4471 52.641 14.4914 18.9575 18.6622 2.0522 21.1089 18.327 33.8772 50.5381 76.0848 64.2922 171.878 64.754 80.343 85.1396 86.0438 62.6919 6.2207 44.2342 43.8305 64.9305 28.7525 5.206 0.8192 1105.4663 771.3059 771.3059 717.6079 101.7622 286.8128 161.3691 201.5647 329.0905 1124.0812 233.9201 337.8567 77.0156 48.6286 210.3018 127.7261 124.0712 1135.7904;
	2.1129 28.5501 34.0144 37.9837 13.3878 14.1278 17.4369 1.0553 17.3196 14.8003 27.3582 40.813 61.4438 61.1391 175.2894 66.0393 81.9376 86.8294 85.8029 64.0783 5.8123 32.9649 30.3887 51.9163 18.5024 3.5933 0.5858 1023.4452 733.6377 733.6377 668.1671 92.5051 286.0097 164.9377 191.6792 313.0187 996.4619 218.2309 335.1229 49.5601 39.7807 156.7247 85.3679 92.1345 1006.8417;
	1.5022 20.2982 24.7019 21.5126 9.3183 10.2338 18.3882 1.2304 12.401 15.6216 28.8764 43.0779 64.8535 57.6354 170.3094 64.1631 79.6097 84.3625 86.4884 65.7581 6.1294 23.8789 38.9418 38.2559 18.0545 3.9329 0.6895 958.1834 668.7381 668.7381 645.8576 98.9442 288.2946 169.2616 180.6949 285.3283 961.6554 199.2148 342.6137 48.3602 31.8114 113.5271 60.9393 74.997 971.6726;
	1.1248 15.1987 26.3026 26.6243 8.7468 8.1971 19.3944 2.4261 14.703 13.4887 24.9336 37.196 55.9984 63.5358 183.89 69.2795 85.9579 91.0897 89.0172 64.4391 6.4648 19.1265 37.6484 40.8499 23.335 10.3114 2.652 1037.0973 757.3622 757.3622 727.2286 96.4675 296.7241 165.8665 199.1932 323.1412 1077.7091 225.0409 406.0355 62.5044 31.178 90.9328 53.9319 53.3967 1088.9352;
	0.8473 11.4492 21.6871 29.8619 7.2526 7.303 13.6662 2.2803 12.0534 17.3845 32.135 47.9391 72.172 63.2239 183.2154 69.0253 85.6426 90.7555 88.7848 65.3322 4.5554 17.0403 45.3087 39.3591 22.6221 10.0625 2.7843 881.1947 655.3612 655.3612 681.2867 86.0178 295.9493 168.1653 198.2153 279.6208 830.3854 218.3905 385.7551 60.5948 29.5756 81.0143 36.1152 42.2109 839.0353;
	1.0139 13.7002 22.3734 12.9066 6.6946 9.4029 11.9158 2.1021 12.8496 17.2681 31.9199 47.6182 71.6889 64.9336 183.3974 69.0939 85.7276 90.8457 82.3816 66.8712 3.9719 21.9401 48.9901 48.4161 23.1726 5.8901 3.2552 823.2087 655.3766 655.3766 654.6163 79.4062 274.6054 172.1267 203.5755 279.6273 815.8078 209.4872 337.3422 62.0695 33.0435 104.3094 39.8389 49.3436 824.3058;
	1.004 13.5661 15.4309 25.9252 7.1214 6.853 6.128 1.421 10.209 14.8688 27.4847 41.0018 61.728 66.1242 173.5068 65.3677 81.1043 85.9464 81.6624 65.8387 2.0427 15.9903 48.5242 40.0331 20.1202 3.2004 2.1755 793.8854 534.3861 534.3861 566.4036 77.7355 272.2078 169.4689 207.3082 228.0047 608.8866 196.4766 234.7286 53.8935 31.0856 76.0223 38.888 20.8815 615.2292;
	0.6038 8.1581 49.9262 37.4705 6.7038 10.1295 3.4397 13.6747 11.1498 16.7397 30.9432 46.1611 69.4953 61.4304 170.828 64.3585 79.8522 84.6195 80.2907 61.412 1.1466 23.6355 53.2581 44.4108 17.7256 15.666 1.7454 690.8198 499.7315 499.7315 572.6911 74.1365 267.6358 158.0747 192.5925 213.2188 714.2355 188.3971 223.6664 47.4794 37.5775 112.3699 1.2173 4.7281 721.6755;
	1.1572 15.6361 25.007 21.5583 2.6916 5.159 0.2098 3.1493 0.0499 18.9015 34.9392 52.1224 78.47 67.0016 140.0436 52.7606 65.4623 69.3705 81.2441 57.8645 0.0699 12.0377 67.4178 36.721 16.63 3.8928 1.6087 729.5496 523.3052 523.3052 634.4041 81.1432 270.8136 148.9433 210.0591 223.2769 735.8426 204.2029 329.558 44.5448 81.358 57.2306 5.8757 0.2899 743.5077;
	0.6851 9.2577 27.1149 46.038 3.8663 20.6565 3.3592 2.4341 3.0827 22.8189 42.1804 62.9249 94.733 67.48 123.0648 46.3639 57.5256 60.96 3.5713 66.2291 1.1197 48.1984 71.8314 47.8639 25.0873 7.3823 2.2662 772.3126 488.7034 488.7034 600.4829 80.2078 11.9045 170.474 211.5588 208.5135 679.0897 191.5181 345.4273 67.1981 95.7766 229.1491 64.1523 17.0885 686.1636;
	0.7974 10.7745 33.6475 63.7563 2.6791 26.0387 8.3944 3.3931 8.6518 23.7205 43.8469 65.411 98.4759 66.2438 114.8689 43.2762 53.6945 56.9002 4.2158 68.2884 2.7981 60.7569 67.8465 64.4845 35.7091 18.0044 2.7714 634.229 366.6495 366.6495 597.6022 65.8998 14.0527 175.7744 207.6833 156.4371 584.6933 193.7966 198.1757 95.6494 93.6221 288.8558 121.1877 33.2679 590.7838;
	0.8868 11.9824 49.7367 84.5386 5.7922 11.6942 6.6948 5.0636 0.9358 24.9335 46.0891 68.7559 103.5117 58.1124 132.7556 50.0149 62.0555 65.7603 78.3072 72.6866 2.2316 27.2866 69.9791 77.1794 37.4761 12.7178 2.3139 568.4861 359.2876 359.2876 519.8502 53.0529 261.024 187.0955 182.1902 153.2961 642.0484 193.265 115.3556 100.3825 89.3522 129.7281 87.3929 46.6654 648.7364;
	0.5729 7.7411 45.8078 72.2088 0.1405 7.9048 1.7688 3.0971 0.0 19.9494 36.8761 55.0119 82.8201 41.4377 147.0897 55.4152 68.7559 72.8607 72.3106 71.4234 0.5896 18.4444 65.0292 65.2092 35.2155 15.2682 1.1646 464.8136 346.4547 346.4547 475.8504 44.0149 241.0353 183.8441 129.9127 147.8207 701.3216 165.044 26.1079 94.3273 73.1829 87.6902 18.8617 32.5255 708.627;
	0.6087 8.2251 42.9041 69.8088 6.9464 2.5619 1.8844 3.7027 0.0388 13.2578 24.5068 36.5594 55.0399 22.1691 148.0173 55.7647 69.1895 73.3202 81.8981 69.9918 0.6281 5.9777 43.2589 66.8614 38.067 31.2363 1.7804 428.2305 398.7683 398.7683 522.8001 52.9056 272.9938 180.1591 69.503 170.1411 575.5967 141.9282 9.7309 101.9653 61.6072 28.4199 9.0475 0.0484 581.5925;
	0.0758 1.0245 52.9371 72.8433 0.3496 9.3934 2.5412 6.389 2.7992 18.3365 33.8947 50.5642 76.1242 7.6024 170.8675 64.3733 79.8706 84.639 89.3032 73.0566 0.8471 21.918 67.7816 74.5345 48.5931 38.6483 3.39 332.5008 301.392 301.392 394.0952 47.9597 297.6773 188.0478 23.8346 128.5939 399.8346 112.3294 20.7026 130.16 66.5273 104.2047 6.8483 57.5215 403.9995;
];