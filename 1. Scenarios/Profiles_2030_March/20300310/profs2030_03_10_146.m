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
	0.2763 0.3023 0.3249 0.0474 0.0 28.5127 3.5641 4.8525 5.734 8.2152 4.2191 14.8779;
	0.0937 0.1643 0.1917 0.1037 0.2536 41.6434 5.2054 8.8226 4.529 0.0 0.0 0.0;
	0.2781 0.285 0.3205 0.4877 0.9739 39.2915 4.9114 8.1315 7.5949 4.4206 1.6909 8.0058;
	1.6705 1.9864 1.9106 1.0572 3.8006 40.1285 5.0161 3.5492 51.09 10.7496 10.9154 19.4677;
	1.3798 2.375 2.1258 1.4541 4.1041 38.1751 4.7719 1.8783 62.5058 16.9456 19.5208 30.6886;
	1.0072 2.3087 1.9737 1.5672 4.012 30.7857 3.8482 0.9317 53.7643 20.651 32.282 37.399;
	1.7596 2.4322 1.5374 1.5625 4.1784 43.9985 5.4998 3.5295 29.9712 59.7513 59.3548 108.21;
	2.1263 1.7606 1.4582 1.1236 4.2282 25.4008 3.1751 3.6192 21.8737 62.4026 49.0869 113.0115;
	1.9993 1.3024 1.402 0.789 3.7835 13.6873 1.7109 2.7083 18.5755 52.4854 35.3543 95.0515;
	1.3116 0.9043 1.1906 0.341 0.6078 0.0 0.0 1.0852 11.9567 33.7223 19.7174 61.0713;
	0.2415 0.2168 0.1471 0.3832 0.5184 28.4907 3.5613 6.2384 22.1103 20.9844 13.2295 38.0028;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
