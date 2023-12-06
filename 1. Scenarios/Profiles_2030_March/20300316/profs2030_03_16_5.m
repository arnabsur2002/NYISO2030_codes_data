function solarprofile = ex_solar_profilesh1
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

solarprofile = struct( ...
    'type', 'mpcData', ...
    'table', CT_TGEN, ...
    'rows', [1:12], ...
    'col', PMAX, ...
    'chgtype', 1, ...
    'values', [] );
solarprofile.values(:,1,:) = [
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	1.0268 0.8269 0.6949 0.0 0.0 9.4835 1.1854 4.1882 0.4827 0.0 0.0 0.0;
	17.68 15.6371 9.5693 2.0604 2.2654 173.6235 21.7029 6.326 31.4811 74.3606 29.5678 134.6675;
	22.2142 17.0921 13.7746 5.114 7.2907 274.4792 34.3099 15.7506 59.1826 226.2408 82.0695 409.7235;
	24.3875 16.8838 14.0881 8.3768 10.0904 321.3199 40.165 23.3287 106.7074 327.6908 126.0584 593.4499;
	26.6358 16.6682 14.2522 5.7547 9.9979 342.9342 42.8668 37.3065 116.2176 268.9333 126.0156 487.0399;
	26.9065 16.7394 14.2346 4.894 9.7838 338.3133 42.2892 46.8156 114.6169 305.5433 152.0688 553.3407;
	26.5676 16.5438 14.0231 3.6037 8.8626 332.591 41.5739 50.5689 108.3007 329.1738 162.1977 596.1358;
	24.5759 15.8974 13.4455 3.0617 6.0599 305.211 38.1514 45.3948 56.7932 246.5134 107.3011 446.4373;
	21.9672 14.6849 13.3888 3.0343 5.7177 318.4677 39.8085 45.4814 51.2496 198.4169 57.256 359.3341;
	18.371 12.4189 12.4431 2.5828 5.8854 320.8452 40.1057 50.203 40.2798 131.526 30.8152 238.1944;
	13.2075 8.5319 9.7893 3.8766 7.4385 321.4338 40.1792 43.6227 41.5828 63.3032 26.285 114.6425;
	1.5863 1.2656 1.0771 1.2942 1.672 90.5661 11.3208 16.5997 32.9304 49.0904 13.6863 88.9031;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];