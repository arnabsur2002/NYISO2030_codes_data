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
	0.4731 0.4018 0.4224 0.0 0.0 0.0 0.0 0.2 0.0 0.0 0.0 0.0;
	9.6886 8.858 5.9082 1.0943 4.35 276.4902 34.5613 48.5541 169.3543 12.4483 0.0 22.544;
	18.3613 13.7761 9.6921 1.1347 5.0027 422.4627 52.8078 70.3717 245.713 0.0 0.0 0.0;
	20.8039 15.9823 11.848 1.352 5.2729 431.717 53.9646 73.2511 249.0639 0.0 0.0 0.0;
	12.4577 11.0305 9.5519 1.809 3.7979 249.3852 31.1731 65.8753 150.1804 1.6681 18.1796 3.0209;
	24.6877 16.371 13.7627 5.6115 4.7411 313.2646 39.1581 71.6509 209.2027 24.4151 41.0815 44.2159;
	25.5739 16.5642 13.8196 7.8853 5.6166 340.5289 42.5661 71.9666 237.9465 41.7159 53.7713 75.5478;
	17.6891 13.9241 11.7646 10.0606 7.0961 237.3927 29.6741 46.9413 105.9674 41.4008 57.7363 74.9771;
	10.3247 8.8704 7.9541 9.1853 7.0385 184.5413 23.0677 35.8188 46.9466 24.8255 51.4346 44.9591;
	3.5057 3.9886 3.397 7.3578 6.6902 138.5471 17.3184 31.7696 21.1413 11.7989 37.5665 21.3678;
	0.5049 0.8273 0.5701 4.9086 2.7832 53.1299 6.6412 26.5772 0.0 0.0 8.0482 0.0;
	0.45 0.3815 0.323 1.3501 0.9351 18.3124 2.2891 4.4797 2.2835 0.0 2.0876 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
