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
	6.2446 7.0767 6.5467 1.2282 1.2029 34.3785 4.2973 23.1874 64.3099 0.0 0.0 0.0;
	17.3603 13.9417 12.486 1.9704 5.4857 394.3099 49.2887 71.7825 248.4095 8.6028 5.6666 15.5798;
	22.7043 16.6083 13.8 3.3758 8.1761 440.0786 55.0098 74.9516 269.8138 27.0302 14.8369 48.9518;
	24.1404 16.1547 13.6408 2.8953 6.4851 333.3039 41.663 54.7542 231.0958 47.0122 20.5079 85.1395;
	24.921 16.371 13.7627 5.5547 6.0966 339.5387 42.4423 49.6589 215.0783 49.34 29.2736 89.3551;
	24.6141 16.3954 13.769 6.6013 5.1463 346.5044 43.313 50.9886 205.8898 71.7991 45.7596 130.0285;
	12.3542 10.1862 9.812 4.9735 4.7214 217.1701 27.1463 30.4056 138.7661 102.4921 50.582 185.6139;
	10.7888 7.757 9.0078 3.6001 5.6082 213.2616 26.6577 31.2119 146.2964 112.1229 45.2483 203.0552;
	7.5867 6.2947 6.1498 2.8241 6.561 160.4017 20.0502 26.9615 141.5192 88.6425 37.0799 160.5322;
	2.1099 2.2964 2.883 1.593 4.8584 48.365 6.0456 10.9182 64.8283 20.1691 17.5017 36.5263;
	0.3562 0.3475 0.3614 1.0885 1.2779 14.0179 1.7522 4.3289 7.8511 17.6851 19.8222 32.0278;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
