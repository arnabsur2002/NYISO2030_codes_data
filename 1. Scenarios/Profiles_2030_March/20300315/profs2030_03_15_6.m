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
	0.4095 0.3543 0.302 0.0 0.0 0.1765 0.0221 0.3497 0.0956 0.0 0.0 0.0;
	3.9067 2.9704 2.2473 1.5001 4.1092 97.4704 12.1838 20.9199 92.4515 51.3846 33.0495 93.0579;
	3.333 1.8256 1.6564 3.62 7.823 185.8005 23.2251 39.4361 212.5056 215.1734 113.6998 389.6804;
	3.0365 2.0836 1.5162 5.6208 9.1221 247.6877 30.961 43.1026 237.4875 330.3792 147.9558 598.3187;
	11.3038 9.1615 7.975 10.6527 13.3174 274.9015 34.3627 25.7593 212.2115 339.9567 123.8544 615.6637;
	20.6416 16.0449 12.8046 11.1451 13.3377 325.607 40.7009 30.0381 202.8737 335.1495 158.9239 606.9578;
	23.1078 16.5731 13.2809 11.2082 13.3923 312.9885 39.1236 29.5735 197.3592 306.4026 165.4961 554.8969;
	10.3762 5.817 5.9517 10.6587 11.5182 251.3175 31.4147 22.0119 247.3598 202.6938 93.7685 367.0797;
	5.2593 1.9932 2.7527 9.7335 10.4386 197.7295 24.7162 15.1259 255.8749 177.2027 72.6563 320.9151;
	3.3516 1.4747 3.0323 7.7272 9.7731 175.4184 21.9273 14.7708 255.6139 148.9159 38.5732 269.6876;
	2.8257 1.8791 2.5829 5.7289 7.3477 280.2006 35.0251 24.8754 252.4865 65.0179 8.5274 117.7478;
	1.0241 0.8119 0.6015 2.1102 2.4911 76.08 9.51 8.9267 54.5565 67.9478 6.3655 123.0538;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];