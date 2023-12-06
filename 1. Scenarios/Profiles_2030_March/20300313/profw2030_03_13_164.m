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
	0.8158 11.0233 53.8833 63.6183 7.5159 3.9528 0.1363 8.2698 2.1062 15.5853 28.8092 42.9777 64.7027 24.7838 145.6303 54.8654 68.0737 72.1378 74.071 70.0832 0.0454 9.2233 61.1548 73.2502 45.5551 44.9355 4.1909 183.4556 363.5117 363.5117 234.2531 47.6164 246.9032 180.3943 77.7006 155.0983 414.6335 85.6478 5.1031 122.0226 59.5981 43.8501 49.9703 58.686 418.9526;
	0.542 7.3239 52.084 62.4017 6.4962 2.0741 0.0 11.004 1.0521 9.3914 17.3598 25.8974 38.9884 27.1509 118.7263 44.7295 55.4977 58.8109 71.0576 70.0568 0.0 4.8397 31.43 73.6715 49.4922 48.3145 6.3675 94.7957 263.475 263.475 163.4025 29.5653 236.8588 180.3265 85.1216 112.416 327.4537 87.1244 0.0 132.5684 76.0755 23.0091 16.9029 72.9389 330.8647;
	0.343 4.6353 62.4969 67.1953 6.0797 1.5877 0.0 11.3187 0.0 7.5135 13.8887 20.7192 31.1926 5.348 68.0797 25.6486 31.8233 33.7232 61.426 64.7359 0.0 3.7046 15.7553 81.8638 52.6835 56.9331 6.6282 185.346 256.9241 256.9241 52.7804 16.1824 204.7533 166.6304 16.7666 109.6209 196.7332 2.1918 0.0 141.1165 71.3002 17.6126 4.5317 96.9729 198.7825;
	0.4316 5.8322 70.2479 73.5129 8.5775 1.4074 0.0059 13.8567 0.0 8.1264 15.0215 22.4091 33.7368 19.3592 83.5061 31.4604 39.0342 41.3646 43.4001 62.9634 0.002 3.2839 41.2383 81.5243 57.7334 67.751 7.7794 185.8333 487.8516 487.8516 76.7395 18.2437 144.667 162.0678 60.6938 208.15 635.2094 11.0932 0.0 154.6431 73.6143 15.6127 4.5618 142.7701 641.8262;
	0.492 6.6478 81.9905 71.7071 10.4697 1.6859 0.385 13.8121 0.0 4.1463 7.6643 11.4337 17.2133 51.3641 118.4883 44.6398 55.3864 58.6931 55.6092 62.6815 0.1283 3.9338 24.8543 78.9846 70.0808 70.5668 8.7369 145.4227 531.0185 531.0185 141.5378 11.7008 185.3639 161.3423 161.0334 226.5679 748.9754 17.1065 0.0 187.7163 76.2691 18.7022 3.0894 150.829 756.7772;
	0.5154 6.9644 78.4015 60.6449 10.5214 4.0903 0.647 11.9127 0.0 6.0212 11.1301 16.6039 24.9971 48.3921 138.8642 52.3163 64.9109 68.7862 79.373 66.5067 0.2157 9.544 14.6983 72.6052 49.6197 66.4346 7.9567 52.5582 235.3535 235.3535 32.6938 10.0119 264.5767 171.1883 151.7156 100.4175 171.5512 6.8969 0.0 132.91 54.1829 45.3751 25.3672 136.4361 173.3382;
	0.4889 6.6062 56.2182 42.2597 9.8758 3.2247 3.9635 8.0814 1.9182 6.0185 11.1251 16.5965 24.9859 14.6547 123.1199 46.3847 57.5514 60.9873 67.4775 65.5582 1.3212 7.5242 20.1793 54.0477 31.303 62.0809 4.5501 35.9723 54.4002 54.4002 20.1371 5.686 224.925 168.747 45.9444 23.2108 32.5454 16.4628 0.0 83.8472 29.3591 35.7722 33.098 143.2082 32.8844;
	0.5495 7.4255 35.4996 30.2772 4.1292 3.0868 4.7784 7.1291 2.012 4.2952 7.9396 11.8443 17.8315 7.9357 59.6938 22.4893 27.9034 29.5692 21.2075 41.5728 1.5928 7.2025 6.5615 36.9152 25.4914 59.5937 4.4784 8.6209 60.2808 60.2808 18.801 0.2166 70.6916 107.0084 24.8794 25.7198 21.1776 4.3828 11.81 68.2806 11.8191 34.2427 33.9977 106.8493 21.3982;
	0.64 8.6478 29.9391 25.4113 3.536 2.353 1.4041 6.2924 1.4477 0.2246 0.4152 0.6193 0.9324 12.0753 10.9617 4.1297 5.1239 5.4299 44.3087 10.4296 0.468 5.4904 1.7749 38.3108 28.4679 52.9657 4.7339 6.0103 116.1512 116.1512 50.3343 0.3814 147.6957 26.8457 37.8577 49.5578 16.6992 12.533 1.5343 76.2533 25.1833 26.1029 2.5003 83.0485 16.8731;
	0.5304 7.1662 31.0558 23.9602 7.2355 0.0011 0.077 4.0023 3.8834 1.8906 3.4947 5.2134 7.8487 4.9789 4.915 1.8517 2.2975 2.4346 29.2617 5.662 0.0257 0.0026 10.0641 34.9535 23.3375 42.2572 2.9772 0.0 34.0744 34.0744 0.5889 0.6339 97.5391 14.574 15.6097 14.5384 0.0 3.3648 0.0 62.5111 1.4504 0.0123 44.7139 95.5107 0.0;
	0.6576 8.8851 40.9816 1.6504 10.6769 0.0 0.4652 3.4458 4.3373 10.947 20.2355 30.1873 45.4468 5.397 0.0086 0.0033 0.004 0.0043 75.3454 7.4748 0.1551 0.0 32.8022 42.5522 41.1848 51.3512 1.3961 0.0 59.3784 59.3784 12.2199 0.2558 251.1512 19.2402 16.9203 25.3348 26.5038 5.27 0.6095 110.3163 2.0833 0.0 0.0 100.6734 26.7799;
	1.3788 18.6313 59.5183 1.1343 13.2198 0.0194 0.5698 0.5781 11.1409 11.6555 21.5449 32.1408 48.3878 8.3356 0.0 0.0 0.0 0.0 50.9708 7.5877 0.1899 0.0452 55.8935 57.0578 3.1396 50.4544 1.6991 90.4308 98.1227 98.1227 29.6579 2.8782 169.9027 19.5307 26.1334 41.8657 98.8843 10.6719 0.5266 8.4095 1.9534 0.2149 0.0 137.7383 99.9144;
	1.8774 25.3684 81.1983 0.7605 13.9834 0.1984 4.8489 0.0956 23.0366 24.5327 45.3483 67.6508 101.8479 28.2543 0.0 0.0 0.0 0.0 25.6819 4.5208 1.6163 0.463 34.7037 67.7462 65.8007 53.0662 0.7364 197.0469 160.9321 160.9321 50.8376 2.7815 85.6063 11.6365 88.5812 68.6644 165.593 8.4087 69.947 176.2518 8.1413 2.2013 105.4669 176.0605 167.3179;
	1.6491 22.2829 3.7041 0.0 13.6249 18.3632 6.0964 0.0074 23.1264 4.4568 8.2383 12.2899 18.5024 3.8403 0.0 0.0 0.0 0.0 14.5771 4.9963 2.0321 42.8475 46.8268 8.3466 2.0205 35.2192 0.7402 181.3443 212.1858 212.1858 34.4793 1.5716 48.5902 12.8605 12.0397 90.5326 187.2808 12.1596 90.722 5.4121 5.4629 203.7093 79.2634 139.3248 189.2316;
	2.4212 32.7158 13.6346 2.738 9.5486 2.0634 15.615 0.3606 22.7187 7.8829 14.5715 21.7378 32.7261 12.3554 0.0 0.0 0.0 0.0 17.9114 0.0033 5.205 4.8145 31.4857 12.1445 14.9471 27.7264 0.8317 273.6445 272.9221 272.9221 114.8007 6.1078 59.7048 0.0084 38.7359 116.4468 261.108 32.99 93.3081 40.0369 22.9963 22.8897 89.3847 115.1535 263.8279;
	3.3121 44.7533 84.3813 0.0 13.5631 0.6634 10.8182 0.002 21.6782 9.4845 17.5319 26.1541 39.3749 6.7376 0.0 0.0 0.0 0.0 3.6414 0.2923 3.6061 1.548 47.2878 12.5484 2.2399 4.4588 0.4018 409.7426 291.2633 291.2633 178.5168 10.0193 12.1381 0.7525 21.1232 124.2724 313.5996 41.0513 66.652 5.9997 16.4331 7.3597 19.5796 190.1408 316.8662;
	3.2769 44.2787 0.0 0.0 13.9774 0.0 13.9762 0.0 7.665 0.4444 0.8215 1.2255 1.845 2.8747 0.0 0.0 0.0 0.0 2.0753 0.0 4.6587 0.0 1.2123 1.2671 0.0 0.1994 0.0 398.7719 370.471 370.471 193.2067 17.1839 6.9175 0.0 9.0125 158.0676 438.7825 71.2453 39.4173 0.0 10.3761 0.0 136.9185 225.2175 443.3532;
	2.648 35.7809 0.0 0.0 13.4957 17.7484 9.7044 0.0 5.3056 0.073 0.135 0.2014 0.3033 1.8236 0.0 0.0 0.0 0.0 4.8487 0.184 3.2348 41.4128 15.2396 0.8659 0.0 0.5929 0.0 543.6283 476.4867 476.4867 326.353 30.3733 16.1623 0.4737 5.7172 203.301 530.3641 87.9182 10.5388 0.0 22.9572 196.8884 114.7354 220.1674 535.8887;
	3.025 40.8745 83.1445 0.0 14.2899 25.3178 2.341 0.0233 3.5014 8.1622 15.0877 22.5079 33.8855 6.4163 6.4512 2.4304 3.0156 3.1956 35.4432 39.174 0.7803 59.0748 30.4714 9.2034 0.1153 60.786 0.7791 732.4548 418.6441 418.6441 342.3217 35.8237 118.1438 100.8341 20.1159 178.6215 574.5823 58.447 11.3374 0.3087 22.5921 280.8586 113.9248 222.9216 580.5675;
	3.13 42.2935 18.8837 11.097 15.0483 11.0075 18.4573 1.1084 26.4033 21.5923 39.913 59.5424 89.6408 5.7476 4.2474 1.6002 1.9854 2.1039 25.7341 18.8353 6.1524 25.6842 58.1357 35.5474 6.0873 56.3651 2.3317 723.603 428.2328 428.2328 329.7919 42.1268 85.7803 48.4822 18.0196 182.7127 554.8064 70.9644 0.0 16.3052 62.3252 122.1102 119.5248 200.1865 560.5856;
	3.323 44.9008 87.6169 10.9416 14.2912 2.4367 0.0 2.8934 26.1933 21.0997 39.0024 58.184 87.5956 6.7112 19.1951 7.2317 8.9726 9.5083 27.1462 21.79 0.0 5.6856 66.7667 84.1884 11.1224 64.3411 8.593 631.7016 371.3783 371.3783 235.8179 49.0839 90.4872 56.0875 21.0407 158.4547 552.2846 73.7725 0.0 29.792 53.6097 27.0308 108.8419 196.9517 558.0375;
	3.6672 49.5515 92.2971 26.1709 14.4473 23.116 11.2476 15.3116 25.9786 22.8349 42.2099 62.9689 94.7993 9.3969 0.0 0.0 0.0 0.0 10.3997 40.3573 3.7492 53.9373 50.7191 84.5153 99.9224 70.2972 6.9268 709.7013 299.2085 299.2085 210.0976 52.7905 34.6658 103.8797 29.4607 127.6623 494.5508 106.0564 0.0 267.6493 16.0572 256.4331 19.6836 223.2378 499.7023;
	3.6326 49.0847 91.4501 111.4718 14.2185 25.3684 13.9948 16.5043 26.2828 23.0948 42.6904 63.6857 95.8785 7.8183 36.2225 13.6466 16.9319 17.9428 9.6172 44.9704 4.6649 59.1929 53.2726 84.5369 94.0967 69.4359 7.7678 726.1672 330.7319 330.7319 275.5292 42.1827 32.0574 115.7539 24.5114 141.1123 435.857 101.6813 0.0 252.0448 13.308 281.4199 131.2741 210.4874 440.3972;
	3.5344 47.7572 91.1935 107.7371 14.6547 16.2206 12.381 17.5424 27.7174 25.4865 47.1114 70.281 105.8076 11.2578 29.8108 11.231 13.9348 14.7667 6.6565 27.6095 4.127 37.848 56.951 87.6663 101.2569 70.2089 7.5283 669.6471 366.2165 366.2165 243.9065 45.0661 22.1884 71.0669 35.2949 156.2524 432.9006 81.2893 306.9488 271.2237 11.6107 179.9402 133.0098 230.2696 437.41;
];