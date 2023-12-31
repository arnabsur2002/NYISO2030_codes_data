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
	0.1004 0.0979 0.1267 0.0 0.0 0.1251 0.0156 0.1784 0.0 0.0 0.0 0.0;
	3.7082 3.4841 3.0938 4.1619 3.4443 57.2558 7.157 20.8488 20.659 63.2978 36.5724 114.6327;
	7.6697 7.2819 5.3106 7.7338 10.2974 57.8163 7.227 14.3182 52.1929 144.568 94.4174 261.8135;
	10.7235 10.0084 5.8116 10.2356 11.944 47.3594 5.9199 9.4042 67.0435 224.6251 149.8874 406.7973;
	19.1058 13.6106 8.8063 11.0543 9.7726 264.3887 33.0486 42.6143 176.8087 262.9746 176.7364 476.2486;
	20.1043 15.752 12.0086 11.1561 8.4569 290.537 36.3171 37.1132 199.4867 291.5705 175.3665 528.036;
	20.4907 16.0617 12.8075 10.9421 7.2185 344.054 43.0067 42.5942 224.839 287.8342 167.7044 521.2695;
	23.3525 16.3566 13.6092 2.5093 1.5949 391.9197 48.99 63.3016 224.1877 157.5613 115.8976 285.3445;
	19.7834 13.1303 11.0985 2.0038 1.7457 399.9237 49.9905 66.984 214.0609 131.3438 117.6793 237.8644;
	13.9687 6.7913 6.0287 1.5436 2.1039 383.5729 47.9466 66.5579 190.3798 108.0141 112.4876 195.6142;
	6.1208 4.8938 2.4654 1.8887 3.7948 177.8881 22.236 23.1608 70.3465 31.7758 39.9406 57.5462;
	1.0165 1.2087 0.6364 0.7516 2.271 53.3299 6.6662 6.3858 38.4921 10.9871 10.0705 19.8977;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
