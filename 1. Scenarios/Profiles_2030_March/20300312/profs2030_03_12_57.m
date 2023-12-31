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
	0.1575 0.1621 0.24 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	4.3077 1.6915 1.4331 1.5232 1.567 153.543 19.1929 23.0904 92.8881 117.1594 24.1151 212.1763;
	17.1227 13.1839 10.8985 4.4492 3.5666 237.9604 29.7451 33.3869 100.201 191.9976 121.8138 347.7088;
	23.0137 16.6083 13.8 6.9953 3.8086 235.5989 29.4499 38.7291 82.251 253.741 171.5168 459.5265;
	21.8644 16.1678 12.2168 6.8469 1.1535 161.4782 20.1848 35.5532 69.3677 336.4486 191.0446 609.3105;
	20.3731 12.4455 8.4547 6.5727 0.4654 257.4909 32.1864 31.4018 109.3584 335.3019 189.179 607.2337;
	22.2847 13.4804 10.4382 7.5137 0.5995 301.872 37.734 37.8138 140.005 335.511 195.9428 607.6124;
	26.0776 16.5546 13.7855 11.4422 8.0895 385.3278 48.166 66.7125 202.0425 350.531 270.0508 634.8138;
	24.3428 16.5463 13.7719 11.9321 8.7503 359.8357 44.9795 70.0107 191.9567 347.9083 270.8739 630.064;
	19.6635 15.9563 12.6355 10.9338 7.8529 255.1955 31.8994 69.1577 167.7015 344.7138 258.4844 624.2788;
	6.0384 5.5205 4.4327 6.7342 9.0198 53.9741 6.7468 53.1224 137.7942 249.0899 151.0533 451.1034;
	0.9382 0.7519 0.565 1.6666 3.4398 58.226 7.2783 10.1493 36.829 63.5321 37.1924 115.0569;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
