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
	1.019 0.8228 0.7031 0.0 0.0 9.4835 1.1854 4.1926 0.4191 0.0 0.0 0.0;
	14.1723 12.1553 9.351 2.1861 3.2879 229.1678 28.646 52.4494 70.2741 141.4306 25.8602 256.1316;
	25.3824 17.3816 14.3553 2.033 6.0118 353.7425 44.2178 69.688 143.5098 260.2224 40.2646 471.2643;
	26.2064 17.3625 14.3191 2.3631 7.1837 394.9178 49.3647 72.7397 180.0052 325.1598 74.94 588.8663;
	25.4423 16.4971 13.8 1.3889 5.1662 386.0561 48.257 68.6135 178.4124 289.6455 116.4066 524.5498;
	23.4506 16.509 12.7858 2.4712 6.1019 361.6244 45.2031 63.722 198.1437 327.3516 175.8415 592.8357;
	18.761 13.7922 9.2391 2.8559 5.5456 340.7396 42.5924 57.4076 206.5389 331.9402 206.02 601.1458;
	17.2266 9.5179 11.8178 2.1352 1.224 321.7816 40.2227 49.838 185.5188 251.5933 146.6751 455.637;
	16.7872 9.1467 12.4492 1.4285 0.9126 337.7133 42.2142 47.4263 174.7514 228.6595 105.1257 414.1037;
	13.4125 7.7449 10.0706 1.2554 0.8292 346.6135 43.3267 44.7141 156.857 193.3508 83.8825 350.1594;
	4.5984 3.8239 4.1906 2.0638 2.3068 276.5965 34.5746 24.8974 147.5707 166.6632 120.5073 301.828;
	1.1859 0.9594 0.7531 0.9434 1.2757 68.7869 8.5984 11.3672 45.3062 37.8704 98.6588 68.5835;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
