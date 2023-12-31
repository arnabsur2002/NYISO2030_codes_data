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
	0.4095 0.3481 0.302 0.0 0.0 0.1765 0.0221 0.1431 0.1581 0.0 0.0 0.0;
	1.5802 0.932 0.755 1.5593 1.1254 50.6733 6.3342 6.5747 10.9781 57.1214 42.3518 103.4472;
	3.5775 3.2995 2.3233 2.0625 2.4389 156.2821 19.5353 16.5043 57.2392 143.02 136.7141 259.0102;
	5.4851 4.9138 3.2075 2.5842 3.8559 251.614 31.4518 28.3546 126.4769 220.9039 166.2398 400.0583;
	5.7517 5.6512 5.7895 8.2614 12.6969 272.7229 34.0904 43.9752 136.9614 261.7187 182.2272 473.9741;
	14.6408 11.9318 11.1431 10.0172 12.4655 270.7255 33.8407 44.3047 143.5629 262.9091 187.714 476.13;
	16.685 13.926 11.9743 9.3036 12.1418 211.0071 26.3759 35.1736 117.0644 234.5131 186.6436 424.7047;
	6.3785 8.5251 7.6316 6.0844 7.4852 109.4839 13.6855 24.9156 62.4974 175.2129 159.4355 317.3116;
	3.218 6.3141 4.541 5.6107 6.4259 75.5426 9.4428 20.1569 45.5335 174.4634 148.7145 315.9542;
	1.9252 3.1109 2.8736 4.4365 4.669 56.0937 7.0117 17.4155 31.6698 160.0697 112.6032 289.8872;
	1.8805 1.5311 1.6774 3.791 1.5296 103.7304 12.9663 13.6392 60.1947 54.6473 8.4826 98.9666;
	1.1633 0.9571 0.7577 1.2131 1.1513 54.584 6.823 3.8582 48.1153 18.7989 3.5776 34.0449;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
