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
	0.6812 9.2049 58.9904 65.328 4.2556 1.0722 0.0867 8.3472 0.169 18.8949 34.9269 52.1041 78.4425 4.5091 145.6868 54.8867 68.1001 72.1658 77.6151 69.6465 0.0289 2.5017 67.3798 74.9003 48.1607 50.5239 4.2361 189.9914 330.764 330.764 239.1688 46.7593 258.7169 179.2703 14.1368 141.126 377.8317 90.1035 37.0662 129.002 64.6688 11.894 6.5394 63.8645 381.7674;
	0.4539 6.1327 53.0631 63.0332 6.1776 0.575 1.2083 9.2869 3.3284 12.1296 22.4213 33.4482 50.356 4.6741 119.0451 44.8496 55.6467 58.9689 73.7875 69.0625 0.4028 1.3416 35.0932 70.288 49.1097 45.9987 5.6789 79.4283 218.7679 218.7679 169.0612 29.583 245.9584 177.7669 14.6539 93.341 286.1611 84.3589 88.6504 131.5439 80.7593 6.3785 14.6607 73.4222 289.142;
	0.3014 4.0724 61.7029 69.7069 5.6584 3.9527 2.8588 11.2113 5.2947 10.5856 19.5674 29.1907 43.9464 6.9137 97.3572 36.6788 45.5088 48.2258 66.3836 71.7883 0.9529 9.223 29.5338 79.9165 57.2713 56.6227 6.2723 21.3673 92.0635 92.0635 275.1566 16.6782 221.2788 184.7834 21.6753 39.2804 178.5744 5.4636 201.2045 153.4052 75.7321 43.8489 45.5175 87.7588 180.4345;
	0.5105 6.8973 72.1254 77.5878 7.7098 15.0264 0.3849 13.7925 2.337 17.1148 31.6365 47.1954 71.0524 1.5367 108.5695 40.9029 50.7499 53.7798 46.6191 70.5909 0.1283 35.0616 53.009 84.0715 69.1021 68.2949 7.6324 17.4671 39.3105 39.3105 61.0584 19.5279 155.3971 181.7012 4.8178 16.7725 34.8701 3.5817 48.4099 185.0948 78.5052 166.693 76.5535 140.4704 35.2333;
	0.5171 6.9872 80.5851 78.3126 9.1705 3.6595 1.6064 14.1195 2.677 17.4625 32.2791 48.1541 72.4957 0.6152 137.904 51.9545 64.4621 68.3106 56.1271 70.9837 0.5355 8.5389 50.3422 83.865 79.8272 68.933 8.8028 58.0452 91.7145 91.7145 52.8929 11.7563 187.0904 182.7122 1.9287 39.1315 84.7572 21.6843 29.3575 213.8229 73.9116 40.5963 22.4742 144.8019 85.64;
	0.5013 6.774 78.9015 64.6515 8.8822 4.0972 2.4697 12.7773 5.7495 10.5862 19.5685 29.1923 43.9489 0.3742 165.0639 62.1869 77.1578 81.7642 82.6843 72.311 0.8232 9.5602 40.8903 82.663 57.1084 65.7358 8.3534 30.2318 113.8629 113.8629 29.4021 11.6555 275.6143 186.1286 1.1731 48.5815 56.2408 5.3994 6.8568 152.9689 58.7741 45.4519 23.9026 136.0469 56.8266;
	0.5243 7.084 55.0016 41.9821 8.5498 2.7039 3.7139 8.6152 2.5039 9.0056 16.6467 24.8336 37.3868 0.8269 130.1428 49.0306 60.8342 64.4661 66.3775 71.1979 1.238 6.309 29.8925 60.8327 36.139 61.6841 4.7985 26.2483 46.2617 46.2617 11.2152 3.4397 221.2582 183.2635 2.5924 19.7383 16.0324 6.3395 0.2653 96.8009 32.0886 29.9949 30.6092 135.6072 16.1994;
	0.5146 6.953 33.401 30.8211 3.7653 3.1279 4.5414 7.9538 2.7591 6.0276 11.142 16.6217 25.0238 0.0075 71.4484 26.9178 33.398 35.3919 19.0694 51.622 1.5138 7.2983 14.8193 41.8189 36.4131 62.2409 5.0842 3.6781 25.1307 25.1307 4.1091 0.0 63.5647 132.8753 0.0236 10.7224 18.1841 4.7181 0.5882 97.535 11.8781 34.6984 23.0905 105.3658 18.3735;
	0.6441 8.7039 29.0528 26.31 4.2389 2.267 0.409 6.2 9.0005 17.6733 32.6689 48.7356 73.3711 0.4199 22.1127 8.3308 10.3364 10.9535 41.3632 20.6781 0.1363 5.2898 8.287 39.2788 30.7253 54.887 4.6686 2.7106 115.8329 115.8329 9.1499 0.29 137.8773 53.2254 1.3164 49.4221 77.0548 1.7478 0.0 82.3 23.553 25.149 38.0535 80.5648 77.8575;
	0.7578 10.2395 34.2957 29.9359 8.9322 9.835 5.3931 4.6792 26.0571 12.5582 23.2136 34.6301 52.1354 2.1636 11.5853 4.3647 5.4155 5.7388 16.7666 14.6332 1.7977 22.9483 11.3502 41.8039 32.4804 50.382 3.4208 29.749 176.0727 176.0727 17.9079 0.0 55.8888 37.666 6.7831 75.1244 41.4994 0.9265 49.0666 87.0012 19.9994 109.1029 54.9821 96.8229 41.9317;
	0.9143 12.3543 44.7653 16.6282 11.8245 4.017 5.8187 4.0451 18.2121 8.0064 14.7997 22.0783 33.2387 0.6147 49.2375 18.5499 23.0157 24.3897 21.6583 12.3098 1.9396 9.3729 28.6547 43.8375 48.1913 54.1704 1.6278 62.3722 87.7421 87.7421 18.4162 0.3289 72.1943 31.6856 1.9272 37.4366 181.3166 0.3429 60.3439 129.0838 70.4483 44.5616 18.9093 97.868 183.2053;
	1.7699 23.9155 69.1933 26.3951 13.9239 10.7054 4.4155 1.8675 13.0888 11.9666 22.1201 32.9988 49.6795 0.2791 34.7615 13.0962 16.249 17.2191 29.2528 10.8343 1.4718 24.9792 51.1951 60.8194 73.193 51.3443 9.8515 113.6577 115.7145 115.7145 19.7584 1.8303 97.5094 27.8875 0.8749 49.3715 133.8555 4.8292 47.2572 196.0526 74.0176 118.7584 27.3161 137.1203 135.2498;
	2.4143 32.6228 86.9793 62.5983 14.8549 19.3437 4.7961 2.5703 16.1082 25.0833 46.3661 69.1691 104.1337 0.1983 8.9296 3.3642 4.174 4.4232 4.3424 8.4871 1.5987 45.1352 33.2974 77.7526 77.3455 55.4518 11.1033 212.5327 177.1951 177.1951 3.521 0.675 14.4748 21.8457 0.6217 75.6032 200.3264 0.1226 40.3149 207.1756 39.0767 214.5858 115.6933 177.0338 202.4131;
	1.7992 24.3109 48.5214 51.8291 14.4612 20.0495 1.2154 2.9426 20.2055 14.672 27.121 40.4592 60.9111 0.706 18.1624 6.8426 8.4899 8.9967 4.947 9.4177 0.4051 46.7821 47.9225 82.3499 62.2288 35.1971 8.1295 178.7634 205.6224 205.6224 0.2614 0.0 16.4899 24.2411 2.2134 87.7322 180.519 6.3922 4.9229 166.6843 20.7722 222.4153 84.2445 146.3614 182.3994;
	2.105 28.4428 12.5813 16.8714 8.71 0.416 0.1024 1.0433 11.2116 13.4983 24.9514 37.2226 56.0384 0.0952 4.9736 1.8738 2.3249 2.4637 9.7639 12.576 0.0341 0.9706 28.1937 27.2052 34.4306 4.0293 1.3938 274.0205 255.9232 255.9232 84.9143 2.2621 32.5465 32.3706 0.2985 109.1939 260.027 11.5543 1.3971 92.2247 8.7398 4.6144 82.3844 106.043 262.7356;
	2.889 39.0364 84.6953 2.5887 12.5315 0.0893 0.2578 0.1004 9.864 3.7115 6.8606 10.2347 15.4083 0.0 6.9366 2.6133 3.2424 3.436 3.3991 39.8753 0.0859 0.2084 43.914 4.2869 7.1913 1.5318 0.2061 382.5227 276.1522 276.1522 163.6715 7.3245 11.3303 102.6391 0.0 117.8249 321.6879 36.146 12.8649 19.2625 1.4392 0.9907 0.9085 176.2193 325.0388;
	3.4339 46.3996 36.3613 23.8826 14.6916 2.6665 6.8495 2.1673 22.9687 19.3295 35.7303 53.3026 80.2468 3.2635 6.0894 2.2941 2.8464 3.0164 3.8564 69.4897 2.2832 6.2218 18.3597 68.1596 23.7692 3.1676 2.1481 379.9454 381.3665 381.3665 184.1965 21.3014 12.8546 178.8667 10.2317 162.7164 476.611 63.4461 53.1664 63.6674 2.9701 29.5802 142.2257 227.9564 481.5757;
	2.8075 37.9351 39.4676 16.1592 14.9748 18.734 9.6254 1.1484 5.8966 2.626 4.8541 7.2414 10.9019 0.2458 5.2028 1.9601 2.432 2.5772 1.065 9.4646 3.2085 43.7127 15.4203 82.6081 33.9999 6.4074 2.8123 581.3626 501.7195 501.7195 334.1736 34.2989 3.55 24.362 0.7706 214.067 610.4759 90.1662 19.4045 91.0712 5.8439 207.8227 115.1734 225.4096 616.8351;
	3.0671 41.4427 85.8649 2.3499 14.7486 23.8319 4.4889 0.3275 14.6268 9.2838 17.1609 25.6007 38.5417 6.2294 0.7097 0.2674 0.3317 0.3515 0.4634 44.8207 1.4963 55.6078 33.3527 6.0953 0.9602 61.0841 0.8509 809.9392 480.0291 480.0291 371.1046 47.2043 1.5446 115.3687 19.5299 204.8124 677.1472 73.8284 0.0 2.572 0.886 264.3754 108.3035 205.2946 684.2008;
	3.1044 41.9474 27.8722 18.5242 14.3351 0.7978 19.3783 1.2219 26.7779 22.3017 41.2244 61.4987 92.586 5.9483 0.5752 0.2167 0.2689 0.2849 4.5705 21.9792 6.4594 1.8614 59.6978 10.1206 12.1112 55.8232 2.6352 749.3489 459.8288 459.8288 351.0894 46.4931 15.2351 56.5746 18.6486 196.1936 585.8857 76.4302 4.3289 32.4406 5.299 8.8498 115.6734 182.8657 591.9887;
	3.3624 45.4328 88.0878 27.6117 14.1767 2.6065 10.5384 2.5723 27.4945 24.1701 44.678 66.6508 100.3424 9.544 12.0979 4.5578 5.6551 5.9927 3.723 28.5563 3.5128 6.0819 71.8014 83.4197 12.0377 61.8301 6.799 659.9679 411.1527 411.1527 262.2713 58.9541 12.41 73.504 29.9218 175.4251 591.2844 76.7731 26.4631 32.2438 11.0395 28.9149 113.0714 175.7402 597.4436;
	3.7213 50.2828 93.0889 69.6444 14.2336 23.1938 12.7322 15.8633 26.6654 25.5195 47.1724 70.3719 105.9446 12.175 3.9684 1.4951 1.855 1.9657 0.3647 54.288 4.2441 54.1189 57.7213 85.3086 103.3748 73.1489 7.5823 722.9987 329.0189 329.0189 231.7247 69.0661 1.2156 139.7375 38.1703 140.3814 536.8795 104.6037 0.9643 276.8967 14.7553 257.2965 93.5957 204.1524 542.472;
	3.8104 51.4867 91.7108 116.8493 14.3756 26.4729 14.2263 16.3033 26.2211 27.2176 50.3112 75.0545 112.9941 6.7737 51.841 19.5308 24.2326 25.6794 2.3401 67.4544 4.7421 61.77 69.2438 84.8469 98.8476 73.4453 8.2335 724.8425 365.5026 365.5026 315.7268 51.9396 7.8004 173.6278 21.2364 155.9478 467.2186 102.9498 0.0 264.7705 11.7107 293.6722 156.4492 197.4168 472.0855;
	3.5732 48.2812 90.2196 111.7531 14.5646 16.3172 13.1729 17.0245 26.6641 26.7988 49.5373 73.8999 111.2558 8.9428 49.7064 18.7266 23.2349 24.622 4.452 56.6249 4.391 38.0734 64.9531 86.0356 100.903 73.1295 7.84 692.0221 406.473 406.473 280.9396 52.5765 14.8402 145.7527 28.0368 173.4285 454.7613 80.8015 299.7096 270.2758 11.1996 181.0117 151.6207 216.4114 459.4984;
];
