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
	0.4807 0.4276 0.4307 0.0 0.0 0.0 0.0 0.2 0.521 0.0 0.0 0.0;
	5.253 3.1203 1.0411 2.5782 1.7662 108.8893 13.6112 10.2139 68.1139 9.0964 0.0 16.4736;
	8.5003 9.2106 6.1891 3.0217 4.1758 91.0837 11.3855 4.7189 213.8617 8.664 5.1453 15.6905;
	14.9417 16.3468 13.5914 3.8163 5.2681 163.7549 20.4694 13.9938 251.3065 22.1247 22.7766 40.0679;
	20.1076 16.1547 12.7392 1.1145 0.872 159.9895 19.9987 39.85 156.4408 84.2768 52.478 152.6258;
	21.2048 16.1776 11.1115 1.6288 0.2638 247.9791 30.9974 38.7209 126.6442 122.5481 53.119 221.9353;
	22.7932 15.7337 10.8027 1.8281 0.1985 301.6977 37.7122 40.6492 100.1651 126.8105 48.5152 229.6545;
	13.0333 8.7794 6.1298 2.07 1.0601 180.4879 22.561 31.6901 50.4933 83.2306 47.4097 150.7312;
	11.222 7.0729 4.5389 1.506 1.0123 157.2811 19.6601 41.1717 55.7442 60.4741 44.9963 109.519;
	7.5285 5.3318 2.41 1.103 1.1168 122.9417 15.3677 45.1177 51.2751 43.2239 36.6419 78.2788;
	1.7572 0.7142 0.1726 0.6988 0.0 17.3825 2.1728 16.3975 14.5114 13.5314 7.2763 24.5054;
	0.3677 0.3047 0.2871 0.3794 0.1853 4.5748 0.5718 1.3691 8.2015 7.0242 3.134 12.7209;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
