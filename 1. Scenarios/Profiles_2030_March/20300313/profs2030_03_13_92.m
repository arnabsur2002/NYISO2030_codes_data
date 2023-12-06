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
	8.8962 7.6346 6.5052 1.4291 3.8014 331.1792 41.3974 53.3433 126.0653 7.5758 9.212 13.7199;
	14.7263 12.9696 10.399 2.4458 4.6912 446.5087 55.8136 73.8127 266.3866 13.1605 16.9738 23.8337;
	19.4156 16.1117 12.9796 3.9372 5.0165 453.7575 56.7197 75.4813 277.5703 34.8133 27.894 63.047;
	24.2101 15.8902 13.4591 2.0015 3.367 349.513 43.6891 59.0448 201.8666 81.7196 48.2936 147.9947;
	26.0122 16.6459 13.8571 5.5729 5.3511 353.0683 44.1335 65.2465 194.5948 64.2292 54.3949 116.3195;
	25.9893 17.0015 14.074 6.6385 6.1757 354.4687 44.3086 67.3101 194.4694 37.138 52.5795 67.2571;
	10.0804 7.0665 8.6987 1.7559 4.6049 236.5932 29.5742 30.9851 120.7586 22.2863 36.561 40.3607;
	4.1934 0.7164 3.0916 0.4147 3.3632 191.9839 23.998 16.9876 103.003 26.446 22.8924 47.894;
	3.6119 0.4457 1.8439 0.0 2.9868 140.328 17.541 9.3397 76.2071 31.3977 14.8295 56.8614;
	3.2808 1.0201 2.4177 0.4781 0.6907 35.2443 4.4055 2.8639 14.3853 12.607 0.4115 22.8313;
	0.6346 0.6789 0.6913 0.6318 0.618 9.3384 1.1673 2.5692 4.9195 6.0158 2.0028 10.8946;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];