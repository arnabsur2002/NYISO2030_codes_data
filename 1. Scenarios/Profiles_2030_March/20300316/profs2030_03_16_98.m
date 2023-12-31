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
	1.0111 0.829 0.706 0.0 0.0 15.1452 1.8932 4.6501 0.9504 0.0 0.0 0.0;
	6.6303 5.1039 3.0147 1.6055 2.6735 280.3974 35.0497 20.2846 48.9822 41.9181 12.9183 75.914;
	12.5124 8.7429 4.0051 2.206 4.55 347.7919 43.474 38.1058 118.375 35.965 8.4031 65.1328;
	20.5062 15.2138 11.1715 3.8774 6.1448 390.774 48.8468 51.1606 182.9327 60.4477 17.9904 109.4711;
	25.3645 16.3661 13.8 3.2912 5.7921 370.9051 46.3631 56.8632 190.6848 149.7704 135.7948 271.2351;
	26.0276 16.5644 13.8 5.0039 7.0167 355.1252 44.3906 60.7872 196.5687 216.1695 160.2843 391.4843;
	25.9111 16.648 13.8 5.8022 7.0591 296.698 37.0872 60.136 177.3937 228.7418 155.7641 414.2528;
	23.6501 15.9262 13.3303 4.1208 4.0575 92.7635 11.5954 54.7081 34.2994 133.0378 80.657 240.9322;
	20.4429 15.4711 12.5157 3.1836 3.257 73.9838 9.248 42.6797 23.7065 100.9126 66.4057 182.7533;
	15.8063 12.4648 9.0587 2.4659 2.854 66.1921 8.274 29.3571 25.0002 75.1073 67.1632 136.0197;
	9.7513 7.177 3.3542 3.3597 4.2122 112.6035 14.0754 15.4376 52.6684 40.0205 47.0321 72.4774;
	1.656 1.4719 0.7961 1.0649 1.6656 65.0413 8.1302 11.5454 36.7749 13.148 10.2026 23.811;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
