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
	0.0 0.0 0.021 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	8.489 6.7575 5.6769 5.5359 0.7256 244.1449 30.5181 44.2193 84.5952 66.1732 39.9535 119.8401;
	16.6952 12.017 8.6354 8.8012 10.7427 282.6676 35.3334 71.5278 157.6855 48.6394 44.0389 88.0863;
	22.0462 16.2663 13.0783 10.44 12.705 300.161 37.5201 73.2098 175.0138 101.5512 71.9283 183.9099;
	26.0463 16.5901 13.5199 11.193 10.4445 295.9818 36.9977 60.0052 192.3594 48.8893 42.5408 88.5388;
	26.334 16.6083 13.7243 11.246 8.9026 320.0945 40.0118 55.78 206.4657 68.8438 150.4272 124.6765;
	26.334 16.6083 13.7857 11.2666 7.9789 292.5298 36.5662 54.4824 209.9679 87.0926 173.8142 157.7252;
	26.2926 16.6083 13.8 11.632 11.1362 319.6692 39.9587 64.5566 158.4062 36.858 41.8945 66.75;
	22.9123 16.6083 13.8 11.5984 12.2528 350.2304 43.7788 70.734 115.6961 51.3715 10.203 93.0342;
	17.4901 14.885 11.7375 10.5101 12.2186 375.6052 46.9506 70.5742 78.4377 37.8499 9.0099 68.5464;
	12.0858 11.8354 6.974 8.1135 8.2526 292.5694 36.5712 49.0372 49.6321 22.2957 13.6566 40.3776;
	1.0393 1.0523 0.5918 1.3475 3.0512 50.5573 6.3197 10.8721 23.5519 18.22 18.1536 32.9965;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
