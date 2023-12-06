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
	0.4148 0.3585 0.3078 0.0 0.0 2.7375 0.3422 0.1673 3.2105 0.0 0.0 0.0;
	1.6903 1.4047 1.0562 3.6598 3.4784 169.7804 21.2225 11.1216 236.3928 133.3904 89.0381 241.5708;
	2.1472 1.916 1.6144 3.6723 3.6478 150.4645 18.8081 11.0016 268.126 262.0626 161.5268 474.5969;
	2.9065 3.173 2.385 3.8583 3.3756 144.8479 18.106 8.6676 253.2672 305.9076 171.6354 554.0005;
	5.7651 8.9389 7.804 8.7571 11.9084 117.8622 14.7328 3.0818 177.7896 272.7504 197.4922 493.9526;
	12.5997 12.4719 11.2794 10.309 11.5549 140.3721 17.5465 8.215 165.3819 276.0135 216.3166 499.8621;
	16.1079 12.0898 11.4384 10.7184 11.0869 147.9185 18.4898 17.669 172.3532 274.3606 193.1406 496.8688;
	8.2127 3.5638 6.5579 10.8607 5.4632 223.478 27.9347 27.7588 261.3702 188.6476 111.4561 341.642;
	5.7194 2.4472 4.1668 10.6452 5.5376 174.3972 21.7997 14.9829 252.9177 154.5847 108.0016 279.9538;
	3.0026 2.1036 3.2885 9.7741 6.0573 114.9178 14.3647 5.8534 214.423 130.8014 94.2293 236.8821;
	1.6577 1.5236 1.644 5.5189 3.9056 74.6295 9.3287 0.0276 140.5751 26.4248 29.8711 47.8554;
	0.6421 0.504 0.5202 1.1197 1.2379 51.4532 6.4317 3.7837 44.6355 13.1668 4.6832 23.8452;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];