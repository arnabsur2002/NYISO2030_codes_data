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
	0.096 0.0972 0.1118 0.0 0.0 0.1251 0.0156 0.1784 0.0 0.0 0.0 0.0;
	6.8926 4.5073 4.0374 3.8905 4.6283 26.2483 3.281 11.8721 9.0978 0.0 4.3058 0.0;
	7.8858 6.6048 5.7693 6.3217 1.425 26.2731 3.2841 15.7249 16.728 0.0 12.5387 0.0;
	9.7509 8.6268 7.5657 7.5324 2.484 37.0341 4.6293 22.5616 33.6373 24.8053 20.7282 44.9225;
	20.5417 13.8445 12.382 8.0382 5.8229 353.4242 44.178 65.9539 208.0872 78.937 46.9968 142.9555;
	21.3181 12.3421 12.4386 10.0104 8.1823 369.6193 46.2024 66.3573 215.5808 87.4682 91.0943 158.4054;
	19.5351 9.5538 10.4298 10.8133 8.8123 371.9843 46.498 66.4611 211.3376 92.9442 138.732 168.3225;
	17.4802 15.5411 8.7542 6.4433 4.4473 325.3698 40.6712 68.5986 95.2193 81.3791 147.9193 147.3781;
	15.304 15.3861 7.2025 6.0703 4.4025 328.6526 41.0816 69.0782 58.7177 87.7986 123.9913 159.0038;
	14.006 12.828 7.5856 4.1229 4.9173 312.7755 39.0969 67.4047 62.9403 70.8426 97.5611 128.2964;
	9.3976 10.7227 6.0077 1.9639 5.0718 120.2266 15.0283 25.1226 9.7583 11.4458 12.8537 20.7284;
	1.1844 1.2007 0.8456 0.742 1.4802 39.0158 4.877 7.0954 20.9319 11.6463 9.029 21.0914;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
