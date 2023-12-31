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
	0.0 0.0 0.002 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	1.5259 0.7116 0.6871 2.3264 6.0312 399.4149 49.9269 67.8832 163.5212 71.5698 40.9028 129.6133;
	12.13 6.8357 2.1178 5.0613 10.1022 429.6017 53.7002 74.9173 217.8434 186.6819 121.7596 338.0821;
	22.7192 15.6566 10.7217 6.2698 11.4791 435.3898 54.4237 75.3058 201.0666 273.4862 187.1672 495.2851;
	26.1634 14.8841 11.408 6.491 8.6004 407.6282 50.9535 63.9253 159.846 231.4909 193.6056 419.2313;
	26.1756 15.0697 12.607 6.9191 8.6534 424.9163 53.1145 62.7776 148.1508 270.1414 210.5283 489.2277;
	26.2222 15.2267 12.8076 9.5288 8.6004 439.2767 54.9096 62.7858 152.0043 274.8855 212.8205 497.8193;
	23.1215 11.1103 9.4223 11.3863 10.6016 453.654 56.7068 68.3173 150.4225 183.4974 180.2208 332.3148;
	17.5685 10.012 8.4958 11.4036 11.1457 431.9475 53.9934 71.0185 133.4748 167.2193 166.8465 302.8351;
	10.2623 4.4246 3.1649 8.191 10.3454 397.4814 49.6852 69.7452 99.0149 123.2557 161.2382 223.2167;
	4.612 2.0517 3.5196 3.2442 5.2321 66.2403 8.28 48.8451 40.1877 62.6882 90.6941 113.5287;
	0.9781 0.6824 0.5675 1.3217 2.451 44.3341 5.5418 10.55 22.2216 18.9849 18.8874 34.3818;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
