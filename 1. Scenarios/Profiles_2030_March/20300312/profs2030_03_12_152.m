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
	0.1575 0.1621 0.24 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	4.124 3.1598 3.1955 0.6409 1.3082 123.4719 15.434 47.1307 122.0404 47.0126 22.2585 85.14;
	18.289 14.8373 12.049 2.2182 3.2693 389.6354 48.7044 57.2859 238.8548 149.0689 33.5754 269.9647;
	24.0218 16.7772 13.8 5.3323 4.7251 429.9918 53.749 55.5882 232.8892 203.283 68.4606 368.1467;
	25.8352 16.474 12.7931 8.7382 3.8501 350.8976 43.8622 48.1941 154.2857 204.8018 105.5894 370.8973;
	25.4635 15.3768 9.9291 8.6485 3.8693 288.847 36.1059 48.8154 143.3321 197.7126 127.7065 358.0587;
	21.9974 10.2702 10.6851 7.9717 2.9668 256.9364 32.1171 42.5395 141.2292 157.0119 117.0982 284.3495;
	23.6532 11.4618 13.5455 9.941 2.348 351.3728 43.9216 30.7622 194.1935 278.2062 190.4537 503.8331;
	22.7632 15.3543 13.7008 9.6618 1.7432 356.8762 44.6095 24.3199 185.9651 288.7738 179.7687 522.971;
	17.9721 11.8076 11.0693 7.9119 1.3591 321.7976 40.2247 30.0883 167.1687 195.3281 111.6371 353.7403;
	9.1897 6.8379 5.649 5.8093 7.558 193.04 24.13 48.4032 169.1332 164.1287 63.352 297.2381;
	0.9652 0.8163 0.6981 1.5369 3.4364 58.2372 7.2797 10.7212 41.9792 63.3393 35.3585 114.7079;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];