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
	0.4095 0.3481 0.302 0.0 0.0 0.1765 0.0221 0.1431 0.0956 0.0 0.0 0.0;
	1.0307 2.5368 2.6448 0.6893 0.4939 55.1728 6.8966 0.0 33.906 5.459 0.0 9.8863;
	2.4115 6.6056 5.2383 0.5674 0.545 43.494 5.4367 1.8982 29.2833 32.1168 30.9364 58.1637;
	4.7675 10.27 7.082 1.2799 0.8584 39.0153 4.8769 3.5686 23.6063 71.6959 121.521 129.8417;
	11.8578 11.6624 11.3242 9.7292 9.7025 36.2368 4.5296 6.5332 55.7145 76.7167 101.7077 138.9345;
	15.4587 13.1692 12.3353 10.7207 9.3998 106.7673 13.3459 16.4782 141.1239 90.6714 120.6556 164.2064;
	14.6433 12.51 11.4135 10.4817 9.8078 166.512 20.814 28.0399 179.3915 134.8494 135.2639 244.213;
	4.6726 4.7098 4.7567 10.0076 7.2759 258.8643 32.358 28.3263 238.1969 94.4845 47.4935 171.112;
	4.1195 5.2027 3.801 9.8259 6.6875 230.9468 28.8684 24.2946 229.9501 57.5161 31.8362 104.1621;
	3.5215 4.4025 4.3946 8.1866 5.2172 181.6454 22.7057 27.7468 213.5314 30.3559 10.2573 54.9747;
	2.1185 2.215 1.9071 5.0186 2.1792 176.2506 22.0313 58.3632 191.2279 0.0 0.0 0.0;
	0.4756 0.5651 0.2698 1.212 1.5736 63.3063 7.9133 10.8375 54.3526 4.59 1.9034 8.3125;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
