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
	6.2891 6.628 5.4348 1.7786 1.5625 243.1564 30.3946 35.2315 140.7259 55.568 38.6729 100.634;
	17.5718 13.9553 12.4924 5.9306 6.8167 392.6474 49.0809 74.8795 217.0327 120.217 86.0371 217.7138;
	23.7361 16.6029 13.8577 7.4591 9.8722 403.1735 50.3967 77.7181 219.561 297.9602 180.6594 539.6078;
	26.7474 16.6142 13.8332 2.9441 3.3887 321.1635 40.1454 67.0717 201.4395 170.9598 170.2259 309.6092;
	26.5257 16.6091 13.8 4.2505 4.9145 311.2012 38.9002 59.7073 202.8818 110.2759 183.9835 199.7104;
	26.334 16.6083 13.8 7.7694 5.1744 338.7249 42.3406 52.9822 204.8984 111.8955 192.0499 202.6434;
	22.3653 16.5411 12.158 7.6158 1.7414 409.841 51.2301 60.2003 186.3162 154.6072 156.5589 279.9946;
	17.882 16.3557 12.1266 4.7766 1.4544 421.8063 52.7258 67.1805 157.4876 171.235 116.4861 310.1076;
	12.679 11.4493 7.4916 1.4699 0.9526 411.1174 51.3897 67.9078 111.3898 153.1093 77.7377 277.2819;
	7.905 5.4048 3.6732 0.7619 0.8071 257.4357 32.1795 43.8848 46.1992 93.4319 17.634 169.2058;
	0.7529 0.653 0.3877 1.3402 3.0944 51.5354 6.4419 10.507 24.1867 43.932 18.6824 79.5612;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];