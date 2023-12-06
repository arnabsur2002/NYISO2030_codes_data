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
	9.4274 6.3403 5.9202 0.2293 1.6191 232.0221 29.0028 20.2481 55.8487 63.0293 1.6935 114.1465;
	18.2482 12.9469 12.2608 4.2315 3.9791 428.9771 53.6221 60.8052 244.0193 42.2662 3.0939 76.5443;
	22.7031 16.6083 13.8 8.5456 5.3211 444.1869 55.5234 65.0529 264.0891 43.8456 8.0445 79.4046;
	25.5595 16.1627 13.7214 4.9146 0.9349 306.5771 38.3221 22.5521 152.6376 23.1238 25.1665 41.8774;
	25.5078 16.371 13.7627 4.0181 1.5109 301.369 37.6711 21.4719 112.1706 27.94 47.0189 50.5995;
	25.3009 16.3813 13.769 2.9501 1.7083 302.6965 37.8371 28.9 122.0426 34.7738 55.2642 62.9756;
	21.4871 14.7282 13.4657 0.9851 0.2967 103.3323 12.9165 14.6656 107.5212 36.3466 43.9029 65.824;
	22.8319 16.2859 14.2235 0.5508 0.1254 81.4402 10.18 17.367 130.6528 36.0092 29.1456 65.2129;
	20.4022 15.7055 13.7422 0.2449 0.0 57.3757 7.172 15.2978 152.0844 29.025 19.1107 52.5644;
	10.5547 4.4927 7.0617 0.0129 0.0 13.4778 1.6847 3.9308 95.355 10.6119 4.8299 19.2183;
	0.4419 0.3354 0.3723 0.3459 0.2311 14.9132 1.8641 2.8762 19.4538 7.0366 4.0898 12.7433;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];