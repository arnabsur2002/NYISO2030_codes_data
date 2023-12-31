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
	0.1663 0.1749 0.24 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	6.5335 6.1657 3.8969 3.9826 0.9415 184.4545 23.0568 20.6149 18.7661 30.6038 23.5766 55.4237;
	11.729 12.8394 7.3514 2.0872 2.0117 276.5856 34.5732 33.9137 51.6334 78.4838 64.6448 142.1347;
	18.777 16.6083 12.9579 2.5101 2.3612 251.2088 31.4011 46.1014 103.1293 158.4279 110.0174 286.9139;
	24.2148 16.474 13.7084 4.8329 0.2723 73.5105 9.1888 56.6169 179.1494 178.5242 153.2374 323.3083;
	25.6743 16.5326 13.7859 7.5588 0.271 71.8719 8.984 53.0887 191.4743 183.1123 153.023 331.6175;
	25.964 16.5712 13.7863 8.9271 0.3667 124.2485 15.5311 48.4126 194.3238 164.3837 119.461 297.6998;
	25.8855 16.9403 13.7855 10.3639 3.2877 352.9831 44.1229 57.8491 245.6883 326.8071 178.4372 591.8496;
	23.1316 16.9167 13.7008 9.0593 4.9902 361.3196 45.1649 59.06 236.8599 326.2042 165.3251 590.7577;
	17.2851 16.6997 12.3397 7.3539 5.1461 336.0698 42.0087 56.2 210.2741 254.2065 108.1762 460.3694;
	6.6877 10.8926 6.1853 10.0739 10.6204 265.0519 33.1315 36.8172 129.8972 201.7988 103.4625 365.4588;
	0.9896 1.1097 0.7204 2.4863 3.8088 62.0295 7.7537 9.8843 34.9853 67.0105 38.4196 121.3564;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
