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
	0.0951 0.0972 0.1051 0.0 0.0 0.1251 0.0156 0.1784 0.9877 0.0 0.0 0.0;
	12.5333 5.5813 8.7353 1.5794 7.6737 48.4934 6.0617 27.9807 55.8146 42.1159 34.859 76.2721;
	7.7457 5.2694 5.4387 1.832 9.5812 88.389 11.0486 12.741 40.2617 158.7282 155.4237 287.4577;
	7.2211 4.5985 5.4473 1.6962 10.339 93.0186 11.6273 7.4066 48.9745 232.8541 173.4261 421.7002;
	20.696 14.4467 12.9914 6.6657 12.2628 315.4539 39.4317 46.401 225.6235 98.1965 132.7466 177.8344;
	24.0324 16.0537 13.2557 10.8098 13.6756 236.3249 29.5406 51.0401 188.7522 220.1594 167.8649 398.71;
	24.8579 16.0751 13.3494 11.159 14.3693 241.0585 30.1323 53.038 168.3378 291.9501 197.4444 528.7234;
	24.3007 16.5824 13.7389 5.4435 10.8606 357.3994 44.6749 57.6561 220.2296 239.5873 198.0644 433.894;
	20.1302 13.7369 13.136 4.8265 9.5308 378.0826 47.2603 60.7508 234.7109 174.3457 158.9309 315.741;
	12.946 6.5192 9.3498 3.796 7.8283 350.6367 43.8296 59.1412 233.7147 68.6371 104.8212 124.3022;
	5.0937 2.415 2.7599 3.3132 5.9388 62.8823 7.8603 17.2598 68.1148 16.1668 12.9666 29.2781;
	0.9216 0.7348 0.5357 1.1938 1.8763 34.7185 4.3398 6.3783 22.9963 21.5143 9.7142 38.9625;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
