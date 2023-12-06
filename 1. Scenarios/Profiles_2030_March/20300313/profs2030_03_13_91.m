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
	7.6717 8.0824 5.4869 1.1928 1.7365 236.3729 29.5466 46.3592 115.1113 12.9083 5.7265 23.377;
	17.2342 15.8608 11.8991 2.1562 3.0621 424.712 53.089 71.408 253.7514 13.2558 14.6009 24.0063;
	22.6923 16.6298 13.8247 4.9051 5.794 434.4333 54.3042 73.3413 268.4715 22.8572 23.4765 41.3945;
	25.2138 16.2129 14.0348 5.2444 8.0695 253.4383 31.6798 42.4935 203.5186 73.7965 20.9846 133.6459;
	25.1952 16.371 13.7782 7.6225 10.5242 246.1637 30.7705 26.5493 202.2859 93.7804 22.7912 169.8369;
	24.9048 16.3954 13.769 7.6193 10.8302 275.6438 34.4555 17.3838 187.5811 92.123 20.4859 166.8352;
	13.9535 14.0542 11.8186 3.0574 8.6228 171.0959 21.387 6.371 51.3377 32.8058 5.5635 59.4116;
	15.1213 13.7021 12.3454 1.5285 6.5635 173.8711 21.7339 10.8423 49.3733 24.7835 0.8193 44.8831;
	11.9914 11.1031 10.584 1.2666 4.9921 159.6831 19.9604 16.6524 50.4984 26.2068 0.0 47.4607;
	3.535 3.2782 3.6611 1.4785 0.8394 57.4556 7.182 13.1452 20.3014 15.3781 0.0 27.8498;
	0.3677 0.4065 0.3387 1.02 0.5053 12.426 1.5533 3.2446 5.0796 6.5949 3.4244 11.9435;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];