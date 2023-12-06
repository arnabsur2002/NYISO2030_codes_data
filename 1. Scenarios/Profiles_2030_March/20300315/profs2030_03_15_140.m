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
	0.4095 0.3481 0.302 0.0 0.0 0.1765 0.0221 0.1431 0.0956 0.0 0.0 0.0;
	0.0 0.3985 0.0088 1.4999 4.3357 21.3715 2.6714 8.0506 19.4457 234.9091 42.6338 425.4218;
	2.5868 2.744 2.4695 3.8838 2.9456 74.0375 9.2547 20.4688 23.0223 236.8156 112.665 428.8745;
	8.6346 5.1843 5.897 5.4413 2.0572 110.6573 13.8322 25.9638 33.6879 260.5259 141.5389 471.8139;
	12.5762 5.6547 10.4181 9.893 11.1882 83.4084 10.426 9.0333 79.7544 253.3529 148.3423 458.8237;
	13.8258 9.2707 11.5493 9.6894 10.589 129.7021 16.2128 11.5864 117.3624 208.0241 161.2072 376.7329;
	15.5116 12.3739 12.0876 8.8846 10.5731 141.3093 17.6637 14.7242 97.7641 135.0456 158.6548 244.5683;
	10.164 7.2251 9.7287 7.3527 8.3288 110.2675 13.7834 11.9241 55.7235 139.1525 126.9405 252.0061;
	8.4134 5.9799 8.1117 6.3121 8.404 66.8845 8.3606 6.7477 44.5401 149.8195 119.8151 271.3241;
	4.3549 2.8511 5.1485 3.9339 8.0664 41.8336 5.2292 3.2505 28.6095 140.8121 113.8277 255.0115;
	1.4498 1.1257 1.6089 0.8453 3.1412 38.1026 4.7628 4.5213 35.071 30.8848 12.4769 55.9326;
	0.5252 0.4866 0.5126 1.051 1.2503 52.2511 6.5314 4.1515 40.9513 21.609 4.247 39.134;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
