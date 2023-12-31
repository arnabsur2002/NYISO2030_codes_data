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
	0.4095 0.3502 0.3086 0.0 0.0 2.4282 0.3035 0.4226 0.8988 0.0 0.0 0.0;
	2.569 2.9515 2.563 1.1285 0.336 252.106 31.5132 41.0855 111.3232 112.1952 72.4998 203.1862;
	6.5531 6.8609 5.2329 2.2486 1.2354 295.6495 36.9562 53.9093 189.1185 198.7701 97.5829 359.9738;
	11.6202 11.4894 7.6261 4.6358 2.6759 359.8758 44.9845 54.8348 209.7464 236.532 130.4473 428.3609;
	16.1238 11.9685 11.3036 10.6255 12.338 412.5979 51.5747 43.5353 214.1991 249.4627 150.5087 451.7785;
	20.6301 15.8191 12.7911 11.1451 12.1389 433.5732 54.1967 50.1355 209.566 270.4782 178.0584 489.8377;
	19.4094 15.8497 11.8651 11.1733 12.2808 374.8211 46.8526 47.1689 202.5737 275.8149 177.4711 499.5025;
	4.8584 4.9489 3.0174 10.5489 10.0952 215.1577 26.8947 29.2631 252.1219 198.5566 129.9995 359.5872;
	2.0708 1.6518 1.0159 9.4672 9.3266 140.2129 17.5266 18.4978 252.0789 171.761 117.5845 311.0603;
	1.2762 0.5559 0.9122 6.6983 7.6346 110.2991 13.7874 13.2495 244.8758 160.4739 137.7573 290.6191;
	1.2958 0.4366 1.1373 2.552 1.7572 191.4231 23.9279 14.1272 220.8891 175.7279 94.6888 318.2444;
	0.4235 0.2941 0.3726 1.1281 1.6162 57.3804 7.1725 6.07 53.8686 243.2926 18.425 440.6043;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
