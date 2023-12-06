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
	0.0 0.0 0.0 1.1739 2.3262 11.5279 1.441 4.9896 0.0 9.6766 4.9702 17.5244;
	0.7262 0.4537 0.533 3.0583 4.1143 32.0927 4.0116 1.9147 4.4187 27.4177 13.7962 49.6537;
	1.5773 0.8777 1.1483 4.3031 4.1049 54.3214 6.7902 3.3551 14.8304 52.3176 26.5549 94.7476;
	2.3639 1.915 2.0981 5.1502 3.7692 121.9683 15.246 17.1072 115.1432 51.965 61.0752 94.109;
	1.9977 2.0946 2.1438 5.2549 4.1991 96.8882 12.111 17.6075 150.5241 55.2527 76.5637 100.0631;
	2.0826 2.2961 2.1492 4.7656 4.694 67.7053 8.4632 12.1445 160.1751 54.7388 68.8945 99.1323;
	3.4176 3.2632 1.952 3.0436 4.1091 80.844 10.1055 19.6349 152.8047 86.5029 54.307 156.6572;
	2.9566 2.6207 1.3811 2.1443 3.5897 73.4501 9.1813 20.2116 114.9069 85.2187 62.4314 154.3316;
	1.9183 1.7214 0.6546 1.7557 3.049 108.169 13.5211 28.3844 85.8732 104.5001 89.9203 189.2504;
	1.1633 0.9932 0.2733 0.8635 1.2083 166.8243 20.853 51.7043 29.4018 157.2814 151.6412 284.8375;
	0.5164 0.4798 0.2086 0.4944 1.1856 40.627 5.0784 9.8819 25.5875 42.7873 28.3648 77.4881;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
