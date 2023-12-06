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
	0.4128 0.1311 0.374 0.5446 3.2619 16.1078 2.0135 4.0598 16.8256 0.0 4.2124 0.0;
	1.0611 0.559 0.8326 0.6375 2.2408 108.3831 13.5479 3.0269 59.2578 10.5107 0.0 19.035;
	1.4456 0.8619 1.136 0.7064 2.6342 143.8789 17.9849 4.3707 91.4444 39.7108 2.2505 71.9166;
	2.6475 1.9861 2.156 0.9938 5.4306 105.5147 13.1893 12.0769 149.6067 40.8813 11.2119 74.0364;
	2.2276 1.5458 2.083 1.6603 7.4437 86.9727 10.8716 11.5254 178.9389 31.6573 15.4058 57.3316;
	1.9708 1.5155 1.9859 2.1414 7.2587 69.9778 8.7472 7.2812 174.0674 22.503 15.4133 40.7532;
	4.7863 4.7252 3.009 2.1484 4.3553 89.2161 11.152 9.525 101.0727 26.9501 18.961 48.8067;
	5.9578 6.5411 2.9508 1.3121 2.952 53.9112 6.7389 9.5711 52.5883 27.3528 18.5299 49.5362;
	5.4488 8.0682 3.4639 0.9658 2.2339 36.7003 4.5875 13.4001 22.1319 27.839 17.8655 50.4166;
	2.5117 4.3896 3.8765 0.8012 0.9512 25.3774 3.1722 20.0494 13.2552 33.5904 18.8202 60.8324;
	0.2599 0.328 0.2594 0.7901 0.5529 35.2465 4.4058 7.0849 26.7949 21.6388 10.9845 39.1879;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
