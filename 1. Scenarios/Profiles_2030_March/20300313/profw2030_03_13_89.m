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
	0.7889 10.6603 55.822 65.1091 8.1645 7.7533 4.9315 9.0199 0.4761 8.5231 15.7549 23.5031 35.3839 5.8297 144.2235 54.3354 67.4161 71.441 79.6445 69.6096 1.6438 18.091 49.0759 71.5064 51.378 50.1478 4.7698 154.6183 325.949 325.949 218.5751 38.6658 265.4817 179.1752 18.2767 139.0716 370.7826 82.9923 272.5566 137.6196 62.5959 86.0099 37.8963 70.5403 374.6449;
	0.478 6.4589 51.0673 62.9706 6.9982 0.9111 7.7093 11.2065 0.0 0.0 0.0 0.0 0.0 19.8559 125.6512 47.3384 58.7346 62.2412 73.7868 71.5289 2.5698 2.1259 2.3669 71.5501 51.5947 51.7743 6.6953 52.6015 219.5435 219.5435 148.758 29.0545 245.956 184.1157 62.2508 93.6719 285.8863 85.1489 156.3749 138.2001 72.4084 10.107 1.0081 83.8179 288.8643;
	0.359 4.8514 57.2312 68.7792 6.2055 4.6988 2.1945 11.1457 0.0 0.0 0.0 0.0 0.0 12.5755 92.6621 34.9099 43.3142 45.9001 66.8123 71.5216 0.7315 10.9639 0.0 78.6877 54.5825 54.9386 6.6597 2.6983 62.9326 62.9326 50.5147 17.6036 222.7078 184.0968 39.4259 26.8512 169.3311 2.9605 101.3958 146.2032 63.7613 52.1257 19.3399 92.5984 171.095;
	0.5163 6.9765 65.1302 76.6269 8.6028 4.4051 2.1471 13.2175 0.7899 8.0347 14.852 22.1562 33.356 29.9965 104.5977 39.4066 48.8934 51.8124 49.5925 72.7194 0.7157 10.2787 40.1123 81.8797 60.3695 61.8104 7.6979 4.6664 44.1484 44.1484 103.3637 22.1328 165.3085 187.18 94.043 18.8367 39.2905 44.2319 143.2986 161.7041 55.9522 48.8678 60.65 130.3846 39.6998;
	0.467 6.3106 66.047 67.683 9.2978 1.9601 1.1003 12.4955 1.0581 6.3899 11.8116 17.6206 26.5278 11.6069 137.7184 51.8846 64.3753 68.2186 58.8011 72.91 0.3668 4.5736 35.6087 77.7336 58.0687 57.9258 8.3334 10.9577 23.628 23.628 66.8399 11.1693 196.0037 187.6705 36.3891 10.0813 6.5687 25.1129 109.7143 155.5412 39.8893 21.7441 6.2182 134.3691 6.6371;
	0.5221 7.0543 75.6833 60.9692 10.8082 4.6354 3.3659 12.196 5.9626 4.6376 8.5726 12.7886 19.2531 28.4773 146.5756 55.2215 68.5156 72.606 80.6689 71.4466 1.122 10.816 9.6756 79.6161 50.061 63.8793 7.9544 14.0654 72.6369 72.6369 149.3143 11.8047 268.8962 183.9037 89.2802 30.9918 20.1002 42.6875 244.4919 134.0919 33.7075 51.4224 26.2942 142.021 20.3096;
	0.4794 6.4774 52.9153 38.4646 9.3477 3.446 3.8082 7.713 2.0332 5.2595 9.7221 14.5034 21.8348 12.181 114.3103 43.0658 53.4334 56.6235 62.1147 67.5402 1.2694 8.0407 3.8445 55.7145 30.2889 61.8691 4.3744 27.8205 108.6818 108.6818 254.2853 5.1015 207.0491 173.8486 38.189 46.3709 27.2579 84.8177 10.0994 81.131 23.4862 38.2277 34.5776 137.249 27.5418;
	0.5821 7.8655 31.4526 25.767 3.7978 3.149 4.5795 6.0246 2.347 4.2361 7.8304 11.6814 17.5862 7.3233 67.1196 25.2869 31.3745 33.2476 21.5609 49.8132 1.5265 7.3476 10.8698 33.5095 23.0282 57.9397 4.2434 25.8389 92.3634 92.3634 217.0117 12.2116 71.8696 128.2194 22.9597 39.4084 23.6952 38.817 27.3109 61.6826 10.9561 34.9327 68.2415 104.3076 23.942;
	0.6494 8.7743 23.3663 22.1763 3.8688 4.862 12.9278 3.3837 7.3991 1.3989 2.5859 3.8577 5.8077 22.6077 16.7672 6.317 7.8377 8.3056 19.4643 18.223 4.3093 11.3447 5.9565 30.1877 12.4374 48.203 2.5881 28.0356 212.1593 212.1593 410.257 18.1437 64.881 46.9061 70.8781 90.5213 22.5735 83.0342 31.1544 33.3143 1.4436 53.9357 63.2398 79.8924 22.8087;
	0.6204 8.3835 22.781 22.0514 7.495 0.6534 12.5258 2.612 10.3409 0.0694 0.1284 0.1915 0.2883 27.0669 5.2982 1.9961 2.4766 2.6244 30.8895 11.2869 4.1753 1.5247 10.3246 22.1808 16.2521 39.105 2.5279 42.2629 211.4646 211.4646 528.9239 20.459 102.9649 29.0525 84.8584 90.2249 73.3623 87.4193 77.3697 43.5324 3.3865 7.2487 48.0586 81.4565 74.1264;
	0.798 10.783 33.4862 0.0 10.7248 0.0 6.7554 1.044 11.2751 0.2324 0.4295 0.6408 0.9647 3.5543 5.0278 1.8942 2.3502 2.4905 52.2331 11.3902 2.2518 0.0 31.4099 38.8707 38.4281 39.1907 0.9215 35.9227 75.3713 75.3713 233.9517 1.2445 174.1103 29.3184 11.1432 32.1584 56.4415 31.4649 39.6406 102.9324 12.376 0.0 0.0284 85.4414 57.0294;
	1.7247 23.304 58.299 0.149 13.7237 1.407 1.8743 0.0 5.2279 1.0826 2.0012 2.9854 4.4944 26.7404 74.22 27.962 34.6935 36.7648 81.7287 10.2943 0.6248 3.2831 54.3697 52.9748 1.8277 30.416 0.0 145.5422 117.4062 117.4062 277.5539 8.2981 272.4291 26.4976 83.8347 50.0933 130.1205 29.316 44.4947 4.8956 5.1621 15.6088 14.7424 118.6869 131.4759;
	2.3855 32.234 78.7901 6.5222 14.7767 2.1421 5.0851 0.0 13.5776 24.7053 45.6674 68.1267 102.5644 17.8905 17.612 6.6352 8.2326 8.7241 86.6879 6.5032 1.695 4.9983 37.5466 63.9758 65.9565 50.4237 0.0109 206.9806 185.7454 185.7454 301.9335 14.772 288.9598 16.7392 56.0891 79.2514 188.3877 84.943 121.9582 176.6691 10.2511 23.7632 112.0624 155.2339 190.3501;
	1.8615 25.1524 0.373 1.1197 13.9595 17.5921 9.9227 0.0 11.8475 0.5345 0.9881 1.474 2.2191 37.3593 0.0669 0.0252 0.0313 0.0331 32.3285 2.5499 3.3076 41.0482 49.3089 0.8029 5.2364 24.5132 0.0194 207.4262 227.0825 227.0825 270.3497 8.4413 107.7618 6.5635 117.1265 96.8885 211.8711 81.2623 202.2886 14.0262 5.2204 195.1547 80.0166 123.3085 214.0781;
	2.3151 31.2817 0.0089 7.5188 9.396 0.067 6.4082 0.0 15.4985 5.5922 10.337 15.4208 23.2159 63.6088 5.2347 1.9721 2.4469 2.593 23.933 4.6383 2.1361 0.1562 32.7989 0.0 0.0814 0.0668 0.0 280.9345 284.5128 284.5128 117.0304 7.4835 79.7767 11.9391 199.4221 121.3921 285.5709 35.2926 208.0663 0.2181 2.5966 0.7429 83.9685 91.9295 288.5456;
	3.0275 40.9082 79.5792 8.226 13.3518 0.2356 4.6991 0.0 13.8413 3.712 6.8617 10.2362 15.4106 25.4236 13.3606 5.0335 6.2453 6.6182 50.8674 1.5388 1.5664 0.5496 46.2716 0.0235 0.0 0.0003 0.0 393.4689 294.4975 294.4975 186.3173 12.3972 169.5582 3.961 79.7065 125.6523 326.5058 45.5577 69.1297 0.0 1.0212 2.6131 0.1437 154.6243 329.9069;
	3.0703 41.4871 3.9202 23.6687 14.1943 2.5731 4.7243 0.0 13.7917 26.3984 48.7971 72.7957 109.5935 28.2902 22.6309 8.5261 10.5786 11.2102 14.9654 4.0724 1.5748 6.0038 65.1698 2.1047 1.1142 0.2735 0.0 326.5943 379.6031 379.6031 204.8428 21.9033 49.8845 10.4823 88.6937 161.964 442.0605 71.1471 127.3121 2.9844 0.2158 28.5439 134.1478 198.1398 446.6653;
	2.7375 36.9899 13.6364 50.4322 13.8969 19.5166 2.5213 0.0002 3.3415 18.0847 33.4293 49.8699 75.0789 44.1546 32.9508 12.414 15.4026 16.3221 49.2917 6.1745 0.8404 45.5388 18.8387 0.6716 3.1131 1.0059 0.0 563.9522 504.9349 504.9349 371.7509 34.9878 164.3055 15.8932 138.4305 215.4389 575.781 102.7297 131.8733 8.3387 0.2705 216.5043 116.3549 214.5111 581.7788;
	3.0103 40.6763 87.4687 101.0124 14.0329 26.6524 0.0379 0.0 0.0 8.9799 16.5992 24.7627 37.2801 8.3726 15.7401 5.93 7.3576 7.7968 29.6123 37.1946 0.0126 62.1889 30.6387 3.1492 7.0605 58.8817 0.0 778.5368 460.4235 460.4235 391.653 42.5711 98.7078 95.7391 26.2491 196.4474 634.6596 81.7372 24.0564 18.912 4.3651 295.6639 113.6546 202.78 641.2706;
	2.9313 39.6088 23.9325 63.0924 14.2689 1.1597 18.4145 0.0 25.6719 21.4322 39.617 59.1008 88.9759 4.7454 8.2383 3.1037 3.8509 4.0808 12.399 17.6624 6.1382 2.7059 56.3591 4.7218 2.4143 53.4607 0.0001 693.9271 421.3403 421.3403 334.5414 40.9611 41.3301 45.4631 14.8774 179.7719 566.7069 78.3859 12.5209 6.4669 7.6421 12.8648 109.1375 179.128 572.6101;
	3.2287 43.627 87.2108 59.0399 14.092 3.4252 1.9404 0.0082 25.8164 22.2628 41.1525 61.3914 92.4244 8.4053 27.176 10.2384 12.7032 13.4616 30.9288 29.8852 0.6468 7.992 66.7874 75.2517 0.0107 60.9509 0.0343 676.302 393.4375 393.4375 256.5387 56.0613 103.096 76.9246 26.3516 167.8667 597.5184 79.8318 0.0876 0.0286 12.0839 37.9965 114.3254 170.1148 603.7426;
	3.1871 43.0647 85.9675 8.527 13.178 21.0709 11.4296 9.0751 24.0076 23.5022 43.4435 64.8091 97.5697 8.6706 25.2287 9.5048 11.7929 12.497 6.0098 52.6189 3.8099 49.1653 54.0575 64.1795 85.4702 62.4267 0.3743 730.1723 310.2211 310.2211 228.9436 63.9421 20.0328 135.4413 27.1835 132.361 522.4418 110.0549 1.7677 228.9382 8.2294 233.7461 0.33 173.0692 527.8839;
	3.3999 45.9404 86.8833 112.4739 13.1093 23.4901 14.1096 14.6706 25.9581 24.4645 45.2223 67.4628 101.5648 6.9457 61.254 23.0771 28.6327 30.3421 52.1609 65.2742 4.7032 54.8102 51.4269 70.2751 90.1771 68.5737 6.612 764.7471 342.7319 342.7319 302.5109 48.338 173.8695 168.0159 21.7758 146.2323 460.115 104.1081 82.4322 241.5458 5.8544 260.5834 139.2365 191.5773 464.9079;
	2.9791 40.2537 86.116 109.4274 11.5086 14.6565 12.0623 15.5395 26.2499 26.4832 48.9537 73.0293 109.9453 10.2266 56.5214 21.2941 26.4204 27.9978 30.5203 53.2956 4.0208 34.1985 61.2009 80.2821 97.5969 68.8778 6.7066 728.9518 396.3949 396.3949 281.5944 51.0776 101.7342 137.1831 32.0617 169.1285 462.3035 77.8889 316.7046 261.4203 7.2624 162.5895 133.259 215.1992 467.1191;
];
