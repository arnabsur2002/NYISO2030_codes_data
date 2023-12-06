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
	0.0 0.0 0.002 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	8.3348 5.6907 5.7449 0.6906 1.1646 83.8916 10.4865 18.0619 12.6574 69.534 39.5781 125.9265;
	17.7966 11.4449 12.1622 1.1337 0.8748 306.4274 38.3034 61.5154 0.6011 75.5904 39.977 136.8947;
	23.2007 16.5934 13.8 5.3259 3.0919 365.0529 45.6316 71.3786 12.7577 181.8325 112.2604 329.2998;
	26.33 16.6665 13.8 11.2835 5.8317 312.9907 39.1238 67.0801 33.053 230.3852 184.7124 417.229;
	26.334 16.9715 13.8107 11.4504 6.7801 317.001 39.6251 65.9777 78.5992 286.0248 210.235 517.9927;
	26.334 16.9708 13.8152 11.4089 5.36 348.4964 43.5621 63.9878 131.5561 288.6159 188.6381 522.6851;
	25.7107 16.6083 13.8 11.4437 1.5968 425.3744 53.1718 63.3548 122.7432 82.786 40.837 149.926;
	21.4349 16.6083 13.6182 11.5211 1.6791 438.6134 54.8267 66.5716 98.4412 41.4392 17.238 75.0467;
	16.8866 14.2476 9.8279 9.354 3.0268 434.6856 54.3357 65.0831 84.187 33.4169 33.0907 60.5182;
	9.7928 9.8835 6.2823 5.9143 2.258 290.6629 36.3329 31.5388 46.0485 65.8448 57.4216 119.2453;
	1.0047 0.9525 0.6863 1.3049 2.451 51.5563 6.4445 8.4157 20.168 32.4888 19.3911 58.8373;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];