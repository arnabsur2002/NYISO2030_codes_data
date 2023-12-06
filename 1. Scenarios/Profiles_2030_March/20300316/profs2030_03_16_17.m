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
	1.0234 0.8339 0.7134 0.0 0.0 9.4835 1.1854 4.1882 0.4191 0.0 0.0 0.0;
	8.6542 8.5406 6.3907 3.1335 3.5974 237.9141 29.7393 12.2981 78.7473 124.6041 34.8819 225.6588;
	15.8222 14.6226 11.0167 5.903 10.4789 421.9195 52.7399 50.6585 198.6236 194.5126 96.9987 352.2635;
	19.2667 16.6083 13.3307 8.8618 12.5079 454.1962 56.7745 65.058 244.0127 271.9669 154.3035 492.5336;
	14.7915 13.4898 11.3572 8.3232 9.0189 447.1158 55.8895 65.2922 222.2626 234.336 236.4401 424.3839;
	18.342 15.3527 12.813 8.2947 7.806 425.4765 53.1846 62.9701 198.0465 221.104 225.461 400.4207;
	20.1931 15.7474 13.0884 7.1652 7.4165 408.5195 51.0649 62.6468 194.2446 164.9217 204.4949 298.6743;
	11.9709 9.1563 9.3684 3.1678 6.3113 390.7004 48.8375 67.6463 209.6864 147.437 117.1157 267.0093;
	5.9981 3.2658 5.1367 1.9577 5.4718 392.672 49.084 69.2225 232.631 162.0783 92.8956 293.5249;
	5.0171 3.0169 2.8543 1.6796 3.9665 381.5379 47.6922 68.6874 227.9816 189.322 68.1088 342.8633;
	7.0115 2.838 3.2782 2.998 3.0078 295.4309 36.9289 56.6756 231.8441 146.4919 44.7073 265.2977;
	1.723 1.1207 0.9119 1.2658 1.1916 80.2186 10.0273 17.0087 48.6946 16.0578 7.6306 29.0808;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];