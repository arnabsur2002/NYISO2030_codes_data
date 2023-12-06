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
	0.0 0.0 0.002 0.0 0.0 0.2257 0.0282 0.0519 0.0 0.0 0.0 0.0;
	8.6147 7.0043 3.4566 1.7892 7.2371 262.4736 32.8092 44.1348 184.8819 68.6399 41.1366 124.3073;
	11.541 9.9715 3.5873 5.4564 12.235 390.6393 48.8299 74.9431 238.3927 192.8901 125.6662 349.3251;
	12.5776 13.2127 8.4437 8.0477 12.2639 410.8451 51.3556 77.672 242.9757 310.7689 187.1201 562.8043;
	18.502 15.193 9.6458 6.6769 2.6417 305.5938 38.1992 66.1986 209.5484 245.4614 189.2889 444.5321;
	22.2569 16.6083 13.4713 9.2625 1.3315 248.7269 31.0909 54.4428 222.2052 282.0513 219.0963 510.7965;
	25.8306 16.6083 13.8 10.916 1.5223 221.3768 27.6721 45.5098 222.7786 295.5689 229.2202 535.277;
	26.2223 16.6083 13.8 11.152 4.2275 325.7252 40.7156 46.3401 163.1106 191.1418 181.5419 346.1589;
	21.9698 16.6083 13.8 8.9382 5.4446 319.5028 39.9379 41.6038 62.0907 155.3293 147.1999 281.3023;
	16.6592 13.4675 11.0319 1.5006 2.6684 264.0431 33.0054 41.1958 21.2012 67.1263 99.4348 121.5661;
	9.6045 7.8768 5.5589 0.4656 0.0 30.4686 3.8086 13.8613 9.4302 16.9085 42.5305 30.6214;
	1.008 0.8765 0.5475 1.2711 2.3724 44.3341 5.5418 8.4667 22.9223 21.3096 19.6529 38.5918;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
