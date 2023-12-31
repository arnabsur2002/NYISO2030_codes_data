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
	0.0951 0.0992 0.1118 0.0 0.0 0.1251 0.0156 0.1784 0.0 0.0 0.0 0.0;
	2.5973 2.2113 1.4107 2.3973 1.9666 265.5456 33.1932 20.5894 55.8315 115.3959 88.5115 208.9827;
	7.935 6.9162 5.2131 8.8878 9.4697 356.4744 44.5593 45.2041 153.2608 230.0589 193.8604 416.6381;
	13.0633 11.3071 8.3146 11.0712 11.6745 389.8604 48.7325 52.8909 216.8053 277.0935 177.6153 501.818;
	21.1278 15.1954 13.0138 11.4774 10.9801 465.7991 58.2249 69.9424 302.1973 278.6679 129.2826 504.6693;
	20.933 14.3719 12.6022 11.5501 11.0045 451.2714 56.4089 64.8959 296.271 285.4544 77.1346 516.9596;
	22.3612 14.6647 11.8618 11.7129 11.0046 426.7484 53.3435 62.7337 285.3005 279.4026 63.5537 505.9998;
	24.2669 16.5824 13.7152 7.7152 5.3866 381.5651 47.6956 68.1855 266.7199 245.5148 149.4397 444.6288;
	21.4445 16.0351 12.9914 6.5602 5.2334 379.5282 47.441 70.6197 269.103 227.8381 145.2069 412.6161;
	15.0409 11.9247 9.4275 4.3327 5.2333 355.5013 44.4377 69.2771 269.9824 181.2494 145.8477 328.2438;
	4.4516 4.3216 3.6019 4.0132 5.7302 120.2503 15.0313 23.9291 164.987 35.7287 29.2644 64.7048;
	0.9905 0.8245 0.6054 1.6841 2.5111 34.9373 4.3672 6.4667 29.3779 11.4089 7.8386 20.6615;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
