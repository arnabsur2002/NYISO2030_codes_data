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
	0.4331 0.3653 0.3139 0.0 0.0 0.1765 0.0221 0.1431 0.0956 0.0 0.0 0.0;
	4.1103 4.8465 3.3704 7.4067 1.8407 52.7742 6.5968 17.2264 86.2836 199.7074 46.2993 361.6713;
	8.5027 7.8232 5.9418 4.0574 2.9935 94.0717 11.759 41.439 105.854 313.2525 139.8893 567.3022;
	13.1015 11.8592 8.5981 4.832 2.883 118.5224 14.8153 52.2702 107.4887 331.3493 157.6638 600.0755;
	14.975 11.6302 10.8733 11.1735 10.908 150.5762 18.822 50.4928 133.0683 330.2144 150.7536 598.0203;
	17.9503 14.3542 13.0543 11.2232 9.5023 120.3652 15.0457 51.0391 164.1905 330.5715 176.6562 598.667;
	18.5662 14.566 13.2945 11.2082 9.7251 75.9705 9.4963 42.7661 167.6514 332.37 195.9607 601.924;
	10.7244 7.0092 7.8882 10.3199 9.2412 164.7198 20.59 31.954 206.9298 278.7122 185.5569 504.7494;
	7.5151 4.4722 3.5253 9.828 9.9038 225.964 28.2455 28.5546 208.7043 261.5685 159.2979 473.7021;
	3.3489 1.9632 1.7303 8.7025 10.5349 285.692 35.7115 31.4296 210.394 264.8743 101.719 479.6889;
	1.4501 1.005 0.82 9.1851 8.4038 395.0014 49.3752 42.3625 233.2313 151.308 6.7556 274.0196;
	0.4149 0.3574 0.4016 1.6752 2.3684 78.9522 9.869 8.8923 57.2744 94.7045 3.3689 171.5104;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
