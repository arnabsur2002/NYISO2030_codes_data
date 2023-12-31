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
	1.0163 0.8207 0.6949 0.0 0.0 9.4835 1.1854 4.1882 0.4191 0.0 0.0 0.0;
	7.4112 5.1168 4.1339 2.0416 3.351 115.0649 14.3831 23.5271 71.6351 60.3702 20.5999 109.3307;
	7.1028 6.5535 3.1374 2.7628 4.3962 275.4276 34.4284 23.9735 155.3206 170.9727 78.8682 309.6325;
	11.0229 11.3764 8.2526 3.6816 3.4415 332.2989 41.5374 31.5058 186.3069 242.7185 125.943 439.5647;
	21.618 15.5257 12.7211 2.0719 1.187 332.9219 41.6152 55.9018 174.5149 120.5292 128.7569 218.279;
	25.3444 16.2615 13.7242 3.6631 2.8848 379.7671 47.4709 59.8075 185.8476 134.5418 146.4598 243.656;
	24.6663 15.277 13.5213 5.4112 5.022 417.1618 52.1452 62.2497 196.372 202.6375 154.3334 366.9777;
	11.6928 2.798 4.6076 6.0048 3.5817 388.0846 48.5106 64.5624 155.2229 224.977 101.7871 407.4346;
	6.2767 1.5134 2.1713 4.7408 2.5452 343.8798 42.985 64.3569 119.6375 222.1282 71.0779 402.2756;
	6.549 3.7926 3.3505 3.807 1.5242 284.7505 35.5938 63.1856 83.9173 134.9348 39.3492 244.3677;
	8.1726 6.2466 5.7109 3.284 1.435 100.7459 12.5932 46.4472 50.2408 29.5212 17.4383 53.4631;
	1.4732 1.0913 1.0773 0.9658 1.0599 65.0148 8.1269 14.04 32.8628 7.4242 5.0715 13.4453;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
