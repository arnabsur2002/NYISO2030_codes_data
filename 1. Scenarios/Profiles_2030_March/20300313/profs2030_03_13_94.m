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
	8.9506 5.1427 2.4345 1.0892 3.6038 413.748 51.7185 71.9588 237.6974 31.9897 25.9345 57.9336;
	18.9576 15.0543 11.5501 2.2935 4.8405 464.4884 58.0611 73.4676 264.3634 111.4299 92.117 201.8002;
	22.4485 16.6097 13.8 4.2277 6.5105 462.3413 57.7927 73.8711 267.3682 183.1789 116.9196 331.7381;
	18.2881 15.5944 13.6403 3.0197 6.0723 373.1128 46.6391 54.7364 196.4969 195.042 64.168 353.2222;
	21.2191 15.5838 13.7056 6.339 7.3839 344.7885 43.0986 51.9574 209.0796 173.9978 51.4285 315.1111;
	25.0139 16.3622 13.769 7.7818 7.6908 319.597 39.9496 45.9167 208.7128 114.6624 35.9755 207.6542;
	14.8483 11.0035 9.6658 6.2007 6.3757 116.5735 14.5717 12.5586 135.7257 39.7104 20.1476 71.9157;
	12.3907 9.8355 8.6295 3.7106 4.7825 110.1002 13.7625 12.6079 113.8522 28.0457 19.3292 50.791;
	7.5125 5.74 5.4612 1.365 3.5418 110.5148 13.8144 13.3448 98.0282 19.4148 15.757 35.1603;
	1.8076 0.6575 0.8882 0.1139 0.3956 44.6734 5.5842 4.3757 30.693 2.3962 5.2001 4.3395;
	0.5537 0.3782 0.3396 0.3634 0.2739 12.39 1.5488 1.0608 2.5264 2.6439 3.4538 4.7881;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];