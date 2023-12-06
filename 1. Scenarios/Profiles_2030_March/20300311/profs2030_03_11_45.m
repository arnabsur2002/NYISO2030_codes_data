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
	12.8412 7.9845 5.4223 3.5211 4.1052 339.801 42.4751 30.2955 196.2505 73.3458 41.5489 132.8297;
	17.2788 12.9675 8.3121 7.0118 10.6569 373.4538 46.6817 51.1955 177.4664 266.5359 129.8117 482.6981;
	20.4142 16.3832 12.6003 10.1132 12.4099 390.8282 48.8535 60.5109 170.4682 324.4891 192.4681 587.6518;
	25.645 16.6083 13.5579 11.2835 12.2236 362.8447 45.3556 64.4624 194.6521 252.1265 207.9672 456.6027;
	26.5325 17.0566 13.8 11.4504 12.4185 352.1185 44.0148 66.1828 222.9544 229.8965 220.6882 416.344;
	27.0558 17.2649 13.9209 11.4717 12.4079 323.3795 40.4224 65.1346 230.6061 246.8859 224.7802 447.1119;
	26.7599 16.6996 13.8 11.632 13.1442 378.1846 47.2731 60.7294 185.5305 210.8179 201.0888 381.7925;
	23.5231 16.6083 13.8 11.5646 12.8722 398.1614 49.7702 52.4774 116.3231 242.429 173.0236 439.0403;
	16.6626 13.1292 8.6455 9.0889 11.9208 390.5 48.8125 55.5635 46.7241 234.2428 140.2979 424.2152;
	7.469 7.1639 3.8886 5.2843 6.9835 233.2633 29.1579 40.1158 18.0976 221.3343 53.6427 400.8378;
	0.8887 0.6831 0.4251 1.3081 2.4857 44.3341 5.5418 8.5734 19.5882 40.7891 17.0935 73.8693;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
