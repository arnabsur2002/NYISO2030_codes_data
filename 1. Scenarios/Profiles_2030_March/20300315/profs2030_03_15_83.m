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
	0.4095 0.3481 0.302 0.0 0.0 0.1765 0.0221 0.1678 0.817 0.0 0.0 0.0;
	0.0625 0.8386 0.7536 1.3107 1.5492 86.371 10.7964 23.386 177.4 35.5574 10.6519 64.3946;
	9.0204 7.9334 8.1305 3.7428 4.5411 230.3543 28.7943 53.2099 222.7505 133.8935 57.4308 242.4819;
	17.4826 14.3825 12.8204 6.3342 5.9179 245.3236 30.6655 57.1963 208.4613 226.3168 134.1209 409.861;
	8.2617 9.1079 10.6302 10.7461 12.923 83.5163 10.4395 42.4579 124.7766 258.3114 154.0222 467.8035;
	8.7232 8.9129 10.0176 11.1421 12.7299 124.0464 15.5058 44.1403 120.7538 258.5496 162.808 468.2349;
	14.2075 11.4922 11.0115 11.0333 12.7272 170.0684 21.2586 40.4495 101.6413 259.7539 148.9123 470.4159;
	11.3432 8.6953 9.6829 6.6385 10.5366 206.9229 25.8654 24.9872 101.0922 211.5177 55.3211 383.0598;
	8.8453 7.0111 8.9057 5.5304 10.9316 130.0668 16.2584 16.1953 61.9996 182.7571 78.5365 330.9742;
	3.7014 2.8966 5.3667 3.3021 10.9668 53.2801 6.66 12.9754 34.899 111.1006 71.532 201.2039;
	0.679 0.3221 1.3437 2.4973 8.7564 45.5933 5.6992 16.8624 37.7071 9.9078 10.2958 17.9432;
	0.6955 0.3689 0.5102 1.3943 2.4294 64.678 8.0847 8.8777 41.8123 4.179 4.2195 7.5682;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];