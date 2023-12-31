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
	3.4445 1.5431 3.0415 5.2784 0.3425 158.5361 19.817 19.6738 173.8212 93.4411 27.8637 169.2224;
	16.9103 10.7447 11.0135 3.3641 0.0 270.0986 33.7623 20.8281 152.6828 110.0551 125.2491 199.3104;
	23.3028 16.6083 13.8 4.4307 0.0083 295.7998 36.975 30.8286 153.6174 146.4148 146.6336 265.158;
	25.6923 16.474 13.7624 5.5957 0.6601 163.2671 20.4084 44.6463 168.606 212.107 155.9283 384.1271;
	25.0049 16.2147 13.2745 7.1328 1.3592 206.1237 25.7655 43.1734 163.7949 262.5679 152.6662 475.5121;
	23.8188 14.6742 13.2058 7.6181 0.9673 216.5063 27.0633 33.2654 145.0839 268.1049 136.6577 485.5396;
	25.8343 16.5546 13.7855 9.9411 1.6251 271.6931 33.9616 49.8353 202.7494 337.549 228.248 611.3033;
	23.5307 16.3881 13.7968 9.1325 1.2879 218.3666 27.2958 55.7196 210.3045 308.7314 205.3563 559.1145;
	20.7018 16.0713 13.367 7.5304 2.3191 110.6277 13.8285 56.8892 221.0777 195.0878 152.7814 353.3051;
	11.1355 8.4015 6.5175 8.9446 11.0164 56.1196 7.015 50.1176 222.5776 171.6681 84.1859 310.892;
	1.0896 0.8043 0.5792 2.1955 3.5795 58.5789 7.3224 9.9601 39.9943 65.7689 37.6774 119.1078;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
