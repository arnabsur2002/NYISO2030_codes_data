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
	0.481 0.4039 0.4224 0.0 0.0 0.0 0.0 0.2 0.0 0.0 0.0 0.0;
	12.7046 8.7529 6.3373 3.4393 4.7582 345.7987 43.2248 64.5523 186.9783 14.7565 6.3013 26.7241;
	17.4526 13.318 12.056 6.1378 6.2161 440.1838 55.023 73.0141 260.1919 85.7024 20.5362 155.2076;
	20.9261 16.4041 13.8 8.0466 5.5983 449.2321 56.154 74.122 267.5607 196.6708 41.8364 356.172;
	23.7024 16.1547 13.6408 4.2052 1.5376 316.3244 39.5405 50.5339 153.9085 222.0478 52.2632 402.13;
	25.421 16.6469 13.8307 5.0234 2.6736 284.5429 35.5679 55.1397 126.8344 202.0165 54.4288 365.8531;
	25.8657 16.9369 14.0572 5.3426 4.3588 164.5143 20.5643 54.016 80.7838 134.2986 54.7869 243.2155;
	20.1069 14.2988 13.1464 4.1927 6.335 2.1807 0.2726 4.4808 15.6517 68.1758 49.777 123.4667;
	15.5294 9.8947 10.0047 2.7605 5.6313 3.6919 0.4615 1.8813 20.5449 61.2572 44.3057 110.9372;
	8.3858 6.1104 5.7188 1.8231 4.589 10.9126 1.3641 0.8901 22.6769 56.6631 35.2122 102.6173;
	1.4866 1.7127 0.6939 0.6855 0.9619 22.1715 2.7714 1.9173 11.3947 24.326 9.3691 44.0545;
	0.3651 0.3814 0.2871 0.342 0.7961 9.9262 1.2408 1.1954 3.1688 8.2523 4.6055 14.9449;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
