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
	0.4174 0.3668 0.3241 0.0 0.0 0.1765 0.0221 0.1431 0.0956 0.0 0.0 0.0;
	0.8535 0.7972 0.2669 1.2626 0.3066 13.9601 1.745 0.0 21.2343 236.515 64.1185 428.3301;
	3.28 1.5621 0.8687 1.3518 0.0 19.6215 2.4527 1.8485 29.8224 217.7958 98.6878 394.4295;
	7.5943 3.1873 1.9104 2.119 0.0 38.5057 4.8132 8.336 38.5542 240.7672 114.7384 436.0308;
	12.5377 6.8585 5.9876 9.1945 7.8792 109.3974 13.6747 26.7294 128.4844 255.167 105.3572 462.1089;
	6.4123 6.2002 6.8619 9.2728 9.0839 152.1976 19.0247 41.9056 164.697 262.6475 163.9719 475.6562;
	5.5898 4.6639 7.3056 6.6228 9.7322 168.038 21.0047 41.4025 173.3994 267.2595 196.4975 484.0085;
	10.7788 6.4866 6.5903 6.8536 8.0669 245.9125 30.7391 25.9452 225.3018 246.7501 234.4532 446.8659;
	12.5964 7.0242 5.3599 7.8758 8.0951 222.5043 27.813 13.4339 223.3899 214.8926 204.5306 389.1718;
	12.1577 5.3816 3.6828 7.4367 7.6093 164.0745 20.5093 7.3781 205.4978 149.9497 118.4661 271.5598;
	2.1626 1.2707 1.192 4.424 3.4905 117.9448 14.7431 3.1702 156.8435 10.2024 4.8171 18.4766;
	0.2777 0.2298 0.3176 1.167 1.3631 52.4334 6.5542 3.6887 41.1287 0.0 2.8475 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
