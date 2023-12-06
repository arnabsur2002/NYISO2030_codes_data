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
	1.0111 0.8311 0.6966 0.0 0.0 9.4835 1.1854 4.1882 1.0986 0.0 0.0 0.0;
	6.752 4.9854 3.4512 2.1697 1.4789 187.3156 23.4145 12.3301 183.7365 5.7296 16.5691 10.3763;
	10.7237 11.5672 10.1642 2.4587 2.5886 193.6257 24.2032 6.2565 184.8701 0.0 0.8919 0.0;
	17.4792 16.6083 13.8 4.695 3.9785 232.1897 29.0237 11.1383 184.3372 5.7596 0.4041 10.4306;
	25.2049 16.3676 13.9895 6.0896 5.6662 295.99 36.9988 48.3966 145.2434 7.7792 34.5446 14.0881;
	25.6173 16.5219 14.0434 7.6149 9.1349 336.7525 42.0941 56.1413 167.0435 51.7227 105.7718 93.6702;
	25.6262 16.5214 13.8805 8.4352 10.4743 352.9658 44.1207 57.1949 174.8057 71.5925 121.6548 129.6545;
	21.4077 15.6912 13.4455 9.1137 6.9029 331.4781 41.4348 61.6818 117.7616 20.4164 41.6255 36.9742;
	16.5009 13.1545 12.7407 7.0504 4.1832 318.4767 39.8096 61.5173 81.9312 1.2739 21.9032 2.3071;
	11.4218 9.0569 9.018 5.7831 2.1695 285.0494 35.6312 58.0587 67.0273 9.8236 18.1477 17.7905;
	5.2857 4.5373 4.1976 3.2915 1.6158 119.2542 14.9068 30.285 85.5153 18.846 27.2327 34.1302;
	1.2095 1.0362 0.8039 0.8417 1.2651 62.2601 7.7825 11.3715 35.0281 12.6776 9.3549 22.9592;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
