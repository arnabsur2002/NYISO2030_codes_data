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
	0.4095 0.3481 0.302 0.0 0.0 0.1765 0.0221 0.1431 0.0956 0.0 0.0 0.0;
	2.6232 3.026 2.085 0.3472 1.6011 96.182 12.0227 21.0913 71.8067 128.7319 35.3974 233.1342;
	3.6198 4.0313 2.7503 0.7522 3.9151 41.1917 5.149 14.776 48.7571 241.5016 93.9689 437.3609;
	6.6979 5.0591 3.2215 1.569 5.208 29.909 3.7386 11.8806 33.8154 298.2655 141.9797 540.1606;
	14.9503 11.6988 10.5723 6.5683 12.7972 60.5748 7.5718 13.641 89.2395 316.6388 205.8782 573.4347;
	15.3608 13.7986 11.7984 10.3728 12.6454 71.9418 8.9927 21.9016 99.0556 281.8667 232.1224 510.4624;
	11.1613 13.4944 11.5641 10.9851 12.9667 52.605 6.5756 20.2296 78.1294 271.8772 217.6916 492.3713;
	6.9316 9.3967 8.6797 9.8376 11.4083 78.244 9.7805 9.9686 145.5095 218.9209 151.4346 396.4671;
	8.4982 7.5632 7.5977 7.5532 10.0531 116.917 14.6146 8.8985 173.7434 230.22 148.8561 416.9298;
	7.274 6.9404 5.8623 4.0943 8.3106 140.4002 17.55 11.6593 187.3889 248.7034 168.7361 450.4033;
	2.223 1.9204 1.9448 0.7952 1.443 141.2545 17.6568 21.9371 170.0775 108.1958 38.8624 195.9432;
	0.2305 0.2705 0.2677 1.09 1.2786 50.6424 6.3303 4.1483 41.7818 30.1307 6.3608 54.5668;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];