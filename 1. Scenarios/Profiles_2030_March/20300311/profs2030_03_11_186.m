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
	7.1509 6.5551 5.2374 4.8001 2.6676 189.3637 23.6705 33.5757 62.8625 66.9736 38.4506 121.2897;
	6.5202 13.5151 11.7303 8.6061 7.2122 306.4979 38.3122 71.3391 112.2102 29.2692 7.2246 53.0068;
	12.3915 16.6029 13.8109 11.1445 9.709 342.526 42.8158 74.5312 141.0416 64.8944 25.8251 117.5242;
	25.9913 16.7665 13.9288 11.5953 9.6592 328.0837 41.0105 72.8061 179.0477 46.5106 20.6572 84.2309;
	26.334 16.7354 13.8448 11.4511 10.0292 349.3924 43.674 71.1587 201.34 67.6104 77.2847 122.4428;
	26.3393 16.6083 13.8 11.3654 10.0968 359.8091 44.9761 69.4895 217.1459 87.0088 126.987 157.5735;
	26.3192 16.3224 13.7255 11.2644 12.1144 411.4854 51.4357 73.2335 207.8834 56.3873 132.9135 102.1177;
	23.0051 16.3003 13.7965 11.3579 12.8643 419.9845 52.4981 76.2218 189.8208 72.169 102.086 130.6985;
	17.65 13.5431 11.6772 8.9802 13.1071 409.15 51.1437 76.0102 171.4827 64.3368 97.9308 116.5143;
	11.0792 9.3127 8.3482 5.057 10.2737 256.6565 32.0821 58.25 109.2923 45.1041 49.7801 81.6838;
	0.9861 0.9441 0.6473 1.2705 2.8332 49.9078 6.2385 8.7553 29.8404 20.8447 19.6305 37.7499;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
