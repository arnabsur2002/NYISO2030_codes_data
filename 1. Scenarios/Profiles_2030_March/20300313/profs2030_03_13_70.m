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
	0.4731 0.4018 0.4224 0.0 0.0 0.0 0.0 0.2 0.0 0.0 0.0 0.0;
	1.6099 0.8251 1.9219 1.2674 2.6383 260.0172 32.5021 15.7565 112.2978 6.7068 3.0068 12.1461;
	5.7912 3.4931 3.3675 2.6267 4.9523 411.1835 51.3979 64.7668 209.5457 31.6841 23.9069 57.38;
	15.3227 13.8066 11.5097 5.818 8.117 420.594 52.5743 73.1578 235.0554 58.3735 66.097 105.7148;
	22.7842 16.1547 13.6408 5.742 9.6401 226.487 28.3109 58.5096 156.3032 32.321 45.905 58.5335;
	24.8984 16.371 13.8527 6.733 9.3245 153.9472 19.2434 59.4282 166.0203 21.0448 22.723 38.1122;
	25.0771 16.3954 13.999 6.6408 8.0919 146.5151 18.3144 59.1199 171.2496 15.7918 16.3144 28.5991;
	14.5921 13.3647 12.9329 2.743 5.7022 136.8145 17.1018 27.5934 117.3236 24.8304 23.4402 44.968;
	12.9317 12.5387 11.6845 1.8913 4.6219 163.0787 20.3848 25.4951 107.3923 29.8778 25.7686 54.1088;
	8.2021 8.0981 7.7826 2.1707 4.1355 200.2024 25.0253 23.61 91.1854 25.957 19.7457 47.0083;
	1.5888 2.5929 2.5832 1.6541 0.9168 135.3667 16.9208 26.7789 22.9105 7.0654 2.7769 12.7954;
	0.3946 0.4191 0.3829 0.6591 0.2822 18.9107 2.3638 6.6555 3.0793 6.9829 3.7335 12.6461;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
