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
	0.4095 0.3489 0.302 0.0 0.0 0.1765 0.0221 0.1431 0.0956 0.0 0.0 0.0;
	8.0958 3.2878 2.477 1.3459 0.0 137.1566 17.1446 31.2941 93.4435 30.1336 24.1169 54.5722;
	8.0734 5.5098 5.0927 1.921 0.1562 116.874 14.6092 29.8316 96.9937 93.8954 59.6425 170.0451;
	7.9936 6.5007 6.8061 3.1089 1.0028 115.4403 14.43 33.7453 113.4874 212.9036 102.525 385.5697;
	11.2998 11.4708 10.7656 10.0501 11.194 210.9164 26.3645 43.2097 163.2389 324.4992 108.1425 587.67;
	16.0382 15.4077 12.6779 11.0165 10.5735 242.3053 30.2882 56.4303 142.9544 340.6017 163.3449 616.8317;
	15.7288 15.8258 12.6553 10.873 10.0355 200.781 25.0976 53.9044 61.6363 344.6423 173.5478 624.1493;
	4.3538 8.8778 7.2076 4.3116 4.7468 196.33 24.5413 25.4811 48.3872 265.1717 112.1092 480.2276;
	2.8949 6.7708 4.1112 2.8303 5.2587 197.282 24.6603 14.0409 91.1482 205.7289 72.2165 372.5763;
	2.3727 3.9656 2.7243 1.3917 6.1227 244.3673 30.5459 13.279 186.6648 142.9034 28.931 258.7989;
	1.7766 1.6263 1.3768 2.1884 5.7639 386.3529 48.2941 18.8922 261.5718 15.7301 2.7242 28.4873;
	0.2716 0.3372 0.2697 1.3528 2.5254 76.6163 9.577 4.3594 48.8376 0.0 3.9042 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];