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
	0.4836 0.4222 0.429 0.0 0.0 0.0 0.0 0.2 0.0 0.0 0.0 0.0;
	18.8637 14.835 12.0632 2.968 0.9951 210.6318 26.329 7.2289 18.5712 11.4264 0.0 20.6933;
	25.2962 17.1237 13.7583 8.0373 2.817 424.7157 53.0895 58.5496 175.7377 33.1357 0.4169 60.009;
	25.0649 16.9734 13.8501 10.1738 4.3838 440.7216 55.0902 70.2047 239.9146 64.3853 11.6187 116.6022;
	24.3616 16.5213 13.6408 8.7705 2.1197 302.1139 37.7642 50.8586 131.4197 136.8191 40.0197 247.7801;
	25.509 17.0669 13.8096 8.5326 3.3978 339.1787 42.3973 56.8206 177.236 157.5988 46.5309 285.4124;
	26.0337 17.2698 14.0331 8.5929 4.5331 356.447 44.5559 58.6191 191.2208 119.2605 42.7508 215.9815;
	24.1928 16.8879 13.4943 9.0705 4.6236 136.5385 17.0673 18.3486 59.182 67.6794 29.033 122.5678;
	21.8965 16.982 12.3301 8.0291 3.9359 80.8707 10.1088 11.9038 41.9653 63.1131 28.344 114.2983;
	11.6968 13.8491 6.9414 6.5186 3.2741 58.1917 7.274 9.1597 35.1032 60.5059 24.7611 109.5766;
	2.8488 3.7656 2.0635 2.6438 0.6228 46.2841 5.7855 5.3103 20.5558 40.4519 7.1287 73.2586;
	0.458 0.693 0.34 0.9955 0.6241 33.6469 4.2059 6.1774 15.715 16.7846 3.4377 30.3969;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
