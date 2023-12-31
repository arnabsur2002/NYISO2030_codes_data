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
	2.902 2.9038 1.013 1.7485 3.3302 54.5704 6.8213 4.8404 83.4356 70.4587 24.1428 127.6011;
	6.5016 7.502 1.1556 5.5722 6.4192 123.6459 15.4557 10.0394 71.5074 106.1373 69.0912 192.2153;
	13.7404 13.8017 2.4831 8.1823 7.9056 183.7348 22.9668 19.9856 104.6936 164.4182 129.7555 297.7623;
	20.2574 12.2663 2.4827 6.9584 7.5286 209.9879 26.2485 19.3489 191.7335 231.9587 214.5848 420.0786;
	21.1026 8.6696 2.3729 6.6543 6.6048 183.184 22.898 17.0139 160.1719 263.4778 235.539 477.1599;
	23.0223 8.3223 5.0341 6.8673 6.0691 168.2562 21.032 16.6614 86.3008 260.2407 215.4919 471.2975;
	25.8378 14.8918 10.4779 10.3638 11.9026 377.7573 47.2197 49.5644 153.5842 322.6064 244.3905 584.2422;
	23.2862 15.9608 12.0899 10.0793 11.9819 409.3196 51.165 56.3645 199.3321 298.3426 218.1136 540.3002;
	17.7908 11.657 7.9094 7.8586 11.9114 418.2251 52.2781 55.5552 237.414 152.4002 174.7276 275.9978;
	6.191 4.4068 2.9928 5.68 12.8008 397.827 49.7284 46.1342 256.3958 61.7127 133.1916 111.7621;
	0.9093 0.7378 0.5145 1.5643 3.8739 65.4348 8.1794 10.7593 35.7725 58.49 37.412 105.9257;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
