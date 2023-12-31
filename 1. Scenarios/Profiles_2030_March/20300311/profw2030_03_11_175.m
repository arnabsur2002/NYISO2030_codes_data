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
	3.8754 52.3658 92.3257 113.1372 14.9036 33.6396 28.2319 18.2363 26.8478 30.962 57.2328 85.3801 128.5393 68.3206 200.1259 75.3963 93.5472 99.1321 36.4051 73.9026 9.4106 78.4924 73.8019 87.3259 103.6673 72.1197 13.6689 1213.1008 660.3731 660.3731 552.3142 104.9603 121.3503 190.2256 214.1943 281.7592 1117.2142 224.8445 459.7412 277.6804 120.9293 373.1755 150.1282 264.8442 1128.8519;
	3.8742 52.3484 94.2752 120.4685 15.1854 33.3968 27.6403 18.5738 27.0385 31.1418 57.5652 85.8759 129.2857 68.7887 201.1177 75.7699 94.0108 99.6234 33.074 73.9414 9.2134 77.9259 71.838 87.4358 103.9498 71.485 13.7531 1243.8536 659.1186 659.1186 547.1494 101.2709 110.2465 190.3253 215.662 281.2239 1131.9491 234.0621 439.2052 278.4369 120.1956 370.4819 150.6073 271.8305 1143.7403;
	3.9162 52.917 94.4167 68.2484 15.1416 33.6502 27.1788 18.3314 27.24 30.3621 56.1239 83.7259 126.0489 69.5801 200.7155 75.6184 93.8228 99.4242 34.661 73.903 9.0596 78.5171 69.3804 88.2073 104.6109 72.49 13.7518 1251.1952 710.5132 710.5132 561.8028 103.9437 115.5367 190.2265 218.143 303.1523 1213.9525 230.9167 437.2986 280.2078 118.0101 373.2926 147.2215 270.3564 1226.5978;
	3.9294 53.0946 94.7956 87.7916 14.9653 34.1087 26.3885 18.6437 27.3876 30.6924 56.7344 84.6365 127.4198 69.7752 203.4126 76.6345 95.0836 100.7602 44.9737 73.8679 8.7962 79.5869 67.4852 87.9974 105.481 75.0423 13.7955 1272.6975 707.188 707.188 538.1892 96.1153 149.9122 190.1362 218.7548 301.7335 1153.0606 242.7264 448.8146 282.5384 118.5685 378.3787 186.0342 275.0726 1165.0716;
	3.7259 50.345 94.9404 120.2305 15.0238 33.6458 21.9205 18.7641 27.3897 30.8029 56.9386 84.9412 127.8785 69.8674 198.4103 74.7499 92.7453 98.2823 76.634 73.9337 7.3068 78.5068 58.6492 88.1369 104.8546 75.8089 13.9364 1236.4585 670.4864 670.4864 499.6844 91.0534 255.4468 190.3056 219.0438 286.0742 1191.9077 228.8349 441.1157 280.8604 119.1612 373.2438 195.0859 278.902 1204.3234;
	3.9105 52.8388 95.0699 120.4394 14.7653 34.1042 26.779 18.3886 26.6277 30.4189 56.2288 83.8823 126.2843 69.1838 197.5729 74.4344 92.3538 97.8675 85.182 73.8469 8.9263 79.5764 69.073 87.0262 104.6477 74.5329 13.9014 1251.1866 707.9629 707.9629 481.1227 84.951 283.94 190.0822 216.9006 302.0642 1125.0895 203.0594 449.0234 280.3062 118.0999 378.329 203.0563 271.0646 1136.8092;
	3.8396 51.8819 95.0376 119.1766 14.585 32.0137 28.0679 18.4792 26.9401 30.7087 56.7645 84.6815 127.4876 67.4073 200.6225 75.5834 93.7794 99.3781 88.2429 73.2583 9.356 74.6986 73.9482 85.9358 102.1683 75.8682 13.6744 1269.9282 762.6022 762.6022 551.1224 89.7509 294.1429 188.5671 211.3311 325.3769 1141.5356 239.3035 452.066 273.6651 119.3901 355.1383 201.0036 268.8734 1153.4266;
	3.8874 52.5267 94.7555 120.6179 15.1356 33.4832 28.6981 18.4766 28.3569 30.989 57.2826 85.4544 128.6511 68.9669 203.8119 76.785 95.2702 100.958 88.9876 72.5642 9.566 78.1274 74.1199 87.7273 104.7127 75.6904 13.9019 1202.4937 736.91 736.91 545.1173 76.0466 296.6255 186.7804 216.2206 314.4149 1109.4725 227.6337 470.8139 280.4805 121.6668 371.4402 199.2978 263.7944 1121.0296;
	3.9248 53.0321 95.1424 121.226 15.1544 34.825 29.6765 18.6263 28.2486 30.8506 57.0268 85.0727 128.0765 69.5408 205.2049 77.3098 95.9214 101.648 89.1481 72.2467 9.8922 81.2582 72.3232 87.3045 103.9382 75.4191 13.9742 1187.0614 785.2957 785.2957 595.528 71.8652 297.1604 185.9633 218.02 335.0595 1174.4392 259.2885 466.005 278.406 122.8971 386.3249 187.1773 277.9667 1186.673;
	3.8321 51.7807 94.464 119.9427 14.9118 33.8695 28.4017 18.2792 27.0241 29.2876 54.1376 80.7627 121.5878 69.6509 202.7143 76.3714 94.7572 100.4143 89.2417 72.5072 9.4672 79.0288 70.3916 86.1968 101.9303 75.4321 13.9706 1140.6304 766.835 766.835 663.8241 71.5971 297.4724 186.6336 218.365 327.1829 1137.336 275.3579 456.3208 273.0277 120.4688 375.7257 165.4165 279.102 1149.1833;
	3.9149 52.8994 94.5569 119.9412 15.3384 34.9687 27.3456 17.8609 27.8229 30.7186 56.7829 84.709 127.5289 69.8447 200.5002 75.5373 93.7222 99.3175 89.0583 71.5552 9.1152 81.5936 72.1127 85.8098 98.7331 73.1409 13.5679 1204.5138 771.6248 771.6248 646.5477 84.3504 296.8609 184.1833 218.9727 329.2266 1154.8909 301.4118 474.2793 264.4636 120.5494 387.9192 185.4434 273.7669 1166.921;
	3.91 52.8324 92.1293 120.1337 15.3597 34.8723 27.1335 17.7303 27.7815 31.1727 57.6222 85.961 129.4138 69.2028 202.5907 76.3249 94.6994 100.3531 90.9865 72.5082 9.0445 81.3688 74.6515 85.8081 100.2334 72.3524 13.4362 1184.6147 802.0677 802.0677 686.6304 90.5563 303.2885 186.6363 216.9601 342.2156 1200.7441 297.5636 468.1776 268.4825 118.288 386.8506 196.4954 267.9539 1213.2518;
	3.9161 52.9155 89.9225 120.2997 15.1991 35.0653 30.4422 17.5353 28.4686 31.4093 58.0596 86.6134 130.396 68.9526 205.7101 77.5001 96.1575 101.8982 92.6184 73.6082 10.1474 81.819 75.6002 87.1772 99.3545 71.7705 13.2731 1128.4277 818.4918 818.4918 716.5986 93.845 308.728 189.4678 216.1757 349.2232 1094.566 300.7479 479.2809 266.1281 122.3699 388.9911 179.1093 258.7783 1105.9677;
	3.8709 52.304 92.2412 120.4728 14.965 34.4502 29.3575 17.8445 28.2265 31.217 57.7041 86.0832 129.5978 69.4515 205.7151 77.502 96.1598 101.9007 92.375 73.701 9.7858 80.3839 74.8074 86.3103 100.6441 71.7017 13.4858 1166.4014 757.2685 757.2685 753.865 99.7374 307.9166 189.7066 217.74 323.1012 1073.8186 320.3316 477.9473 269.5824 113.627 382.1678 154.8831 264.6595 1085.0042;
	3.8855 52.5011 91.4496 118.3948 15.0309 33.3283 27.4284 17.5504 28.1179 31.1662 57.6102 85.9431 129.3869 69.4329 205.2155 77.3137 95.9263 101.6533 90.894 73.481 9.1428 77.766 74.3661 86.8689 98.9136 72.4181 13.0158 1135.1024 771.7506 771.7506 748.5457 102.4917 302.9801 189.1402 217.6816 329.2802 1010.219 336.8999 478.1656 264.947 112.3643 369.7219 176.4746 258.0458 1020.7421;
	3.8728 52.3305 92.3052 118.598 15.3387 34.5397 28.9736 17.3031 28.409 30.9783 57.2628 85.4249 128.6067 69.8476 205.6357 77.472 96.1227 101.8614 89.2447 73.6681 9.6579 80.5925 74.7979 85.7431 98.9341 73.786 13.1294 1217.4191 804.4934 804.4934 713.9463 110.8881 297.4824 189.6218 218.9815 343.2505 1107.0797 326.3587 478.606 265.002 112.67 383.16 190.0258 261.3677 1118.6118;
	3.8021 51.3751 89.371 115.214 15.2683 34.0551 26.7245 15.6381 27.8998 31.2835 57.8271 86.2667 129.874 68.6187 204.9192 77.2021 95.7878 101.5065 87.9911 73.2523 8.9082 79.4619 75.6518 85.6922 95.9514 70.95 11.6058 1114.1703 798.6193 798.6193 746.6312 106.7676 293.3037 188.5515 215.129 340.7442 1147.75 306.9367 472.726 257.0128 112.9852 377.7846 192.6482 229.8649 1159.7057;
	3.9135 52.8801 91.2552 112.5408 15.2467 33.3365 26.2597 13.9049 27.2684 31.1232 57.5307 85.8245 129.2084 67.7254 203.8519 76.8 95.2889 100.9778 86.8739 69.3669 8.7532 77.7852 74.492 84.3729 96.5476 61.9651 11.2166 1212.7953 781.3933 781.3933 747.0847 104.52 289.5797 178.5505 212.3284 333.3945 1181.6672 323.6897 474.0613 258.6096 116.2317 369.8129 193.4211 250.2546 1193.9762;
	3.7556 50.7464 89.2025 107.2088 15.2705 32.698 24.9427 14.6872 25.8052 30.7936 56.9216 84.9158 127.8403 65.9939 200.8446 75.6671 93.8832 99.4882 86.7862 69.6079 8.3142 76.2952 73.3693 82.9829 96.6032 39.912 11.6801 1201.8982 807.2617 807.2617 666.3271 109.5639 289.2874 179.1709 206.8999 344.4317 1229.6208 300.5274 452.954 258.7585 114.1027 362.7293 152.5142 231.7538 1242.4293;
	3.8469 51.9805 90.2013 105.8722 15.1487 29.0847 27.0264 15.0257 27.0267 30.6333 56.6252 84.4737 127.1747 65.4361 204.2087 76.9344 95.4557 101.1545 87.6365 68.8017 9.0088 67.8644 73.5993 81.8162 95.5744 43.5948 10.773 1266.644 813.9617 813.9617 697.2934 116.2821 292.1216 177.0958 205.1511 347.2903 1284.4547 296.1752 473.6194 256.003 117.9182 322.6468 179.929 239.1118 1297.8345;
	3.8676 52.2603 89.8025 107.7132 15.1661 30.8341 30.1546 15.0999 27.7481 30.9382 57.1888 85.3144 128.4404 64.923 201.393 75.8736 94.1395 99.7598 88.4637 68.5546 10.0515 71.9463 75.1058 81.5351 95.839 59.4894 10.5411 1204.2595 781.9314 781.9314 662.0976 115.9392 294.8791 176.4596 203.5423 333.6241 1189.278 301.0497 468.5305 256.7115 119.0267 342.0534 164.1463 242.3153 1201.6663;
	3.7732 50.9846 89.4344 105.5658 15.3098 31.2825 28.1914 14.368 27.5596 30.4484 56.2834 83.9638 126.407 64.8271 201.2133 75.8059 94.0555 99.6708 88.2782 67.7805 9.3971 72.9925 73.7354 82.7998 97.7141 65.9106 11.0198 1283.7864 804.0933 804.0933 748.5659 119.9606 294.2607 174.4671 203.2416 343.0798 1179.3991 318.1896 466.5223 261.7341 114.2433 347.0274 157.7196 244.9793 1191.6845;
	3.7425 50.5691 89.6411 100.2461 15.1845 30.9059 29.7361 12.6982 27.3101 30.4043 56.2019 83.8422 126.224 65.9741 202.8603 76.4264 94.8254 100.4866 89.7637 68.363 9.912 72.1138 73.9365 85.3689 96.0991 61.5433 10.3741 1266.7375 788.4697 788.4697 767.135 118.4518 299.2122 175.9665 206.8378 336.4137 1199.4791 318.3088 470.6439 257.4082 115.9993 342.8497 179.5415 238.8387 1211.9736;
	3.722 50.2919 87.5318 105.7088 15.0787 33.1223 25.6124 12.2053 26.6268 30.0682 55.5807 82.9155 124.8288 64.8111 202.9194 76.4487 94.853 100.5159 85.9317 69.0911 8.5375 77.2853 74.4104 84.0127 95.5629 59.5736 9.9958 1269.7619 742.3247 742.3247 734.6706 116.8586 286.4391 177.8407 203.1916 316.7252 1172.5157 305.9935 453.986 255.9721 114.8301 367.4365 185.7144 221.9733 1184.7294;
];
