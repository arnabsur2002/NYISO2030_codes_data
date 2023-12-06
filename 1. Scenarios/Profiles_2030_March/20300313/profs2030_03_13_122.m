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
	0.4731 0.4043 0.4224 0.0 0.0 0.0 0.0 0.3362 0.0 0.0 0.0 0.0;
	3.3155 2.663 2.8824 0.7386 0.7431 77.9844 9.7481 46.8313 59.6952 23.1039 0.0 41.8412;
	11.3004 9.1846 7.4476 3.1211 3.7589 424.5233 53.0654 74.4746 226.7658 62.3805 18.0334 112.9715;
	18.3848 15.2427 13.0777 7.4004 7.9005 449.2212 56.1527 76.2808 257.5408 74.0345 36.6901 134.0769;
	17.6026 12.1047 12.9177 5.0347 6.7126 332.1215 41.5152 54.8735 126.2158 82.5406 33.2203 149.4815;
	19.22 14.6554 13.7627 6.3099 4.7566 292.2829 36.5354 52.287 143.0238 67.3767 14.0591 122.0195;
	20.5484 16.0813 13.769 6.5013 2.6586 197.3131 24.6641 52.246 157.7306 67.3029 8.6207 121.8859;
	8.9131 9.7719 9.3924 3.3813 1.3896 27.5316 3.4415 14.2654 45.3992 112.0534 25.7474 202.9294;
	6.5247 7.0135 6.326 2.1124 1.5931 33.0671 4.1334 10.8723 31.3266 150.3232 40.7224 272.2362;
	3.8026 4.9155 3.7699 1.3334 1.993 46.1438 5.768 9.1383 21.429 190.4098 37.8668 344.8334;
	1.1884 1.6282 1.5444 0.7873 0.3864 29.8663 3.7333 5.2324 3.5493 92.4513 20.5818 167.4299;
	0.4149 0.5749 0.5447 0.6266 0.3073 16.4609 2.0576 6.2603 7.8511 9.5552 14.4428 17.3045;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
