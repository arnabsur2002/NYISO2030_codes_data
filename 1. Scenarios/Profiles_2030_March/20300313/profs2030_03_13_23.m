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
	0.4836 0.4276 0.4379 0.0 0.0 0.0 0.0 0.2 0.0 0.0 0.0 0.0;
	3.3833 6.7492 2.6396 2.1023 3.2327 265.8735 33.2342 47.4508 183.7113 18.2753 6.446 33.0967;
	16.3437 13.3705 4.2885 5.6591 3.0305 436.1557 54.5195 73.1573 265.6023 90.1638 12.518 163.2872;
	22.7042 16.6083 12.3734 8.1592 4.3885 449.24 56.155 74.9055 272.3462 154.9231 19.5685 280.5666;
	24.2838 16.1547 13.5996 6.4989 6.9343 328.7685 41.0961 56.1426 204.6609 198.0161 35.5707 358.6084;
	25.1614 16.371 13.7627 9.2774 9.2851 355.6602 44.4575 65.0306 241.9599 288.3553 55.1591 522.2132;
	25.0771 16.3954 13.769 9.9625 9.415 375.0517 46.8815 71.8447 250.2538 318.7387 70.8875 577.2377;
	12.8591 11.9172 7.7944 5.8993 7.9118 176.2963 22.037 57.9104 116.5804 167.062 47.7326 302.5503;
	9.1827 11.0795 5.19 4.3259 6.8414 125.8758 15.7345 39.5657 66.5386 94.2828 26.4199 170.7467;
	6.4194 7.509 3.8891 3.4924 6.5379 90.8365 11.3546 22.1706 35.9895 66.3778 17.2377 120.2106;
	2.8782 3.6175 1.7319 7.432 3.4407 39.0959 4.887 7.5737 10.128 64.4549 7.8982 116.7282;
	0.7798 0.8066 0.3633 1.4009 0.6807 29.964 3.7455 6.2451 6.8511 36.05 6.3496 65.2867;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
