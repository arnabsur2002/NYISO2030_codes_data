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
	8.6001 7.1517 4.6401 1.0601 1.1085 236.0131 29.5016 57.953 190.1184 333.9795 28.7502 604.8388;
	17.3715 15.0589 8.2564 1.934 3.3246 342.0655 42.7582 66.8951 242.9216 312.5818 90.4492 566.0874;
	22.8929 16.6083 13.0041 3.4007 4.3337 328.8372 41.1047 68.3973 224.0087 282.8996 110.245 512.3328;
	25.1462 16.474 13.4227 3.6698 2.2711 169.7473 21.2184 68.0775 144.5813 322.3946 156.1355 583.8586;
	25.4988 16.5326 13.7859 3.9535 2.5829 199.8082 24.976 72.055 172.5252 343.7389 184.5571 622.5132;
	25.751 16.5331 13.7863 3.9337 2.2985 212.4096 26.5512 70.5334 199.9677 343.2094 192.8899 621.5542;
	25.8343 16.5546 13.7603 5.3819 2.1782 297.5973 37.1997 64.5654 232.9682 344.7367 240.522 624.3202;
	22.7211 16.3881 13.4421 4.7669 1.6569 289.322 36.1653 61.9371 203.8484 338.6698 207.6734 613.3331;
	16.8272 13.1704 8.3799 3.1348 1.3895 251.7955 31.4744 58.2302 163.6954 322.5611 155.3222 584.1601;
	7.5278 6.6717 3.629 2.9496 9.5309 271.3982 33.9248 54.4727 139.316 327.581 120.102 593.2511;
	0.9368 0.8177 0.5584 1.5467 4.1521 65.4306 8.1788 13.1042 42.0209 67.3752 39.0969 122.0169;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
