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
	0.0176 0.0073 0.0086 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	8.4059 6.6613 5.4215 9.6337 4.6709 248.4543 31.0568 57.5018 81.3199 69.663 40.6031 126.1602;
	16.7104 13.5385 11.686 10.2361 11.7826 366.4797 45.81 73.7898 167.3063 181.4362 119.749 328.5821;
	23.0269 16.6029 13.8007 11.4497 13.0325 388.858 48.6073 76.0767 182.4287 242.4005 177.4738 438.9888;
	26.5251 16.7017 13.8475 12.0741 11.6108 342.8894 42.8612 72.5919 97.7848 67.0416 78.0291 121.4128;
	26.6512 16.6464 13.8532 12.1696 10.8755 342.5605 42.8201 69.0031 56.9829 158.1862 121.028 286.4761;
	26.4898 16.6083 13.8 12.0381 10.1531 320.344 40.043 64.3496 40.6779 271.287 167.8377 491.3025;
	26.0953 16.1441 13.6089 11.632 10.6419 340.6649 42.5831 58.0612 27.0381 196.01 159.1338 354.9753;
	20.056 15.8186 13.0179 11.5984 10.9264 365.2596 45.6574 58.6668 19.5436 168.6017 117.5712 305.3387;
	13.824 11.0918 7.9837 9.4381 9.8582 375.0444 46.8806 63.3051 16.5091 112.7594 77.8274 204.2079;
	9.0924 7.1072 5.4148 7.2671 5.3214 267.2921 33.4115 42.6792 15.7201 63.9866 23.0251 115.8802;
	0.9849 0.6497 0.583 1.315 2.5762 48.5784 6.0723 8.4157 19.6823 44.2729 19.3485 80.1786;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
