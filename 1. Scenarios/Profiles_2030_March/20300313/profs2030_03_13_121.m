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
	4.3009 4.2057 1.1816 1.2264 0.6123 170.7891 21.3486 42.6265 55.8417 12.707 12.4339 23.0125;
	13.2408 10.8493 8.0691 2.0376 0.363 308.0285 38.5036 70.3645 170.6808 32.0057 19.3632 57.9625;
	20.3247 16.1504 13.7965 5.3949 0.586 335.4992 41.9374 72.3342 218.7314 40.2227 22.176 72.8435;
	20.9041 10.8843 13.1709 6.9774 2.5854 198.275 24.7844 40.4511 146.8622 23.726 11.8036 42.968;
	22.4082 12.1934 12.9218 9.5766 5.5669 282.3658 35.2957 55.1892 183.4652 21.4741 5.838 38.8898;
	24.074 14.4663 12.9424 9.1624 6.9941 286.1489 35.7686 59.073 184.1895 24.5682 3.5704 44.4931;
	10.4704 8.2884 5.1659 3.6687 6.9191 46.9409 5.8676 18.4244 45.8959 35.5971 1.1372 64.4666;
	7.5625 6.3912 2.7195 1.9775 6.2584 23.8723 2.984 6.7111 39.9322 44.0644 3.9958 79.8009;
	5.1997 4.6339 1.0408 2.3863 6.344 19.298 2.4122 1.6308 43.3699 29.5157 3.0445 53.4532;
	1.8937 1.4551 0.2374 6.0272 3.9631 17.7567 2.2196 0.0 30.572 0.9405 0.0 1.7033;
	0.5517 0.4725 0.3207 1.3935 1.3269 15.2169 1.9021 1.2482 11.5721 2.5636 0.0 4.6428;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];