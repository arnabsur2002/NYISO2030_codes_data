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
	1.0295 0.8311 0.7016 0.0 0.0 10.0149 1.2519 4.1887 1.3615 0.0 0.0 0.0;
	13.5183 7.7399 8.074 2.3875 4.4224 153.8749 19.2344 33.2514 71.6436 68.0665 34.2657 123.2688;
	20.2241 14.7023 13.7035 4.696 6.5061 283.4139 35.4267 52.7379 154.6752 119.5778 108.1992 216.5561;
	23.3747 16.6083 13.9117 6.8784 7.8651 352.2545 44.0318 61.1237 203.0163 206.3533 171.1749 373.7071;
	23.208 16.3661 13.767 5.565 8.6921 373.0396 46.6299 63.6942 245.7966 220.0014 243.2612 398.4238;
	24.6031 16.5136 13.8 6.6272 8.9294 374.7426 46.8428 73.1586 253.6418 253.0231 229.8059 458.2264;
	24.91 16.5714 13.8 7.1425 8.1431 371.2736 46.4092 75.7582 254.518 258.3941 228.1974 467.9532;
	19.9699 15.9262 13.4455 6.0294 5.6438 337.7471 42.2184 65.4755 223.3087 198.4333 200.8203 359.3638;
	14.5263 15.2675 12.0485 4.0931 4.596 317.8956 39.737 55.571 184.1323 187.492 181.4965 339.5492;
	9.4099 11.1581 6.5299 2.0879 3.873 252.4051 31.5506 25.6352 120.9574 142.9739 160.3512 258.9265;
	6.348 6.1517 3.1268 0.9613 3.6667 65.151 8.1439 5.3392 62.4779 52.1212 69.5486 94.3919;
	1.3141 1.0742 0.8085 0.7948 1.1217 62.1409 7.7676 11.699 32.5965 12.7299 14.8895 23.054;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];