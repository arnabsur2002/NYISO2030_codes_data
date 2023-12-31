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
	0.1575 0.1621 0.24 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	7.9088 6.5099 4.7782 1.6412 4.5769 386.8347 48.3543 24.6146 226.2691 41.4893 21.6762 75.1373;
	17.1217 13.232 10.9298 2.7361 8.6399 452.0234 56.5029 40.7482 279.3148 133.3053 14.7475 241.4167;
	22.8657 16.5943 13.7933 3.9025 9.2929 434.3999 54.3 48.9533 275.0275 202.2312 33.6756 366.242;
	23.3311 16.1734 12.944 4.5088 6.2572 321.5961 40.1995 54.5769 229.8517 211.9461 98.9028 383.8357;
	22.9454 16.3977 12.7984 6.5007 6.2831 338.0242 42.253 58.6758 212.4073 258.8712 178.2427 468.8173;
	23.9446 16.5331 13.515 7.6261 6.5918 373.733 46.7166 57.8108 211.4789 283.8062 190.5306 513.9747;
	24.8798 16.5546 13.7855 9.6328 10.9676 427.7032 53.4629 63.1942 275.2364 341.4098 213.739 618.2951;
	19.7272 16.3881 13.7008 8.4707 9.8274 400.5145 50.0643 61.6806 268.9353 321.0902 166.5258 581.4963;
	11.3628 12.5501 10.169 6.1935 8.2071 336.0624 42.0078 56.1431 237.7499 156.3742 82.1467 283.1946;
	2.4321 3.6206 1.5071 6.3677 9.8987 75.3691 9.4211 37.944 106.304 83.9068 109.6998 151.9557;
	0.9021 0.746 0.5216 2.0027 3.4394 58.226 7.2783 10.2343 34.9853 66.5547 39.9482 120.5309;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
