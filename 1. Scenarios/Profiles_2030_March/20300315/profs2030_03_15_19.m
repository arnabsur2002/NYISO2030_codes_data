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
	0.4095 0.3679 0.3172 0.0 0.0 1.3032 0.1629 0.1431 0.8176 0.0 0.0 0.0;
	4.0837 4.6295 2.7828 0.0 1.2894 67.1042 8.388 18.4443 68.789 49.3576 18.3767 89.3869;
	8.5125 7.3552 5.7857 0.0 1.3299 83.7084 10.4636 22.0283 93.0689 182.4718 100.3944 330.4575;
	10.4587 10.635 7.5738 0.2499 1.3506 59.2369 7.4046 23.1822 92.6763 262.5829 154.4919 475.5392;
	5.6363 10.4328 6.1705 3.6212 9.9025 20.6927 2.5866 19.3339 55.6765 232.4308 148.3548 420.9336;
	16.1896 15.4727 10.5681 7.1268 9.6696 35.4119 4.4265 27.8803 49.7077 188.0005 160.4348 340.4701;
	20.8227 16.6458 12.3534 9.9785 9.9756 62.1768 7.7721 32.6583 52.343 195.3782 158.6093 353.8312;
	14.4613 15.4373 9.8053 9.626 8.0674 234.8053 29.3507 43.8015 183.9762 201.0573 122.9758 364.116;
	8.5663 9.4156 6.8181 7.9898 8.4599 229.683 28.7104 42.9995 196.518 180.2393 118.9998 326.4144;
	3.1543 5.6195 4.3016 5.1583 8.3441 198.4451 24.8056 44.2588 190.5899 124.449 112.6669 225.378;
	1.5469 1.7904 1.6163 2.2074 4.9847 242.8692 30.3586 40.7302 185.5798 16.8469 18.3061 30.5099;
	0.7228 0.9247 0.7441 1.2034 1.7841 82.1586 10.2698 8.1131 54.1407 8.6349 8.1289 15.6379;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];