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
	0.1628 0.198 0.2417 0.0 0.0 0.0 0.0 0.007 0.1896 0.0 0.0 0.0;
	4.6581 6.6859 5.5759 1.5018 1.0289 91.1477 11.3935 7.5536 80.7614 41.1959 22.9505 74.6059;
	18.9551 15.8449 13.9493 3.8135 2.0971 89.3048 11.1631 3.5691 117.6235 178.2135 83.1648 322.7457;
	24.9733 16.9642 14.3578 6.4591 2.995 105.8623 13.2328 8.9498 155.6332 259.9587 135.4296 470.7867;
	26.6459 17.2695 14.3215 6.13 4.5075 140.2323 17.529 23.5812 181.047 234.7357 159.8735 425.1078;
	26.8947 17.3732 14.272 6.8625 5.8224 179.4853 22.4357 28.0403 191.5052 215.2459 169.8121 389.8117;
	27.0522 17.3474 14.2688 7.3648 6.2809 198.521 24.8151 29.0691 177.1214 178.798 158.8114 323.8042;
	27.2992 17.0387 14.2834 9.5204 9.7652 362.7024 45.3378 61.7962 192.1091 340.2138 234.5154 616.1292;
	26.64 16.6823 14.1932 8.3576 9.2084 368.142 46.0178 64.2133 155.1028 336.3715 216.84 609.1709;
	25.0617 16.2148 13.7408 5.5846 8.5062 349.9435 43.7429 67.6854 118.4608 279.2171 175.2313 505.6638;
	13.9255 12.1662 9.7481 5.245 12.1127 305.2989 38.1624 69.8752 108.3612 144.1614 149.4499 261.0772;
	1.3766 1.4213 0.9798 2.1567 4.1656 63.3458 7.9182 14.361 35.0332 65.2612 39.8848 118.1884;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
