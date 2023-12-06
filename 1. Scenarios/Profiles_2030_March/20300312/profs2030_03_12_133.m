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
	0.166 0.1699 0.2637 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	8.2252 4.3672 4.3076 0.9374 4.3729 206.9582 25.8698 18.4515 185.6716 30.5079 22.6767 55.2499;
	13.3171 12.5985 10.9424 1.4392 4.4882 380.2965 47.5371 54.1649 257.6347 114.3762 72.7996 207.1359;
	18.0482 16.6083 13.8 3.1571 5.0246 394.2803 49.285 60.2067 263.5479 197.2318 134.2416 357.188;
	19.7879 15.2004 13.4826 5.4503 4.1735 291.4298 36.4287 47.5098 210.0013 316.0497 173.1256 572.3679;
	21.1124 15.165 12.8802 5.2245 3.8912 259.6723 32.459 48.8378 184.5673 326.4091 187.7224 591.1288;
	22.895 16.1565 12.7701 4.8956 3.8888 210.5367 26.3171 50.7513 165.1235 327.1819 199.9824 592.5285;
	25.5791 16.5546 12.2385 9.4019 9.0725 297.1656 37.1457 64.4312 197.9398 353.4192 268.3967 640.0442;
	20.2969 16.225 10.8075 9.12 8.7869 308.4084 38.5511 63.2481 185.82 353.7774 259.5713 640.6931;
	11.3628 9.2403 2.5929 7.751 8.0856 258.424 32.303 57.0654 154.2873 354.2832 225.2171 641.609;
	2.7182 1.0911 0.6367 6.0663 10.9518 96.3982 12.0498 30.9311 97.3421 256.876 60.5706 465.204;
	0.8981 0.7417 0.5289 1.5413 3.572 58.226 7.2783 11.6751 34.9853 63.3106 34.3144 114.6558;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
