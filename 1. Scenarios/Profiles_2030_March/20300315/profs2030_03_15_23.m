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
	0.5161 0.4167 0.3153 0.0 0.0 0.1765 0.0221 0.1431 0.0956 0.0 0.0 0.0;
	2.3427 1.4188 1.0585 1.414 2.8596 50.5164 6.3145 0.889 76.1521 125.4053 77.2148 227.1097;
	4.647 3.3877 3.9499 2.4933 3.4208 48.8702 6.1088 6.0836 123.6106 218.3124 117.295 395.3651;
	7.9478 5.118 5.9689 4.7058 4.2878 56.7076 7.0884 8.6802 128.8746 249.7031 129.734 452.2138;
	9.1373 5.8488 7.0836 11.2254 12.6822 111.9889 13.9986 4.6567 94.4439 188.8217 35.8904 341.9573;
	7.4921 3.8879 6.9888 11.7604 12.1803 195.7035 24.4629 8.0388 137.2519 219.823 47.396 398.1008;
	6.4726 3.5393 7.0971 11.9137 11.9558 231.5242 28.9405 13.7069 172.9079 255.6116 65.6624 462.9142;
	5.8447 3.9476 5.377 11.1922 10.2257 266.8643 33.358 19.5333 262.0523 209.5476 97.4017 379.492;
	5.6663 5.0146 3.9839 10.2931 9.9559 241.0935 30.1367 14.4667 261.2909 169.0242 97.4403 306.1038;
	3.2719 2.861 2.4984 7.7705 8.954 216.4392 27.0549 11.0361 247.557 92.1206 44.7407 166.831;
	1.3642 0.8042 0.8503 4.3773 3.0732 273.4835 34.1854 12.4378 197.846 12.5199 3.1143 22.6736;
	0.3549 0.2705 0.3797 1.799 1.2753 73.7562 9.2195 8.997 53.1031 5.7707 3.6777 10.4508;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
