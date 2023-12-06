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
	0.4994 0.4018 0.4469 0.0 0.0 0.0 0.0 0.2 0.0 0.0 0.0 0.0;
	4.8017 1.4828 2.0496 1.1207 1.2076 280.7943 35.0993 45.3535 130.411 13.8897 6.7665 25.1543;
	16.982 8.4589 10.8781 3.2893 5.6101 449.9178 56.2397 71.8259 261.9691 13.7891 17.4676 24.9722;
	22.9973 16.3898 13.8173 6.8745 8.5259 462.5055 57.8132 74.7555 279.4727 15.9787 22.1925 28.9375;
	25.5462 16.1547 13.9585 4.2673 6.0471 427.3569 53.4196 59.1115 274.2122 24.2298 5.5134 43.8803;
	26.2008 16.4203 13.9312 4.3173 4.7864 404.0668 50.5083 60.9359 261.6273 26.0551 0.0 47.1859;
	26.0198 16.47 13.8562 3.8912 4.4552 381.9471 47.7434 59.7125 234.3862 23.9523 0.4861 43.3777;
	15.3162 10.8538 11.315 3.413 5.401 316.868 39.6085 19.2823 142.8275 26.72 14.2546 48.39;
	12.8204 9.3709 9.8925 3.2878 5.3308 359.1106 44.8888 13.0541 159.1046 30.7391 20.488 55.6687;
	8.6698 6.9658 8.1434 2.6177 4.1707 371.2205 46.4026 10.6565 192.9699 33.1162 17.6652 59.9736;
	5.7031 5.4882 8.7209 1.0923 0.3589 248.6917 31.0865 6.5082 155.9001 11.9773 2.2056 21.691;
	1.2353 1.078 0.8838 0.4204 0.4949 25.0437 3.1305 3.2378 15.6013 5.2319 3.5743 9.4751;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];