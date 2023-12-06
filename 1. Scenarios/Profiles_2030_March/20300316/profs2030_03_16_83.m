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
	1.0111 0.8228 0.6949 0.0 0.0 9.4835 1.1854 4.1882 0.4191 0.0 0.0 0.0;
	6.5411 6.9194 5.5001 2.5122 4.4229 150.2129 18.7766 45.1256 48.7818 58.6283 8.6351 106.1763;
	17.1848 14.711 11.2682 6.2919 6.8324 294.5475 36.8184 47.8478 89.0991 177.1348 16.7503 320.7922;
	23.1173 16.6137 13.8 8.603 7.2694 330.799 41.3499 40.4932 97.1993 261.705 31.7463 473.9494;
	25.1786 16.4331 13.8 6.506 4.6372 284.7687 35.5961 28.0781 59.8262 87.6216 28.0265 158.6833;
	25.6144 16.5136 13.8 6.8193 3.4811 311.1356 38.892 30.9767 103.2812 77.2561 43.2382 139.9112;
	25.6262 16.5214 13.8 6.6911 3.2653 320.1702 40.0213 36.6081 121.8042 93.0635 60.3213 168.5386;
	23.4111 15.9203 13.2435 5.2397 4.5496 228.7456 28.5932 59.5919 48.9206 109.144 64.0684 197.6604;
	19.1481 15.0279 11.4278 4.4108 5.5698 240.2307 30.0288 63.2732 41.5984 122.5472 40.3141 221.9336;
	12.9786 12.204 7.5156 4.362 6.7572 276.3534 34.5442 66.4994 35.0002 91.251 26.5269 165.2561;
	5.8164 6.9115 5.657 6.9018 8.2266 270.252 33.7815 60.4912 51.6096 30.6775 12.9173 55.5572;
	1.2988 1.1031 1.0619 1.6928 1.8679 84.9423 10.6178 12.9255 32.8557 11.2311 6.6192 20.3396;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];