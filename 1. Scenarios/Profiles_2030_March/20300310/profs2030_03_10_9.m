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
	0.601 0.2537 0.3172 2.3979 3.2411 11.6698 1.4587 4.4409 64.9603 11.9283 6.017 21.6022;
	1.4553 0.5579 1.0407 1.7861 3.8304 0.0 0.0 1.0947 16.1857 30.9844 11.6796 56.1129;
	1.4463 0.5626 1.2131 2.8502 3.5683 0.0 0.0 0.0 8.0701 54.4215 16.617 98.5578;
	0.9395 0.0 0.8328 5.4687 2.8015 0.0 0.0 1.1127 11.8672 45.0767 22.1748 81.6342;
	1.0083 0.0 0.8991 6.2125 2.5061 3.526 0.4408 4.868 18.0196 59.9715 26.3436 108.6088;
	1.2898 0.392 1.3251 5.539 2.9157 27.7411 3.4676 8.1751 31.1351 70.0734 26.1516 126.9033;
	1.9204 1.8325 2.4362 3.5972 5.7156 129.0375 16.1297 25.252 94.0506 128.8872 28.4521 233.4156;
	1.4736 1.5417 1.9685 2.5131 5.786 88.4781 11.0598 19.7817 84.0829 86.8387 23.9197 157.2653;
	0.8951 0.8601 1.056 1.8039 5.0443 55.8122 6.9765 18.1961 80.6832 59.4322 20.9372 107.6321;
	1.2026 0.7351 0.8918 0.8267 1.2464 36.5784 4.5723 30.0282 84.5355 25.9615 18.5904 47.0164;
	0.4414 0.4345 0.3545 0.4393 0.7412 37.9858 4.7482 10.97 35.7155 22.2262 11.4386 40.2517;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
