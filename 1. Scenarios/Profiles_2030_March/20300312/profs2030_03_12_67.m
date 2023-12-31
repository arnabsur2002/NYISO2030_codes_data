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
	7.7587 6.8805 6.1411 1.8796 2.4982 102.5143 12.8143 23.5225 98.4517 17.2367 23.2851 31.2157;
	13.3113 12.9914 10.9347 3.2164 4.7554 270.2211 33.7776 59.1694 175.8169 94.7314 79.63 171.5591;
	22.2876 16.6083 13.8 5.4208 6.2172 309.6588 38.7074 68.1981 197.6807 192.0632 131.4408 347.8277;
	26.0795 16.619 13.7693 8.7033 5.852 204.0727 25.5091 59.3055 190.8639 225.6965 164.3644 408.7377;
	26.0045 16.5404 13.7859 10.446 5.6141 215.4823 26.9353 52.6729 181.5089 229.0285 184.5632 414.7719;
	25.3886 16.5331 13.6563 11.1012 5.8141 242.9558 30.3695 50.2735 160.6894 218.5541 193.8333 395.8028;
	21.6821 16.2236 11.9572 10.9355 11.8854 385.3028 48.1628 65.3002 166.5929 341.4098 252.2896 618.2951;
	21.2008 16.3881 13.0909 9.7119 11.8942 391.7989 48.9749 66.8536 157.65 336.3715 227.5632 609.1709;
	18.47 15.2314 11.1993 7.6219 11.5972 372.9062 46.6133 66.7565 166.9474 294.9945 187.105 534.2369;
	14.283 12.7502 8.1406 7.8159 12.5313 329.2258 41.1532 60.8219 179.5431 187.882 125.3981 340.2555;
	0.9671 0.8242 0.5636 2.1366 4.0802 71.9448 8.9931 14.1599 40.579 65.5078 39.6423 118.635;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
