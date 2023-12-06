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
	0.4095 0.3481 0.302 0.0 0.0 0.2308 0.0289 0.1681 0.0956 0.0 0.0 0.0;
	4.342 3.3951 3.1498 0.3676 0.5819 112.0916 14.0115 4.9514 36.3484 45.5207 17.4039 82.4383;
	8.6634 6.4465 5.5832 0.7055 0.5696 84.1024 10.5128 0.0 66.6519 196.5657 62.1058 355.9816;
	12.4032 7.7525 7.4528 1.429 0.9713 82.5587 10.3198 0.4642 69.9838 303.1889 120.226 549.077;
	12.2697 9.0993 8.9087 3.5228 10.3762 116.662 14.5828 6.3614 49.7006 315.6326 144.1525 571.6126;
	10.9686 8.5052 7.9755 6.1244 10.865 146.0138 18.2517 9.5001 73.6767 336.5303 180.5492 609.4583;
	8.6953 7.0056 5.2538 7.7175 11.0953 120.288 15.036 8.3818 90.9556 349.8089 202.7554 633.5059;
	1.6041 2.1446 1.0368 6.2285 3.1134 57.1185 7.1398 7.4271 135.8648 281.8717 163.2937 510.4713;
	2.4728 3.118 1.1688 5.2499 2.0046 43.1105 5.3888 5.2879 109.9767 195.2323 130.2967 353.5668;
	2.6923 2.5698 1.4316 2.1589 1.3298 42.4487 5.3061 4.5982 91.3536 87.2311 88.0414 157.976;
	1.9054 1.1455 0.81 2.5659 1.4348 70.0833 8.7604 3.572 91.2783 0.0 7.7578 0.0;
	0.3691 0.2311 0.2024 1.8929 1.3701 50.8748 6.3594 3.6686 45.6385 0.0 4.2845 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
