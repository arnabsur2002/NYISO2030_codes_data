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
	0.0 0.0 0.002 0.0 0.0 0.1024 0.0128 0.1441 0.0 0.0 0.0 0.0;
	4.5013 4.1903 4.3127 5.2954 4.0165 122.5576 15.3197 51.2282 109.8584 69.6496 39.6118 126.1359;
	17.1435 9.6986 9.3448 9.6415 10.5364 370.4244 46.3031 78.2741 207.2239 251.5008 145.8476 455.4696;
	23.3026 15.3515 13.6624 11.2471 12.1232 419.0145 52.3768 80.0887 242.8708 333.5078 221.5808 603.9846;
	26.334 15.6857 13.8 11.2835 9.5234 409.625 51.2031 74.6804 247.461 274.668 200.0813 497.4254;
	26.334 16.5832 13.8 11.4504 9.8442 411.3575 51.4197 73.0349 225.7915 293.7181 218.904 531.9253;
	26.334 16.6083 13.8 11.4717 10.0504 420.4872 52.5609 71.9929 207.7419 301.8629 224.4024 546.6756;
	26.3192 16.6083 13.8 11.4576 11.1574 453.001 56.6251 72.4882 194.5609 189.0904 175.0641 342.4439;
	23.4126 16.6083 13.8 11.2118 11.214 442.6061 55.3258 73.5592 186.6136 140.4613 116.2138 254.3763;
	18.0101 12.9704 9.554 7.0123 10.0468 413.8381 51.7298 70.1608 169.0383 51.8779 43.1524 93.9511;
	9.0606 6.6322 4.3662 2.9315 5.848 173.3545 21.6693 26.3129 94.3936 10.2446 8.8235 18.553;
	0.7866 0.6669 0.4234 1.2906 2.8326 51.4133 6.4267 10.0248 24.8624 17.6121 17.8049 31.8957;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
