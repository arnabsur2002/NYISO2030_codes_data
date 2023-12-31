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
	0.099 0.0972 0.1116 0.0 0.0 0.1251 0.0156 0.2034 0.0313 0.0 0.0 0.0;
	2.4725 2.6402 1.3033 2.2588 5.2779 21.7535 2.7192 4.2805 17.6947 116.1561 39.4251 210.3594;
	5.1344 5.2226 2.7012 6.4176 10.2552 57.0535 7.1317 13.965 38.4372 155.0874 89.4706 280.8643;
	7.4186 6.5625 3.2028 9.6795 11.7119 109.678 13.7098 22.501 75.4477 191.0907 122.4614 346.0663;
	15.4126 12.5057 6.8195 11.1174 10.3525 382.6883 47.836 52.205 239.7095 215.8774 142.1248 390.9553;
	17.1508 14.9055 8.968 11.1561 9.6042 364.9012 45.6127 45.0005 219.6159 253.3018 165.6361 458.731;
	19.7627 15.4278 10.0002 11.2056 9.1804 348.6123 43.5765 43.5492 202.7752 228.4759 172.0338 413.7713;
	23.6908 16.3059 12.4456 6.3739 4.0979 335.7317 41.9665 46.6269 227.5851 160.4707 156.5145 290.6133;
	20.132 14.1551 10.5345 5.6827 3.5833 357.0805 44.6351 53.7315 240.521 168.7406 136.0248 305.5902;
	13.6775 9.0681 6.7416 4.0119 3.3304 348.8807 43.6101 54.1006 240.4852 153.9238 113.0581 278.7569;
	4.9106 4.5504 3.5443 2.4601 3.315 177.3949 22.1744 22.1378 102.3289 42.5935 28.0344 77.137;
	1.0595 0.8338 0.7245 1.2057 1.5727 53.7691 6.7211 10.7188 27.249 11.9725 8.3083 21.6823;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
