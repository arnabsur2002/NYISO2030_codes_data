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
	3.9566 6.2909 5.9361 0.2093 2.7067 264.3272 33.0409 34.8725 215.8459 130.4124 11.59 236.1777;
	9.115 12.2987 10.737 2.7046 4.8736 439.6649 54.9581 71.4828 281.583 80.2728 20.5468 145.3745;
	11.9463 16.1874 12.8844 7.6426 6.7511 450.0859 56.2607 74.8435 282.8251 63.389 33.9801 114.7978;
	3.5867 11.9465 7.8679 7.2701 3.7876 245.595 30.6994 57.0685 188.5518 83.627 50.0358 151.4491;
	4.2943 12.0198 8.2592 7.4248 2.5991 172.2001 21.525 55.7447 191.2568 130.0833 79.3719 235.5816;
	5.0909 13.3468 10.5742 6.7925 1.6223 176.8592 22.1074 49.8993 206.2143 166.7097 95.2379 301.9122;
	5.2625 8.6134 9.1336 3.8474 0.995 107.7538 13.4692 5.9709 175.6428 95.3483 87.3263 172.6764;
	6.9327 7.3711 8.1551 3.6243 0.7179 102.9233 12.8654 3.7113 147.6158 66.5995 52.5274 120.6121;
	6.0524 6.3635 5.7731 3.1355 1.0369 85.0922 10.6365 3.3978 104.3245 36.355 35.0075 65.8391;
	2.5243 2.2738 2.0401 1.3869 0.1352 23.9708 2.9964 1.5992 30.8872 10.6205 6.5953 19.2338;
	0.4042 0.3814 0.301 0.4089 0.1617 12.4182 1.5523 1.193 10.1061 6.3729 3.0421 11.5413;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
