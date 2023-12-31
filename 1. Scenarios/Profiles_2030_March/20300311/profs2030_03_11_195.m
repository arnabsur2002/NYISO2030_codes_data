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
	4.498 5.3097 4.7121 1.353 5.722 108.71 13.5888 41.1034 60.5552 79.8879 40.2501 144.6775;
	19.2753 15.1066 13.5475 6.7348 12.7161 287.4506 35.9313 70.3558 122.7125 221.5606 71.7688 401.2475;
	24.2843 16.7306 14.232 10.1709 13.3069 338.4558 42.307 71.9451 163.7772 300.2379 79.4418 543.7326;
	26.4242 16.9637 14.2563 11.2835 11.2894 265.3462 33.1683 59.0354 184.7929 127.6352 34.3549 231.1482;
	26.7149 17.2088 14.3816 11.4777 10.724 297.4026 37.1753 64.8326 206.9761 205.8343 119.816 372.7672;
	27.1081 17.3828 14.4099 11.5672 10.0488 323.6799 40.46 67.6899 214.6563 227.9671 173.098 412.8497;
	27.1228 17.3898 14.3682 11.7276 9.5388 371.7755 46.4719 72.0344 167.2252 67.3788 149.0967 122.0234;
	24.7842 17.3589 14.1631 11.6726 9.9633 374.6782 46.8348 73.118 93.0262 45.3266 105.4247 82.0867;
	18.0026 16.9489 12.6108 10.2174 9.7789 348.4375 43.5547 69.549 33.9009 28.6416 83.0262 51.8701;
	5.6653 9.8863 5.5701 6.4994 7.6723 131.6636 16.4579 33.4072 15.3428 33.5425 28.2398 60.7456;
	0.9706 1.0477 0.6072 1.8784 2.7021 47.1578 5.8947 10.0216 20.2168 20.5302 17.4478 37.1803;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
