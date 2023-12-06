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
	0.0 0.0 0.1076 0.7133 0.0 22.7405 2.8426 13.836 31.5348 12.3883 4.8555 22.4353;
	0.0 0.0 0.4434 2.2241 1.0463 28.4885 3.5611 5.0774 18.7658 35.2943 7.9643 63.9182;
	0.3586 0.216 0.7143 3.9285 3.3455 28.133 3.5166 4.0644 15.8238 61.1853 12.8548 110.8069;
	1.0329 0.9321 1.1787 5.3691 4.747 27.0544 3.3818 4.954 18.9456 26.0612 14.022 47.197;
	1.1888 1.3696 1.5582 6.074 4.9609 48.4089 6.0511 6.622 28.3816 17.5528 11.7232 31.7882;
	0.7291 1.0881 1.2834 6.0317 4.6291 58.6503 7.3313 6.6348 35.0941 13.3031 7.0175 24.092;
	0.0 0.0 0.0 3.7255 2.4187 31.6471 3.9559 10.8449 36.1006 15.651 0.3911 28.3441;
	0.0 0.0 0.0 2.257 1.5805 0.6306 0.0788 6.9001 22.4369 13.877 0.7697 25.1314;
	0.0 0.0 0.0 1.1384 0.9454 0.0 0.0 4.9339 14.2433 10.6347 0.0 19.2595;
	0.3122 0.8547 0.4887 0.1943 0.1268 0.0 0.0 2.501 10.567 4.9423 0.0 8.9506;
	0.2494 0.3057 0.1938 0.3833 0.6374 31.4918 3.9365 6.6083 27.4558 20.25 5.1298 36.6728;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
