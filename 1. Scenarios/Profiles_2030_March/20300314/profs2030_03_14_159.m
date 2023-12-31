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
	0.1221 0.1307 0.188 0.0 0.0 0.1251 0.0156 0.1784 0.0 0.0 0.0 0.0;
	3.8286 3.0979 2.4691 5.4137 3.9094 36.5216 4.5652 6.4456 48.675 62.7316 20.6498 113.6074;
	8.6101 6.5828 4.5887 10.1751 10.8266 62.4662 7.8083 3.0774 66.3185 134.3911 77.4223 243.3831;
	15.2756 10.9648 6.8405 11.1727 12.3719 102.083 12.7604 5.9522 91.0983 226.2607 145.9197 409.7595;
	23.8371 16.1468 13.5767 11.4861 12.5147 385.1157 48.1395 62.7527 252.836 259.2025 161.9723 469.4173;
	23.4451 16.0537 13.2545 11.3496 12.3427 364.2809 45.5351 60.075 247.8443 293.7202 181.8822 531.9291;
	20.1554 15.8233 13.224 11.2986 11.961 356.7479 44.5935 53.7486 238.6882 289.7443 172.1706 524.7287;
	20.0864 16.5519 13.2935 6.2106 6.0193 384.1855 48.0232 53.926 229.0778 96.6588 38.9594 175.0497;
	17.787 15.5691 11.6909 4.4624 4.8222 394.8544 49.3568 60.2486 230.2456 33.5214 20.2404 60.7075;
	13.8737 11.3843 9.1151 2.1732 3.7996 373.4036 46.6755 59.7216 218.1099 11.52 29.4279 20.8627;
	5.5475 5.1543 5.055 0.8655 2.9898 105.3713 13.1714 20.6633 69.4357 0.0 15.6599 0.0;
	0.8987 0.7554 0.5982 0.6423 1.4399 32.1366 4.0171 6.2471 25.4063 7.2071 8.9033 13.0521;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
