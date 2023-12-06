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
	3.6351 49.1186 84.1297 103.6248 14.0416 12.7037 14.4687 15.9216 25.7846 19.5382 36.1161 53.8781 81.1132 2.4548 15.8654 5.9772 7.4162 7.8589 16.756 16.629 4.8229 29.6421 39.0043 82.4211 93.6753 67.469 3.7114 614.1218 382.3552 382.3552 199.3018 35.388 55.8534 42.8032 7.6962 163.1382 499.4605 48.8701 276.1509 250.916 15.3488 140.9268 115.664 224.4055 504.6632;
	3.6628 49.4922 87.217 102.2957 14.286 15.3697 13.8965 16.0552 25.6285 21.56 39.8533 59.4532 89.5065 1.0656 2.0782 0.7829 0.9714 1.0294 13.3665 5.822 4.6322 35.8626 41.3244 83.3562 88.5517 70.1063 5.7081 692.267 379.4973 379.4973 164.3009 28.5983 44.5548 14.9858 3.3409 161.9189 509.2725 45.6725 281.3202 237.1921 12.2825 170.5009 115.2321 223.2967 514.5774;
	3.3225 44.8944 87.7024 102.6428 14.232 12.3092 12.5098 17.6851 25.9351 21.1474 39.0907 58.3157 87.7939 3.5286 4.0725 1.5343 1.9037 2.0173 19.1971 9.792 4.1699 28.7214 42.8869 83.6211 94.2918 72.0559 7.9383 606.7304 332.8983 332.8983 127.5186 28.1448 63.9903 25.2047 11.0626 142.0366 413.4404 28.6892 226.7104 252.5674 5.5 136.5498 87.3152 218.6129 417.7471;
	2.8688 38.7642 86.8974 102.8323 14.2104 11.5678 11.455 16.4355 25.2979 21.6483 40.0165 59.6968 89.8732 5.9348 1.7084 0.6436 0.7986 0.8462 12.7605 16.1513 3.8183 26.9916 47.66 81.9645 94.9736 73.9206 7.1361 475.2291 260.766 260.766 142.9927 24.8985 42.5352 41.5736 18.6063 111.2601 309.8231 23.2724 169.742 254.3935 0.0 128.3259 68.0375 210.3789 313.0504;
	2.3575 31.8549 90.8326 113.1013 14.2934 14.5127 10.7223 18.0839 17.044 22.9473 42.4177 63.2789 95.266 13.5011 6.1427 2.3142 2.8714 3.0428 21.3272 15.1256 3.5741 33.8631 51.5579 85.0673 100.9097 75.4396 9.7891 345.8442 217.8658 217.8658 134.5292 25.8392 71.0906 38.9333 42.3276 92.9561 190.84 25.0063 177.0732 270.2937 7.5203 160.9946 81.6309 230.9127 192.828;
	2.8437 38.4252 87.7677 114.5732 14.0507 21.5853 11.3895 17.4441 10.8033 20.391 37.6924 56.2297 84.6535 28.6883 6.4439 2.4277 3.0122 3.192 31.58 16.1877 3.7965 50.3657 55.4915 82.6314 99.6086 73.8946 7.8447 267.7954 190.2272 190.2272 115.3685 22.8161 105.2667 41.6671 89.9416 81.1636 140.7909 24.5587 197.7234 266.8086 5.0464 239.453 84.9598 224.3728 142.2575;
	1.9426 26.2482 86.2167 110.8191 13.3883 20.1526 11.3104 16.759 11.1795 24.9117 46.0489 68.6959 103.4214 37.0367 1.1424 0.4304 0.534 0.5659 34.5812 22.1703 3.7701 47.0227 54.316 84.1464 100.9943 72.1067 10.9587 232.8418 212.9102 212.9102 84.5181 15.8573 115.2706 57.0663 116.115 90.8417 158.6931 16.2567 146.1302 270.5203 6.4706 223.5595 78.6073 228.9727 160.3462;
	1.48 19.9986 67.6536 107.8634 14.1932 17.8127 11.7094 17.4508 19.4032 28.0411 51.8335 77.3254 116.4129 42.7352 14.2955 5.3857 6.6823 7.0812 51.5716 50.9626 3.9031 41.5629 72.8685 82.4874 100.5651 71.2475 12.6633 111.4368 186.5404 186.5404 84.8784 9.4678 171.9053 131.1779 133.9808 79.5906 110.7916 16.59 170.1773 269.3709 3.4359 197.6019 79.0313 202.5959 111.9457;
	2.6164 35.3537 80.3771 95.7493 14.0517 22.3127 11.3539 17.9056 21.1043 27.9497 51.6646 77.0733 116.0335 46.3259 7.2034 2.7138 3.3672 3.5682 62.5929 51.4545 3.7846 52.0629 70.659 82.9884 102.3365 71.2533 12.7993 122.7946 153.8021 153.8021 69.75 6.1362 208.6429 132.444 145.238 65.6222 122.2485 17.6376 144.0056 274.1157 9.974 247.5221 73.3961 226.3495 123.522;
	1.7741 23.9726 83.2849 103.4448 12.3591 12.7814 10.9 17.9916 26.1553 29.2234 54.019 80.5857 121.3214 46.2258 2.7636 1.0412 1.2918 1.369 70.8007 46.8215 3.6333 29.8232 70.2094 84.7319 103.7403 73.4034 12.5576 231.4939 243.6832 243.6832 89.3083 7.5954 236.0023 120.5186 144.9243 103.9715 233.9807 21.17 57.4581 277.8757 3.3709 141.7878 73.3457 215.9716 236.418;
	1.6491 22.2827 77.1511 101.8298 12.0939 24.3624 15.109 16.373 26.7504 29.5156 54.5591 81.3914 122.5343 53.4881 7.5897 2.8594 3.5478 3.7596 66.0745 36.6044 5.0363 56.8456 70.7885 82.8997 95.2067 73.0804 11.2903 322.2799 298.4923 298.4923 131.1489 11.0716 220.2483 94.2199 167.6925 127.3567 322.9791 23.1557 171.994 255.018 0.0183 270.2601 85.3175 181.2009 326.3435;
	1.9178 25.9132 87.871 94.6173 12.7866 30.164 19.4702 17.7425 26.2336 28.5031 52.6876 78.5995 118.3311 52.7341 4.3796 1.65 2.0472 2.1695 75.2241 46.77 6.4901 70.3826 73.4223 86.134 101.734 75.5846 12.7707 436.3057 343.1039 343.1039 210.3857 14.9385 250.7469 120.386 165.3286 146.391 406.7219 35.4556 184.9365 272.5018 3.2824 334.6189 104.6909 193.5449 410.9586;
	3.1989 43.2242 93.0272 94.1399 14.8389 33.4711 21.9506 17.6023 27.7621 29.3466 54.2467 80.9254 121.8328 56.8267 44.1064 16.6168 20.6172 21.8481 79.5004 57.293 7.3169 78.0993 74.8368 86.4873 104.5943 74.8774 11.9141 680.2526 447.8966 447.8966 288.7962 23.1223 265.0013 147.4723 178.1594 191.1026 616.3202 48.6974 225.0954 280.1633 3.5176 371.3065 145.6598 226.5603 622.7402;
	3.8447 51.95 91.8197 110.4541 15.3551 33.1074 22.1634 18.3638 27.1151 29.3494 54.252 80.9332 121.8445 56.1412 64.8495 24.4317 30.3134 32.1231 84.1244 58.1642 7.3878 77.2505 71.9642 87.0902 104.1154 76.2021 12.3597 806.2235 575.5838 575.5838 348.6117 28.3254 280.4147 149.7149 176.0102 245.5824 743.2701 69.0589 286.0993 278.8805 6.6215 367.271 149.1887 265.265 751.0125;
	3.8752 52.3626 90.437 109.7684 15.0561 33.831 26.6865 18.5637 27.7937 27.1413 50.1702 74.8441 112.6774 63.2829 100.562 37.8862 47.0069 49.8133 81.6943 61.75 8.8955 78.939 53.9191 88.2741 103.6575 75.6896 13.4441 975.6023 627.228 627.228 389.235 31.0116 272.3143 158.9447 198.4005 267.6173 913.2784 92.0726 421.1021 277.6541 15.6046 375.2984 159.8592 258.6857 922.7918;
	3.8707 52.3012 93.5403 111.6228 15.0687 32.9976 27.9228 18.7805 27.3793 22.9263 42.3789 63.221 95.1788 63.3984 140.1252 52.7914 65.5004 69.4109 87.6113 70.7217 9.3076 76.9943 52.1998 89.0856 105.0409 75.1853 13.6253 1078.7187 678.8582 678.8582 503.6885 41.3251 292.0378 182.0378 198.7625 289.6462 974.3095 127.5193 383.1243 281.3594 46.4015 366.053 173.8444 269.4246 984.4585;
	3.7434 50.5818 93.1095 117.6546 14.754 32.8735 28.9158 19.1421 26.5397 20.8238 38.4924 57.4232 86.4503 65.1933 161.3526 60.7886 75.423 79.9258 85.4152 69.5274 9.6386 76.7048 34.2412 89.7646 106.1673 76.5853 14.1054 1051.574 692.0802 692.0802 576.7622 75.0009 284.7174 178.9637 204.3897 295.2876 947.1429 187.1662 412.4182 284.3766 10.5473 364.6768 202.5596 280.3344 957.009;
	3.6386 49.1657 93.2356 116.0635 14.6147 32.9396 27.6275 19.0213 26.6799 18.5216 34.2368 51.0746 76.8926 66.157 179.4558 67.6089 83.8851 88.8932 87.7456 71.1457 9.2092 76.859 40.5264 88.8857 104.7285 75.9157 13.7043 1086.3011 688.3094 688.3094 623.8392 87.4877 292.4855 183.1293 207.4112 293.6787 958.7374 211.0258 426.7452 280.5228 108.6044 365.4096 190.3251 261.4291 968.7242;
	3.6496 49.3134 90.306 118.892 14.4593 32.8637 29.8008 14.4028 26.3142 20.0333 37.0312 55.2432 83.1684 63.4872 183.786 69.2403 85.9092 91.0382 85.6043 67.7451 9.9336 76.6821 52.9847 88.9345 101.7043 68.709 13.5229 1134.0417 739.5116 739.5116 601.5522 100.4265 285.3478 174.3761 199.041 315.5249 1038.3422 225.7628 439.6435 272.4222 113.6142 364.5684 202.3075 271.7883 1049.1582;
	3.7241 50.3212 88.0392 107.9983 14.7127 33.4258 30.6825 8.8838 26.0255 20.1936 37.3275 55.6853 83.8339 63.4994 186.2842 70.1815 87.077 92.2757 86.5391 66.9785 10.2275 77.9936 49.5282 38.4556 34.0384 65.277 10.7946 1114.7334 700.7574 700.7574 594.6922 99.7221 288.4635 172.4028 199.0791 298.9898 1043.65 222.5662 449.3373 91.1742 114.5467 370.8041 206.8878 240.5477 1054.5213;
	3.842 51.9138 88.4981 116.9985 14.9581 33.4514 30.1947 18.6955 11.7414 20.7116 38.2852 57.1139 85.9847 58.1221 183.3756 69.0857 85.7174 90.8349 85.2507 63.2641 10.0649 78.0532 40.1079 78.6585 100.9812 74.047 13.738 1150.1155 710.1992 710.1992 676.693 105.9769 284.1691 162.8418 182.2206 303.0183 1029.273 225.8508 438.4406 270.4854 113.7722 371.0874 205.1999 267.3838 1039.9946;
	3.7897 51.2065 89.3597 120.381 15.0435 34.7219 30.2573 17.4682 0.0 20.4998 37.8936 56.5297 85.1052 55.1719 177.6507 66.9289 83.0414 87.9991 84.8197 66.5064 10.0858 81.0178 43.502 85.9607 102.2342 74.5593 13.4831 1236.7451 675.5933 675.5933 661.9891 108.4235 282.7322 171.1877 172.9715 288.2531 1061.8347 217.7741 435.4236 273.8415 114.1953 385.182 209.0028 237.2398 1072.8955;
	3.807 51.4411 89.7375 119.0811 14.8866 33.862 30.9816 17.7472 9.1763 16.6254 30.7318 45.8458 69.0207 62.2004 179.9613 67.7994 84.1215 89.1436 88.762 56.0228 10.3272 79.0114 43.7143 83.5248 87.8742 74.6882 13.7319 1251.0914 774.8285 774.8285 716.3314 112.283 295.8732 144.2029 195.0065 330.5935 1115.3747 233.314 436.1666 235.3773 112.6298 375.6429 206.5998 257.0969 1126.9932;
	3.6996 49.99 87.6689 115.1429 14.3387 33.3318 31.3092 17.9033 0.0 16.0482 29.6648 44.254 66.6242 61.118 186.8476 70.3937 87.3404 92.5547 87.3848 63.2303 10.4364 77.7741 45.947 85.0665 103.9029 73.5346 13.5954 1287.8365 793.8765 793.8765 749.238 112.3532 291.2826 162.755 191.6131 338.7206 1142.8497 241.2871 437.3578 278.3114 115.9621 369.7605 199.1377 262.9807 1154.7544;
];