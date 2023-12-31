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
	0.1864 0.1982 0.2667 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	7.7236 4.8252 5.7292 0.5643 3.3021 137.9139 17.2392 30.3025 83.5318 37.9796 23.0537 68.7812;
	17.4768 11.6966 12.3912 2.3611 7.7317 292.7003 36.5875 39.0112 170.8326 169.2349 62.6793 306.4854;
	23.3632 16.5713 13.806 5.1984 9.5044 323.2938 40.4117 47.3278 173.8519 259.3114 103.3601 469.6145;
	25.6923 15.2631 13.7624 4.862 7.3576 254.745 31.8431 66.5176 106.004 238.6077 109.3425 432.12;
	25.2792 9.0116 13.5477 5.9548 7.7148 294.3334 36.7917 68.4192 90.9424 203.5089 66.3708 368.5558;
	23.553 8.2637 13.1325 6.4699 7.5404 345.7772 43.2221 68.4808 90.502 132.6596 29.7657 240.2474;
	25.8955 16.5546 13.7855 9.4552 9.2523 446.7699 55.8462 76.601 189.035 313.0328 141.1062 566.9043;
	23.7344 16.3881 13.7008 8.3577 7.929 445.301 55.6626 76.8804 193.176 335.1742 191.5542 607.0025;
	19.0493 13.8507 10.9762 5.4459 5.7125 420.0696 52.5087 76.9371 181.991 296.658 173.6405 537.2494;
	6.0241 2.713 2.7392 5.0275 9.7216 360.8068 45.1009 70.4228 164.9055 263.7637 163.5952 477.6777;
	0.8962 0.7333 0.516 2.3174 4.1665 67.4995 8.4374 12.3117 38.9736 66.9887 40.9188 121.317;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
