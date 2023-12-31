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
	0.0926 0.1755 0.1683 0.4339 1.8929 5.8662 0.7333 1.3267 6.4802 11.1427 6.7241 20.1795;
	0.588 0.5651 0.4749 0.8479 2.8847 43.1036 5.3879 10.3423 65.7675 36.287 26.9249 65.716;
	0.9802 0.9083 0.7622 1.3494 3.6382 95.6302 11.9538 17.184 123.9148 67.2916 42.8986 121.8655;
	1.5853 1.966 1.5532 3.7112 6.2646 155.3303 19.4163 13.0118 246.7871 45.3026 30.0497 82.0433;
	1.0204 1.7856 1.057 6.5136 8.5614 97.8781 12.2348 10.4648 219.3971 53.2589 31.291 96.4522;
	0.5839 1.426 0.812 8.2146 7.7908 49.9159 6.2395 7.5946 166.6416 60.4333 32.6001 109.4451;
	0.921 1.6166 0.8517 8.0357 3.4194 29.9455 3.7432 8.6532 130.1727 66.8956 33.5722 121.1483;
	0.924 1.4926 1.0991 6.8258 2.44 31.4859 3.9357 6.3666 150.7249 48.1209 20.3497 87.1472;
	0.6501 0.9744 1.0724 6.3731 2.5849 42.2407 5.2801 5.1563 174.355 23.7241 7.1362 42.9646;
	0.2844 0.4789 0.991 5.3387 3.9816 60.4734 7.5592 2.5502 121.5852 13.9359 0.0 25.2379;
	0.2415 0.223 0.1521 1.1538 1.1373 29.7334 3.7167 6.9226 27.3888 22.9194 8.8846 41.5071;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
