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
	0.1841 0.1668 0.0698 0.0 0.0 2.0962 0.262 0.8502 0.0 13.8516 6.0632 25.0853;
	0.2443 0.2008 0.5385 0.0 0.0 0.0 0.0 2.3222 4.9149 22.3091 11.8585 40.4019;
	0.2748 0.2329 0.7768 0.037 0.0 3.0005 0.3751 3.1137 11.2728 30.3463 19.0887 54.9574;
	0.284 0.3607 0.4873 0.5808 1.4429 39.8719 4.984 3.7929 49.389 51.8878 33.3316 93.9691;
	0.4441 0.3761 0.1399 1.3388 4.4657 51.2517 6.4065 3.6021 73.9999 68.3775 39.2493 123.832;
	0.6703 0.4076 0.1428 2.0116 6.0915 38.6563 4.832 3.747 90.5012 71.2058 29.7381 128.9541;
	1.5524 1.2716 0.809 3.1385 4.4701 41.2401 5.155 15.5104 84.5514 86.9815 12.0808 157.5241;
	1.4942 1.4737 1.0735 2.744 3.4171 31.4158 3.927 14.7157 57.8872 66.3007 7.5305 120.0709;
	1.3375 1.3347 0.9175 2.7675 3.4464 33.8611 4.2326 9.9615 28.6943 40.4134 7.7564 73.189;
	1.5973 1.304 0.8727 4.2875 3.8304 36.3967 4.5496 2.5013 6.7871 17.2702 12.9309 31.2765;
	0.5213 0.2998 0.2196 1.2614 1.5043 28.823 3.6029 6.1515 22.204 16.4922 9.2156 29.8675;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
