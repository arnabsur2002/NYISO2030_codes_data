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
	1.0443 0.8574 0.7579 0.0 0.0 9.702 1.2128 4.5157 1.3872 0.0 0.0 0.0;
	8.6915 7.2704 4.443 1.5094 1.1739 314.2392 39.2799 44.2132 213.468 76.1653 32.2264 137.9358;
	9.7717 12.3331 8.201 4.8628 2.3627 358.7302 44.8413 62.8023 181.2231 154.1566 60.1444 279.1785;
	13.9595 16.4284 13.7055 8.1176 4.6743 383.3454 47.9182 64.9292 177.3358 238.8148 100.0801 432.495;
	20.56 16.362 13.8 9.0609 9.2483 352.8195 44.1024 56.8111 138.0195 255.3837 129.4004 462.5014;
	17.7987 16.1779 13.7242 10.6841 12.2031 319.6765 39.9596 57.6665 158.5833 270.8784 145.4448 490.5623;
	9.6886 13.2774 11.8482 11.459 13.1155 297.8195 37.2274 64.1305 153.3278 274.685 150.6661 497.4562;
	2.8272 6.4038 10.2482 11.6366 11.4774 316.6393 39.5799 76.8851 51.7665 258.7992 129.5754 468.6869;
	2.34 4.4466 8.9718 11.6125 8.6814 322.5552 40.3194 76.759 37.1496 285.0685 139.6461 516.2608;
	2.3238 4.8701 6.3426 10.6119 6.2051 309.1279 38.641 73.0127 35.3401 256.9104 161.5812 465.2663;
	1.5884 2.8518 2.8613 7.4026 3.827 212.5699 26.5712 46.8872 59.1231 128.4965 117.8396 232.7079;
	1.1859 0.9594 0.7521 1.6097 1.5718 64.7335 8.0917 15.5788 32.6668 15.9997 16.7053 28.9756;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
