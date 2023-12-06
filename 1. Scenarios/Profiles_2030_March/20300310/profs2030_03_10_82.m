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
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.9238 0.3163 0.7232 0.1117 1.4236 148.5448 18.5681 21.5642 108.7852 9.2427 3.5108 16.7385;
	1.0047 0.5876 0.9405 0.9452 4.5388 289.0829 36.1354 22.1902 86.4152 27.8623 11.8618 50.4588;
	1.1282 0.7507 0.9605 1.6722 5.9264 291.1978 36.3997 14.4383 67.0434 59.6929 24.1775 108.1042;
	2.729 1.416 1.9071 1.6167 4.4375 160.6129 20.0766 15.631 124.8175 64.9788 24.5322 117.677;
	3.0271 1.2784 2.097 1.2858 3.6869 146.801 18.3501 22.08 196.497 72.6876 19.5554 131.6376;
	3.2895 1.5649 2.2451 1.2547 3.3214 192.3056 24.0382 33.3215 232.7704 85.7126 21.5182 155.226;
	10.6577 4.7246 3.8984 2.455 3.5308 380.9183 47.6148 60.7514 240.0708 195.2049 51.4405 353.5173;
	8.3662 4.596 2.9511 2.4806 3.176 353.7184 44.2148 57.3148 191.1723 161.4555 52.426 292.3968;
	4.5895 3.0167 1.9471 2.0982 2.2762 291.2043 36.4005 51.1922 119.5826 88.0118 49.5115 159.3899;
	1.7005 1.1959 1.3641 0.7493 0.3486 135.7566 16.9696 33.8967 25.2461 19.9819 29.8184 36.1873;
	0.2467 0.2189 0.1557 0.4331 0.5184 51.4126 6.4266 10.5134 23.954 19.0658 24.3772 34.5282;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
