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
	0.4784 0.4124 0.429 0.0 0.0 0.0 0.0 0.2 0.0 0.0 0.0 0.0;
	5.4893 6.7685 4.6906 0.7602 0.7575 243.8866 30.4858 36.2293 84.8043 10.9126 15.5353 19.7628;
	15.9383 10.1166 9.7052 5.0101 6.0944 447.0556 55.882 70.0771 265.8722 45.2337 33.5601 81.9185;
	22.3078 15.773 13.6798 8.5957 8.6753 462.8165 57.8521 73.5847 280.2386 127.2755 48.784 230.4966;
	23.7621 15.704 12.633 4.8483 3.6299 399.4897 49.9362 59.408 220.8532 142.1823 45.8512 257.493;
	22.9765 14.1447 10.4554 2.9624 1.4507 357.8725 44.7341 66.7255 201.5048 90.6069 22.7647 164.0896;
	21.2469 10.5226 8.8654 1.7523 1.1035 345.4279 43.1785 71.6597 202.3202 56.6665 11.9195 102.6233;
	9.167 4.6154 5.445 1.5617 2.6529 258.5513 32.3189 62.3812 184.2943 72.0719 16.2606 130.5227;
	7.2363 4.7635 4.9714 1.7192 3.9447 267.8856 33.4857 49.5868 176.6084 77.445 22.8337 140.2534;
	4.5728 5.4851 4.4839 1.6134 3.732 202.2696 25.2837 26.9961 132.5107 61.7436 25.5442 111.8181;
	0.9371 1.8794 1.5478 0.8985 0.3699 28.3685 3.5461 3.8167 12.0306 11.2131 7.1211 20.307;
	0.3545 0.3047 0.3027 0.4207 0.2037 4.7713 0.5964 1.5367 2.4274 2.9077 2.406 5.2658;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
