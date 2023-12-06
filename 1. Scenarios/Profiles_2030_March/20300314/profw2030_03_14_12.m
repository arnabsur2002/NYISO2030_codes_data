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
	3.5475 47.9341 86.6999 110.0558 14.5256 13.9371 14.7621 17.8624 26.7426 25.1977 46.5775 69.4845 104.6086 4.5761 18.481 6.9626 8.6388 9.1545 12.5347 21.8597 4.9207 32.5199 59.6054 84.4598 98.1787 74.8446 8.0681 698.4679 385.2142 385.2142 212.9662 34.7831 41.7825 56.267 14.3467 164.3581 521.6307 56.4915 303.5597 262.9785 14.0987 154.6088 115.425 241.6449 527.0644;
	3.5356 47.7733 87.54 109.974 14.2186 16.2693 13.1393 16.953 25.7039 23.9403 44.2533 66.0173 99.3886 0.7376 7.3826 2.7814 3.4509 3.657 8.7341 7.9031 4.3798 37.9617 53.2642 82.7539 94.4953 72.7865 6.7376 692.9044 361.0051 361.0051 174.7332 29.4031 29.1137 20.3426 2.3125 154.0288 487.8408 51.9887 284.1635 253.1125 11.9631 180.4806 107.7485 235.4262 492.9225;
	3.2659 44.1297 89.9899 112.4401 14.6744 13.8586 12.8421 17.6489 26.7738 24.7332 45.719 68.2038 102.6804 2.4011 9.8586 3.7142 4.6083 4.8834 16.7231 17.3735 4.2807 32.3368 61.7752 85.6575 97.4571 75.753 8.2499 655.1111 331.4468 331.4468 156.0668 31.602 55.7436 44.7195 7.5276 141.4173 411.5001 37.185 240.714 261.0459 7.0463 153.7384 90.3935 230.7631 415.7866;
	2.9746 40.1936 91.0501 106.6271 14.8399 12.9369 11.8383 17.5252 25.3944 24.2209 44.772 66.791 100.5536 5.5718 4.3409 1.6354 2.0291 2.1503 10.315 14.3156 3.9461 30.1861 54.2778 86.0717 100.5318 76.3651 9.7981 509.6413 254.7761 254.7761 157.999 26.5625 34.3834 36.8485 17.4683 108.7045 306.4042 27.5858 177.7021 269.2816 1.0962 143.5133 80.3214 222.2335 309.5959;
	2.6039 35.1845 94.3756 114.4807 14.8317 15.7972 10.6734 18.5673 15.794 23.3486 43.1594 64.3854 96.9319 11.7457 7.5794 2.8555 3.5429 3.7544 20.1881 20.6955 3.5578 36.86 55.4365 88.7385 103.7683 76.2852 10.2257 398.7448 203.0026 203.0026 152.496 24.712 67.2937 53.2704 36.8243 86.6144 193.2515 25.3343 167.6441 277.9509 12.2768 175.2431 92.01 232.2636 195.2645;
	3.2566 44.0035 94.4934 117.785 15.1962 24.0673 11.531 18.9365 10.3185 21.7891 40.2768 60.085 90.4577 26.0913 0.0 0.0 0.0 0.0 29.237 14.5911 3.8437 56.157 59.4993 88.0004 103.2105 76.4342 9.3155 303.9315 191.7823 191.7823 130.3094 20.7699 97.4566 37.5575 81.7996 81.8271 162.7275 22.9935 186.7894 276.4566 13.0563 266.9864 103.8975 233.4289 164.4226;
	2.6437 35.7224 94.5698 116.3885 14.8321 23.9469 11.7181 17.8664 12.3515 28.4684 52.6234 78.5037 118.1869 38.1643 12.2452 4.6133 5.7239 6.0657 34.8374 31.4945 3.906 55.876 70.5083 88.0334 103.8089 75.4647 12.2146 241.2666 217.7358 217.7358 97.8883 12.5922 116.1248 81.0669 119.6503 92.9006 169.2092 15.0641 161.1902 278.0595 10.8007 265.6505 105.2247 249.6856 170.9718;
	1.8669 25.2261 73.9204 116.1097 14.8816 19.1241 11.7081 17.7197 16.7598 29.1151 53.8188 80.2871 120.8717 38.2977 20.0521 7.5545 9.3732 9.9328 41.1368 47.128 3.9027 44.6228 71.6483 88.4265 100.3941 74.7578 12.8249 131.087 172.3096 172.3096 90.1954 1.3108 137.1227 121.3076 120.0683 73.5188 122.7113 14.5643 168.7064 268.9129 7.1259 212.1498 96.6088 209.8864 123.9895;
	2.6758 36.1556 84.8076 106.2607 14.1734 24.0982 10.613 17.5347 20.0243 28.0654 51.8785 77.3925 116.5139 46.5338 14.386 5.4198 6.7246 7.1261 41.6504 49.2755 3.5377 56.2291 71.3813 84.1558 97.2582 71.283 12.2019 127.1748 160.7714 160.7714 94.4739 2.9369 138.8348 126.8352 145.8897 68.5958 124.7128 15.8663 139.9801 260.5129 12.4798 267.329 83.8804 227.2699 126.0119;
	1.884 25.4576 84.0454 109.0466 12.2388 13.4408 10.0424 18.2643 25.8025 28.6162 52.8966 78.9113 118.8005 46.4577 0.1885 0.071 0.0881 0.0934 41.2056 41.9217 3.3475 31.3619 70.4571 83.4345 98.076 74.8591 13.002 238.051 250.1431 250.1431 106.6716 6.2381 137.3518 107.9065 145.6513 106.7277 222.6786 15.8839 40.3178 262.7037 0.0002 149.1035 79.6429 210.3886 224.9982;
	1.4982 20.2434 76.5211 102.5364 11.7802 24.1708 14.3668 17.109 25.958 28.4404 52.5717 78.4266 118.0709 55.9045 0.0 0.0 0.0 0.0 40.7103 33.216 4.7889 56.3985 68.2668 84.1817 89.8981 73.777 11.8783 358.8201 309.9234 309.9234 150.582 6.2807 135.7011 85.4981 175.2683 132.234 310.9717 20.5665 170.0749 240.7985 2.2142 268.1348 88.7309 185.4837 314.211;
	1.4339 19.3745 80.2245 88.8088 10.5955 28.0734 19.7217 16.5478 26.1063 28.2339 52.1899 77.857 117.2133 52.853 0.1496 0.0564 0.0699 0.0741 60.2218 42.5539 6.5739 65.5046 69.7206 81.5278 83.2999 71.5002 11.7668 447.023 368.5602 368.5602 259.9936 13.5694 200.7392 109.5338 165.7013 157.2524 405.1267 38.7795 184.9555 223.1247 1.766 311.4278 98.1431 173.3381 409.3468;
	2.2501 30.4039 80.541 76.2501 12.4867 28.7953 20.5195 15.9764 26.349 27.6354 51.0836 76.2067 114.7288 54.0148 32.2172 12.1376 15.0596 15.9587 71.5314 48.8492 6.8398 67.189 66.9308 81.8188 89.436 70.4505 9.3075 590.4534 432.0389 432.0389 286.3444 18.6383 238.4379 125.7381 169.3436 184.3366 569.3693 53.3228 196.6656 239.5606 0.234 319.4357 131.8827 196.0371 575.3002;
	3.3779 45.6423 85.2555 101.7145 14.1082 30.0085 21.1623 17.0978 26.0975 28.0972 51.9373 77.4802 116.646 53.0927 50.1973 18.9115 23.4643 24.8652 80.3502 41.8826 7.0541 70.0199 62.9932 84.2383 88.4298 72.3594 10.9711 771.4437 581.6936 581.6936 381.1131 24.953 267.8341 107.806 166.4526 248.1893 707.4476 80.2899 269.286 236.8657 0.0401 332.8947 137.8595 241.4744 714.8169;
	3.4542 46.6735 85.0162 100.7409 14.0409 32.7369 25.755 17.309 25.8972 23.6486 43.7141 65.2129 98.1776 58.8688 55.5438 20.9258 25.9635 27.5135 77.0861 36.6702 8.585 76.386 30.4833 84.4988 86.4978 70.1999 12.3165 905.2926 654.8224 654.8224 462.4004 29.2375 256.9538 94.3893 184.5617 279.3909 892.3515 108.4063 404.8831 231.6904 1.0727 363.161 148.8071 234.8422 901.6469;
	3.434 46.401 86.1172 98.5844 14.2845 32.455 27.5928 17.2244 26.0759 12.9344 23.909 35.6676 53.6973 56.3769 97.2058 36.6217 45.4381 48.1508 82.4671 42.2124 9.1976 75.7283 22.309 81.5114 86.7238 72.3671 12.4151 987.2866 696.5946 696.5946 593.2169 39.5656 274.8904 108.6549 176.7492 297.2137 922.9754 153.7311 361.1162 232.296 0.3065 360.0341 165.3188 252.9495 932.5897;
	2.7144 36.6772 85.7607 103.7584 14.2158 31.8534 28.5405 17.3307 21.9999 17.8664 33.0257 49.2678 74.1725 55.3631 124.1572 46.7755 58.0363 61.5011 84.3686 62.0847 9.5135 74.3247 15.2401 81.8423 90.4166 72.2535 12.3036 971.6427 685.8377 685.8377 618.3316 65.8544 281.2288 159.8061 173.5709 292.6241 895.5488 199.0291 383.2682 242.1872 0.0 353.3608 191.5004 264.1349 904.8774;
	3.2705 44.1916 87.2749 96.2891 14.2569 31.8624 27.5704 17.5771 24.9069 17.8912 33.0717 49.3364 74.2757 58.8813 135.221 50.9437 63.208 66.9816 82.3841 65.6565 9.1901 74.3457 33.2358 82.2317 87.0856 70.0931 12.8967 1059.1588 710.6841 710.6841 634.0275 84.7254 274.6136 169.0 184.6009 303.2252 926.136 217.0138 428.1011 233.2649 91.4432 353.4608 172.8344 229.3829 935.7832;
	2.2754 30.7457 78.3818 82.6372 13.9709 33.0318 29.4354 11.3024 26.3193 20.6543 38.1792 56.9559 85.7468 60.4277 158.9314 59.8765 74.2912 78.7265 85.5538 66.6573 9.8118 77.0741 51.7015 81.0359 90.1493 56.6195 12.1858 1105.7891 747.7494 747.7494 594.6915 99.7887 285.1792 171.5759 189.4491 319.0397 959.1796 220.352 439.1546 241.4715 107.8475 366.4325 176.3234 213.2174 969.1711;
	2.0507 27.7097 84.0122 84.8045 14.4613 31.9389 29.6598 6.7463 25.982 21.1526 39.1003 58.3299 87.8154 61.7021 180.2342 67.9022 84.249 89.2788 85.2463 67.2526 9.8866 74.524 52.0295 3.0649 5.9711 52.9869 9.9002 1148.738 751.3292 751.3292 539.1905 96.4393 284.1544 173.1084 193.4444 320.5671 987.0077 217.1779 441.587 15.9939 113.1157 354.3085 176.6694 171.0949 997.2891;
	3.6252 48.9847 87.75 113.2924 14.9522 33.5016 30.7552 18.2542 17.8666 23.0008 42.5165 63.4263 95.488 63.2363 186.6346 70.3135 87.2408 92.4492 85.5687 68.127 10.2517 78.1703 48.8491 70.3406 100.0489 68.3153 13.67 1168.8085 760.2638 760.2638 637.3101 106.4633 285.2291 175.359 198.2542 324.3792 999.0234 224.9277 461.1413 267.9881 117.1582 371.644 199.9096 230.0621 1009.4299;
	3.4076 46.0445 84.894 104.1808 14.6859 31.9893 29.9796 17.7095 7.6546 23.7017 43.8123 65.3593 98.398 58.1923 177.5826 66.9032 83.0095 87.9653 84.4188 68.9338 9.9932 74.6417 54.4067 84.6533 99.4021 72.411 13.5204 1225.0184 748.1948 748.1948 662.8879 112.3105 281.396 177.4359 182.4407 319.2298 1047.6909 240.3974 444.4813 266.2557 118.4929 354.8678 197.4158 173.9337 1058.6043;
	3.6088 48.7632 89.2451 114.4367 15.0537 32.2682 31.1165 17.7223 19.3367 21.2353 39.2531 58.5579 88.1586 61.6748 184.615 69.5526 86.2968 91.4488 86.8429 57.3392 10.3722 75.2925 54.805 83.5647 83.3832 73.6952 13.6202 1182.5256 724.8559 724.8559 593.6638 112.4402 289.4762 147.5913 193.3588 309.2719 1043.0418 226.9501 462.4856 223.3477 117.1075 357.9619 202.3979 213.0183 1053.9068;
	3.6611 49.4696 90.0322 114.1801 15.2672 31.9384 32.4612 18.2606 10.3958 18.5949 34.3724 51.2768 77.197 60.189 184.0704 69.3474 86.0422 91.179 88.1052 60.4416 10.8204 74.5229 53.282 85.9159 104.2607 73.5424 13.7348 1203.1439 721.7353 721.7353 646.8259 110.3494 293.684 155.5768 188.7008 307.9404 1042.8636 238.6104 450.7524 279.2697 119.9182 354.303 202.1155 257.8999 1053.7268;
];