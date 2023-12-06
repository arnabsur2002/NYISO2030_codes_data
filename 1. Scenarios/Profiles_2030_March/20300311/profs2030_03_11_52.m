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
	8.7284 6.6265 5.4036 0.1484 2.2798 0.0 0.0 33.9585 2.3279 69.5436 38.7091 125.9439;
	21.4997 16.4102 12.0012 1.9754 12.7169 136.7375 17.0922 71.5687 29.4854 157.0066 106.7729 284.3399;
	24.2549 16.897 13.8 6.0104 13.7565 270.5056 33.8132 74.3333 72.1013 277.0371 193.3538 501.7158;
	26.334 16.6083 13.2856 9.4354 12.6975 128.7921 16.099 68.2772 70.585 274.9407 245.9501 497.9193;
	26.2856 16.6027 13.0802 9.9606 12.1707 221.5514 27.6939 69.076 91.9137 314.5554 240.2155 569.6618;
	26.334 16.6083 13.5632 10.9136 12.2661 346.7907 43.3488 70.9062 148.2187 320.3417 227.7195 580.1407;
	26.3192 16.6083 13.7985 11.5486 13.4494 413.6958 51.712 72.9668 198.7955 210.8069 177.9707 381.7725;
	23.1576 16.6083 13.714 11.5122 13.4667 416.9711 52.1214 74.7034 211.1482 179.804 155.0614 325.6262;
	12.9078 13.3126 7.2408 7.9484 11.6257 384.3289 48.0411 73.6264 211.2172 146.3219 124.0701 264.9898;
	1.5928 1.9909 0.7842 1.8702 2.0562 172.2761 21.5345 62.6317 172.2939 119.7715 63.9388 216.9069;
	0.6973 0.5902 0.3718 1.2995 2.4585 67.3353 8.4169 13.6529 34.5637 23.5139 19.1505 42.5838;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
