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
	0.1575 0.1621 0.24 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	4.8937 3.75 4.7044 1.0775 0.6302 41.3617 5.1702 15.2699 23.8358 73.9439 21.5217 133.9128;
	18.4256 15.5932 13.628 1.5891 1.5813 185.183 23.1479 38.1602 16.3521 33.3782 0.0 60.4482;
	23.8724 16.8963 14.2503 3.1647 2.9833 251.1957 31.3995 47.3242 22.0585 9.7559 0.0 17.668;
	25.9294 16.5269 14.0066 4.4284 2.8888 163.0829 20.3854 48.4407 64.8896 22.9047 5.9091 41.4806;
	25.9937 16.5326 13.8144 4.6196 3.0155 203.6698 25.4587 52.6461 117.0411 45.8133 19.442 82.9682;
	25.964 16.5331 13.7964 4.4624 2.2998 229.911 28.7389 54.1617 136.3086 75.2268 18.5775 136.2362;
	25.893 16.5546 13.9761 8.004 2.2277 345.317 43.1646 62.5569 177.2196 337.5916 170.0512 611.3804;
	23.6414 16.4596 14.087 7.9227 1.3215 328.7554 41.0944 61.052 155.531 336.3715 207.7126 609.1709;
	20.6267 15.7587 13.6817 5.5147 0.5089 252.1241 31.5155 55.7401 129.3198 285.0479 181.6842 516.2235;
	11.8495 7.3312 7.3092 4.0391 1.6192 114.5342 14.3168 46.1863 97.5183 200.8248 182.5848 363.6949;
	1.1452 0.8163 0.6539 1.5129 3.1748 59.1859 7.3982 13.0823 34.9853 65.5902 39.6161 118.7842;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
