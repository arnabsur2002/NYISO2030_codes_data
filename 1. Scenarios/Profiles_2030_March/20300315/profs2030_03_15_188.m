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
	0.4095 0.3481 0.302 0.0 0.0 0.1765 0.0221 0.4738 0.0956 0.0 0.0 0.0;
	2.4426 2.5359 1.3849 0.3704 0.3962 35.9845 4.4981 23.8305 34.1302 12.5727 0.1575 22.7692;
	8.9122 6.8564 3.9723 0.7789 1.2213 75.4859 9.4357 40.5995 105.7991 86.1883 31.8364 156.0874;
	16.2338 11.8632 6.4976 2.7821 3.0527 154.09 19.2612 40.2663 174.4083 201.054 102.1505 364.11;
	17.4413 14.9472 12.6623 11.2209 12.5639 372.4689 46.5586 21.4142 267.9987 206.1592 116.1431 373.3556;
	18.6046 15.9557 13.9671 11.24 11.7033 434.0949 54.2619 36.3465 293.2479 139.1723 157.7866 252.0419;
	17.9915 15.6591 13.9442 11.2082 8.6818 433.4746 54.1843 46.7657 278.2375 166.3843 173.5217 301.323;
	10.3874 8.3626 9.7505 7.3512 1.0264 340.0063 42.5008 31.8824 201.2525 230.5413 185.055 417.5117;
	8.175 6.8608 7.1688 6.3887 0.9869 266.146 33.2682 20.2527 160.5709 239.3073 182.2732 433.387;
	4.9556 4.9929 5.2856 6.5558 1.173 203.4957 25.437 15.4961 132.2112 178.5764 110.1867 323.403;
	1.9044 1.9177 2.391 4.7403 2.2817 153.154 19.1442 29.0238 145.2094 15.0565 5.3179 27.2674;
	0.4836 0.6272 0.6755 1.2383 1.2796 58.5017 7.3127 10.8482 51.4758 3.6029 4.4732 6.5249;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
