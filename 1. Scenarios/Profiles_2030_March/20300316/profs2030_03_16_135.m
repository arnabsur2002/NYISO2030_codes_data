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
	1.0111 0.8207 0.6949 0.0 0.0 10.6544 1.3318 4.2549 1.9851 0.0 0.0 0.0;
	9.2533 8.2748 5.9848 1.0134 1.9867 292.9588 36.6198 32.7981 172.6352 85.7652 12.4619 155.3214;
	17.2812 14.3952 12.2197 2.3476 4.4336 369.772 46.2215 47.8386 243.8795 177.3841 38.2986 321.2437;
	22.5487 16.6083 13.8 5.7472 7.2172 401.6506 50.2063 55.563 249.8974 244.7054 80.0475 443.163;
	25.2049 16.3661 13.8558 5.3511 9.5569 375.2485 46.9061 61.0875 167.5717 41.1108 16.5355 74.4519;
	25.7904 16.6301 14.1677 4.5048 9.1265 351.4156 43.927 63.9893 162.9376 43.8289 17.2128 79.3743;
	25.7635 16.6326 14.1187 3.3436 6.9356 313.9853 39.2482 62.4143 161.3232 25.1146 14.9087 45.4827;
	18.4457 15.4503 13.4329 3.7979 2.6524 221.1776 27.6472 61.7798 62.1418 8.8373 17.1152 16.0045;
	10.6594 9.9168 11.7797 4.3658 3.1632 210.6039 26.3255 59.2462 42.0075 0.1447 15.4336 0.2621;
	6.2816 7.217 7.99 5.3938 4.5536 204.2226 25.5278 52.2124 32.7282 9.1675 13.0891 16.6025;
	5.0076 5.3116 5.6935 6.655 9.7358 152.1067 19.0133 21.9351 61.9592 15.1689 15.1395 27.471;
	1.2713 1.0037 0.8779 1.0134 2.2005 64.7973 8.0997 11.3077 45.5872 6.3016 10.6594 11.4122;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
