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
	0.0141 0.0204 0.0062 0.0 0.0 0.0 0.0 0.066 0.0 0.0 0.0 0.0;
	8.4654 4.0599 4.3523 0.8382 5.3591 245.1017 30.6377 33.8483 24.157 67.4267 38.8956 122.1102;
	22.4645 15.1442 13.0786 6.7418 10.816 391.2155 48.9019 71.0311 68.2467 22.1768 56.1534 40.1623;
	26.0725 16.8679 13.9962 10.3085 12.2546 412.4527 51.5566 75.0894 155.614 64.9348 152.02 117.5972;
	26.8745 16.693 13.8271 11.2167 10.4146 384.3901 48.0488 75.0755 257.4636 229.6053 193.6039 415.8167;
	26.4756 16.6083 13.8 11.4243 10.9287 376.0818 47.0102 73.2116 265.1083 305.5482 217.981 553.3496;
	26.3858 16.6441 13.8125 11.4477 10.8657 377.1207 47.1401 68.7869 264.4107 320.2058 224.4111 579.8947;
	26.9911 16.9697 14.2892 11.1612 11.0976 432.2853 54.0357 70.3833 262.6115 191.8754 186.9116 347.4876;
	26.1535 16.9052 14.3034 10.7432 10.985 442.2706 55.2838 73.2437 253.1762 159.3795 159.9164 288.6373;
	23.1405 15.7461 13.6956 6.0722 9.7409 449.2631 56.1579 72.6927 232.4536 119.5727 122.3141 216.5468;
	9.622 5.9755 5.5844 4.0197 6.4227 406.146 50.7682 58.4123 108.1714 94.7671 47.4983 171.6239;
	0.8415 0.819 0.4609 1.4236 2.8532 72.6495 9.0812 10.4183 24.5918 23.0332 18.2168 41.7133;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];