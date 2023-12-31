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
	1.0958 0.9487 0.7966 0.0 0.0 10.9022 1.3628 4.2229 0.6122 0.0 0.0 0.0;
	10.8104 7.5848 6.3551 1.3697 1.0406 216.2027 27.0253 37.8739 93.3367 219.6139 78.7382 397.7221;
	7.1323 6.1071 4.3572 1.6605 2.4338 338.2342 42.2793 49.9387 113.8082 311.8922 125.6579 564.8386;
	4.4495 4.6958 6.1201 2.1274 3.5711 391.5854 48.9482 55.3138 154.7685 334.2949 128.6185 605.4101;
	16.3616 8.889 10.2838 1.0955 3.0436 382.6577 47.8322 50.5424 186.8144 235.2276 108.1001 425.9987;
	19.5731 10.1836 11.2603 1.3577 3.885 354.8386 44.3548 56.8185 192.961 261.5187 143.139 473.6119;
	19.7157 12.2647 11.1862 2.5521 4.5484 290.6759 36.3345 57.9764 176.5393 285.1907 155.2657 516.4821;
	18.3468 14.7938 11.8198 4.773 4.0328 101.0845 12.6356 53.4234 78.195 226.6514 114.8463 410.4671;
	15.2701 11.9422 10.6768 4.1933 3.9045 85.5684 10.696 44.3554 72.3262 209.8031 99.336 379.9546;
	12.3678 9.2256 7.8569 3.3779 3.5435 66.111 8.2639 42.5361 84.3191 162.3788 80.3588 294.0689;
	7.9938 5.7938 5.4455 3.2221 4.3709 42.0068 5.2508 42.5704 128.5469 96.4811 82.3934 174.7279;
	1.2332 1.0101 0.8031 1.5977 2.0496 62.0487 7.7561 16.4547 38.1289 21.5904 23.7911 39.1004;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
