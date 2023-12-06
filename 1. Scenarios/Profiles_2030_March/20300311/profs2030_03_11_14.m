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
	8.2367 6.6641 6.5978 2.7205 7.1617 253.6346 31.7043 49.1231 73.3668 70.0914 41.9933 126.936;
	16.9117 13.5149 12.6564 4.5944 12.1574 340.481 42.5601 68.6184 141.8912 181.204 139.4205 328.1616;
	22.7836 16.6029 13.8 6.2819 12.6449 360.4995 45.0624 67.4137 151.6208 302.5726 207.1964 547.9608;
	26.3559 16.6083 13.8758 10.8887 11.2015 369.433 46.1791 66.2755 160.1394 287.9523 212.328 521.4833;
	26.7071 16.6983 14.1025 11.2619 11.5119 405.6216 50.7027 67.3439 189.4144 324.1139 223.8936 586.9723;
	26.9372 16.85 14.2276 11.2658 11.4784 423.8961 52.987 69.4599 212.9207 320.7816 223.386 580.9374;
	26.8524 16.7701 14.0244 11.3464 12.184 444.057 55.5071 73.6175 250.6083 183.1756 147.4589 331.7321;
	24.8423 16.7298 13.8819 11.413 12.3905 441.6601 55.2075 75.9174 250.5242 140.9501 71.8066 255.2616;
	21.8907 16.3773 12.8049 9.2067 12.2052 440.1402 55.0175 76.0665 246.8449 112.7243 65.9912 204.1444;
	14.431 14.2082 6.9241 6.9274 9.8738 396.1636 49.5205 70.7471 216.206 113.1777 44.2833 204.9655;
	1.1283 1.3052 0.5918 1.3376 3.2069 64.8828 8.1103 10.8757 35.5849 40.7543 19.4719 73.8063;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
