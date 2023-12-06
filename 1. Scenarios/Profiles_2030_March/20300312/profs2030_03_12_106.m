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
	0.1575 0.1621 0.24 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	8.44 6.6972 3.5749 0.8314 0.1612 120.6885 15.0861 21.9244 15.6485 52.2581 22.8277 94.6397;
	19.385 13.2828 9.951 2.3969 0.6849 96.4519 12.0565 28.6944 36.7542 49.3479 9.5985 89.3694;
	23.5619 16.6042 13.7952 3.3755 1.4797 76.5215 9.5652 33.1452 50.7625 42.3147 5.3333 76.6322;
	25.6923 16.474 13.7624 2.2761 3.4865 40.5665 5.0708 36.614 92.0336 77.0743 14.9538 139.582;
	25.2758 15.9704 13.7777 1.8772 4.1157 46.5948 5.8244 42.6218 117.0633 185.1928 67.5461 335.3853;
	24.9373 15.8375 13.5299 3.8585 5.0548 44.6706 5.5838 48.4809 145.9739 253.7445 112.2229 459.5328;
	26.1383 16.5561 13.8024 10.34 10.7422 144.2099 18.0262 72.8306 237.9851 341.4098 233.6945 618.2951;
	25.6334 16.7221 14.1782 10.9452 10.593 225.4173 28.1772 75.4604 251.5514 336.3715 208.5114 609.1709;
	24.7821 16.9913 14.4084 9.4336 8.7233 282.4741 35.3093 74.1089 255.7381 277.0722 152.8492 501.7794;
	12.7684 12.9299 13.3474 6.4058 8.9747 327.4812 40.9352 65.328 243.3829 144.1615 79.8295 261.0773;
	0.9671 0.9136 0.7211 1.9012 3.4199 66.7395 8.3424 12.874 43.3752 64.1381 35.0168 116.1546;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
