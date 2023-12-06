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
	3.8276 51.719 92.3862 120.5558 14.8585 34.1386 32.0231 17.8867 10.5874 17.2932 31.9662 47.6873 71.7929 41.4514 197.9974 74.5944 92.5523 98.0778 89.1812 68.465 10.6744 79.6567 24.7267 88.634 101.0373 73.8254 13.7564 1323.3956 852.9769 852.9769 794.9095 114.7342 297.2708 176.2291 129.9557 363.9368 1191.8461 290.3484 447.9353 270.6357 121.0994 378.7106 211.6183 275.4698 1204.2611;
	3.8537 52.0721 93.7688 120.0978 15.0847 34.1309 30.9028 17.6037 10.8876 14.0561 25.9825 38.7608 58.3541 49.7474 189.8374 71.5201 88.7379 94.0357 85.1946 71.1687 10.3009 79.6387 27.38 88.4512 97.1678 73.2496 13.1337 1302.9377 842.3172 842.3172 801.8281 117.1013 283.9821 183.1884 155.9648 359.3887 1251.5647 267.9648 440.1211 260.2708 118.831 378.6252 209.021 275.2342 1264.6018;
	3.8686 52.2738 93.6015 120.3671 15.2807 34.7336 31.5905 17.5539 22.648 16.9558 31.3426 46.7569 70.3923 58.2004 180.8866 68.148 84.554 89.602 86.3276 72.2339 10.5302 81.0452 28.2986 87.1847 98.8264 72.1348 12.8873 1306.1578 841.1549 841.1549 804.0475 119.4826 287.7588 185.9302 182.4662 358.8927 1278.6382 297.8524 457.4012 264.7136 119.4752 385.3119 218.21 260.2517 1291.9573;
	3.8249 51.6833 93.4336 119.6345 15.3514 33.802 29.9287 17.8022 27.8658 30.5568 56.4837 84.2626 126.8568 64.6947 197.5448 74.4238 92.3407 97.8536 89.4805 67.8953 9.9762 78.8713 28.0308 87.3724 98.8948 73.2324 13.1505 1279.626 805.9241 805.9241 765.3377 112.5081 298.2682 174.7628 202.8265 343.861 1177.2738 288.9786 451.758 264.8969 118.5873 374.9767 190.0751 261.6937 1189.5371;
	3.4886 47.139 94.8584 120.7103 15.3917 31.1597 30.7359 18.5025 28.1911 30.9604 57.2298 85.3756 128.5324 66.4028 195.0482 73.4833 91.1737 96.6169 88.7301 67.0458 10.2453 72.7061 73.8799 89.8843 103.5347 72.019 13.2559 1352.7936 825.247 825.247 793.7207 117.1738 295.767 172.576 208.1817 352.1054 1213.5048 319.3823 465.226 277.3251 117.3332 345.6654 191.4948 265.6021 1226.1454;
	3.8857 52.5039 94.5663 119.6357 15.1822 31.8463 17.8798 18.6629 26.3843 30.4523 56.2906 83.9746 126.4232 54.323 199.6931 75.2332 93.3449 98.9177 61.9962 70.5929 5.9599 74.308 72.5546 88.9163 102.4909 73.0392 13.7482 1335.5495 840.6512 840.6512 791.4618 118.0779 206.654 181.7062 170.3101 358.6778 1283.6364 311.0452 458.2364 274.5291 117.381 353.2814 163.2835 269.7184 1297.0076;
	3.8669 52.2499 94.7036 120.3435 15.2441 32.8347 13.2699 18.7765 26.9382 30.4269 56.2437 83.9046 126.3179 68.4318 196.7014 74.1061 91.9465 97.4358 89.7614 72.7512 4.4233 76.6144 73.7847 89.2223 104.7855 73.9469 13.5655 1361.8771 848.6485 848.6485 781.5767 118.8316 299.2047 187.2617 214.5428 362.09 1294.5611 321.513 443.5421 280.6754 121.4715 364.2466 180.4853 278.8705 1308.0461;
	3.8291 51.7393 93.0516 117.8178 14.8692 32.2195 0.5743 18.3387 9.5334 29.9029 55.2751 82.4596 124.1425 46.2123 201.4231 75.885 94.1536 99.7747 89.1826 72.3416 0.1914 75.1789 73.508 87.1334 100.3855 73.6149 13.5151 1345.4627 828.4743 828.4743 764.7803 116.3425 297.2754 186.2076 144.8819 353.4824 1344.2974 311.8599 189.8743 268.8897 121.4772 357.4221 199.3402 282.6062 1358.3005;
	3.8189 51.6011 93.4636 117.6477 15.0895 29.8336 0.4964 18.6791 3.3049 29.6548 54.8164 81.7753 123.1122 26.5563 199.1495 75.0284 93.0908 98.6485 90.384 72.3644 0.1655 69.6118 74.0987 88.2266 102.0002 73.483 13.5274 1197.6548 737.3704 737.3704 727.9674 116.3752 301.28 186.2663 83.2577 314.6114 1118.5212 296.8582 117.7093 273.2149 123.8076 330.9544 180.4044 283.2152 1130.1724;
	3.8735 52.3401 92.8068 119.5806 14.7589 28.7032 4.2527 18.8269 20.9351 27.6408 51.0936 76.2216 114.7512 23.5069 191.5214 72.1546 89.5251 94.8699 86.7412 71.3033 1.4176 66.9741 52.6398 88.6309 103.4273 73.9739 13.6589 1001.2396 672.9127 672.9127 603.5508 115.3746 289.1374 183.535 73.6973 287.1094 896.8009 260.3838 449.5329 277.0374 123.6476 318.414 156.192 283.9915 906.1426;
	3.7944 51.2707 94.3419 120.0612 14.6236 26.5718 0.3721 18.4529 8.7999 30.7908 56.9164 84.908 127.8285 12.04 190.5679 71.7953 89.0794 94.3976 77.2193 70.0165 0.124 62.0009 74.7616 89.0033 103.5096 73.1736 13.5792 811.9137 704.9693 704.9693 546.4914 113.9487 257.3976 180.2227 37.747 300.7869 794.5595 212.0686 202.1416 277.2579 123.7758 294.7698 145.568 282.288 802.8361;
	3.4067 46.0321 93.2741 117.5012 14.2693 17.0649 0.0 17.9681 2.066 27.868 51.5135 76.8481 115.6944 5.0185 191.3281 72.0817 89.4348 94.7742 34.8904 70.6492 0.0 39.8182 72.3799 87.4724 102.1304 73.5521 13.3277 555.2958 739.4625 739.4625 520.0518 111.9498 116.3014 181.8512 15.7337 315.504 830.4104 207.9902 39.0297 273.5635 123.0736 189.3071 123.4971 282.6089 839.0606;
	3.6009 48.6559 91.2297 113.596 14.2052 17.22 0.0 17.5365 25.7392 23.6597 43.7346 65.2434 98.2236 49.5619 191.2876 72.0665 89.4158 94.7541 56.6053 71.0359 0.0 40.18 70.2027 84.5219 99.8561 70.5521 13.2684 551.3777 674.4934 674.4934 503.5251 99.7992 188.6843 182.8466 155.3833 287.7839 577.3291 211.4939 82.0697 267.4716 122.7103 191.0273 126.5657 274.3131 583.343;
	3.6235 48.9621 92.5473 112.6625 14.1649 17.9326 0.0038 17.5394 19.0336 21.7675 40.2369 60.0255 90.3681 39.7448 195.2394 73.5553 91.2631 96.7116 59.0726 72.5096 0.0013 41.8426 71.3458 85.4194 98.4591 69.689 13.1034 446.8404 689.074 689.074 499.977 92.3146 196.9087 186.6398 124.6054 294.0049 665.6572 228.6472 58.2824 263.7298 122.9735 198.9319 146.4978 277.9761 672.5911;
	3.6352 49.1191 92.7847 115.051 14.5319 17.0628 0.0 17.3979 4.5928 24.6064 45.4846 67.8541 102.154 34.7963 191.2352 72.0467 89.3913 94.7281 72.076 72.085 0.0 39.8133 70.2344 86.0468 99.3206 71.1685 13.0762 305.0761 645.5391 645.5391 436.7692 75.0826 240.2535 185.547 109.0913 275.43 543.5814 206.418 33.8751 266.0372 119.1627 189.2838 153.2223 263.1341 549.2437;
	3.3764 45.622 90.4466 114.5941 14.2901 7.6064 0.003 17.4449 5.1153 27.7402 51.2773 76.4957 115.1638 27.4267 190.6013 71.8079 89.095 94.4141 63.5437 72.6432 0.001 17.7483 69.1953 86.2376 98.1179 72.3397 13.3939 337.1693 530.7297 530.7297 428.5932 87.639 211.8122 186.9838 85.9863 226.4447 463.8917 215.1999 108.255 262.8158 120.0941 84.3807 142.3506 263.2849 468.7239;
	3.3316 45.0168 90.3098 114.6364 14.5148 16.3124 0.1598 18.2161 16.8936 28.8615 53.3501 79.5878 119.819 37.8247 189.3506 71.3367 88.5104 93.7946 63.5304 72.7507 0.0533 38.0623 71.3101 87.7879 101.6589 73.6617 13.4773 907.6978 455.451 455.451 304.0227 86.7315 211.768 187.2605 118.5854 194.3258 843.0666 222.07 116.6096 272.3006 118.7582 180.9589 121.8916 258.5456 851.8485;
	3.2258 43.5872 89.0361 111.5053 14.8123 20.0355 0.4687 17.8239 26.6764 30.2127 55.8478 83.3139 125.4286 62.0273 195.6659 73.716 91.4624 96.9229 78.3186 72.5517 0.1562 46.7494 73.5121 84.9592 96.8288 72.8133 13.4863 1223.0324 583.5324 583.5324 234.3021 67.6626 261.0619 186.7482 194.464 248.9738 1072.0739 205.8514 121.2248 259.3628 120.0551 222.26 169.3388 276.5035 1083.2414;
	2.3264 31.4351 88.9143 111.3614 14.6723 32.0499 0.1447 17.5398 13.2217 25.7971 47.6856 71.1375 107.0971 65.3537 190.8582 71.9047 89.2151 94.5414 53.5249 71.0382 0.0482 74.7831 55.3541 85.9088 96.7744 72.4268 13.13 1216.9672 689.0431 689.0431 320.5965 61.3695 178.4164 182.8526 204.8928 293.9917 1200.9354 137.6415 243.4306 259.2171 118.5506 355.5401 160.8116 273.6643 1213.4451;
	3.6056 48.7202 89.5707 78.1544 14.9355 32.5546 1.5094 17.3443 16.7574 16.5997 30.6844 45.775 68.914 66.703 199.3903 75.1192 93.2034 98.7678 44.3288 71.8965 0.5031 75.9607 47.1866 85.9383 99.8946 75.0751 13.4084 1280.915 703.6161 703.6161 398.7407 53.954 147.7628 185.0619 209.1228 300.2095 1208.6166 119.1889 16.591 267.575 118.582 361.1388 175.4059 275.6495 1221.2064;
	3.7001 49.9971 92.0669 116.0864 15.2564 32.2337 8.3877 18.1813 26.4267 16.9318 31.2982 46.6907 70.2926 65.688 199.1452 75.0268 93.0888 98.6463 63.2493 69.6217 2.7959 75.2119 69.6929 85.3268 99.3154 74.652 13.7138 1291.0259 688.6097 688.6097 670.4546 51.7325 210.8309 179.2066 205.9407 293.8068 1290.8512 167.9017 47.7786 266.0234 116.7394 357.5786 189.0039 282.3451 1304.2975;
	3.6342 49.1059 90.9049 113.7777 14.431 32.2406 4.8702 17.5001 28.063 29.7473 54.9874 82.0304 123.4963 66.0625 200.7163 75.6187 93.8232 99.4246 72.9294 71.4405 1.6234 75.228 73.4741 87.2086 98.0205 72.9546 13.4484 1348.8625 696.029 696.029 589.0921 79.9601 243.0979 183.8879 207.1147 296.9724 1367.0032 235.194 437.8319 262.5548 117.6901 357.6555 194.5609 274.0507 1381.2428;
	3.7508 50.6813 93.9916 116.9886 15.1757 33.5245 6.4143 18.4577 28.2223 30.757 56.8538 84.8147 127.6881 69.1053 203.9667 76.8433 95.3426 101.0347 73.5421 72.1142 2.1381 78.2237 71.8025 85.8476 100.1642 74.8813 13.4351 1344.3386 754.4699 754.4699 650.1869 118.9196 245.1403 185.6222 216.6545 321.9071 1324.5852 265.1445 458.8104 268.2969 118.1886 371.898 201.5042 280.6234 1338.383;
	3.7066 50.0838 93.1006 118.1955 15.2997 34.7419 30.949 17.9578 28.3373 29.2771 54.1183 80.7339 121.5444 69.0828 203.3225 76.6006 95.0415 100.7156 80.7811 72.9554 10.3163 81.0644 70.7783 85.1887 102.96 72.9655 12.9319 1311.5571 750.407 750.407 641.3538 119.1776 269.2703 187.7873 216.5839 320.1737 1261.0835 253.5087 464.6391 275.7856 117.3203 385.4032 198.2747 269.2776 1274.2198;
];