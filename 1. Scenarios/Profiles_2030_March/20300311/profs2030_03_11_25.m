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
	9.2107 6.3966 6.0258 4.0008 5.4841 332.7297 41.5912 45.8532 135.4797 73.1446 39.3211 132.4653;
	20.4275 13.5448 11.7484 6.2382 10.1147 390.8982 48.8623 72.3628 170.238 220.2512 129.8468 398.8763;
	24.2453 16.6029 13.8 6.0337 11.7606 395.3316 49.4165 74.5423 163.4838 317.1182 199.191 574.303;
	26.6323 16.8027 13.8 1.7967 7.9682 323.5895 40.4487 67.5543 147.1017 250.2162 162.0984 453.143;
	26.7472 16.9534 13.8 1.9745 8.1879 324.1107 40.5138 62.6587 130.1901 260.4144 146.3293 471.612;
	26.6324 16.7481 13.8 2.1193 8.2157 339.6066 42.4508 54.4378 145.1992 223.1168 140.1434 404.0659;
	26.3192 16.4017 13.0641 2.6752 8.9894 403.4823 50.4353 60.4584 205.8394 61.8591 112.9024 112.0272;
	21.5849 15.6584 12.325 2.6453 8.644 418.5193 52.3149 70.8337 234.3041 55.6566 99.1947 100.7945;
	15.1786 10.7018 8.6227 1.468 7.4583 414.1564 51.7695 72.4129 252.3433 46.7258 90.9508 84.6208;
	9.7021 7.9768 7.5253 2.844 3.4654 321.7028 40.2128 70.1345 219.2651 61.9711 32.0156 112.23;
	1.0536 0.9608 0.7086 1.5508 2.859 53.3004 6.6626 12.4059 25.5744 22.3606 18.8687 40.4951;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
