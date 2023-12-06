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
	3.9525 53.4069 94.7488 116.9388 15.3816 34.032 31.5159 17.8007 11.0869 18.2462 33.7278 50.3153 75.7494 52.2825 199.7626 75.2594 93.3774 98.9522 85.6981 69.77 10.5053 79.4079 24.7259 88.1908 104.9192 71.2719 13.6703 1230.9479 791.7606 791.7606 707.53 113.2882 285.6604 179.5881 163.9128 337.8179 1105.0216 247.0258 453.6326 281.0336 122.7765 377.5279 218.2137 275.4725 1116.5322;
	3.9461 53.3198 94.9396 117.5466 15.3645 33.8481 32.4689 17.8447 12.1945 15.7038 29.0283 43.3045 65.1947 65.1381 195.4489 73.6342 91.361 96.8154 86.8331 71.455 10.823 78.9788 30.3917 88.7515 101.6192 70.1203 13.5392 1262.2612 812.6258 812.6258 745.8799 113.8537 289.4435 183.9254 204.2167 346.7204 1212.8741 252.7146 468.208 272.1944 122.0677 375.4877 215.8357 276.5346 1225.5082;
	3.9033 52.7421 94.4016 115.6485 15.4001 34.7464 33.965 17.7866 24.8225 15.7548 29.1225 43.4451 65.4064 64.3977 178.1691 67.1242 83.2837 88.2559 85.3925 71.4259 11.3217 81.075 25.2111 89.1167 102.7176 69.7493 13.418 1288.3714 833.1261 833.1261 779.8486 114.4163 284.6417 183.8505 201.8954 355.4671 1260.5296 293.6397 478.1593 275.1364 123.2284 385.4539 218.8953 265.7542 1273.6601;
	3.8642 52.2135 94.5545 119.423 15.3534 34.8883 32.5637 18.3253 28.3636 30.1009 55.6411 83.0056 124.9644 67.5319 193.2874 72.8199 90.3506 95.7447 85.2765 67.4569 10.8546 81.406 26.6645 90.0533 103.8662 70.083 13.7706 1290.231 822.9983 822.9983 779.7332 116.3425 284.2548 173.6342 211.7216 351.1459 1246.8223 316.7679 477.395 278.2131 123.8844 387.0274 193.062 264.0884 1259.81;
	3.4434 46.5273 94.8946 118.2352 15.399 32.3538 32.3395 18.5758 28.4542 30.254 55.9241 83.4278 125.6001 63.4323 193.6199 72.9452 90.506 95.9094 85.3799 68.4733 10.7798 75.4922 70.9299 89.9912 105.7371 68.9428 13.8998 1259.9855 810.3848 810.3848 755.481 118.5326 284.5998 176.2505 198.8689 345.7642 1174.6651 315.6278 477.0363 283.2245 123.8345 358.9113 195.6211 265.0564 1186.9012;
	3.8905 52.5687 95.0734 115.6069 15.4111 33.3141 21.6173 18.3653 27.7738 29.6717 54.8477 81.822 123.1826 53.2422 197.2862 74.3264 92.2198 97.7255 57.7821 71.0471 7.2058 77.733 69.4919 89.7647 104.8149 70.0182 13.7395 1221.2865 814.0307 814.0307 785.503 120.1812 192.6069 182.8754 166.9215 347.3198 1216.9853 322.7514 479.1497 280.7541 123.379 369.5649 176.7361 266.2381 1229.6622;
	3.9193 52.9589 95.4066 118.3233 15.389 34.589 16.0395 18.5156 27.7123 29.8386 55.1563 82.2823 123.8755 65.164 197.696 74.4808 92.4114 97.9285 87.8491 73.3038 5.3465 80.7076 70.0161 89.7602 105.1091 71.1314 13.5351 1303.4271 824.6359 824.6359 762.7484 121.3006 292.8302 188.6841 204.2979 351.8446 1260.7447 321.9219 454.5951 281.5422 123.6501 383.7068 198.5905 270.9371 1273.8775;
	3.8386 51.8676 94.9024 114.6342 15.3328 33.9592 11.3203 17.9018 25.9297 29.9411 55.3457 82.5649 124.301 40.6944 200.1336 75.3992 93.5508 99.136 86.8943 72.5798 3.7734 79.2381 72.0895 88.4181 101.8302 70.7216 13.5854 1278.4238 791.4051 791.4051 762.1872 123.2273 289.6477 186.8206 127.5824 337.6662 1284.099 326.3837 184.7288 272.7594 123.081 376.7206 201.8751 262.477 1297.475;
	3.8715 52.3121 94.0511 115.6216 15.1456 30.6085 4.1411 18.0582 8.7155 29.5572 54.6361 81.5063 122.7073 24.5882 198.0259 74.6051 92.5656 98.0919 86.7071 72.4639 1.3804 71.4198 70.7778 88.6829 100.5889 71.0128 13.3495 1174.0448 698.7117 698.7117 734.7111 120.9828 289.0238 186.5222 77.0874 298.117 1056.6346 305.1113 57.9207 269.4345 123.7371 339.55 184.708 271.3096 1067.6412;
	3.9126 52.8679 93.9368 116.7936 15.3713 29.8289 12.7359 18.3001 25.2998 26.8187 49.574 73.9546 111.3383 23.5003 197.214 74.2992 92.1861 97.6897 88.3514 72.7495 4.2453 69.6007 50.7717 87.1942 101.6852 71.7775 12.8588 1006.0267 631.1642 631.1642 628.6879 123.0814 294.5045 187.2574 73.6767 269.2967 873.1273 286.5178 221.5278 272.3711 123.4671 330.9014 160.1098 276.2247 882.2224;
	3.8732 52.336 94.4323 115.7181 15.4034 27.712 16.0469 18.8822 27.12 29.6187 54.7498 81.6759 122.9627 19.528 201.4628 75.8999 94.1721 99.7944 80.7401 73.1414 5.349 64.6613 73.1533 89.1861 105.0763 72.9745 13.4512 813.8136 701.0609 701.0609 564.8885 122.7695 269.1338 188.2661 61.2228 299.1193 801.3298 234.7149 357.5692 281.4544 124.0403 307.4181 156.7691 276.3222 809.677;
	3.6951 49.929 94.3011 114.0491 15.264 20.1165 8.6457 18.7729 26.1667 26.8948 49.7145 74.1643 111.654 6.7119 205.4616 77.4064 96.0413 101.7751 39.8893 72.8239 2.8819 46.9385 70.7167 88.6349 103.099 72.041 13.4324 632.4043 744.7547 744.7547 542.5965 123.2343 132.9642 187.449 21.0428 317.762 872.7346 238.7078 178.6088 276.158 124.0555 223.1592 145.9358 276.2595 881.8256;
	3.9028 52.7357 94.5689 112.7002 15.3185 21.6895 5.3931 18.4236 27.0368 24.8598 45.953 68.5528 103.2059 51.235 202.4145 76.2585 94.617 100.2658 53.8759 72.548 1.7977 50.6088 73.7839 87.839 103.9491 71.198 13.5698 658.9534 741.2887 741.2887 546.3439 121.385 179.5864 186.7387 160.6286 316.2832 667.5 252.0892 208.5564 278.435 124.0515 240.6089 150.8226 280.2054 674.4531;
	3.8407 51.8967 93.457 111.8241 15.384 19.9221 12.8701 18.1774 20.5543 21.3214 39.4122 58.7953 88.5159 36.5474 201.4823 75.9073 94.1813 99.804 50.6735 71.8784 4.29 46.4849 67.0781 85.7449 101.2966 72.8522 13.1865 531.2158 692.2855 692.2855 497.5289 104.3429 168.9117 185.0151 114.5811 295.3751 722.3833 255.4219 152.1726 271.3301 123.9631 221.0027 159.4532 270.038 729.9082;
	3.8776 52.3946 93.1005 115.5603 15.385 19.7333 20.313 18.5726 26.9641 23.9035 44.1853 65.9158 99.2359 27.987 194.5527 73.2966 90.9421 96.3715 64.8631 71.1364 6.771 46.0443 67.7244 88.2033 102.3265 74.4525 13.7155 429.305 684.3812 684.3812 436.8554 96.5381 216.2103 183.1052 87.7429 292.0027 639.8247 250.3959 187.0272 274.0889 123.955 218.9076 173.7615 261.4389 646.4895;
	3.5489 47.9534 92.5102 114.0796 15.251 8.9902 7.271 18.4768 6.9575 25.767 47.6299 71.0545 106.9722 19.5301 164.7872 62.0826 77.0284 81.6272 59.4984 70.0493 2.4237 20.9772 69.065 88.4547 101.3228 73.0075 13.6872 460.3906 527.7721 527.7721 411.8161 100.1336 198.3279 180.3071 61.2296 225.1828 494.9465 232.1186 44.3197 271.4004 124.048 99.7317 151.7865 251.7868 500.1022;
	3.57 48.239 94.2351 116.6363 15.3533 17.5441 17.4678 18.606 19.555 28.4875 52.6587 78.5564 118.2663 33.2259 176.2117 66.3867 82.3687 87.2863 61.8575 69.6791 5.8226 40.9363 72.1819 88.9132 103.0213 73.3597 13.6423 1060.8181 473.3097 473.3097 316.4302 95.0178 206.1917 179.3541 104.1676 201.9455 858.2427 232.7657 139.0071 275.9498 123.1123 194.6231 132.705 245.6772 867.1827;
	3.3431 45.1727 94.4124 118.2896 15.3783 20.2691 10.6653 18.6863 12.4599 30.157 55.7448 83.1603 125.1974 54.3137 181.6205 68.4245 84.897 89.9655 67.1244 70.1433 3.5551 47.2945 74.8824 87.335 102.8749 74.9086 13.8595 1314.5977 588.8317 588.8317 227.1357 72.1421 223.7481 180.5491 170.2807 251.2348 1086.5227 206.1605 135.0188 275.5579 122.4183 224.8517 171.4686 275.3769 1097.8407;
	2.3772 32.1213 93.0767 110.9061 15.1596 31.2634 2.9882 18.3932 3.5732 25.2028 46.5871 69.4987 104.63 61.1984 184.9053 69.662 86.4325 91.5926 46.8791 70.1933 0.9961 72.9478 53.766 86.3624 99.2162 73.2825 13.4102 1265.1301 661.5765 661.5765 299.1865 61.1192 156.2636 180.6776 191.8653 282.2726 1201.065 130.3965 259.5574 265.7576 120.2242 346.8149 150.8192 273.0414 1213.5761;
	3.829 51.738 94.8328 84.8648 15.1961 32.7065 1.9793 18.1968 8.0584 16.8771 31.1971 46.54 70.0657 65.295 194.8794 73.4197 91.0948 96.5333 40.983 72.8946 0.6598 76.3152 45.5447 88.5733 104.5687 75.1968 13.4454 1351.0374 731.53 731.53 389.2204 54.1412 136.6098 187.631 204.7087 312.1195 1252.9459 110.8829 202.6211 280.0947 121.5653 362.8245 183.2225 279.4714 1265.9974;
	3.8494 52.0137 94.2754 116.4467 14.9301 32.5592 2.3017 18.6822 10.7276 15.6291 28.8901 43.0983 64.8843 64.9868 190.7284 71.8558 89.1544 94.4771 53.9846 69.7154 0.7672 75.9715 62.6373 85.0683 102.2307 73.9237 13.3366 1275.4875 671.4164 671.4164 644.9187 49.5733 179.9486 179.4477 203.7423 286.471 1248.5895 156.9931 67.2786 273.8322 119.8817 361.1903 188.1608 280.5602 1261.5956;
	3.6627 49.4915 92.8284 114.2263 14.3649 31.9729 1.4615 18.5534 27.6331 29.2583 54.0836 80.6821 121.4665 64.9554 191.6127 72.189 89.5678 94.9151 57.7579 69.8587 0.4872 74.6034 72.6506 88.1424 103.4935 73.9579 13.6611 1259.8089 672.9508 672.9508 536.8072 74.8358 192.5264 179.8165 203.6439 287.1257 1218.266 219.5496 435.7274 277.2147 121.1856 354.6859 184.441 272.6861 1230.9562;
	3.6175 48.8798 92.5755 116.4543 14.7981 31.9491 0.1481 18.8536 27.3023 29.7548 55.0013 82.0511 123.5274 60.7243 189.6275 71.4411 88.6398 93.9318 64.8485 70.754 0.0494 74.548 70.4499 86.4713 104.0738 74.3786 13.5513 1267.8638 744.8059 744.8059 626.2972 113.01 216.1618 182.1209 190.3789 317.7838 1224.8947 255.3267 442.1635 278.769 118.91 354.4225 191.1501 268.2267 1237.654;
	3.7319 50.4268 91.4045 115.0318 14.9137 33.1721 28.1234 17.5813 26.9589 27.4368 50.7166 75.6591 113.9044 64.3094 183.4798 69.1249 85.7661 90.8865 61.7401 69.6867 9.3745 77.4016 70.0484 84.1739 102.1838 73.5294 13.0461 1301.2326 734.2442 734.2442 593.1556 116.5397 205.8002 179.3737 201.6186 313.2775 1207.3394 246.2664 447.6165 273.7066 117.042 367.9895 190.142 271.5998 1219.9159;
];