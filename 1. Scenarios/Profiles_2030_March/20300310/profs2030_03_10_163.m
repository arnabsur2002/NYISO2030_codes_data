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
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0256 0.0296 0.2651 0.9962 1.345 0.0 0.0 0.0156 17.2691 6.6822 4.5134 12.1016;
	0.0 0.0 0.0928 1.3342 1.9623 19.3201 2.415 2.3914 17.9572 2.9856 11.5543 5.407;
	0.1665 0.1905 0.1822 1.9318 2.4035 53.4649 6.6831 4.9661 29.8138 18.5402 22.3404 33.5764;
	2.143 1.4201 1.1647 2.4203 4.1012 146.5589 18.3199 9.7502 130.2113 41.2747 36.9052 74.7487;
	1.9698 0.9986 1.0381 3.0711 5.0052 138.7637 17.3455 8.6449 134.191 64.8472 41.4353 117.4387;
	1.3149 0.4121 0.6507 3.3951 6.0996 114.8219 14.3527 6.9583 125.4797 70.0176 43.5895 126.8023;
	1.668 1.0887 0.5531 3.2782 7.9596 130.5933 16.3242 13.5425 149.0285 88.8796 91.1647 160.9615;
	2.1619 1.7807 0.8556 2.1887 7.2845 107.2018 13.4002 11.7629 152.2342 67.4823 89.7774 122.2109;
	2.2978 2.0026 1.2307 1.3651 5.8474 104.4183 13.0523 9.4066 151.919 37.3218 59.5548 67.59;
	2.2214 1.6555 1.6664 0.4434 1.9129 82.201 10.2751 3.8603 87.3469 18.4879 19.8183 33.4817;
	0.2467 0.2168 0.1471 0.4217 0.9407 36.7797 4.5975 6.6632 26.7042 21.564 11.0799 39.0525;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];