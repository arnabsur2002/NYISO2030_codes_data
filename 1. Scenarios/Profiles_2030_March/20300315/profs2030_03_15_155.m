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
	0.4095 0.3481 0.302 0.0 0.0 2.1697 0.2712 0.1431 1.6706 0.0 0.0 0.0;
	2.9893 2.3508 2.2611 1.4577 0.1779 99.4606 12.4326 7.4239 119.9885 106.9439 34.5766 193.676;
	5.6595 4.9911 3.5676 5.7549 1.1317 151.434 18.9293 8.834 165.7454 142.767 82.7468 258.5518;
	9.369 7.1886 4.3712 8.2028 2.4017 208.5747 26.0718 19.4504 190.2274 194.6083 101.2081 352.4368;
	15.7498 11.7474 11.4476 10.965 12.4519 381.4689 47.6836 54.3853 220.5367 162.7751 23.2672 294.7867;
	20.9446 15.4986 13.8335 11.1301 12.1097 416.3152 52.0394 61.1857 261.797 162.9684 24.0132 295.1367;
	22.57 15.8676 14.074 11.2082 12.2942 402.9427 50.3678 56.0478 258.2039 135.5269 23.1845 245.44;
	15.3218 9.4749 12.1667 11.8161 12.5066 383.813 47.9766 40.4804 221.8341 92.0677 8.9151 166.7351;
	9.1006 6.7408 8.8226 11.7269 12.473 340.7788 42.5974 32.0082 188.6957 73.4468 4.2763 133.0126;
	4.3063 2.5624 4.9382 10.8098 11.7404 293.5784 36.6973 29.8179 127.7584 42.9208 2.5361 77.7297;
	0.4153 0.3293 0.6344 3.0723 5.2249 234.3884 29.2986 20.7521 87.4786 8.1836 0.0 14.8205;
	0.211 0.1937 0.1964 1.0445 1.4801 60.3251 7.5406 3.7195 46.8612 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
