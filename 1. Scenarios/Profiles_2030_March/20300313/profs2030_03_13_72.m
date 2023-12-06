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
	0.4836 0.4082 0.4321 0.0 0.0 0.0 0.0 0.2 0.0 0.0 0.0 0.0;
	9.7884 9.0004 7.6513 0.4917 1.8544 202.3499 25.2937 48.758 103.5256 0.0 0.0 0.0;
	13.6178 13.6616 8.9068 0.9473 3.9888 424.2443 53.0305 70.3704 257.1808 0.0 0.0 0.0;
	16.6844 16.5452 11.9175 2.0078 5.5287 439.9764 54.997 72.2924 270.636 0.0 0.0 0.0;
	20.5456 15.8408 12.6937 2.5294 3.8703 229.8719 28.734 50.3104 183.6665 19.7968 20.5705 35.8522;
	25.0355 16.3544 13.7627 3.2833 3.843 162.5217 20.3152 50.5679 127.0342 49.6827 44.5452 89.9757;
	25.0771 16.2923 13.769 4.0953 4.321 120.6994 15.0874 45.0132 113.6196 72.4045 55.8411 131.125;
	7.9629 4.4229 5.0967 4.9231 6.8828 45.8392 5.7299 4.4836 122.0842 50.1569 50.9371 90.8344;
	3.216 2.0079 1.5633 4.6906 7.5348 50.6434 6.3304 2.7535 151.0193 45.3971 44.6571 82.2145;
	2.1248 2.5026 0.973 4.3362 7.5014 67.4991 8.4374 3.1646 147.416 42.4404 35.7219 76.8599;
	1.4558 2.3248 1.269 3.2452 2.7892 54.2496 6.7812 0.9722 50.4612 17.3506 9.9963 31.4221;
	0.4474 0.5663 0.3751 1.0734 0.6282 30.1549 3.7694 1.0881 9.0485 8.0416 5.0514 14.5633;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
