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
	3.5085 47.4073 88.8227 113.0013 14.624 15.3413 15.154 16.7403 27.0669 24.999 46.2102 68.9365 103.7835 6.1476 27.5548 10.3811 12.8803 13.6492 12.3909 31.4071 5.0513 35.7963 58.6686 82.4842 97.9572 67.6426 6.9129 633.8375 406.6521 406.6521 219.8854 38.4174 41.3029 80.8419 19.2735 173.5049 505.1741 57.6969 304.7899 262.3853 17.0658 170.1859 121.1971 231.516 510.4363;
	3.4807 47.0325 87.8797 110.8151 14.2229 16.9853 14.3356 15.4568 26.84 23.5457 43.5239 64.929 97.7503 6.4587 18.5919 7.0044 8.6906 9.2095 10.2929 17.5526 4.7785 39.6323 58.5008 81.5283 94.228 69.3337 5.6229 631.2595 381.3273 381.3273 184.0135 38.3324 34.3096 45.1804 20.249 162.6997 499.7896 57.6849 312.1109 252.3964 14.1426 188.4232 113.6959 217.9083 504.9957;
	3.2189 43.4948 86.5712 108.3642 14.0755 13.6065 12.6956 15.2179 26.7218 23.6987 43.8068 65.3511 98.3857 8.2941 21.217 7.9934 9.9177 10.5098 19.1068 23.7057 4.2319 31.7484 62.0062 81.1354 90.3015 69.3983 6.8158 579.2863 339.9543 339.9543 155.8919 36.3101 63.6892 61.0185 26.0032 145.0472 403.2012 41.361 244.1672 241.8789 6.234 150.941 86.3834 195.292 407.4012;
	2.7548 37.223 86.5825 104.3239 13.7076 12.2844 11.1214 16.9617 25.8115 22.8167 42.1764 62.9189 94.724 11.053 15.1405 5.7041 7.0773 7.4998 10.3205 24.3406 3.7071 28.6636 64.8373 84.955 97.6806 73.0624 9.1961 448.1297 262.5416 262.5416 159.5004 32.7757 34.4015 62.6527 34.6526 112.0177 308.7581 34.3768 177.8666 261.6444 38.5291 136.275 66.7582 200.4883 311.9743;
	2.0101 27.1607 86.4481 103.3648 12.2843 12.9138 9.3618 17.3945 14.912 20.4331 37.7703 56.3458 84.8283 15.1251 16.4439 6.1951 7.6865 8.1454 18.1177 25.8571 3.1206 30.1322 48.9705 82.5593 96.4222 72.95 9.1972 370.0603 205.9569 205.9569 153.1588 34.5734 60.3925 66.5562 47.4192 87.8749 207.1665 38.7414 158.3613 258.2739 14.3942 143.2572 66.7042 207.1551 209.3245;
	2.9347 39.6539 89.6339 113.2643 13.4693 21.6038 11.5603 18.0739 10.5087 18.9344 35.0 52.2131 78.6066 28.2247 19.4195 7.3162 9.0775 9.6194 26.6856 25.7477 3.8534 50.4088 51.6713 86.4399 99.4863 73.6536 8.2762 282.2959 195.8679 195.8679 140.2593 26.7544 88.9521 66.2747 88.4881 83.5703 171.009 36.7104 195.1698 266.4812 15.1437 239.6579 84.6872 217.0181 172.7903;
	2.5592 34.5799 93.1353 118.2326 14.1215 23.5196 12.6889 17.8719 13.176 25.9873 48.0371 71.6619 107.8866 39.4185 27.0533 10.1922 12.6458 13.4008 35.9902 33.3579 4.2296 54.8792 64.2557 89.2712 103.5377 75.4619 11.2789 260.7261 228.1613 228.1613 119.8966 17.716 119.9672 85.8633 123.5822 97.3488 201.7618 28.1038 167.6495 277.3333 14.5079 260.9112 93.3677 241.8233 203.8635;
	1.7025 23.0041 73.6997 118.6063 14.4382 19.34 12.8476 18.2804 19.9202 27.8542 51.4881 76.8102 115.6373 42.9493 25.3214 9.5397 11.8363 12.5429 48.8251 46.156 4.2825 45.1267 71.2106 88.406 103.8346 75.9849 12.2771 140.4013 175.0502 175.0502 105.2002 10.6594 162.7502 118.8056 134.652 74.6881 131.1161 32.5989 174.433 278.1284 12.3121 214.5454 94.8315 224.1333 132.4819;
	2.7498 37.1562 89.0065 111.7388 15.1596 23.8857 11.8691 18.8873 22.4608 28.2721 52.2606 77.9625 117.3722 42.9743 21.1715 7.9762 9.8964 10.4873 60.1827 50.7119 3.9564 55.7334 71.8635 89.8769 105.2379 76.5304 12.3569 136.3354 143.0717 143.0717 84.9867 6.1029 200.6089 130.5326 134.7302 61.0439 139.1791 20.4553 136.3393 281.8872 24.3186 264.9725 84.8946 256.8829 140.6289;
	1.8665 25.2211 87.2723 111.5318 13.4697 14.7061 10.1419 18.257 26.3651 28.3891 52.4769 78.2852 117.858 43.7469 0.0 0.0 0.0 0.0 64.5524 39.2016 3.3806 34.3141 69.6691 88.8365 104.6677 75.5256 12.051 245.2219 227.4572 227.4572 94.8956 8.7125 215.1746 100.9051 137.1525 97.0484 226.7909 19.5033 2.9997 280.3598 10.9203 163.1391 78.7028 232.6351 229.1533;
	1.4701 19.8646 79.0587 101.3704 12.2658 25.452 13.5616 16.0934 26.1385 24.7411 45.7336 68.2255 102.7131 47.7884 0.0 0.0 0.0 0.0 59.4522 20.696 4.5205 59.388 63.9008 88.1624 96.9398 70.6984 10.7743 346.9765 279.9371 279.9371 154.6655 12.4689 198.174 53.2716 149.8231 119.4398 310.3244 26.1035 140.6094 259.6603 7.9595 282.3476 89.515 178.4953 313.557;
	1.6368 22.1173 85.1313 87.2945 11.6683 28.6025 19.0575 16.2276 26.5158 26.3634 48.7323 72.699 109.448 49.7687 0.0 0.0 0.0 0.0 69.0914 37.37 6.3525 66.7392 66.4311 84.9992 97.733 70.047 11.6711 474.9462 341.3621 341.3621 264.0212 17.3193 230.3048 96.1904 156.0318 145.6478 420.9611 42.5065 180.4267 261.7849 0.2859 317.2971 100.8882 177.0904 425.3461;
	2.7606 37.3023 88.4686 87.7776 13.9802 28.5972 20.2204 16.5405 26.5598 28.1115 51.9637 77.5196 116.7053 54.2284 19.6158 7.3901 9.1692 9.7166 77.2624 41.8909 6.7401 66.7268 68.5597 85.2361 100.9606 70.3452 10.7176 581.7211 411.5833 411.5833 291.0428 24.5444 257.5414 107.8273 170.0133 175.6089 555.3265 57.4461 184.2601 270.4302 5.6191 317.2384 122.1514 212.0074 561.1111;
	3.5675 48.2054 88.5765 102.624 14.6686 30.123 21.5897 16.6294 26.9067 29.206 53.9868 80.5377 121.2491 56.8293 48.3462 18.2141 22.599 23.9482 85.131 41.9465 7.1966 70.287 67.1413 85.9139 100.6733 70.6464 10.5894 782.3715 584.6556 584.6556 398.35 31.3705 283.77 107.9704 178.1674 249.4531 732.7758 85.6385 274.6424 269.6607 7.783 334.1646 126.4254 249.5047 740.4089;
	3.6365 49.1369 90.5455 106.4998 14.5787 32.5836 26.8482 16.7334 27.3554 25.7839 47.6612 71.1011 107.0423 63.4732 86.0383 32.4144 40.2179 42.619 85.0821 43.1464 8.9494 76.0284 46.7791 83.954 96.8297 71.7383 11.4049 924.0955 645.6373 645.6373 507.332 37.1766 283.6069 111.059 198.9969 275.4719 905.4556 120.7137 419.3364 259.3654 2.979 361.4608 153.3035 253.0091 914.8874;
	3.613 48.8201 93.8102 112.0909 14.8091 32.7331 28.0535 16.2 25.8157 19.6579 36.3373 54.2082 81.6101 64.4477 109.4446 41.2326 51.159 54.2133 85.4229 54.3697 9.3512 76.3772 25.5773 85.8366 99.9476 71.4799 11.9257 969.5036 670.6716 670.6716 656.1949 42.6266 284.7429 139.9478 202.0523 286.1532 916.6683 162.416 361.1302 267.7167 0.2377 363.119 165.7765 260.2977 926.2169;
	3.5574 48.0677 90.6612 111.7385 14.2464 32.2262 29.9908 17.4882 26.0888 17.641 32.6091 48.6463 73.2367 66.4068 142.1448 53.5522 66.4444 70.4112 84.5086 66.7617 9.9969 75.1944 0.9963 84.0991 100.1356 75.1547 11.6858 941.8974 717.4112 717.4112 709.8157 76.7665 281.6953 171.8448 208.1942 306.0955 923.6523 219.5234 382.4191 268.2202 0.0 357.4958 193.7048 280.0878 933.2736;
	3.5424 47.8657 92.6462 113.2856 14.0722 31.8613 28.6892 17.9262 25.8778 17.222 31.8346 47.491 71.4974 67.5834 177.525 66.8815 82.9826 87.9368 84.0928 68.7013 9.5631 74.3431 27.5641 84.1716 103.177 74.5742 12.5075 1027.0164 750.0151 750.0151 729.72 98.4608 280.3093 176.8373 211.8831 320.0064 999.3483 255.3498 415.465 276.367 96.2888 353.4484 177.351 262.258 1009.7581;
	3.5862 48.457 87.5128 111.3755 13.9953 32.7351 30.4512 12.485 25.9683 19.7046 36.4237 54.337 81.8041 65.8436 186.2403 70.1649 87.0565 92.2539 87.4442 69.2161 10.1504 76.3819 47.0797 80.9869 101.8395 66.1578 11.4576 1139.5024 756.7155 756.7155 677.9751 113.0636 291.4807 178.1625 206.4287 322.8653 1028.5663 270.3352 427.3041 272.7843 108.6282 363.1412 191.1248 271.4598 1039.2805;
	3.4291 46.3353 88.7448 103.6576 14.3446 30.196 30.3775 4.1938 25.7932 16.9012 31.2417 46.6065 70.1658 63.0758 189.5963 71.4293 88.6253 93.9163 83.996 68.4912 10.1258 70.4574 46.2444 9.0868 42.6955 63.1435 8.1457 1104.343 726.5019 726.5019 656.8533 109.9767 279.9868 176.2966 197.7512 309.9741 993.0047 258.9457 428.5299 114.363 112.2514 334.9748 191.459 226.5921 1003.3485;
	3.7207 50.2746 92.9556 117.5093 14.7016 33.4728 31.0902 18.4777 16.9955 21.3919 39.5426 58.9898 88.8089 65.7044 193.4291 72.8733 90.4168 95.8149 84.6218 70.5877 10.3634 78.1032 44.5305 78.5073 105.1044 72.3039 13.5302 1187.7185 774.4042 774.4042 737.4859 115.3242 282.0725 181.6929 205.9922 330.4125 1063.0781 270.5847 453.7219 281.5295 115.8944 371.3251 199.916 267.6331 1074.1518;
	3.8022 51.3756 91.9565 120.3387 14.6654 34.2073 31.7109 17.7386 9.2985 21.9493 40.5729 60.5267 91.1226 66.6342 191.7895 72.2556 89.6505 95.0027 84.5037 72.051 10.5703 79.817 45.8001 87.1171 104.94 74.3767 13.5193 1204.4252 779.8716 779.8716 770.344 115.3622 281.679 185.4593 208.9071 332.7452 1109.6762 274.7261 470.6002 281.0892 117.3291 379.4726 206.74 247.142 1121.2353;
	3.7124 50.1625 93.2259 116.5498 14.663 33.1063 32.2706 17.8897 19.0688 20.5362 37.9609 56.6302 85.2565 66.1686 190.6335 71.8201 89.1101 94.4301 80.0364 69.1959 10.7569 77.2479 51.8653 83.7165 95.03 75.5028 13.6731 1226.9474 775.0012 775.0012 744.6804 116.4975 266.788 178.1105 207.4474 330.6672 1136.1866 263.3487 463.4157 254.5446 115.2989 367.2587 202.2716 257.7536 1148.0219;
	3.6778 49.6948 93.0909 115.7996 14.7456 33.0262 33.6274 18.255 10.2661 19.3758 35.8159 53.4303 80.439 64.1245 192.4052 72.4875 89.9382 95.3077 84.1286 70.3692 11.2091 77.0612 52.6077 86.1375 105.5472 74.1821 13.6858 1203.3212 782.5694 782.5694 791.5022 114.3985 280.4286 181.1305 201.039 333.8963 1094.7117 278.283 457.9202 282.7156 117.8725 366.371 205.1119 263.7035 1106.115;
];
