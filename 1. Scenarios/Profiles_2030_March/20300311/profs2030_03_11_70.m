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
	0.0 0.0 0.002 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	7.3375 3.6536 5.1966 0.7667 1.3991 207.3842 25.923 41.1325 31.6726 51.7231 39.9637 93.6709;
	21.0079 13.6774 11.6954 4.9197 9.0948 401.1398 50.1425 74.5458 58.9891 22.0833 157.2742 39.9929;
	25.5817 16.6029 13.8 8.8985 11.7721 443.781 55.4726 78.5618 114.0324 135.3583 225.9615 245.1347;
	26.8446 16.6178 13.8 11.0372 8.0709 428.75 53.5937 73.3677 174.0127 192.1067 216.7908 347.9064;
	26.4699 16.6083 13.6614 11.2041 7.8177 374.2297 46.7787 64.8012 102.5164 154.4373 194.791 279.6868;
	26.3408 16.6083 13.6179 11.3475 7.7804 285.8659 35.7332 47.8408 40.5933 120.9078 169.9003 218.9648;
	26.4799 16.6083 13.8 11.632 8.9044 312.975 39.1219 41.9082 31.7217 137.8917 200.6235 249.7226;
	23.98 16.6636 13.8 11.5984 9.0619 383.8951 47.9869 55.6781 65.5726 168.9995 226.603 306.0592;
	18.2045 15.5078 10.998 9.6055 7.4105 401.0127 50.1266 70.0289 145.021 163.4154 260.4556 295.9462;
	3.745 6.0924 1.3796 5.0543 1.239 331.6219 41.4527 61.9907 141.3817 88.4509 219.4926 160.1851;
	0.6973 0.5933 0.3718 1.3444 2.4453 48.4566 6.0571 10.0355 20.4383 21.505 19.3338 38.9456;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
