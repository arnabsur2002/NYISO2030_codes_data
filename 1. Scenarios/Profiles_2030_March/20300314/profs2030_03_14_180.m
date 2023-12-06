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
	0.0968 0.0972 0.1151 0.0 0.0 0.1251 0.0156 0.1784 0.0 0.0 0.0 0.0;
	3.8989 3.4101 3.1402 4.8371 6.112 13.8918 1.7365 0.5147 48.7285 157.7762 81.9972 285.7336;
	8.8989 8.2942 5.4615 10.1255 13.0428 23.607 2.9509 17.0704 92.6088 276.1686 140.8103 500.143;
	12.5338 10.8094 6.2159 11.2064 13.2886 30.1616 3.7702 31.411 103.7523 289.1439 157.7709 523.6413;
	17.1566 13.0775 7.7755 11.8168 12.2638 179.8149 22.4769 55.4563 223.4961 267.6297 172.245 484.6791;
	21.6707 16.04 12.3932 11.8555 12.1143 231.1999 28.9 56.6861 200.0701 311.4284 200.1408 563.9986;
	23.4136 16.0751 13.2624 11.9042 12.3992 301.5163 37.6895 60.627 201.5028 332.3112 208.2206 601.8176;
	23.8223 16.5824 13.7384 9.294 9.3084 374.7514 46.8439 65.3194 226.9656 340.5527 204.3766 616.743;
	16.9207 14.7253 12.784 6.9396 8.029 387.3302 48.4163 65.7786 234.7643 326.5535 200.6138 591.3903;
	7.3143 5.724 6.1502 4.2272 5.7319 377.9296 47.2412 61.8785 228.7006 279.8105 217.3722 506.7386;
	2.7326 1.5571 1.345 3.0364 2.3813 261.1407 32.6426 36.1212 90.0388 58.8999 103.3706 106.6681;
	1.0116 0.8445 0.6059 1.1666 1.386 63.384 7.923 12.5986 29.4368 16.0226 12.1347 29.017;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
