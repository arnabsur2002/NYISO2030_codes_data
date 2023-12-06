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
	0.0029 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.344 0.1285 0.0716 0.1637 4.5539 1.2879 0.161 0.7682 0.0 15.7354 9.0327 28.4969;
	0.8826 0.6558 0.56 0.9685 6.1038 10.1565 1.2696 3.5039 19.903 46.4265 35.7491 84.0786;
	1.3701 1.0878 0.9572 1.8011 6.4386 7.2345 0.9043 4.0698 27.4594 58.563 58.4227 106.0579;
	2.2608 1.492 1.6558 1.9898 5.077 0.8401 0.105 4.343 25.9278 33.6784 66.0463 60.9918;
	2.2356 1.2808 1.2351 1.6271 6.0937 7.3263 0.9158 6.1386 33.6979 43.7252 95.8648 79.1867;
	2.0664 1.4066 1.0728 1.6963 6.2728 24.275 3.0344 10.3816 63.9354 57.7217 121.9426 104.5344;
	2.7256 2.7944 1.2197 3.5402 3.7678 81.3383 10.1673 34.34 159.8493 97.9155 149.7939 177.3255;
	1.9734 2.3015 1.0142 4.121 2.6772 47.0564 5.8821 27.1227 152.7471 81.5364 89.6067 147.6629;
	1.3229 1.2884 0.6199 3.7126 2.0185 28.2479 3.531 17.7372 88.4081 63.3918 36.12 114.803;
	1.2816 0.6307 0.545 1.7239 1.307 17.7606 2.2201 4.1733 16.8732 40.7919 11.4341 73.8744;
	0.3295 0.2894 0.1804 1.01 1.2892 37.7407 4.7176 7.6254 30.0893 22.1923 9.2092 40.1903;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
