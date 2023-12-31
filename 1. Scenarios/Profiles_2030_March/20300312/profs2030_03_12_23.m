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
	5.4877 6.0791 2.407 1.7343 1.0532 301.8562 37.732 41.9275 79.2622 22.3729 21.7825 40.5174;
	15.3572 12.9071 7.6464 2.2314 1.7154 314.3429 39.2929 51.8117 131.3896 110.5643 63.3418 200.2326;
	23.0123 16.6083 13.7442 2.916 2.9442 313.5606 39.1951 47.6117 129.4619 193.6574 132.8413 350.7147;
	26.1908 16.4844 13.7806 4.4471 4.7531 205.4734 25.6842 40.6604 71.7707 223.8161 182.402 405.3323;
	26.746 16.7531 14.0636 6.4437 5.7689 260.8457 32.6057 47.2083 153.8215 263.366 197.9987 476.9574;
	26.6066 16.77 14.1235 8.303 5.7605 278.3109 34.7889 51.0021 192.0238 270.652 191.8302 490.1524;
	25.8654 16.5546 13.7866 11.409 9.439 370.8844 46.3605 70.9884 221.6888 332.2134 199.8319 601.6405;
	22.8845 16.3881 13.7008 11.3333 8.861 355.2475 44.4059 70.1772 190.3842 305.1198 171.0379 552.5738;
	17.4362 13.2071 11.1115 10.0506 8.1358 301.2865 37.6608 66.6836 135.7208 178.0026 87.8612 322.3638;
	10.4678 7.1445 5.8247 8.0894 11.5452 206.845 25.8556 52.1284 133.1508 180.5541 64.0841 326.9846;
	1.1822 0.9165 0.6586 2.047 3.5811 58.3532 7.2941 12.0589 43.4189 66.7857 36.9697 120.9493;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
