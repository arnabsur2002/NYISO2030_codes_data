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
	0.1575 0.1621 0.24 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	5.4347 5.7152 3.8713 1.0126 1.6251 109.3313 13.6664 25.0328 77.8695 39.6715 23.5404 71.8452;
	9.2107 13.0051 7.7532 2.3968 2.6366 275.6118 34.4515 52.9163 128.2117 115.7819 85.3602 209.6818;
	15.57 16.6083 13.3562 4.4467 3.1219 334.9002 41.8625 66.2809 173.2608 195.6418 152.3664 354.3085;
	25.6528 16.474 13.7624 4.8394 3.1741 383.3178 47.9147 71.8505 244.4046 251.0083 205.3487 454.5775;
	25.9535 16.5349 13.8019 4.6661 3.6158 424.093 53.0116 71.1589 280.1558 271.9258 215.5596 492.4593;
	25.9721 16.5346 13.8458 4.2467 4.3348 411.3205 51.4151 65.9002 265.9562 282.1085 216.1873 510.9002;
	25.9784 16.5561 13.8485 7.2098 10.1097 370.8181 46.3523 68.8266 204.3762 343.6669 253.9223 622.3828;
	23.865 16.4262 13.7969 8.0088 10.4333 346.3452 43.2932 68.8687 154.9074 338.8857 234.217 613.7241;
	21.6896 15.7443 13.3118 6.5857 10.116 283.6919 35.4615 66.5345 105.8874 303.0742 205.1647 548.8693;
	12.8842 7.5887 7.9004 7.4889 12.2868 183.1646 22.8956 47.2652 99.6669 160.3573 147.2093 290.408;
	1.0916 0.8329 0.7333 1.848 4.1792 58.226 7.2783 9.8863 35.1559 63.9362 39.6123 115.7888;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
