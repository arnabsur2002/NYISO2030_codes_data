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
	0.0951 0.0992 0.1051 0.0 0.0 0.1251 0.0156 0.1784 0.0 0.0 0.0 0.0;
	2.1222 1.3298 1.7537 0.5165 2.5651 41.8349 5.2294 17.6637 33.5751 66.3435 40.7773 120.1484;
	2.8889 2.1192 2.6373 1.1852 7.5255 42.6654 5.3332 10.2205 28.5077 37.58 32.0308 68.0576;
	3.3045 2.6821 2.3429 1.3801 9.9895 50.6064 6.3258 6.7522 35.6971 43.1498 24.6047 78.1445;
	8.4346 6.0186 6.8202 6.1351 9.9658 356.3864 44.5483 44.1914 229.478 76.2816 35.2503 138.1465;
	14.1029 9.5358 11.5597 8.7331 7.5152 367.8098 45.9762 56.0805 226.9317 157.9699 72.2256 286.0844;
	19.5506 12.28 12.699 8.8928 5.5666 375.6356 46.9544 59.909 227.3507 189.4324 91.8062 343.0632;
	23.6444 16.0837 13.6893 2.5152 2.4022 370.3776 46.2972 62.0559 237.1146 84.9342 94.1028 153.8164;
	19.7745 14.0265 12.5306 2.6503 3.9301 372.3108 46.5388 61.0557 246.626 44.7711 84.811 81.0808;
	13.278 9.1477 9.1613 2.063 4.9883 354.0084 44.2511 57.7502 244.6242 46.4355 87.8775 84.0949;
	5.7695 4.9372 4.9321 1.4795 4.1231 149.8313 18.7289 21.0275 96.0649 17.6701 24.8157 32.0006;
	1.0308 0.909 0.6352 0.6862 1.4179 57.719 7.2149 8.4659 26.5063 14.2072 9.7115 25.7294;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];