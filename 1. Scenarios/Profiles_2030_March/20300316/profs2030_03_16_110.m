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
	1.0111 0.8207 0.6949 0.0 0.0 9.4835 1.1854 4.5064 0.6066 0.0 0.0 0.0;
	7.2886 6.8904 4.6827 6.0966 3.3109 113.9537 14.2442 3.837 103.6056 45.6972 33.1104 82.758;
	12.7712 14.2128 8.6719 6.5894 7.4002 239.8941 29.9868 16.6875 156.7892 174.6783 108.2668 316.3435;
	18.989 16.6083 12.7936 7.3669 8.4592 313.9541 39.2443 31.4804 182.932 263.6864 138.9356 477.5376;
	22.6036 16.3661 12.7273 5.6881 7.1692 309.7885 38.7236 20.5838 172.492 166.5488 130.1923 301.6208;
	25.5314 16.5136 13.4447 7.0383 8.2505 290.3519 36.294 12.6469 144.4082 155.5895 148.9544 281.7735;
	25.6262 16.5214 13.785 7.469 8.9861 306.3822 38.2978 12.5566 118.5261 167.8799 160.1348 304.0314;
	24.0711 15.9262 13.4455 7.4881 7.3792 330.1066 41.2633 39.5141 95.2487 129.4995 124.3456 234.5244;
	20.7696 15.8197 13.2715 5.9279 7.0722 330.2341 41.2793 48.1659 98.7753 144.3918 105.7124 261.4944;
	14.2467 12.5245 10.3626 5.6852 7.4677 308.9992 38.6249 47.3991 98.9177 119.7552 74.3414 216.8773;
	5.7304 5.6673 3.1412 5.7808 9.091 208.3409 26.0426 21.7119 103.0221 87.5368 42.9249 158.5297;
	1.2881 0.9945 0.7573 1.4083 2.2873 69.5247 8.6906 11.6358 33.853 28.4065 13.3021 51.4444;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];