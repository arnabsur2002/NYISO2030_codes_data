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
	0.7183 0.7364 0.7399 1.3216 0.104 98.0751 12.2594 20.7583 105.6997 28.6405 23.9587 51.868;
	7.7171 10.482 9.2682 4.526 2.0962 273.1022 34.1378 38.3418 189.9565 149.7617 177.403 271.2193;
	18.7882 16.6083 13.8 9.1129 4.3051 311.4735 38.9342 43.0766 197.3746 213.8737 204.8788 387.3266;
	21.7502 16.474 12.9533 9.9439 3.9408 216.0177 27.0022 26.6017 150.2631 198.6768 164.6816 359.8049;
	21.3012 16.199 11.218 7.2823 2.9602 188.1052 23.5132 20.6443 109.2492 214.4508 202.7593 388.3717;
	22.2332 15.6486 11.7002 5.5761 2.3003 204.6578 25.5822 21.2937 70.2936 257.1632 238.6735 465.724;
	25.8343 16.5546 13.7256 8.166 6.8509 396.8661 49.6083 61.6218 153.7787 347.0487 260.3809 628.5073;
	23.1451 16.3881 13.7008 8.6687 7.1412 422.9249 52.8656 65.6641 179.5086 346.3514 235.2195 627.2445;
	18.2238 14.9382 10.9331 7.8447 6.1912 421.4615 52.6827 70.2828 189.5975 333.3275 175.8901 603.6581;
	9.0016 7.3243 3.9254 7.3803 9.4363 404.1669 50.5209 74.1738 194.9446 219.7847 101.8798 398.0315;
	1.1035 0.9174 0.5867 1.5751 3.4559 73.4577 9.1822 15.2112 40.1932 67.3788 40.7003 122.0234;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
