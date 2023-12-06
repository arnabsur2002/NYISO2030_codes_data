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
	0.0109 0.013 0.0118 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	8.7755 7.2275 5.581 3.759 2.5332 167.0626 20.8828 34.0091 90.8173 67.2634 39.2565 121.8144;
	17.7974 15.3103 11.435 6.3161 7.3529 317.2758 39.6595 67.2785 131.2669 47.6052 32.0217 86.2132;
	23.1588 16.6176 13.8 8.115 9.4278 374.1356 46.767 72.3398 169.1393 154.1105 78.9247 279.095;
	26.334 16.6265 13.8 10.9533 6.6943 372.7409 46.5926 66.7553 215.6973 229.479 84.1548 415.5879;
	26.6104 16.7683 13.8 11.2002 8.8259 384.9873 48.1234 66.4235 181.3006 272.8126 121.8044 494.0652;
	26.8524 16.8941 13.8198 11.2215 9.9146 391.9629 48.9954 66.4315 105.8673 278.0502 143.8783 503.5507;
	26.5462 16.8076 13.8868 11.3932 11.1206 433.1102 54.1388 71.1471 137.2604 180.6021 158.3858 327.0714;
	23.154 16.62 13.8 11.3119 11.2021 428.3894 53.5487 73.3568 176.3325 160.9842 140.987 291.5433;
	12.2814 14.2395 11.1671 7.8582 10.2347 410.4673 51.3084 71.9277 186.8455 106.8128 105.9917 193.4385;
	3.4425 6.4183 3.2957 2.6256 6.8779 209.7311 26.2164 49.2429 133.2223 41.5159 18.8096 75.1855;
	0.9026 0.8406 0.4234 1.2485 3.1851 44.4257 5.5532 10.4285 19.6823 21.0336 16.7561 38.0919;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];