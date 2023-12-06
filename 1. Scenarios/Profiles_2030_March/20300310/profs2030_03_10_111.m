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
	1.2665 1.172 0.9517 0.3484 1.041 11.1866 1.3983 1.0866 2.0954 11.7915 5.4112 21.3545;
	0.8917 0.9658 0.8323 1.0189 3.822 27.2047 3.4006 2.9267 8.0142 17.2211 32.6103 31.1876;
	0.9927 1.0831 0.8694 1.6924 5.2211 38.7837 4.848 4.3204 14.1355 28.5695 97.961 51.7396;
	2.6792 2.5184 1.9574 1.9357 5.7475 100.4219 12.5527 9.7692 84.1313 39.1003 94.3933 70.8108;
	4.3777 3.8276 2.4773 2.0092 6.5421 137.5199 17.19 12.2708 125.8474 48.8998 83.3669 88.5578;
	5.5125 3.2889 2.6883 2.4995 6.7047 152.7773 19.0972 13.4584 155.8759 54.8915 67.3687 99.4088;
	3.8421 2.3387 2.5606 4.5003 4.5613 214.7968 26.8496 31.4774 136.9017 93.4919 60.7976 169.3143;
	2.8552 1.5427 2.0655 4.4657 3.5814 164.6474 20.5809 28.823 97.8295 81.5366 48.2528 147.6634;
	2.1293 1.3537 1.6929 3.1405 3.0402 147.0468 18.3808 28.746 68.2999 66.7173 33.1467 120.8254;
	2.4972 1.6775 2.3164 0.9014 2.2413 134.8307 16.8538 27.4874 36.0565 48.5594 13.6492 87.9414;
	0.5689 0.3104 0.3471 0.8597 1.4286 38.6123 4.8265 9.7619 26.8475 21.2465 10.3357 38.4775;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
