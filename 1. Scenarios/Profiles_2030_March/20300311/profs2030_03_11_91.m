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
	8.7579 5.7242 5.6083 2.463 6.9764 118.5276 14.8159 18.968 44.7166 68.594 39.39 124.2242;
	18.2223 13.1377 10.7962 7.0922 12.3173 360.3355 45.0419 65.2246 122.5905 83.4958 79.436 151.2113;
	23.0219 16.6029 13.7314 10.0616 12.5757 405.0143 50.6268 71.0028 170.4982 218.7274 152.5095 396.1166;
	23.2517 16.6083 13.1636 8.8492 7.3101 427.7029 53.4629 61.8291 239.8901 176.7668 138.9305 320.1257;
	23.4512 16.4591 13.2331 7.4244 3.4328 408.904 51.113 48.3209 209.8604 168.1432 164.4109 304.5084;
	24.407 16.1742 13.2747 8.0191 2.6745 385.2409 48.1551 44.5146 189.4141 112.8055 142.5465 204.2914;
	23.2331 15.1192 12.6156 10.3897 4.0217 417.4213 52.1777 63.8615 201.0018 21.9994 41.0865 39.841;
	17.3668 14.9435 11.9183 10.6895 6.5465 439.3606 54.9201 72.5446 220.6534 29.6146 18.3815 53.6323;
	8.6707 8.5422 4.887 6.9254 6.9512 453.0808 56.6351 72.3915 229.814 20.3965 13.1385 36.9381;
	2.802 2.3807 1.5712 3.8121 3.6325 386.4864 48.3108 46.0235 117.7139 13.1688 3.4859 23.8488;
	0.7148 0.5902 0.3768 1.5045 2.4705 45.3219 5.6652 8.4157 19.5882 13.7167 10.8 24.841;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];