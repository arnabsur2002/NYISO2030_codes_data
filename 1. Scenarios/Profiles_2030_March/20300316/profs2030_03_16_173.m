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
	1.04 0.8403 0.7059 0.0 0.0 11.2453 1.4057 5.3529 4.2651 0.0 0.0 0.0;
	3.929 6.2313 4.4149 0.5679 1.7198 105.2531 13.1566 52.5371 93.6253 46.5883 18.2825 84.3718;
	17.5013 16.1677 12.6105 3.5294 5.0467 324.4363 40.5545 62.2743 190.73 145.9096 65.2451 264.2432;
	23.478 16.7538 13.8488 7.2861 6.9979 387.1111 48.3889 64.9171 239.143 227.5424 100.4591 412.0807;
	21.3639 16.062 13.6743 6.4172 6.2343 361.611 45.2014 56.8782 215.6175 57.977 21.3718 104.9967;
	21.0933 16.0424 13.7512 7.9349 9.1348 346.7754 43.3469 58.799 188.3725 58.5301 25.2007 105.9984;
	23.1878 16.501 13.8 9.2624 10.4959 339.0275 42.3784 59.6455 176.6072 76.7234 33.1642 138.9465;
	22.4851 15.9262 13.4455 6.0138 7.6047 307.8558 38.482 60.5922 159.8177 78.8303 27.0549 142.7621;
	17.7996 14.0281 13.0023 3.9787 5.3629 302.0002 37.75 56.3234 172.0995 65.0915 19.9836 117.8812;
	11.394 7.6255 7.5578 1.9671 3.8128 281.4381 35.1798 50.9513 198.8665 44.9901 14.088 81.4773;
	7.7859 4.6913 3.601 2.2414 4.8015 221.1667 27.6458 40.6313 273.307 16.8467 11.0039 30.5094;
	2.2017 1.6997 1.1296 1.7195 2.3431 90.4153 11.3019 16.941 53.3725 13.9664 11.7483 25.2932;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
