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
	0.4137 0.3481 0.302 0.0 0.0 3.5146 0.4393 0.1431 2.5288 0.0 0.0 0.0;
	3.1941 3.1654 2.1002 2.3511 1.6195 172.4643 21.558 17.161 71.6417 74.1701 15.4932 134.3225;
	5.1541 6.4967 4.7433 3.5942 3.8959 185.352 23.169 22.8863 122.1723 132.3205 16.3338 239.6332;
	7.9436 9.3392 6.5113 5.0133 4.296 198.3037 24.788 27.3058 133.3025 182.0474 16.8946 329.6889;
	13.0779 11.3116 11.0256 10.7704 11.9287 145.2642 18.158 19.6028 38.7356 222.1415 38.6295 402.2996;
	14.6152 13.2782 12.3068 11.1451 11.6435 154.0285 19.2536 20.5064 36.6226 241.4589 106.0384 437.2835;
	12.5203 13.0503 11.9648 11.2287 12.0845 135.0203 16.8775 19.4465 55.8639 252.136 147.2251 456.6198;
	5.8313 4.9419 7.6089 11.5486 11.487 112.8474 14.1059 21.0241 211.5048 218.6996 88.7928 396.0663;
	5.1918 3.4981 5.0023 11.4649 10.5697 66.3348 8.2918 18.2348 204.8193 194.0085 94.3541 351.3505;
	3.3937 1.861 2.9169 10.4645 9.0018 47.114 5.8892 15.3548 153.2996 144.0226 66.6598 260.8259;
	1.6398 0.7869 0.7048 5.2769 3.2765 71.1044 8.8881 11.1285 38.4466 14.1574 8.4527 25.6392;
	0.2673 0.2202 0.1899 1.177 1.9645 53.209 6.6511 3.8086 41.9176 0.0 3.1042 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
