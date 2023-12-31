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
	1.0384 0.844 0.7132 0.0 0.0 12.0354 1.5044 4.8394 3.8813 0.0 0.0 0.0;
	8.8882 6.9369 5.7163 0.8853 3.2631 390.5983 48.8248 51.2758 217.0886 54.3783 12.0882 98.4794;
	17.3965 14.007 10.3079 1.6412 2.3092 326.0484 40.756 50.3013 169.9705 70.9272 35.3105 128.4496;
	23.288 16.6083 13.6685 3.8156 2.4577 321.0441 40.1305 55.2915 182.7584 124.1107 106.9462 224.7652;
	25.4076 16.3661 13.8 3.6755 5.8259 338.2919 42.2865 55.8388 215.9291 191.1868 149.7493 346.2404;
	25.6786 16.5136 13.7966 4.9687 9.7214 374.0035 46.7504 57.1417 239.6822 167.4204 156.1907 303.1994;
	25.6262 16.5214 13.7764 5.4812 10.3911 386.7167 48.3396 56.7942 215.1328 111.369 155.8192 201.6899;
	23.8135 16.0199 13.6344 3.8542 5.0252 342.7737 42.8467 59.1188 115.6218 73.8724 112.3667 133.7833;
	20.335 16.2659 14.1932 2.8731 2.8924 309.382 38.6728 55.3708 68.0349 93.3556 108.9227 169.0676;
	14.2332 14.1075 13.6687 1.9325 2.1599 256.468 32.0585 48.9259 55.2355 100.345 97.3877 181.7254;
	5.5727 6.6843 5.646 1.9933 3.7819 144.0283 18.0035 20.6584 63.0267 47.2981 52.0745 85.6571;
	1.273 1.0894 0.7961 0.8856 1.4921 62.8602 7.8575 11.3633 32.0809 11.8135 12.5892 21.3943;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
