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
	0.0 0.0062 0.002 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	9.3763 7.9855 5.9689 3.061 4.882 243.2664 30.4083 47.9654 135.3456 69.7691 39.2809 126.3522;
	18.5721 16.5115 13.1528 5.2866 8.739 392.0163 49.002 73.3799 128.3102 76.0861 112.5855 137.7924;
	23.575 17.1328 13.8869 7.7999 9.9649 412.5916 51.574 75.7724 147.9586 127.7049 182.9146 231.2743;
	27.0528 17.3841 13.9137 11.2564 6.6976 386.6447 48.3306 73.3632 198.2662 163.8011 154.4358 296.6449;
	27.4278 17.4075 14.0593 11.4504 7.8257 388.1806 48.5226 74.865 196.3682 273.3285 210.907 494.9996;
	27.4052 17.3967 14.0953 11.4717 8.6208 389.313 48.6641 75.2399 165.1194 282.4427 220.458 511.5055;
	26.7331 16.903 13.8962 11.632 11.0283 420.2272 52.5284 75.3077 98.1775 92.8166 140.8508 168.0914;
	23.6226 16.6083 13.8 11.5984 11.4262 427.2424 53.4053 75.6942 93.5445 61.121 44.4817 110.6905;
	17.6131 13.7389 11.0312 9.6038 10.9823 428.2454 53.5307 73.902 118.4286 57.0246 24.5065 103.2718;
	8.8385 4.9298 2.9664 6.3813 8.4549 377.9093 47.2387 59.0193 100.1629 90.7182 20.3609 164.2911;
	0.7566 0.6478 0.3852 1.3502 3.2068 61.151 7.6439 12.3271 22.0391 28.4914 25.0691 51.598;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
