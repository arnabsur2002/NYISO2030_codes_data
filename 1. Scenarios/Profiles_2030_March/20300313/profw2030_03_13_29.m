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
	0.7186 9.7097 60.0394 69.7135 8.7094 6.2137 3.9107 9.0936 1.8193 18.8782 34.896 52.0579 78.373 1.9056 149.31 56.2517 69.7938 73.9605 81.9371 66.8174 1.3036 14.4986 65.9909 78.129 53.9951 49.889 4.4344 158.652 330.3937 330.3937 228.8308 46.9832 273.1236 171.9881 5.9744 140.968 387.696 92.2029 42.903 144.6297 72.2562 68.9303 62.9046 64.124 391.7345;
	0.4555 6.1543 55.162 65.4964 7.5419 0.738 0.0 11.2552 0.0 10.4331 19.2855 28.7702 43.3134 0.7209 118.9693 44.821 55.6112 58.9313 72.5427 67.7119 0.0 1.7221 16.9517 75.9348 54.0192 49.8159 5.9692 33.9777 220.2798 220.2798 151.1286 30.3842 241.8091 174.2906 2.2602 93.9861 286.6409 88.5026 1.2606 144.6942 87.7114 8.1873 9.5283 81.0231 289.6268;
	0.2115 2.8584 62.758 70.0897 7.8447 2.4726 1.9077 11.9493 2.7672 8.9898 16.6175 24.7901 37.3213 1.6871 82.1419 30.9465 38.3966 40.6889 66.9542 62.5676 0.6359 5.7693 0.0 82.5907 57.2582 55.7943 6.2252 0.0 29.7361 29.7361 4.4989 15.0611 223.1807 161.0492 5.2893 12.6874 160.5879 0.9768 9.1722 153.3703 77.1527 27.4289 16.3896 90.9137 162.2607;
	0.1805 2.4386 66.0271 74.6553 9.0751 1.6793 2.7782 13.1149 3.6923 15.2896 28.2627 42.1623 63.4752 2.4181 91.5404 34.4873 42.7898 45.3444 45.1709 60.2358 0.9261 3.9183 37.3641 82.4707 61.4137 66.9098 7.2299 0.0 17.3506 17.3506 5.5886 17.694 150.5697 155.0472 7.5811 7.4029 7.2332 0.1147 6.4197 164.501 71.5518 18.6288 5.4805 130.0805 7.3086;
	0.311 4.2023 76.4886 74.2409 10.3778 0.5284 3.4509 13.9148 8.8375 15.2503 28.19 42.054 63.312 0.0353 114.5255 43.1468 53.534 56.7301 52.3108 58.7277 1.1503 1.2329 40.6975 83.3618 78.7722 68.9107 7.6679 3.5407 10.2724 10.2724 6.6952 10.8007 174.3695 151.1651 0.1107 4.3829 4.7379 2.6708 0.0 210.997 69.3221 5.8617 2.6633 121.622 4.7872;
	0.3721 5.0285 71.9375 56.3738 10.1096 3.5176 3.1996 12.0353 2.7094 7.9072 14.6164 21.8047 32.8269 0.0011 139.963 52.7303 65.4246 69.3305 76.3364 60.2084 1.0665 8.2078 28.6727 76.9298 51.7675 67.6967 7.3081 0.0 7.3333 7.3333 9.1923 8.1853 254.4546 154.9765 0.0033 3.1289 2.2211 1.1056 0.0 138.6629 46.4303 39.0221 22.5433 116.3456 2.2442;
	0.4049 5.4705 45.4355 35.7978 9.5342 2.4906 5.3357 6.7159 2.4583 6.4682 11.9563 17.8365 26.8527 0.075 98.4668 37.0968 46.0275 48.7754 51.3538 55.6214 1.7786 5.8114 21.6717 48.7187 28.8967 58.2508 3.369 15.7302 41.1154 41.1154 46.2974 0.483 171.1793 143.1697 0.2351 17.5426 16.9793 5.6825 0.0 77.402 26.0774 27.6289 30.1185 104.001 17.1562;
	0.4539 6.1336 27.5684 26.4256 4.3023 2.9071 5.8768 6.6989 2.8883 4.4113 8.1542 12.1645 18.3135 0.8222 41.7337 15.7229 19.5081 20.6728 15.4621 21.433 1.9589 6.7831 10.9084 35.2752 32.7636 58.4558 4.1173 21.4983 40.9498 40.9498 39.7339 0.3466 51.5402 55.1685 2.5778 17.4719 27.0291 1.3736 0.0 87.7597 9.1408 32.249 5.8712 87.9165 27.3106;
	0.5073 6.8548 25.2085 24.8143 4.0185 1.8336 10.6653 4.6131 5.7624 0.0 0.0 0.0 0.0 0.4953 0.0 0.0 0.0 0.0 0.0 5.1164 3.5551 4.2785 3.6184 32.4171 27.8411 46.9097 3.5173 31.145 91.115 91.115 49.1011 0.8379 0.0 13.1697 1.5527 38.8757 75.0508 4.8924 0.0 74.5743 10.3326 20.3412 5.8214 63.3508 75.8326;
	0.2809 3.7953 29.1242 26.14 7.4057 0.0203 5.5171 2.6557 2.5984 0.0 0.0 0.0 0.0 10.5767 0.0 0.0 0.0 0.0 0.0 3.593 1.839 0.0474 5.6548 33.656 31.0218 36.3191 2.3738 43.9712 41.1039 41.1039 6.0132 0.4669 0.0 9.2485 33.1594 17.5377 16.9796 0.3887 0.0 83.094 0.7331 0.2252 46.1814 76.9061 17.1564;
	0.4125 5.5737 39.2026 17.2835 10.4524 2.5712 15.8019 3.2351 5.4067 0.0 0.0 0.0 0.0 2.8937 0.0 0.0 0.0 0.0 0.0 2.9367 5.2673 5.9994 25.9543 36.4333 46.4382 41.6773 1.1842 58.9131 79.2648 79.2648 63.8787 10.3394 0.0 7.5591 9.072 33.8196 71.5325 9.1063 0.1913 124.3881 5.4933 28.5227 4.9317 78.2508 72.2776;
	1.2605 17.0318 65.4027 47.3384 13.1292 1.5602 12.8458 0.1902 11.5678 0.017 0.0314 0.0469 0.0706 0.2048 0.0 0.0 0.0 0.0 0.0 0.0 4.2819 3.6404 48.8881 57.849 33.5231 44.167 0.2724 131.3342 107.4758 107.4758 44.5396 3.9355 0.0 0.0 0.6421 45.8563 128.5973 4.7607 0.011 89.7941 20.5648 17.3076 39.1742 123.9364 129.9368;
	1.9936 26.9374 81.8102 32.9071 13.7586 0.6235 14.1934 0.0017 8.605 22.3529 41.319 61.6399 92.7985 1.1769 0.4239 0.1597 0.1981 0.21 0.7103 1.0587 4.7311 1.4548 33.7481 66.1301 69.6421 43.5804 1.0283 205.4404 169.8397 169.8397 58.5219 10.4038 2.3676 2.725 3.6897 72.4649 187.109 17.9581 6.1245 186.5413 2.7337 6.9164 117.2712 168.7068 189.0581;
	1.4209 19.2001 19.772 15.4465 12.2111 17.0246 8.2125 0.0364 6.4064 1.2638 2.3362 3.4851 5.2468 3.496 0.0 0.0 0.0 0.0 0.6377 0.0 2.7375 39.7241 45.3074 13.4956 17.7015 30.6317 0.7594 128.4379 201.2732 201.2732 14.7598 5.5948 2.1258 0.0 10.9604 85.8766 174.4643 29.7358 5.5 47.4149 6.3262 188.8599 74.6889 139.3129 176.2816;
	1.9875 26.8551 28.951 7.1652 7.877 2.4641 4.6504 0.3168 3.4705 0.0095 0.0176 0.0262 0.0395 0.2272 0.7186 0.2707 0.3359 0.3559 4.6429 0.0 1.5501 5.7496 29.7721 10.2445 29.6794 21.4462 1.218 229.2639 246.8662 246.8662 79.3522 7.9832 15.4765 0.0 0.7122 105.3296 228.9981 18.4681 0.0 79.4983 6.7928 27.3352 76.7948 104.7831 231.3835;
	2.73 36.8885 85.5987 4.4423 9.5995 0.0014 5.0603 0.1616 2.4742 0.0028 0.0052 0.0077 0.0116 0.0 0.0001 0.0 0.0 0.0 12.3519 0.0 1.6868 0.0033 41.8307 5.185 10.7872 5.7695 1.1447 349.5289 294.1558 294.1558 175.6128 13.2578 41.1731 0.0 0.0 125.5065 303.7478 50.3917 0.0 28.8942 6.9774 0.0156 0.0 168.1091 306.9118;
	3.0146 40.7338 4.0267 0.0846 11.9137 0.037 0.0 0.7349 0.0 0.0001 0.0002 0.0002 0.0003 0.0 2.9616 1.1158 1.3844 1.467 0.0486 0.0 0.0 0.0864 0.228 3.077 16.2267 3.429 1.4943 325.5382 363.5564 363.5564 173.6462 24.6981 0.1619 0.0 0.0 155.1174 436.2228 74.6954 0.0 43.4643 27.2458 0.4107 103.8288 206.077 440.7668;
	2.4469 33.063 1.5748 0.1144 13.4262 17.5027 0.0 0.3894 0.0 0.0 0.0 0.0 0.0 0.0 9.9045 3.7315 4.6298 4.9062 10.2284 0.5508 0.0 40.8397 13.4889 4.577 17.7864 0.5118 0.3748 517.547 478.2094 478.2094 322.8809 33.8033 34.0948 1.4179 0.0 204.036 549.4046 93.8736 0.0 47.642 4.7991 194.1638 93.1731 203.4449 555.1275;
	2.9552 39.9308 85.3269 0.7019 14.0733 24.4822 0.0 4.3748 0.0 5.7097 10.5543 15.7449 23.7039 0.876 1.7957 0.6765 0.8394 0.8895 0.0694 38.6968 0.0 57.1251 19.3278 16.1301 48.5139 63.1104 2.9115 766.5156 434.2773 434.2773 342.9702 42.809 0.2314 99.6057 2.7464 185.2916 631.2868 75.0593 0.0 129.948 1.7367 271.5892 98.0379 204.6688 637.8627;
	2.9917 40.4243 0.37 0.0 13.9976 0.0 17.5344 0.444 22.8128 18.3589 33.9362 50.6261 76.2173 3.3114 6.9749 2.6278 3.2604 3.455 2.8605 19.6004 5.8448 0.0001 56.1359 0.0245 4.4044 50.9453 0.5229 818.0657 463.9481 463.9481 333.826 43.5632 9.535 50.4514 10.3816 197.9512 614.2242 82.2798 0.0 11.7975 5.1895 0.0003 101.1616 164.1554 620.6224;
	3.208 43.3472 84.8674 0.0 13.9538 0.0 2.2231 0.6761 26.2586 20.9987 38.8158 57.9055 87.1764 8.6106 24.1912 9.1139 11.308 11.9831 14.0374 31.6676 0.741 0.0 67.1053 76.9693 10.6008 57.8593 1.478 691.4207 422.9465 422.9465 259.775 55.0852 46.7914 81.5125 26.9955 180.4572 624.3775 79.0134 0.0 28.395 0.0719 0.0 101.9239 172.9691 630.8815;
	3.5593 48.0941 83.5459 0.0 13.9505 18.6611 12.7568 13.1562 25.3111 22.5322 41.6505 62.1343 93.5429 12.2122 1.6655 0.6275 0.7785 0.825 18.4623 52.9446 4.2523 43.5425 49.7653 72.7413 90.6705 65.0982 5.843 783.0855 337.8887 337.8887 224.5765 62.4682 61.5411 136.2796 38.287 144.1658 580.3592 111.2896 0.0 242.8673 10.5119 207.0132 0.4188 187.7665 586.4046;
	3.6206 48.9223 85.4458 101.6079 13.0382 21.3731 13.1811 14.7911 25.7865 24.3835 45.0725 67.2393 101.2283 8.6987 43.6631 16.4498 20.41 21.6285 29.3463 64.0544 4.3937 49.8707 61.382 74.2666 84.0019 67.7505 7.3312 772.0226 357.647 357.647 285.7975 44.0876 97.821 164.8761 27.2717 152.5961 481.9945 105.1181 0.408 225.005 6.8281 237.0994 124.6111 178.3652 487.0153;
	3.6536 49.3675 87.5383 99.2061 14.5651 14.8688 11.5192 15.9757 26.2189 25.2849 46.7388 69.7252 104.9708 13.3844 46.4524 17.5007 21.7138 23.0102 41.4631 52.7321 3.8397 34.6939 60.7738 82.2073 95.6798 69.3407 7.6926 709.8257 387.0331 387.0331 262.5873 43.3682 138.2102 135.7326 41.9619 165.1341 466.561 81.6 306.1818 256.2852 7.4745 164.9448 136.9321 200.9158 471.421;
];