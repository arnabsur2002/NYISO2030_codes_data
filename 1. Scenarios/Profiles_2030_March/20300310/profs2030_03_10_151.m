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
	0.78 1.0367 0.3664 0.5295 1.8086 6.2965 0.7871 23.848 11.2964 11.143 5.1748 20.1801;
	0.8679 0.6886 0.6614 1.3841 2.8295 6.8433 0.8554 10.7619 12.626 41.3238 16.3074 74.8376;
	0.8939 0.7292 0.7772 1.9633 2.2298 7.9865 0.9983 5.8515 14.7881 69.9891 27.2548 126.7507;
	1.4748 1.7405 1.2759 0.9486 0.596 13.1268 1.6409 6.4739 35.6349 29.2638 10.1466 52.9969;
	2.2962 2.2449 1.7672 0.8706 0.1477 0.0 0.0 5.7316 27.6714 19.3879 5.5768 35.1115;
	2.9178 2.4139 2.1905 1.124 0.5915 0.0 0.0 3.0793 17.7299 17.8641 6.2356 32.3521;
	6.3618 4.0364 4.7704 2.5327 1.4106 21.1757 2.647 6.674 37.571 36.6886 12.8518 66.4432;
	4.4983 2.8932 4.0535 2.0893 1.2848 48.1214 6.0152 7.3544 53.9245 44.2273 15.0946 80.0959;
	2.7495 2.1388 2.2855 1.5854 0.847 96.0633 12.0079 11.7766 66.5263 33.0413 13.5916 59.838;
	1.7052 1.5056 1.4935 0.847 0.0713 166.849 20.8561 22.8454 54.4969 25.6807 17.2775 46.5079;
	0.3085 0.2297 0.1659 1.042 0.5292 36.8984 4.6123 7.4135 23.954 22.2227 13.3236 40.2455;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
