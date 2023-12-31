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
	0.42 0.3643 0.3086 0.0 0.0 0.1765 0.0221 0.4748 0.0956 0.0 0.0 0.0;
	1.9962 2.5641 1.6868 0.5374 0.0 95.3733 11.9217 4.823 146.0452 31.6652 34.0526 57.3459;
	7.9015 5.7802 3.7869 1.5591 0.6737 183.3756 22.9219 16.0344 287.0883 32.3869 60.0391 58.6529;
	12.5384 7.2502 5.2133 4.0883 1.9958 265.1372 33.1422 29.06 295.3813 30.9514 72.3823 56.0532;
	12.457 9.9884 10.441 10.4711 12.1137 321.134 40.1417 39.3419 250.5523 63.4327 41.9169 114.877;
	11.3422 12.7734 12.0802 11.1451 11.9261 274.0312 34.2539 39.5632 211.3161 114.9966 77.5175 208.2596;
	12.5079 13.3187 12.3356 11.1833 11.8914 199.1249 24.8906 37.7969 201.3175 194.6537 111.8151 352.5191;
	10.7253 10.0524 8.9446 6.9889 7.3349 210.8541 26.3568 48.971 247.1697 121.2592 81.0714 219.6011;
	9.0494 7.4587 6.8271 5.0025 5.6815 223.0346 27.8793 47.3031 245.8384 83.4111 68.8342 151.0581;
	6.8358 6.0453 5.1703 1.4225 3.4608 218.2364 27.2795 47.5183 215.9117 47.6685 33.3795 86.3279;
	2.0371 2.0659 2.0764 0.7069 1.6091 247.4826 30.9353 46.853 166.7966 16.0053 6.4054 28.9857;
	0.6777 0.7127 0.5591 1.1196 1.8147 57.9299 7.2412 8.8853 51.5722 16.4076 6.4296 29.7142;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
