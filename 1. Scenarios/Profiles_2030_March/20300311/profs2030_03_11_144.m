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
	0.0 0.0 0.002 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	11.5568 8.4067 6.0869 1.5654 5.5175 245.2785 30.6598 33.5237 90.9496 69.7598 40.2702 126.3355;
	22.1557 15.477 12.6153 5.8536 13.4172 350.1268 43.7658 69.0437 190.9888 200.7301 138.6071 363.5234;
	24.5878 16.6029 13.8 9.4183 13.8792 365.6237 45.703 71.8738 207.5595 308.2072 207.4376 558.1651;
	26.6172 16.6118 13.8 10.9307 11.4291 287.3393 35.9174 61.0372 210.4896 198.1374 188.4741 358.8281;
	26.6331 16.6534 13.8 9.6528 10.6727 183.3382 22.9173 61.9542 190.5655 278.6556 212.4123 504.647;
	26.6418 16.6869 13.801 6.9488 10.3985 141.8585 17.7323 64.7094 184.3428 286.1551 212.053 518.2286;
	26.6183 16.6983 13.9638 10.4786 11.1121 386.8675 48.3584 73.4754 226.064 64.4129 47.0352 116.6521;
	23.858 16.6306 13.9077 11.3623 11.3973 423.4161 52.927 75.7091 244.1512 31.6606 12.1952 57.3376;
	17.9716 14.6238 12.4516 9.2347 10.871 441.5745 55.1968 74.0166 246.3783 18.9636 8.1643 34.3431;
	6.9303 5.5031 4.9994 6.0518 8.6321 409.3613 51.1702 51.5804 172.3875 40.3242 19.4311 73.0273;
	0.71 0.586 0.3851 1.3081 3.5773 51.5786 6.4473 11.2872 25.5877 21.5251 19.0254 38.9821;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
