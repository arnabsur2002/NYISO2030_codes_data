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
	3.7967 51.3021 86.8517 115.9861 14.8306 33.8227 31.3688 7.0129 27.789 11.0855 20.4914 30.5691 46.0217 42.2293 163.692 61.67 76.5165 81.0847 81.6655 67.4435 10.4563 78.9197 20.3728 38.914 50.0011 26.2464 4.6333 1260.9065 823.7688 823.7688 637.9385 87.7339 272.2183 173.5999 132.3945 351.4747 1247.7952 208.7983 460.5394 133.9314 112.7957 375.207 203.5202 113.712 1260.7931;
	3.1134 42.0684 79.2392 44.8226 14.7508 25.0798 30.573 4.8133 9.3284 11.2452 20.7867 31.0096 46.6848 39.2353 176.5097 66.499 82.508 87.4339 87.5 68.7643 10.191 58.5195 23.2604 35.254 37.9452 16.8497 4.0978 1275.3092 821.8322 821.8322 692.3961 79.8331 291.6666 176.9996 123.0081 350.6484 1297.7734 205.6493 464.108 101.6389 112.6975 278.2184 200.7543 91.2527 1311.2918;
	3.1761 42.9162 87.2543 44.5611 14.6701 21.2664 31.6163 5.9104 8.8987 12.2846 22.7079 33.8758 50.9998 37.1446 188.7452 71.1087 88.2274 93.4947 85.1521 62.8759 10.5388 49.6217 24.9889 36.6627 34.9365 16.3236 5.3939 1310.4838 834.3861 834.3861 741.1963 90.4293 283.8403 161.8428 116.4533 356.0047 1311.9052 211.6089 465.1895 93.5799 31.6113 235.9155 205.6257 120.3426 1325.5709;
	3.4376 46.4498 85.2907 47.1006 14.5925 12.5623 31.9569 6.8365 11.0139 11.8439 21.8933 32.6605 49.1702 25.9086 192.2147 72.4158 89.8492 95.2133 77.7913 63.7713 10.6523 29.3119 27.5946 36.1627 33.4838 27.421 5.2527 1333.6365 837.7305 837.7305 740.5935 96.4381 259.3044 164.1475 81.2268 357.4317 1334.9249 247.2211 467.5705 89.6887 39.0441 139.3573 213.4003 104.948 1348.8304;
	3.5897 48.5044 79.0853 34.5183 14.4679 15.8414 31.5636 4.058 11.0017 10.4222 19.2653 28.74 43.268 29.8815 178.6106 67.2905 83.4901 88.4746 84.8332 66.4558 10.5212 36.9632 1.4233 17.6398 33.5156 47.9093 4.6791 1268.1393 811.2222 811.2222 694.735 99.9865 282.7775 171.0573 93.6824 346.1215 1293.743 243.8069 459.1748 89.7738 35.0045 175.7335 207.7487 165.0338 1307.2195;
	3.6172 48.8768 91.231 107.5282 14.6147 27.0113 31.556 6.8128 11.1243 12.0925 22.3528 33.3459 50.2021 25.397 197.0691 74.2446 92.1183 97.6179 90.0059 67.169 10.5187 63.0264 1.3574 29.2821 48.879 64.4745 5.3694 1210.5996 782.9282 782.9282 707.9257 109.0862 300.0196 172.8933 79.6231 334.0493 1232.399 242.4622 461.6358 130.9259 71.578 299.6454 202.7507 221.0737 1245.2365;
	3.8175 51.5834 92.8256 118.2902 14.9022 32.9145 30.8859 11.6695 10.7868 13.0977 24.211 36.118 54.3754 37.7095 200.8756 75.6787 93.8977 99.5035 83.9583 68.3248 10.2953 76.8005 26.4666 53.407 102.7746 74.4255 11.7381 1132.5065 785.9121 785.9121 715.9062 110.2108 279.8612 175.8682 118.2243 335.3225 1240.3553 285.4415 451.9368 275.2891 112.2505 365.1317 215.5989 267.834 1253.2757;
	3.7534 50.7165 94.1409 118.5164 14.9037 31.9886 30.7552 18.7379 11.5441 11.9584 22.105 32.9763 49.6456 63.7508 198.6967 74.8578 92.8792 98.4242 83.3324 58.4992 10.2517 74.6401 25.025 65.7869 106.0578 75.2432 13.9595 1058.8076 798.7252 798.7252 767.9166 109.6389 277.7748 150.5771 199.8674 340.7894 1217.8612 304.8932 468.4837 284.0835 121.8887 354.8602 207.3898 282.2278 1230.5473;
	3.7432 50.5786 94.2821 116.6323 15.0443 31.0616 29.9688 18.5359 11.0809 13.5616 25.0684 37.3971 56.3012 63.3414 197.4141 74.3746 92.2796 97.7888 47.6674 65.8358 9.9896 72.477 30.1746 89.3878 105.954 74.7791 14.0207 762.6498 817.9715 817.9715 738.9624 104.7214 158.8913 169.4615 198.5839 349.0012 1191.1064 303.2026 458.735 283.8053 121.9861 344.5762 209.99 276.6825 1203.5137;
	3.7262 50.3495 90.4927 115.0081 14.6563 33.144 30.1666 17.5758 20.39 11.7058 21.638 32.2797 48.5969 62.2402 186.9984 70.4505 87.4109 92.6294 53.8528 51.3876 10.0555 77.3361 25.4128 88.1099 102.4266 71.5088 13.4745 619.9854 833.2421 833.2421 770.9408 106.5824 179.5093 132.2718 195.1314 355.5166 1137.8942 279.5325 448.5714 274.3569 116.8993 367.6778 205.9194 269.5905 1149.7472;
	3.8217 51.6394 91.575 115.4501 14.5144 33.9019 31.2898 17.5557 28.1707 20.3179 37.5574 56.0282 84.3502 69.0849 198.0299 74.6066 92.5675 98.0939 40.2742 60.2744 10.4299 79.1043 33.2478 86.8492 104.1647 73.4925 13.7525 459.237 807.1242 807.1242 750.7 94.6425 134.2472 155.1465 216.5905 344.373 985.1078 260.6656 453.5133 279.0125 117.1226 376.0847 207.7054 270.1787 995.3693;
	3.268 44.1583 90.856 115.1394 14.4081 31.9845 30.2948 17.421 28.4156 21.0342 38.8815 58.0035 87.324 64.8525 196.0947 73.8775 91.6629 97.1353 53.7489 54.8457 10.0983 74.6306 34.8844 85.9823 100.6461 73.3536 13.2476 331.3034 804.5409 804.5409 707.1381 100.1095 179.1632 141.1731 203.3213 343.2708 835.5381 254.982 448.5367 269.5878 118.0399 354.8152 190.8855 259.9091 844.2416;
	2.088 28.2135 89.2055 111.733 13.9459 21.2269 27.0678 17.9644 28.4291 27.5615 50.947 76.003 114.4221 63.36 190.488 71.7653 89.0421 94.358 90.8332 57.4185 9.0226 49.5294 51.2877 84.3533 99.933 71.6159 13.7952 293.6486 724.5042 724.5042 649.1849 98.7551 302.7774 147.7954 198.642 309.1218 699.4721 232.2915 439.4264 267.6778 119.7163 235.4769 178.9021 261.538 706.7582;
	2.5219 34.0764 92.6116 117.4042 14.6261 13.3866 26.8093 18.5013 28.0197 30.4289 56.2473 83.9099 126.326 65.5129 190.6911 71.8418 89.137 94.4586 87.7897 64.1722 8.9364 31.2355 72.6481 86.7336 104.6071 74.7517 13.9477 317.9742 626.6473 626.6473 599.0797 94.9583 292.6322 165.1795 205.3917 267.3695 522.0188 206.9296 455.9924 280.1977 121.7235 148.5024 146.3173 264.3741 527.4565;
	2.3345 31.5447 91.1918 116.7983 12.1286 4.2246 21.9144 18.3815 27.6087 29.3732 54.2959 80.9988 121.9432 62.6365 196.3195 73.9622 91.768 97.2466 86.3161 69.4353 7.3048 9.8574 72.9448 87.3133 104.6943 73.091 14.0228 489.7083 495.5544 495.5544 433.5714 90.8728 287.7205 178.7267 196.374 211.4365 457.9142 187.5937 435.8624 280.4313 119.6387 46.865 118.7193 241.5724 462.6842;
	3.4323 46.3774 91.0264 90.2937 13.972 26.4385 17.5223 18.2484 24.2914 28.6054 52.8767 78.8816 118.7559 53.8299 198.9037 74.9358 92.9759 98.5267 88.5141 69.07 5.8408 61.6898 69.4137 87.0389 103.9987 73.6899 13.9807 524.7226 519.4584 519.4584 412.5105 49.8627 295.0471 177.7864 168.764 221.6356 501.1618 158.5379 444.0567 278.5681 120.9544 293.2907 86.0617 260.4558 506.3823;
	3.343 45.1707 88.989 65.7834 14.1723 32.9211 14.9001 18.2216 26.5773 26.2018 48.4336 72.2534 108.777 56.5802 196.9985 74.218 92.0853 97.583 90.1823 70.6418 4.9667 76.816 69.1868 85.2955 103.1361 74.2766 13.7188 556.1013 574.3082 574.3082 454.738 31.0438 300.6076 181.8321 177.3865 245.0382 571.7342 116.8228 173.8025 276.2574 119.315 365.2052 115.6884 261.4186 577.6898;
	3.5637 48.154 85.666 57.4434 13.9323 30.3601 28.8636 18.307 26.1783 2.6154 4.8345 7.2121 10.8578 58.6797 190.7503 71.8641 89.1647 94.488 79.5777 69.1802 9.6212 70.8403 34.2168 86.0823 101.9572 73.0614 13.4565 671.5745 605.4643 605.4643 424.8135 28.2724 265.2591 178.07 183.9688 258.3314 771.9528 78.6077 384.0419 273.0998 120.9788 336.7951 103.6461 248.2143 779.9939;
	3.7931 51.2526 87.2025 49.8429 14.1811 32.7228 28.8885 18.5467 26.3645 14.8703 27.4874 41.0059 61.7341 64.1555 175.9389 66.2839 82.2412 87.1511 58.4421 67.228 9.6295 76.3533 35.899 83.2114 103.242 74.3325 13.702 994.0099 698.7531 698.7531 483.4106 35.3496 194.8069 173.045 201.1361 298.1347 1026.16 87.4574 445.8627 276.5409 120.2547 363.0055 141.9547 228.5277 1036.8491;
	3.6883 49.8374 56.9325 32.6696 14.0622 31.5109 11.3625 18.9485 26.4481 24.3259 44.9661 67.0806 100.9894 66.2366 189.3404 71.3329 88.5056 93.7896 48.5108 67.9755 3.7875 73.5253 61.8293 77.9869 103.7528 72.9171 13.6049 1212.0814 631.9885 631.9885 590.4259 60.6881 161.7025 174.969 207.6607 269.6484 1169.5005 131.0704 429.1864 277.9093 121.232 349.5604 147.5402 218.5288 1181.6828;
	3.6597 49.4509 57.0059 45.9176 14.177 30.1715 29.949 18.712 2.6308 20.7566 38.3682 57.2379 86.1713 65.3411 188.8789 71.159 88.2899 93.561 64.347 70.0085 9.983 70.4002 60.8368 86.9013 104.6335 74.8003 13.4752 1279.8279 732.6809 732.6809 441.1925 70.4799 214.49 180.202 204.8531 312.6105 1171.1661 179.3797 417.9666 280.2683 118.224 334.7029 125.0363 254.3722 1183.3658;
	3.7558 50.7496 39.7011 62.5922 14.0039 32.089 0.4723 18.285 26.7952 23.9905 44.346 66.1555 99.5968 65.6912 193.3405 72.8399 90.3754 95.771 57.7326 68.8558 0.1574 74.8743 62.4992 84.1159 103.6556 74.0306 13.7153 1339.9412 762.9183 762.9183 549.5832 85.7371 192.4419 177.2349 205.9509 325.5118 1276.6021 204.3154 436.6528 277.6489 118.3187 355.974 135.9874 247.1299 1289.9001;
	3.7483 50.6482 56.9226 80.0186 14.4311 31.532 29.0894 18.4685 26.4647 27.0888 50.0732 74.6993 112.4594 66.0026 196.8531 74.1633 92.0174 97.5109 53.5946 68.6723 9.6965 73.5747 51.9274 86.6818 103.8426 74.4278 13.6924 1288.9464 740.4995 740.4995 581.4672 99.1053 178.6485 176.7627 206.927 315.9465 1217.6879 232.7775 439.3939 278.1499 117.0826 349.795 144.4997 264.0424 1230.3721;
	3.5927 48.5453 82.2191 89.0255 14.3769 31.7685 29.2592 18.3103 25.6523 24.6812 45.6228 68.0603 102.4644 64.2651 191.8341 72.2724 89.6713 95.0248 41.7795 69.8139 9.7531 74.1266 55.9076 85.6637 101.4323 73.0166 13.5155 1238.9123 726.2088 726.2088 602.2911 99.9208 139.2649 179.7011 201.4798 309.8491 1227.5968 216.615 437.8068 271.6935 115.0489 352.4189 145.2331 267.3849 1240.3842;
];
