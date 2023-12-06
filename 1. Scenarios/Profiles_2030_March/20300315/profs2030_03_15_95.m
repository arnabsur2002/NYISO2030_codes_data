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
	0.4174 0.3647 0.3227 0.0 0.0 1.3455 0.1682 0.7883 0.658 0.0 0.0 0.0;
	1.5306 2.4824 1.9247 1.4576 1.3952 97.7476 12.2184 13.4113 30.6738 35.8526 0.5083 64.9293;
	2.2043 5.5157 4.2693 2.6564 2.0902 149.8657 18.7332 6.8648 91.5074 113.8043 39.3431 206.1003;
	4.5398 7.9724 6.3867 4.9999 3.0613 162.3363 20.292 7.5241 125.8839 184.1773 110.8818 333.5463;
	12.4916 11.4521 10.7801 10.9178 12.4974 123.4325 15.4291 12.3974 89.6962 109.0605 62.8804 197.5093;
	14.7703 12.5371 11.3673 11.1476 11.9011 193.8166 24.2271 16.313 94.088 88.2654 29.0018 159.8493;
	13.5491 11.503 9.6497 11.2082 11.1741 236.8108 29.6013 11.72 117.0383 77.3484 17.7643 140.0784;
	6.4731 4.725 4.1912 10.5299 7.289 250.0191 31.2524 4.1135 202.359 71.3635 9.8263 129.2397;
	5.798 4.2546 2.602 8.8787 7.4893 186.1448 23.2681 3.0402 199.1993 85.8341 26.7745 155.4461;
	4.1003 2.4314 2.4441 6.3418 7.8046 139.5271 17.4409 4.6844 173.2437 62.5378 27.7858 113.2564;
	1.9001 1.0285 1.3956 3.3771 4.2177 200.3853 25.0482 18.0906 140.658 16.1831 5.0561 29.3077;
	0.3292 0.2545 0.2611 1.17 1.3659 81.2542 10.1568 7.8508 56.8477 7.3152 4.3581 13.248;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
