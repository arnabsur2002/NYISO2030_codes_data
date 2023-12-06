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
	8.6258 6.6608 5.5271 2.8284 1.6289 237.3933 29.6742 6.9013 91.441 67.2325 38.5302 121.7584;
	19.1453 13.5029 8.6532 7.1228 9.0166 341.5183 42.6898 47.6963 147.6609 21.8163 27.6739 39.5095;
	23.6367 16.6029 13.2841 10.4539 11.975 366.54 45.8175 52.8642 164.1499 64.902 102.128 117.538;
	26.334 15.91 13.503 11.2835 10.3919 342.5365 42.8171 49.5478 141.4723 108.2013 146.7544 195.9532;
	26.3854 16.5154 13.8 11.3928 10.1308 326.8804 40.86 46.8675 124.4909 124.8636 176.2394 226.1288;
	26.6046 16.6083 13.8 11.1638 10.2266 309.0118 38.6265 49.4598 106.5609 134.0916 181.9697 242.8408;
	26.5697 16.6083 13.5633 11.3003 12.7506 385.3662 48.1708 69.5229 99.836 155.4729 143.7053 281.5624;
	23.3789 16.3009 11.9655 11.415 13.1705 410.2538 51.2817 73.5577 99.2288 168.3078 101.475 304.8064;
	12.645 7.3727 3.2434 8.9256 11.9373 411.5989 51.4499 72.5607 101.7886 141.5224 72.4253 256.2979;
	1.5499 1.2158 0.9453 4.6045 4.2858 325.8002 40.725 47.1542 59.1692 64.0756 11.0979 116.0414;
	0.6973 0.5892 0.3718 1.3035 2.5034 49.38 6.1725 9.073 23.2998 19.1043 17.2616 34.598;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
