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
	1.0111 0.8228 0.6949 0.0 0.0 9.4835 1.1854 4.1882 0.7365 0.0 0.0 0.0;
	2.9237 2.3483 0.6048 0.8441 1.6972 131.853 16.4816 6.8821 76.5612 24.0545 2.6959 43.5628;
	9.6388 10.3099 6.8944 0.7691 3.1171 345.9124 43.239 38.7551 144.768 94.1165 3.2819 170.4455;
	17.5671 16.5607 13.7026 1.7929 4.1314 390.7775 48.8472 51.703 146.1699 196.6762 4.1793 356.1817;
	21.0277 16.3107 13.3556 3.1125 3.2028 296.7544 37.0943 37.0316 35.7161 206.726 41.0728 374.3819;
	21.286 16.1075 12.7239 5.0186 3.2907 312.3765 39.0471 43.9498 119.3836 249.3099 121.5288 451.5018;
	22.599 15.8518 13.2692 6.3566 3.6331 349.0567 43.6321 54.7207 191.4071 274.3251 154.2441 496.8045;
	23.8482 15.488 13.4455 6.3232 2.7713 319.9098 39.9887 61.3673 196.7178 190.4562 107.7157 344.9173;
	21.296 14.1417 13.2169 4.2351 2.6354 292.5494 36.5687 59.4328 147.6376 166.7045 80.9914 301.9028;
	15.8783 11.0622 10.3482 2.0877 2.022 252.1794 31.5224 50.3974 105.9501 129.0388 58.076 233.6901;
	8.246 6.1258 5.0708 0.5917 2.0414 229.0526 28.6316 21.8063 150.9467 60.225 39.7187 109.0678;
	1.3841 1.059 0.9878 0.8073 1.2413 92.6798 11.585 14.0797 53.3423 38.4856 13.1765 69.6977;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];