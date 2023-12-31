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
	1.0111 0.8207 0.6949 0.0 0.0 9.4835 1.1854 4.1882 0.4191 0.0 0.0 0.0;
	10.1799 7.573 8.7697 4.3618 10.7577 252.7897 31.5987 36.4409 87.6355 46.3053 3.2429 83.8592;
	20.5539 13.9079 13.5226 5.0445 7.9695 338.2777 42.2847 65.6746 158.99 170.9764 18.4642 309.6393;
	23.7162 16.5066 13.8506 6.3964 5.0301 379.7794 47.4724 69.187 185.0358 269.523 45.0958 488.1077;
	25.2049 15.4892 13.8 1.9634 1.2859 389.3056 48.6632 59.5016 144.6137 228.9631 65.175 414.6536;
	25.6144 16.1917 13.8001 2.5228 3.5348 358.2074 44.7759 57.9199 86.9245 243.3249 79.1275 440.6629;
	25.5647 16.2023 13.8 3.9147 6.5764 319.4747 39.9343 59.1985 44.8139 244.2197 81.6115 442.2833;
	20.1994 12.0948 13.0767 5.0832 6.7059 316.4074 39.5509 65.8654 35.6441 181.8191 50.6131 329.2755;
	14.7823 8.437 10.4874 4.0556 4.5275 339.7455 42.4682 65.7871 57.9029 166.0243 48.6644 300.671;
	8.7549 7.5514 5.4071 2.6342 2.8252 368.3089 46.0386 60.661 78.7687 129.9486 45.4662 235.3377;
	3.4464 6.6143 3.1954 2.5511 2.3087 325.8382 40.7298 30.8383 122.6065 52.3047 29.2928 94.7241;
	1.1996 1.0857 0.8004 1.4139 1.2354 68.7218 8.5902 11.3728 36.8429 13.0107 5.2217 23.5625;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
