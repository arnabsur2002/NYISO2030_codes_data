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
	0.0957 0.1055 0.1051 0.0 0.0 0.1251 0.0156 0.1784 0.0 0.0 0.0 0.0;
	1.7859 2.1149 2.5319 4.7753 5.4211 110.9743 13.8718 5.1357 119.3244 93.6436 105.6791 169.5892;
	6.3759 5.4034 5.7926 8.2488 10.9189 186.8098 23.3512 9.7748 145.1403 267.2326 100.197 483.9598;
	11.3744 8.6582 8.5673 9.7549 12.1282 224.4636 28.0579 16.2546 143.9442 332.2255 121.7997 601.6624;
	21.2252 15.3271 12.163 10.589 11.6938 407.1071 50.8884 60.1451 246.6155 350.039 121.6868 633.9228;
	21.8689 16.0537 12.4065 11.1561 11.7051 395.2868 49.4109 61.3621 228.6218 355.5696 150.0462 643.9387;
	20.2472 16.0511 11.5732 11.2056 11.8216 382.7636 47.8455 62.0841 202.6326 348.4786 153.358 631.0969;
	13.6841 13.074 9.6772 5.9474 7.2926 347.7924 43.474 59.5949 121.6109 326.7816 147.8314 591.8035;
	6.5365 4.7693 5.4196 4.6977 6.898 341.8285 42.7286 56.3461 140.8134 299.5507 126.7811 542.4881;
	2.138 1.3849 3.3721 3.4333 6.9668 315.6961 39.462 52.9089 179.28 303.9964 111.1393 550.5393;
	0.5536 0.8214 1.1854 3.4013 8.0097 122.4927 15.3116 20.5139 92.3853 236.3051 39.7905 427.9499;
	0.9034 0.7582 0.5601 1.4527 2.5359 46.9726 5.8716 9.9303 31.1045 32.5268 10.0283 58.9063;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];