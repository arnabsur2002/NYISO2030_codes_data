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
	0.9378 0.3384 0.7861 0.7065 1.4907 57.4188 7.1773 23.7592 9.4094 13.8267 4.3335 25.0402;
	1.2503 0.8694 1.1075 1.5329 1.759 17.438 2.1798 13.3724 7.0779 37.9878 11.9562 68.7962;
	1.2937 1.18 1.2423 2.3074 2.1781 22.7776 2.8472 10.3902 12.7045 66.7991 23.8643 120.9736;
	2.2521 2.1872 2.1906 2.4674 2.6562 70.7538 8.8442 16.074 84.4985 62.5476 36.7418 113.2741;
	1.7001 1.8795 2.0264 1.4717 2.57 61.3011 7.6626 15.447 94.6652 58.3973 36.8959 105.7578;
	1.5601 1.6093 1.9926 0.9656 2.3049 21.3608 2.6701 11.4628 66.0381 45.473 39.1799 82.3518;
	3.9416 3.9462 4.4337 1.8967 2.2827 0.0 0.0 19.6889 26.8705 85.1164 123.723 154.1462;
	4.2654 4.0001 4.9758 2.34 2.057 0.0 0.0 16.6978 17.4775 80.41 147.6233 145.6231;
	3.7218 3.2397 4.2613 2.2216 1.7434 8.621 1.0776 16.2705 16.4934 66.2368 100.65 119.9552;
	2.2459 1.6841 1.7823 0.8549 0.5571 44.8185 5.6023 7.8265 11.8828 35.8373 19.7232 64.9015;
	0.2696 0.2456 0.1537 0.3793 0.5185 28.4907 3.5613 6.1958 22.1103 18.584 9.3553 33.6558;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
