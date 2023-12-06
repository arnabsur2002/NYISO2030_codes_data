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
	0.1575 0.171 0.24 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	2.1379 2.0562 0.7389 5.9241 1.9828 195.6239 24.453 47.0945 179.306 0.7152 19.9213 1.2952;
	4.778 7.7587 1.8771 10.4109 5.1483 324.2307 40.5288 64.9201 170.5683 68.4985 58.9243 124.0511;
	11.3521 15.1437 8.9682 10.7113 6.9257 327.6449 40.9556 63.1813 169.7407 197.2215 145.6572 357.1693;
	14.4526 13.8503 5.5344 9.3448 5.92 217.2547 27.1568 51.797 216.0814 282.1897 178.8212 511.0473;
	20.1586 16.2202 10.0441 8.6404 5.6103 249.5534 31.1942 49.1493 227.6468 254.5973 187.2407 461.0772;
	23.6276 16.5331 13.2647 8.3122 6.0063 261.5214 32.6902 45.4924 214.5788 236.9768 187.8111 429.1664;
	25.5646 16.5546 13.6109 10.4556 12.2785 357.1332 44.6416 58.6767 239.6672 341.4098 235.9913 618.2951;
	19.7933 16.3881 12.4855 9.6103 11.9342 354.2822 44.2853 60.4503 237.0079 339.4056 210.143 614.6655;
	10.1424 10.8846 3.2406 6.951 10.6099 327.4666 40.9333 59.3822 240.328 316.8562 118.4827 573.8285;
	2.7555 2.4438 0.9315 5.2428 10.4618 285.4313 35.6789 57.4016 208.0894 171.6151 19.3229 310.796;
	0.9733 0.9108 0.6007 1.6166 3.4446 65.0958 8.137 11.3238 35.4846 61.3868 37.3935 111.1718;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];