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
	0.5953 8.044 41.67 59.5261 6.1117 0.0 5.0972 6.3795 0.0 9.1483 16.9105 25.2271 37.9793 5.9032 140.0853 52.7763 65.4817 69.3911 79.7017 67.1108 1.6991 0.0 57.1272 53.4221 4.6243 46.1005 3.4078 191.5733 324.4903 324.4903 235.0426 46.056 265.6722 172.7434 18.5073 138.4492 397.8833 93.1845 0.0555 12.3865 51.6386 0.0 0.0 58.0921 402.0279;
	0.3908 5.2811 41.951 59.2417 3.2624 0.0 11.9806 3.9541 2.9821 10.6555 19.6965 29.3833 44.2365 7.6169 109.718 41.3356 51.2868 54.3487 73.1706 66.1681 3.9935 0.0 33.4875 56.1943 14.8974 45.9228 5.5046 91.3164 227.1063 227.1063 155.3217 29.3481 243.9019 170.3169 23.88 96.8987 302.1354 97.7095 33.2276 39.9037 67.7176 0.0 0.0 76.4985 305.2826;
	0.2881 3.8924 53.1547 64.9541 0.1451 0.0002 12.0325 4.9926 3.1463 8.353 15.4404 23.0341 34.6777 1.8839 69.8296 26.3079 32.6413 34.59 67.0909 55.1798 4.0108 0.0004 26.598 45.8732 29.6765 41.4209 5.5328 44.987 74.1181 74.1181 80.6464 17.3116 223.6364 142.033 5.9064 31.6237 187.4106 67.5202 16.4999 79.4906 62.3305 0.0021 0.2688 85.1338 189.3628;
	0.3739 5.0526 59.0067 71.8451 1.3618 0.0 5.8738 10.2685 0.412 14.478 26.7623 39.9241 60.1056 1.3821 68.3843 25.7634 31.9657 33.8741 48.7872 50.652 1.9579 0.0 49.5837 65.0606 38.6577 62.163 6.7596 88.1077 102.5372 102.5372 133.9746 19.7507 162.6238 130.3784 4.3331 43.7492 119.5851 59.316 42.1535 103.5475 55.9414 0.0 0.0 137.5438 120.8308;
	0.4845 6.547 72.5128 72.2907 6.8868 0.0 1.1916 11.4929 0.1377 14.6862 27.1472 40.4983 60.97 4.7495 118.7795 44.7495 55.5225 58.8373 56.2133 64.9155 0.3972 0.0 46.8804 69.4691 63.264 67.9178 7.8838 70.7084 72.7451 72.7451 56.9509 9.0023 187.3778 167.0927 14.8903 31.0379 52.4569 39.9334 14.5008 169.457 52.9991 0.0 0.0012 142.6848 53.0033;
	0.452 6.1074 69.9472 59.2597 8.2464 1.4634 0.0 9.8456 0.0 8.341 15.4183 23.0011 34.628 7.0269 146.3685 55.1435 68.4188 72.5035 80.5111 67.9038 0.0 3.4146 33.0778 68.0969 44.1192 67.4849 7.4257 166.8927 109.3873 109.3873 109.5226 10.6303 268.3703 174.7844 22.0302 46.6719 38.1575 96.0569 0.1798 118.1765 39.1068 16.234 19.6496 121.7258 38.555;
	0.4004 5.4109 49.3065 38.7197 7.532 1.0576 3.6583 7.3173 1.9182 7.5099 13.8819 20.709 31.1773 8.2087 119.2315 44.9198 55.7338 59.0612 62.2853 70.0902 1.2194 2.4677 23.9049 44.8304 20.0117 64.6123 4.0441 144.4716 72.5773 72.5773 48.7327 1.2958 207.6178 180.4125 25.7354 30.9663 49.5279 113.2999 39.4998 53.6027 7.1881 11.7319 26.7331 128.7315 50.0438;
	0.4383 5.9226 32.1717 28.8347 2.5575 1.4531 4.4272 6.464 2.0329 4.5905 8.4855 12.6587 19.0576 10.8479 57.6761 21.7291 26.9602 28.5698 17.0862 44.5173 1.4757 3.3905 8.3779 30.5153 24.9575 64.1506 4.2564 61.1951 12.5535 12.5535 117.1474 0.5786 56.9541 114.5876 34.0096 5.3562 19.4081 74.81 95.6174 66.8504 8.2044 16.1193 1.907 107.3247 19.6103;
	0.4202 5.6779 23.773 22.2663 0.7658 0.0 2.3822 4.3532 0.0 1.5068 2.7853 4.1551 6.2555 4.3436 13.2613 4.9961 6.1989 6.569 1.8981 15.5955 0.7941 0.0 3.1302 25.596 20.9051 48.9096 3.2249 197.5827 37.9298 37.9298 63.387 0.5691 6.3269 40.1429 13.6179 16.1834 34.8725 67.3778 31.008 55.9959 2.9947 0.0 0.0 73.3067 35.2358;
	0.3534 4.7756 21.2975 22.4317 5.52 0.0 2.7706 3.2021 0.0 0.0 0.0 0.0 0.0 4.8174 7.9101 2.9801 3.6975 3.9183 11.4773 13.9747 0.9235 0.0 0.0 7.6533 16.859 38.1825 1.8459 204.3024 45.332 45.332 46.7995 1.1231 38.2576 35.971 15.1031 19.3417 49.2262 31.8287 52.7471 45.1582 0.0 0.0 42.6303 79.8879 49.739;
	0.6598 8.915 40.7417 2.3953 9.8298 0.0 2.0063 2.5896 0.0 0.0 0.0 0.0 0.0 2.7896 3.4471 1.2987 1.6113 1.7075 21.6584 10.8186 0.6688 0.0 0.0 34.5181 36.0896 47.1963 0.714 170.5854 68.9977 68.9977 13.0864 0.6548 72.1946 27.847 8.7458 29.439 122.3616 17.9511 30.4122 96.6686 0.0 0.0 0.0 92.7679 123.6362;
	1.5238 20.5897 62.4527 4.6843 12.9816 0.0 1.7068 0.0131 0.0 0.024 0.0444 0.0662 0.0996 4.5332 8.5406 3.2176 3.9922 4.2306 18.7442 11.7398 0.5689 0.0 22.8701 47.0109 0.7523 49.5495 0.0214 183.5001 117.4633 117.4633 143.9937 4.2472 62.4806 30.2183 14.2121 50.1177 136.8096 18.9132 18.657 2.0152 0.0108 0.0 0.0041 124.4543 138.2347;
	2.3006 31.086 81.734 40.44 14.0454 1.3468 13.1852 0.7898 5.6969 25.7684 47.6326 71.0584 106.978 20.0361 58.7208 22.1227 27.4486 29.0873 68.0369 12.6046 4.3951 3.1425 33.523 60.9638 65.5356 52.0451 0.4494 241.2456 183.1691 183.1691 236.2985 5.8559 226.7896 32.4442 62.8158 78.1522 202.5185 30.0666 334.1127 175.5417 0.0 14.9403 112.0279 152.953 204.628;
	1.7994 24.3141 3.0283 11.7834 13.2602 16.5475 5.5161 0.4666 0.6451 0.5332 0.9857 1.4704 2.2137 49.3963 23.8652 8.9911 11.1556 11.8216 42.0317 10.2833 1.8387 38.6109 41.6336 0.0595 1.6937 32.6846 0.9236 221.5243 222.6251 222.6251 163.3104 4.5433 140.1056 26.4693 154.8639 94.9867 207.2906 17.465 153.8116 4.5368 0.162 183.5673 79.8257 123.1533 209.4498;
	2.2476 30.3698 5.9278 37.1172 9.0789 1.3627 25.4608 0.0 5.1727 3.1159 5.7597 8.5923 12.9357 21.8227 19.731 7.4335 9.2231 9.7737 76.4844 44.06 8.4869 3.1796 27.7022 0.2287 0.3852 0.302 0.0551 311.1132 285.5482 285.5482 115.9788 7.0899 254.948 113.4104 68.4172 121.8339 278.2797 39.7796 369.2024 1.0318 0.9206 15.1168 88.3798 96.1947 281.1785;
	3.1101 42.0239 84.769 26.2139 13.3979 1.5243 10.489 0.0 0.0694 0.184 0.34 0.5073 0.7637 3.7726 20.3861 7.6803 9.5293 10.0982 52.1358 12.0753 3.4963 3.5567 38.0452 0.1077 0.0536 0.0054 0.014 424.3903 303.381 303.381 200.7249 10.4623 173.7859 31.0819 11.8275 129.4425 330.8735 52.1208 108.8031 0.1436 0.4023 16.9094 26.7884 168.1731 334.3201;
	3.2652 44.1199 0.2916 8.7553 13.9096 0.0012 9.7341 0.0021 0.0 0.1013 0.1872 0.2792 0.4204 0.6132 63.7445 24.0154 29.7968 31.5758 18.7192 64.1545 3.2447 0.0029 0.0 4.3807 1.2251 0.0 0.0191 369.4432 371.2717 371.2717 203.3195 23.1959 62.3973 165.134 1.9224 158.4092 423.4934 80.0343 184.6654 3.2814 2.3669 0.0137 135.1588 214.1089 427.9048;
	2.5227 34.0875 0.0 0.4828 13.9574 14.1093 11.1717 0.3663 0.0 0.2188 0.4044 0.6032 0.9082 3.2345 94.3957 35.563 44.1245 46.7588 10.2087 57.341 3.7239 32.9217 1.6744 0.7532 1.7171 0.032 0.2199 554.9355 460.3499 460.3499 319.0605 33.6951 34.0289 147.596 10.1405 196.416 507.8596 105.726 53.5303 4.5994 2.978 156.5193 114.2551 212.1356 513.1498;
	2.7613 37.3115 82.0158 0.1367 14.5173 23.5471 11.5187 0.0 0.0 8.4334 15.589 23.2557 35.0114 7.859 177.3489 66.8152 82.9003 87.8496 3.0904 46.7893 3.8396 54.9433 1.7759 0.0463 0.0 57.357 0.0301 761.8514 425.3372 425.3372 338.4861 45.0649 10.3012 120.4358 24.6391 181.4772 600.012 82.7646 40.4238 0.0 0.0441 261.2159 113.8874 202.991 606.2621;
	2.7218 36.7773 11.1405 0.152 14.3859 0.0 18.6638 0.0 24.6056 21.4839 39.7127 59.2435 89.1907 5.477 49.3889 18.607 23.0864 24.4647 0.5897 23.6971 6.2213 0.0 51.1883 1.013 0.0413 50.7854 0.0 705.5723 427.3126 427.3126 324.4046 43.0598 1.9656 60.9964 17.1713 182.32 531.6624 84.1195 0.0 0.1105 0.2346 0.0 111.6824 181.2939 537.2005;
	3.0502 41.2149 85.2479 0.0139 14.1802 0.0 1.7622 0.0 25.836 23.883 44.1473 65.8591 99.1505 8.8576 26.9354 10.1477 12.5907 13.3424 0.0559 34.7654 0.5874 0.0 68.4243 78.4954 0.1184 56.5788 0.0 521.4756 366.8833 366.8833 239.0531 53.5997 0.1863 89.4862 27.7696 156.5369 504.9429 77.2392 0.0 0.3171 3.3487 0.0 106.2112 166.7423 510.2027;
	3.209 43.3613 85.3223 0.0 13.9968 20.612 11.0067 11.765 25.7875 25.3992 46.95 70.0402 105.4452 10.4646 49.5359 18.6623 23.1551 24.5375 1.0318 58.5784 3.6689 48.0946 55.7601 77.4641 92.7433 65.4241 5.6796 589.5034 288.0473 288.0473 210.0997 49.4788 3.4392 150.7809 32.8079 122.9002 405.6858 103.9937 0.0 248.4195 8.8172 228.6557 11.0321 180.105 409.9117;
	3.4814 47.0411 89.4808 111.2995 14.0974 24.2907 13.7349 15.3463 26.5556 27.458 50.7556 75.7174 113.9922 7.1136 53.5531 20.1758 25.033 26.5275 0.2107 67.7987 4.5783 56.6783 63.4682 85.8912 97.0388 73.0366 8.0608 714.6107 332.9947 332.9947 279.347 39.8138 0.7022 174.514 22.3021 142.0777 407.5273 96.3773 6.4564 259.9254 10.0891 269.4648 142.5397 197.764 411.7724;
	3.4526 46.6519 87.6246 107.9279 14.4533 15.4585 11.627 16.0221 27.6785 26.4832 48.9539 73.0295 109.9456 10.8146 54.322 20.4655 25.3924 26.9083 1.5003 55.9387 3.8757 36.0699 57.0922 83.941 97.6818 70.6356 7.7117 666.0839 373.5113 373.5113 267.2234 49.6507 5.0011 143.9865 33.9051 159.3648 410.2237 79.5977 312.0827 261.6477 10.027 171.4864 142.3768 218.2926 414.4968;
];