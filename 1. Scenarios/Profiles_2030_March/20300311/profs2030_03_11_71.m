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
	6.8522 6.533 5.7542 2.7844 7.6356 158.5742 19.8218 33.5871 31.4739 67.0652 39.088 121.4555;
	17.5781 15.0768 13.6355 9.207 11.4671 349.8204 43.7276 69.7231 69.8558 184.9434 92.2038 334.9336;
	23.2265 16.6044 13.9692 11.5268 12.3497 390.4942 48.8118 73.0226 115.1907 323.4111 178.3671 585.6995;
	24.3291 16.5955 13.3759 11.5586 11.1074 365.9341 45.7418 67.4042 162.6336 342.7816 200.2012 620.7795;
	20.1951 15.9922 10.4104 11.5447 11.6979 368.1256 46.0157 66.3726 183.737 341.4775 224.9888 618.4178;
	17.9056 15.6519 9.8988 11.4717 11.158 368.0988 46.0124 65.9643 196.4173 330.1942 229.4438 597.9837;
	23.2353 16.5068 13.7817 9.9453 11.1427 409.2613 51.1577 71.0639 202.2347 202.5472 184.3398 366.8142;
	22.8366 16.6083 13.8 8.3431 11.2729 420.0968 52.5121 73.8488 191.7393 181.3799 155.7497 328.4801;
	17.9784 14.2125 11.849 4.1284 10.7669 414.4805 51.8101 72.9213 171.0135 158.9127 119.2054 287.7919;
	9.7176 7.9222 5.8965 3.0397 8.2154 325.7662 40.7208 57.9589 87.4415 150.0306 57.4329 271.7063;
	0.7551 0.6825 0.4428 1.3115 2.5395 52.8499 6.6062 9.9649 22.0852 44.4034 19.2433 80.4149;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];