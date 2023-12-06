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
	0.161 0.0 0.0119 0.0002 0.0125 0.0 0.0 0.0 0.0 0.0014 0.1664 0.2419;
	7.2351 97.5517 78.5691 18.6497 22.3192 53.866 23.1829 1.981 2.3933 149.1978 6.0216 4.7321;
	15.5305 220.3886 122.6178 32.1087 34.4422 121.694 62.8947 3.3438 3.8202 256.87 12.5189 9.8647;
	21.0856 323.7609 139.0176 35.33 41.491 178.774 104.3369 5.1365 4.759 282.6397 15.893 13.1271;
	24.1955 366.1189 141.587 28.0011 42.7711 202.1632 141.4282 5.5035 4.5467 224.0089 15.7244 13.0754;
	24.467 416.4172 151.0597 29.8936 44.7305 229.9369 167.8217 5.9884 5.0974 239.1488 15.8317 13.1178;
	24.5053 429.3376 151.3775 30.1964 44.8916 237.0713 174.8661 6.1698 5.2247 241.5716 15.8134 13.1331;
	24.3212 588.3412 196.8583 41.9593 59.0813 324.8698 228.0681 8.3792 8.5468 335.6746 15.8128 13.1044;
	20.9605 579.8672 189.6353 41.9794 59.1562 320.1907 205.4629 7.8105 7.9489 335.835 15.6176 12.95;
	15.7593 472.9811 176.5152 38.4265 56.285 261.1703 157.1991 6.137 7.1448 307.4117 12.6783 9.9944;
	7.9708 333.7142 157.3159 32.9564 46.7428 184.2701 114.511 5.674 10.5737 263.6514 6.5872 4.9656;
	1.0369 121.9054 39.7077 8.2373 11.553 67.3136 40.1586 1.7746 3.8348 65.8983 0.8774 0.6205;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
