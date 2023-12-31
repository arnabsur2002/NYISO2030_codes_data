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
	2.8482 1.3844 0.2263 2.3224 2.8597 216.5453 27.0682 53.2834 150.3762 69.5338 40.6766 125.9261;
	16.5175 13.149 4.1884 7.1074 10.7373 350.1984 43.7748 73.9737 168.9572 203.9157 188.1152 369.2925;
	23.3628 16.6062 13.5528 10.0951 12.302 367.1837 45.898 75.1559 165.9 314.0913 229.7831 568.8212;
	26.334 16.6083 12.0543 10.8886 10.0262 298.7782 37.3473 66.3157 127.0127 134.076 194.6718 242.8124;
	25.0519 16.1929 10.8874 11.1618 9.9386 275.8017 34.4752 65.8034 100.5983 82.1732 197.4366 148.8162;
	23.4819 14.8526 10.9824 11.4397 10.2988 261.3541 32.6693 66.9073 96.1386 82.4238 192.6934 149.2701;
	25.1627 14.6827 11.414 11.6609 12.9755 353.3074 44.1634 72.4363 132.8662 55.8908 171.5768 101.2185;
	20.929 15.3298 11.4623 11.628 13.306 391.7018 48.9627 74.093 135.9439 83.4564 154.0678 151.1401;
	12.3807 8.8864 4.0701 9.5067 12.3337 387.9219 48.4902 71.3775 117.9268 86.6704 123.3753 156.9606;
	3.7855 2.5709 1.1606 3.1523 6.9186 206.5987 25.8248 19.9507 40.54 69.5662 68.2298 125.9848;
	0.7314 0.6092 0.4318 1.2854 2.7333 44.3341 5.5418 8.424 19.5882 22.2864 20.5685 40.3609;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
