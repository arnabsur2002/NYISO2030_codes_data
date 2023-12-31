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
	0.1575 0.1621 0.24 0.0 0.0 0.0 0.0 0.0396 0.0 0.0 0.0 0.0;
	9.4616 11.0738 5.7975 1.6224 1.871 208.7154 26.0894 55.8491 81.378 32.8956 23.9967 59.5741;
	16.737 12.5927 10.5687 2.5699 2.0812 291.3554 36.4194 43.8856 66.3528 115.8394 103.462 209.7858;
	19.6607 13.649 13.33 4.1874 2.7244 307.1734 38.3967 41.9968 45.8942 181.9884 146.1668 329.5821;
	23.1998 13.2413 13.0874 4.8664 3.0871 138.9289 17.3661 22.1074 47.1335 79.652 162.1539 144.2503;
	25.7403 16.0668 13.4977 6.0196 3.8222 78.4896 9.8112 18.9033 36.7383 114.7904 197.4912 207.8861;
	25.9052 16.2803 13.2205 5.8562 3.9971 67.4465 8.4308 16.301 35.6315 157.3849 227.9311 285.0251;
	23.8903 14.18 11.4847 6.6923 7.7062 291.5042 36.438 42.5319 171.8029 302.5934 257.4771 547.9985;
	19.3606 13.0004 11.7334 5.4956 5.9716 331.4983 41.4373 44.8352 203.311 247.1853 227.557 447.654;
	13.8492 9.2384 7.9513 3.5497 3.8482 332.4672 41.5584 46.3563 227.3167 66.4003 171.0058 120.2514;
	8.7283 5.8383 5.1055 3.6144 6.9645 301.0666 37.6333 45.064 249.5389 8.2934 70.049 15.0194;
	0.9524 0.7333 0.5167 1.5365 3.4199 65.447 8.1809 10.0373 41.7665 61.5863 39.526 111.5332;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
