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
	0.4994 0.4164 0.424 0.0 0.0 0.0 0.0 0.2 0.0 0.0 0.0 0.0;
	9.3846 8.262 5.9366 0.737 2.1277 271.2346 33.9043 44.0027 189.2764 11.6397 5.62 21.0796;
	13.9176 13.5376 10.7832 0.7447 3.9279 433.6852 54.2106 65.6304 255.9366 32.7268 21.7205 59.2684;
	17.4902 16.5751 13.7239 1.2333 5.9013 446.4273 55.8034 70.2024 267.0309 62.331 40.7625 112.8818;
	22.7824 16.1547 13.6408 0.7671 5.105 323.3973 40.4247 57.779 237.739 93.1269 30.6868 168.6534;
	24.4894 16.371 13.7627 1.5985 7.0654 334.7667 41.8458 59.2785 269.1609 169.5817 51.9003 307.1135;
	24.5574 16.3954 13.7675 2.0847 7.1547 329.4438 41.1805 58.2489 269.0013 210.5585 76.6866 381.3227;
	13.3631 11.9719 9.4696 1.3314 3.0914 125.5275 15.6909 29.7311 128.5367 146.8129 52.4913 265.879;
	12.1329 10.8921 8.6623 0.8383 1.3365 92.4959 11.562 28.2391 93.9438 81.3509 28.6864 147.3269;
	9.125 7.1565 6.0284 0.5805 0.6314 68.4187 8.5523 29.6302 82.8915 51.5731 7.8543 93.3991;
	4.3435 2.4828 2.332 0.3009 0.0 19.3342 2.4168 21.8291 63.3678 12.1901 0.0 22.0763;
	0.5633 0.3846 0.3402 0.3425 0.1602 5.4226 0.6778 2.5588 8.0663 7.041 4.4657 12.7514;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
