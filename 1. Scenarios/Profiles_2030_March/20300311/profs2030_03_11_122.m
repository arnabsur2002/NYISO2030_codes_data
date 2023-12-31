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
	13.1297 9.9969 6.1491 2.8647 1.7307 69.9962 8.7495 49.4282 6.2574 70.4185 42.6101 127.5283;
	21.7772 15.9573 13.69 4.9642 5.4095 117.3183 14.6648 73.101 14.0907 189.1003 118.7028 342.4619;
	23.3124 16.6029 13.8673 8.0414 8.095 100.7632 12.5954 75.0352 32.9075 296.0983 181.6237 536.2359;
	19.2475 13.3017 10.8719 11.2835 3.1252 237.1889 29.6486 66.7739 127.0507 263.8351 201.1775 477.807;
	22.5046 15.9862 10.9512 11.5871 2.9388 308.3072 38.5384 65.2988 83.8279 286.3896 225.7325 518.6533;
	25.6384 16.5256 12.2128 11.5926 2.7177 324.2383 40.5298 64.3847 51.3348 302.156 229.6192 547.2064;
	18.5101 12.9343 9.7232 11.4838 1.9735 377.6643 47.208 67.8643 61.0339 279.9042 193.9257 506.9082;
	6.212 8.9288 9.0754 10.9693 4.2128 395.6532 49.4567 69.7691 113.887 291.9482 159.7481 528.7199;
	2.2332 4.3795 3.4692 7.3503 6.6823 388.2292 48.5287 67.0563 143.3336 242.7447 130.1226 439.6122;
	8.3073 7.1684 5.6077 5.4641 6.2075 236.387 29.5484 36.7943 96.7813 143.5439 85.1613 259.9589;
	1.2182 1.1954 0.7193 1.7987 3.0792 44.371 5.5464 8.5643 20.9644 30.1863 25.6585 54.6676;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
