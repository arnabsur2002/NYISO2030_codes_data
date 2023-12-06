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
	0.4796 0.0 0.0743 0.0053 0.2457 0.0 0.0 0.0 0.0 0.0421 0.4096 0.4286;
	7.6115 39.9205 146.6138 30.2601 41.1244 22.0433 8.9795 2.8113 4.0671 242.0812 6.3795 4.8818;
	15.7234 78.9657 246.3016 50.9256 68.722 43.6032 19.661 5.2521 6.1351 407.4046 12.6551 9.8713;
	20.4739 118.8896 258.5748 53.0189 71.9516 65.6484 32.0735 7.4364 7.1439 424.1513 15.8872 13.1142;
	21.9748 159.7396 177.3583 36.1637 54.8416 88.2049 45.1675 5.6131 5.2804 289.3095 15.2988 12.8526;
	23.1703 184.3539 181.809 36.4948 55.273 101.7964 50.9513 6.3201 5.669 291.9582 15.6096 13.0356;
	23.4147 185.7076 181.8737 36.2005 55.0336 102.5439 52.608 6.3966 5.7261 289.6038 15.6409 13.0865;
	12.3252 164.0383 108.1105 18.7978 27.9332 90.5785 49.7544 5.245 5.673 150.3823 9.8298 8.4671;
	10.2284 146.0184 95.6088 16.9141 24.8925 80.6283 42.0642 4.2627 5.1565 135.3132 8.1218 6.8377;
	7.0547 120.1949 82.5906 14.3294 21.4614 66.3692 32.0461 3.3664 4.6308 114.6356 5.9491 4.9046;
	2.8077 41.4331 35.6882 6.1295 10.5701 22.8785 9.531 1.7923 1.4446 49.0359 2.2761 2.176;
	0.5198 15.5878 8.0214 1.7011 2.7727 8.6073 4.7844 0.5941 0.5654 13.6086 0.4741 0.4247;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
