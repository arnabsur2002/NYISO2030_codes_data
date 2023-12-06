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
	0.42 0.3734 0.3086 0.0 0.0 0.1765 0.0221 0.1431 0.0956 0.0 0.0 0.0;
	2.9974 3.3221 2.2567 0.485 0.0 66.9998 8.375 2.8242 47.5294 62.3382 17.9413 112.8949;
	9.0357 8.342 5.6218 0.9666 0.2555 205.223 25.6529 20.6639 107.4177 59.745 43.0304 108.1985;
	15.6669 14.1593 8.9479 1.9787 1.3675 300.7145 37.5893 37.7515 156.7387 38.9787 89.0645 70.5907;
	16.0244 15.7286 11.0364 6.0288 12.1315 302.9852 37.8732 24.7887 228.9773 64.5282 123.3785 116.861;
	17.0408 14.5901 11.3187 3.434 10.1119 283.0892 35.3862 21.6837 250.7751 68.3128 129.2116 123.7149;
	18.5228 14.0415 11.2873 2.374 9.2859 260.4015 32.5502 19.7908 236.7512 92.4813 97.0507 167.4841;
	18.611 11.9682 9.2828 4.5831 8.7733 291.0475 36.3809 27.0182 232.1512 196.305 86.995 355.5095;
	14.5131 10.3967 8.1066 5.6919 9.5922 282.3264 35.2908 24.0073 223.1438 185.7439 112.7987 336.3833;
	7.9176 6.4091 5.2498 4.2608 9.525 242.3212 30.2901 21.4278 212.0963 144.195 101.7182 261.1381;
	1.3834 1.2092 1.4201 1.4602 4.2282 180.6177 22.5772 23.8264 191.3457 15.6416 10.6732 28.327;
	0.393 0.2585 0.2672 1.0481 1.2984 55.0134 6.8767 8.8947 47.9062 3.3319 3.8006 6.0341;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];