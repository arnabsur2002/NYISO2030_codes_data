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
	4.8896 3.1899 1.8156 2.3962 1.4492 65.6436 8.2054 5.1413 88.0443 56.7388 47.5865 102.7544;
	8.3767 5.3032 3.7539 2.9593 3.3545 66.2755 8.2844 7.6524 115.8109 148.8345 85.9247 269.5402;
	9.3422 4.6041 3.9616 4.7446 4.8035 57.199 7.1499 10.0937 142.6882 241.2631 125.6576 436.9289;
	7.4775 5.5427 7.102 10.6934 13.3978 50.2135 6.2767 10.448 190.6591 315.5236 161.9527 571.4151;
	14.9046 10.2333 11.1117 11.1284 13.5659 74.3242 9.2905 12.0597 196.1302 289.9289 190.2973 525.0629;
	17.1541 12.5621 11.419 10.9189 13.3912 58.9597 7.37 8.3883 157.7065 273.1733 188.6282 494.7185;
	10.8481 6.7047 6.3963 8.0369 9.3752 55.9012 6.9876 2.0333 145.1613 209.2783 140.5354 379.0043;
	8.3436 5.9654 4.0483 6.0453 8.8617 74.3628 9.2954 1.7327 155.026 188.5091 120.3879 341.391;
	4.9053 3.8577 2.9825 3.8838 8.6277 127.6309 15.9539 4.7248 186.2566 153.6576 95.5907 278.2749;
	2.1501 1.8245 1.4268 1.0961 6.3853 319.7936 39.9742 18.9751 236.0133 18.4347 9.663 33.3854;
	0.6015 0.4568 0.267 1.0275 2.2403 79.5683 9.946 8.1761 57.4925 0.0 3.5348 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
