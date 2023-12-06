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
	0.1004 0.1117 0.1134 0.0 0.0 0.1251 0.0156 0.1784 0.0 0.0 0.0 0.0;
	3.8814 2.3378 1.4789 2.7197 5.8663 19.5652 2.4457 16.4091 18.2026 128.1827 37.6013 232.1397;
	4.5182 2.9977 2.0698 7.8081 12.4951 51.8974 6.4872 20.8507 62.3401 330.2577 194.8436 598.0987;
	5.7924 5.3683 3.4673 10.7443 12.8874 82.2072 10.2759 21.3144 100.7702 337.8139 205.3233 611.783;
	20.9352 15.8076 13.2286 11.5256 11.1488 352.1729 44.0216 61.7606 252.4796 264.7105 186.0939 479.3923;
	23.6014 16.0537 13.2545 11.2496 9.3471 360.2766 45.0346 61.2827 241.5366 270.03 194.6533 489.026;
	23.8608 16.0751 13.2624 11.2056 8.7355 376.6155 47.0769 62.25 242.3493 246.0545 208.1301 445.6061;
	23.8631 16.5824 13.4092 5.1537 2.8151 381.5936 47.6992 65.3702 262.8206 228.3277 198.7165 413.5029;
	19.2115 14.5327 10.9119 4.9019 2.8554 380.6352 47.5794 66.6763 267.8606 212.5857 167.564 384.9939;
	13.2763 8.7978 7.7595 3.8509 2.6585 344.8566 43.1071 66.0149 250.1175 168.5358 119.7965 305.2194;
	7.2395 3.9914 4.5085 3.3649 1.9249 102.7398 12.8425 38.1392 52.1483 43.2166 17.7313 78.2655;
	1.033 0.7774 0.6063 0.9582 1.3911 54.881 6.8601 10.7061 20.6131 15.0157 8.314 27.1935;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
