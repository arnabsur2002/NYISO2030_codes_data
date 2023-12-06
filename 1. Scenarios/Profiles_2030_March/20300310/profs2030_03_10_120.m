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
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 1.1325 1.1721 30.2669 3.7834 0.1997 85.23 13.5031 9.61 24.4542;
	0.5465 0.58 0.266 1.7854 2.2889 42.2206 5.2776 2.3225 43.3028 63.3296 24.0484 114.6903;
	1.2933 0.9502 0.6973 2.2507 2.4074 34.1295 4.2662 3.9265 22.2781 127.7047 34.0676 231.2741;
	1.7936 0.5691 0.1176 2.5523 2.6316 31.6848 3.9606 6.3997 36.4008 85.9549 37.6694 155.6649;
	1.041 0.3258 0.0 3.2525 3.2166 37.1933 4.6492 13.729 64.2622 70.6677 66.4006 127.9796;
	0.6616 0.0568 0.0 4.1937 4.6036 32.1663 4.0208 17.0401 76.7093 69.0571 83.6787 125.0629;
	1.1435 0.0 0.0 7.6845 8.368 31.636 3.9545 15.5495 42.1423 141.1589 60.248 255.6395;
	1.2016 0.0 0.0155 6.8234 8.3179 18.3702 2.2963 6.3877 23.7075 137.5529 44.1078 249.1092;
	0.922 0.0 0.0628 4.6104 6.1862 13.4507 1.6813 2.5636 18.3228 126.6271 29.4636 229.3224;
	1.1602 0.8547 0.8977 0.8935 1.1677 18.0095 2.2512 1.7298 29.0008 91.3193 24.6645 165.3798;
	0.4445 0.6573 0.3795 0.446 0.553 31.85 3.9812 8.0592 26.7897 28.8031 23.1821 52.1626;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];