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
	0.0951 0.0972 0.1111 0.0 0.0 0.1251 0.0156 0.5618 0.0 0.0 0.0 0.0;
	3.5637 3.2332 3.1266 3.1997 5.2268 104.4971 13.0621 10.1757 38.0913 1.3808 12.3387 2.5006;
	7.2787 5.9616 5.6481 3.6007 10.2743 118.7395 14.8424 20.5167 66.6912 69.6648 39.1964 126.1634;
	8.9432 6.4373 7.5701 3.3339 11.2417 107.9541 13.4943 27.5111 85.6146 235.5796 94.7128 426.6361;
	20.45 12.9037 13.1567 7.2038 9.614 312.6818 39.0852 61.5841 235.517 294.9474 107.317 534.1515;
	22.6538 14.022 13.2545 10.6864 8.9724 130.5161 16.3145 40.2159 217.8375 285.4714 130.9966 516.9904;
	23.4118 15.1971 13.2624 10.8696 8.7408 76.7547 9.5943 21.1747 216.0153 273.41 143.6712 495.1472;
	25.1875 16.6174 13.8528 3.2991 4.3073 325.0548 40.6319 59.9928 232.4188 249.692 145.5483 452.1936;
	23.5707 16.7009 14.1316 2.7169 4.7998 388.2265 48.5283 67.1475 245.1652 263.6948 128.6116 477.5529;
	21.0002 16.7011 13.4915 2.1756 5.1945 387.0736 48.3842 70.5703 243.255 255.7177 101.9188 463.1063;
	8.7032 10.2289 8.4508 2.0657 4.7654 117.3965 14.6746 42.1094 96.0841 67.016 19.7743 121.3664;
	1.1701 1.1417 0.7734 0.7176 1.7897 32.1236 4.0155 8.8993 29.3533 15.0268 9.4809 27.2136;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
