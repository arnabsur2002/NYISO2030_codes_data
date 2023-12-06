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
	0.103 0.1055 0.1051 0.0 0.0 0.1251 0.0156 0.1784 0.0 0.0 0.0 0.0;
	6.93 6.5785 2.6471 3.5694 6.6648 61.476 7.6845 21.0972 31.7392 60.6486 16.3105 109.8349;
	10.7151 10.533 6.3215 8.6961 11.935 117.705 14.7131 40.9829 32.1685 81.1028 26.9421 146.8777;
	12.8366 10.7774 7.6659 10.2063 12.4757 106.2486 13.2811 36.2748 36.5349 102.3874 34.5094 185.4242;
	19.5041 12.8564 6.5177 10.3588 11.4232 189.1803 23.6475 51.6621 189.6325 98.6068 27.4324 178.5774;
	23.0665 15.8337 10.6256 9.7001 9.1754 135.7389 16.9674 47.3887 109.0407 81.8804 33.9575 148.2858;
	23.9922 16.0751 13.2624 8.5164 7.0001 137.765 17.2206 54.0996 56.6848 69.5118 40.7892 125.8863;
	26.6436 17.1392 14.1668 3.4963 2.8271 263.1367 32.8921 62.3109 71.213 55.7389 31.8419 100.9435;
	24.2397 16.8499 14.154 4.1291 4.4302 308.5932 38.5742 63.7377 143.9998 62.7302 29.7862 113.6049;
	18.5809 14.3579 12.2432 3.4211 5.4512 273.7043 34.213 60.1003 180.4231 112.8945 43.0023 204.4527;
	7.3869 5.81 5.1123 1.9426 4.8357 46.0318 5.754 17.8535 46.8325 77.9747 17.4684 141.2127;
	1.1075 1.0993 0.8979 0.6973 1.3958 35.0241 4.378 8.0404 20.4308 16.0569 9.2383 29.0792;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];