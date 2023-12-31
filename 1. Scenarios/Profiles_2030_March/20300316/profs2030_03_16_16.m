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
	1.0111 0.8207 0.6949 0.0 0.0 12.4511 1.5564 4.5693 0.5129 0.0 0.0 0.0;
	1.3807 0.9836 1.0742 0.1897 0.0435 221.4781 27.6848 37.8305 82.4157 21.5194 0.0 38.9717;
	4.6747 8.9234 8.5427 1.6949 1.4947 357.7044 44.7131 67.1251 154.6268 40.4377 2.4607 73.2329;
	11.3354 15.9283 13.5513 5.775 3.9781 411.1997 51.4 72.6465 183.436 84.4982 8.3805 153.0267;
	13.6526 9.3706 8.4378 3.2389 3.5849 425.625 53.2031 69.9031 155.1298 80.4845 23.2433 145.7579;
	9.3214 8.7485 6.1212 3.3651 2.5541 390.6497 48.8312 67.6754 133.307 173.3855 62.1038 314.0022;
	13.9089 13.0438 10.4293 3.4583 1.5513 364.4056 45.5507 65.3929 115.4971 233.4081 115.3993 422.7034;
	18.9375 15.8239 13.4455 2.2559 0.6946 332.1289 41.5161 62.2643 60.3039 177.8068 108.2853 322.0092;
	17.2828 14.4036 13.3507 1.9697 1.1818 329.0878 41.136 61.103 70.1857 118.8848 87.151 215.3012;
	12.3632 9.0569 10.4732 1.8461 1.1659 308.7045 38.5881 57.2295 81.8059 41.1728 40.7186 74.5642;
	4.678 3.4698 4.1064 3.0202 2.0428 185.1931 23.1491 43.5467 128.7203 0.3056 9.4407 0.5535;
	1.283 1.2257 0.9381 1.6655 1.232 64.8636 8.1079 16.491 46.5386 3.6849 6.8558 6.6734;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
