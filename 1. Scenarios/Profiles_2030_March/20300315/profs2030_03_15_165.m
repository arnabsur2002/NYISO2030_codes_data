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
	0.4095 0.3481 0.302 0.0 0.0 0.7641 0.0955 0.2098 0.0956 0.0 0.0 0.0;
	0.7457 0.4502 0.6186 2.7578 2.4132 95.2299 11.9037 8.1048 24.8963 0.0725 30.1495 0.1313;
	4.671 5.5546 4.5794 3.2347 1.6246 130.8011 16.3501 21.0139 41.089 24.0267 76.6263 43.5124;
	11.6088 10.8593 7.9762 4.3441 1.2026 174.8558 21.857 32.3684 55.2272 39.1091 118.8437 70.8268;
	20.8249 13.1676 11.619 10.5139 10.6396 299.8974 37.4872 34.8513 137.928 111.5995 142.4833 202.1073;
	18.5517 13.0017 11.5524 11.1452 12.2313 314.1726 39.2716 29.5747 157.6121 108.6422 163.0427 196.7516;
	18.1301 13.2937 11.7028 11.3205 13.0819 292.2608 36.5326 27.1972 160.6219 179.0533 170.1186 324.2666;
	22.2494 15.9305 12.1444 11.4214 10.0486 293.0907 36.6363 35.0809 215.4915 269.461 153.5703 487.9954;
	24.401 16.1064 13.1361 11.0885 8.8663 270.3963 33.7995 35.8651 214.0269 304.1686 144.1227 550.8511;
	26.365 12.9449 8.9457 9.1027 7.6321 242.1169 30.2646 33.4115 190.8369 258.0904 107.2864 467.4033;
	2.5965 1.6464 1.5743 4.4168 3.911 201.595 25.1994 21.2425 109.1036 21.0978 7.5802 38.2082;
	0.2249 0.2311 0.1978 1.2948 1.7195 52.6784 6.5848 4.4461 40.9412 7.1732 2.9578 12.9907;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];