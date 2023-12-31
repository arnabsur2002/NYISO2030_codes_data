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
	0.1575 0.1621 0.24 0.0 0.0 0.0026 0.0003 0.0 0.2394 0.0 0.0 0.0;
	6.2954 6.3385 4.17 1.2953 1.2969 399.2175 49.9022 57.2461 216.6881 24.0172 22.764 43.4953;
	11.89 11.0816 8.9996 1.5895 2.0156 431.4815 53.9352 42.5945 243.093 52.3774 47.4864 94.8558;
	18.2623 16.0357 13.4477 3.1021 2.4095 403.0326 50.3791 44.5146 228.2326 69.044 72.4318 125.039;
	25.2768 16.474 12.8575 5.7058 2.2005 280.4286 35.0536 49.0379 193.5766 59.5792 139.0862 107.8984;
	24.5527 16.5326 11.15 6.3662 1.8952 324.9078 40.6135 54.9678 193.6121 111.8022 180.5677 202.4745;
	23.7715 16.5161 9.6013 6.418 2.0518 348.2275 43.5284 54.7153 219.7177 173.0403 199.9832 313.3771;
	25.8343 16.5266 12.129 9.4309 9.0542 398.0762 49.7595 63.4543 282.5583 341.4098 259.071 618.2951;
	23.4147 16.3881 13.6044 8.5859 9.5976 380.2504 47.5313 61.6768 279.8389 336.3715 252.3974 609.1709;
	21.3922 15.0782 11.746 6.5945 10.2662 348.5249 43.5656 56.2936 277.8438 299.7164 237.3376 542.7883;
	13.5697 12.1635 8.4296 5.7175 13.2977 314.8037 39.3505 35.0191 245.2782 233.0181 204.7229 421.9971;
	0.9884 0.9522 0.6167 1.5409 4.1473 77.1152 9.6394 9.8843 48.6094 67.9265 41.7659 123.0154;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
