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
	0.4731 0.4109 0.4224 0.0 0.0 0.0 0.0 0.2 0.0 0.0 0.0 0.0;
	8.7513 10.6229 6.7897 4.0837 5.981 236.2598 29.5325 41.9556 177.5476 9.8403 11.2462 17.8209;
	9.8232 13.2647 8.7984 4.5399 5.3948 386.423 48.3029 68.4501 245.9067 8.3922 17.3541 15.1984;
	12.7887 16.1178 11.4041 6.962 5.2321 428.942 53.6178 72.2915 245.6255 18.6582 19.4456 33.7901;
	22.9784 15.851 12.6344 6.1437 2.8752 331.4889 41.4361 59.4855 101.7322 69.2152 35.2194 125.3492;
	25.2334 16.371 13.7627 5.8756 2.2721 353.6971 44.2121 63.8877 150.8305 106.2468 52.3782 192.4136;
	25.2171 16.4747 13.7784 3.4586 1.4789 319.6 39.95 61.8531 149.9912 119.3165 56.9792 216.0828;
	11.4693 10.0168 9.5442 2.2316 1.8582 14.1072 1.7634 19.6935 16.517 89.0251 50.8325 161.2249;
	6.9067 4.3694 6.8046 2.7302 2.4925 2.3063 0.2883 14.6765 7.6761 72.7661 43.2351 131.7799;
	4.7309 2.9259 4.8011 3.8432 3.9071 5.69 0.7113 14.8889 6.5969 57.7764 34.1217 104.6334;
	2.4068 1.8057 2.3664 5.5853 2.0401 18.6009 2.3251 8.6392 0.0 19.9362 9.6617 36.1046;
	0.4227 0.4971 0.5071 0.4751 0.1807 10.5185 1.3148 2.4864 2.3579 9.0235 4.7013 16.3416;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
