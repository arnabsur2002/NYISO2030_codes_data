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
	3.641 49.1975 90.3607 117.5383 15.3226 15.4743 15.7827 18.3199 28.3798 25.3595 46.8766 69.9307 105.2803 7.7053 15.3197 5.7716 7.1611 7.5886 21.0878 19.982 5.2609 36.1068 62.0036 88.4309 102.8299 69.4957 7.4854 761.8672 441.623 441.623 233.0542 37.591 70.2925 51.4338 24.1572 188.4258 565.4597 52.1412 331.6716 275.4373 13.8779 171.6619 123.1225 218.2705 571.3499;
	3.4621 46.7804 90.6249 114.2945 14.7868 16.4174 14.9801 17.6676 27.7658 25.4947 47.1265 70.3035 105.8415 6.5039 7.0254 2.6468 3.2839 3.48 14.1423 6.9636 4.9934 38.3073 67.0949 87.5163 101.5216 70.6589 6.3287 771.047 411.1727 411.1727 193.7582 31.9173 47.1409 17.9243 20.3906 175.4337 565.4645 49.1058 322.6424 271.9329 12.5841 182.1241 107.4015 207.7126 571.3548;
	3.3484 45.2446 88.3945 110.43 14.4942 13.8219 13.4372 17.9078 28.0465 24.6461 45.558 67.9636 102.3189 8.4601 6.7432 2.5405 3.1521 3.3402 23.42 16.6126 4.4791 32.2511 67.1259 84.2511 98.3597 70.897 7.7747 696.5501 355.7391 355.7391 167.1366 31.602 78.0666 42.7609 26.5235 151.782 458.6564 31.0074 247.5456 263.4635 11.1158 153.3309 86.5161 197.2686 463.4341;
	2.9643 40.0545 88.6311 107.084 14.4725 12.6238 12.0162 18.0631 27.5746 23.7856 43.9673 65.5905 98.7462 11.4419 4.3551 1.6408 2.0358 2.1573 13.6732 9.6951 4.0054 29.4555 67.4608 83.4026 99.5692 73.4003 9.2321 534.9508 273.4847 273.4847 166.4206 26.7984 45.5773 24.9552 35.8718 116.6868 335.3766 26.2724 189.6018 266.7031 0.2295 140.0398 71.6139 194.6963 338.8701;
	2.2075 29.8276 86.504 110.3764 14.539 13.161 10.807 18.2545 19.8046 22.1921 41.0217 61.1963 92.1307 14.8317 7.1902 2.7089 3.361 3.5617 19.9195 14.6442 3.6023 30.7091 58.8725 85.4439 100.7543 73.4731 9.4368 384.5917 203.382 203.382 154.0699 23.3995 66.3983 37.6942 46.4994 86.7763 198.0649 28.7369 182.2233 269.8775 7.6312 145.9997 68.7987 198.4807 200.128;
	2.7861 37.6465 87.4463 111.2073 14.4232 20.6388 11.3821 17.8594 11.5776 20.6248 38.1247 56.8745 85.6242 28.7319 8.451 3.1839 3.9504 4.1862 33.7354 16.6013 3.794 48.1572 58.1726 84.4129 100.2531 72.5887 6.9219 287.917 181.8825 181.8825 136.396 15.9676 112.4513 42.7318 90.0783 77.6032 152.3561 27.8791 203.5376 268.5352 8.2628 228.9531 75.32 194.3483 153.9432;
	2.2613 30.5546 86.9523 109.5843 14.025 22.5724 12.8455 16.818 14.6517 26.5104 49.004 73.1044 110.0582 42.4882 17.3139 6.5229 8.0932 8.5764 40.709 33.2677 4.2818 52.6688 68.4734 85.22 100.197 72.1571 10.4273 199.826 197.688 197.688 110.8987 9.4822 135.6966 85.6311 133.2061 84.3469 155.5107 18.071 175.3219 268.3849 6.2048 250.4027 81.9313 216.7381 157.1306;
	1.0482 14.1633 68.8503 108.2829 14.3198 18.3048 12.5183 16.8544 19.0141 27.5888 50.9974 76.0782 114.5352 44.6451 23.2982 8.7775 10.8906 11.5407 52.9315 51.7764 4.1728 42.7112 71.6101 85.357 98.3724 71.1357 11.27 97.6106 163.5497 163.5497 96.8196 5.563 176.4385 133.2727 139.9683 69.7812 97.4866 17.426 175.7725 263.4974 2.3176 203.0612 73.3723 199.5987 98.5021;
	2.4135 32.6117 83.4139 98.4722 14.3731 21.5386 10.3858 17.8748 20.5846 27.7458 51.2878 76.5113 115.1873 42.9945 20.5035 7.7246 9.5842 10.1564 63.7408 51.9827 3.4619 50.2567 71.3828 87.852 98.4613 71.1301 12.0332 74.1805 142.8005 142.8005 86.7669 5.3476 212.4692 133.8036 134.7935 60.9282 96.5951 17.3684 120.275 263.7355 14.2549 238.9345 68.6688 234.4996 97.6013;
	1.5751 21.2833 78.2151 95.6616 11.8589 9.0835 9.5653 17.701 24.7245 27.9604 51.6844 77.103 116.0781 40.6844 50.7747 19.1291 23.7342 25.1512 69.1849 46.0228 3.1884 21.1948 72.1434 83.3556 95.7987 69.8483 12.1022 168.3849 206.7909 206.7909 84.558 5.2114 230.6165 118.4628 127.5511 88.2308 158.9683 14.5063 3.5847 256.6035 4.6628 100.7661 51.6598 197.231 160.6242;
	1.4514 19.6118 72.8247 95.0556 11.7532 21.5088 12.9571 16.8743 25.8573 28.169 52.07 77.6782 116.9441 51.0796 27.0181 10.1789 12.6294 13.3834 67.4344 35.7881 4.319 50.1872 70.6968 85.0882 90.1446 69.1771 11.758 219.936 265.7619 265.7619 131.1366 10.4229 224.7813 92.1186 160.1416 113.3918 275.3562 15.9882 170.9081 241.4587 3.795 238.6045 77.0158 176.7013 278.2245;
	1.4189 19.1723 79.0271 84.3128 11.4512 24.6728 18.7994 17.0813 25.869 27.8426 51.4666 76.7781 115.589 51.9324 8.6689 3.266 4.0522 4.2942 78.4692 48.5364 6.2665 57.5698 69.8885 82.5386 86.3597 65.4774 11.8867 353.5072 347.0621 347.0621 235.3455 14.3294 261.564 124.9328 162.8151 148.0798 394.1751 33.2287 201.7674 231.3207 1.0792 273.7031 82.6516 171.1877 398.2811;
	2.8119 37.9955 83.93 88.1522 13.4935 27.8373 19.9023 16.5724 25.8797 27.6354 51.0837 76.2068 114.729 53.7401 45.455 17.1249 21.2476 22.5161 82.3352 62.3301 6.6341 64.9537 69.3811 83.1238 93.3064 63.2385 10.6291 521.6444 416.3822 416.3822 279.6389 23.5977 274.4508 160.4379 168.4823 177.6564 554.5425 50.6209 225.5021 249.928 0.8601 308.8085 118.8841 202.6623 560.319;
	3.4457 46.5584 86.5351 106.4451 14.3601 28.6709 19.9851 16.8048 25.4448 28.4588 52.6057 78.4773 118.1471 54.3172 57.5 21.6628 26.8779 28.4826 84.0794 57.2697 6.6617 66.8987 68.1257 84.4655 95.38 68.695 10.0409 636.8097 504.5822 504.5822 359.2126 27.8364 280.2648 147.4124 170.2919 215.2884 652.3127 70.9794 271.479 255.4821 0.1371 318.0554 122.2192 244.1361 659.1076;
	3.6383 49.1608 88.3989 110.8322 14.3173 33.4244 25.7647 17.1987 28.1627 25.8742 47.8281 71.3502 107.4173 64.3295 97.4378 36.7091 45.5465 48.2657 85.8263 61.0996 8.5882 77.9903 51.0344 88.5673 100.9985 63.9364 11.5601 896.4026 625.8574 625.8574 489.946 35.7248 286.0876 157.2704 201.6816 267.0325 911.6479 109.9577 434.5302 270.5317 1.3672 370.7879 144.8569 235.7132 921.1442;
	3.5643 48.162 86.4873 108.7207 13.9791 34.1183 28.7121 17.455 27.6916 20.4297 37.764 56.3365 84.8142 65.2607 139.1858 52.4374 65.0613 68.9455 90.5891 68.797 9.5707 79.6094 44.6724 84.1789 98.501 64.3147 12.0368 930.9052 716.3992 716.3992 645.5516 45.5616 301.9637 177.0836 204.601 305.6637 1000.9006 158.1655 384.9413 263.8421 1.3282 378.4859 167.9009 247.538 1011.3266;
	3.7556 50.7466 89.2348 115.4335 14.8248 35.0954 30.5532 18.229 27.9622 18.9758 35.0766 52.3273 78.7785 65.6886 174.4093 65.7077 81.5262 86.3934 90.9746 72.8186 10.1844 81.8893 28.4045 87.0541 100.5977 70.8956 12.4733 931.815 740.9269 740.9269 711.4986 74.528 303.2486 187.4352 205.9428 316.1288 958.8796 210.7484 412.6006 269.4581 15.6084 389.3253 209.1364 270.7366 968.8679;
	3.597 48.6032 89.5731 110.8024 14.2794 34.3865 28.2521 17.6773 26.3575 15.9289 29.4444 43.9252 66.1291 64.6924 182.8413 68.8844 85.4677 90.5702 85.5766 72.5133 9.4174 80.2352 28.7609 82.9118 99.5632 69.4379 12.5522 1031.7723 760.5561 760.5561 739.5364 89.6431 285.2554 186.6494 202.8193 324.5039 1024.8618 238.2228 428.164 266.6873 109.4732 381.461 188.0236 254.8798 1035.5374;
	3.7914 51.2297 93.3554 119.4064 14.9858 35.0204 30.5038 12.8668 27.0077 19.8016 36.603 54.6045 82.2067 64.1758 193.139 72.764 90.2813 95.6712 91.1361 70.6405 10.1679 81.7144 49.9853 85.4718 104.0559 62.7735 12.6833 1129.6549 778.7636 778.7636 661.9944 95.8475 303.7869 181.8289 201.1999 332.2725 1042.2572 235.553 456.1527 278.7212 117.335 388.4935 204.5334 280.3388 1053.114;
	3.766 50.8874 93.8405 113.1264 14.9129 34.6476 31.7533 8.1386 26.9271 20.3039 37.5315 55.9896 84.2921 66.7224 192.436 72.4992 89.9527 95.323 87.8435 68.9428 10.5844 80.8444 48.8771 37.621 44.6174 57.0882 9.9426 1102.3758 780.7665 780.7665 668.0784 103.8719 292.8116 177.4589 209.1837 333.127 1047.2499 253.4966 464.7215 119.5109 120.8941 384.3573 210.0524 247.0635 1058.1588;
	3.8806 52.4353 94.815 121.2432 14.8775 34.4684 31.3879 18.882 18.1023 21.0286 38.871 57.9879 87.3004 68.1287 200.1628 75.4102 93.5645 99.1504 91.2387 69.5823 10.4626 80.4264 43.3735 77.4549 104.058 71.5164 13.9349 1202.0014 788.7543 788.7543 709.3838 108.9174 304.1291 179.1049 213.5928 336.5352 1088.7202 260.1857 458.9859 278.7268 122.164 382.3699 209.6266 281.1587 1100.061;
	3.8172 51.5787 93.5751 121.0732 14.6621 34.5217 30.4012 18.6156 9.1426 17.2578 31.9007 47.5896 71.6459 65.0333 196.319 73.962 91.7677 97.2464 89.521 69.7068 10.1337 80.5507 42.4778 87.2685 105.4989 73.147 14.0347 1211.1386 779.7371 779.7371 717.1724 112.9962 298.4032 179.4255 203.8883 332.6878 1156.3648 274.1219 445.0878 282.5863 122.1158 382.961 207.2887 253.0639 1168.4103;
	3.8529 52.0607 92.4041 118.4341 14.966 34.5669 31.1567 18.1695 18.428 11.9811 22.147 33.0389 49.7399 68.1417 190.1859 71.6514 88.9008 94.2084 89.4558 67.2749 10.3856 80.6562 41.5149 84.2186 96.0781 73.4616 13.9106 1191.878 816.8529 816.8529 724.1578 117.6478 298.1859 173.1657 213.6335 348.5239 1186.8111 269.575 455.7995 257.3522 123.2468 383.4625 210.1816 259.6253 1199.1737;
	3.7899 51.2104 94.2356 119.4144 14.6964 34.2866 32.8386 18.5857 10.1094 17.2971 31.9734 47.698 71.8091 66.7256 193.903 73.0518 90.6384 96.0496 84.343 67.3964 10.9462 80.0021 46.4348 87.2256 106.44 72.7918 13.9439 1168.1237 823.7304 823.7304 759.8903 117.068 281.1433 173.4784 209.1939 351.4583 1201.8047 275.6134 451.4542 285.1071 123.9198 380.3531 214.2833 275.3992 1214.3235;
];
