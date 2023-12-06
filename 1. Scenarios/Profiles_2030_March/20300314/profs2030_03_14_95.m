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
	0.5474 0.1724 0.2359 4.4333 2.3046 119.7491 14.9686 12.0443 101.6345 39.3179 37.1299 71.2049;
	3.04 2.0697 1.4355 10.1806 10.7831 167.2756 20.9094 19.5455 117.936 219.6023 122.9112 397.7011;
	8.0779 5.8089 3.4566 11.348 12.3968 184.7525 23.0941 27.8385 139.7767 319.3776 158.2243 578.3947;
	22.0085 15.6489 12.1449 11.9014 11.3678 393.6666 49.2083 65.1818 270.1805 267.5535 136.6771 484.541;
	23.9345 16.0537 13.2545 11.7746 11.1252 395.9727 49.4966 67.4647 281.9416 277.7032 144.8764 502.9222;
	24.0017 16.0751 13.2624 11.7082 11.1512 403.6308 50.4539 67.9264 279.3708 272.0399 147.6998 492.6658;
	24.0159 16.5824 13.0132 7.5297 5.306 392.3418 49.0427 64.9787 245.865 230.981 149.8541 418.3081;
	20.3899 15.9882 9.8746 5.7546 3.6505 376.1844 47.023 63.28 227.8997 211.9262 127.9238 383.7996;
	14.0123 12.2608 5.4389 3.47 2.1424 314.7556 39.3445 56.8839 191.3267 166.484 95.9906 301.5035;
	5.0816 6.0646 2.0968 1.4401 1.5126 38.6707 4.8338 8.0112 30.575 43.0966 13.7638 78.0483;
	1.0292 1.11 0.6308 0.7439 2.2676 32.5125 4.0641 6.3056 20.4728 16.558 9.4758 29.9867;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
