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
	0.0 0.1457 0.1662 0.5271 2.8054 6.021 0.7526 1.5386 50.4466 10.4377 4.9809 18.9028;
	0.0 0.4702 0.4648 0.3862 3.9103 20.5057 2.5632 8.6566 92.5421 29.5321 27.3555 53.4828;
	0.5356 0.7069 0.6571 0.3224 3.6631 25.6764 3.2096 11.3415 87.4663 58.0897 56.2217 105.2009;
	2.287 1.7338 1.3418 0.0 2.6903 6.3768 0.7971 8.2219 34.8462 30.213 18.2814 54.716;
	3.0261 2.2067 2.0676 0.3309 3.2377 0.0 0.0 5.2779 23.412 16.9168 11.4664 30.6364;
	3.2989 2.3693 2.301 0.521 3.0797 0.0 0.0 3.9366 12.6919 9.1154 10.658 16.508;
	3.826 3.139 3.2447 0.0 1.9294 0.0 0.0 16.2076 3.684 15.9104 21.1093 28.8138;
	3.021 2.6223 2.4521 0.0 1.515 0.0 0.0 20.1401 1.1095 22.1644 21.8275 40.1398;
	2.1071 2.0474 1.8388 0.0 1.9218 0.0 0.0 18.7448 3.2207 23.7731 16.4799 43.0532;
	1.7049 1.69 1.6478 0.1913 3.4517 0.0 0.0 7.7804 20.93 28.7125 16.8597 51.9985;
	0.4511 0.4881 0.3312 0.4458 1.4667 32.6621 4.0828 6.6817 32.3941 20.9722 17.1273 37.9808;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
