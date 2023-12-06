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
	0.0951 0.0972 0.1051 0.0 0.0 0.1251 0.0156 0.5047 0.3154 0.0 0.0 0.0;
	3.5615 3.4274 2.3726 0.3319 0.9148 139.6924 17.4615 13.9819 83.0773 33.4525 6.0172 60.5827;
	4.9447 6.9397 4.9713 1.128 1.2698 228.1373 28.5172 20.5119 160.5831 128.3629 36.1117 232.4659;
	5.401 9.9332 5.8665 1.2562 6.7191 208.4197 26.0525 17.6494 172.7161 242.6124 127.9812 439.3725;
	14.5316 15.5321 12.222 5.293 11.0188 340.0533 42.5067 28.484 243.8614 334.9806 166.3686 606.6518;
	20.7852 16.0537 13.2304 6.5556 10.9663 304.4789 38.0599 33.9412 229.0344 342.426 184.9243 620.1355;
	23.4422 16.0834 13.2624 9.1222 10.353 301.2669 37.6584 45.8655 223.6865 327.5164 176.5747 593.1342;
	24.5283 16.5824 13.7384 5.4278 4.6829 221.8999 27.7375 60.2545 191.9361 213.5744 103.1726 386.7846;
	21.6623 15.8736 13.0747 5.4061 4.1739 170.9022 21.3628 61.0678 156.7017 174.0414 76.9203 315.19;
	16.6141 11.5847 9.4571 3.8479 3.5501 117.0991 14.6374 57.9389 97.0515 134.3738 65.6819 243.3518;
	8.8612 6.4131 4.6701 1.9469 2.0523 34.1369 4.2671 22.1513 17.2718 45.3731 17.5387 82.1709;
	1.3693 1.2271 0.6103 0.7437 1.2831 44.0168 5.5021 11.5764 25.2448 15.1973 7.91 27.5224;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
