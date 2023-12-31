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
	0.4095 0.3481 0.302 0.0 0.0 0.1765 0.0221 0.1431 1.1368 0.0 0.0 0.0;
	0.7135 1.3481 1.176 1.5795 4.1449 127.3654 15.9207 20.9216 25.2773 4.3828 18.3023 7.9373;
	2.2283 4.2042 3.893 2.1714 4.5708 182.9331 22.8666 23.298 84.1386 13.0266 10.6552 23.5913;
	5.9177 6.8601 6.1578 2.8677 4.0523 241.7906 30.2238 26.8753 140.9816 16.707 12.6102 30.2565;
	10.8844 9.4838 8.9556 9.3834 12.0935 310.2305 38.7788 18.4776 135.7116 74.679 42.9766 135.2442;
	15.281 13.0473 11.3694 10.8989 12.6049 277.4867 34.6858 13.9001 93.1291 123.4108 67.3337 223.4978;
	14.4686 13.0446 11.3781 10.9221 13.6551 212.4843 26.5605 11.3276 51.192 165.2139 64.2527 299.2034;
	2.1362 1.9179 3.4771 6.9211 11.9911 253.4191 31.6774 18.6323 110.3117 93.4081 74.905 169.1627;
	1.0249 0.8259 1.0978 5.5032 9.9271 250.7312 31.3414 19.516 134.9648 73.7667 102.5242 133.592;
	0.1885 0.0278 0.6711 2.1737 8.4992 236.5226 29.5653 16.1855 121.9886 43.3131 83.3411 78.4403;
	0.3442 0.1184 0.4083 1.1132 5.1204 194.1811 24.2726 6.798 101.6207 8.9853 9.3107 16.2724;
	0.2568 0.2102 0.2449 1.0953 2.5421 50.9434 6.3679 3.6686 41.8474 3.5343 2.1669 6.4006;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
