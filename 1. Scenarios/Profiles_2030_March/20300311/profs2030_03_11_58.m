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
	0.0 0.0 0.002 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	8.7777 6.638 5.7627 0.2961 3.3353 161.0546 20.1318 45.7541 67.1425 67.3715 39.5708 122.0102;
	21.5023 15.8071 12.7211 3.6576 10.9703 406.0904 50.7613 72.4536 175.0015 120.3536 113.0636 217.9611;
	24.4134 16.7009 13.8221 9.9297 12.5684 440.4978 55.0622 74.5787 203.0305 291.4128 182.0311 527.7503;
	26.3931 16.6083 13.8 11.5114 11.2324 390.0956 48.7619 68.6087 215.3697 287.6418 191.9089 520.9211;
	26.334 16.6083 13.8 11.5441 10.5763 372.8315 46.6039 67.7895 248.1529 305.637 210.531 553.5105;
	26.334 16.6083 13.7783 11.4717 9.9146 379.9344 47.4918 69.2454 265.3578 295.7619 193.8108 535.6266;
	26.3573 16.6083 13.7971 11.5521 10.4974 437.71 54.7138 75.3132 236.1442 144.0703 70.7121 260.9122;
	23.7763 16.6083 13.8 11.5318 11.2256 439.6129 54.9516 77.1307 188.3463 111.7435 50.1954 202.3681;
	19.2612 15.1752 11.1115 8.9306 10.9069 420.7533 52.5942 75.3861 122.3034 84.9705 77.746 153.8822;
	9.1772 7.2404 4.4935 2.913 7.8985 227.8879 28.486 51.4371 38.5137 47.0347 48.9081 85.1802;
	0.7577 0.6455 0.3768 1.2449 2.6315 51.7644 6.4705 9.2176 27.2798 18.678 17.2754 33.8259;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
