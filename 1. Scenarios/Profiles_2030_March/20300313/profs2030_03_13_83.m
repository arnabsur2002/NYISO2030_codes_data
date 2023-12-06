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
	0.4731 0.4101 0.4255 0.0 0.0 0.0 0.0 0.2 0.0 0.0 0.0 0.0;
	2.3664 1.693 0.8091 2.5611 2.6339 40.2104 5.0263 4.9863 23.3695 11.9765 2.3453 21.6895;
	5.0084 7.0283 3.6099 5.2589 5.2359 424.6 53.075 70.6092 242.3103 29.8604 6.9209 54.0773;
	13.23 15.714 12.8815 8.1815 7.7865 455.95 56.9937 75.5965 271.5989 52.0733 9.6777 94.3051;
	22.3072 16.1547 13.5922 7.3688 7.4833 432.6381 54.0798 66.6532 257.2883 77.0734 15.5407 139.5803;
	24.7847 16.371 13.7627 6.524 6.8829 403.8002 50.475 60.1464 260.2809 63.7 18.2283 115.361;
	25.0771 16.3954 13.769 4.6887 4.8927 368.5514 46.0689 57.8452 256.222 44.9984 30.1769 81.4924;
	19.7454 14.7982 10.3047 3.5142 1.9781 214.8694 26.8587 34.5145 182.7755 46.1482 73.5574 83.5747;
	19.756 13.2235 9.0299 4.1895 2.1022 250.9853 31.3732 41.6559 168.059 58.8315 98.6833 106.5442;
	14.7147 8.6968 6.0123 3.5856 3.5209 251.6476 31.4559 45.2105 154.0119 56.3587 83.7416 102.066;
	5.7645 2.9955 2.4266 1.4589 2.983 151.0431 18.8804 28.0568 69.6632 15.1674 10.8739 27.4682;
	0.7407 0.6481 0.5491 0.3165 1.1144 31.4828 3.9353 6.2538 15.452 6.5418 3.8645 11.8472;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];