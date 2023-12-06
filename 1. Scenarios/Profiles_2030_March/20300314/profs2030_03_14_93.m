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
	0.0951 0.0972 0.1051 0.0 0.0 0.1251 0.0156 0.1784 0.0 0.0 0.0 0.0;
	3.432 2.867 2.5339 4.337 5.128 28.0789 3.5099 5.3524 35.3128 46.1507 33.9586 83.5792;
	7.3781 6.5354 5.5274 5.8499 10.698 30.6298 3.8287 9.5758 56.0647 34.0715 25.9909 61.7037;
	10.9094 10.1876 8.5919 6.6197 11.9974 48.9139 6.1142 12.4051 57.706 56.1171 26.9132 101.6285;
	22.0281 15.9986 13.9149 6.5382 11.4185 367.7441 45.968 45.6249 208.8729 128.6747 57.5996 233.0307;
	23.8353 16.0546 13.4455 10.084 11.2466 369.2016 46.1502 57.5089 227.081 247.4935 147.2983 448.2122;
	23.6599 16.0751 13.2655 10.7197 10.9464 376.7413 47.0927 60.4613 250.4025 276.3639 167.6693 500.4967;
	21.3079 16.1166 13.7384 2.7456 5.1642 394.575 49.3219 59.6404 282.8966 194.2315 117.7323 351.7544;
	16.4074 13.8168 13.1019 1.5942 4.4633 406.8062 50.8508 56.2529 285.0895 131.1642 73.7978 237.5392;
	11.9538 9.5694 10.1493 0.7253 4.137 412.2039 51.5255 52.3544 277.4565 67.2126 58.5787 121.7224;
	5.5048 5.4282 5.1192 0.8246 4.0301 294.7254 36.8407 22.4982 164.025 6.4138 14.7626 11.6155;
	0.9759 0.8181 0.5979 0.7119 1.5564 60.7443 7.593 12.0098 36.7401 9.2448 8.1064 16.7424;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
