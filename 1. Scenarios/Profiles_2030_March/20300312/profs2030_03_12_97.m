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
	0.1575 0.1621 0.2433 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	4.6643 4.5901 4.186 0.049 0.9561 205.1758 25.647 6.4045 74.8198 17.4948 27.8667 31.6831;
	14.3511 11.9953 9.6797 0.6438 1.8303 329.6926 41.2116 9.5539 129.8399 114.1197 83.1722 206.6714;
	22.7228 16.5007 13.7249 2.6402 2.519 327.1758 40.897 17.3198 151.1935 186.8032 105.7504 338.3017;
	25.6923 15.585 13.3747 7.2017 4.3615 157.752 19.719 23.992 142.1726 147.6237 78.8222 267.3475;
	26.0165 16.5326 13.7859 9.4553 7.0204 185.6399 23.205 39.684 170.3637 183.482 124.3672 332.287;
	26.1865 16.5331 13.809 9.8924 8.6919 212.2923 26.5365 47.7621 185.9583 215.9283 151.5681 391.0475;
	25.8343 16.5546 13.6485 10.6552 11.2946 320.9604 40.12 62.7222 212.59 338.0803 232.893 612.2654;
	22.1349 16.3528 10.4958 10.257 9.8075 305.1855 38.1482 62.3059 190.3024 332.8307 198.6488 602.7585;
	12.6305 9.5408 1.4425 8.861 8.2519 263.5773 32.9472 58.785 142.9331 229.2158 129.8909 415.1112;
	6.0387 2.6002 0.6439 7.6765 10.3913 276.5214 34.5652 51.296 111.3241 112.828 73.5908 204.3321;
	1.2324 1.1027 0.6362 1.7087 3.4683 70.8777 8.8597 15.1015 40.2634 65.037 37.3585 117.7825;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];