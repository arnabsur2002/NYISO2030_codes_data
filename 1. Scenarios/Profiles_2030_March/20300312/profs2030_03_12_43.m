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
	0.1575 0.1621 0.2467 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	6.5208 6.7729 4.9522 2.8141 2.8401 213.9707 26.7463 35.851 37.7672 59.3202 27.8052 107.4292;
	14.0318 13.3304 10.9809 4.3757 2.9443 395.4624 49.4328 55.5196 95.7048 94.1957 63.0138 170.589;
	20.4367 16.6083 13.8 6.4399 3.4614 408.1873 51.0234 59.534 131.3033 106.0687 69.6053 192.0911;
	25.2334 16.4687 13.6408 5.9468 4.6206 274.6368 34.3296 53.9126 141.8529 111.4402 95.8972 201.8189;
	25.8807 16.5326 13.7459 6.1272 7.2444 289.1982 36.1498 49.5302 195.6859 252.979 177.9827 458.1464;
	25.964 16.5331 13.7863 5.5054 8.3424 277.8864 34.7358 43.3953 223.6595 289.8095 196.224 524.8467;
	25.841 16.5546 13.7855 6.063 9.9936 283.1203 35.39 49.7342 210.375 341.4098 251.475 618.2951;
	23.0765 16.3881 13.5289 5.2694 8.4188 215.8095 26.9762 51.0948 169.9679 313.2925 221.5211 567.3746;
	17.5098 12.2758 8.1665 3.6231 6.1079 115.7849 14.4731 47.9759 123.3468 159.8945 175.1839 289.5699;
	8.947 5.9712 3.0668 4.0026 9.3564 139.9927 17.4991 29.0709 158.7332 135.5639 140.8108 245.5071;
	1.0488 0.8514 0.6167 1.5665 3.4547 65.096 8.137 9.8843 45.2727 65.9998 41.6932 119.5261;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];