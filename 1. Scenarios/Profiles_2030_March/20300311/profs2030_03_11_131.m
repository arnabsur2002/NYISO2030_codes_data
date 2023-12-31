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
	4.9931 2.6367 2.4409 5.4272 5.4114 220.9254 27.6157 49.7704 152.6865 71.0047 39.3033 128.59;
	15.1398 9.7738 5.4034 6.7921 5.5349 288.0516 36.0065 73.4816 121.0483 250.3495 87.3244 453.3845;
	19.8434 15.326 11.0719 7.8981 6.8941 273.5457 34.1932 74.7199 79.2182 319.5671 156.8436 578.738;
	20.1906 8.7988 9.2843 10.0475 3.3658 206.6448 25.8306 64.2357 37.4758 192.6765 154.6776 348.9384;
	18.5955 8.5289 10.2403 10.9888 5.8363 220.7602 27.595 64.0969 40.5339 255.8099 197.4723 463.2733;
	21.4433 13.1625 12.2457 11.1762 6.8407 242.0439 30.2555 65.9218 54.2901 288.1317 216.3804 521.8083;
	26.3192 16.6083 13.7995 11.2819 10.0156 365.9913 45.7489 71.5795 136.3277 210.8075 176.7332 381.7737;
	23.418 16.6083 13.8 11.0421 11.0259 394.2925 49.2866 73.5785 141.0033 191.49 154.8809 346.7896;
	17.5736 13.8356 10.9981 7.0328 10.7937 389.2107 48.6513 71.2079 120.5454 150.4714 123.212 272.5045;
	5.7149 5.5891 4.4618 2.877 7.7339 209.2849 26.1606 28.5875 34.1439 129.269 79.9206 234.107;
	0.7068 0.6607 0.4001 1.2489 2.4703 44.3341 5.5418 8.849 19.5882 51.0469 29.7704 92.4462;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
