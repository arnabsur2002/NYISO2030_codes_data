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
	5.7097 3.7782 3.6479 1.7262 3.0729 184.8463 23.1058 29.6205 137.7488 67.4201 40.0272 122.0982;
	4.1029 6.0029 3.4207 9.7499 12.3112 392.0433 49.0054 72.3615 206.5925 78.1583 78.0256 141.5452;
	6.3528 12.308 8.6934 11.6972 13.5975 426.6106 53.3263 74.8003 230.3162 184.7063 121.524 334.5042;
	24.1002 16.6025 13.2336 11.7986 12.5956 369.4839 46.1855 62.8893 256.7072 134.255 113.3498 243.1366;
	26.3999 16.6083 13.8 11.5883 12.0119 354.9562 44.3695 64.0244 261.4904 125.9135 146.3553 228.0301;
	26.7072 16.6083 13.8 11.5354 11.0659 333.8274 41.7284 65.8774 242.3077 96.5113 151.1019 174.7826;
	26.3192 16.6083 13.8 11.6528 11.1872 319.1312 39.8914 69.2871 162.0737 56.1795 132.8471 101.7414;
	22.9377 16.5406 13.8 11.6217 11.2892 318.9669 39.8709 69.0757 133.4572 82.5978 106.7456 149.5851;
	17.0447 13.1231 11.7999 9.7078 10.2124 318.5487 39.8186 59.1581 136.5485 96.0904 101.2306 174.0204;
	9.1979 7.112 4.9369 5.4003 4.9726 228.3311 28.5414 19.4164 137.6307 65.0956 29.3743 117.8886;
	0.7577 0.6085 0.3718 1.7827 2.6345 55.1684 6.8961 9.997 27.3353 21.4716 17.2609 38.8852;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
