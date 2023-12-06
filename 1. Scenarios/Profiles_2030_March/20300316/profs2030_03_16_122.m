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
	1.0216 0.838 0.7132 0.0 0.0 9.4835 1.1854 4.1882 0.4191 0.0 0.0 0.0;
	8.5222 6.8171 5.7458 0.3216 3.8105 109.6695 13.7087 4.8576 41.3854 100.3377 34.0834 181.7122;
	16.2991 9.0566 5.5283 4.3265 9.7323 339.4041 42.4255 28.326 111.8552 174.4086 86.4453 315.8551;
	21.4194 12.597 7.3897 9.2119 11.8955 406.3867 50.7983 53.6727 149.4209 229.5459 126.1508 415.709;
	21.0475 10.5794 5.9762 6.8214 9.9552 424.3243 53.0405 64.9281 114.1862 113.0876 135.5287 204.8023;
	18.6254 9.7677 6.8113 6.8684 9.1999 421.2972 52.6622 65.5101 91.2878 90.0495 152.6611 163.0802;
	15.1956 8.8521 8.5359 6.9481 8.975 416.5991 52.0749 62.1013 92.3296 70.4307 154.2077 127.5505;
	11.2362 8.1818 10.7309 5.1333 8.0141 391.1313 48.8914 58.8729 109.9256 30.7749 89.335 55.7336;
	9.9511 6.3315 9.7017 3.8576 7.4507 384.2451 48.0306 58.5779 119.7283 41.7754 71.0839 75.6556;
	9.4218 6.5809 6.4143 2.2326 6.4457 363.7306 45.4663 56.4598 115.911 56.0067 67.6694 101.4285;
	7.5642 4.5802 4.0129 3.368 6.3061 258.52 32.315 41.8745 139.8637 55.61 81.1394 100.7101;
	1.3686 1.0424 0.8173 1.8588 2.1163 71.3209 8.9151 14.0581 43.0254 20.7307 31.2223 37.5434;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];