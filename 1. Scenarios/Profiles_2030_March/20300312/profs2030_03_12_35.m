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
	9.4785 7.4165 5.2649 1.5797 0.0 123.7833 15.4729 26.1375 74.9648 55.8923 22.367 101.2213;
	20.448 16.0998 12.959 2.5118 0.3758 210.5848 26.3231 44.7697 98.7333 51.3525 15.5805 92.9996;
	24.224 16.8006 14.089 4.0361 1.252 246.8951 30.8619 47.8081 118.9855 108.3667 40.9539 196.2528;
	26.6261 16.8153 14.3325 5.4448 3.3527 249.9651 31.2456 52.5914 159.9397 237.45 162.2438 430.0234;
	26.8755 16.9874 14.2454 5.6767 2.8055 249.0012 31.1252 61.1974 159.7164 250.067 191.6128 452.8728;
	26.7433 16.9329 14.1682 5.4159 1.9835 213.4508 26.6814 66.306 141.5939 178.2059 196.1832 322.732;
	26.2557 16.6151 14.1469 8.3624 7.811 357.1504 44.6438 74.6766 208.1698 253.2065 249.7834 458.5585;
	23.773 16.3881 14.0945 8.3219 8.4076 380.598 47.5747 74.0213 229.199 268.8504 222.3552 486.8897;
	19.6103 14.0347 13.5472 6.4018 7.9793 389.7829 48.7229 72.8311 255.6872 163.6901 175.3621 296.4438;
	9.3837 6.996 5.8943 5.0729 10.4381 373.1417 46.6427 63.8191 261.3574 92.9182 79.9482 168.2755;
	0.9869 0.823 0.552 1.5084 3.4214 59.942 7.4927 14.0593 41.7665 54.1696 34.1622 98.1015;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
