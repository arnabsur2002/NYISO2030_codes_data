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
	1.0517 0.8477 0.7771 0.0 0.0 9.6524 1.2066 4.1882 0.4191 0.0 0.0 0.0;
	7.6951 5.8372 2.7662 1.8459 3.0266 196.3232 24.5404 24.8684 161.1005 2.4206 20.6882 4.3837;
	13.0809 10.3401 5.4268 1.9319 4.0249 306.3853 38.2982 50.8394 254.1386 43.2083 25.3908 78.2505;
	19.6215 16.0479 12.3256 3.2779 5.2757 347.5918 43.449 61.8717 252.7925 140.7537 39.7944 254.9058;
	22.6816 16.107 13.5435 4.7362 5.6222 322.5868 40.3233 64.0271 121.2183 108.8364 56.8109 197.1034;
	25.6144 16.5136 13.8 5.8455 6.2043 307.6971 38.4621 58.9311 133.7902 91.0006 75.251 164.8027;
	25.7908 16.5299 13.8 6.6066 6.4717 282.735 35.3419 55.4831 158.0098 82.1645 54.8382 148.8004;
	24.1984 15.9262 13.4581 8.6692 6.3806 184.9823 23.1228 57.08 78.1053 38.3502 18.4052 69.4524;
	18.7099 15.0942 13.1749 8.8975 5.905 176.2206 22.0276 61.21 51.2855 44.187 18.3384 80.023;
	9.3943 8.7169 8.0002 10.2886 5.2827 178.5599 22.32 62.0752 40.5939 53.5273 27.6609 96.9383;
	3.6973 3.4356 2.2831 10.5076 4.9639 142.7655 17.8457 56.1272 93.7005 45.4054 47.2867 82.2294;
	1.3125 1.0579 0.8169 1.8294 1.3766 64.5684 8.071 14.8147 50.1952 29.5383 19.7421 53.4941;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];