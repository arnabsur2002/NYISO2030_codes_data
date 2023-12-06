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
	0.0951 0.0972 0.1051 0.0 0.0 0.1251 0.0156 0.1784 0.0 0.0 0.0 0.0;
	2.6017 2.2509 1.6771 1.7773 3.2621 12.1779 1.5222 13.817 19.1841 44.283 25.4896 80.1967;
	7.6308 6.0305 5.1983 3.6455 8.9821 50.3226 6.2903 12.6294 35.4028 93.2576 38.937 168.8901;
	11.6265 9.1938 7.475 5.2751 10.7507 89.1347 11.1418 14.9308 54.7265 205.1738 76.7411 371.5709;
	21.4836 15.8152 13.1643 6.0632 9.4919 353.1703 44.1463 63.0745 197.3435 264.4869 96.146 478.9874;
	22.7423 16.0537 13.2545 9.3657 8.3358 341.9133 42.7392 64.2233 158.435 324.4729 166.0846 587.6223;
	21.5733 16.0247 13.2624 9.2663 6.2307 358.3092 44.7886 64.8149 143.6652 316.4131 173.512 573.026;
	21.8041 16.5824 13.7384 0.6147 0.4459 376.2519 47.0315 64.8002 140.3726 76.6025 41.652 138.7276;
	20.3425 15.9755 13.6185 0.2179 0.741 383.0578 47.8822 65.4136 156.1584 13.5991 11.5702 24.6281;
	17.4797 15.7133 12.9276 0.0 0.43 358.7783 44.8473 65.114 135.3737 4.5207 3.4398 8.187;
	16.9792 15.1484 12.9608 0.1387 1.0483 120.9628 15.1204 41.0396 20.7902 0.0 1.4119 0.0;
	1.8583 1.5052 1.1213 0.6789 1.3075 49.1532 6.1442 9.7286 20.4344 11.9187 9.28 21.5849;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];