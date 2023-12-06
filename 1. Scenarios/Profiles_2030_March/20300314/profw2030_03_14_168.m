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
	3.5903 48.5132 92.5697 120.4105 14.5108 15.6414 15.5448 18.9781 26.9335 24.7016 45.6605 68.1165 102.5491 6.5319 17.517 6.5994 8.1882 8.677 15.2165 22.3993 5.1816 36.4966 58.4059 84.6802 102.7547 73.5106 9.2666 639.5017 420.6494 420.6494 203.2651 28.6256 50.7217 57.6558 20.4783 179.4771 512.8296 41.9663 325.1724 275.2359 11.2301 173.5152 132.9453 240.8205 518.1716;
	3.5939 48.5614 92.4079 119.9346 14.6218 17.4427 14.0914 18.5701 26.0832 24.3272 44.9684 67.084 100.9946 6.7842 4.8663 1.8334 2.2747 2.4105 12.1596 11.8992 4.6971 40.6996 61.9622 87.8201 102.9588 72.455 8.3107 586.4717 377.3116 377.3116 163.3407 27.6518 40.5321 30.6285 21.2694 160.9863 482.6687 38.6763 313.0508 275.7825 13.0619 193.4974 120.5253 232.1041 487.6965;
	3.2934 44.5007 91.5538 119.7115 14.7168 14.4959 12.6498 18.8805 26.8547 23.2903 43.0518 64.2249 96.6902 9.6038 11.075 4.1724 5.1769 5.486 23.8434 19.6532 4.2166 33.8238 62.4042 87.665 103.3329 71.3216 9.4998 569.0758 339.5649 339.5649 136.2275 19.0689 79.4781 50.5874 30.1092 144.881 398.2422 27.9844 243.1478 276.7846 21.4828 160.8078 94.4977 212.3611 402.3905;
	2.9168 39.4128 91.299 118.0905 14.5917 13.9879 12.9397 18.8892 27.3616 24.4691 45.2307 67.4753 101.5837 11.9056 7.4611 2.8109 3.4876 3.6959 14.529 19.6854 4.3132 32.6384 67.488 88.1798 104.6514 74.8875 10.7372 484.4363 282.139 282.139 158.4042 18.5672 48.4299 50.6703 37.3255 120.3793 321.1951 25.7943 195.8815 280.3164 13.2604 155.1723 85.1777 209.4221 324.5409;
	2.2709 30.6849 90.0026 117.3391 14.4399 14.7922 11.3332 18.6744 17.8048 22.9189 42.3653 63.2007 95.1483 15.5752 9.4137 3.5466 4.4004 4.6631 21.9655 18.1995 3.7777 34.5152 56.1862 86.5145 105.1733 74.0069 10.2817 329.1578 209.7965 209.7965 136.7931 23.8267 73.2182 46.8456 48.8304 89.5132 172.0867 28.1533 191.4979 281.7141 13.803 164.0949 82.4065 212.2563 173.8793;
	2.8297 38.2361 88.6771 117.3434 14.1782 21.5899 11.1974 18.2224 10.243 20.4162 37.739 56.2992 84.7582 29.7867 8.6909 3.2743 4.0625 4.3051 33.9677 22.0868 3.7325 50.3763 58.579 88.0185 103.9819 73.0764 8.4359 257.8477 183.1301 183.1301 107.813 12.6141 113.2255 56.8514 93.3854 78.1355 140.4796 22.592 200.2229 278.5229 11.615 239.5035 84.7475 212.873 141.9429;
	2.4228 32.7375 88.8197 115.0908 13.7613 24.2343 11.9578 16.898 12.4538 27.0983 50.0909 74.7257 112.4991 44.361 21.3065 8.0271 9.9595 10.5541 38.7852 35.9173 3.9859 56.5466 68.6332 87.3332 105.293 71.1746 10.6655 246.1272 237.5454 237.5454 101.8616 9.3697 129.2841 92.4512 139.0778 101.3527 180.068 17.8769 162.9526 282.0349 8.8091 268.8389 91.4994 223.9479 181.9437;
	1.6975 22.9372 70.2006 116.6864 14.1877 19.4916 12.5828 17.7943 19.0328 27.9772 51.7155 77.1493 116.1479 47.1416 22.6386 8.529 10.5822 11.214 56.5886 52.9385 4.1943 45.4805 69.2431 88.1718 102.6669 71.7289 12.5564 106.7529 180.7291 180.7291 90.5775 8.2308 188.6285 136.2638 147.7952 77.1111 111.7666 16.0548 175.0781 275.0007 8.4625 216.2274 93.7178 203.3754 112.9309;
	2.6737 36.1276 85.705 110.2433 14.8112 25.8578 11.2684 17.6597 21.1609 27.4347 50.7126 75.6533 113.8956 47.6181 16.1227 6.0742 7.5364 7.9864 67.0692 52.5266 3.7561 60.335 68.459 87.8518 104.1451 70.9467 12.0534 129.6602 157.9659 157.9659 96.7489 7.7056 223.564 135.2035 149.2893 67.3988 128.5139 19.1569 137.9338 278.96 19.2527 286.8496 89.2238 229.5018 129.8526;
	1.909 25.7944 82.8235 111.0148 13.6814 14.9917 10.3555 17.7644 25.7899 28.5334 52.7436 78.6831 118.457 45.8121 0.0909 0.0343 0.0425 0.045 69.2286 44.0685 3.4518 34.9807 68.8279 85.0448 103.4765 71.1869 12.1977 245.3595 236.9101 236.9101 109.1865 10.3535 230.7621 113.4324 143.6271 101.0816 238.4815 24.4039 17.9699 277.1692 7.3414 166.3081 86.8946 214.8266 240.9657;
	1.5878 21.4545 78.2819 105.7007 12.5397 26.5023 13.3146 17.9911 26.1904 29.2923 54.1464 80.7757 121.6074 53.1396 0.0 0.0 0.0 0.0 66.1437 38.6083 4.4382 61.8387 69.2337 85.5225 99.3447 75.1647 12.5984 378.2127 290.2361 290.2361 165.2141 14.4546 220.4791 99.3779 166.5998 123.8341 340.5187 28.6469 165.5498 266.1019 34.743 293.9987 98.5014 189.6326 344.0657;
	1.5848 21.4144 84.3455 93.8838 12.052 30.3168 18.0325 17.8093 26.2154 28.5621 52.7966 78.7622 118.5761 55.3331 0.2061 0.0777 0.0964 0.1021 78.9891 51.4122 6.0108 70.7392 69.926 86.2674 101.5405 75.4282 12.5598 437.1395 355.1371 355.1371 278.0676 17.3671 263.297 132.3352 173.4768 151.5252 428.8396 41.202 177.4224 271.9834 14.9852 336.3144 102.2754 181.9058 433.3067;
	2.7157 36.6955 86.611 89.9305 13.6861 31.3587 20.2413 16.7969 26.8421 28.989 53.5857 79.9393 120.3482 60.4438 34.2477 12.9026 16.0088 16.9646 83.469 60.1193 6.7471 73.1702 69.5991 83.1938 101.839 71.6853 10.6069 526.094 441.8096 441.8096 316.883 21.5519 278.2301 154.7472 189.4996 188.5054 581.5788 50.2445 203.0874 272.783 5.3415 347.872 135.3151 193.3166 587.6369;
	3.3973 45.9046 85.5611 105.4489 14.5083 30.6638 21.079 15.7558 26.0138 28.6219 52.9071 78.927 118.8241 56.3774 36.7654 13.8512 17.1857 18.2117 85.5139 46.7324 7.0263 71.5488 64.0126 84.0029 97.2277 70.3895 10.6945 684.404 554.9803 554.9803 386.1754 25.7955 285.0463 120.2892 176.7509 236.7916 680.5058 70.3694 275.6573 260.4314 2.2077 340.1634 140.7555 221.715 687.5944;
	3.3975 45.9079 85.2459 106.5729 14.3398 31.9872 23.3684 16.9681 26.1885 25.3306 46.8232 69.8509 105.1602 59.5405 62.8331 23.672 29.3708 31.1243 77.939 47.0627 7.7895 74.6368 44.6988 86.0965 99.4925 71.3029 11.8154 863.0378 617.7604 617.7604 490.3945 33.7977 259.7968 121.1394 186.6676 263.5778 847.6624 105.4235 395.0803 266.4978 1.6931 354.8445 152.7247 225.5433 856.4922;
	3.6097 48.7755 89.5673 110.2655 14.9638 32.2562 26.694 17.8026 26.7387 21.2933 39.3604 58.718 88.3996 62.6842 100.2401 37.7649 46.8564 49.6538 86.164 60.571 8.898 75.2645 46.7241 86.994 102.9463 72.3051 12.5553 953.99 711.8603 711.8603 666.64 43.693 287.2135 155.9099 196.5235 303.7271 945.0184 151.9498 374.8225 275.7489 0.142 357.8289 167.8797 256.8909 954.8624;
	3.6796 49.7192 89.9736 113.9579 15.2909 33.636 28.8921 18.1804 26.8415 19.6098 36.2484 54.0756 81.4104 65.5917 106.793 40.2336 49.9195 52.8998 86.195 64.0612 9.6307 78.4839 30.0727 88.1039 103.0345 72.3847 12.4554 903.1735 745.2439 745.2439 708.4563 77.0488 287.3165 164.8937 205.6387 317.9707 944.9245 186.8696 412.2004 275.9853 1.5514 373.1351 205.2488 273.6567 954.7675;
	3.8377 51.8552 93.3062 115.6519 15.242 34.1821 28.7356 18.4984 26.1506 17.2044 31.802 47.4424 71.4242 64.8654 133.4364 50.2714 62.3738 66.0976 86.6088 65.0173 9.5785 79.7583 33.3534 87.8883 104.9632 72.8014 13.2689 1027.3416 750.759 750.759 719.8975 92.7485 288.6958 167.3548 203.3617 320.3239 1023.3254 219.9014 443.3391 281.1514 103.7068 379.1936 202.5983 267.8286 1033.985;
	3.9064 52.7838 93.5841 118.8545 14.8306 34.6145 31.8604 13.8693 27.2724 19.7895 36.5806 54.571 82.1563 60.4528 158.7571 59.8108 74.2097 78.6401 89.7177 63.1238 10.6201 80.7671 40.9212 85.7127 103.5642 66.2454 13.0195 1075.0275 778.3146 778.3146 735.6352 104.3277 299.0588 162.4809 189.5277 332.0809 1038.0574 238.6436 464.9541 277.404 114.9174 383.9896 210.2694 274.7311 1048.8705;
	3.9206 52.9761 93.8897 112.7741 14.9428 34.8417 32.2566 9.4619 26.7938 18.2647 33.7621 50.3664 75.8263 62.0201 185.0796 69.7277 86.514 91.679 90.2106 66.2366 10.7522 81.2974 18.9271 40.0944 48.4137 63.6773 11.8787 1118.5921 740.5331 740.5331 696.7574 106.9691 300.7019 170.4932 194.4414 315.9608 1051.7895 239.4226 467.1546 129.6796 116.9489 386.511 214.4662 251.3259 1062.7457;
	3.9079 52.8045 94.3502 119.4342 14.7667 34.4574 32.156 18.8859 18.0364 20.2636 37.457 55.8784 84.1247 63.046 190.7642 71.8693 89.1712 94.4948 89.7688 68.1183 10.7187 80.4005 19.288 76.5447 104.5867 71.8954 14.0115 1173.1481 733.3161 733.3161 687.0324 109.4215 299.2293 175.3366 197.6576 312.8815 1039.6856 248.6679 466.9627 280.1429 120.3025 382.2469 212.9953 276.8082 1050.5156;
	3.8632 52.2008 95.0056 122.878 14.9674 34.2085 31.9479 18.8331 7.7588 18.4683 34.1384 50.9278 76.6715 61.2127 191.8616 72.2827 89.6841 95.0384 92.1398 71.0315 10.6493 79.8198 23.953 89.3248 106.3732 75.4514 13.9532 1229.5188 753.9769 753.9769 701.5061 113.6118 307.1326 182.8352 191.91 321.6968 1120.909 262.7683 466.5932 284.9281 121.2352 379.4862 208.5986 256.3942 1132.5851;
	3.8369 51.8443 95.0084 119.8079 15.1087 33.4011 31.6597 18.5332 17.0013 15.3843 28.4376 42.4233 63.868 66.2554 195.9724 73.8315 91.6057 97.0747 92.2578 69.6616 10.5532 77.9359 23.9685 88.0475 95.7518 75.8529 13.9632 1174.3159 762.2095 762.2095 716.0186 117.1266 307.5259 179.3092 207.7195 325.2094 1112.9634 260.7971 467.831 256.4781 119.9948 370.5297 206.586 270.0171 1124.5568;
	3.8816 52.4494 94.887 120.2136 15.1855 33.4548 33.0664 18.5993 2.2721 10.9131 20.1727 30.0938 45.306 65.3602 202.3709 76.2421 94.5966 100.2442 92.8584 71.1708 11.0221 78.0613 25.4279 89.1424 106.4727 75.5813 13.7962 1159.6746 785.662 785.662 752.444 119.513 309.5281 183.1939 204.9132 335.2158 1115.377 277.8595 466.6311 285.1948 123.184 371.1257 212.0442 279.3857 1126.9955;
];
