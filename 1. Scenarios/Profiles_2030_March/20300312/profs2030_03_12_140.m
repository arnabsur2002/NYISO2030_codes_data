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
	0.1575 0.1642 0.24 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	7.6048 6.784 5.6865 1.633 0.7085 158.8673 19.8584 55.1266 69.7728 101.3768 22.1838 183.5939;
	14.1184 11.3286 5.4618 3.0341 0.7642 325.6564 40.7071 60.7801 157.0281 118.9507 18.3624 215.4204;
	20.7279 16.2698 9.7242 5.4052 1.3054 347.3904 43.4238 53.7753 187.2408 182.1087 42.8341 329.7999;
	25.6923 16.474 13.4455 9.3539 3.8528 217.843 27.2304 41.771 153.8286 277.1114 155.1198 501.8504;
	25.7412 16.5326 12.761 9.8701 5.1438 199.125 24.8906 39.597 107.608 337.1894 189.091 610.652;
	23.9689 16.23 12.1558 9.4343 5.5242 182.7581 22.8448 36.0387 61.7555 353.3475 208.3128 639.9145;
	25.8343 16.5546 13.7855 10.8525 9.5456 330.657 41.3321 49.5519 120.727 354.9212 255.173 642.7644;
	23.5351 16.3896 13.8315 11.0853 9.3231 345.6 43.2 48.2957 157.4113 348.2376 235.1089 630.6605;
	22.1266 16.3176 13.7533 11.2008 9.2808 328.7916 41.099 46.2111 174.8229 327.5724 204.3007 593.2356;
	14.4237 11.5984 9.2638 11.6095 12.9801 305.0914 38.1364 44.0265 170.8419 204.2166 147.8205 369.8375;
	0.9729 0.7946 0.5278 2.3888 4.3979 69.5434 8.6929 10.7564 38.4677 65.0423 39.7462 117.7921;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
