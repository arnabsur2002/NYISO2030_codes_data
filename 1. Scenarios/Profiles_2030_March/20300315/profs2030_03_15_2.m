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
	0.4095 0.3502 0.3079 0.0 0.0 1.4049 0.1756 0.5777 0.0956 0.0 0.0 0.0;
	0.802 1.0001 1.1973 1.3052 2.0795 168.2224 21.0278 7.5697 109.4854 9.3639 10.4742 16.9581;
	5.8594 5.2206 3.7831 1.7397 1.9424 179.5901 22.4488 22.8433 111.4714 29.1034 22.0718 52.7065;
	12.8039 9.0265 5.395 2.8166 1.8927 195.9937 24.4992 33.9328 124.8512 32.1876 28.7924 58.2919;
	14.9855 10.0177 8.1017 10.3855 11.238 240.4931 30.0616 17.4119 160.7322 31.2247 20.3137 56.5481;
	14.8362 11.1363 8.7974 10.9981 11.4629 258.6873 32.3359 11.1127 164.6675 10.1903 12.3553 18.4548;
	14.4164 12.68 10.3617 10.9302 11.8542 243.5495 30.4437 8.335 149.1336 14.6607 17.5854 26.5507;
	10.8694 11.868 10.2773 10.4534 10.4148 286.8965 35.8621 13.9171 201.8614 45.4634 22.2545 82.3344;
	8.9507 8.8826 9.1552 9.9562 10.0472 274.7514 34.3439 16.3222 204.1531 83.1639 34.5436 150.6103;
	4.5455 5.401 5.2181 8.1866 9.0906 271.5297 33.9412 18.0714 201.0314 54.675 27.1651 99.0168;
	0.1742 0.559 0.7119 6.4191 4.0386 276.8852 34.6107 25.4271 175.9494 9.4322 1.3939 17.0817;
	0.2069 0.1937 0.2044 1.908 1.4172 61.8817 7.7352 8.9163 41.6873 3.7071 2.143 6.7137;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
