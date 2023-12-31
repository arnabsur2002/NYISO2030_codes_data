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
	0.4095 0.3481 0.302 0.0 0.0 0.1765 0.0221 0.1681 0.0956 0.0 0.0 0.0;
	1.5765 1.5721 1.9463 2.8926 4.9257 51.6251 6.4531 6.4393 16.8634 80.5165 42.1319 145.8159;
	3.2281 4.1781 4.3585 2.5119 6.9444 144.6979 18.0872 13.0829 29.9895 109.0222 128.2887 197.4398;
	4.8614 6.6774 6.3015 3.1898 7.1269 169.6855 21.2107 12.7219 33.8579 117.3683 155.7781 212.5547;
	7.5133 10.959 10.7803 10.4787 12.8254 72.4181 9.0523 5.1536 37.4269 258.8333 172.1431 468.7486;
	16.1194 15.6025 13.3126 10.8138 12.2659 57.8851 7.2356 7.8671 53.2103 310.3349 198.035 562.0184;
	18.4491 16.0498 13.2423 10.4358 12.2326 80.7334 10.0917 16.2681 77.756 331.7927 195.8484 600.8785;
	10.347 8.0339 4.8296 10.7085 11.4084 239.6291 29.9536 48.9001 171.4917 269.1295 136.6107 487.3951;
	4.436 3.5209 1.0615 10.4898 11.3318 231.7868 28.9733 47.2348 161.6078 257.5994 123.5446 466.514;
	0.8363 1.0712 0.1792 9.8725 10.9608 166.9494 20.8687 40.1065 119.084 301.6233 116.4168 546.2417;
	0.0 0.1207 0.0 7.4547 7.9443 109.2537 13.6567 28.6584 70.4848 259.7712 27.1165 470.4472;
	0.2069 0.2116 0.1816 1.7268 2.4576 53.5328 6.6916 8.9152 41.8766 117.2598 15.9069 212.3583;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
