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
	3.7587 50.7888 89.7425 108.1342 14.8947 33.2843 28.0133 12.0394 25.9197 27.0706 50.0396 74.6492 112.384 65.0577 189.0273 71.2149 88.3593 93.6345 89.3882 70.2519 9.3378 77.6634 65.5947 86.2929 96.089 63.1002 8.8244 1171.5052 738.1031 738.1031 699.5473 111.8888 297.9607 180.8286 203.9646 314.924 1089.7853 293.6645 446.2838 257.3813 111.6585 369.2342 205.225 239.2535 1101.1372;
	3.8521 52.0501 87.0488 105.3567 14.6075 33.4071 26.8896 10.7652 25.7516 26.108 48.2602 71.9947 108.3876 65.5263 195.141 73.5183 91.2171 96.6629 90.8437 73.0953 8.9632 77.95 69.0263 82.7849 90.8705 61.3404 7.3249 1153.185 780.5921 780.5921 782.8729 114.4142 302.8123 188.1475 205.4338 333.0526 1201.9581 283.507 443.392 243.4032 110.6363 370.5966 207.5095 234.1139 1214.4785;
	3.758 50.7791 85.5715 86.4653 14.978 33.5826 22.9001 9.1207 24.1565 26.448 48.8888 72.9324 109.7993 61.8279 192.0856 72.3671 89.7889 95.1494 89.7155 71.8733 7.6334 78.3595 68.4674 85.7547 78.6411 60.6852 7.8887 1189.9845 780.8198 780.8198 758.5419 114.7273 299.0516 185.002 193.8388 333.1498 1156.5365 280.2036 429.1692 210.6457 112.0175 372.5434 186.1266 236.2056 1168.5837;
	3.6628 49.4926 85.0885 92.6092 14.8353 33.3478 20.8806 11.2714 25.4393 27.9736 51.7087 77.1393 116.1327 58.2256 189.6813 71.4613 88.665 93.9584 91.3175 70.4196 6.9602 77.8115 70.3535 88.2106 81.5582 54.4007 8.1845 1160.2623 775.2614 775.2614 734.1126 111.6304 304.3917 181.2603 182.5451 330.7782 1145.2498 253.7369 404.0829 218.4596 98.5191 369.9383 187.1552 231.9455 1157.1795;
	3.5094 47.4191 81.4181 73.6941 14.5299 32.0592 16.7963 9.0127 19.9194 27.6737 51.1544 76.3124 114.8878 56.5174 186.3687 70.2133 87.1165 92.3175 90.9618 67.9306 5.5988 74.8047 68.566 86.6929 70.328 48.389 7.3315 1140.0515 700.425 700.425 641.9733 103.2917 303.2059 174.8536 177.1898 298.848 1026.2578 230.0224 317.174 188.3785 97.4649 355.6431 186.6596 199.0501 1036.948;
	3.5799 48.3717 78.4666 69.6085 14.5318 31.4802 16.6347 6.6553 23.6379 29.1393 53.8636 80.3539 120.9723 57.4098 186.3045 70.1891 87.0865 92.2857 91.6298 69.3132 5.5449 73.4538 70.2233 83.4342 53.4675 32.6667 5.559 1157.8075 713.4677 713.4677 626.0144 96.2918 305.4325 178.4124 179.9874 304.4129 1101.8602 206.2986 312.3467 143.2165 83.9438 349.2205 185.6288 154.9707 1113.3379;
	3.0242 40.8635 66.8146 56.0451 14.3922 29.0808 15.3389 5.1612 18.3082 28.141 52.0182 77.6009 116.8277 63.8914 188.9163 71.1731 88.3074 93.5795 90.7011 69.6689 5.113 67.8553 71.6261 73.7451 44.749 18.7184 4.2902 1244.0868 691.8295 691.8295 523.2066 64.9654 302.3371 179.3279 200.3081 295.1806 1119.2354 182.1709 277.5318 119.8633 70.7988 322.6035 163.2283 92.4523 1130.8941;
	3.3968 45.8979 65.0828 59.4177 14.2445 28.8614 16.3957 5.6997 15.9872 24.2709 44.8643 66.9288 100.7609 62.585 192.7451 72.6156 90.0971 95.4761 91.0986 69.793 5.4652 67.3433 59.4941 81.7548 57.193 17.5919 3.9816 1230.3017 701.3699 701.3699 604.1327 64.5548 303.662 179.6474 196.2123 299.2512 1119.3243 191.4332 251.4396 153.1955 83.4683 320.1694 150.2258 113.7631 1130.9839;
	2.8354 38.3124 57.932 59.8191 13.956 24.2292 15.3519 4.1887 19.831 21.7307 40.1689 59.924 90.2153 62.7835 175.4885 66.1143 82.0307 86.928 88.5155 67.1158 5.1173 56.5349 48.2191 82.6528 58.2018 11.0003 3.0314 1224.6583 754.9005 754.9005 723.6072 88.1017 295.0518 172.7563 196.8347 322.0909 1115.2199 220.9948 233.9409 155.8976 56.7299 268.7831 138.8282 135.1931 1126.8367;
	2.4798 33.5078 48.7332 56.5901 14.304 19.0296 19.4535 2.2633 20.3487 18.8449 34.8345 51.9662 78.2348 67.74 168.5512 63.5007 78.7879 83.4916 89.4457 69.1152 6.4845 44.4024 42.3262 71.7162 37.5137 5.7122 1.3687 1148.5174 782.9399 782.9399 737.1895 110.3209 298.1522 177.9027 212.3741 334.0544 1168.4069 226.6396 350.7181 100.4831 43.1578 211.1018 131.1014 119.8385 1180.5779;
	2.1241 28.7013 35.849 43.2627 13.9071 15.2737 19.7042 1.4336 19.5128 16.015 29.6035 44.1627 66.4866 69.039 164.8666 62.1125 77.0655 81.6665 90.2414 71.4739 6.5681 35.6387 31.8034 54.7453 23.7191 3.702 6.5986 1149.1549 801.4308 801.4308 740.6678 108.696 300.8048 183.974 216.4466 341.9438 1109.0384 235.1209 393.9777 63.5333 35.7894 169.4365 98.5557 87.2688 1120.5909;
	1.5116 20.4254 29.7383 25.6072 9.681 10.9642 21.608 1.5693 20.107 18.7849 34.7236 51.8008 77.9858 69.4569 175.1189 65.975 81.8579 86.7449 90.1223 71.5071 7.2027 25.5832 42.7516 39.9587 20.9445 5.6773 7.1796 1060.9281 770.3677 770.3677 708.1537 109.3168 300.4075 184.0594 217.7569 328.6902 1061.6025 214.294 421.0206 56.1014 25.5949 121.63 73.0291 73.9432 1072.6608;
	1.0604 14.3283 26.3493 23.9668 8.8752 8.1097 20.4434 2.1751 17.4797 14.4828 26.7712 39.9374 60.1256 68.2232 183.0749 68.9724 85.5769 90.6859 90.4612 69.483 6.8145 18.9225 38.269 34.8697 21.4993 8.1327 2.6403 1015.0083 769.3801 769.3801 695.0138 103.4947 301.5374 178.8495 213.8889 328.2688 1046.1301 217.423 421.6069 57.5874 21.1066 89.9631 55.9859 51.9803 1057.0272;
	0.9006 12.1692 23.6208 31.9609 8.5542 8.7987 14.3714 3.0918 14.8558 18.5238 34.241 51.0808 76.9019 66.8448 185.5607 69.9089 86.7388 91.9173 87.7704 67.4287 4.7905 20.5303 49.4783 40.1466 27.4267 10.0108 4.1708 949.3861 721.5562 721.5562 694.3181 93.2448 292.5679 173.5615 209.5674 307.864 896.8117 211.6865 406.509 73.4643 28.8408 97.6069 43.6325 55.6396 906.1534;
	0.95 12.8369 22.3546 0.1142 7.8454 8.3339 12.0332 2.1133 13.9072 16.9165 31.2698 46.6484 70.229 67.9706 168.9544 63.6526 78.9764 83.6914 79.575 62.3231 4.0111 19.4458 51.4169 45.7629 23.8252 6.1451 3.518 853.1102 641.0525 641.0525 629.2246 81.3807 265.25 160.4198 213.0969 273.5157 792.7334 200.7863 323.6003 63.8176 28.7213 92.4508 41.7338 58.8589 800.991;
	0.968 13.0796 15.371 27.4669 7.8701 0.7855 6.1152 1.5995 10.8098 15.1118 27.9339 41.6718 62.7367 61.7357 171.9226 64.7708 80.3638 85.1616 81.9692 68.6588 2.0384 1.8329 53.8044 41.6023 22.8808 4.102 2.5991 871.2087 515.2422 515.2422 518.1662 78.2732 273.2306 176.7278 193.5499 219.8367 648.8696 189.0994 212.5558 61.2878 29.7263 8.7139 35.4586 18.6165 655.6286;
	0.4989 6.7411 5.3126 1.7968 6.6733 0.0344 4.1859 3.4696 11.9892 18.9294 34.9908 52.1994 78.5859 58.2519 163.7792 61.7028 76.5572 81.1278 84.1404 67.3498 1.3953 0.0802 53.37 42.2574 16.3566 23.62 1.8183 785.5056 532.8245 532.8245 575.4935 82.1757 280.4679 173.3586 182.6274 227.3384 755.2294 197.3087 215.3854 43.8122 35.2538 0.3812 2.9915 29.6483 763.0964;
	0.9746 13.1686 0.3938 0.3716 2.4863 0.0 5.0029 2.9168 2.4824 20.0918 37.1393 55.4046 83.4113 63.8233 114.5129 43.1421 53.5281 56.7238 83.0653 51.9335 1.6676 0.0 67.0384 37.5912 14.7444 4.9935 1.7061 704.344 543.6667 543.6667 599.6916 90.3788 276.8844 133.6771 200.0946 231.9645 732.697 207.7685 306.5865 39.4939 72.0756 0.0 0.0 2.3311 740.3293;
	0.373 5.0396 21.8366 38.0252 0.0 0.0 13.6351 2.1674 2.2321 21.4822 39.7096 59.2389 89.1839 63.5901 114.907 43.2906 53.7123 56.9191 62.8074 59.8248 4.545 0.0 69.545 45.3091 21.4618 8.1474 1.7556 771.2418 521.4989 521.4989 613.9102 86.41 209.3581 153.9893 199.3636 222.5062 687.9404 185.7736 341.443 57.487 84.8603 0.0 0.0 0.0374 695.1064;
	0.2141 2.8932 22.5078 52.5452 0.0332 0.0 17.6758 3.3033 2.5407 24.3387 44.9898 67.1159 101.0426 64.1071 93.5693 35.2517 43.7382 46.3495 68.0733 62.1741 5.8919 0.0 72.1609 61.3715 34.5448 20.4321 2.4137 659.0363 379.7002 379.7002 613.8278 72.7455 226.911 160.0362 200.9846 162.0054 601.5583 195.7232 75.9432 92.5306 89.4308 0.0 0.0 0.2195 607.8245;
	0.6387 8.6303 35.2713 74.186 0.0 0.0026 25.544 4.7975 2.8283 24.4282 45.1551 67.3626 101.414 51.882 99.333 37.4231 46.4324 49.2045 86.0944 63.7627 8.5147 0.006 68.8551 73.2668 36.6553 14.0258 2.3354 577.942 368.0642 368.0642 517.0537 58.7714 286.9814 164.1254 162.6572 157.0407 661.9618 187.9306 101.3953 98.1838 92.4999 0.0287 1.7608 36.4052 668.8572;
	0.4176 5.6427 43.3563 69.4058 0.0 0.0 29.3751 2.8253 6.1676 20.4416 37.7859 56.3692 84.8635 37.8796 133.1328 50.157 62.2319 65.9472 86.3685 68.1885 9.7917 0.0 68.0194 66.5079 33.3869 14.6617 1.2938 457.4948 371.0464 371.0464 484.3705 54.6659 287.8951 175.5173 118.7577 158.3131 694.1974 161.3497 355.3819 89.4291 78.786 0.0 0.6726 32.2731 701.4286;
	0.5627 7.6027 39.5983 64.6969 5.7165 0.8852 30.7 2.9786 15.0187 16.9284 31.292 46.6815 70.2787 18.3823 144.4523 54.4215 67.523 71.5543 86.2794 69.1305 10.2333 2.0654 48.4867 63.2262 30.2596 27.0097 1.5008 429.3431 416.7974 416.7974 530.4875 56.0155 287.5981 177.9422 57.6309 177.8336 545.913 143.3116 206.6176 81.0525 60.2913 9.8193 15.716 0.6956 551.5996;
	0.0 0.0 47.9017 67.2829 0.0 0.4975 10.6639 5.6049 5.0243 19.6914 36.3993 54.3006 81.7492 6.6273 156.8472 59.0913 73.317 77.6941 87.6421 69.2026 3.5546 1.1608 69.8808 66.4087 36.6309 35.6201 2.9875 304.7899 295.3812 295.3812 364.4158 51.0172 292.1403 178.1277 20.7774 126.0293 382.6655 110.4342 49.8051 98.1185 62.475 5.519 5.7647 44.2939 386.6516;
];