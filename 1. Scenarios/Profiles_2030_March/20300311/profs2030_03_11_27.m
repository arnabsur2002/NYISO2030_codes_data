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
	6.0097 6.669 5.5659 1.0648 1.2674 156.3918 19.549 18.5483 74.6143 67.1891 39.5894 121.6799;
	17.6901 13.6591 11.1336 3.3022 8.5527 322.52 40.315 61.6993 80.7523 82.5016 133.1515 149.4109;
	23.3061 16.6029 13.7998 7.7827 11.6143 372.368 46.546 68.9785 107.7534 195.8508 207.4755 354.6869;
	26.1709 16.6083 13.6467 11.1125 8.8983 365.5412 45.6927 63.7861 195.8702 43.3873 194.7251 78.5746;
	25.0525 16.6083 13.635 11.0566 7.8396 363.6681 45.4585 64.0536 225.1229 62.1045 210.5382 112.4716;
	24.3657 16.6083 13.6879 10.5723 6.7295 364.3365 45.5421 64.2036 241.0684 70.7463 209.2098 128.122;
	25.7745 16.6083 13.8 11.344 9.2049 428.6729 53.5841 69.1037 234.1801 14.8901 157.9428 26.9661;
	22.9906 16.6164 13.8 11.54 10.6737 442.5377 55.3172 71.4729 208.3152 13.9051 138.768 25.1823;
	17.6568 16.2932 11.7938 9.4402 10.7581 445.8883 55.736 69.0534 178.0303 15.9876 115.1998 28.9536;
	9.6947 11.5652 6.4071 6.6292 8.8771 351.6389 43.9549 34.5181 78.6569 13.9311 61.0758 25.2294;
	0.8887 0.7614 0.4428 1.3115 3.4174 45.8772 5.7347 8.4724 19.6537 22.1859 23.0806 40.1788;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];