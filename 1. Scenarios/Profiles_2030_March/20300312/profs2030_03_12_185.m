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
	0.1575 0.1621 0.24 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	8.7068 7.5756 6.6753 0.6838 0.5621 27.0455 3.3807 8.3102 16.7425 51.0828 21.6889 92.5113;
	17.2501 14.6167 11.1569 1.5949 0.5936 226.1184 28.2648 6.4967 87.8951 115.9759 29.0061 210.0331;
	22.9441 16.6083 13.7135 4.2394 0.3913 333.0214 41.6277 12.9575 145.9423 180.1666 104.8179 326.2827;
	25.5907 16.474 13.677 5.692 1.1529 324.2396 40.53 18.42 98.6327 232.7882 181.0039 421.5809;
	25.9535 16.5326 13.7859 6.3968 2.0438 283.2655 35.4082 24.2166 42.7594 259.9366 190.5525 470.7467;
	25.964 16.5367 13.8139 6.4178 3.5365 227.846 28.4807 28.0993 22.2301 267.8754 184.9604 485.124;
	25.6232 16.5546 13.7994 7.3519 9.9023 265.0667 33.1333 41.0335 48.3818 341.783 227.8979 618.9712;
	19.4271 16.3881 13.7008 5.6509 10.0574 268.5545 33.5693 33.2977 44.2334 338.2063 213.4339 612.4936;
	9.397 12.9532 9.3925 3.4891 9.7597 196.6232 24.5779 21.8839 28.8201 319.2624 174.5258 578.1861;
	1.4011 4.5482 1.3595 4.0207 12.3959 58.9304 7.3663 17.3643 19.2023 259.0054 164.4829 469.0603;
	0.8962 0.7396 0.5133 1.6497 4.2572 58.226 7.2783 10.1203 34.9853 67.1239 41.6699 121.5618;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];