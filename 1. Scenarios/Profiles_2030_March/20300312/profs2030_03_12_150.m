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
	0.1575 0.1621 0.24 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	5.4565 6.2196 5.2826 0.0412 0.0 205.0816 25.6352 40.8253 62.1987 17.1357 22.1715 31.0328;
	16.6613 11.2543 8.7818 1.444 1.1584 404.5428 50.5679 60.7365 123.54 123.2931 73.3799 223.2846;
	22.9564 16.0923 13.3435 4.354 2.9863 424.8407 53.1051 57.6686 142.8036 241.1216 159.368 436.6727;
	25.6923 16.474 13.7624 4.9044 4.6311 350.669 43.8336 43.2757 83.0779 310.8565 219.6586 562.963;
	25.9535 16.5326 13.7859 4.3035 2.8752 275.226 34.4032 40.2297 55.4507 310.8632 221.2818 562.9751;
	25.964 16.5331 13.7863 4.5691 1.9595 205.2626 25.6578 40.8334 36.5174 317.5328 216.2281 575.0537;
	25.8343 16.5546 13.7855 9.437 8.7944 280.8875 35.1109 60.3859 92.4266 351.3968 254.3537 636.3817;
	23.2197 16.3881 13.7292 9.1989 9.8172 327.237 40.9046 60.4453 107.6761 350.8087 243.3684 635.3166;
	21.4868 15.9152 13.6529 7.2103 10.2681 336.9804 42.1225 56.3661 98.9317 349.1605 215.9659 632.3317;
	20.9049 14.6061 13.3313 4.6801 11.2905 325.9003 40.7375 46.8615 80.1263 246.7214 127.7061 446.814;
	1.4252 1.2429 1.0572 1.5718 3.42 65.1071 8.1384 11.5519 35.2665 65.9687 38.1414 119.4697;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
