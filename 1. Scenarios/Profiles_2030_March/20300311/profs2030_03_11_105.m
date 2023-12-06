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
	10.9983 9.6276 6.6338 3.2317 4.9701 321.5501 40.1938 64.8047 31.4241 66.9328 38.6922 121.2158;
	19.4379 15.6046 11.7267 7.5896 11.6493 391.682 48.9602 75.831 97.3882 75.6973 116.4233 137.0882;
	23.3192 16.6029 13.8 10.431 12.7967 395.2949 49.4119 77.5424 145.5977 204.6251 190.7365 370.5772;
	26.4019 16.7803 13.8 11.2595 11.2175 255.3916 31.9239 74.6899 140.827 189.4138 197.142 343.0296;
	26.783 17.1443 13.8544 11.2211 10.6952 155.3722 19.4215 74.0186 110.9476 188.8841 212.0619 342.0703;
	26.8662 17.205 13.9213 11.1639 10.1049 125.4913 15.6864 73.3733 141.2981 232.1902 219.8895 420.4978;
	26.466 16.7201 13.8 11.6171 10.7739 318.3211 39.7901 74.8077 213.4997 237.7695 227.8493 430.602;
	23.3394 16.6083 13.8 11.5984 11.0261 391.3649 48.9206 76.0678 227.8779 273.9004 211.9499 496.0354;
	17.0125 13.6723 10.7914 9.2408 10.268 400.4732 50.0592 73.9001 207.431 210.7491 198.8717 381.668;
	6.8428 6.4189 4.8151 2.9425 6.3394 327.9344 40.9918 48.3894 108.5561 58.2519 35.3099 105.4946;
	0.715 0.6669 0.4194 1.2449 2.5923 50.5035 6.3129 8.6013 24.5567 20.8877 17.1027 37.8278;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
