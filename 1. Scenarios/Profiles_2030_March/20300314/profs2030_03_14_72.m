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
	0.1135 0.1138 0.1873 0.0 0.0 0.1251 0.0156 0.1784 0.0 0.0 0.0 0.0;
	3.5632 2.691 3.1735 2.0927 3.6745 60.8609 7.6076 33.6228 40.8859 150.0651 35.0477 271.7687;
	4.9989 4.3907 5.1057 7.8031 11.6231 104.3567 13.0446 50.2495 114.1686 263.8358 66.1545 477.8083;
	8.1981 6.9011 7.3941 10.7288 12.6074 124.8198 15.6025 51.9819 153.5013 283.2482 90.7957 512.9643;
	23.2186 16.0244 14.1828 10.7145 10.7653 399.6521 49.9565 66.4721 267.4886 257.1965 125.9985 465.7844;
	24.9717 16.1057 14.4127 10.8728 9.3247 406.1357 50.767 62.4744 268.3352 254.1967 131.5712 460.3518;
	24.5195 16.1103 14.1815 10.7369 8.8204 417.6586 52.2073 62.0619 272.8802 246.101 108.5369 445.6904;
	24.7787 16.6486 13.7384 5.09 3.5403 417.7902 52.2238 69.3545 276.9849 278.7281 137.9722 504.7783;
	22.0909 16.2582 13.093 4.5571 3.4831 413.4769 51.6846 71.5664 276.7813 292.2623 135.1039 529.2888;
	19.9552 14.3528 9.6362 2.7557 3.3076 399.4792 49.9349 70.1237 263.4599 264.2732 131.8469 478.6003;
	12.2913 6.553 5.8444 1.1756 3.7529 173.3481 21.6685 27.3407 91.0001 45.5522 30.846 82.4954;
	1.3318 0.8686 0.807 0.7898 2.1352 53.6386 6.7048 6.8447 29.272 11.0185 7.5868 19.9545;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];