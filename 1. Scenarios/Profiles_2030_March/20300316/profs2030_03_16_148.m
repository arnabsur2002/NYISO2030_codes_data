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
	1.0111 0.8269 0.7032 0.0 0.0 12.0432 1.5054 4.1882 1.993 0.0 0.0 0.0;
	0.6786 0.6118 0.205 6.2354 5.4039 215.5786 26.9473 11.576 110.7475 10.1369 27.4558 18.358;
	4.3361 3.2616 3.0451 8.417 8.8643 363.8531 45.4816 42.1385 188.1334 47.1226 89.9289 85.3393;
	13.7857 10.0388 13.0127 8.9125 9.7469 400.9092 50.1137 52.1358 217.1286 85.5716 120.1287 154.9707;
	19.2308 5.7042 12.3741 5.3762 9.1429 315.4426 39.4303 34.5444 181.371 19.3409 7.5926 35.0265;
	17.7904 9.1845 10.9151 7.0519 10.6052 236.3662 29.5458 26.19 178.7892 45.7607 0.0 82.873;
	20.1351 15.6589 11.9661 7.6697 11.5624 214.3051 26.7881 36.3354 177.4597 90.0718 1.6715 163.1206;
	23.8924 15.9262 13.4455 5.1704 9.2775 174.7539 21.8442 60.0456 133.8701 129.4002 56.8055 234.3445;
	21.5403 15.4894 13.13 3.4358 6.862 143.3403 17.9175 61.1446 95.8795 111.9609 67.0906 202.7619;
	15.9683 9.9055 9.6546 2.1916 5.4174 80.3999 10.05 55.0054 55.9743 54.8082 45.5758 99.2579;
	7.8844 2.1887 3.4998 3.2076 5.8394 30.9942 3.8743 15.9274 27.7284 14.7279 21.7719 26.6723;
	1.619 1.2545 1.0705 1.6266 2.1311 62.9049 7.8631 11.4452 32.4357 13.0321 11.3092 23.6013;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
