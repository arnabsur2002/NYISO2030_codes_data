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
	0.0 0.0596 0.0239 0.711 1.4509 5.8044 0.7256 1.9786 0.0 12.3078 5.6868 22.2894;
	0.0 0.428 0.3553 1.0366 1.6837 11.0449 1.3806 3.2172 4.6418 28.1089 14.8826 50.9054;
	0.0 0.6955 0.555 1.3077 1.5336 18.1512 2.2689 4.6349 16.2119 45.4138 25.2049 82.2446;
	1.1505 1.7324 1.0975 1.7577 1.7412 54.4391 6.8049 11.7042 148.7037 56.2244 24.8781 101.8227;
	1.6215 1.9322 1.2823 2.3512 2.7851 67.9351 8.4919 11.9129 164.6834 68.3878 33.4065 123.8507;
	2.1065 2.0064 1.3991 3.1798 4.2269 58.1162 7.2645 10.679 120.5452 72.8023 43.0251 131.8453;
	3.8486 2.9154 1.5949 5.0299 5.4544 81.1692 10.1462 26.4993 53.3721 107.5522 87.945 194.7777;
	4.1594 2.6831 1.8674 3.9466 4.8591 64.6811 8.0851 22.2382 49.0444 96.3767 74.1191 174.5388;
	4.6964 2.1496 1.655 2.2203 3.8512 68.6062 8.5758 19.4034 62.1634 102.066 38.1412 184.8421;
	5.4518 1.6713 1.7508 0.7773 0.9402 64.767 8.0959 8.0683 75.6503 147.3593 17.4611 266.8685;
	0.4868 0.3128 0.2818 0.4834 0.817 33.2599 4.1575 6.4567 22.7574 38.4974 11.1985 69.719;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
