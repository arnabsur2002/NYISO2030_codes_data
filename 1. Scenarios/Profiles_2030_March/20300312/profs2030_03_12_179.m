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
	0.1575 0.1621 0.24 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	5.3616 4.0929 3.0413 1.5056 3.9791 238.2472 29.7809 29.3973 84.202 46.6451 21.3624 84.4746;
	12.2906 11.0387 3.9834 2.8787 2.8106 269.2957 33.662 40.9821 129.7377 100.9876 16.7581 182.8892;
	17.62 15.4623 8.9052 4.6627 1.996 254.368 31.796 42.7356 142.6847 151.1733 68.1302 273.7758;
	17.0565 3.8722 7.3121 5.06 1.2069 181.6707 22.7088 23.9908 114.6842 112.3763 159.0759 203.5142;
	18.1202 3.1926 6.2995 6.3948 4.3362 237.3017 29.6627 43.7938 145.9479 93.6442 178.9164 169.5903;
	19.9793 5.09 5.4951 7.2775 7.3076 245.9233 30.7404 52.6144 162.7222 77.5151 187.2234 140.3804;
	20.1399 11.3215 7.4964 9.9617 9.762 323.359 40.4199 69.6798 202.3358 280.8949 252.473 508.7024;
	15.8892 13.5699 11.0684 9.2889 7.0425 309.0869 38.6359 65.7345 173.0795 304.2451 232.4849 550.9897;
	12.5036 9.8719 10.5582 7.2796 2.9853 296.1706 37.0213 58.9498 122.8741 218.473 188.0355 395.656;
	9.5661 7.2563 10.1918 7.2211 6.4499 301.793 37.7241 48.5786 94.5813 147.6967 84.3309 267.4796;
	1.3411 1.1998 0.8573 2.2836 3.8238 69.3373 8.6672 14.5502 38.3088 64.8067 37.1964 117.3654;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
