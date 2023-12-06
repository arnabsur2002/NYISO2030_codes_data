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
	8.2952 7.9589 8.0009 8.9494 9.555 98.9875 12.3734 44.3135 14.555 69.2037 41.5458 125.3282;
	16.6206 15.1674 13.2679 11.0255 12.9058 310.0386 38.7548 72.4559 69.5174 205.4654 196.0154 372.0991;
	19.7964 16.6029 13.8 11.6557 12.8273 375.649 46.9561 74.185 129.6826 329.9436 243.3533 597.5298;
	19.1777 13.8806 12.9095 11.6289 10.2707 322.725 40.3406 57.2402 156.2632 341.4275 256.5928 618.3272;
	20.9148 10.2219 12.9065 11.6563 8.7715 222.1702 27.7713 43.2356 82.6792 321.1356 246.5681 581.5785;
	22.6608 10.071 13.4375 11.5416 6.2895 172.8319 21.604 28.454 81.1656 290.8588 229.6532 526.747;
	24.699 13.2188 13.686 11.632 7.2486 390.8977 48.8622 60.6568 220.0374 84.9274 192.2935 153.804;
	20.3388 15.4794 13.7145 11.5984 9.562 421.2027 52.6503 71.4745 261.203 73.6965 179.235 133.4648;
	16.0024 12.6798 10.9063 9.4869 10.5989 425.9337 53.2417 72.1779 275.9422 66.2321 195.1221 119.9468;
	10.7522 9.2061 6.4502 6.5359 9.0484 288.3913 36.0489 56.3308 239.9611 43.2296 157.6287 78.289;
	1.2149 1.0556 0.7149 1.5787 2.5392 46.6903 5.8363 9.9877 29.2584 17.4513 19.3476 31.6044;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
