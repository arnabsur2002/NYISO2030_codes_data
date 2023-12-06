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
	0.2545 0.1751 0.4282 0.4226 0.0 0.0 0.0 0.0 0.0 11.2987 5.1804 20.462;
	0.3504 0.5002 0.5966 1.0189 1.0174 3.6513 0.4564 0.3938 2.5685 9.9989 13.5585 18.1082;
	0.7623 0.8267 0.8683 1.7606 2.8127 19.7104 2.4638 1.8193 11.3544 19.0482 25.2681 34.4964;
	2.8448 2.3366 2.8159 4.4615 5.9912 70.9579 8.8697 3.7926 42.0983 27.4279 32.6717 49.6721;
	3.7984 2.9439 4.7448 5.7605 7.7876 92.5349 11.5669 6.4734 58.325 27.0574 32.3036 49.001;
	3.7151 2.9561 3.9817 5.527 8.678 83.8989 10.4874 8.6184 58.175 22.1527 31.9899 40.1188;
	3.964 3.5787 2.5393 3.2869 5.3634 41.7568 5.2196 9.8399 17.1772 35.6379 48.8292 64.5404;
	3.1992 2.744 2.0034 2.1419 3.6016 20.8047 2.6006 4.1734 3.7161 32.3971 41.3743 58.6713;
	2.2814 2.09 1.6112 1.2642 2.0958 10.0887 1.2611 0.2936 0.0 26.9137 24.1735 48.741;
	1.653 1.6354 1.8012 0.1507 0.2893 1.1351 0.1419 0.0 0.0 13.8378 6.3143 25.0604;
	0.2481 0.2894 0.1978 0.3793 0.5362 28.5141 3.5643 6.1541 22.1337 16.5516 8.8575 29.975;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];