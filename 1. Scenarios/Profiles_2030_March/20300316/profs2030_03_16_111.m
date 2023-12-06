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
	1.0295 0.829 0.7066 0.0 0.0 9.4835 1.1854 4.1882 0.4191 0.0 0.0 0.0;
	5.159 6.2429 5.6413 1.1546 3.1793 381.9606 47.7451 39.6584 147.652 78.7651 44.0592 142.6441;
	11.6524 11.8412 11.2715 1.9524 5.1908 330.4457 41.3057 52.8081 169.8542 196.9802 82.9197 356.7324;
	18.9022 15.6592 13.8 5.7532 7.9579 287.8711 35.9839 56.8187 170.6872 284.2841 117.7306 514.8403;
	20.3587 10.1138 12.252 7.5742 11.1814 125.9183 15.7398 51.5395 122.2229 213.5024 124.9123 386.6541;
	16.3323 10.1594 10.943 7.2093 10.3451 130.4989 16.3124 46.7909 121.5112 198.8348 130.6794 360.0911;
	15.3851 14.3871 11.6116 6.2859 9.1002 179.2572 22.4071 52.079 126.84 183.9977 148.109 333.2209;
	20.9078 15.9262 13.4206 5.2486 8.5246 244.5142 30.5643 68.1219 124.9301 187.8463 140.3443 340.1908;
	20.9092 15.7914 13.1271 4.9012 8.4467 272.3192 34.0399 71.6763 127.5235 203.7502 137.4627 368.9928;
	16.1094 13.3327 10.4625 5.2751 7.7285 290.868 36.3585 72.427 136.8864 157.5854 99.4146 285.3882;
	9.3719 8.6468 5.8087 4.5477 4.4976 262.2861 32.7858 59.9242 182.8535 49.2287 41.7089 89.1535;
	1.5626 1.5062 1.0448 0.9446 1.0341 75.6355 9.4544 14.9674 44.9378 11.5226 8.7985 20.8676;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
