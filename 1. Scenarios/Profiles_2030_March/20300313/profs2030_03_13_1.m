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
	0.4854 0.4152 0.4232 0.0 0.0 0.0 0.0 0.2 0.0 0.0 0.0 0.0;
	5.8433 4.8768 0.9393 0.2937 0.6193 154.3511 19.2939 15.1231 82.1051 0.0 0.0 0.0;
	12.0403 11.0067 1.3835 0.8847 3.2708 436.1146 54.5143 55.2398 253.0674 19.291 7.4849 34.9361;
	21.7024 16.6083 11.174 2.5562 6.6433 455.4436 56.9304 63.7675 265.3401 54.0567 15.634 97.897;
	24.8955 16.4538 13.683 3.0434 3.6808 348.2051 43.5256 24.8855 92.4922 97.9442 29.1013 177.3775;
	25.4486 16.454 13.7627 4.7796 3.2674 317.2823 39.6603 24.6367 100.3093 114.2129 24.758 206.8403;
	25.0771 16.3954 13.769 4.657 2.7775 283.8352 35.4794 35.5765 151.8466 106.8308 20.9223 193.4713;
	7.9637 6.5243 6.1538 2.1512 2.4522 124.4023 15.5503 26.5212 95.4728 88.73 24.5233 160.6905;
	5.0113 4.0443 4.9988 1.5159 2.2321 128.007 16.0009 26.9167 74.1265 77.9457 28.4603 141.1602;
	3.5724 3.7184 4.9689 1.3246 2.3224 94.7363 11.842 20.2412 38.0735 62.97 30.2552 114.0391;
	0.9297 1.0452 1.7937 1.1756 0.626 9.0915 1.1364 2.5246 2.2837 17.5456 10.0268 31.7752;
	0.3545 0.3065 0.297 0.423 0.741 3.5963 0.4495 1.1669 6.8965 7.5779 4.8735 13.7237;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];