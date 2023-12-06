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
	8.8684 8.5089 6.6134 1.5832 2.5851 214.406 26.8008 35.7149 96.5133 70.0593 41.287 126.8779;
	20.9238 17.0108 14.3156 1.936 9.0696 334.3797 41.7975 65.3595 101.4773 186.6968 127.6801 338.1091;
	23.8939 17.135 14.3416 3.9874 11.7888 359.1697 44.8962 66.1407 82.8239 276.9392 191.1985 501.5386;
	26.4006 16.8244 14.0496 6.0436 9.7378 297.7027 37.2128 54.5182 59.7676 111.3884 185.9952 201.7251;
	26.7032 16.8714 13.9151 10.2218 9.9709 324.5936 40.5742 62.7445 124.8455 223.1985 212.3862 404.2138;
	26.7917 16.886 13.8957 11.0919 9.6681 323.0213 40.3777 65.8773 161.5996 272.7473 215.924 493.9469;
	26.3262 16.6459 13.811 11.0493 9.3334 339.0996 42.3875 70.3776 146.0862 178.0961 120.0462 322.5332;
	23.0134 16.6083 13.8031 10.5612 9.3893 338.3209 42.2901 72.2917 111.4295 129.8901 50.5355 235.2318;
	14.8045 14.7495 12.1749 6.9114 8.8724 335.7251 41.9656 70.6258 77.8888 67.6615 43.4521 122.5354;
	6.0458 7.5513 5.6927 4.9654 5.6661 176.8683 22.1085 49.483 44.1326 42.4578 39.809 76.8914;
	0.7594 0.7934 0.4253 1.3675 2.5318 44.3537 5.5442 12.2431 22.5545 21.9357 19.3742 39.7256;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
