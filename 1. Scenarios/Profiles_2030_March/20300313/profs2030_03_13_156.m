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
	0.4731 0.4018 0.4224 0.0 0.0 0.0 0.0 0.4652 0.4063 0.0 0.0 0.0;
	8.0948 7.0384 2.6797 1.7263 4.6682 300.1838 37.523 54.6172 216.9503 8.117 3.0136 14.7;
	18.6935 15.4005 11.4278 1.3748 3.8791 420.7799 52.5975 72.9504 271.3186 37.4136 19.278 67.7563;
	23.0429 16.6464 13.8015 1.9601 4.3151 420.9955 52.6244 75.01 274.0532 69.357 34.7962 125.606;
	24.4219 16.1547 13.6408 3.2238 5.8041 216.2068 27.0258 63.2907 217.5626 108.2958 33.891 196.1244;
	25.297 16.3712 13.7627 6.5356 7.1607 208.769 26.0961 65.9645 206.2131 147.6552 35.2956 267.4044;
	25.2047 16.4488 13.769 7.116 7.3957 215.8863 26.9858 66.4047 198.6478 206.1802 46.5489 373.3937;
	15.8868 14.0696 9.5077 4.7948 8.0611 150.5157 18.8145 40.5608 176.3375 293.257 50.745 531.0901;
	15.455 11.6564 9.0301 2.47 7.4683 163.0559 20.382 35.291 199.6378 288.7716 44.2149 522.9671;
	10.7753 7.3367 6.602 1.609 6.965 203.2584 25.4073 39.837 212.3596 262.0771 28.6217 474.6232;
	5.891 2.7347 3.3316 0.881 2.0776 164.387 20.5484 46.3046 156.2995 110.5209 2.468 200.154;
	0.7904 0.7722 0.5632 0.3181 0.1766 23.1018 2.8877 7.3157 18.8176 34.9563 3.4686 63.3061;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
