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
	17.8083 11.9646 8.6827 1.2534 4.0111 217.6174 27.2022 42.0858 124.8275 60.9644 33.1967 110.407;
	23.3852 16.8533 13.3578 2.7299 11.0715 455.1471 56.8934 73.7551 277.8788 75.6476 17.8013 136.9982;
	23.5661 16.8527 13.8 5.6581 12.4097 469.0367 58.6296 75.8491 282.8299 275.382 110.3725 498.7184;
	25.0521 16.6083 13.8 9.7872 9.9297 419.6537 52.4567 67.5566 267.4044 263.2227 188.7785 476.6979;
	26.334 16.6083 13.8 11.146 9.0934 419.0013 52.3752 64.7859 255.3256 256.8971 214.0087 465.2422;
	26.3719 16.6316 13.8235 11.3368 8.1005 426.9811 53.3726 64.0509 244.6724 232.5975 220.0933 421.2354;
	26.3591 16.6083 13.8 11.3916 8.6303 441.8621 55.2328 70.1906 212.3166 184.8485 179.4001 334.7617;
	23.4151 16.6083 13.8 11.2945 9.5363 429.5369 53.6921 73.242 194.3651 176.1585 158.6109 319.0241;
	18.0295 15.0931 11.2954 8.4587 9.4727 403.4359 50.4295 71.9765 168.591 132.7724 132.4099 240.4517;
	12.159 10.7608 8.0647 5.3532 5.9621 208.7341 26.0918 47.8899 92.0962 50.3476 84.2517 91.1798;
	1.0987 1.0404 0.6418 1.5779 2.6161 55.365 6.9206 9.8643 25.7451 20.1903 21.5289 36.5648;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];