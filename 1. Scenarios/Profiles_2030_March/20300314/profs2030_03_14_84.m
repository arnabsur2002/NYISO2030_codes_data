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
	0.0951 0.0972 0.1051 0.0 0.0 0.1251 0.0156 0.1784 0.0 0.0 0.0 0.0;
	2.7946 2.7887 1.2108 0.5386 1.9942 44.4674 5.5584 5.1712 50.3263 38.3583 30.9493 69.4671;
	5.2976 3.8276 2.6866 4.8963 10.2806 159.8935 19.9867 33.5561 94.5459 152.9919 60.0388 277.0693;
	7.0181 3.9368 3.0348 9.3209 12.3117 226.9736 28.3717 51.6631 129.4417 262.7865 124.0966 475.9079;
	15.6598 11.4865 10.1954 10.0515 12.2644 413.4493 51.6812 67.7081 276.6232 330.9676 170.3504 599.3842;
	15.2307 13.8037 10.3767 5.8583 11.0459 382.3772 47.7972 63.6078 257.3046 315.4139 199.7847 571.2165;
	18.7067 15.4262 12.0512 2.3094 9.5317 374.945 46.8681 62.8793 236.8815 300.7572 182.8558 544.6731;
	25.1991 16.7124 14.1325 1.1844 3.1816 408.7522 51.094 65.1957 245.4414 237.0433 85.124 429.2868;
	24.3833 16.754 14.3786 2.1991 3.8655 429.9938 53.7492 67.2524 261.8931 212.9185 53.1055 385.5967;
	21.0436 15.7803 13.5055 1.9423 4.359 413.3263 51.6658 64.7294 266.4379 169.928 61.7664 307.7407;
	5.3049 5.3907 3.8347 1.0635 4.1088 119.1455 14.8932 22.8136 78.713 42.3772 19.2353 76.7454;
	0.8987 0.7376 0.5349 0.6507 1.5276 33.5095 4.1887 9.2259 20.2353 14.7571 5.4532 26.7253;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
