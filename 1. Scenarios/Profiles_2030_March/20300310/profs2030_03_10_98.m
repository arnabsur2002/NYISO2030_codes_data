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
	0.0 0.0 0.0 0.7652 1.9942 87.8977 10.9872 6.5288 78.7193 11.5241 4.5027 20.8703;
	0.0 0.0 0.0 1.305 2.7583 42.2429 5.2804 10.5618 21.1742 13.8957 8.1333 25.1651;
	0.1665 0.0 0.0 1.6857 2.6657 25.8923 3.2365 9.7685 14.91 19.3854 15.7484 35.1072;
	2.2996 0.7771 0.6688 0.9673 1.6256 36.749 4.5936 11.0332 36.2781 22.3089 25.6927 40.4016;
	3.0426 1.3146 1.1059 0.6731 0.6144 27.7011 3.4626 7.2398 30.9874 35.4726 30.7257 64.2412;
	3.1253 1.5283 1.2849 0.6025 0.6596 16.8911 2.1114 5.5624 18.8877 40.7006 26.5195 73.709;
	3.3947 1.3752 1.0872 1.5559 3.5046 28.8586 3.6073 25.5076 24.7123 45.3661 13.5278 82.1583;
	2.5775 1.2935 0.9044 1.4927 4.7768 31.3578 3.9197 28.3915 29.6703 32.3297 8.1287 58.5493;
	1.9907 1.1514 0.6963 1.0261 5.2791 44.9694 5.6212 33.0439 41.4473 21.283 4.0048 38.5437;
	1.6723 1.2281 0.8787 0.2916 2.1849 83.8408 10.4801 17.7989 33.452 8.2607 0.6656 14.9602;
	0.2993 0.2562 0.1537 0.3793 0.7184 28.7808 3.5976 6.1919 22.1103 17.3515 8.51 31.4236;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];