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
	1.8456 2.7993 1.6144 0.5208 2.3306 1.9129 0.2391 0.452 14.3913 9.8442 3.7807 17.8279;
	0.8935 1.0678 0.9186 2.3463 8.6494 7.3913 0.9239 1.6587 19.6791 11.3751 7.5796 20.6004;
	0.7773 0.8825 0.7657 3.3143 10.236 17.3266 2.1658 4.7914 23.4956 27.8993 17.9022 50.5258;
	1.4692 1.984 0.8688 1.7535 5.6595 41.7726 5.2216 32.4282 60.6862 48.9821 28.1014 88.707;
	2.4339 2.6723 1.4795 1.0784 3.7694 42.046 5.2557 35.7104 67.6935 60.8728 27.585 110.2411;
	3.2569 6.0921 2.2684 0.8728 2.2929 21.6224 2.7028 26.7911 65.619 48.312 19.2228 87.4934;
	15.6609 15.1432 8.4827 1.1283 0.7235 1.1116 0.139 27.3038 54.643 23.537 8.3166 42.6256;
	11.0596 12.4107 4.1928 1.5523 0.9041 0.0 0.0 20.9606 41.5214 17.7448 8.8189 32.1359;
	3.9002 3.8407 1.8785 1.6368 1.4136 3.3592 0.4199 17.904 31.2718 19.3976 11.9518 35.1292;
	1.5832 1.3989 0.7782 0.867 2.6608 17.3043 2.163 10.6967 16.5747 35.1281 19.0685 63.6173;
	0.2718 0.2998 0.1537 0.5518 1.4583 28.5142 3.5643 6.2303 22.2734 21.0272 10.8483 38.0803;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];