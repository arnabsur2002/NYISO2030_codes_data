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
	0.0068 0.0133 0.0258 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	9.3774 7.8034 8.8858 2.5967 5.7605 436.2544 54.5318 77.8775 177.9232 70.508 41.481 127.6903;
	21.3396 16.5669 14.0838 3.0947 7.502 456.6619 57.0827 78.5215 165.9287 237.9339 110.3182 430.8998;
	25.5692 17.1877 14.3178 5.6545 8.8912 469.6804 58.7101 77.9512 168.9126 322.9357 135.0547 584.8385;
	27.1364 17.2807 14.3314 10.888 7.3721 449.7763 56.222 74.2185 225.4198 265.9962 83.3589 481.7206;
	26.8551 17.0681 14.1982 11.4504 9.1389 449.2297 56.1537 75.2021 249.9196 274.6465 182.424 497.3865;
	26.4016 16.7742 13.8961 11.4717 9.0753 445.4394 55.6799 75.7085 255.7618 277.1153 203.9747 501.8574;
	24.3696 16.6083 13.8 11.4045 7.6727 445.1749 55.6469 75.5707 250.8729 191.2985 89.9761 346.4427;
	18.4955 16.6083 13.8 10.3458 7.2319 434.9789 54.3724 76.5414 235.2894 176.5078 34.701 319.6568;
	11.7916 13.7855 11.0615 4.0794 6.9396 422.5901 52.8238 75.5809 220.6577 152.2192 30.7617 275.6699;
	6.2157 7.1098 4.507 1.9223 4.3429 331.6556 41.457 62.6487 161.4469 122.7251 46.0253 222.2558;
	0.7157 0.662 0.3868 1.2449 2.4345 56.0655 7.0082 10.3086 24.8643 35.8907 21.9923 64.9983;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
