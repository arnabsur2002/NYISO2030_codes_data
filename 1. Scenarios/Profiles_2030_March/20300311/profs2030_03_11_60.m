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
	8.4939 5.9531 5.7322 6.3027 8.3719 99.9777 12.4972 2.3758 26.5651 69.5332 39.0121 125.9251;
	16.2628 9.5877 10.1483 6.957 11.2164 273.2771 34.1596 8.7423 30.3934 22.3312 11.0456 40.442;
	21.3763 16.0427 13.8 7.9633 12.0483 319.4253 39.9282 34.8155 34.7394 48.3564 40.9528 87.5737;
	26.334 16.6083 13.8637 10.0741 9.7589 293.5032 36.6879 60.6232 99.2885 56.2414 91.2759 101.8535;
	26.334 16.6083 13.8965 10.8435 9.9599 359.8687 44.9836 62.9321 142.5471 193.5625 207.0625 350.5428;
	26.334 16.6083 13.8019 11.1882 10.0492 390.4854 48.8107 64.0754 154.0414 277.0555 223.4937 501.7493;
	26.4238 16.6083 13.8 11.632 11.3902 420.4794 52.5599 70.3376 145.881 187.2012 212.2876 339.0225;
	24.1531 16.6083 13.8 11.5984 11.5463 418.6947 52.3368 72.9467 149.9728 130.1186 168.1988 235.6455;
	21.8737 15.9799 11.9389 9.4587 10.6664 398.1486 49.7686 70.7615 149.5243 55.8378 119.6324 101.1226;
	12.8075 11.3672 6.9282 5.0491 4.0802 242.6701 30.3338 28.492 103.4503 19.5922 31.0184 35.4815;
	0.7608 0.6657 0.4234 1.2787 2.4345 52.8226 6.6028 8.4407 22.9215 19.1113 18.6305 34.6107;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
