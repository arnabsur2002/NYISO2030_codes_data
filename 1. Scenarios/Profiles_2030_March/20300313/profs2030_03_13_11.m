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
	0.4731 0.4018 0.4307 0.0 0.0 0.0 0.0 0.2 0.0 0.0 0.0 0.0;
	6.1096 7.4773 3.7283 1.8477 0.9701 261.8003 32.725 36.9509 244.8527 4.4462 1.1824 8.0521;
	19.2632 14.9507 11.3374 8.8856 6.3963 436.1617 54.5202 73.0577 286.5049 21.205 15.7604 38.4023;
	23.6149 16.6083 13.8 11.3122 9.3955 450.0191 56.2524 75.0913 286.0855 54.8229 32.185 99.2845;
	24.1414 14.642 13.6314 9.92 8.694 323.9621 40.4953 39.0551 217.608 156.8127 55.0109 283.9887;
	23.3788 12.9683 12.5681 10.9373 8.9006 297.608 37.201 21.1743 202.5397 209.0904 107.6806 378.664;
	21.3833 14.3376 11.372 11.4357 9.0389 282.7335 35.3417 27.8945 205.6692 176.8806 115.9508 320.3319;
	13.4921 10.7021 6.8951 10.0147 9.3488 155.3813 19.4227 26.1164 196.7914 83.5805 48.0763 151.3648;
	13.9035 10.9022 7.1936 7.6005 9.4831 157.0713 19.6339 31.6165 200.2964 63.9621 25.0601 115.8358;
	9.8552 7.668 5.8662 5.3192 7.9475 142.6779 17.8347 29.6585 180.2991 44.7511 12.9229 81.0445;
	3.7431 2.809 3.0004 3.9632 2.0136 54.4311 6.8039 14.9052 61.5081 12.0221 0.9278 21.772;
	0.5684 0.5626 0.6295 1.3649 0.6387 24.1479 3.0185 6.3175 10.3179 3.2284 2.0792 5.8467;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
