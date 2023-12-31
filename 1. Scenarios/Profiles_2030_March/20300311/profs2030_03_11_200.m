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
	0.0 0.0 0.002 0.0 0.0 0.0 0.0 0.1191 0.0 0.0 0.0 0.0;
	6.8289 4.5591 3.4894 1.2446 4.0026 98.8321 12.354 46.4154 84.2508 69.1629 38.0484 125.2544;
	17.6015 13.0357 10.0535 7.1106 8.7756 264.6239 33.078 72.3278 90.0681 205.3299 27.7315 371.8537;
	23.3189 16.6029 13.8 10.919 11.1442 304.6569 38.0821 73.9192 104.8218 311.4626 67.9362 564.0607;
	25.8012 16.6083 13.7038 11.318 10.0675 139.7765 17.4721 57.7753 101.8303 107.6723 14.2298 194.9951;
	25.2618 16.5907 13.6224 11.3858 9.9772 156.094 19.5118 40.7004 87.3021 86.3546 49.3487 156.3887;
	24.1616 16.2896 13.3555 11.0744 9.68 225.6185 28.2023 29.8642 71.6552 138.2921 51.5797 250.4478;
	21.6338 12.4946 11.7146 11.446 11.6916 381.8608 47.7326 65.6819 79.4 180.8714 75.7738 327.5592;
	14.6911 12.5226 11.9718 11.5931 12.4513 399.0963 49.887 72.8894 79.9433 177.5489 74.5976 321.5421;
	9.9884 9.4207 8.0367 9.4089 12.7468 376.9098 47.1137 72.4805 80.0921 133.1787 73.6685 241.1874;
	8.4785 7.6196 5.7832 5.0597 10.0416 166.7342 20.8418 47.6514 40.6528 49.7428 27.6067 90.0846;
	1.0999 1.0113 0.5432 1.287 2.7315 48.2871 6.0359 8.8485 19.6507 21.364 18.9041 38.6904;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
