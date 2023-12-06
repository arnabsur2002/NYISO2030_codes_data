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
	4.0035 54.0957 92.867 119.4289 15.2415 34.7918 32.0732 18.2786 10.2285 16.3392 30.2027 45.0566 67.8324 55.2565 204.1375 76.9076 95.4224 101.1193 84.4401 69.316 10.6911 81.1809 20.2568 85.7932 102.8701 73.5238 13.4552 1303.9091 820.4432 820.4432 742.4865 114.4508 281.467 178.4195 173.2365 350.0558 1217.0574 268.2075 478.8528 275.5449 120.9863 385.9571 216.2102 272.6525 1229.7351;
	3.9098 52.8299 91.9702 116.3158 15.1797 34.3042 32.522 17.8654 11.167 13.2837 24.5547 36.6308 55.1475 60.9843 193.5529 72.9199 90.4747 95.8762 81.8139 69.5164 10.8407 80.0431 22.1693 83.342 99.575 71.3641 12.8911 1298.6224 796.5192 796.5192 748.8665 114.0579 272.7129 178.9353 191.1939 339.8482 1244.2625 251.0722 471.5753 266.7187 119.0404 380.5478 213.6384 270.8379 1257.2236;
	3.8584 52.1354 88.9544 114.0797 15.2728 34.6113 33.5023 17.7706 22.742 13.669 25.2669 37.6933 56.7471 61.0859 182.4247 68.7274 85.2729 90.3639 84.3946 70.0281 11.1674 80.7596 3.1602 85.1358 101.3311 72.2028 12.9928 1332.3714 818.5268 818.5268 769.6745 115.8438 281.3152 180.2526 191.5127 349.2381 1291.0475 284.7365 477.2473 271.4226 119.678 383.9542 213.2906 266.8325 1304.4959;
	3.7272 50.3625 89.764 115.7072 15.2796 33.7952 32.533 17.9537 27.955 29.0532 53.7043 80.1163 120.6147 68.2028 200.7641 75.6367 93.8456 99.4483 84.8365 66.7132 10.8443 78.8555 24.1322 88.0219 101.7503 74.7521 12.9888 1354.9107 795.0819 795.0819 756.1875 119.0181 282.7884 171.72 213.825 339.2349 1226.66 301.2719 478.802 272.5455 119.0399 374.9015 174.4155 269.1865 1239.4378;
	3.2055 43.3136 90.0354 114.5664 14.9776 30.631 32.0843 17.4478 27.9399 29.1814 53.9413 80.4699 121.1469 65.9936 199.2152 75.0532 93.1215 98.681 85.9466 70.0847 10.6948 71.4723 70.035 85.3937 98.4691 71.334 12.7366 1341.1107 786.781 786.781 752.2708 114.3919 286.4886 180.3983 206.899 335.6932 1193.2226 314.867 472.7149 263.7565 120.0988 339.7999 181.3788 270.7757 1205.652;
	3.6574 49.4198 91.8249 115.516 14.9018 32.4899 21.8139 17.623 26.9864 28.1267 51.9919 77.5616 116.7686 51.8296 197.6139 74.4499 92.373 97.8878 58.4587 68.891 7.2713 75.8098 68.6755 85.8053 99.5641 72.5276 13.2358 1326.8697 794.1743 794.1743 745.2969 115.4289 194.8624 177.3255 162.4928 338.8477 1212.633 309.7183 473.001 266.6896 121.7875 360.4212 162.1836 267.7708 1225.2646;
	3.4315 46.3677 90.2314 113.1547 14.7201 32.225 15.3545 17.2574 26.6741 28.2626 52.243 77.9363 117.3327 64.7689 197.9508 74.5768 92.5305 98.0547 85.1881 71.0644 5.1182 75.1917 68.457 86.178 100.5436 69.8705 12.9374 1308.8345 781.1582 781.1582 751.5934 116.1516 283.9603 182.9199 203.0591 333.2942 1183.1145 316.4323 442.7252 269.3133 119.8496 357.483 174.7507 262.7976 1195.4386;
	3.5843 48.4316 92.2143 114.045 14.986 32.1801 2.4716 17.1631 1.9022 26.2068 48.443 72.2674 108.7981 43.9657 200.9625 75.7114 93.9383 99.5465 83.0523 70.7615 0.8239 75.087 68.5884 85.5356 97.8394 70.0608 13.0334 1348.7021 742.1975 742.1975 722.1384 118.0049 276.8408 182.1403 137.8385 316.6709 1193.4054 310.6759 169.0904 262.0699 119.8277 356.985 196.0115 272.1322 1205.8367;
	3.6998 49.9918 93.9852 118.0487 15.3491 31.4171 10.538 18.091 8.9415 28.6979 53.0477 79.1367 119.1398 28.0275 205.1578 77.292 95.8993 101.6247 87.1733 72.0064 3.5127 73.3065 69.5781 89.0918 103.9674 71.8871 13.1888 1255.6948 695.9064 695.9064 722.4324 117.7752 290.5776 185.3447 87.87 296.9201 1049.6528 287.0292 72.1249 278.4841 122.4228 348.52 181.8439 284.2586 1060.5866;
	3.7296 50.3954 91.8379 116.2091 15.2684 29.7285 2.3489 18.2312 0.9781 24.1399 44.6222 66.5675 100.217 25.1402 203.0285 76.4898 94.904 100.5699 88.6215 73.0092 0.783 69.3664 43.1161 87.1582 101.0663 73.3822 13.1292 1046.4352 627.5931 627.5931 594.935 113.8034 295.405 187.9259 78.8181 267.7731 833.2398 255.415 0.0 270.7133 122.8591 329.7878 164.9743 273.4132 841.9194;
	3.6746 49.6522 92.5332 115.1334 15.3432 25.8396 1.5947 17.7018 1.6766 27.3634 50.5809 75.4567 113.5996 4.8594 204.942 77.2107 95.7985 101.5178 84.9463 72.9642 0.5316 60.2923 69.4225 86.5449 102.2205 69.8197 13.3509 829.8723 685.6543 685.6543 522.7116 108.7366 283.1542 187.81 15.2348 292.5459 743.754 212.8049 0.4728 273.805 120.7633 286.6469 152.9058 264.9159 751.5014;
	3.4515 46.6378 93.4938 115.22 15.2647 18.4966 0.2612 17.7223 0.8271 23.2128 42.9086 64.0112 96.3685 4.2454 204.7668 77.1447 95.7166 101.431 37.2381 72.3096 0.0871 43.1587 69.3006 86.5947 103.1671 71.496 13.2659 666.1753 734.3906 734.3906 541.8539 112.8763 124.127 186.125 13.3099 313.34 833.2569 228.2593 0.6531 276.3405 122.673 205.1887 135.5436 267.33 841.9367;
	3.6415 49.2049 93.1263 113.0024 14.9997 18.3273 0.0 17.7294 24.2245 17.7712 32.8499 49.0055 73.7776 45.0367 196.0615 73.865 91.6474 97.1188 46.5138 71.425 0.0 42.7638 65.6151 86.8467 104.5042 71.2835 13.6563 653.1596 693.8712 693.8712 521.7163 107.9722 155.0459 183.8482 141.1961 296.0517 611.7879 242.7757 0.0 279.9219 122.354 203.3113 133.7574 266.574 618.1607;
	3.5834 48.4202 93.5619 115.2257 14.7609 18.8379 0.0 18.7884 16.2773 12.5964 23.2843 34.7355 52.2942 36.4226 204.3847 77.0007 95.538 101.2417 46.2425 72.9653 0.0 43.9552 65.7281 84.9566 104.0311 73.1814 14.1003 550.3826 694.7989 694.7989 453.7026 88.1443 154.1418 187.8128 114.1897 296.4475 683.3025 245.349 0.0 278.6547 122.6169 208.9756 149.7247 263.9994 690.4203;
	3.4931 47.1999 92.1102 114.6206 14.9553 16.6351 0.0 18.3799 1.0522 18.4204 34.0498 50.7956 76.4724 28.9001 199.5324 75.1727 93.2698 98.8382 49.6582 71.8769 0.0 38.8151 67.1129 86.6153 102.4957 72.1966 13.9613 428.1254 678.3444 678.3444 444.1559 87.0989 165.5274 185.0113 90.6058 289.4269 611.9193 247.1647 0.0 274.5421 123.2691 184.5382 145.6759 238.2176 618.2935;
	3.134 42.3476 92.191 116.8571 14.4098 9.6104 5.831 18.6255 7.6423 25.9873 48.0371 71.662 107.8867 21.5836 194.3808 73.2318 90.8617 96.2863 57.6597 71.1981 1.9437 22.4243 69.5247 86.6165 102.9559 73.1103 14.1312 487.783 562.7543 562.7543 409.5865 87.868 192.199 183.2641 67.6676 240.1085 530.0143 230.5657 20.623 275.7749 123.7773 106.6113 141.1209 239.7518 535.5353;
	3.3156 44.8015 90.6497 113.5432 14.4883 17.4936 0.3781 18.3492 0.0 22.9534 42.4291 63.2958 95.2915 32.8821 196.6561 74.0891 91.9253 97.4134 59.1767 69.67 0.126 40.8184 64.573 85.0321 101.379 72.1022 13.8232 1065.5696 492.3536 492.3536 314.2534 88.1856 197.2556 179.3309 103.0897 210.0709 878.4021 244.3668 95.3776 271.5508 121.0927 194.0625 124.1499 246.7158 887.5521;
	2.9603 40.0 89.3965 111.2236 14.3814 19.5726 9.9238 18.0986 0.7833 23.3527 43.1672 64.3969 96.9492 58.6803 189.5499 71.4118 88.6036 93.8933 69.5123 69.3455 3.3079 45.6695 67.9462 84.4438 100.4062 72.1569 13.7912 1243.7502 598.4464 598.4464 243.7799 69.6951 231.7078 178.4956 183.9705 255.3371 1025.6927 222.7219 129.9928 268.9452 120.3346 217.1259 151.1199 265.4167 1036.377;
	2.2729 30.7124 87.7181 109.7535 14.1946 31.1944 5.1776 18.3326 0.1333 20.5631 38.0106 56.7043 85.368 61.4776 183.7444 69.2246 85.8898 91.0176 44.8756 69.7362 1.7259 72.7869 50.8143 86.2943 98.9038 72.3063 13.6019 1216.1052 703.2816 703.2816 308.5029 56.9504 149.5852 179.5012 192.7405 300.0668 1169.9871 135.4293 255.5396 264.921 120.848 346.0498 150.8725 267.1321 1182.1745;
	3.629 49.0356 86.6531 68.2638 14.0421 32.1822 0.0 17.7083 0.0 5.6087 10.3677 15.4665 23.2848 63.3572 177.7376 66.9616 83.082 88.0421 16.5697 71.1382 0.0 75.0918 41.4861 85.6839 100.2678 73.2163 13.4225 1256.9045 711.6402 711.6402 381.3259 52.237 55.2322 183.11 198.6335 303.6331 1193.6248 114.759 0.0 268.5744 118.407 357.0077 172.2986 258.2278 1206.0584;
	3.6646 49.517 86.4947 111.4671 14.0273 32.1555 0.0963 18.2848 0.0 14.5861 26.9621 40.2222 60.5543 66.6017 188.9772 71.1961 88.3359 93.6096 45.9724 69.1712 0.0321 75.0295 68.059 85.4728 99.9649 71.9424 13.3874 1251.3149 644.6617 644.6617 574.7132 42.6888 153.2414 178.0469 208.8054 275.0557 1240.8897 153.1316 3.6081 267.7632 120.4396 356.7115 175.396 265.2609 1253.8156;
	3.7813 51.0943 89.1438 118.3306 14.1876 33.3007 0.8511 18.6321 26.7344 27.5401 50.9075 75.9439 114.3331 66.5826 188.8347 71.1424 88.2692 93.539 41.756 68.5188 0.2837 77.7017 72.3619 88.9387 101.6589 72.0922 13.7902 1283.7042 640.8264 640.8264 487.8199 66.1723 139.1866 176.3677 208.7453 273.4193 1208.3365 203.3862 424.3694 272.3007 121.4977 369.4159 195.4643 264.5218 1220.9233;
	3.7748 51.0054 89.2796 119.0773 14.3827 32.3699 4.1783 18.924 26.4407 28.1764 52.0836 77.6985 116.9746 64.9262 192.901 72.6743 90.17 95.5533 40.5316 70.7741 1.3928 75.5298 72.4174 87.3909 102.1506 73.5461 13.8951 1348.3338 750.4945 750.4945 580.5652 109.0413 135.1052 182.1728 203.5524 320.211 1295.5579 241.048 445.2366 273.6178 120.5613 359.0904 196.9381 265.8474 1309.0533;
	3.8766 52.3808 90.4039 120.1609 14.406 33.7857 30.1325 18.6993 27.1947 27.2001 50.2791 75.0065 112.9218 67.8045 194.4857 73.2713 90.9107 96.3382 66.6397 71.2868 10.0442 78.8333 73.2687 86.1169 103.8121 73.5187 14.0252 1345.1608 774.8904 774.8904 602.8726 114.8152 222.1325 183.4923 212.5764 330.6199 1290.9217 242.7158 454.0106 278.068 123.403 374.7958 198.9389 268.7367 1304.3688;
];
