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
	0.4095 0.3481 0.302 0.0 0.0 0.6615 0.0827 0.1431 0.1893 0.0 0.0 0.0;
	1.8664 3.1806 0.6832 1.5596 4.8388 178.8217 22.3527 60.048 63.3535 207.199 87.4557 375.2387;
	8.5514 7.1669 2.8155 2.0629 7.4209 147.1488 18.3936 55.2118 37.1154 219.1813 159.7594 396.9386;
	15.1399 10.5128 4.1883 2.6277 8.3556 138.3906 17.2988 53.525 37.901 241.1995 159.6331 436.8137;
	14.946 7.0641 5.1738 8.0629 12.7364 151.0604 18.8826 49.2076 133.2839 237.3327 148.4146 429.8109;
	15.6756 11.0533 6.4004 10.4742 12.0376 140.0698 17.5087 44.8792 143.6234 166.9957 168.9562 302.4302;
	14.878 13.1972 7.7003 9.783 11.0966 97.4865 12.1858 34.4941 95.0938 94.4807 170.0839 171.105;
	6.8574 10.5331 5.9764 4.1387 4.8395 113.196 14.1495 27.605 90.0187 108.0826 92.6022 195.7383;
	6.0145 7.3096 4.573 3.5358 4.6574 118.5243 14.8155 22.7512 112.355 128.7159 64.9006 233.1052;
	3.3475 4.0673 2.6012 1.99 4.5261 130.7534 16.3442 19.2319 157.6077 123.9545 32.2798 224.4824;
	1.5307 0.7868 0.7515 2.3039 2.4065 162.9806 20.3726 13.3194 179.0183 19.5163 6.867 35.3441;
	0.4346 0.2705 0.2555 1.1578 1.2791 51.8448 6.4806 3.6726 41.7317 4.8689 4.1134 8.8176;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
