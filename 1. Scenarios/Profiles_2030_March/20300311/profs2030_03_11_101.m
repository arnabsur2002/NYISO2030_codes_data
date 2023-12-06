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
	8.7387 7.452 5.5783 1.5239 0.7936 199.1476 24.8934 34.9083 178.9968 64.6196 39.5694 117.0264;
	10.5868 10.5599 8.6751 5.2443 2.8355 342.0259 42.7532 70.3175 196.1823 203.9405 129.9571 369.3375;
	14.6225 13.3108 12.9889 7.6415 7.2262 365.6401 45.705 73.2094 174.6747 326.8457 194.5258 591.9196;
	26.334 16.3435 13.8 8.8494 3.3867 306.3096 38.2887 68.0079 152.7122 279.4323 163.8394 506.0537;
	26.7263 16.6181 14.0221 10.7776 6.6649 315.8475 39.4809 69.0746 159.4001 293.9242 184.8588 532.2985;
	26.8517 16.9927 14.2889 11.3315 8.2176 336.1899 42.0237 71.6719 179.914 312.4612 204.1399 565.8691;
	26.8214 17.099 14.2302 11.632 9.4993 406.6205 50.8276 74.4685 202.2859 273.6999 178.2836 495.6723;
	24.8332 16.8465 13.9668 11.5984 9.6167 423.6277 52.9535 75.4694 205.904 287.1119 156.6731 519.9614;
	22.0396 15.6239 12.7527 9.2793 8.9169 420.5306 52.5663 72.937 211.4072 204.2136 119.1989 369.832;
	12.7039 7.3089 6.1437 5.3408 5.4419 327.7759 40.972 38.6856 212.5085 88.0934 54.5268 159.5377;
	0.7296 0.66 0.5476 1.5943 3.1389 53.5414 6.6927 8.4614 32.4945 32.257 19.5199 58.4176;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];