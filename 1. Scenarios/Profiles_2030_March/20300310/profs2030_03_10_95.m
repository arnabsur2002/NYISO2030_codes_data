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
	0.3887 0.2856 0.1849 0.1036 0.2966 11.6929 1.4616 0.9698 11.6966 13.3252 9.8261 24.132;
	0.7831 0.4542 0.4822 0.256 0.3609 0.3938 0.0492 0.9716 14.5715 15.5949 11.8655 28.2424;
	1.0899 0.6535 0.7874 0.5128 0.8336 0.0 0.0 0.5637 16.1127 18.8665 9.3188 34.1673;
	0.8993 0.855 1.1538 0.6089 2.2249 0.0 0.0 1.7799 25.6774 39.572 15.3043 71.6652;
	0.4671 0.5086 0.9564 0.5311 2.7491 0.0 0.0 2.1214 27.5432 70.1458 34.0374 127.0344;
	0.2763 0.2241 0.6527 0.8592 2.462 0.0 0.0 3.1016 19.2786 74.5729 41.5013 135.0519;
	0.1546 0.1716 0.0547 2.4861 1.6871 0.0 0.0 15.9258 8.5501 43.7639 41.0329 79.2567;
	0.0 0.0234 0.025 2.5255 1.3267 0.0 0.0 16.4713 4.5423 20.4462 24.3096 37.0281;
	0.0 0.0 0.0 2.1685 1.0139 0.0 0.0 13.3925 1.7971 12.4019 20.9423 22.4599;
	0.0 0.0 0.0 0.9632 0.1637 2.5332 0.3167 4.6017 3.0762 15.9345 22.8812 28.8574;
	0.2415 0.2168 0.1471 0.4976 0.5184 28.4907 3.5613 6.4976 22.1728 18.4915 15.5833 33.4883;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];