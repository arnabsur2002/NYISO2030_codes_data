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
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.167 0.0736 0.2459 1.128 0.8291 7.7353 0.9669 11.5181 50.3944 12.0431 4.4731 21.8101;
	0.7402 0.2413 0.6618 0.7498 3.7694 69.1688 8.6461 28.3164 107.1486 25.5112 5.6613 46.2009;
	1.2586 0.4776 0.9919 0.9664 6.0901 128.6063 16.0758 36.0281 129.1501 57.7147 13.9657 104.5217;
	2.8305 1.5648 1.9168 2.5845 8.1684 156.0973 19.5122 41.1051 188.4036 118.2693 33.1483 214.1864;
	2.7075 1.7099 1.6906 4.9001 8.6414 124.5286 15.5661 31.8266 178.4792 115.2751 35.286 208.7639;
	2.4071 1.5789 1.1996 5.2784 9.4426 111.4077 13.926 25.5405 176.4254 74.9729 27.195 135.7763;
	3.2717 2.1683 0.8075 4.1636 10.1038 192.6803 24.085 56.9833 187.4798 79.6006 26.1004 144.1572;
	3.0687 2.2932 0.9114 2.7009 8.7033 163.8742 20.4843 62.3419 159.109 63.7795 23.1119 115.5051;
	2.5697 2.0439 0.8709 1.8801 6.1878 138.1421 17.2678 70.9171 103.2715 57.7667 20.7543 104.6159;
	2.0665 1.7372 1.1264 0.8854 2.3138 79.3374 9.9172 62.6739 24.1166 48.5537 16.7339 87.931;
	0.3307 0.2985 0.1698 0.4433 1.4235 40.6521 5.0815 10.3677 26.0244 22.1277 10.2896 40.0734;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
