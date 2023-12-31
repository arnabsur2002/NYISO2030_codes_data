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
	0.1575 0.1621 0.24 0.0 0.0 0.0 0.0 0.2965 0.0 0.0 0.0 0.0;
	10.4096 7.3588 8.0092 3.5699 6.9521 259.8754 32.4844 52.056 147.606 73.1882 24.8855 132.5443;
	20.6152 12.8498 11.9772 9.5084 9.0422 359.6836 44.9604 41.4699 201.4448 32.4487 43.8778 58.7648;
	23.6812 16.3713 13.8 11.0883 9.2896 397.2294 49.6537 48.664 212.4832 31.6721 84.171 57.3584;
	25.754 16.474 13.7624 11.8765 9.2073 386.2274 48.2784 70.2384 229.7263 226.4139 177.0581 410.037;
	25.9535 16.5326 13.7859 11.8031 9.7561 316.827 39.6034 63.4137 217.1172 302.0381 203.691 546.9928;
	25.697 16.5331 13.7863 11.2546 9.9147 245.1904 30.6488 51.2541 194.1434 308.0395 197.7084 557.8614;
	25.5827 16.5546 13.7597 11.3745 12.5625 295.6772 36.9597 64.6272 255.3506 341.8429 247.3938 619.0796;
	22.8506 16.3881 13.7008 11.8013 11.8985 297.8241 37.228 67.9051 256.7914 336.4716 221.8002 609.3522;
	18.766 15.2944 12.1052 10.9294 10.9667 247.6704 30.9588 69.4298 242.7503 303.7661 186.3241 550.1223;
	11.1964 8.4096 7.5843 6.9536 11.563 66.0451 8.2556 51.7457 167.6074 220.3051 124.497 398.9738;
	0.9933 0.7784 0.5755 1.5748 3.4782 58.226 7.2783 9.8843 34.9853 61.9604 35.0827 112.2107;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
