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
	0.0 0.0 0.002 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	8.3448 6.1817 4.3571 1.0994 2.9543 87.6398 10.955 44.8196 44.0013 68.5767 40.8572 124.1928;
	18.599 13.8477 11.0109 2.2448 8.872 171.7646 21.4706 72.237 62.2041 38.3749 32.333 69.4971;
	23.595 16.6029 13.8 5.4869 10.6883 285.637 35.7046 73.3138 114.8636 85.5515 63.9721 154.9344;
	26.334 16.6148 13.8 9.6181 8.8681 275.1186 34.3898 45.9472 181.1065 103.0597 132.7363 186.6417;
	24.3327 16.6083 13.0883 10.8551 9.0757 248.1979 31.0247 46.6201 181.948 161.7265 187.0689 292.8876;
	21.5605 15.7551 9.4775 11.0887 9.4105 162.9307 20.3663 50.3105 146.3334 174.9465 161.4164 316.8291;
	22.5069 14.8185 9.7355 11.3708 11.5544 110.8667 13.8583 62.1163 35.5599 97.0732 32.1589 175.8002;
	21.8374 16.3059 13.1088 11.4105 12.2354 235.8647 29.4831 65.05 23.1609 91.9207 9.212 166.4689;
	17.6131 14.0273 11.2225 9.0622 11.9386 313.9336 39.2417 63.8567 28.2993 87.7424 29.8274 158.9021;
	9.5671 9.0209 6.3407 5.949 7.9798 228.5357 28.567 48.1517 32.2485 68.623 55.8557 124.2767;
	0.7718 0.755 0.4101 1.4741 2.5122 50.6837 6.3355 13.6573 19.8695 21.3726 16.9548 38.706;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
