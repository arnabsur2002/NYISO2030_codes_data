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
	0.1629 0.1817 0.2471 0.0 0.0 0.0026 0.0003 0.321 0.4497 0.0 0.0 0.0;
	5.8244 5.4448 2.9952 1.3621 0.5253 67.0635 8.3829 13.7309 84.1185 37.4062 21.3708 67.7428;
	21.3613 15.0941 11.4567 3.27 3.565 291.6907 36.4613 25.0137 168.4161 44.7462 14.3437 81.0357;
	26.4844 16.994 13.8957 6.0723 6.247 358.5573 44.8197 40.0215 198.3674 52.1609 57.5563 94.4638;
	27.2642 17.3152 14.2002 7.4017 6.0291 260.4406 32.5551 40.1286 171.5268 83.42 173.099 151.0742;
	26.878 17.1475 14.0825 8.4604 4.8834 230.3835 28.7979 29.5824 141.1447 172.6339 195.6706 312.641;
	26.3409 16.7733 13.8928 8.9456 3.91 208.1507 26.0188 21.3629 114.5098 216.317 195.5023 391.7513;
	25.8856 16.5546 13.786 10.9739 8.5471 352.4555 44.0569 54.989 204.31 340.0207 252.4709 615.7795;
	23.2726 16.3881 13.7008 10.9041 8.5633 360.9197 45.115 59.4951 205.2799 334.867 243.7728 606.4462;
	18.4698 14.1084 12.254 9.3529 7.8209 339.1267 42.3908 58.5849 189.7519 277.2631 244.1052 502.1251;
	9.004 6.7912 6.3772 9.1473 10.4023 302.4754 37.8094 57.0225 136.5847 210.4564 246.3261 381.1378;
	0.9901 0.7624 0.7096 2.3516 3.4641 81.1597 10.145 14.3221 36.6441 66.6101 40.9197 120.6313;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
