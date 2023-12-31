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
	0.0018 0.0051 0.001 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.3792 0.3289 0.3482 4.7428 1.1105 7.9201 0.99 2.2663 0.0 8.6843 4.4935 15.7273;
	0.3722 0.469 0.4154 6.7616 1.8763 0.0 0.0 0.0 0.0 17.9475 14.0672 32.5031;
	0.4333 0.6556 0.5245 4.4713 2.1899 0.0 0.0 0.0 0.0 38.795 29.525 70.2581;
	0.7915 1.5683 1.1056 1.2025 1.5395 1.6755 0.2094 0.0 1.342 40.4915 36.5392 73.3304;
	1.1498 1.9032 1.3912 0.9765 1.5106 2.9411 0.3676 0.0 11.6688 53.5242 46.5966 96.9326;
	1.3006 1.9629 1.3365 0.9622 1.3048 10.6245 1.3281 1.0731 24.1602 54.9005 50.376 99.4252;
	1.5335 2.8669 1.0992 0.736 0.6156 57.548 7.1935 8.2429 75.6675 42.6362 49.0196 77.2144;
	1.0902 2.4064 0.8946 0.4884 0.2404 40.422 5.0527 6.1861 71.6048 25.3139 25.1887 45.8436;
	0.8561 1.9228 0.8135 0.4251 0.0995 28.9222 3.6153 3.9819 50.0119 11.0924 9.343 20.0883;
	1.3217 1.5439 1.3915 0.0874 0.0 7.5673 0.9459 0.0 15.0143 0.0 0.0 0.0;
	0.4448 0.4292 0.2455 0.4086 0.5332 28.6866 3.5858 6.1431 24.9242 14.3145 8.9441 25.9237;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
