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
	0.0 0.0 0.1899 0.3578 0.0 0.8765 0.1096 0.0 22.6939 11.1001 4.9962 20.1023;
	0.1636 0.0 0.3844 0.5433 0.0481 4.7636 0.5955 3.8362 12.0109 18.5758 11.0092 33.641;
	0.3832 0.1736 0.5338 0.4922 0.3306 3.6243 0.453 8.3044 10.0795 28.8283 13.5572 52.2082;
	1.283 1.2555 1.3099 0.0 0.814 0.0 0.0 9.7073 45.6647 15.3764 17.7564 27.8468;
	1.7252 1.4322 1.8085 0.0 1.7759 1.2049 0.1506 11.4531 108.7867 20.4777 37.3927 37.0852;
	2.0346 1.4112 2.0171 0.3084 2.8394 16.365 2.0456 10.7049 140.4245 24.5991 50.3802 44.5491;
	3.1083 2.5361 2.4747 1.1906 2.834 27.4883 3.436 10.564 103.2219 37.0125 87.1471 67.0299;
	2.825 2.4364 2.1031 1.0929 2.1257 5.328 0.666 5.442 57.436 31.5762 54.3049 57.1847;
	2.2432 2.1033 1.716 0.6716 1.4546 0.0 0.0 2.0799 26.4791 24.6544 35.6199 44.6492;
	2.0034 1.6842 1.6405 0.0 0.5341 0.0 0.0 0.0 16.4825 25.1766 21.4522 45.595;
	0.4486 0.2689 0.1987 0.4086 0.8214 28.5147 3.5643 6.1681 25.9892 22.8249 27.4111 41.336;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];