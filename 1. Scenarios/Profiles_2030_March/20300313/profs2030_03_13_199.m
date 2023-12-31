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
	0.4731 0.4088 0.4323 0.0 0.0 0.0 0.0 0.2 0.0 0.0 0.0 0.0;
	2.602 1.9879 3.2259 1.8394 5.4167 180.1244 22.5155 48.8352 75.2361 1.3108 0.0 2.3739;
	9.7561 7.6698 8.2321 5.6986 9.5669 430.1829 53.7729 72.0716 260.2007 0.0 4.337 0.0;
	17.3452 14.7987 13.5729 8.7662 11.0587 449.9944 56.2493 74.8014 275.39 7.8848 14.8255 14.2794;
	16.9807 12.734 13.2788 7.3222 10.0158 349.7067 43.7133 59.248 232.5945 29.3112 31.6741 53.0827;
	20.1768 13.9294 13.6006 9.1187 8.1869 361.3803 45.1725 63.0014 260.0227 47.3675 39.5512 85.7829;
	21.8009 15.7058 13.6464 9.1457 6.3906 348.28 43.535 61.9085 277.2734 48.4747 32.6893 87.788;
	7.2796 9.6775 6.0184 5.0245 6.2153 101.1232 12.6404 18.2193 236.4986 16.453 9.237 29.7965;
	5.435 7.9908 3.5671 2.6545 6.8218 70.133 8.7666 9.5786 196.6629 9.3773 3.4501 16.9824;
	3.9953 6.0151 2.9468 1.9815 7.2227 58.4074 7.3009 6.7858 141.2059 8.3063 1.4163 15.0428;
	2.6815 1.8712 2.076 1.318 3.5777 36.8374 4.6047 3.9203 52.6806 1.0926 0.9294 1.9787;
	0.8323 0.6784 0.6823 1.0008 0.857 30.495 3.8119 1.5488 19.2631 3.6354 4.2428 6.5837;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
