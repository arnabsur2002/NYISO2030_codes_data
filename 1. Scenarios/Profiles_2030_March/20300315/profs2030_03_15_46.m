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
	0.4984 0.3871 0.3687 0.0 0.0 0.1765 0.0221 0.5258 0.1274 0.0 0.0 0.0;
	3.3126 2.6874 1.3767 5.2076 1.5815 15.1247 1.8906 11.0265 33.6878 6.3126 10.4926 11.4322;
	7.0674 3.9817 2.4604 5.2825 3.9233 159.1538 19.8942 20.7806 168.1861 33.4437 25.3534 60.5668;
	12.7599 6.4959 4.9653 6.0741 4.7358 304.5592 38.0699 27.1141 215.5825 100.102 53.946 181.2852;
	19.6872 12.3083 12.9124 11.2171 12.4895 267.078 33.3847 17.4323 175.4406 179.7696 105.1011 325.5639;
	23.1244 15.6792 13.9848 11.3316 12.0853 302.0856 37.7607 25.7496 172.258 152.5829 155.1036 276.3286;
	21.6369 14.868 13.8387 11.4453 12.0267 361.1304 45.1413 32.15 187.2532 131.3252 160.8349 237.8308;
	8.313 7.5753 9.5036 11.6367 10.0346 390.4051 48.8006 42.4137 254.6574 131.8054 74.5754 238.7003;
	4.0732 5.0924 6.5969 11.2324 9.7423 311.5083 38.9385 25.1905 239.7745 122.7182 62.0626 222.2433;
	1.8511 2.4317 3.9187 8.8067 8.5578 151.9641 18.9955 10.3275 188.9829 60.8428 27.4017 110.1866;
	1.2959 0.8739 1.062 2.0004 1.9204 18.1449 2.2681 0.2441 60.0358 0.0 0.0 0.0;
	0.6088 0.2701 0.2537 1.0409 1.1865 51.529 6.4411 3.6767 42.2843 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];