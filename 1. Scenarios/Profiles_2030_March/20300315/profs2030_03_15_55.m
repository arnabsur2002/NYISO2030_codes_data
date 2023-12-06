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
	0.4095 0.3502 0.3099 0.0 0.0 0.2444 0.0306 0.8098 0.0956 0.0 0.0 0.0;
	3.9069 2.9437 1.8385 1.6563 2.718 105.0198 13.1275 34.8594 62.0936 0.0 14.159 0.0;
	3.2827 2.5359 2.6744 2.6463 2.0965 139.2114 17.4014 21.2755 97.5858 6.5397 26.7653 11.8434;
	1.6665 1.3498 2.1169 4.6286 2.1169 137.4466 17.1808 24.9589 124.5453 6.5767 27.3563 11.9105;
	1.0791 1.0667 1.7088 11.0008 12.2611 162.1585 20.2698 26.8701 161.9641 7.4313 13.1569 13.4582;
	4.2512 3.5611 6.6766 11.2783 12.3118 185.7811 23.2226 28.714 173.5392 25.6266 32.3368 46.4099;
	11.6666 9.6684 10.9952 11.3399 12.5745 206.8132 25.8516 23.3739 174.9844 66.9037 80.9981 121.163;
	6.6586 6.1801 8.4743 11.058 10.2339 302.4752 37.8094 21.6598 229.3032 38.8685 27.9828 70.391;
	3.2382 4.2533 5.3693 10.3224 9.4249 311.9872 38.9984 19.0859 232.8393 27.725 18.0183 50.2101;
	1.504 1.9556 2.7236 7.8926 8.5874 309.6624 38.7078 19.2152 230.8219 15.2803 6.1358 27.6727;
	0.9811 1.1995 1.0206 3.977 4.362 325.673 40.7091 22.0344 210.3842 0.0 0.0 0.0;
	0.4195 0.5651 0.4527 1.1697 1.7943 79.155 9.8944 3.99 49.1026 0.0 2.6017 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
