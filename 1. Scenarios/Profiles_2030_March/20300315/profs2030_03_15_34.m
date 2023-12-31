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
	0.4215 0.3668 0.3203 0.0 0.0 0.7025 0.0878 0.2719 0.1581 0.0 0.0 0.0;
	2.3224 2.4384 1.5255 1.0705 0.5312 140.8123 17.6015 21.4476 167.0591 19.0352 5.2974 34.4729;
	4.99 5.3007 3.7466 2.6676 1.1443 181.5188 22.6898 32.5838 233.4505 135.1688 28.7031 244.7915;
	7.7809 6.6831 4.8129 5.141 2.1589 198.1911 24.7739 36.4192 237.6669 251.0125 86.0729 454.5851;
	7.2303 6.1882 6.6999 11.4438 12.4092 264.2704 33.0338 40.8103 216.3476 328.0595 123.4305 594.1177;
	9.9473 9.0193 8.8464 11.7247 12.2312 297.2784 37.1598 49.815 237.1275 311.3407 164.0821 563.8399;
	12.3527 11.2167 10.5577 11.9285 12.3673 339.8408 42.4801 57.7712 265.8779 304.8189 173.5077 552.029;
	9.0696 8.5243 8.5223 11.9659 11.3829 449.5141 56.1893 70.7681 290.7118 230.3318 119.7881 417.1323;
	6.7637 6.8345 5.6983 11.6675 10.3517 462.8135 57.8517 67.2736 285.0331 209.8327 104.0055 380.0083;
	3.0357 3.0529 2.699 10.4803 8.9891 435.6165 54.4521 71.2837 260.7814 181.7055 60.6493 329.0697;
	1.0375 0.5601 0.4379 5.1128 2.5979 363.6176 45.4522 38.8289 162.1069 27.2545 8.1607 49.358;
	0.2752 0.2199 0.2123 1.5636 1.3705 77.4869 9.6859 7.3161 42.4655 9.6944 5.2123 17.5567;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
