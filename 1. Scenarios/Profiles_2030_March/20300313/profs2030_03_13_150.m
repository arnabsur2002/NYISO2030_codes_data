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
	0.4731 0.4039 0.4224 0.0 0.0 0.0 0.0 0.382 0.0 0.0 0.0 0.0;
	4.6342 3.5463 4.0941 1.3281 3.7951 165.3835 20.6729 50.0654 97.5708 14.7203 0.0 26.6586;
	17.7417 13.4266 11.0157 1.1667 3.9871 413.6402 51.705 71.7804 247.995 33.2348 0.0 60.1884;
	23.2334 16.6083 13.8 2.1002 4.2999 438.0017 54.7502 74.35 267.2587 50.8781 0.0 92.1405;
	24.4341 16.167 13.6408 3.3683 2.0501 328.9305 41.1163 59.5707 201.0977 72.426 10.0535 131.1639;
	25.1891 16.371 13.7627 3.9226 2.6925 358.9639 44.8705 59.119 220.3105 98.857 27.0771 179.0306;
	25.1453 16.3974 13.769 3.08 3.2575 364.4183 45.5523 59.357 239.5067 131.7018 51.8932 238.5128;
	17.9955 14.8059 11.0433 1.41 4.1028 146.8226 18.3528 40.5534 181.9451 158.1541 100.0948 286.4179;
	15.4898 11.9668 8.5309 1.5578 3.6522 88.9871 11.1234 31.632 139.3853 101.0895 81.134 183.0737;
	8.4146 6.6685 4.4147 1.9779 3.2778 47.7992 5.9749 19.4591 89.5164 59.9447 37.7637 108.5602;
	0.8807 0.635 0.4718 1.385 0.5332 7.81 0.9763 0.244 14.1635 7.2167 2.6389 13.0695;
	0.3545 0.3047 0.2871 0.3772 0.3193 6.2064 0.7758 1.0608 3.6499 3.2053 1.6523 5.8047;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
