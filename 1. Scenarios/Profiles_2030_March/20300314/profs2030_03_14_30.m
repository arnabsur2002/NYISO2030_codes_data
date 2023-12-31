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
	0.0951 0.0972 0.1051 0.0 0.0 0.1251 0.0156 0.3836 0.0 0.0 0.0 0.0;
	2.7942 1.8896 1.4543 1.199 5.6429 69.3928 8.6741 5.3466 55.0424 28.1238 30.9552 50.9324;
	5.3797 5.7335 4.2609 2.7069 10.271 97.7319 12.2165 8.5792 132.1033 134.1114 101.9604 242.8765;
	8.2052 8.7171 5.4517 3.7075 11.8517 69.9401 8.7425 10.2462 145.7461 235.8446 150.9133 427.1159;
	17.8516 14.5041 8.565 5.7519 11.9838 101.448 12.681 41.5654 221.7817 262.3286 148.7453 475.0787;
	20.3212 14.9096 10.8642 6.0508 12.1015 62.7481 7.8435 40.208 175.7988 281.211 169.629 509.2747;
	20.2427 13.6249 11.1061 7.3495 12.0514 63.0457 7.8807 44.6249 183.5645 284.0471 182.0201 514.411;
	20.0371 13.528 11.4349 5.0764 9.1199 192.5343 24.0668 57.5911 235.3503 274.6472 161.9184 497.3878;
	15.2765 10.2198 7.5959 5.0405 8.1439 268.9186 33.6148 59.4419 247.5725 265.9127 135.4051 481.5694;
	10.1016 6.1343 4.4387 3.4576 6.638 212.3939 26.5492 56.4488 230.8179 200.0107 97.8181 362.2206;
	5.9215 3.3362 2.3456 1.6359 3.4465 15.5738 1.9467 17.8585 59.5443 21.1546 9.595 38.3111;
	1.0253 0.7774 0.6077 0.9658 1.4196 32.1264 4.0158 9.4459 27.0306 11.3232 8.0153 20.5063;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
