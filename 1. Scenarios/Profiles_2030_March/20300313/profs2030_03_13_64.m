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
	0.4731 0.4018 0.4224 0.0 0.0 0.0 0.0 0.2 0.0 0.0 0.0 0.0;
	8.2795 6.2684 2.3591 3.6757 1.1381 180.6378 22.5797 38.8058 48.2442 11.3318 0.0 20.522;
	17.0768 11.7432 9.1922 5.61 4.9699 436.7158 54.5895 70.9597 256.1751 61.2417 17.9632 110.909;
	22.6431 16.5279 13.8 8.0331 8.1078 460.4748 57.5593 73.9337 275.2991 97.0939 35.611 175.8377;
	25.2109 16.1547 13.6408 7.1538 5.9876 452.8388 56.6048 54.5993 244.278 55.358 43.1744 100.2536;
	25.4279 16.371 13.7627 8.9185 3.366 457.4964 57.1871 52.8855 227.4386 29.2435 27.2468 52.9602;
	25.0771 16.3954 13.769 9.0134 1.6061 447.3767 55.9221 53.8124 215.0334 24.4339 22.0225 44.2499;
	9.5317 9.526 7.6959 5.5473 1.2875 293.9998 36.75 23.5333 144.3067 22.3281 43.0867 40.4363;
	8.1102 7.9878 6.15 3.5282 1.8439 247.2565 30.9071 21.8569 155.0407 24.5351 45.7526 44.4332;
	8.258 6.6708 5.2133 2.2353 2.6583 205.5349 25.6919 16.0815 141.1623 17.5432 39.8311 31.7708;
	4.4174 2.8645 2.3131 1.0486 0.4577 105.6777 13.2097 3.2278 45.722 0.0 7.8744 0.0;
	0.4845 0.4837 0.3598 0.4182 0.161 28.787 3.5984 1.477 9.9589 2.4534 3.1496 4.4431;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];