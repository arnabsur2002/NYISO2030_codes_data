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
	0.1628 0.1787 0.2433 0.0 0.0 0.0 0.0 0.1691 0.4447 0.0 0.0 0.0;
	7.4993 5.9745 5.7341 2.262 5.275 232.489 29.0611 53.6985 203.4413 109.3226 22.9387 197.984;
	17.9701 12.5259 11.8178 3.0334 7.7929 380.7759 47.597 68.3018 197.3063 190.0584 171.0812 344.1968;
	23.7481 16.6083 13.8 5.1996 8.7224 383.8927 47.9866 68.4866 175.2599 220.6742 235.1548 399.6423;
	25.7817 16.474 13.7624 7.5715 6.7198 274.618 34.3273 56.0612 161.8854 232.8748 197.0195 421.7377;
	25.8561 16.5326 13.382 8.7486 5.8787 263.7962 32.9745 54.1311 169.5293 309.7454 231.8774 560.9507;
	23.3039 16.2818 11.9697 7.7629 4.8638 276.3433 34.5429 57.8544 171.0972 334.4589 251.3037 605.707;
	24.3754 15.7239 10.7878 7.8336 8.6351 415.1668 51.8959 76.1014 235.9945 341.7021 259.005 618.8246;
	21.4947 15.6029 10.494 5.8273 8.3262 412.555 51.5694 74.8217 226.3587 336.3715 232.8141 609.1709;
	15.5783 10.4935 4.287 4.2876 7.7269 372.132 46.5165 69.1445 208.7265 289.944 192.4859 525.0903;
	5.567 5.0697 1.5104 4.7932 11.1672 230.2972 28.7872 38.8184 169.578 320.7722 202.8269 580.9204;
	0.8962 0.7396 0.5133 1.5751 3.7062 59.168 7.396 9.9754 37.6665 96.0252 56.9378 173.9022;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
