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
	0.0 0.0 0.002 0.0 0.0 0.0524 0.0065 0.0 0.0 0.0 0.0 0.0;
	7.9815 9.8819 7.9675 6.3575 6.2236 366.2738 45.7842 16.9993 80.9562 67.4747 40.3688 122.1971;
	20.6926 16.5075 13.6728 9.7467 11.7842 407.8686 50.9836 67.6062 195.138 148.04 120.8094 268.1013;
	24.9761 16.9581 13.9686 11.1491 12.8144 411.2969 51.4121 70.6681 217.4035 303.2134 191.3228 549.1214;
	26.4807 16.6574 13.8 11.3797 12.1633 252.4087 31.5511 19.1566 162.7191 252.3423 199.9797 456.9934;
	26.334 16.6083 13.5775 11.4878 12.0043 155.8554 19.4819 6.3285 97.2336 245.5216 218.6461 444.6411;
	24.1018 15.7827 12.7309 11.4748 10.611 154.7372 19.3421 7.8143 66.8263 193.4624 220.3793 350.3616;
	21.4761 9.3712 11.8624 11.6336 9.4615 352.8754 44.1094 47.2391 63.8565 40.6249 96.9887 73.572;
	17.6562 10.1691 12.7955 11.6168 9.2099 369.8135 46.2267 54.3197 60.7488 35.8293 40.5397 64.8872;
	12.6202 7.6223 8.7541 10.2184 8.1594 331.9752 41.4969 49.0055 35.4074 25.4957 38.4037 46.1728;
	7.989 5.5883 5.1452 6.7169 3.0126 45.7215 5.7152 7.3612 12.977 19.72 35.3046 35.713;
	0.7682 0.6043 0.4117 1.3076 2.4345 44.3341 5.5418 8.424 19.5907 19.0202 18.7485 34.4457;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
