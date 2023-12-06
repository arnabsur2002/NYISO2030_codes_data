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
	9.9553 7.2162 5.5101 1.3403 5.4412 171.4718 21.434 19.3635 74.8984 28.7647 22.884 52.0931;
	17.0541 11.6618 4.125 1.5362 4.2582 326.1698 40.7712 41.3755 195.8361 41.2455 46.6986 74.6958;
	20.381 15.6066 6.2233 2.6586 3.6729 348.1667 43.5208 46.4067 202.9434 66.5067 89.3429 120.4441;
	21.8344 16.201 8.856 3.2682 2.4917 249.9761 31.247 21.3255 121.4234 176.8603 161.3568 320.2951;
	23.3672 16.5326 13.0269 4.106 3.6875 220.8885 27.6111 14.225 108.2563 231.7662 188.2319 419.73;
	25.4833 16.5331 13.7863 3.8806 4.6212 186.6636 23.3329 12.7828 117.4033 209.5468 190.7839 379.4906;
	25.8343 16.5546 13.7855 3.7095 9.3535 328.4124 41.0516 42.4633 192.0417 225.3553 239.2173 408.1199;
	23.0172 16.3881 13.7008 1.9837 8.6125 350.3409 43.7926 44.3543 185.9128 228.8696 218.6688 414.4843;
	17.4625 12.6828 10.975 1.8899 7.6976 333.4584 41.6823 35.9162 153.8561 152.0553 195.3801 275.3731;
	8.7595 6.3017 4.5503 2.8239 11.111 283.3031 35.4129 14.4859 114.4476 147.7002 237.5784 267.4859;
	0.9553 0.7734 0.5577 1.5467 3.8394 60.6844 7.5856 9.9124 39.604 61.9783 50.8815 112.2432;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];