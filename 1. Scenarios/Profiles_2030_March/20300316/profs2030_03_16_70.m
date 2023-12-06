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
	1.0111 0.8207 0.6949 0.0 0.0 9.4835 1.1854 4.1882 0.4401 0.0 0.0 0.0;
	9.2876 7.568 6.4076 2.2161 2.4149 13.4698 1.6837 34.6896 25.3394 78.3736 31.2555 141.935;
	14.7072 14.0035 10.0464 4.7082 2.8746 52.5365 6.5671 61.1997 59.4826 176.3973 83.5649 319.4565;
	16.247 16.0887 11.4606 6.9142 4.0489 141.5318 17.6915 64.658 128.5205 272.5266 126.7246 493.5474;
	14.2118 3.7079 6.3269 5.2732 6.9009 286.6148 35.8268 55.0389 163.7101 330.1489 133.6257 597.9016;
	16.1742 8.2937 6.6681 5.9757 10.1385 285.7138 35.7142 57.1586 163.3856 347.5757 148.9339 629.4618;
	18.4613 13.8608 7.3203 6.0653 10.2759 267.4108 33.4264 59.6242 157.5593 351.7115 155.2729 636.9516;
	14.3575 12.2737 6.0409 3.2931 3.2149 201.0404 25.13 60.5882 96.1283 258.6574 123.2032 468.4302;
	10.7654 5.6027 4.5921 2.1622 1.4403 232.9603 29.12 56.8983 78.6923 226.1482 105.9108 409.5558;
	6.0692 3.2557 2.9627 1.5435 0.7879 244.2659 30.5332 50.0524 67.3078 198.2756 74.6872 359.0783;
	2.5394 1.6964 2.7234 1.7793 1.7831 173.6948 21.7118 34.5913 78.2449 203.7969 37.7942 369.0773;
	1.1859 1.0362 0.7728 0.9277 1.0886 64.8507 8.1063 15.5142 38.0286 118.8744 11.0977 215.2823;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
