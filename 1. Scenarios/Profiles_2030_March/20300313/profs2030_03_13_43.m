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
	0.4752 0.4039 0.4307 0.0 0.0 0.0 0.0 0.2 0.0 0.0 0.0 0.0;
	9.1459 7.8761 5.6215 3.6871 4.7285 127.201 15.9001 15.7408 119.4156 109.8351 7.753 198.9121;
	22.5862 16.7513 13.138 7.1539 6.3958 411.201 51.4001 59.7558 256.6906 189.1563 24.4063 342.5631;
	24.8344 17.1323 14.0221 10.0262 7.7209 427.8374 53.4797 66.6317 268.5556 184.2119 44.069 333.6089;
	23.9276 16.2108 13.6408 9.6112 5.1799 83.4205 10.4276 34.9971 179.2599 93.2883 45.8798 168.9458;
	25.0045 16.371 13.7627 10.1597 5.8194 92.9362 11.617 24.1994 184.3427 111.5783 53.253 202.069;
	25.0771 16.3954 13.769 9.1528 5.0882 197.426 24.6782 20.6459 193.5074 106.4692 56.1661 192.8164;
	11.869 4.6241 6.9719 4.9226 2.0134 165.0657 20.6332 10.5902 141.2999 67.7299 42.4836 122.6593;
	6.533 1.7561 3.5875 2.7091 0.7922 147.5517 18.444 15.9825 118.8883 49.2943 28.0312 89.2723;
	2.303 0.9088 1.2582 2.0221 0.3859 103.6321 12.954 19.9191 86.1439 39.0216 19.7961 70.6684;
	0.0691 0.0495 0.0 1.1724 0.0 16.9934 2.1242 10.6431 11.6688 17.911 8.1592 32.4369;
	0.3677 0.3055 0.2871 0.423 0.1567 12.3252 1.5406 1.9258 2.5386 14.1586 12.2678 25.6414;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
