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
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.175 0.1587 0.1369 0.6497 0.0 16.3216 2.0402 0.0 0.0 12.002 4.7517 21.7357;
	0.0 0.0 0.0 1.2194 0.6155 0.0 0.0 0.0 7.8612 0.0 0.2107 0.0;
	0.0 0.1609 0.074 1.5616 1.3936 0.0 0.0 2.9686 15.8614 0.0 0.0 0.0;
	0.9231 1.7386 1.211 1.061 1.5073 16.822 2.1028 18.5012 41.2313 0.0 0.0 0.0;
	1.8203 2.3931 2.0809 1.106 1.4991 41.7857 5.2232 25.1047 56.1821 0.0 0.0 0.0;
	2.2213 2.5083 2.1858 1.4659 1.6358 57.6753 7.2094 27.9223 85.6744 0.2989 1.4445 0.5413;
	2.0374 2.903 1.9558 3.1128 1.4305 87.1495 10.8937 43.8991 104.8343 22.8377 25.4089 41.3593;
	1.0268 1.9776 1.1684 2.5644 1.0383 39.5853 4.9482 29.638 75.2998 31.5872 32.1892 57.2047;
	0.3247 1.16 0.6595 1.8087 0.5807 24.8635 3.1079 18.0079 30.3395 44.3638 30.4348 80.3431;
	0.2753 0.8323 0.3826 0.6967 0.0 11.367 1.4209 3.4995 1.829 41.5003 18.6921 75.1573;
	0.2494 0.2475 0.148 0.4553 0.5349 29.7122 3.714 6.4193 23.954 20.9424 10.3368 37.9269;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
