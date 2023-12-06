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
	0.227 0.2061 0.3537 0.7585 2.2199 117.6859 14.7107 10.596 112.5017 15.0203 6.0088 27.2018;
	0.4931 0.3813 0.6134 1.6186 5.1728 94.4856 11.8107 8.8215 113.8573 29.5716 14.2053 53.5544;
	0.9204 0.6442 0.903 2.1911 6.2838 75.3504 9.4188 9.3041 100.9688 38.5802 25.0694 69.8689;
	3.0759 1.8468 3.1137 3.962 6.758 147.9876 18.4984 15.3515 169.4313 56.3931 23.9267 102.1282;
	3.462 1.8845 3.7933 5.0781 8.3093 201.9535 25.2442 22.366 214.8116 84.3908 21.5385 152.8323;
	3.0178 1.5415 2.91 6.6488 9.0568 233.4188 29.1773 24.4002 246.6264 117.5961 23.9233 212.9673;
	3.2318 2.165 2.56 10.3171 6.8428 289.6292 36.2036 24.2207 283.6739 165.6845 50.7628 300.0556;
	2.8669 2.2569 2.1472 10.022 5.4002 210.7748 26.3468 12.4576 240.6101 119.1663 44.6378 215.811;
	2.3772 1.9553 1.8617 9.2908 4.4725 165.4036 20.6754 7.4483 222.1617 83.3539 33.1249 150.9543;
	2.0301 1.6118 1.9583 5.5666 2.7553 107.3556 13.4195 4.6039 95.4027 51.9216 17.9072 94.0303;
	0.2577 0.2571 0.1819 1.1584 1.2967 39.8495 4.9812 7.7466 32.6816 22.1692 11.3598 40.1485;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];