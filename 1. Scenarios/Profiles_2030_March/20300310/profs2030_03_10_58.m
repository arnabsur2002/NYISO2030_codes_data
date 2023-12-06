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
	0.0 0.1569 0.0246 9.6355 2.3968 9.6881 1.211 0.3251 0.0 11.6333 6.459 21.0679;
	0.4652 0.3665 0.2613 4.1408 2.5744 22.3034 2.7879 0.0 0.0 0.0 6.6134 0.0;
	1.0079 0.715 0.7275 1.9749 2.6816 32.5666 4.0708 0.0 6.0781 0.0 5.3482 0.0;
	2.5435 1.9304 2.1215 2.7216 3.1652 80.5273 10.0659 5.0721 83.0718 11.9914 20.4301 21.7166;
	1.5694 1.2926 1.4824 5.0031 4.3904 159.6748 19.9593 10.734 128.4178 35.7748 37.4465 64.7883;
	0.8291 0.6984 0.7722 5.6154 3.9015 221.9713 27.7464 14.3825 147.4261 44.7812 40.8822 81.099;
	2.1976 1.2702 1.1755 4.5832 1.0251 225.143 28.1429 30.7642 112.2616 33.1434 40.4812 60.0228;
	2.9598 1.7293 1.7205 3.6742 0.6603 99.477 12.4346 23.5286 79.4015 20.3208 30.3528 36.801;
	2.5504 1.7432 1.674 4.0027 0.9539 33.6136 4.2017 18.2106 46.8861 17.4514 25.0808 31.6045;
	1.6524 1.4227 1.4676 7.0881 2.9402 0.0 0.0 6.9802 16.8917 31.7225 19.8177 57.4497;
	0.2415 0.2189 0.1471 0.9741 1.2942 29.1457 3.6432 6.1969 23.6314 21.3417 10.0677 38.65;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];