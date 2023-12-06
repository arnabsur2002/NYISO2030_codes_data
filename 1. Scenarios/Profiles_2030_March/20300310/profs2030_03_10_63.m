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
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	1.0672 0.5787 0.7092 0.328 0.3878 1.9026 0.2378 0.0451 48.7087 11.15 4.8209 20.1927;
	2.6449 0.6454 0.8846 1.0791 1.1755 0.0 0.0 0.4545 29.1117 24.531 6.1783 44.4257;
	2.2821 0.7644 1.0094 2.14 2.4782 0.0 0.0 2.073 23.6974 43.6777 6.8924 79.1005;
	2.421 1.7185 2.2205 5.4741 4.5162 4.4294 0.5537 12.5419 67.1329 57.734 23.2197 104.5567;
	2.6324 2.3513 3.3803 4.4917 5.7926 19.5391 2.4424 24.9114 114.4184 61.421 40.0515 111.2337;
	2.8874 2.6155 4.2576 3.3899 5.09 49.6901 6.2113 37.1927 177.4785 56.6699 54.717 102.6296;
	4.1636 3.6847 3.8905 3.3364 1.486 137.3187 17.1648 50.99 229.5107 92.6883 123.0255 167.8591;
	3.2267 2.6082 2.2692 3.5353 0.9829 94.2201 11.7775 37.7055 180.3334 98.9024 107.7849 179.1129;
	2.071 1.9526 1.5484 3.7327 1.0794 61.1249 7.6406 24.762 87.7911 129.6016 63.7733 234.7093;
	1.5504 1.6837 1.4005 2.0888 1.4212 31.4698 3.9337 12.6589 13.9653 91.4784 17.9311 165.6679;
	0.4075 0.4325 0.1959 0.4829 0.9855 40.9076 5.1135 9.6525 27.704 20.9334 9.0035 37.9105;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];