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
	0.1266 0.2459 0.2274 0.1882 0.8972 0.0 0.0 0.0 0.0 11.4782 4.2949 20.787;
	0.868 0.6244 0.6687 0.505 1.9652 0.0 0.0 1.6859 13.5364 20.2348 0.0 36.6454;
	1.5373 0.9974 1.0973 0.831 2.1108 12.2461 1.5308 4.6476 40.43 35.0501 0.0 63.4759;
	2.6954 2.3251 2.2866 0.9507 1.8987 63.0131 7.8766 10.6503 128.3327 58.6511 0.0 106.2176;
	2.2984 2.3912 2.2449 0.8995 2.4667 77.0055 9.6257 8.8945 114.3433 67.1595 8.2885 121.6262;
	1.6332 2.1513 2.0875 0.7577 3.3485 77.5031 9.6879 7.4477 103.1781 69.2718 18.2601 125.4517;
	2.0563 1.8095 2.0205 0.7017 4.3747 129.9434 16.2429 15.7928 108.3495 141.76 45.3834 256.7282;
	2.5772 1.7546 2.099 0.6006 4.1237 108.2232 13.5279 15.5619 103.6051 150.9311 36.729 273.3371;
	2.4189 1.7294 1.8905 0.6412 2.8722 89.1955 11.1494 12.8656 84.3676 180.6004 21.7698 327.0684;
	2.8228 1.79 3.6879 0.3796 0.3743 34.7338 4.3417 5.1493 21.5628 110.978 7.7444 200.9818;
	0.6686 0.4345 0.423 0.3995 0.5247 29.6725 3.7091 6.4572 22.1728 21.6218 9.1973 39.1572;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
