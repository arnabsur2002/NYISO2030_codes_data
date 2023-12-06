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
	0.0 0.0 0.0136 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	7.9759 6.7737 5.7392 5.4883 5.7258 161.0945 20.1368 41.5867 20.6842 69.5336 40.2042 125.9257;
	15.7389 14.2834 11.1278 7.7926 9.9449 319.6483 39.956 68.4534 31.3764 102.6869 95.8472 185.9666;
	22.7817 16.6029 13.8 10.3405 10.6339 354.2171 44.2771 70.0513 32.0634 181.3619 165.313 328.4474;
	26.7983 17.0665 14.045 11.3016 6.1067 287.5406 35.9426 64.3393 32.7482 252.1558 210.125 456.6557;
	27.2534 17.2053 14.2127 11.4504 4.9395 237.1841 29.648 65.3526 36.937 285.8451 239.6841 517.6672;
	27.288 17.1532 14.1913 11.4717 6.5657 226.0244 28.2531 66.3453 50.7028 305.8142 242.4734 553.8313;
	27.2613 16.8875 14.0349 11.767 11.5445 396.704 49.588 72.7571 156.9984 313.2702 233.5653 567.3342;
	26.2873 16.8967 14.0435 11.8352 12.2054 421.5805 52.6976 75.1085 177.4859 327.8524 204.7246 593.7427;
	25.1407 16.9709 13.8294 11.5426 11.3823 426.8457 53.3557 74.5058 163.8099 305.4111 216.0785 553.1013;
	20.8575 16.105 13.3572 9.0559 5.1204 325.9466 40.7433 65.614 75.8301 148.4801 154.8556 268.8984;
	1.2326 1.3224 0.8987 1.3049 2.4534 51.0659 6.3832 11.8719 20.3396 21.8621 19.3962 39.5924;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];