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
	0.1575 0.1621 0.24 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	5.6364 4.2924 3.4301 1.0536 1.6409 109.8475 13.7309 21.1818 30.1945 14.3966 22.6054 26.0723;
	17.912 11.5077 10.4308 3.2748 5.8523 276.5893 34.5737 42.6374 84.7467 60.236 43.5611 109.0878;
	23.8736 16.6083 13.8 6.0525 7.992 354.7374 44.3422 55.1157 145.2082 138.8471 92.588 251.4529;
	25.7226 16.474 13.7624 5.7997 5.9574 408.2371 51.0296 56.1979 182.1701 111.5785 154.7248 202.0694;
	25.9535 16.5326 13.7859 5.5474 5.3623 396.0875 49.5109 57.1778 184.8051 159.8854 187.5072 289.5534;
	25.9471 16.5331 13.4886 5.3897 4.4144 345.0156 43.1269 53.3466 171.4697 167.8434 200.7495 303.9654;
	23.0477 16.1524 11.186 8.4953 7.7271 322.7856 40.3482 59.8687 206.6449 295.3938 245.4119 534.96;
	17.5252 16.0764 11.291 8.3571 7.2526 283.0875 35.3859 53.2886 196.9727 280.2287 215.391 507.4959;
	9.8142 12.344 7.6646 6.4532 6.2474 212.4389 26.5549 35.4284 166.8635 114.0185 153.8275 206.4882;
	4.358 7.2213 5.8728 6.6074 10.4784 125.3558 15.6695 11.3841 99.939 68.0388 104.2728 123.2187;
	0.9566 0.8163 0.6499 2.0344 3.8885 58.2307 7.2788 9.8926 34.9866 65.9234 39.6747 119.3877;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
