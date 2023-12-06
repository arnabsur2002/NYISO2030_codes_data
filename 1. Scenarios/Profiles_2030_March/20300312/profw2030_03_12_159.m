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
	3.9297 53.0984 92.1648 111.1636 15.3841 33.8002 29.8317 13.047 27.8536 28.2323 52.187 77.8527 117.2068 64.9656 182.8707 68.8955 85.4814 90.5848 75.9657 66.9585 9.9439 78.8672 72.1845 87.987 99.5357 69.3447 9.376 1238.4285 795.9408 795.9408 769.0144 113.9794 253.2191 172.3513 203.6761 339.6014 1203.6878 307.7689 475.8026 266.6136 121.6971 374.9571 200.5856 266.8675 1216.2262;
	3.9196 52.9621 87.6934 107.799 15.3175 33.6245 30.429 10.9221 28.1349 26.402 48.8037 72.8055 109.6083 64.0498 185.2362 69.7867 86.5872 91.7565 81.5236 65.4432 10.143 78.4572 70.7321 85.6204 96.8681 67.0893 7.5406 1267.4574 819.9968 819.9968 810.7542 114.5152 271.7452 168.4509 200.8049 349.8653 1275.1892 305.3774 478.624 259.468 119.1208 373.0081 203.7537 257.4499 1288.4724;
	3.9286 53.084 92.4405 101.4797 15.3605 34.975 26.6976 10.6846 27.8972 27.7712 51.3346 76.5812 115.2925 63.5983 193.4963 72.8986 90.4483 95.8481 87.0771 70.1601 8.8992 81.6083 71.04 87.5346 90.7478 67.5163 8.4744 1290.8993 832.3678 832.3678 811.8713 117.1677 290.2572 180.5924 199.3891 355.1436 1277.228 296.9106 477.641 243.0744 119.5112 387.9891 194.9912 269.6057 1290.5324;
	3.8418 51.9111 87.0446 98.1498 15.0056 34.0708 23.6745 10.4735 27.4009 27.3106 50.4833 75.3112 113.3806 61.0174 196.6811 74.0984 91.937 97.4257 88.5375 71.6292 7.8915 79.4984 69.8067 81.8935 79.9291 58.9843 7.8807 1283.0547 852.0668 852.0668 816.595 116.9601 295.1249 184.3738 191.2977 363.5485 1315.4485 292.8353 462.3767 214.0957 114.672 377.9582 192.7944 250.1046 1329.1511;
	3.8527 52.0582 86.8211 89.7689 14.9127 34.2208 20.2226 9.9311 24.4221 28.2003 52.1278 77.7644 117.0739 55.6326 187.3805 70.5945 87.5895 92.8187 81.2795 68.6118 6.7409 79.8485 70.9941 85.7861 75.3294 57.6207 8.1388 1247.3352 811.1095 811.1095 728.7338 104.4357 270.9316 176.607 174.4158 346.0734 1207.0596 253.7458 407.5731 201.7751 116.6474 379.6225 201.5155 241.3282 1219.6331;
	3.8618 52.1812 81.092 76.6935 14.7154 31.7441 18.4755 6.9313 25.5233 28.401 52.4989 78.318 117.9073 55.4025 184.3826 69.4651 86.1882 91.3337 84.8762 66.8178 6.1585 74.0695 68.0369 80.7023 53.4082 36.2152 5.8254 1218.2028 763.3896 763.3896 686.0967 89.919 282.9208 171.9892 173.6944 325.7129 1203.3953 224.3656 366.0042 143.0577 101.2515 352.1476 192.284 188.1128 1215.9306;
	3.685 49.793 72.5041 63.9087 14.9771 30.032 16.0633 5.4392 19.7589 28.6299 52.922 78.9492 118.8575 58.8522 187.0718 70.4782 87.4452 92.6658 87.2233 68.1024 5.3544 70.0747 70.5279 77.2547 48.9863 24.2353 4.6804 1246.4007 724.5176 724.5176 583.4576 59.9761 290.7442 175.2957 184.5096 309.1275 1149.9512 207.9646 294.4287 131.2132 83.4867 333.1549 169.6338 138.3161 1161.9298;
	3.7769 51.0347 73.6747 69.1376 15.2205 29.9702 16.3964 5.1611 17.0692 23.7656 43.9304 65.5355 98.6633 63.5896 186.3915 70.2219 87.1272 92.3288 88.1498 67.0662 5.4655 69.9304 56.4704 81.7164 57.6453 19.9098 3.4488 1286.2419 750.4145 750.4145 687.339 62.7539 293.8327 172.6285 199.362 320.1768 1191.4732 222.3655 249.2253 154.407 86.308 332.469 165.111 156.5294 1203.8844;
	3.3477 45.2354 63.9948 66.1375 15.1753 25.9442 15.133 4.1189 21.7465 22.2825 41.1888 61.4456 92.506 64.9542 178.3839 67.2051 83.3841 88.3623 84.2111 67.3513 5.0443 60.5365 53.432 80.0561 55.9565 14.3657 2.5276 1248.0008 822.8643 822.8643 763.0676 85.8026 280.7036 173.3623 203.6402 351.0888 1191.9768 247.67 237.8532 149.8835 62.7859 287.8077 157.0743 173.6667 1204.3932;
	2.8097 37.9649 45.723 57.3355 14.4132 18.804 20.2907 2.0934 22.2149 18.3715 33.9594 50.6608 76.2695 65.7695 171.9839 64.7939 80.3925 85.192 84.138 66.0561 6.7636 43.876 44.7211 58.3325 27.0671 5.6652 0.9285 1177.1033 821.965 821.965 751.4774 104.8641 280.46 170.0287 206.1964 350.7051 1220.9163 232.2873 360.2408 72.5011 46.8159 208.5989 132.72 133.0633 1233.6341;
	2.1088 28.4943 34.9287 42.4691 13.5272 14.5661 19.2056 1.1759 20.4038 16.6156 30.7137 45.8188 68.9799 64.2896 175.8787 66.2613 82.2131 87.1213 86.6041 68.0639 6.4019 33.9875 39.0698 43.7889 18.3972 4.2803 0.6617 1149.496 809.3197 809.3197 721.9319 101.6167 288.6805 175.1967 201.5565 345.3097 1132.5666 229.0171 388.6842 49.2783 40.5827 161.5864 89.9724 88.5046 1144.3641;
	1.4923 20.1637 27.6054 25.4136 9.528 9.5127 20.7269 1.0186 17.5987 16.8892 31.2193 46.5731 70.1156 63.5525 174.1831 65.6225 81.4205 86.2814 82.8647 66.7698 6.909 22.1964 45.005 30.1629 16.86 6.1702 0.6361 1078.8292 741.2422 741.2422 683.7333 98.7066 276.2158 171.8657 199.2457 316.2633 1064.2293 203.9748 371.852 45.1608 29.1992 105.5278 57.293 73.7949 1075.3151;
	1.0281 13.8913 28.7071 27.3594 9.0009 7.3161 19.8701 2.1115 16.0626 13.9817 25.845 38.5556 58.0453 60.0583 181.1599 68.2509 84.6817 89.7373 85.9337 69.8227 6.6234 17.0709 40.2174 34.2191 21.3253 10.469 2.6534 1043.7145 739.6832 739.6832 670.9083 94.9281 286.4458 179.7238 188.2907 315.5982 1035.4278 214.2165 402.0748 57.1213 32.6142 81.1598 50.4438 57.6817 1046.2135;
	0.8535 11.5331 21.8384 31.1336 7.5372 7.6915 16.2692 2.4066 14.2752 17.0888 31.5884 47.1237 70.9445 62.1456 184.5328 69.5217 86.2583 91.4081 83.1816 67.414 5.4231 17.9469 49.7049 31.9938 24.8605 9.9208 3.5753 1074.7562 727.4873 727.4873 675.1588 90.6825 277.272 173.5237 194.8347 310.3946 905.1395 211.4944 400.3018 66.5907 32.5286 85.3247 40.4813 58.9428 914.5681;
	0.8857 11.9684 21.4275 5.0293 5.7658 6.9129 14.5084 1.8274 14.0264 15.7479 29.1098 43.4262 65.3778 63.3103 174.3884 65.6998 81.5164 86.3831 66.2803 68.0015 4.8361 16.13 49.0196 39.014 23.0636 5.5548 3.1585 878.7883 660.3684 660.3684 585.6442 69.9539 220.9343 175.0359 198.4862 281.7572 799.0918 184.479 336.8637 61.7775 31.0357 76.6867 30.8268 53.6631 807.4157;
	0.9126 12.3315 15.7873 26.1093 6.4924 0.0207 6.4603 0.9625 9.9082 13.7591 25.4335 37.9417 57.121 61.1082 160.7513 60.5621 75.1419 79.6279 70.0237 64.5922 2.1534 0.0482 41.9504 29.3855 18.982 1.439 1.6112 845.7674 531.6331 531.6331 519.4091 61.0603 233.4125 166.2604 191.5824 226.8301 620.5317 175.0705 217.4555 50.8447 26.7198 0.2294 0.5075 24.8315 626.9956;
	0.5932 8.0152 1.7865 1.3809 5.8548 0.0035 4.1223 0.0047 12.3365 18.2294 33.6967 50.2689 75.6795 61.7459 171.1062 64.4633 79.9822 84.7573 72.6307 64.0708 1.3741 0.0081 50.7049 30.5787 11.574 3.256 0.8494 813.5019 534.7842 534.7842 564.9531 58.4986 242.1022 164.9183 193.5817 228.1746 732.6561 181.5799 221.8187 31.0019 29.0522 0.0384 9.096 35.5796 740.2879;
	1.1209 15.1463 12.8056 9.131 2.5895 0.2907 1.3041 0.0252 4.1684 20.3227 37.5663 56.0415 84.3701 60.1439 137.1159 51.6576 64.0937 67.9202 69.3349 55.9198 0.4347 0.6783 68.1185 31.1599 13.1397 1.3983 1.4256 760.2509 530.9249 530.9249 601.2697 79.2279 231.1163 143.9376 188.5592 226.528 739.2022 193.6024 321.7801 35.1956 71.2419 3.2249 16.1788 161.2755 746.9023;
	0.4914 6.6405 25.8707 38.6768 6.1659 0.8603 0.0765 2.015 2.4918 23.8334 44.0557 65.7225 98.9449 63.2165 127.2544 47.9423 59.484 63.0353 0.0012 66.7143 0.0255 2.0073 70.4623 48.3584 23.5554 7.2479 1.9841 786.7235 513.1201 513.1201 596.3747 79.0116 0.0039 171.7228 198.1922 218.9312 682.3709 186.5001 331.4594 63.0948 83.0812 9.5433 9.9013 46.6014 689.4789;
	0.3302 4.4612 31.8122 57.4032 2.6811 1.1524 0.0 3.6251 1.8341 24.3719 45.051 67.2072 101.1801 56.6307 109.0218 41.0733 50.9613 54.0038 0.0 70.0085 0.0 2.6889 66.6014 70.1195 38.5907 19.9847 2.8936 635.9033 357.6329 357.6329 542.6047 68.908 0.0 180.2021 177.545 152.59 566.4707 186.005 0.0 103.3679 91.924 12.784 6.2819 77.6576 572.3714;
	0.7503 10.1379 47.3757 76.8389 6.0765 2.505 2.5165 4.5635 3.3948 24.4786 45.2483 67.5016 101.6233 52.4722 131.0839 49.3851 61.2741 64.9322 81.1165 73.7545 0.8388 5.8451 69.1647 80.8875 40.6112 12.9881 2.1535 584.6027 357.1086 357.1086 492.6079 58.6428 270.3882 189.8442 164.5073 152.3663 624.0415 180.5681 40.1167 108.7799 96.8526 27.7893 34.978 53.9383 630.5419;
	0.5989 8.0929 47.2099 70.4397 5.4097 3.3682 0.0 3.2379 0.747 21.0924 38.989 58.164 87.5655 36.5827 145.026 54.6377 67.7912 71.8385 76.3904 71.4908 0.0 7.8591 59.1522 72.8071 42.0183 16.2406 1.3871 416.3768 352.8524 352.8524 439.5749 52.3177 254.6346 184.0175 114.6917 150.5504 675.0407 153.4413 12.0556 112.5491 85.8986 37.3643 9.5851 44.8811 682.0723;
	0.6961 9.4063 46.2369 65.7197 7.4782 0.1348 0.0 3.9793 0.1748 14.9495 27.6339 41.2243 62.063 20.4963 151.2672 56.989 70.7086 74.93 77.6226 72.32 0.0 0.3145 35.1852 70.4143 41.9536 31.8196 1.7503 378.6275 393.082 393.082 490.0454 53.7128 258.7421 186.152 64.2586 167.715 513.1376 138.0334 0.0 112.3757 71.3317 1.4952 0.5797 56.0319 518.4828;
	0.7862 10.6227 53.3625 66.7586 4.664 0.209 0.0 6.7434 1.5561 20.9483 38.7226 57.7665 86.9671 7.6679 166.8259 62.8507 77.9814 82.637 84.9713 71.7841 0.0 0.4877 66.8321 74.6669 51.6586 43.8211 3.0502 293.4235 310.4118 310.4118 361.2621 50.6771 283.2378 184.7725 24.04 132.4424 390.4883 115.28 0.3398 138.3712 71.9741 2.3186 0.6218 70.5811 394.5559;
];
