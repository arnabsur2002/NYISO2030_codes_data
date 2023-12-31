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
	0.0 0.0 0.169 0.4234 0.8393 0.0 0.0 0.0 62.5484 14.5433 3.7814 26.3379;
	0.0 0.0618 0.3182 0.1884 1.3729 0.0 0.0 2.2922 49.2813 54.2273 5.4305 98.2059;
	0.5643 0.3387 0.4917 0.588 1.8059 0.339 0.0424 4.457 42.1077 77.2325 9.2329 139.8685;
	2.4429 1.2502 1.1904 2.4606 3.3082 28.9909 3.6239 7.8147 102.9267 60.1898 9.7117 109.0041;
	2.9264 1.7931 1.9978 2.4326 3.7921 32.2829 4.0354 10.8207 118.2916 62.6261 11.454 113.4162;
	2.8051 1.8782 2.2336 1.5375 3.7069 50.4503 6.3063 14.3781 138.7222 59.401 15.8374 107.5756;
	2.3948 1.555 2.8262 1.0132 3.3914 183.8617 22.9827 29.6087 219.8083 93.7384 34.2771 169.7607;
	1.9011 1.199 2.1669 1.31 3.3608 175.35 21.9188 20.466 208.0092 83.6894 32.293 151.562;
	1.5509 0.8175 1.4296 2.0313 3.7751 138.8474 17.3559 8.4291 201.9358 69.549 23.8597 125.9537;
	1.4722 0.6117 0.9626 2.5124 2.1839 27.7157 3.4645 0.0 93.6965 42.1657 13.8597 76.3623;
	0.2834 0.2251 0.1754 0.406 0.5838 31.0966 3.8871 6.6681 28.0526 21.6428 11.2095 39.1952;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
