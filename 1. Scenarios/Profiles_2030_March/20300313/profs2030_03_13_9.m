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
	0.486 0.411 0.429 0.0 0.0 0.0 0.0 0.2 0.0 0.0 0.0 0.0;
	6.0181 6.7524 5.6362 1.8629 1.7391 108.6161 13.577 45.2503 114.634 13.7952 6.399 24.9832;
	17.233 13.7191 11.0704 4.569 7.7009 386.1606 48.2701 67.0971 171.4458 29.6137 11.9956 53.6306;
	22.3531 16.6083 13.7851 7.2722 9.2879 421.0167 52.6271 70.9986 126.6909 29.9246 11.4856 54.1936;
	18.3198 15.7886 12.5598 3.6507 4.3386 205.5214 25.6902 57.4713 123.3595 13.5991 2.9412 24.628;
	17.6734 15.3914 13.0309 5.0545 3.4625 196.1263 24.5158 63.9099 122.9435 20.6428 1.008 37.3843;
	20.0153 15.6309 13.6156 6.245 3.8539 233.5527 29.1941 63.1785 133.9151 28.2744 1.7208 51.2052;
	13.4775 10.1898 9.4946 4.5526 5.2169 152.4905 19.0613 19.492 142.8971 26.261 5.7248 47.5589;
	12.2954 9.6265 8.647 2.6008 5.8837 154.0526 19.2566 13.5214 179.4601 24.8551 13.1682 45.0128;
	8.458 6.8557 6.0675 1.2161 6.1772 134.0289 16.7536 16.1021 206.6695 25.1366 19.7944 45.5226;
	3.1305 2.6306 3.96 0.1155 3.576 57.0881 7.136 22.1197 120.0406 14.5968 9.5523 26.4348;
	0.8155 0.6659 0.8315 0.3459 1.4338 24.2979 3.0372 6.2276 9.0783 14.3238 6.2269 25.9405;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
