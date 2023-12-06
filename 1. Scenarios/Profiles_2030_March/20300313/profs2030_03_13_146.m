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
	0.4731 0.4126 0.4224 0.0 0.0 0.0 0.0 0.2 1.2889 0.0 0.0 0.0;
	3.3516 6.6482 4.1404 2.9651 2.9302 216.1552 27.0194 42.2116 156.0156 14.0917 3.3596 25.5201;
	11.7987 13.3703 8.7309 6.7289 5.6501 304.0336 38.0042 56.9856 235.623 15.5446 12.1432 28.1513;
	19.263 16.6083 13.6122 8.7805 7.6631 198.5087 24.8136 47.3562 244.0173 23.645 21.1328 42.8212;
	20.4718 15.7285 13.4836 4.7118 4.4254 45.3499 5.6687 39.8659 78.9276 53.0639 25.964 96.0991;
	18.2674 14.8351 13.5575 4.9269 2.9837 51.6077 6.451 50.8913 50.7903 91.159 24.451 165.0894;
	18.4438 15.0936 13.6155 4.1651 1.9845 88.4922 11.0615 56.4269 44.3124 101.8146 23.0533 184.3868;
	11.2689 10.566 9.2945 1.515 1.5666 116.7094 14.5887 38.3637 40.9844 53.9435 12.8695 97.6919;
	11.7157 10.3214 8.0735 0.9905 1.672 131.0546 16.3818 31.2316 40.3555 20.8274 8.3444 37.7186;
	8.5995 7.0035 5.775 0.6586 1.8726 112.4688 14.0586 21.2869 28.2618 3.9772 1.7621 7.2027;
	2.9427 2.3049 2.3662 0.4925 0.1821 23.5288 2.9411 1.6022 0.0 0.0 0.0 0.0;
	0.4219 0.3877 0.3621 0.4794 0.267 11.0452 1.3807 1.062 2.2574 3.2112 1.9744 5.8155;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
