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
	3.5043 47.3502 85.4741 102.5231 14.2556 31.2798 26.8224 11.7149 27.7063 28.948 53.51 79.8263 120.1781 65.1763 192.1417 72.3883 89.8151 95.1772 89.1458 67.3461 8.9408 72.9861 73.7613 82.414 92.1417 58.9576 8.4831 1124.5573 740.6095 740.6095 763.231 113.8198 297.1525 173.3491 204.3365 315.9934 1076.3521 294.928 459.1575 246.808 115.2492 346.9969 194.3773 221.9101 1087.5641;
	3.5503 47.9727 80.1415 99.2896 14.4781 30.9491 26.9047 10.832 28.0146 26.5597 49.0952 73.2404 110.2631 67.3909 196.1807 73.9099 91.7031 97.1779 89.8952 69.0632 8.9682 72.2145 71.1373 82.2425 86.8561 54.002 7.6063 1163.9339 761.0336 761.0336 803.1022 114.3666 299.6507 177.769 211.2797 324.7077 1160.9477 285.0185 461.912 232.6503 113.2394 343.3282 201.0402 204.5639 1173.041;
	3.5733 48.2833 83.4209 91.1962 14.3985 32.3406 24.5118 10.1611 28.0879 27.9364 51.64 77.0368 115.9784 67.4485 196.8452 74.1603 92.0137 97.507 91.3502 69.4863 8.1706 75.4614 70.7339 82.5921 75.603 54.872 8.4762 1203.8438 785.0882 785.0882 758.2879 114.2919 304.5007 178.8579 211.4601 334.971 1153.2316 252.6163 464.248 202.5082 113.9392 358.765 184.0359 236.3961 1165.2444;
	3.5921 48.5371 84.5302 93.1522 14.3379 32.7175 21.7773 9.3671 27.2251 27.8562 51.4917 76.8155 115.6453 66.1692 193.1405 72.7646 90.282 95.6719 86.1942 69.0653 7.2591 76.3408 70.8391 81.8458 68.4219 43.1182 7.4853 1109.6285 785.903 785.903 753.652 115.3153 287.3141 177.7743 207.4494 335.3186 1124.2135 248.548 448.0369 183.2731 108.2851 362.946 190.2547 232.5604 1135.924;
	3.6605 49.4612 83.8046 78.8086 14.8202 32.406 18.6123 8.829 24.6349 27.5156 50.8621 75.8763 114.2314 66.4995 183.7804 69.2382 85.9067 91.0354 86.2538 67.6049 6.2041 75.614 69.3937 84.578 65.9156 42.7802 7.3273 1171.9392 783.3441 783.3441 728.5728 109.7552 287.5127 174.0151 208.485 334.2268 1096.0015 233.1617 406.9773 176.5596 112.9803 359.4907 199.8776 235.4117 1107.4182;
	3.6297 49.0454 83.2219 74.4791 14.7826 31.7262 18.3458 6.5567 26.131 29.178 53.935 80.4604 121.1328 65.0157 183.8304 69.257 85.93 91.0602 88.9921 70.0415 6.1153 74.0278 71.3803 85.3078 55.2999 32.207 4.8372 1151.6744 726.0066 726.0066 634.7877 95.6515 296.6404 180.2869 203.8331 309.7628 1084.699 205.5052 368.1801 148.1248 102.053 351.9495 189.0455 188.6923 1095.9979;
	3.3346 45.0572 71.5173 60.8676 14.8083 30.7735 14.54 5.379 18.8771 28.061 51.8703 77.3802 116.4955 64.7955 182.8894 68.9025 85.4901 90.594 85.754 71.8271 4.8467 71.8049 69.0992 79.7679 47.5685 24.5621 4.4074 1115.6252 696.1867 696.1867 534.4867 61.947 285.8465 184.883 203.1426 297.0396 1058.7577 189.787 270.9528 127.4156 85.8397 341.3811 156.1406 137.3167 1069.7864;
	3.6343 49.1068 70.5077 68.5993 14.6073 29.672 16.148 5.5164 17.9409 24.2075 44.7472 66.754 100.4977 65.9227 183.1515 69.0013 85.6127 90.7239 90.1347 69.0148 5.3827 69.2346 52.1994 85.4615 57.5549 18.3836 3.5853 1127.0895 701.1555 701.1555 607.5882 60.1972 300.4489 177.6442 206.6765 299.1597 1032.7136 196.3637 250.6437 154.1649 90.27 329.1612 149.5258 146.3306 1043.4711;
	2.9798 40.264 61.9979 66.4988 13.9584 25.7878 15.0366 4.5138 19.8625 21.6541 40.0273 59.7129 89.8974 62.4097 176.7173 66.5772 82.6051 87.5367 88.1109 70.0767 5.0122 60.1716 39.7959 87.7347 60.8418 14.5799 2.7872 1106.0052 768.6525 768.6525 697.0159 78.2919 293.7029 180.3776 195.6629 327.9584 1040.1145 206.0268 222.2967 162.9692 69.4925 286.0729 145.5081 167.4383 1050.949;
	2.8012 37.8509 53.8505 64.8727 14.7145 21.4681 20.0336 2.7455 22.1565 19.0174 35.1533 52.4418 78.9509 64.1617 179.781 67.7314 84.0371 89.0543 90.6775 71.444 6.6779 50.0922 38.7974 76.5437 37.7263 6.9019 1.2761 1112.9046 817.5751 817.5751 756.4507 98.3164 302.2584 183.8971 201.1557 348.832 1149.3689 213.8077 344.7332 101.0527 58.259 238.1525 140.0932 139.6661 1161.3415;
	2.0568 27.7915 37.3863 47.2615 13.9413 15.9186 17.6529 1.5842 17.0587 14.743 27.2522 40.655 61.2059 60.7932 176.7036 66.572 82.5986 87.5299 89.6946 71.9323 5.8843 37.1435 24.5127 56.9922 23.5364 5.7464 3.3586 1092.7346 779.5887 779.5887 725.4463 97.1296 298.9819 185.1539 190.5949 332.6245 1043.0644 211.5349 353.2234 63.0438 45.6157 176.5906 92.5812 96.8719 1053.9297;
	1.4117 19.0746 26.9437 25.4117 9.2065 10.5594 19.4326 1.5817 17.3058 16.7543 30.9701 46.2014 69.5559 64.841 187.5866 70.6722 87.6859 92.9208 91.9264 72.9456 6.4775 24.6387 37.9686 41.4203 18.6913 6.5757 3.1404 954.9632 725.9256 725.9256 684.0928 98.6206 306.4215 187.762 203.2853 309.7283 992.4875 192.4302 400.1304 50.0661 33.8729 117.1393 60.3568 76.5969 1002.8259;
	1.0791 14.5804 25.0699 25.1002 8.5863 7.2813 19.1796 2.6151 14.9632 12.5367 23.174 34.571 52.0464 65.7964 190.1974 71.6558 88.9062 94.2141 91.5371 71.4079 6.3932 16.9897 28.6017 39.5368 23.0333 10.5235 2.6409 1044.0026 772.8319 772.8319 710.789 101.9785 305.1237 183.8041 206.2806 329.7416 1094.4771 204.9203 431.9701 61.6963 32.5699 80.7741 50.9955 53.7972 1105.8779;
	0.8158 11.023 19.6524 30.7736 6.9851 7.5701 14.5519 3.092 13.7624 18.0571 33.3782 49.7937 74.9642 67.0597 192.9201 72.6815 90.1789 95.5627 91.4969 72.6208 4.8506 17.6635 50.5397 38.7123 24.6714 9.9187 3.74 993.3702 754.38 754.38 704.9483 91.7759 304.9898 186.9261 210.2413 321.8688 932.8491 208.8242 418.9226 66.0841 28.849 83.9772 38.4163 57.9571 942.5663;
	0.8043 10.8676 7.5991 0.0 4.9168 5.8829 10.574 1.7684 12.0355 16.0398 29.6492 44.2308 66.5893 62.7324 188.5816 71.047 88.1509 93.4137 83.4337 71.2599 3.5247 13.7269 53.5642 44.0516 17.0624 2.136 2.8 832.2735 629.5303 629.5303 579.2857 75.871 278.1123 183.4232 196.6747 268.5996 774.941 185.1373 316.2348 45.7028 29.8536 65.2614 31.0117 23.9826 783.0133;
	0.9024 12.194 14.897 27.0057 7.0145 0.0056 5.0374 1.0885 7.8453 13.595 25.1302 37.4893 56.4399 56.6385 187.4089 70.6052 87.6028 92.8328 82.5654 69.5758 1.6791 0.013 49.3711 41.7848 17.334 0.9135 1.8197 849.6669 531.1333 531.1333 521.0779 68.0532 275.2179 179.0882 177.5694 226.6169 632.5812 178.7075 210.6604 46.4303 30.6035 0.0616 1.9166 15.9103 639.1706;
	0.549 7.4177 1.4675 2.7761 6.9452 1.4121 3.4276 0.2152 11.5955 17.9899 33.2541 49.6085 74.6854 57.5071 181.6435 68.4331 84.9078 89.9769 82.7856 65.5257 1.1425 3.295 48.9748 40.4247 13.874 3.3304 1.4991 743.7429 523.6485 523.6485 540.5099 71.271 275.9519 168.6634 180.2925 223.4234 704.7053 180.8054 230.184 37.1624 36.9125 15.6653 21.7144 10.4499 712.046;
	1.1376 15.3711 0.0 7.3541 3.0256 2.3928 4.1798 0.5541 8.6916 20.3306 37.5808 56.0632 84.4028 59.8448 138.3444 52.1205 64.668 68.5288 84.9231 48.3832 1.3933 5.5832 57.243 35.2515 13.7383 3.0094 1.5799 740.8471 543.1317 543.1317 586.0186 79.2602 283.0771 124.5384 187.6215 231.7362 714.5343 192.7565 354.9713 36.7991 80.625 26.544 34.4036 4.6694 721.9773;
	0.5325 7.1956 17.482 39.5242 2.3876 0.1662 0.0 2.1279 3.6329 22.4657 41.5275 61.9508 93.2666 46.5838 117.7455 44.36 55.0392 58.3251 2.605 52.3766 0.0 0.3877 56.726 47.3779 21.6184 8.2457 2.129 752.6916 488.3608 488.3608 549.8244 76.1992 8.6834 134.8176 146.0465 208.3673 654.032 184.939 335.985 57.9063 93.3546 1.8432 12.4674 6.2966 660.8449;
	0.4189 5.6608 27.6348 55.0031 2.4848 2.3827 0.0 3.4943 1.3856 25.1499 46.4892 69.3527 104.4101 44.8289 98.6129 37.1518 46.0958 48.8478 0.4538 56.6384 0.0 5.5597 64.4859 65.2083 34.6477 21.1433 2.8838 628.8744 355.5078 355.5078 544.087 68.231 1.5126 145.7875 140.5447 151.6833 563.3435 187.1769 0.0 92.8064 95.6222 26.4322 6.5884 22.6343 569.2116;
	0.7018 9.4824 38.6355 70.6424 5.6867 0.5103 0.0 4.906 0.0408 25.0796 46.3594 69.159 104.1185 44.3609 110.3247 41.5642 51.5704 54.6492 72.5097 53.3131 0.0 1.1908 59.4052 78.4795 33.1809 14.0944 2.6216 514.8394 329.0168 329.0168 454.403 51.7277 241.6991 137.2282 139.0773 140.3805 580.2692 170.9479 0.0 88.8774 98.2913 5.6613 0.1817 44.2834 586.3137;
	0.6324 8.5454 43.237 69.5587 0.006 0.3958 0.0 3.5403 0.0 21.9782 40.6265 60.6067 91.243 26.3066 119.1656 44.895 55.703 59.0285 74.4528 63.573 0.0 0.9236 58.366 70.262 39.2901 15.8682 1.8488 419.9014 317.2657 317.2657 413.7679 47.3799 248.1759 163.637 82.4748 135.3667 619.6967 139.0864 0.0 105.2413 77.765 4.3912 0.2647 43.1238 626.1519;
	0.8149 11.0118 38.2257 60.6931 6.9684 7.3691 0.0 3.4625 0.0 16.0662 29.6981 44.3037 66.6989 10.918 136.5419 51.4414 63.8254 67.6359 81.5555 67.1535 0.0 17.1946 40.0784 61.8446 29.593 28.2976 1.8385 407.1186 375.5091 375.5091 482.9656 52.0713 271.8516 172.8533 34.2295 160.2172 515.5658 127.0431 0.0 79.267 62.213 81.7481 2.5484 75.3494 520.9363;
	1.6196 21.884 43.6723 60.7422 0.4833 3.2595 0.3014 5.7033 0.0 19.3101 35.6944 53.249 80.166 0.7198 134.6377 50.724 62.9353 66.6926 76.9746 64.8573 0.1005 7.6054 60.4142 65.3295 36.2086 37.9502 3.0257 303.4888 286.5969 286.5969 364.5968 50.4997 256.5818 166.9428 2.2568 122.2814 375.1082 106.1713 6.0964 96.9873 54.6806 36.1584 7.6785 63.5295 379.0156;
];