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
	0.0951 0.0972 0.1051 0.0 0.0 0.204 0.0255 0.2035 0.4063 0.0 0.0 0.0;
	3.7425 2.7935 3.2494 5.085 5.9107 149.3811 18.6726 26.0109 120.6607 64.7066 7.0325 117.184;
	7.6724 6.2106 6.0822 10.1936 10.2704 155.5235 19.4404 41.8749 114.2254 93.3188 12.6727 169.0009;
	10.7592 8.6553 8.185 10.7131 11.2867 171.5189 21.4399 51.4994 107.9468 105.9301 22.3297 191.8401;
	21.5116 15.2778 12.9473 10.1436 11.029 413.9165 51.7396 73.0435 255.7464 188.6938 65.8807 341.7257;
	23.2272 16.0537 13.2545 10.873 11.1559 432.38 54.0475 75.6684 264.0318 290.6924 152.4452 526.4458;
	23.4419 16.2116 13.2624 11.2056 11.4507 452.9082 56.6135 76.149 274.2288 319.8338 171.6456 579.2209;
	25.0605 17.3345 14.1526 10.8898 8.8032 457.0352 57.1294 75.5109 275.8958 295.3684 153.5639 534.9139;
	23.4324 17.0889 14.2207 10.1805 8.3408 455.8914 56.9864 72.2656 268.7718 235.263 119.9722 426.0627;
	20.1237 15.6793 13.1477 7.2737 7.7192 436.2248 54.5281 66.4739 255.7546 170.256 91.7998 308.3346;
	7.6713 4.801 5.0433 2.4931 6.6784 224.6785 28.0848 18.1763 107.3529 42.1173 17.6278 76.2747;
	0.9118 0.7762 0.5602 0.8035 2.1379 59.3594 7.4199 6.6804 33.8815 15.2757 8.9872 27.6643;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];