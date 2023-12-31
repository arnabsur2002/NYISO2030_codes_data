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
	1.0347 0.8373 0.7082 0.0 0.0 9.4835 1.1854 4.1882 0.4504 0.0 0.0 0.0;
	14.836 8.0263 6.6756 0.6715 0.6419 88.8518 11.1065 32.8813 87.7174 6.0852 12.8304 11.0204;
	17.3828 13.7028 10.9337 0.2741 1.0704 260.477 32.5596 49.6748 140.9373 23.5232 22.132 42.6006;
	21.5029 16.6083 13.7879 0.4612 1.665 364.02 45.5025 56.4784 172.4886 87.3629 49.7303 158.2148;
	25.4309 16.6647 13.9246 2.3595 4.2511 427.3328 53.4166 59.7815 188.2328 191.4313 88.7225 346.6832;
	25.8517 16.8007 13.8031 5.3942 6.855 447.717 55.9646 68.3509 251.028 228.3775 111.3377 413.5931;
	25.6432 16.6312 13.8 6.8813 7.7717 450.0672 56.2584 70.4807 272.6956 226.9046 116.7724 410.9256;
	24.2474 16.1068 13.4455 5.9683 4.6673 421.087 52.6359 63.645 229.5652 92.142 91.0242 166.8697;
	22.0171 16.4201 13.5751 4.7863 3.908 404.872 50.609 60.4417 178.498 66.6304 71.0234 120.668;
	19.9473 15.4475 13.3984 5.2422 3.9408 382.6976 47.8372 55.1033 140.1207 69.088 62.7785 125.1188;
	13.2592 7.4992 6.7263 7.413 7.3628 309.6724 38.709 35.2652 194.3391 53.2971 47.0814 96.5214;
	1.2666 0.9817 0.7526 1.683 2.2845 89.0318 11.129 15.0104 52.8923 30.1137 16.241 54.5361;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
