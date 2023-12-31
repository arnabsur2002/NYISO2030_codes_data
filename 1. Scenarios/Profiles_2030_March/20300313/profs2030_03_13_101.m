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
	0.4996 0.4278 0.4357 0.0 0.0 0.0 0.0 0.2 0.0 0.0 0.0 0.0;
	8.9052 5.3042 4.3764 3.5339 6.8165 67.1769 8.3971 10.0475 12.839 0.0 1.2727 0.0;
	16.9619 13.3327 11.3422 10.1028 8.0036 130.9673 16.3709 60.3651 73.9589 0.0 10.6478 0.0;
	22.2807 16.6083 13.8 11.3429 8.4258 286.5822 35.8228 71.6046 210.9643 11.2411 23.4436 20.3578;
	24.4582 16.6468 13.68 7.8216 5.6003 269.6341 33.7043 56.2794 159.4674 49.4907 64.3211 89.6279;
	25.0332 16.4386 13.7627 7.0873 5.0331 287.0342 35.8793 55.9095 192.1133 47.5792 81.984 86.1662;
	24.1154 16.3954 13.4976 6.7604 3.9552 237.4134 29.6767 54.9364 208.5645 44.1011 71.0564 79.8673;
	11.7021 10.0042 8.8635 4.8252 2.3121 47.0721 5.884 21.2854 129.7029 53.3667 51.0852 96.6474;
	11.0158 8.4202 8.0039 4.2827 1.8708 47.2604 5.9075 23.1423 106.3312 63.2494 45.2114 114.545;
	7.9113 5.9455 5.6375 3.3048 2.3956 70.3016 8.7877 22.165 79.8369 54.3918 37.2836 98.5038;
	1.3622 0.6983 0.7429 2.1072 0.9729 46.0105 5.7513 13.2095 13.013 13.1655 9.6913 23.8428;
	0.3545 0.3047 0.2871 1.1661 0.9198 5.6475 0.7059 4.2717 5.7022 4.1792 3.9686 7.5685;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
