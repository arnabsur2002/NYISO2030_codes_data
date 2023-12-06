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
	0.4174 0.3739 0.3103 0.0 0.0 0.1765 0.0221 0.1431 0.0956 0.0 0.0 0.0;
	1.5972 1.9244 1.4875 3.6887 1.7474 23.0478 2.881 14.7484 20.289 54.17 36.3102 98.1022;
	4.7142 6.6061 4.9363 5.8768 2.3888 29.6038 3.7005 22.5575 52.0992 137.6084 109.4488 249.2096;
	9.0093 11.5041 7.4509 8.1158 3.6933 41.7516 5.2189 33.4002 61.494 236.4385 147.9307 428.1916;
	13.7218 12.5961 11.1361 11.8032 12.9296 89.2834 11.1604 46.0419 60.2975 314.6064 165.0897 569.7541;
	15.9246 13.2968 12.3676 11.8848 13.3066 204.4588 25.5574 60.9973 136.5183 282.4049 165.7018 511.437;
	16.4455 13.0415 12.5743 11.8658 13.4289 236.7411 29.5926 60.9852 174.7352 245.1161 167.3468 443.9067;
	12.0865 9.4327 9.2749 11.2248 11.8959 78.6043 9.8255 26.1992 209.6565 78.1781 160.2477 141.581;
	9.0385 7.3389 6.8062 10.4161 10.6797 24.5518 3.069 10.3995 191.2143 85.829 190.6135 155.4369;
	6.3237 5.2447 4.6089 8.1964 9.675 6.5478 0.8185 5.4687 143.5115 86.541 175.2003 156.7263;
	1.6985 1.3617 1.2912 4.7269 5.8057 16.3338 2.0417 5.5799 122.2346 20.5619 10.6779 37.2377;
	0.4288 0.3935 0.3715 1.6614 2.1545 50.9393 6.3674 3.8558 54.3559 5.0084 3.3157 9.0702;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
