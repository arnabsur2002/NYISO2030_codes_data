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
	1.019 0.8207 0.6949 0.0 0.0 9.4875 1.1859 4.3158 1.8853 0.0 0.0 0.0;
	9.159 6.1639 5.6925 2.6428 2.5136 196.8832 24.6104 29.5845 156.5266 39.6623 0.0 71.8287;
	21.5699 14.5189 12.1135 4.8128 3.6828 343.8795 42.9849 51.564 216.9665 57.8356 9.1282 104.7407;
	24.712 16.6083 13.8 6.865 4.1593 382.2528 47.7816 57.9027 215.8087 81.1328 18.3869 146.932;
	25.5438 16.2569 12.8196 5.2804 5.1093 351.5557 43.9445 49.2802 170.4103 67.4956 59.6662 122.235;
	25.6144 15.9342 10.9067 5.921 7.222 351.8892 43.9861 37.7531 179.1257 119.7523 119.9988 216.8722;
	25.6004 16.1609 10.9609 6.3519 9.2595 366.347 45.7934 41.742 199.5669 169.1412 152.7971 306.3157;
	24.3554 15.9147 12.7849 6.1234 11.3738 361.7368 45.2171 64.2531 213.9643 165.5493 116.8113 299.8108;
	22.4793 14.877 12.1095 4.69 10.7017 351.9788 43.9973 68.257 194.5552 154.6102 102.238 280.0;
	17.546 10.2985 7.4871 3.7369 8.8396 324.5775 40.5722 67.7897 140.8483 150.9129 80.8332 273.3041;
	8.1732 3.2917 2.3418 3.0123 6.4226 252.3481 31.5435 48.4732 118.5526 203.6285 60.0759 368.7724;
	1.2988 1.0345 0.7818 1.326 2.0625 89.1194 11.1399 14.7718 43.0449 167.021 31.9517 302.476;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
