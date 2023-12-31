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
	0.2541 0.2638 0.2809 1.3236 3.0283 29.8182 3.7273 2.5049 12.5751 23.2038 4.5701 42.0223;
	0.4612 0.5142 0.5741 1.1641 5.5347 63.6435 7.9554 15.3813 24.9257 94.261 14.9299 170.7072;
	0.7229 0.759 0.8552 1.6659 6.9876 57.7736 7.2217 15.8335 25.7873 106.8466 37.3092 193.4999;
	2.092 1.9208 2.0566 3.8644 5.6717 53.4644 6.6831 10.6231 62.382 153.3295 44.1233 277.6807;
	2.3614 1.9516 2.1671 5.277 5.1729 57.6558 7.207 9.8559 48.5893 247.9593 43.2374 449.0558;
	2.173 1.5911 2.0956 5.1814 4.2845 57.544 7.193 10.5216 45.3843 264.8998 42.0666 479.7352;
	2.5697 1.8447 2.3926 4.2023 2.2124 93.034 11.6293 28.7925 76.7314 164.774 38.6647 298.4067;
	2.4447 2.0386 2.0225 3.6115 2.1192 64.6009 8.0751 26.8572 88.0601 85.7661 27.123 155.3229;
	2.1375 1.9023 1.473 3.0232 2.7932 50.4396 6.3049 24.4629 106.0764 62.0881 16.0616 112.4419;
	2.0537 1.7679 1.1458 1.4981 4.6782 30.0757 3.7595 18.6381 87.1308 47.0578 9.8044 85.222;
	0.2978 0.2458 0.1471 0.4372 1.5823 32.4053 4.0507 7.9694 24.7918 23.5713 9.9226 42.6878;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
