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
	0.4095 0.3481 0.302 0.0 0.0 0.1765 0.0221 0.1431 0.5014 0.0 0.0 0.0;
	5.8448 4.0586 1.9716 1.7005 4.1016 53.9626 6.7453 3.1622 51.2266 34.9833 36.0797 63.355;
	9.6513 6.562 2.6934 2.9484 2.5904 144.6467 18.0808 6.678 102.9095 32.9025 79.7609 59.5866;
	14.6353 9.0609 2.9699 3.7015 1.9402 188.2466 23.5308 15.1496 134.4281 47.6735 115.7844 86.3371;
	20.6834 13.2404 10.5734 8.7816 11.0811 232.8519 29.1065 36.286 141.1933 157.1611 147.9263 284.6196;
	24.0226 17.0092 13.5459 10.6974 10.5056 278.2001 34.775 50.276 196.1314 201.1441 180.5072 364.2732;
	24.2589 17.2503 13.8187 11.1215 11.4256 303.7045 37.9631 49.8654 220.8924 229.7036 192.7878 415.9945;
	18.4633 12.7202 9.7504 11.1578 11.3806 352.8323 44.104 29.7288 219.4472 202.2201 157.5868 366.2218;
	11.5065 7.3484 6.966 10.7843 11.5827 325.1558 40.6445 20.9352 190.8724 181.6274 129.4043 328.9283;
	7.3696 4.3717 5.0921 8.7167 11.2555 291.4744 36.4343 15.8448 137.0491 147.6981 92.2484 267.4822;
	1.7742 1.2685 1.7516 4.102 8.0334 279.1971 34.8996 14.2843 130.5769 32.9451 8.4893 59.6638;
	0.2673 0.2358 0.2668 1.1914 2.2366 79.835 9.9794 6.4813 57.5859 22.8791 3.7757 41.4341;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
