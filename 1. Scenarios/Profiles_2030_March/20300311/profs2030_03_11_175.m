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
	0.2611 0.5266 0.3096 0.0707 2.3727 34.6663 4.3333 5.7393 51.8585 67.1703 40.0087 121.6458;
	9.0174 13.0144 7.6162 1.2354 10.1972 296.419 37.0524 56.8669 161.9374 88.3705 120.7956 160.0395;
	22.4827 16.6561 13.8 5.4819 12.3273 391.9142 48.9893 70.6064 194.4369 228.7072 183.1608 414.1901;
	26.3683 16.6304 13.8 10.3641 12.6107 396.0841 49.5105 65.5286 244.7056 229.5319 147.212 415.6836;
	26.4003 16.6083 13.7873 11.3233 12.7652 415.87 51.9837 64.6098 271.3064 291.2533 180.9104 527.4615;
	26.631 16.6083 13.8 11.4717 12.8195 434.6865 54.3358 64.5262 282.931 316.1998 201.3194 572.6397;
	26.8506 16.8062 13.8591 11.4766 13.8663 469.9041 58.738 70.0683 288.4203 209.1803 183.6744 378.8267;
	25.0741 16.8834 13.9151 11.1521 14.0238 477.9932 59.7491 72.8771 276.5823 173.1292 164.3307 313.5381;
	20.4312 16.0076 12.4631 6.7472 13.5816 453.2861 56.6608 71.1081 251.2206 122.0461 141.9733 221.0262;
	8.467 6.6907 3.5847 4.1276 10.1303 273.2284 34.1536 39.3657 120.1954 71.0028 76.3472 128.5866;
	0.9861 0.9208 0.4353 1.9264 3.1638 51.5885 6.4486 8.6945 25.6946 23.1192 21.4541 41.8691;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];