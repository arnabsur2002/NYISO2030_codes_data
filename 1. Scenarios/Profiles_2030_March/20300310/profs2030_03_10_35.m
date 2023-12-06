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
	0.1085 0.1466 0.0599 0.3963 0.0898 1.9053 0.2382 0.0 3.6195 0.0 6.3009 0.0;
	0.7119 1.0897 0.5157 1.3359 1.0748 0.7231 0.0904 0.0 10.3072 8.5333 16.7971 15.4538;
	1.2462 2.3466 0.8695 2.1425 2.0476 7.9224 0.9903 2.3019 17.7788 30.82 38.9406 55.8153;
	2.6983 4.3862 1.9715 1.8307 1.3509 37.2913 4.6614 10.7515 70.8768 42.2445 45.5838 76.5051;
	2.6466 2.5046 2.0944 1.4404 0.9084 49.6367 6.2046 13.6783 94.7417 26.791 30.2289 48.5187;
	2.3628 1.9725 1.9733 1.6576 1.0838 38.2916 4.7865 11.9769 93.1852 20.2245 15.1934 36.6267;
	2.0243 1.2799 1.0675 4.1746 2.5764 35.0691 4.3836 15.0655 45.5518 71.7227 21.7943 129.8902;
	1.7671 1.571 0.8973 5.1204 2.8548 24.0413 3.0052 11.2826 23.2984 88.9349 35.8935 161.0617;
	1.5418 1.6756 0.7183 4.4841 2.4885 31.499 3.9374 9.3611 12.1998 133.4803 42.2012 241.7337;
	1.3935 1.6322 0.9928 2.0747 1.0666 68.9624 8.6203 5.655 4.7045 121.9233 59.9033 220.8038;
	0.3012 0.2948 0.1984 1.1875 1.2507 37.6107 4.7013 6.9876 22.204 22.2433 11.1577 40.2828;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
