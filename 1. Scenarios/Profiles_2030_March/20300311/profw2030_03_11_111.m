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
	3.7625 50.8397 89.4126 111.8203 15.0999 33.8442 27.5068 18.8933 28.201 31.2296 57.7274 86.118 129.6502 68.8417 205.8796 77.564 96.2368 101.9822 39.9657 73.8124 9.1689 78.9698 75.7831 87.1476 104.9382 75.5057 13.8515 1112.4814 699.9496 699.9496 579.1813 97.9604 133.2189 189.9932 215.828 298.6452 1135.0125 203.2535 472.427 281.0845 120.4633 375.4449 144.9915 260.9749 1146.8355;
	3.6326 49.0841 89.0114 114.7843 14.8409 32.0164 26.5435 18.7177 27.5732 30.2408 55.8997 83.3913 125.5452 65.3596 205.4983 77.4203 96.0585 101.7933 34.7594 73.7898 8.8478 74.7049 75.3386 86.9311 102.1827 72.7456 13.6407 1145.3678 671.2509 671.2509 542.1667 96.9029 115.8648 189.9351 204.9113 286.4004 1107.3616 209.5147 449.4142 273.7036 119.9458 355.1685 129.8047 259.8784 1118.8966;
	3.577 48.3332 90.0184 59.7936 14.3537 32.007 27.7556 18.238 28.19 30.7286 56.8014 84.7365 127.5703 64.7215 205.0702 77.259 95.8584 101.5813 34.6536 73.1913 9.2519 74.6829 75.6816 86.3102 102.2435 73.5385 13.6264 1153.9902 699.4617 699.4617 569.364 96.8106 115.5119 188.3947 202.9107 298.437 1185.9614 216.606 447.9246 273.8665 119.9193 355.0639 134.9605 256.7792 1198.3152;
	3.5586 48.084 91.5645 78.8502 14.6273 32.0778 27.5455 18.2341 28.3716 30.8731 57.0685 85.135 128.1703 64.6132 205.367 77.3708 95.9972 101.7283 45.6599 73.6203 9.1818 74.8483 74.8468 85.0913 99.4664 72.5076 13.5226 1065.2786 678.6042 678.6042 523.4581 85.5987 152.1997 189.499 202.5711 289.5378 1010.2206 220.0738 462.0767 266.4278 117.9062 355.8503 165.1077 265.1989 1020.7437;
	3.3642 45.4577 91.309 114.8501 14.756 31.8457 24.6232 18.4407 28.4697 31.3358 57.9237 86.4108 130.0909 66.5455 204.3775 76.998 95.5346 101.2381 81.7711 73.3342 8.2077 74.3067 70.7561 84.4277 100.5063 73.4837 13.4882 1155.8098 640.5007 640.5007 530.2781 76.7645 272.5704 188.7624 208.6291 273.2803 1125.061 228.4386 471.5729 269.2133 118.2044 353.2755 184.1582 247.2989 1136.7804;
	3.8368 51.8433 92.9282 114.8922 15.1678 33.0794 27.4897 18.6254 28.425 31.3103 57.8767 86.3406 129.9853 68.3495 204.745 77.1365 95.7064 101.4202 89.9852 73.4288 9.1632 77.1852 75.7505 86.3557 104.1461 74.6431 13.6856 1185.5604 720.512 720.512 525.733 79.4412 299.9507 189.0058 214.2848 307.4185 1101.6735 215.9307 463.8712 278.9626 120.0112 366.9605 192.2212 258.5056 1113.1492;
	3.7401 50.5369 93.4679 115.345 14.9011 31.8963 29.3571 18.442 28.4382 31.3293 57.9117 86.3928 130.0639 68.6394 205.6657 77.4834 96.1368 101.8763 91.6504 73.6239 9.7857 74.4247 75.8409 85.4348 101.4449 75.7789 13.3126 1212.2236 740.399 740.399 575.6378 67.1812 305.5012 189.5082 215.1939 315.9036 1102.9531 222.1965 466.1713 271.7273 122.3663 353.8361 195.7649 258.3528 1114.4421;
	3.8082 51.4568 90.5447 117.0872 15.0992 32.1186 27.9876 18.6865 28.4029 31.29 57.8391 86.2846 129.901 67.8026 205.3421 77.3614 95.9855 101.716 92.7393 73.271 9.3292 74.9433 75.8393 85.7307 103.7734 75.0547 13.6025 1139.4013 740.2432 740.2432 566.9929 67.3162 309.1309 188.5998 212.5702 315.8371 1126.0693 222.8378 452.6927 277.9645 122.0323 356.3019 196.0587 254.952 1137.7992;
	3.638 49.1572 90.0686 114.7535 14.8937 32.2746 27.1353 18.307 27.8746 31.1519 57.5838 85.9037 129.3276 66.7753 205.8568 77.5554 96.2261 101.9709 92.9845 73.1744 9.0451 75.3073 75.2503 85.2635 102.9758 74.568 13.6111 1153.3709 742.6912 742.6912 563.6657 49.6792 309.9484 188.3511 209.3496 316.8816 1130.8976 225.8815 438.0257 275.8279 121.8257 358.0324 169.2682 266.1126 1142.6778;
	3.5802 48.3766 87.0023 113.2017 14.5142 31.8437 28.2008 17.5961 27.1352 30.8616 57.0472 85.1032 128.1224 66.3922 205.2077 77.3108 95.9227 101.6494 93.061 73.3014 9.4003 74.302 74.3578 84.4096 99.7692 71.6637 13.2402 1110.7747 742.0989 742.0989 638.5174 70.1616 310.2032 188.678 208.1484 316.6288 1076.3835 238.6689 439.6389 267.239 120.1912 353.2529 150.6137 264.5746 1087.5958;
	3.7147 50.1935 91.9748 117.6808 14.8746 32.9919 25.1621 18.2036 26.7283 31.1021 57.4917 85.7664 129.1208 65.7487 205.3831 77.3769 96.0046 101.7363 91.3528 73.3099 8.3874 76.981 73.9208 85.587 100.7994 73.3716 13.8325 1140.095 763.4305 763.4305 654.8017 76.1174 304.5093 188.6998 206.1311 325.7304 1081.4288 250.1857 436.8846 269.9984 120.4219 365.9898 165.2408 262.3236 1092.6937;
	3.8003 51.3498 90.736 117.8104 15.3079 33.3876 24.8705 18.7219 27.5549 31.1791 57.6341 85.9787 129.4404 67.2163 202.9039 76.4429 94.8458 100.5082 90.869 70.948 8.2902 77.9044 74.9541 85.7375 102.2211 74.7048 14.0711 1116.9144 716.3685 716.3685 638.2525 76.1203 302.8966 182.6203 210.7323 305.6505 1072.0921 239.6146 437.9432 273.8065 120.8057 370.3798 185.9808 265.3244 1083.2597;
	3.5586 48.0843 86.6006 113.1586 14.0586 30.5724 25.2085 17.4942 25.846 30.6132 56.5881 84.4183 127.0913 66.9489 201.5804 75.9443 94.2271 99.8526 86.0494 71.273 8.4028 71.3357 73.5983 86.3196 97.2945 71.8006 13.8049 1036.9203 716.7826 716.7826 647.4649 79.6481 286.8313 183.4568 209.894 305.8272 977.5969 227.3251 436.3188 260.6104 114.2959 339.1502 145.0012 228.6765 987.7802;
	3.5643 48.1619 86.9065 110.9954 14.5793 28.3991 22.8856 17.4668 24.6023 29.5969 54.7094 81.6156 122.8718 65.8262 202.8958 76.4398 94.842 100.5042 89.6191 71.1383 7.6285 66.2645 73.6992 85.4676 96.6374 69.9746 13.8823 1020.1585 665.1447 665.1447 622.447 82.594 298.7303 183.1102 206.3739 283.7951 930.7784 237.1863 414.7528 258.8502 111.3159 315.0403 147.2339 258.6634 940.4741;
	3.6652 49.5249 87.8344 110.3618 14.4098 31.1906 23.547 17.6429 25.2254 30.1063 55.6511 83.0204 124.9868 67.3779 201.4742 75.9042 94.1775 99.8 89.5752 72.3976 7.849 72.7782 72.4352 87.5292 98.148 71.7474 13.5542 1066.1603 693.5115 693.5115 662.7087 94.5283 298.5841 186.3517 211.239 295.8983 929.1189 276.1159 440.3847 262.8963 110.5718 346.0083 163.0343 244.7429 938.7973;
	3.8085 51.4615 90.706 112.551 14.8757 32.2402 24.1832 17.2455 25.624 29.5416 54.6072 81.4632 122.6424 67.0507 201.9212 76.0726 94.3864 100.0214 89.1089 71.4405 8.0611 75.2272 73.0718 88.3248 97.7454 73.1242 13.1898 1077.6836 732.4073 732.4073 645.9919 95.8404 297.0296 183.888 210.2131 312.4938 983.8275 268.3581 453.2781 261.818 112.3721 357.6518 183.2039 258.6433 994.0758;
	3.6653 49.5263 87.96 111.6176 14.6006 31.8483 22.7296 15.9709 25.7785 29.2755 54.1154 80.7295 121.5378 63.8857 199.8409 75.2889 93.414 98.9909 91.3121 71.0492 7.5765 74.3127 72.529 88.8785 97.6758 70.803 11.5425 1100.1026 724.0858 724.0858 649.2373 91.5866 304.3737 182.8809 200.2902 308.9433 1088.0553 257.4032 446.543 261.6315 114.005 353.304 172.4907 228.7033 1099.3893;
	3.7061 50.0774 87.8001 93.9472 14.392 29.823 24.0288 13.8895 25.9073 29.7723 55.0337 82.0995 123.6003 64.734 196.8115 74.1476 91.9979 97.4903 88.4103 70.4894 8.0096 69.587 72.5313 87.5523 96.81 61.2366 10.5662 1147.6867 705.4088 705.4088 655.9844 78.9398 294.701 181.44 202.9499 300.9744 1089.9258 255.8854 461.1589 259.3126 108.2825 330.8366 170.2832 208.1397 1101.2792;
	3.6513 49.3374 86.5632 97.4489 14.2969 31.6059 24.7135 14.3938 25.5607 29.8907 55.2524 82.4258 124.0915 66.8174 195.7519 73.7484 91.5026 96.9655 89.0247 72.6279 8.2378 73.747 73.9955 83.2682 94.0679 36.7223 11.5825 1211.314 767.02 767.02 575.4533 93.8379 296.7489 186.9444 209.4817 327.2619 1228.874 254.7049 464.2777 251.9675 108.3586 350.6143 153.3516 203.4382 1241.6748;
	3.7252 50.3362 88.0212 99.2469 14.6162 27.3277 26.9793 15.0409 26.7358 29.8758 55.225 82.3849 124.03 64.4224 191.2871 72.0663 89.4156 94.7539 90.0219 69.7486 8.9931 63.7646 72.3861 83.2826 96.2782 45.2701 11.0074 1259.0072 793.077 793.077 610.3923 99.8216 300.0731 179.5331 201.9728 338.3795 1291.6438 249.3044 476.4941 257.8879 105.7484 303.155 178.1681 239.1608 1305.0984;
	3.5677 48.207 87.4085 98.0388 13.9084 25.6004 29.2309 14.5709 25.8636 29.2099 53.994 80.5484 121.2652 63.9996 193.186 72.7817 90.3032 95.6945 91.0091 68.9527 9.7436 59.7342 72.9618 82.3427 91.8384 52.1647 10.0308 1238.851 757.6369 757.6369 614.3706 89.6097 303.3637 177.4845 200.6475 323.2584 1231.3933 251.678 471.3367 245.9956 99.4662 283.9935 140.0049 233.5439 1244.2203;
	3.4129 46.1163 82.9219 86.8608 13.7807 26.3563 26.9544 12.0054 25.7969 28.1857 52.1008 77.7241 117.0133 65.3767 185.8096 70.0027 86.8552 92.0405 87.2159 68.3654 8.9848 61.498 70.3394 80.7821 87.5563 55.9437 9.5559 1234.3772 770.8678 770.8678 642.2757 93.2814 290.7198 175.9727 204.9647 328.9036 1122.7004 262.3188 464.3816 234.5259 94.2748 292.3792 144.4196 228.6955 1134.3952;
	3.6117 48.8019 85.4442 90.8042 13.9715 28.0804 29.7269 12.3671 26.2998 28.0856 51.9158 77.4481 116.5978 66.2517 187.6095 70.6808 87.6965 92.9321 86.161 71.1365 9.909 65.521 69.403 81.5561 93.6002 57.4519 9.5932 1184.8379 797.6879 797.6879 716.7542 103.2188 287.2034 183.1055 207.708 340.3468 1175.4249 287.7868 476.749 250.7148 112.5208 311.5055 176.2084 234.0718 1187.6689;
	3.7124 50.163 87.2489 104.5225 14.1373 32.8385 29.8929 12.2772 27.5105 28.1781 52.0868 77.7032 116.9818 66.8631 179.2839 67.5442 83.8048 88.8081 85.1096 69.6172 9.9643 76.6232 68.7409 86.3719 98.1056 55.968 9.8723 1219.2327 812.396 812.396 768.5331 105.469 283.6986 179.1949 209.6249 346.6223 1206.4029 293.3356 475.3932 262.7827 118.96 364.2885 190.4993 239.0196 1218.9695;
];