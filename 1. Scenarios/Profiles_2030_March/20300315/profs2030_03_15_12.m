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
	0.4252 0.3744 0.3153 0.0 0.0 0.1765 0.0221 0.1431 0.2021 0.0 0.0 0.0;
	3.4197 3.8998 2.1009 2.7665 2.4333 84.514 10.5643 10.057 69.7093 235.5306 86.0996 426.5473;
	3.902 6.4253 4.6527 2.6192 3.1358 130.3108 16.2889 14.4342 204.9136 267.8933 142.3457 485.1563;
	4.9673 7.9765 6.507 3.1293 3.4734 145.8018 18.2252 21.69 244.5487 242.8696 138.7355 439.8383;
	11.2203 11.6358 11.0309 10.2663 11.9305 173.8968 21.7371 31.0057 207.7556 175.3349 120.2018 317.5326;
	14.4381 14.2296 12.0835 10.7474 9.8703 167.6514 20.9564 30.2609 154.9025 258.3467 164.7805 467.8675;
	14.9962 14.7846 11.9596 10.6181 9.6126 153.6334 19.2042 22.5645 129.178 304.8339 186.3249 552.0559;
	9.5957 11.7549 8.3745 10.8565 9.158 239.6759 29.9595 14.2562 220.0106 322.7338 158.7821 584.4728;
	8.3477 7.9108 5.9836 10.5298 9.5051 254.8854 31.8607 16.4108 234.7079 298.7522 130.9208 541.0421;
	5.6663 5.625 4.2142 9.1418 9.0999 289.1867 36.1483 20.7538 214.3035 217.4444 94.2416 393.7932;
	1.8499 1.3734 1.2957 4.2818 4.2317 374.4417 46.8052 32.98 140.5435 21.6486 9.3418 39.2058;
	0.3601 0.2937 0.2687 1.0477 1.7225 80.2808 10.0351 5.4812 41.8065 9.5047 4.7131 17.213;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];