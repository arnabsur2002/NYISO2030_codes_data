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
	3.8773 52.3902 94.8949 114.1385 14.8267 33.5813 29.659 19.1535 28.2967 30.9044 57.1263 85.2212 128.3001 68.0995 199.948 75.3293 93.4641 99.044 42.0254 73.4578 9.8863 78.3563 71.3554 89.8939 105.6772 75.5121 14.0787 1227.6572 755.7575 755.7575 648.3899 108.8504 140.0846 189.0805 213.501 322.4565 1223.4764 230.2759 478.8497 283.0638 119.6726 372.5282 152.0529 278.4403 1236.221;
	3.9138 52.8846 95.135 120.3924 15.1276 32.9607 28.7946 19.1107 27.8587 30.4793 56.3404 84.0488 126.5351 65.5461 190.5201 71.7773 89.0571 94.3739 31.9222 73.3226 9.5982 76.9082 70.252 89.8845 105.4403 75.306 14.0561 1181.9644 731.075 731.075 600.365 107.6636 106.4075 188.7326 205.496 311.9253 1182.516 232.5238 468.0008 282.4293 121.3281 365.6437 148.5223 282.0002 1194.8339;
	3.8137 51.5317 93.8502 63.9049 14.6476 33.6279 30.089 18.2465 27.7754 28.9933 53.5936 79.9511 120.366 66.1688 191.2403 72.0487 89.3937 94.7306 24.4756 70.9194 10.0297 78.4651 68.7317 88.3093 103.0895 73.4168 13.6154 1158.8483 724.9488 724.9488 597.3133 111.5115 81.5852 182.5468 207.4482 309.3115 1187.7707 224.8719 465.8775 276.1325 120.4307 373.0453 143.3118 270.2411 1200.1434;
	3.6501 49.3212 89.2846 75.138 14.1162 32.6575 29.0492 17.94 27.533 28.94 53.4951 79.8041 120.1447 66.0149 194.8713 73.4166 91.091 96.5293 44.7679 70.5021 9.6831 76.2009 55.5675 85.8318 98.9273 73.0124 13.4013 1239.2957 755.4026 755.4026 559.2884 101.7051 149.2264 181.4726 206.9655 322.3051 1145.0987 233.7085 465.6911 264.9838 117.5095 362.2807 172.3458 259.4626 1157.0269;
	3.5539 48.0205 91.7883 117.0596 14.2457 32.8945 25.4853 18.4412 28.0782 30.1596 55.7496 83.1675 125.2082 65.8374 193.2499 72.8058 90.3331 95.7261 83.3558 69.9499 8.4951 76.7537 53.2795 87.5741 102.6185 74.6078 13.3304 1257.3765 704.2839 704.2839 557.7921 100.2 277.8526 180.0513 206.4091 300.4945 1242.3512 240.1693 475.1226 274.8711 120.1394 364.9092 189.668 262.0664 1255.2923;
	3.729 50.3869 87.9733 112.9148 14.4332 32.8009 30.4346 18.2754 28.4261 31.0756 57.4428 85.6933 129.0108 67.9021 200.5596 75.5597 93.7499 99.347 91.3629 72.8022 10.1449 76.5355 70.4378 86.5728 102.5664 73.5125 13.4272 1281.8537 768.6136 768.6136 555.7433 102.2431 304.5431 187.393 212.8822 327.9418 1207.9307 228.9217 478.1394 274.7313 116.4773 363.8717 194.0755 258.8737 1220.5134;
	3.8211 51.632 89.242 112.7664 14.4937 32.8667 30.1414 17.8817 28.4611 31.1019 57.4914 85.7658 129.12 67.4796 204.3268 76.9789 95.5109 101.213 92.5057 73.2739 10.0471 76.689 73.7598 84.9413 99.6983 74.3329 12.8491 1294.2102 788.5695 788.5695 603.3594 101.5349 308.3525 188.6071 211.5576 336.4563 1255.8419 244.2525 478.8717 267.0489 119.6891 364.6015 202.7576 258.2771 1268.9236;
	3.8157 51.5584 90.5919 114.7204 14.7136 32.8262 28.0693 17.9693 28.2816 30.7315 56.8067 84.7444 127.5822 66.4265 202.2899 76.2116 94.5588 100.2041 91.182 72.578 9.3564 76.5945 73.2612 86.3949 103.7436 74.5054 12.891 1146.6346 745.7857 745.7857 560.3931 85.407 303.94 186.8158 208.2561 318.2019 1156.8593 223.4341 474.5782 277.8846 114.0813 364.152 194.7021 256.7264 1168.9099;
	3.8214 51.636 90.672 117.0824 14.3105 33.5913 29.2516 17.7251 28.1635 30.8325 56.9934 85.0229 128.0016 67.7328 201.6073 75.9544 94.2397 99.8659 92.8468 70.2965 9.7505 78.3798 72.1054 85.9624 102.6574 72.6592 13.1251 1222.4203 779.0416 779.0416 602.1798 85.0342 309.4894 180.9433 212.3514 332.3911 1215.4046 269.5031 474.6628 274.9752 113.9586 372.64 180.0128 267.74 1228.065;
	3.6891 49.8477 86.5741 109.3608 14.2069 31.8401 29.5502 14.3104 26.927 30.9385 57.1893 85.3152 128.4415 67.0405 200.3735 75.4896 93.663 99.2548 93.0619 69.7204 9.8501 74.2935 71.6304 83.0239 95.8495 69.5928 12.2155 1138.3732 731.0389 731.0389 658.9034 93.933 310.2062 179.4605 210.181 311.9099 1153.837 290.0111 470.5791 256.7398 109.7545 353.2127 160.443 247.7716 1165.8561;
	3.5802 48.3769 86.6533 109.9377 13.9628 26.8023 26.5752 13.8507 26.476 31.2101 57.6913 86.0641 129.569 67.5094 200.6375 75.589 93.7864 99.3856 92.4218 71.626 8.8584 62.5387 72.5404 83.125 96.1817 69.6632 11.8443 1154.7811 740.7125 740.7125 645.6596 94.9079 308.0728 184.3656 211.6512 316.0373 1119.7632 294.6018 472.9803 257.6296 114.0092 297.3269 159.1776 244.8009 1131.4274;
	3.5658 48.1812 86.3731 112.1968 14.117 31.6984 25.3233 16.3057 26.515 31.1192 57.5234 85.8136 129.192 67.9865 197.4616 74.3925 92.3018 97.8124 92.2241 71.1861 8.4411 73.963 73.4785 82.2319 97.6092 69.5525 12.2824 1049.0098 723.1349 723.1349 617.3131 99.8888 307.4135 183.2333 213.1468 308.5376 1093.2936 283.0302 474.7093 261.4532 112.2056 351.6412 181.4782 258.2998 1104.6821;
	3.5723 48.2702 87.1266 113.5313 13.7646 28.3718 28.444 17.2884 27.0618 31.0929 57.4747 85.741 129.0826 69.5147 193.3156 72.8305 90.3638 95.7587 90.589 70.6533 9.4813 66.201 72.4231 85.2205 99.6897 71.194 12.8368 1085.7236 739.126 739.126 675.3022 103.8887 301.9634 181.8617 217.938 315.3604 1054.3418 304.6429 478.214 267.026 114.2005 314.7383 153.1228 241.176 1065.3245;
	3.7483 50.6482 90.1071 117.9422 14.2304 32.4227 27.9727 17.7835 27.8589 30.0716 55.5869 82.9247 124.8426 68.7595 193.9352 73.0639 90.6534 96.0656 90.7774 70.7862 9.3242 75.653 68.3408 86.2322 101.1015 72.7731 13.4636 1085.2409 715.6017 715.6017 706.4863 103.3939 302.5914 182.204 215.5702 305.3234 1027.6231 306.7105 477.2018 270.8076 112.4404 359.6759 152.2183 261.6354 1038.3275;
	3.726 50.3466 89.2219 113.0179 14.0063 31.7092 24.5703 17.8156 27.7085 29.9369 55.338 82.5534 124.2837 68.7225 175.2756 66.0341 81.9312 86.8226 88.1908 69.5851 8.1901 73.9882 61.9808 86.3373 102.531 72.8247 13.1477 1046.506 693.0602 693.0602 653.9637 100.3095 293.9692 179.1122 215.4545 295.7057 934.4687 299.1598 473.2939 274.6365 112.6352 351.7612 167.4799 250.6682 944.2027;
	3.6691 49.5774 88.2584 112.0388 13.9865 29.6822 24.6787 17.1816 28.1791 27.6238 51.0621 76.1746 114.6805 69.2433 192.2591 72.4325 89.8699 95.2353 86.8014 70.6379 8.2262 69.2586 72.0653 83.0416 98.2784 73.4075 13.0924 1117.7238 703.599 703.599 646.382 105.0981 289.3379 181.8221 217.087 300.2023 1008.4525 262.3266 475.5071 263.2456 114.1594 329.275 156.8447 246.41 1018.9572;
	3.5955 48.5835 87.6864 113.4341 14.1062 31.8435 24.3096 16.5367 27.7663 29.7691 55.0276 82.0904 123.5867 69.3377 189.847 71.5238 88.7424 94.0405 87.3084 72.0433 8.1032 74.3014 69.8376 85.4803 98.2314 72.3858 12.1148 1177.6775 732.3742 732.3742 618.2033 105.8847 291.028 185.4397 217.3829 312.4796 1153.681 256.9985 463.0742 263.1197 116.3408 353.2502 168.7848 220.2002 1165.6986;
	3.6537 49.3697 86.6041 110.1412 14.4888 30.4182 25.0497 13.8942 27.6006 29.9931 55.4418 82.7082 124.5167 67.9069 187.1078 70.4918 87.462 92.6836 88.4027 71.6691 8.3499 70.9758 70.4717 83.8368 98.303 67.5301 11.2346 1259.3049 707.5922 707.5922 633.6511 103.3428 294.6757 184.4764 212.8973 301.906 1170.2385 289.64 471.3272 263.3116 119.4252 337.4391 177.638 226.1304 1182.4284;
	3.6225 48.9474 88.8645 105.5448 14.8366 31.0176 26.3855 14.8338 27.0205 30.0382 55.5251 82.8326 124.704 67.8541 189.9715 71.5707 88.8006 94.1022 87.23 72.4966 8.7952 72.3744 74.1942 85.7264 101.7688 45.9189 12.0982 1312.6864 765.5945 765.5945 601.6951 107.9674 290.7667 186.6064 212.7316 326.6537 1264.5616 271.2546 471.4722 272.595 120.2378 344.0885 146.4717 227.6223 1277.7341;
	3.6123 48.8104 85.9828 92.5575 14.7344 22.564 26.6668 13.5157 26.3531 28.7513 53.1463 79.2838 119.3614 66.6879 190.6533 71.8275 89.1193 94.4399 85.359 71.8536 8.8889 52.6492 72.1612 82.674 96.9349 42.4364 10.1456 1303.3778 763.839 763.839 644.1337 115.0227 284.5301 184.9514 209.0756 325.9046 1305.6092 281.4585 460.4074 259.647 118.7443 250.3095 154.1162 232.3455 1319.2093;
	3.4894 47.1499 83.9671 87.9411 14.3298 25.6842 29.3943 13.0675 26.1147 30.2267 55.8735 83.3523 125.4864 67.0628 191.1264 72.0058 89.3405 94.6742 84.5026 71.9165 9.7981 59.9298 74.7373 82.1086 92.7132 55.0797 9.272 1257.5018 753.7029 753.7029 645.6759 116.1296 281.6754 185.1133 210.2508 321.5799 1214.927 305.9597 455.8396 248.3388 117.8316 284.9232 139.0447 229.8734 1227.5825;
	3.1857 43.0456 82.7993 92.3847 14.1294 26.502 26.4896 10.655 25.8983 29.2476 54.0638 80.6525 121.422 66.2039 190.6542 71.8279 89.1198 94.4403 85.1642 72.0104 8.8299 61.838 72.3172 81.4402 91.3949 59.3641 9.4186 1220.4237 758.1144 758.1144 713.2127 115.4676 283.8807 185.3549 207.5581 323.4621 1119.0603 318.304 458.8651 244.8079 112.3093 293.9954 145.3476 222.2879 1130.7172;
	3.1199 42.1561 81.7322 80.4491 14.0131 27.6391 27.1197 11.2872 25.8964 29.1843 53.9467 80.4779 121.1591 65.6678 187.515 70.6452 87.6524 92.8854 84.2114 69.3597 9.0399 64.4913 72.9494 81.1096 89.8059 57.4256 8.7246 1171.2932 728.2346 728.2346 721.3219 113.7598 280.7048 178.5321 205.8774 310.7134 1136.1645 308.1603 445.892 240.5516 111.9382 306.6101 152.1236 217.6899 1147.9996;
	3.5813 48.3911 84.0041 98.8102 14.149 30.8804 26.698 9.559 26.1933 28.976 53.5616 79.9034 120.2942 65.5899 185.9037 70.0381 86.8992 92.0872 84.2655 68.38 8.8993 72.0542 72.445 82.274 90.7199 50.9731 6.3842 1150.5313 716.4675 716.4675 723.1843 116.0252 280.8849 176.0102 205.6331 305.6928 1138.0184 295.4913 449.0961 242.9997 115.64 342.5661 161.1569 204.7963 1149.8728;
];
