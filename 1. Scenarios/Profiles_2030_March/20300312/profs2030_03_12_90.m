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
	4.8632 3.6709 3.0019 1.8692 0.4368 56.2274 7.0284 23.2774 92.9888 41.4791 23.8115 75.1189;
	16.5958 13.4917 11.6297 2.2036 1.2955 266.379 33.2974 34.6209 149.6623 43.1716 44.3317 78.1841;
	23.3974 16.6467 13.8887 3.1459 2.6578 315.2186 39.4023 38.875 153.6837 59.7891 94.0509 108.2785;
	25.9839 16.651 13.7744 5.5506 2.8239 185.1149 23.1394 26.4769 105.9462 158.9335 170.1681 287.8296;
	25.9535 16.5424 13.7859 7.4052 3.1413 210.9684 26.3711 27.5562 121.1381 179.8727 205.62 325.7505;
	25.0177 16.5331 13.142 7.8596 3.0239 216.9033 27.1129 29.7121 131.9527 152.0406 208.2184 275.3465;
	14.4221 12.5485 5.0714 9.607 5.8065 267.811 33.4764 55.2036 176.5249 315.8099 249.7643 571.9337;
	7.6379 10.1545 3.4911 8.4344 4.5062 229.685 28.7106 56.2641 165.4342 325.6796 221.2744 589.8077;
	6.1582 4.9039 1.2757 6.3934 2.7676 138.7636 17.3454 50.8549 160.3597 264.4947 178.1036 479.0015;
	5.1904 2.3715 1.0575 6.8958 6.0899 112.9048 14.1131 26.3271 170.8889 169.5951 128.8775 307.1377;
	0.9442 0.7619 0.5413 1.6161 3.4199 65.114 8.1393 9.9013 43.7445 61.5602 39.0425 111.486;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];