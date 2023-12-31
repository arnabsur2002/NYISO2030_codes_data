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
	8.7312 6.8273 4.9285 3.2374 0.5969 225.8026 28.2253 56.1807 230.3463 71.3163 40.2568 129.1542;
	16.4301 13.336 7.759 11.7289 8.9837 354.4462 44.3058 71.2691 250.434 326.7653 165.9457 591.7739;
	22.0998 16.6029 13.0815 12.1642 11.9817 350.2955 43.7869 71.2713 231.1991 349.5351 237.0042 633.0101;
	26.6417 16.6449 13.8 12.1686 10.4928 230.4346 28.8043 59.182 239.1772 347.1741 218.7626 628.7345;
	27.0025 16.7022 13.8165 12.1574 10.6543 251.0148 31.3768 57.4348 217.0055 302.917 215.8438 548.5844;
	27.1454 16.6674 13.8541 12.0781 10.8716 282.6015 35.3252 54.537 190.2023 271.2941 205.0804 491.3152;
	27.3964 16.6797 13.9334 11.8975 12.2687 396.0609 49.5076 63.1631 136.4511 163.4368 111.0418 295.985;
	26.7556 16.7406 13.9888 11.7569 12.6575 417.1216 52.1402 69.4189 141.3709 168.9859 79.8213 306.0344;
	25.6869 16.6284 13.6438 10.024 11.9036 415.3662 51.9208 70.9272 166.7264 160.9504 89.0872 291.4821;
	18.7292 13.1267 8.7027 4.1282 6.4798 292.3862 36.5483 51.4865 142.1101 109.4971 49.7968 198.3;
	0.9808 0.7671 0.468 1.3103 2.4531 45.6515 5.7064 8.7987 20.9625 22.7056 19.1319 41.1199;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
