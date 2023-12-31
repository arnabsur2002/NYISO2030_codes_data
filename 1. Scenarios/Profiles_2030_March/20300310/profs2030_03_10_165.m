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
	0.4628 0.3114 0.2429 1.1292 5.9037 98.3535 12.2942 24.5732 14.6092 15.4988 4.59 28.0684;
	1.0103 1.208 0.6874 1.478 6.6008 47.8231 5.9779 17.8831 13.3022 126.8917 13.6585 229.8016;
	1.3167 1.7205 1.12 1.9942 6.3127 30.2953 3.7869 18.0362 18.1888 182.3924 26.9624 330.3137;
	2.7222 2.2723 2.2685 2.4994 6.036 44.3114 5.5389 32.2907 83.9038 127.3441 36.7273 230.621;
	2.1576 1.5288 1.6227 4.7788 7.8491 61.3433 7.6679 34.6851 84.2622 106.086 42.562 192.1225;
	2.1393 1.4278 1.472 6.5752 8.7296 77.3577 9.6697 29.796 83.6066 111.2934 44.879 201.553;
	12.6768 8.4853 8.2347 6.3334 5.2968 151.8391 18.9799 35.4225 118.5942 249.524 53.8894 451.8894;
	16.6073 12.4707 10.1634 4.5574 3.5151 116.0983 14.5123 26.3846 118.3241 264.4027 46.1765 478.8348;
	15.2951 7.8809 9.816 2.4808 2.7255 80.8832 10.1104 23.7824 112.0076 239.6907 35.309 434.0814;
	2.6811 1.34 1.7204 1.0734 1.9448 34.3895 4.2987 19.4186 56.7705 109.7529 22.2347 198.7631;
	0.2494 0.2189 0.1471 0.5708 1.2303 29.7174 3.7147 7.2762 23.95 22.4034 14.2185 40.5727;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
