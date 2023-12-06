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
	0.0 0.0062 0.002 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	9.0018 6.6594 5.2293 2.9349 2.4972 161.1509 20.1439 41.0556 21.8234 61.1936 38.9403 110.822;
	16.9012 14.6581 11.3388 7.5084 8.6973 324.2771 40.5346 73.016 87.4877 126.8394 49.2041 229.707;
	21.3494 16.6029 13.8 10.706 11.9623 371.5136 46.4392 76.2542 151.205 310.1474 127.2979 561.6788;
	23.4563 16.1866 12.5485 11.3523 11.6696 377.8084 47.226 72.0247 207.9911 288.5353 142.2337 522.5391;
	25.1344 15.7121 11.1905 11.4504 11.2047 415.7181 51.9648 71.1894 224.6556 303.6032 186.6739 549.8272;
	26.2445 16.3734 11.4112 11.4717 10.1571 424.9327 53.1166 68.5097 242.2829 310.3543 212.6059 562.0534;
	26.3192 16.6083 12.9785 11.632 10.5785 420.6069 52.5759 68.6791 248.8244 225.6472 197.1001 408.6484;
	23.2766 16.6083 12.92 11.5995 10.9965 418.2218 52.2777 69.5189 235.5287 201.7652 168.4215 365.3979;
	16.7903 13.3442 6.2426 9.6211 10.5123 408.1521 51.019 65.8355 199.6167 144.4963 130.9443 261.6837;
	5.5003 2.6672 1.0839 4.6607 7.1856 332.0595 41.5074 40.8483 90.6573 70.8831 54.078 128.3697;
	0.7348 0.6506 0.3768 1.3035 2.5938 65.3505 8.1688 9.1847 23.8623 23.1054 19.3088 41.844;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];