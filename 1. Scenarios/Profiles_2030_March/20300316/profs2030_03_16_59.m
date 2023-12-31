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
	1.0394 0.9225 0.7082 0.0 0.0 9.4835 1.1854 4.2132 0.4191 0.0 0.0 0.0;
	7.9452 6.932 4.6112 0.7917 4.2554 184.116 23.0145 32.5232 92.7265 62.8002 0.5772 113.7316;
	17.5834 13.53 11.0647 0.4135 6.4751 185.5832 23.1979 38.7809 94.6121 114.8771 0.7818 208.043;
	23.4351 16.6083 13.8 1.6161 8.0015 223.9409 27.9926 34.4388 96.8908 182.8314 6.6547 331.1088;
	25.5036 16.3686 13.9681 3.3213 8.5818 275.8716 34.4839 13.1269 130.6902 191.0124 109.5228 345.9247;
	26.3493 16.7249 14.2288 3.847 9.1312 332.5511 41.5689 20.4822 168.4073 186.5326 145.1847 337.8117;
	26.7913 16.9496 14.2899 2.46 8.0675 352.1339 44.0167 30.7516 181.4864 168.2358 132.0091 304.6761;
	26.7761 16.8193 14.1846 0.7698 3.747 297.8573 37.2322 21.2537 160.804 101.5408 29.9417 183.891;
	24.3643 16.8205 14.3239 0.5585 2.6679 262.9499 32.8687 11.6943 125.8756 93.3446 27.5368 169.0477;
	17.4586 15.4078 13.898 0.8451 2.0897 226.5491 28.3186 3.4073 92.1572 53.5738 33.1822 97.0225;
	7.1869 8.1238 8.9239 2.5375 3.2712 141.8496 17.7312 0.2292 50.2433 0.499 23.6628 0.9037;
	1.4697 1.5211 1.1403 0.8855 1.2217 63.2323 7.904 11.2314 32.0809 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
