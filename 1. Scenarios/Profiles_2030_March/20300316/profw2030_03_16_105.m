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
	3.7186 50.2461 93.3234 112.9476 14.8369 31.9835 29.2898 18.2214 28.0705 29.9227 55.3116 82.514 124.2244 67.7377 186.6066 70.3029 87.2277 92.4353 85.5106 70.3235 9.7633 74.6282 75.7666 87.5999 102.0658 72.6657 13.7584 1268.5748 758.9577 758.9577 513.2159 112.2184 285.0355 181.0128 212.3669 323.822 1193.9707 202.3059 455.5782 273.3905 118.5444 354.804 190.9321 280.0303 1206.4079;
	3.7731 50.9835 92.5151 113.0753 14.8875 32.2001 26.0925 18.9024 27.4809 31.1713 57.6197 85.9573 129.4082 66.9188 181.0345 68.2037 84.6231 89.6752 82.803 71.2061 8.6975 75.1335 75.894 89.5849 103.2295 73.0048 13.8552 1289.4918 769.2206 769.2206 556.7379 109.2005 276.0098 183.2846 209.7996 328.2008 1172.625 192.0046 454.6176 276.5075 117.3134 357.2061 181.8951 273.0452 1184.8399;
	3.7088 50.1134 93.909 115.4987 14.9782 32.417 22.0473 19.0718 28.1922 31.3313 57.9154 86.3983 130.0722 65.9715 191.971 72.324 89.7353 95.0926 88.3455 69.9257 7.3491 75.6398 75.8606 90.1531 104.9932 76.4288 13.952 1298.2515 758.3385 758.3385 580.2351 98.8676 294.4851 179.9891 206.8295 323.5578 1230.1652 201.4196 430.9488 281.2318 118.1115 359.613 183.4151 274.5303 1242.9794;
	3.7655 50.8798 94.2645 116.355 15.1112 31.8969 23.2015 19.0812 27.5302 31.2361 57.7395 86.1359 129.6772 67.2836 192.8249 72.6457 90.1344 95.5156 88.5167 72.2834 7.7338 74.4261 75.7956 90.0788 104.4805 75.2871 14.0231 1290.3319 757.4977 757.4977 569.5457 102.9533 295.0557 186.0578 210.943 323.199 1229.7769 221.627 442.4222 279.8584 115.7569 353.8428 155.3867 280.1588 1242.5871;
	3.6796 49.7197 94.3444 111.39 14.8927 31.4605 29.3967 18.6996 26.8998 31.1235 57.5313 85.8254 129.2096 66.9698 195.9701 73.8306 91.6046 97.0736 89.4654 73.6931 9.7989 73.4077 75.8226 89.3844 102.217 75.2227 13.4942 1244.2728 757.3358 757.3358 608.3638 106.7338 298.2181 189.6862 209.9594 323.1299 1166.7133 222.2668 464.2322 273.7955 115.6352 349.0014 180.7377 271.2552 1178.8666;
	3.6594 49.446 91.8892 109.1514 14.8941 32.0 27.7657 18.3034 26.149 30.9067 57.1306 85.2276 128.3096 67.7445 200.7883 75.6458 93.8569 99.4603 91.8838 72.3182 9.2552 74.6667 75.3405 85.9258 98.4652 70.784 13.2061 1298.5987 758.8983 758.8983 668.245 113.5739 306.2793 186.1474 212.388 323.7966 1174.7097 245.1027 463.1607 263.746 113.411 354.987 166.681 264.039 1186.9463;
	3.6307 49.0589 91.3007 109.9325 14.7398 31.8181 29.7415 18.2984 25.8276 30.3948 56.1843 83.816 126.1845 66.0372 196.8492 74.1618 92.0156 97.509 89.0422 72.7551 9.9138 74.2421 74.6262 84.7406 97.9394 69.9776 13.3158 1277.0645 724.7371 724.7371 653.9737 112.6634 296.8072 187.2718 207.0354 309.2212 1159.6368 272.0015 452.3707 262.3377 115.4325 352.9683 158.568 256.544 1171.7164;
	3.6661 49.5371 87.4153 109.9171 14.8887 32.3134 28.5624 17.5671 25.8702 30.2712 55.9559 83.4752 125.6715 68.4491 196.1084 73.8827 91.6693 97.1421 89.7745 71.3969 9.5208 75.398 73.6703 85.6809 96.8163 69.471 12.909 1301.0449 757.2314 757.2314 654.6871 116.5878 299.2485 183.7757 214.5973 323.0854 1224.8677 292.5715 460.5994 259.3294 115.5664 358.4636 163.3561 260.3323 1237.6268;
	3.6681 49.5639 89.0308 111.9199 15.1028 32.9543 30.2107 17.0398 26.4608 30.517 56.4103 84.1531 126.692 67.3864 195.0611 73.4881 91.1797 96.6233 92.8264 72.1809 10.0702 76.8933 74.0448 84.9725 97.0212 67.8409 12.7813 1296.5181 748.9994 748.9994 714.7804 123.0708 309.4215 185.7937 211.2656 319.5731 1237.608 324.59 457.3108 259.8783 117.4123 365.5727 195.3625 257.6292 1250.4998;
	3.4732 46.9299 88.6007 110.3127 14.612 31.1447 23.3239 17.1414 25.8594 28.3755 52.4517 78.2476 117.8013 62.5235 190.3807 71.7248 88.9919 94.3049 91.6379 72.0232 7.7746 72.6711 72.8274 85.2939 75.4238 68.1555 13.08 1286.4986 784.0446 784.0446 749.7687 123.6787 305.4597 185.388 196.0197 334.5257 1231.6229 324.487 444.333 202.028 116.3695 345.499 196.9407 260.4323 1244.4523;
	3.6222 48.944 90.693 112.1751 14.3855 32.4352 24.4327 17.3569 26.0944 30.2917 55.9937 83.5316 125.7564 63.7703 190.2435 71.6731 88.9278 94.2369 90.8598 72.4279 8.1442 75.6822 73.6154 82.9798 77.0915 67.5653 13.1265 1302.9414 790.3391 790.3391 764.6081 122.5757 302.8659 186.4295 199.9287 337.2113 1291.5124 328.8467 444.8546 206.495 116.0452 359.815 204.6385 260.2104 1304.9656;
	3.6792 49.714 89.7369 112.991 14.6755 33.4615 25.1565 17.3569 26.894 29.0582 53.7136 80.1301 120.6355 66.2086 192.3624 72.4714 89.9182 95.2865 90.3655 70.638 8.3855 78.0768 73.4237 69.9377 80.4647 62.3212 12.8234 1312.8209 782.8773 782.8773 791.4793 122.7539 301.2183 181.8223 207.5728 334.0276 1300.494 344.5501 461.3342 215.5305 117.8676 371.1996 210.0711 259.342 1314.0408;
	3.6439 49.2373 93.7364 113.9595 15.0972 34.1266 25.1304 17.7293 26.1285 29.9273 55.3202 82.5268 124.2437 66.0449 190.0006 71.5816 88.8142 94.1166 90.8893 68.9771 8.3768 79.6288 71.7122 81.5098 96.5923 71.4739 13.1513 1288.6447 791.7948 791.7948 777.4177 118.9334 302.9645 177.5473 207.0596 337.8324 1274.1297 343.7718 448.8588 258.7292 119.8704 378.5781 216.5118 266.6572 1287.4019;
	3.7059 50.0742 92.9025 114.5903 14.7368 33.1342 25.5289 17.5187 26.139 30.2081 55.8392 83.3012 125.4095 67.2927 191.2122 72.0381 89.3806 94.7167 88.7691 72.7422 8.5096 77.3132 74.954 83.744 96.0549 70.8004 13.0688 1245.3711 757.1189 757.1189 742.9694 116.8343 295.8971 187.2387 210.9716 323.0374 1238.3206 312.8806 442.7063 257.2899 113.265 367.5691 205.4202 268.7761 1251.2197;
	3.69 49.8605 93.7002 113.507 14.9177 33.0574 24.1497 17.5626 27.5931 30.8126 56.9565 84.968 127.9188 68.1068 188.0952 70.8638 87.9236 93.1727 87.8676 70.9588 8.0499 77.1339 75.7455 86.3541 97.08 69.2568 13.0955 1273.6778 752.8907 752.8907 763.1892 118.4798 292.8921 182.6482 213.5239 321.2334 1239.1782 315.5734 467.0129 260.0358 114.9667 366.7167 209.8781 274.3228 1252.0863;
	3.7487 50.6529 93.0572 114.3621 15.2676 33.4444 25.5467 18.1119 26.8841 30.3205 56.047 83.6111 125.8761 66.6184 176.5477 66.5133 82.5258 87.4527 84.2814 70.6257 8.5156 78.0369 75.635 87.5871 99.9211 70.6806 13.188 1254.1882 770.8977 770.8977 745.0453 115.5917 280.9378 181.7907 208.8576 328.9163 1216.3937 309.1246 461.7261 267.6459 116.3214 371.0098 204.0447 273.2806 1229.0644;
	3.6288 49.0331 89.5862 111.3752 14.7803 30.5998 22.9641 17.9934 26.8916 29.835 55.1495 82.2722 123.8603 67.6647 187.4142 70.6072 87.6052 92.8354 74.1191 69.4283 7.6547 71.3996 73.4904 84.7609 98.199 59.25 12.1781 1206.405 722.7307 722.7307 665.3531 100.457 247.0637 178.7085 212.138 308.3651 1154.7499 300.1896 448.9091 263.0331 112.4618 339.4539 194.121 250.8248 1166.7785;
	3.624 48.9681 92.8344 109.5775 15.1159 28.8359 18.7115 14.812 26.6973 29.8855 55.2429 82.4115 124.07 68.7304 182.065 68.5919 85.1048 90.1857 81.9769 68.2811 6.2372 67.2837 74.812 87.6022 101.1038 73.1186 10.1072 1251.4301 733.8903 733.8903 651.2707 108.0571 273.2563 175.7557 215.4789 313.1265 1207.9194 287.0451 449.6893 270.8138 116.3524 319.8859 179.0429 248.0229 1220.5019;
	3.7601 50.8066 90.1673 103.7299 15.2839 26.4847 15.1826 9.2159 27.4936 29.5639 54.6483 81.5246 122.7348 68.497 175.8261 66.2414 82.1885 87.0952 85.24 67.9638 5.0609 61.7977 71.7764 89.1472 101.2174 64.8635 9.0923 1280.9441 742.0377 742.0377 654.6394 111.1515 284.1333 174.9391 214.7474 316.6028 1217.5805 297.2244 437.8625 271.1181 114.6114 293.804 137.8212 248.5925 1230.2636;
	2.8889 39.0352 84.2949 64.312 15.2211 22.9462 24.7372 9.8298 26.0518 29.2918 54.1455 80.7744 121.6054 68.1061 175.6406 66.1716 82.1017 87.0033 84.0864 66.519 8.2457 53.5412 71.4844 88.4535 94.9376 46.0222 7.8565 1262.0895 751.2813 751.2813 687.5981 109.4646 280.288 171.22 213.5219 320.5467 1157.8263 293.8095 428.2135 254.297 108.4604 254.5502 107.1544 214.9159 1169.887;
	2.5633 34.6353 85.9872 73.932 15.053 12.8466 24.9003 10.8399 26.2215 29.507 54.5432 81.3677 122.4987 69.4343 185.546 69.9034 86.732 91.91 87.6708 66.863 8.3001 29.9755 71.2656 89.3197 88.8889 56.0484 9.8367 1264.3106 742.4061 742.4061 677.2508 110.9721 292.2359 172.1054 217.686 316.76 1180.8321 290.9223 437.6744 238.0952 108.5586 142.5121 76.4127 212.4079 1193.1325;
	2.1528 29.0889 84.8854 83.1321 15.29 16.2492 24.9959 12.4782 26.6632 28.7775 53.1948 79.3562 119.4703 69.4634 191.6732 72.2118 89.5961 94.9451 89.6171 68.8425 8.332 37.9148 70.5421 87.4735 98.6043 68.3196 10.5503 1137.4139 680.9927 680.9927 633.8961 105.6434 298.7235 177.2009 217.7773 290.5569 1048.4947 257.4264 445.8073 264.1185 112.2856 180.258 68.8151 210.9096 1059.4165;
	2.7103 36.6216 81.5332 83.9647 14.6747 18.1142 24.1747 13.9382 26.6279 27.7719 51.336 76.5832 115.2957 68.8643 182.3494 68.6991 85.2378 90.3266 85.5114 66.6336 8.0582 42.2664 68.9008 87.0293 95.161 65.898 9.492 1024.605 712.8696 712.8696 684.2334 104.5318 285.0381 171.515 215.8989 304.1577 1011.682 262.7367 432.9924 254.8956 115.7764 200.9466 74.6423 229.902 1022.2203;
	2.8286 38.2209 84.0824 72.4496 14.6131 20.7686 19.4953 10.7216 25.7581 22.9883 42.4935 63.392 95.4363 67.3506 165.5278 62.3616 77.3746 81.994 81.3879 64.5097 6.4984 48.4602 67.7758 86.1093 88.5621 63.3408 6.6301 861.7784 626.013 626.013 607.1652 102.0696 271.2929 166.0482 211.1531 267.0989 821.0396 238.1834 392.5517 237.2199 114.95 230.3935 83.683 238.9709 829.592;
];