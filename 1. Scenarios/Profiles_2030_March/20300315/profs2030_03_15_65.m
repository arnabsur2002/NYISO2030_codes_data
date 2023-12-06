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
	0.42 0.369 0.3086 0.0 0.0 0.1765 0.0221 0.1798 0.0956 0.0 0.0 0.0;
	0.3492 0.6142 0.0312 0.4165 3.7351 38.0832 4.7604 7.9868 21.7418 56.8768 70.1027 103.0043;
	3.5401 3.1286 2.3479 1.3001 8.4525 113.5822 14.1978 29.7155 80.804 218.4787 93.7631 395.6662;
	9.8049 7.8125 5.6986 2.1148 9.5523 148.0928 18.5116 43.7329 107.3339 295.1154 118.5594 534.4558;
	14.4185 11.8943 8.889 7.1846 12.9078 145.2803 18.16 38.8261 70.8111 248.3916 124.0661 449.8387;
	13.5235 14.2808 8.0344 10.8577 12.3866 133.065 16.6331 36.6235 94.5129 231.6431 161.5099 419.507;
	11.1305 13.5297 7.9554 11.2082 11.9713 143.9082 17.9885 44.4228 127.3751 229.0821 167.4785 414.8691;
	5.4546 5.1774 5.6983 10.956 7.3041 300.8386 37.6048 68.1791 215.9543 164.3174 111.9213 297.5799;
	4.9659 3.648 4.5924 10.3504 6.3849 335.6036 41.9505 66.5784 219.401 122.5164 90.762 221.878;
	3.0439 2.0053 2.6404 7.9275 5.0377 338.7588 42.3448 63.8341 210.1351 60.7798 36.7733 110.0725;
	1.6284 1.2405 0.7337 3.4459 2.5975 338.1738 42.2717 35.6389 209.2316 6.3262 0.3536 11.4567;
	0.5803 0.5381 0.2956 1.27 1.756 80.7268 10.0908 8.1216 61.5612 3.6935 0.3969 6.6889;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];