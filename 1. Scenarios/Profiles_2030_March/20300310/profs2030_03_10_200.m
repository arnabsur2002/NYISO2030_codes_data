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
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.1445 0.5732 0.2998 0.3566 1.2864 79.7218 9.9652 2.11 37.946 15.5023 6.0374 28.0748;
	0.7453 1.0275 0.5631 0.6768 3.649 66.7251 8.3406 8.8212 19.3961 31.5666 8.4975 57.1674;
	1.1305 1.2512 0.7812 1.0345 4.8734 61.2616 7.6577 17.5501 19.0318 47.916 8.1941 86.7762;
	1.9495 2.1814 1.4696 1.7159 5.9332 108.9063 13.6133 31.9823 63.0918 39.5451 5.4451 71.6164;
	1.4836 2.1079 1.3946 2.4465 6.6973 176.0019 22.0002 33.572 101.3014 41.2193 4.0214 74.6484;
	1.4267 1.8971 1.3504 3.7578 7.068 203.1619 25.3952 35.7162 110.8833 31.7803 3.2361 57.5543;
	3.102 2.3294 1.7996 6.1973 5.7706 155.8049 19.4756 53.7416 74.3353 21.1084 8.3825 38.2274;
	3.055 2.035 1.7626 5.236 4.5385 70.998 8.8747 42.6038 35.9181 15.0103 11.7531 27.1838;
	2.3303 1.4989 1.3431 3.2376 3.1169 28.4839 3.5605 24.5978 17.6198 15.9251 13.9737 28.8405;
	1.6075 1.0939 1.0948 0.8388 0.7551 2.1615 0.2702 3.5663 9.9623 29.7348 16.8324 53.8498;
	0.3008 0.2251 0.1521 0.5733 0.7887 28.8374 3.6047 6.268 24.7661 20.4614 10.325 37.0557;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];