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
	1.0216 0.8394 0.7199 0.0 0.0 11.5132 1.4392 4.2417 0.7164 0.0 0.0 0.0;
	9.7366 7.2425 5.478 2.2845 1.3144 289.3853 36.1732 33.8366 134.7629 50.1098 22.3887 90.7491;
	16.6417 14.3523 11.4613 5.2601 3.9146 316.4104 39.5513 40.9866 179.854 196.7918 39.3979 356.3911;
	20.6896 16.6083 13.8 7.6234 6.3802 328.4194 41.0524 48.7433 204.2148 329.1089 82.3258 596.0182;
	25.2049 16.5191 13.8 5.0468 5.8537 302.152 37.769 64.9114 240.7521 320.918 130.9379 581.1844;
	25.7721 16.5593 13.8 3.4397 5.7302 312.4217 39.0527 69.077 243.2675 332.0991 185.8342 601.4335;
	25.6691 16.5214 13.8 2.8194 5.6845 323.1022 40.3878 70.3376 224.809 333.4481 203.7478 603.8766;
	22.1281 15.9106 13.1735 4.4522 5.8553 327.6513 40.9564 71.8146 173.4506 230.4072 146.7694 417.2688;
	17.6919 15.1742 12.0273 4.1856 5.6086 320.0052 40.0006 70.7641 172.3014 211.2986 114.2826 382.663;
	15.2157 12.6514 8.77 3.5089 4.907 294.7292 36.8412 67.7081 192.6736 191.1876 93.8571 346.2418;
	10.0513 8.3678 5.5135 3.211 4.6028 170.1341 21.2668 41.782 236.1848 198.3389 113.4692 359.1929;
	1.5364 1.1748 0.8778 0.8838 1.6997 64.1244 8.0155 11.5344 48.4685 173.0252 70.0666 313.3498;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
