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
	1.0111 0.8207 0.6949 0.0 0.0 10.0085 1.2511 4.5209 0.4191 0.0 0.0 0.0;
	6.9357 3.4764 4.7315 1.6322 6.933 97.504 12.188 2.4907 26.0935 68.0004 7.0729 123.1491;
	12.3455 11.2416 9.0076 1.7558 10.1011 289.6294 36.2037 16.5469 98.46 179.2563 72.0719 324.6342;
	17.7549 16.3928 13.0894 3.0107 10.6304 346.6882 43.336 36.3856 162.0494 270.6847 129.8254 490.2116;
	20.5107 15.8265 12.918 3.3013 9.2086 252.5457 31.5682 43.1584 132.5816 175.9308 125.7941 318.6117;
	22.5349 16.0888 13.5836 3.3736 10.0726 187.2014 23.4002 46.5033 127.8454 139.4244 80.4166 252.4985;
	25.2945 16.5172 13.8 3.2874 10.2367 228.3419 28.5427 49.0209 137.9512 112.6612 67.1015 204.0302;
	24.0872 15.964 13.4455 4.0162 7.9883 343.523 42.9404 54.9984 139.6569 56.4387 104.393 102.2108;
	21.2123 15.998 13.2169 4.0981 6.5206 364.2289 45.5286 54.92 129.0628 47.1796 99.7329 85.4425;
	15.4322 12.1323 10.3035 3.9233 5.3683 370.779 46.3474 51.0382 110.5656 40.4302 72.9141 73.2193;
	5.9506 1.8728 4.1931 3.9091 4.7247 309.9288 38.7411 34.2227 122.5136 18.8976 30.0305 34.2237;
	1.2796 0.9615 0.7956 0.9292 1.2971 89.0373 11.1297 14.0118 43.9378 10.5972 9.9223 19.1916;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
