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
	1.0638 0.8518 0.7166 0.0 0.0 9.5506 1.1938 4.1882 0.4191 0.0 0.0 0.0;
	18.4487 10.7002 7.5648 2.3866 4.648 213.3655 26.6707 3.5445 145.615 47.9199 33.1087 86.7832;
	20.8208 14.4514 11.1132 4.7329 6.8048 323.2608 40.4076 11.3051 188.0242 132.3329 75.9779 239.6557;
	23.3445 16.6083 13.7494 7.7947 9.0573 376.3791 47.0474 22.3326 227.0127 228.555 98.2854 413.9145;
	25.3841 16.4248 13.8 9.2156 10.7514 386.2798 48.285 41.1344 261.395 108.8366 22.2699 197.1038;
	26.0035 16.5614 13.8279 7.8213 10.5183 365.5872 45.6984 49.9977 252.1875 148.885 46.1968 269.6316;
	25.9967 16.5214 13.8 6.2698 8.9382 333.2058 41.6507 54.3914 205.1249 133.9328 52.1098 242.553;
	24.8467 15.9262 13.3473 4.3789 3.3754 246.7931 30.8491 56.5287 103.5997 19.9701 14.3188 36.166;
	22.261 15.9095 12.3794 3.7576 1.952 238.6149 29.8269 51.0456 88.1461 0.0 9.6387 0.0;
	18.1694 14.1309 10.3342 2.5197 1.0179 213.9204 26.7401 35.5509 97.35 2.658 6.5052 4.8137;
	10.7149 8.6591 6.6285 1.3821 0.2821 96.4535 12.0567 4.655 106.3669 0.0 23.154 0.0;
	1.3938 1.0512 0.9049 0.592 0.0 62.0487 7.7561 11.2333 32.0809 5.9013 14.2497 10.6873;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
