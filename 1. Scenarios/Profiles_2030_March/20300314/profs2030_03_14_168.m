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
	0.1004 0.1241 0.1255 0.0 0.0 0.1931 0.0241 0.3156 0.0313 0.0 0.0 0.0;
	1.6976 2.1256 1.2035 0.8765 1.8403 97.4347 12.1793 28.8731 38.0433 188.5019 86.6123 341.378;
	4.3075 4.4496 3.0462 3.1336 10.1457 85.5213 10.6902 33.3564 52.2699 157.8721 128.3887 285.9073;
	8.4639 8.3368 5.6498 5.1826 12.1723 86.18 10.7725 40.2462 76.06 154.7922 142.7232 280.3296;
	21.9283 16.2966 13.4772 10.2868 12.0096 356.1604 44.5201 69.2048 244.1719 98.4258 81.437 178.2498;
	26.3394 17.0413 14.2871 11.1561 12.1244 346.8197 43.3525 69.6003 247.1409 199.7918 146.3796 361.8241;
	27.2534 17.2539 14.4794 11.4615 12.4058 344.6357 43.0795 67.9334 250.4839 273.091 167.4425 494.5695;
	27.0044 17.1839 14.2918 11.3447 8.8049 337.1466 42.1433 64.8183 250.0468 232.8564 98.5735 421.7044;
	22.1087 16.269 13.7437 10.9919 7.9348 331.746 41.4682 63.4904 239.1953 180.6807 46.622 327.2139;
	13.9418 11.2595 9.4004 9.9312 6.6488 274.7978 34.3497 57.859 213.5126 94.7052 30.1174 171.5117;
	4.4879 3.3602 3.6723 3.909 4.0358 48.8158 6.102 9.2544 30.2059 16.1708 5.1305 29.2854;
	1.2851 0.8319 0.8103 0.9004 2.0138 33.0861 4.1358 6.2552 22.079 13.8721 7.6094 25.1224;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
