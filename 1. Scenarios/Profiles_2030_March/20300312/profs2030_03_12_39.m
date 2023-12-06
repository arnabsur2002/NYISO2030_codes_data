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
	0.1575 0.1706 0.24 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	8.9994 7.2327 6.7869 1.171 2.122 21.7479 2.7185 21.831 32.0834 39.5287 22.9947 71.5867;
	17.4558 15.2845 11.6683 3.2808 3.7536 119.9935 14.9992 36.7438 88.1104 105.2793 63.0176 190.6614;
	22.9397 16.6166 13.8 5.4239 5.2661 244.2615 30.5327 45.1858 136.18 184.5968 109.7318 334.3059;
	25.6923 16.474 13.7624 4.0452 4.4273 282.6394 35.3299 45.3913 179.6493 214.9246 142.942 389.2297;
	26.3277 16.7606 14.0828 3.3938 2.5782 305.8201 38.2275 48.7836 180.2076 168.0394 144.7501 304.3204;
	26.6545 16.9596 14.2445 3.8465 1.3858 289.7159 36.2145 49.1587 170.0534 116.7369 119.3979 211.4112;
	26.2532 16.7188 13.8596 9.2709 5.2071 360.747 45.0934 59.3435 227.9716 330.2905 190.8198 598.1581;
	23.1359 16.3881 13.7008 8.8937 6.2047 370.4767 46.3096 54.5651 238.2875 336.3715 175.4988 609.1709;
	16.3146 13.1697 10.5034 7.2944 6.2336 365.724 45.7155 42.2018 245.54 298.2335 96.5152 540.1026;
	6.0428 5.2398 3.9661 6.4949 10.4273 364.1373 45.5172 21.483 230.3675 238.2442 76.8229 431.4618;
	0.9937 0.8786 0.5488 1.8966 3.4433 67.444 8.4305 10.0139 38.6188 66.6601 38.8999 120.7218;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];