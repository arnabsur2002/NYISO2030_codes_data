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
	0.0951 0.0972 0.1118 0.0 0.0 0.1633 0.0204 0.1784 0.0 0.0 0.0 0.0;
	2.7921 1.7357 1.8667 2.8363 4.2388 219.9509 27.4939 5.1618 60.9474 73.2878 40.0129 132.7247;
	7.7804 6.0962 5.4165 5.7197 5.9174 144.1819 18.0227 8.0217 43.3394 186.1776 98.4702 337.1688;
	10.8646 8.9508 7.5742 8.0519 7.2691 136.6281 17.0785 11.6441 37.4111 278.8887 149.7457 505.0692;
	14.194 12.4569 10.1858 10.3598 7.8813 361.8394 45.2299 51.9156 153.9305 335.6593 192.3704 607.8809;
	19.5468 14.2507 11.1172 10.8577 9.1207 364.8225 45.6028 58.1575 195.0021 332.1941 230.846 601.6055;
	23.3117 15.1479 12.1515 10.726 9.1913 361.5137 45.1892 58.5616 220.4901 309.9726 217.8566 561.3623;
	24.0983 16.3381 13.5993 4.3971 3.4508 288.6148 36.0769 49.228 225.6047 190.2219 105.9845 344.493;
	20.3981 14.7366 11.9702 4.6463 3.0866 240.3744 30.0468 47.9541 212.7094 178.5264 49.4712 323.3125;
	13.8893 10.2715 7.4136 3.9791 3.2607 181.3327 22.6666 51.6675 179.9443 163.4459 56.8091 296.0015;
	7.4247 6.3525 3.4931 4.1808 4.0355 60.8722 7.609 25.4507 34.3825 59.7104 26.4975 108.1359;
	1.7963 1.2813 0.8375 1.0244 1.6906 36.0869 4.5109 11.5129 25.4512 15.5294 10.1543 28.1238;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
