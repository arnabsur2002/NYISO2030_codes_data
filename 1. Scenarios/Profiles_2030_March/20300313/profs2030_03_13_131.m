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
	0.4731 0.4018 0.4224 0.0 0.0 0.0 0.0 0.2 0.0 0.0 0.0 0.0;
	3.5406 2.8467 3.7105 4.616 2.514 380.6115 47.5764 48.1779 218.6758 11.6212 5.0309 21.0461;
	12.3178 11.6681 8.6872 9.8091 7.5747 444.16 55.52 73.9565 275.0303 29.2049 5.9654 52.8903;
	19.1908 16.6083 13.6217 11.4098 10.2671 447.4934 55.9367 76.8797 277.6299 57.1664 11.1496 103.5288;
	20.5219 16.1234 13.6233 10.7161 9.6555 308.4783 38.5598 70.3986 202.1887 94.9363 22.87 171.9302;
	23.7768 16.1033 13.6128 9.8371 8.9804 327.9151 40.9894 72.1313 199.4178 93.7201 16.5206 169.7277;
	25.0771 16.2897 13.6192 8.1027 8.0982 338.8445 42.3556 70.256 192.6748 82.9851 10.5687 150.2865;
	16.2807 10.7404 9.2585 5.379 6.3404 164.289 20.5361 24.4461 91.1531 60.6648 8.7354 109.8643;
	14.4184 10.1991 8.2857 4.3451 5.6318 113.5362 14.192 12.6898 73.7248 69.1883 14.5712 125.3004;
	8.4792 6.591 5.7634 3.2351 4.7898 75.1595 9.3949 9.171 53.3194 62.4464 21.1069 113.0908;
	1.8201 0.9782 1.455 1.4349 0.9288 17.217 2.1521 4.379 11.9064 21.0891 9.0289 38.1925;
	0.5219 0.3225 0.3108 0.4161 0.6904 7.2054 0.9007 1.6537 2.5386 7.1849 4.2205 13.012;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
