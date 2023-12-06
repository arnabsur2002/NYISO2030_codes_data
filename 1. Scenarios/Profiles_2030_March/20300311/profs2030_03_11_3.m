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
	9.5771 9.4961 9.3738 1.7941 6.9262 396.4835 49.5604 43.0595 96.8385 71.4377 39.4885 129.3742;
	10.4029 11.0942 10.8163 2.4193 9.0193 382.8961 47.862 72.0484 147.5729 130.3679 127.6869 236.0971;
	7.876 9.762 11.63 4.9812 9.8393 401.128 50.141 74.4495 151.1513 110.4394 191.2865 200.0065;
	19.7904 5.1507 9.9062 7.1848 6.2087 430.1525 53.7691 69.7997 169.8582 10.2032 72.8334 18.478;
	22.5872 11.0655 12.3378 8.8034 7.4078 425.2198 53.1525 66.7826 175.0147 26.6074 47.3298 48.1862;
	23.7342 14.6738 12.8796 10.5511 7.7523 405.3368 50.6671 66.1108 199.3381 67.9009 33.6967 122.969;
	21.4182 14.9487 11.1961 11.62 9.176 432.3235 54.0404 72.771 257.8039 43.012 31.4833 77.895;
	17.0691 15.3908 11.4 11.5984 9.4669 441.4662 55.1833 75.9665 254.6345 69.403 35.6525 125.6892;
	15.9238 11.8811 8.4582 9.4769 9.5037 446.5264 55.8158 75.3796 228.607 63.0783 63.2735 114.2352;
	12.7656 7.6242 6.1471 5.3301 8.0085 324.3181 40.5398 50.5892 69.7362 31.9173 29.9242 57.8024;
	0.7891 0.6555 0.4258 1.3209 2.8287 44.3341 5.5418 8.5876 19.6622 17.6126 18.2041 31.8965;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];