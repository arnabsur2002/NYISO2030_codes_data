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
	0.1673 0.1973 0.2523 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	17.9828 8.5271 8.3376 2.0001 4.6406 221.8912 27.7364 18.3679 87.6796 55.9522 22.0862 101.3298;
	11.8894 8.3935 8.2961 7.4358 5.6709 344.0762 43.0095 33.3125 147.2676 147.635 41.9134 267.3678;
	10.0641 9.974 11.4112 9.9292 6.6503 363.8242 45.478 44.218 171.4492 212.5324 94.6631 384.8974;
	23.802 16.2283 13.7125 6.4264 4.8572 351.1958 43.8995 53.6514 183.4047 267.4648 155.0121 484.3804;
	26.0217 16.5326 13.7859 6.2322 5.6666 391.956 48.9945 59.917 193.7424 283.0175 179.6491 512.5465;
	26.1615 16.5331 13.79 5.488 5.1257 388.1803 48.5225 56.4679 182.566 275.822 193.045 499.5154;
	25.7636 16.5546 13.7855 3.7918 6.2932 366.0686 45.7586 60.6926 189.6551 341.7508 253.5907 618.9128;
	19.5348 16.2539 13.2087 1.6222 3.5738 340.9038 42.613 60.496 164.4969 337.3341 233.3161 610.9142;
	13.6563 11.2564 7.8834 1.454 2.2814 296.1359 37.017 59.1298 141.5784 310.026 194.0866 561.459;
	8.9361 5.2372 3.6279 2.3148 8.7652 253.5281 31.691 58.0153 121.5563 222.7984 120.4442 403.4892;
	0.9086 0.7396 0.5267 1.6067 3.5506 60.6582 7.5823 12.074 35.2612 65.9405 38.9384 119.4187;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
