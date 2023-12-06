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
	17.4645 14.2988 9.0881 1.7733 2.1805 170.1624 21.2703 43.4429 84.1634 40.8332 22.0438 73.9492;
	18.3522 14.5296 12.5456 3.029 2.2836 263.8682 32.9835 24.2936 144.9974 116.0176 95.1093 210.1085;
	22.549 16.6042 13.8 3.6137 1.9108 280.1834 35.0229 24.7325 149.8796 188.1379 193.8429 340.7188;
	25.8701 16.474 13.8431 1.5825 0.8212 225.6939 28.2117 49.178 140.7307 230.9327 201.6536 418.2204;
	26.2917 16.5326 13.7859 1.8528 1.2719 249.6324 31.2041 49.5009 187.2683 259.9762 186.7444 470.8184;
	26.1545 16.5331 13.7863 3.4941 1.8773 227.6777 28.4597 43.3693 216.2616 266.8157 183.0631 483.2048;
	25.871 16.5546 13.7855 9.1447 6.4964 320.831 40.1039 60.1667 221.2953 341.4098 245.5585 618.2951;
	23.3419 16.3881 13.7012 7.9039 5.001 342.3048 42.7881 63.9757 201.7502 336.3715 224.5586 609.1709;
	21.1207 16.4447 13.4621 3.4418 3.0229 353.1977 44.1497 71.2764 186.3893 293.6915 199.3411 531.8771;
	16.1692 15.8642 9.886 0.7922 6.2279 412.941 51.6176 74.961 190.9329 222.418 138.006 402.8004;
	0.9671 0.8351 0.5642 1.5084 3.4199 83.9013 10.4877 10.7593 44.8371 66.7232 39.305 120.8362;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
