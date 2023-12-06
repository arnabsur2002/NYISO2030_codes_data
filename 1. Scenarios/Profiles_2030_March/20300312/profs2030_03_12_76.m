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
	0.1577 0.1659 0.2433 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	8.715 6.5791 5.5404 8.7579 1.8424 169.5444 21.1931 11.8664 173.7968 30.899 21.3331 55.9583;
	17.1495 13.5693 11.9644 3.273 2.5495 282.2177 35.2772 10.9304 145.7631 23.1885 0.2497 41.9946;
	21.9637 16.6083 13.8 3.4973 4.027 290.6445 36.3306 17.3717 115.8142 18.1814 0.0 32.9266;
	19.8953 15.7841 13.6188 7.4835 8.502 84.7274 10.5909 24.4519 80.8649 38.7275 30.3849 70.1357;
	22.4548 16.4868 13.7859 10.2956 11.979 86.5593 10.8199 33.2834 136.4508 107.8 140.0401 195.2264;
	25.9398 16.5331 13.7863 11.1338 13.0763 151.4722 18.934 34.705 168.02 184.9943 186.3721 335.0257;
	25.8419 16.5789 13.7855 11.6408 12.8291 354.0584 44.2573 48.371 240.8933 341.4098 250.9609 618.2951;
	22.5256 16.3881 13.6798 11.6183 11.7947 348.3844 43.5481 44.8289 228.2816 336.3715 222.0619 609.1709;
	11.4401 13.2884 8.3224 10.9831 10.1726 264.3766 33.0471 36.3389 207.0973 251.1598 173.3196 454.852;
	2.2234 5.0675 2.8778 9.8702 11.5165 76.8716 9.609 18.6947 176.297 81.9755 114.7957 148.4582;
	0.954 0.9481 0.7015 1.5843 3.9882 58.226 7.2783 9.8867 40.5123 62.2513 39.014 112.7375;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
