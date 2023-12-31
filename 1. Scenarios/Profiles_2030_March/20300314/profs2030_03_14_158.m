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
	0.0951 0.0972 0.1051 0.0 0.0 0.1251 0.0156 0.2957 0.0 0.0 0.0 0.0;
	1.3173 0.1774 0.0 2.3209 6.0375 11.3465 1.4183 7.1762 41.3748 35.5195 44.3349 64.3261;
	5.6103 4.8633 2.5152 7.6268 10.2746 19.2719 2.409 6.4906 28.5094 84.077 51.7255 152.2639;
	9.98 10.0923 4.6438 10.7238 10.7354 43.6233 5.4529 9.1162 26.3918 162.6349 41.9014 294.5328;
	15.2636 13.9214 4.0468 11.7181 10.9276 360.5503 45.0688 61.0054 151.3594 245.8332 82.4994 445.2054;
	18.614 13.9285 4.7593 11.3821 11.6986 349.6494 43.7062 59.1589 189.5458 287.7476 169.145 521.1126;
	21.7959 14.1308 6.0204 11.3011 12.8453 335.2527 41.9066 56.0144 217.0715 302.8776 208.2235 548.5131;
	23.6277 15.5566 8.2118 7.7517 10.1767 320.5966 40.0746 57.5833 226.0223 253.2414 208.0653 458.6216;
	17.249 11.7323 4.5691 8.2237 9.6561 339.4308 42.4289 62.5523 221.2072 220.256 180.7337 398.885;
	6.8379 5.5034 1.8536 5.9863 7.7944 325.46 40.6825 63.5132 191.2079 170.0229 145.7611 307.9126;
	1.1767 2.0229 0.8421 3.3415 4.6578 112.0418 14.0052 52.0551 34.5882 42.5246 28.962 77.0123;
	0.8987 0.8319 0.5827 0.707 1.7311 35.0564 4.382 11.4338 25.0219 15.6319 10.1572 28.3095;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
