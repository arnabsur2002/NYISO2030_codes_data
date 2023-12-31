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
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.4069 0.329 0.35 0.6221 0.5811 36.684 4.5855 6.6673 10.5183 9.8251 2.7119 17.7933;
	0.1408 0.2376 0.2842 0.9406 0.5119 36.0061 4.5008 10.4784 8.002 27.9338 3.3316 50.5882;
	0.0 0.2102 0.2864 1.4007 1.2562 26.6423 3.3303 6.5234 7.5653 59.239 14.7053 107.2821;
	0.8366 1.2006 1.1769 3.8899 4.4278 23.1455 2.8932 3.2571 32.2547 64.5437 34.3165 116.889;
	2.2487 2.2796 2.0773 6.2417 5.7688 33.6528 4.2066 1.7823 59.5036 76.969 41.7742 139.3913;
	2.8116 2.4965 2.1119 6.6041 5.1154 52.5165 6.5646 1.1954 88.5501 77.6399 49.9274 140.6064;
	2.8494 2.7499 1.1912 4.3834 2.1633 93.0948 11.6369 6.4246 98.829 99.7743 71.003 180.6918;
	1.5995 1.5385 0.7995 3.1056 1.315 42.683 5.3354 7.5373 70.7896 83.7766 52.4541 151.7199;
	0.9873 0.868 0.5619 2.2127 1.0127 20.1389 2.5174 8.5676 36.3515 68.4793 32.393 124.0164;
	1.4005 0.8508 0.9596 1.1909 0.3802 3.0204 0.3775 6.8833 11.5326 70.9223 8.761 128.4407;
	0.3861 0.24 0.1521 0.4786 0.528 32.42 4.0525 7.3028 22.1728 32.2546 10.6338 58.4133;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
