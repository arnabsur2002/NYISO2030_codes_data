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
	0.4357 0.377 0.3901 0.0 0.0 2.3421 0.2928 0.1681 3.2372 0.0 0.0 0.0;
	3.8735 3.0791 2.5053 10.0066 10.8695 106.25 13.2813 16.5642 102.5154 67.0909 18.9168 121.502;
	4.1603 4.7972 4.0906 10.4985 12.4331 141.1351 17.6419 26.854 193.0892 109.5714 24.2716 198.4345;
	4.7042 6.2844 5.0147 10.9971 11.2545 149.7994 18.7249 30.1115 201.962 150.3495 44.8715 272.2839;
	9.483 10.6826 7.9776 11.8428 13.8817 164.1318 20.5165 18.5673 137.7168 255.3836 144.361 462.5013;
	17.0571 15.1284 11.4218 11.1029 13.1231 176.329 22.0411 15.8758 112.2762 275.5839 178.605 499.084;
	19.7185 15.9748 12.0863 9.6012 12.2451 187.6749 23.4594 16.6374 132.187 278.8551 191.4828 505.0083;
	10.8729 9.4196 8.0621 10.9755 8.0646 265.0864 33.1358 25.5741 260.3188 219.2235 156.3302 397.0151;
	7.0979 6.3057 3.8044 11.1922 6.1674 246.152 30.769 22.1166 260.8781 195.7898 148.8234 354.5766;
	3.665 2.9406 1.8098 10.5934 3.3668 205.3134 25.6642 17.0968 228.233 169.0525 139.4128 306.1551;
	2.0305 1.485 0.9801 4.2723 0.3764 177.1255 22.1407 11.1495 136.1582 21.4835 13.7899 38.9068;
	0.7225 0.6477 0.4599 1.0498 0.5784 68.0872 8.5109 5.6795 54.4278 0.2623 4.0335 0.475;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
