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
	8.5142 6.1639 5.5938 0.8697 3.9139 58.214 7.2767 17.6282 107.4135 13.8954 5.3197 25.1647;
	17.3758 12.2963 11.6562 5.241 8.14 351.2982 43.9123 70.7976 255.3046 40.4187 20.8762 73.1986;
	22.4596 16.585 13.8 8.125 9.3728 431.2693 53.9087 74.757 271.5559 66.7178 57.0726 120.8263;
	24.1268 16.1547 13.6408 3.8739 5.8098 327.3254 40.9157 59.5021 238.2098 86.3217 89.9548 156.329;
	25.3026 16.3108 13.7627 5.5771 6.0886 330.2298 41.2787 57.6599 240.8244 64.5346 52.5538 116.8726;
	25.3763 16.2095 13.769 6.8972 5.8441 317.4893 39.6862 57.5175 235.8579 67.191 42.9222 121.6833;
	16.5179 9.4008 9.5477 7.3983 4.7734 97.5502 12.1938 40.0785 161.4461 195.1092 68.2501 353.3439;
	13.6222 7.7536 8.7823 5.1268 3.4988 80.5297 10.0662 49.2525 130.8065 276.0614 98.6921 499.9488;
	8.2591 5.967 5.784 2.7487 2.6423 61.019 7.6274 55.8161 95.1626 259.1242 73.8219 469.2754;
	1.6529 1.0694 1.181 0.6069 0.4854 13.1359 1.642 56.9902 19.8566 18.0332 8.1311 32.6582;
	0.3677 0.3047 0.2871 0.4793 0.3533 3.2784 0.4098 7.2635 3.1918 3.2647 1.9389 5.9124;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
