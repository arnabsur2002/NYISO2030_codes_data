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
	2.1335 1.2715 0.7466 1.8124 1.0203 22.2384 2.7798 5.4565 6.1754 14.0566 21.3915 25.4565;
	12.5903 8.3672 7.5572 5.0525 4.0928 79.7887 9.9736 33.2544 35.2367 146.0996 32.7406 264.5872;
	22.4267 15.9434 13.6884 7.7727 6.1784 113.3113 14.1639 46.8722 64.3785 260.6463 89.2777 472.0321;
	23.473 14.8608 11.9344 6.5764 4.2411 64.4959 8.062 35.0901 77.8059 248.3679 80.2304 449.7958;
	19.9453 12.3067 5.4427 6.8669 4.8075 63.553 7.9441 34.2244 73.2256 231.0594 122.4174 418.45;
	19.9824 12.5972 3.3558 6.9595 5.1545 87.3644 10.9206 37.8615 102.4767 224.0198 159.8018 405.7013;
	25.8058 16.3769 12.5003 9.4783 7.298 327.398 40.9248 55.9175 237.1623 343.6256 243.0654 622.3081;
	23.2404 16.3881 13.6705 8.1926 5.0439 352.0563 44.007 48.1665 253.963 343.896 215.5023 622.7978;
	18.6618 13.7195 10.8512 4.6152 2.61 334.4815 41.8102 23.7295 248.5891 335.5896 146.342 607.7548;
	7.1463 6.4762 2.687 1.965 6.312 297.4187 37.1773 6.3264 211.8877 240.7862 67.6909 436.0653;
	0.9303 0.8101 0.5133 1.5084 3.5226 70.5139 8.8142 10.0415 48.1851 66.6092 39.2884 120.6296;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
