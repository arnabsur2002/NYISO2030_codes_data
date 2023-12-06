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
	0.0 0.0 0.0096 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	4.5529 2.39 4.1748 3.0009 1.4745 280.4458 35.0557 50.21 40.2444 74.674 41.1094 135.235;
	13.3592 10.4416 6.467 8.8359 6.8034 403.3665 50.4208 76.8547 115.3088 204.6834 112.6617 370.6828;
	21.5779 16.6029 13.0161 10.9132 9.3953 423.5206 52.9401 78.2148 147.2274 297.4813 147.8783 538.7403;
	26.334 16.634 13.8 11.1307 5.6932 394.9664 49.3708 68.3793 130.7743 255.3865 91.7585 462.5064;
	26.5506 16.6663 13.9988 11.1434 7.5498 394.6528 49.3316 63.8015 127.0859 290.5215 182.1703 526.1361;
	26.8361 16.6696 14.1564 11.2899 9.1318 396.9267 49.6158 61.8252 149.625 301.837 216.9578 546.6286;
	27.1093 16.7155 14.1942 11.632 11.333 428.2862 53.5358 69.6027 191.0682 197.718 182.9873 358.0686;
	25.5476 16.7067 14.077 11.5984 11.5993 428.214 53.5268 73.06 189.708 176.7641 155.6352 320.1208;
	21.6271 15.8048 13.4433 9.5276 11.0337 416.2069 52.0259 71.5949 172.789 153.0209 118.0305 277.1218;
	9.455 7.4763 6.9066 5.4498 8.2886 261.5468 32.6934 41.9244 95.862 142.2359 61.655 257.59;
	0.9389 0.7054 0.5869 1.9477 3.561 50.324 6.2905 8.4742 26.0169 24.3383 29.7567 44.0769;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];