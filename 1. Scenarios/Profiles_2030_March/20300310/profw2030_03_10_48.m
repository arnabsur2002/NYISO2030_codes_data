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
	3.6776 49.6927 84.1491 118.2222 15.0502 35.2624 31.0923 7.0954 27.8704 11.5385 21.3287 31.8183 47.9022 42.8337 187.5364 70.6532 87.6624 92.8959 85.2016 71.4445 10.3641 82.2789 31.6487 37.4617 43.5705 25.4177 4.9183 1285.2597 829.7771 829.7771 669.2829 81.48 284.0053 183.8982 134.2893 354.0382 1305.0749 214.4745 454.9386 116.7067 117.4574 391.1773 204.0395 113.4133 1318.6695;
	3.1707 42.8435 78.2978 46.2835 15.3057 30.024 31.1251 6.8794 10.7848 12.6569 23.3961 34.9024 52.5454 39.7259 193.448 72.8804 90.4257 95.8242 89.0253 71.1148 10.375 70.0561 27.6158 36.6148 37.5059 23.8336 4.7553 1277.8266 843.2814 843.2814 723.1841 72.419 296.7512 183.0498 124.5459 359.8001 1323.5381 189.7296 452.3318 100.4623 116.8948 333.0666 213.6984 99.5155 1337.3249;
	2.9856 40.3415 85.0007 46.581 15.0821 23.7576 31.6841 5.4448 9.4352 12.3189 22.7713 33.9704 51.1422 39.405 187.686 70.7096 87.7323 92.97 85.1733 65.2561 10.5614 55.4345 25.9352 34.9026 28.535 8.9657 4.5779 1252.8442 847.657 847.657 742.6216 85.7119 283.9111 167.9695 123.5401 361.667 1293.1747 203.1039 444.6761 76.433 33.2976 263.5515 208.2046 126.6252 1306.6453;
	3.5407 47.842 85.7522 52.2821 15.1374 15.7762 31.9737 7.099 12.0723 14.1145 26.0904 38.9217 58.5964 27.9291 192.5533 72.5433 90.0075 95.381 78.991 66.7981 10.6579 36.8112 29.3122 36.2949 31.402 28.7694 4.8395 1246.2855 850.1791 850.1791 725.5423 81.3737 263.3033 171.9384 87.5615 362.7431 1299.7164 221.4627 464.4324 84.1125 39.9803 175.011 216.1565 113.5991 1313.2551;
	3.7262 50.3491 79.9852 38.2206 14.9868 23.6232 31.5542 6.3984 11.1094 11.0471 20.4205 30.4633 45.8623 27.6249 167.91 63.2591 78.4882 83.174 82.8842 65.3209 10.5181 55.1207 0.2747 22.6689 30.1287 56.0292 4.993 1196.9694 827.822 827.822 727.2522 94.4991 276.2806 168.1362 86.6078 353.2041 1253.6102 234.9674 450.3336 80.7019 42.0697 262.0598 211.582 185.6931 1266.6686;
	3.8267 51.7077 92.4819 111.9172 15.2711 34.9122 30.1346 6.7978 10.5711 12.479 23.0673 34.4118 51.8068 18.8386 191.0587 71.9802 89.3088 94.6407 87.8394 67.2731 10.0449 81.4617 5.7801 24.602 50.9262 63.0698 5.0555 1130.525 780.1988 780.1988 734.7114 109.0323 292.798 173.1612 59.0616 332.8848 1184.6933 241.0466 442.8553 136.4094 76.5912 387.2922 211.4638 248.4892 1197.0339;
	3.9014 52.7162 91.1073 117.3203 15.2536 35.404 30.8966 11.0764 10.4606 11.732 21.6865 32.352 48.7058 34.4622 201.0778 75.7549 93.9922 99.6036 84.4281 71.8753 10.2989 82.6094 23.5556 46.3286 98.3097 73.4165 10.9772 1054.2376 785.8158 785.8158 713.2601 108.5224 281.4271 185.0072 108.0437 335.2814 1210.7942 269.7679 447.2994 263.3295 116.0006 392.7489 213.4394 272.1848 1223.4067;
	3.8634 52.2029 88.1745 115.8096 14.95 35.1706 30.3428 18.3983 10.4467 11.7589 21.7361 32.426 48.8171 56.5724 196.1056 73.8817 91.668 97.1407 79.825 58.947 10.1143 82.0648 22.4118 52.8558 101.8921 73.6453 13.6708 1004.5386 779.3595 779.3595 753.7364 114.0803 266.0834 151.7297 177.3622 332.5267 1151.5105 294.5049 452.917 272.9253 122.2482 390.1595 211.2354 274.3258 1163.5054;
	3.8222 51.6467 87.9665 111.3922 14.8869 34.1289 30.1309 17.5579 9.0512 11.4832 21.2264 31.6657 47.6725 63.0298 203.162 76.5401 94.9664 100.6361 48.1589 70.5693 10.0436 79.6341 23.1041 85.878 99.5458 70.0214 13.3583 721.6189 802.1512 802.1512 739.4239 113.0901 160.5297 181.6455 197.607 342.2512 1142.5341 281.6151 454.6399 266.6405 123.2592 378.6034 209.9464 271.679 1154.4355;
	3.8244 51.6766 88.5651 113.1732 14.6715 34.5228 30.0134 17.5719 19.0042 10.7312 19.8365 29.5922 44.5509 58.9292 195.9445 73.821 91.5927 97.0609 50.7461 60.5953 10.0045 80.5533 22.1473 87.2705 97.7261 68.6086 13.4264 558.1459 817.3904 817.3904 740.458 111.8486 169.1538 155.9726 184.7511 348.7532 1057.6564 257.3671 458.4345 261.7664 119.9324 382.9733 212.3329 274.9558 1068.6737;
	3.6783 49.7013 86.4056 99.8418 14.6202 33.5523 29.9954 16.5846 26.1741 15.1713 28.0438 41.8359 62.9837 66.2385 198.7666 74.8841 92.9118 98.4588 28.6728 68.9904 9.9985 78.2886 24.9616 81.9254 95.9983 65.7426 12.9249 416.1561 751.1082 751.1082 686.3903 91.1204 95.5761 177.5815 207.6668 320.4728 869.1845 240.4373 442.5314 257.1384 120.0123 372.2065 202.4034 248.0709 878.2385;
	3.3994 45.9334 87.0547 111.178 14.9547 32.8704 28.0835 17.5024 26.8867 18.8702 34.8814 52.0361 78.3401 66.4155 194.1483 73.1442 90.753 96.1711 34.8317 68.152 9.3612 76.6975 33.049 84.4593 97.0885 70.1799 12.8738 335.3925 768.95 768.95 678.1831 98.4762 116.1056 175.4235 208.2216 328.0853 764.1027 233.6138 442.5222 260.0585 123.0289 364.6418 193.4945 250.5365 772.0621;
	2.1416 28.9378 88.1701 111.0025 14.5233 22.0821 25.3833 18.4506 27.9838 27.9916 51.742 77.1889 116.2074 67.5712 195.0978 73.502 91.1969 96.6415 89.3093 68.6823 8.4611 51.525 63.4372 83.6051 99.6673 70.8261 13.7509 322.21 711.7416 711.7416 634.3088 96.5693 297.6976 176.7883 211.8447 303.6764 687.1818 217.8567 435.4575 266.9659 121.1273 244.9644 172.6969 259.1999 694.34;
	2.1289 28.7662 86.2706 101.9274 14.0942 12.2943 25.3527 17.4292 27.0989 30.0896 55.6202 82.9744 124.9174 64.7036 196.3787 73.9846 91.7956 97.276 88.6451 71.8726 8.4509 28.6867 74.4302 82.0597 96.5371 69.9546 13.2417 329.5338 621.5857 621.5857 576.5816 90.9859 295.4836 185.0003 202.8546 265.2099 512.9723 199.2716 451.1898 258.5815 121.541 136.3849 126.9985 224.8545 518.3157;
	2.0105 27.1659 85.1339 101.6324 12.1425 2.3102 21.3843 17.4756 27.423 28.5915 52.8509 78.8431 118.6979 64.5483 201.2129 75.8058 94.0553 99.6706 86.8909 72.2833 7.1281 5.3905 72.8683 82.7909 95.6991 66.9556 13.3704 508.2753 511.273 511.273 435.2697 83.0292 289.6362 186.0575 202.3677 218.1432 456.2527 187.9766 445.9293 256.337 118.9687 25.6278 107.6246 214.7829 461.0054;
	3.3458 45.2094 89.2772 80.0426 14.1312 27.9234 16.2788 18.5129 23.5138 28.6908 53.0346 79.1172 119.1105 58.562 199.0503 74.9911 93.0445 98.5993 86.7804 72.061 5.4263 65.1545 72.5009 86.9064 101.2414 71.7402 13.7454 540.5711 553.5748 553.5748 440.7693 44.9033 289.2682 185.4852 183.5996 236.1919 517.1803 172.6167 453.5334 271.1823 119.038 309.763 82.9687 255.9283 522.5676;
	3.1172 42.1204 88.6726 56.3157 14.3176 32.5077 13.5422 18.3105 27.2622 27.8497 51.4798 76.7977 115.6185 63.4133 197.7561 74.5035 92.4395 97.9582 85.1283 72.0749 4.5141 75.8513 72.9719 85.8333 101.8075 73.3483 13.712 622.8965 612.7444 612.7444 459.9955 31.0933 283.761 185.521 198.8092 261.4376 606.5509 129.8145 180.9824 272.6987 118.2719 360.6186 108.6001 254.7028 612.8692;
	3.578 48.3463 86.873 58.1654 14.4676 33.157 28.0874 18.5959 27.1976 13.5917 25.124 37.48 56.426 63.7587 191.4867 72.1415 89.5089 94.8527 73.8294 70.9537 9.3625 77.3664 48.0246 86.6091 102.2294 73.9688 13.517 691.8862 627.2379 627.2379 411.706 23.4063 246.098 182.6351 199.8922 267.6215 769.1157 85.5696 428.9913 273.8287 121.7933 367.8218 118.1641 255.7753 777.1273;
	3.5677 48.2068 86.0075 50.4169 13.9983 32.3015 27.4929 18.7488 26.2622 22.9708 42.4612 63.3438 95.3637 66.2929 175.6222 66.1646 82.0932 86.9942 53.0791 69.8413 9.1643 75.3702 55.0097 84.3333 102.3213 74.918 13.5575 943.8256 660.2666 660.2666 445.8524 38.8384 176.9303 179.7716 207.8372 281.7138 921.058 83.4157 458.9853 274.075 117.6271 358.3314 138.4005 231.8843 930.6523;
	3.5982 48.6199 51.8038 36.8828 14.329 32.5028 0.3969 18.5511 26.6678 26.9465 49.8102 74.3071 111.8689 66.9125 200.2796 75.4542 93.6191 99.2083 50.5415 72.792 0.1323 75.8398 65.1447 75.9628 102.3872 72.3287 13.2317 1125.9607 590.2102 590.2102 549.699 55.4839 168.4717 187.3668 209.7799 251.823 1065.8544 127.2922 445.3711 274.2514 118.3676 360.5643 152.5638 216.7669 1076.957;
	3.7993 51.3374 53.4627 60.0356 14.3917 33.003 28.9187 18.4233 4.0455 26.9868 49.8847 74.4182 112.0361 65.342 203.9309 76.8298 95.3258 101.0169 66.4624 73.3473 9.6396 77.007 65.753 85.3772 101.3499 73.4141 13.4088 1212.7964 712.7263 712.7263 450.2138 71.9172 221.5415 188.7961 204.856 304.0966 1109.0825 188.6095 421.506 271.4729 117.0557 366.1132 146.5774 250.0766 1120.6354;
	3.8852 52.497 42.0647 84.5345 14.2551 34.7203 5.8763 18.4317 27.5042 29.4472 54.4327 81.2029 122.2505 64.7335 205.6848 77.4906 96.1457 101.8857 69.8525 73.5888 1.9588 81.0139 67.4676 84.2318 102.4662 73.6314 13.587 1243.3659 742.909 742.909 590.5271 87.9714 232.8418 189.4177 202.9482 316.9745 1205.9851 227.6196 460.3077 274.4629 121.3394 385.1633 157.1545 245.5287 1218.5475;
	3.8477 51.9911 59.8523 95.5997 14.2295 34.0703 30.6727 18.4738 27.6118 29.3569 54.2658 80.9539 121.8756 64.8614 201.992 76.0993 94.4195 100.0565 59.2462 71.5675 10.2242 79.4973 66.8627 87.2783 104.9052 73.8795 13.4276 1218.7705 752.7041 752.7041 615.4377 104.3652 197.4875 184.2148 203.3493 321.1538 1167.9213 253.3902 461.1837 280.9961 120.9188 377.9529 158.2084 258.3886 1180.0871;
	3.909 52.8195 91.5072 108.5357 14.7952 34.9078 31.3151 18.9409 27.9216 30.1561 55.743 83.1576 125.1933 67.4956 205.7072 77.499 96.1562 101.8968 52.0407 73.887 10.4384 81.4516 69.1086 89.0679 105.6612 73.7346 13.567 1250.2033 751.9319 751.9319 639.9448 105.8468 173.469 190.1853 211.6077 320.8243 1260.7373 230.5241 478.0964 283.0211 123.3871 387.2442 178.391 275.7304 1273.87;
];