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
	1.099 0.8595 0.7825 0.0 0.0 9.5412 1.1926 5.3497 2.3136 0.0 0.0 0.0;
	5.9848 3.4753 2.341 1.1444 3.4902 210.0099 26.2512 23.6669 131.7346 143.3181 32.3267 259.5499;
	7.3608 8.9157 3.8139 1.5846 6.5413 367.2082 45.901 47.2369 176.373 172.387 40.2756 312.1939;
	18.7281 16.6083 13.5879 1.6872 7.0355 423.9914 52.9989 56.8343 207.0783 159.6957 75.4988 289.2099;
	26.3994 17.2364 14.3872 0.0 2.3399 425.6442 53.2055 57.4351 240.2194 87.3586 129.2813 158.207;
	26.7868 17.374 14.4302 0.6187 1.2029 383.7698 47.9712 56.1759 228.8431 216.7784 174.5275 392.5869;
	26.2194 17.29 14.3924 1.2542 1.0836 329.8104 41.2263 53.3393 189.7237 250.5976 195.4917 453.8338;
	24.2692 16.1433 13.8703 2.013 1.3178 133.8128 16.7266 53.6315 55.9962 169.3286 107.8524 306.6551;
	21.3911 16.0988 13.7604 1.3225 1.8184 154.6782 19.3348 49.7348 51.8355 99.9103 69.7037 180.9381;
	16.1932 13.8843 12.2459 0.6663 1.6577 191.0553 23.8819 42.5566 71.9471 56.9544 56.7577 103.1447;
	8.7092 7.5419 5.8385 0.3149 1.5053 151.48 18.935 19.9514 148.4006 33.647 59.7835 60.935;
	1.2507 1.0674 0.8177 0.7654 0.6871 63.7939 7.9742 11.4837 44.9537 16.0168 26.5255 29.0065;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];