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
	0.4095 0.3481 0.302 0.0 0.0 0.1797 0.0225 0.7523 1.555 0.0 0.0 0.0;
	0.0 0.4011 0.0 4.1472 2.1596 143.7695 17.9712 58.3056 185.0608 59.5537 48.7662 107.8521;
	1.9357 1.7854 1.0692 5.9832 2.8284 324.5975 40.5747 54.0471 270.4485 315.1631 235.6064 570.7623;
	6.9466 4.2526 3.2175 6.322 3.2143 407.4758 50.9345 54.8384 293.3876 348.6986 214.1795 631.4953;
	14.4232 9.9125 11.0744 10.3242 12.0409 455.5299 56.9412 56.1094 283.6689 285.6603 100.9014 517.3325;
	16.2289 12.0757 12.6174 11.1032 10.7451 423.9058 52.9882 49.257 233.4785 275.1669 77.7905 498.3289;
	15.9636 11.8915 12.1002 11.2082 10.6403 315.9122 39.489 37.0189 186.8565 277.1183 109.0388 501.8628;
	7.5291 6.674 7.3664 11.209 9.0135 298.7586 37.3448 42.1086 214.1691 205.6256 112.0782 372.3892;
	6.7105 6.849 5.8181 10.54 8.7981 310.2234 38.7779 39.7469 217.2733 147.3035 103.7014 266.7676;
	3.9922 5.4129 5.0027 8.06 7.2554 291.3773 36.4222 37.2513 210.6183 63.9134 41.3587 115.7475;
	1.547 1.8926 1.8944 3.9097 1.3067 202.4722 25.309 19.2749 192.7757 10.2923 1.9361 18.6395;
	0.3692 0.5248 0.4537 1.4025 0.899 50.6693 6.3337 3.7982 49.4917 13.7697 4.7104 24.937;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
