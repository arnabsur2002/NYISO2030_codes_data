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
	1.0111 0.8207 0.6949 0.0 0.0 9.4835 1.1854 4.8549 0.4191 0.0 0.0 0.0;
	9.3446 7.7223 6.9151 2.107 4.5311 40.3363 5.042 27.3664 26.0001 80.4335 0.1667 145.6655;
	16.6412 13.3961 11.0651 5.2416 4.0926 52.5492 6.5686 47.849 18.5363 174.0195 4.6489 315.1504;
	19.813 16.1377 13.0793 8.6973 3.1776 108.1386 13.5173 57.4741 35.1607 248.1565 6.3543 449.4129;
	25.1563 16.3661 13.2893 9.6222 1.5748 293.4172 36.6772 67.9325 158.1595 208.957 14.302 378.4223;
	25.7548 16.5136 13.8 8.2332 1.4306 341.9249 42.7406 69.8268 157.8257 228.9628 53.9798 414.6531;
	25.9853 16.5946 13.8 6.3095 1.8817 338.4679 42.3085 70.4976 134.1424 240.3146 135.221 435.2112;
	24.6056 15.9734 13.4455 3.7978 2.5008 239.3993 29.9249 72.9863 103.5928 228.3497 139.9735 413.5426;
	21.9614 16.1049 13.2002 4.0568 2.7393 225.167 28.1459 71.1299 110.8372 232.1208 113.691 420.3721;
	17.0401 15.2657 11.1572 4.656 2.4077 229.3992 28.6749 66.2427 111.9195 167.5182 65.3558 303.3764;
	8.7769 12.1157 7.8402 6.7952 1.8406 166.403 20.8004 37.1247 119.0843 46.6177 7.6198 84.425;
	1.283 1.3053 0.941 1.0676 0.5701 63.1898 7.8987 11.6229 32.6627 6.4509 0.0 11.6826;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
