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
	0.4252 0.3709 0.3101 0.0 0.0 0.1765 0.0221 0.5931 0.0956 0.0 0.0 0.0;
	3.9643 3.3453 1.6931 5.6823 2.1873 34.4189 4.3024 10.8131 59.099 101.2704 11.9442 183.4012;
	2.5602 2.8968 1.0626 5.4765 1.6913 67.4051 8.4256 15.2652 98.6644 222.2027 81.7616 402.4105;
	1.7593 2.0438 0.8675 6.1662 1.8417 115.484 14.4355 25.8268 109.8227 304.4998 139.5638 551.4509;
	2.7098 2.0833 2.1837 10.9879 12.2288 222.6128 27.8266 41.4582 93.4748 340.7352 151.9414 617.0734;
	3.1077 3.8636 3.3669 11.2104 12.7139 227.3449 28.4181 42.7038 132.8802 354.2038 187.8165 641.4652;
	3.6358 6.9482 3.482 11.276 13.5777 215.0433 26.8804 36.8302 153.0604 358.8205 203.6886 649.8261;
	4.1621 5.1304 3.5458 11.2462 12.2232 280.764 35.0955 30.0035 203.7731 281.2029 160.0948 509.2601;
	5.2232 4.8651 2.7459 10.7891 10.5741 277.4638 34.683 23.9883 196.5199 195.7087 137.2752 354.4296;
	4.6226 2.8485 2.7445 9.2656 9.0083 252.6536 31.5817 20.3287 177.4405 140.5362 108.1813 254.512;
	1.9991 1.1344 1.2632 6.0963 4.4286 192.6993 24.0874 16.5224 159.4174 23.5081 15.9588 42.5733;
	0.2845 0.2556 0.2145 1.8882 2.2212 53.8269 6.7284 4.276 50.3321 58.3732 20.1698 105.7142;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
