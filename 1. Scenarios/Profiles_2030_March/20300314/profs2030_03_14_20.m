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
	0.0951 0.0992 0.1051 0.0 0.0 0.1251 0.0156 0.1784 0.0 0.0 0.0 0.0;
	3.0061 2.3686 1.3093 1.6505 1.1424 65.2546 8.1568 14.7482 83.7922 16.4649 36.853 29.818;
	4.4059 3.2785 2.1104 3.6339 8.1808 129.2758 16.1595 26.3033 128.1026 37.4538 94.2221 67.829;
	6.99 5.4113 2.9653 4.1297 10.5033 154.6129 19.3266 24.9061 123.8292 81.0364 128.9946 146.7573;
	21.4229 15.8282 11.3446 4.9757 9.415 364.72 45.59 45.5777 239.1373 98.9256 64.3235 179.1549;
	23.203 16.0537 12.0851 9.4118 10.2641 368.121 46.0151 53.0197 226.1536 227.0264 153.3022 411.1462;
	22.8443 16.0049 10.3041 10.7617 10.7803 375.9702 46.9963 59.5988 228.2964 248.9808 170.8608 450.9058;
	23.3078 15.6866 8.4408 1.3929 5.556 342.3516 42.794 64.2556 248.478 68.0934 68.4666 123.3175;
	20.2907 14.0457 6.9714 0.6582 4.5323 305.335 38.1669 63.8796 256.2765 28.6899 17.9771 51.9577;
	15.3165 11.3648 6.5205 0.2206 3.6002 205.1824 25.6478 58.7623 246.1661 29.8862 15.5613 54.124;
	8.6361 6.9933 4.8315 0.9801 3.6201 38.2883 4.786 15.2318 72.1887 36.6174 8.1454 66.3144;
	1.0606 0.9997 0.6202 1.2271 2.2719 47.2347 5.9043 10.0133 29.1536 16.0654 9.1106 29.0945;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
