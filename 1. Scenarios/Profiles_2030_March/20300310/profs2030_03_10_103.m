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
	0.0 0.0 0.0 0.9111 1.2788 5.4207 0.6776 0.0 1.9449 16.7789 6.0073 30.3867;
	0.0 0.2741 0.3777 1.1464 1.4602 42.7098 5.3387 0.0 5.4105 31.7253 14.4439 57.4548;
	0.6646 0.7061 0.7148 1.5541 1.8343 63.9798 7.9975 0.0 12.8483 56.4573 26.8477 102.2444;
	2.0881 1.7478 1.1229 3.0326 3.7676 49.4018 6.1752 5.6273 74.2537 174.4207 33.5759 315.8769;
	1.6853 1.4586 0.7848 4.9559 4.4633 20.2822 2.5353 6.0803 69.5715 263.3859 33.7719 476.9935;
	1.5602 1.2182 0.6578 6.4329 4.9613 7.7664 0.9708 5.3072 55.8983 257.7961 30.9588 466.8702;
	3.381 1.6802 1.5082 8.6636 6.2876 62.5593 7.8199 12.9074 50.4017 133.4853 35.3688 241.7427;
	3.1544 1.7662 2.0189 6.8356 5.8682 69.3405 8.6676 12.9212 45.9475 79.9178 30.0276 144.7317;
	2.2913 1.3725 1.6601 5.1618 5.2302 54.2707 6.7838 10.6169 33.2606 59.5107 22.5453 107.7742;
	1.2215 0.899 1.3846 1.278 1.3282 11.3555 1.4194 1.9429 5.8276 36.7868 15.7995 66.6211;
	0.2494 0.2272 0.1834 0.4741 0.542 28.4907 3.5613 6.1431 22.1103 20.8618 11.0438 37.7808;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];