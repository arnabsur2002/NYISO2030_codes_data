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
	1.0163 0.8373 0.7086 0.0 0.0 10.5526 1.3191 4.7965 2.0038 0.0 0.0 0.0;
	3.1338 1.1364 0.8248 2.4487 5.7629 138.3288 17.2911 11.5031 43.2699 29.9714 26.9518 54.2783;
	7.8851 8.6646 3.1218 4.5524 6.4029 324.4396 40.5549 42.4766 43.0172 23.159 52.7022 41.9411;
	16.766 16.542 11.4849 6.6831 6.3647 377.8293 47.2287 56.6136 86.3799 41.8909 73.8417 75.8647;
	24.0046 16.3661 11.719 5.5008 6.5904 322.4948 40.3119 58.3464 165.5599 32.0313 21.7014 58.0089;
	25.6144 16.5136 12.2764 6.2907 7.8064 297.2947 37.1618 55.0123 158.559 85.7687 40.1495 155.3277;
	25.6262 16.5214 12.5227 6.6009 8.5868 282.8606 35.3576 45.2658 129.882 151.4138 84.4528 274.2114;
	20.8578 15.7914 9.3733 6.0775 9.0968 134.0688 16.7586 27.4095 62.9122 138.4401 109.16 250.7158;
	15.3213 13.6124 6.3181 4.873 8.8939 92.7406 11.5926 38.5687 70.2556 95.0867 91.5554 172.2027;
	9.9351 9.5999 3.1605 4.6988 8.8006 66.1795 8.2724 50.4445 82.4618 48.2835 57.1069 87.4417;
	6.7461 6.2749 3.8437 5.0783 8.6821 71.5986 8.9498 54.4338 118.6262 16.0577 28.703 29.0805;
	1.6447 1.4734 1.1245 1.0666 1.7499 70.4309 8.8039 18.2728 38.4284 13.1657 14.7357 23.8431;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
