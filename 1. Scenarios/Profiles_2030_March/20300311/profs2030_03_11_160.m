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
	2.5856 2.7189 3.4187 3.6375 5.774 168.9424 21.1178 44.6597 65.2734 69.5364 44.9795 125.9308;
	15.6717 10.8981 11.1661 6.8734 10.7593 290.3695 36.2962 59.3352 87.3469 60.3543 120.813 109.3021;
	23.3473 16.6029 13.8 8.8264 12.0364 351.2128 43.9016 39.0731 121.1043 85.8006 168.743 155.3854;
	26.5508 16.6083 13.8 10.9855 9.6569 381.7152 47.7144 45.9082 192.7322 61.8166 168.2444 111.9502;
	26.335 16.6083 13.8 11.4394 10.1332 405.1244 50.6406 53.8678 201.3672 87.417 216.7141 158.3128;
	26.334 16.6083 13.8 11.4717 10.6042 414.2607 51.7826 60.2865 206.6063 112.1506 224.4985 203.1054;
	26.3192 16.6083 13.8 11.7088 12.2685 439.5588 54.9448 68.7496 209.2258 64.3245 145.5415 116.492;
	23.3165 16.6083 13.8 11.6809 12.3531 433.6579 54.2072 70.6913 205.4532 58.035 39.2341 105.1017;
	17.6105 13.7906 10.0899 10.8457 11.7907 421.792 52.724 65.3163 199.7208 37.855 24.5967 68.5556;
	7.4317 4.6814 2.7322 9.5144 8.6846 273.4112 34.1764 25.5627 163.2291 23.932 21.1035 43.341;
	0.7576 0.6064 0.4051 2.0874 3.511 48.8106 6.1013 8.4324 28.2248 19.808 18.9526 35.8725;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
