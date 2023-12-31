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
	0.1672 0.1621 0.2433 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	2.3328 2.8273 1.3577 1.994 0.5225 186.056 23.257 3.3747 98.3485 134.2208 29.884 243.0747;
	3.0425 6.8629 1.115 4.0617 0.5216 304.3778 38.0472 22.3309 157.329 149.2118 98.6123 270.2235;
	10.7781 13.8468 5.2449 6.5556 0.7941 325.9359 40.742 44.5968 175.2632 196.5343 110.6039 355.9248;
	24.6567 14.7603 11.2979 6.1076 2.2165 244.7866 30.5983 46.7742 172.776 225.3106 150.5114 408.0388;
	22.7624 12.7283 10.4788 6.3997 2.6611 263.1946 32.8993 43.668 152.2365 246.6018 182.6571 446.5974;
	21.8725 12.3698 9.6884 6.4367 2.5677 267.6577 33.4572 39.7635 119.5234 236.9098 192.4943 429.045;
	25.8343 16.1984 13.4599 8.4761 7.8423 360.0352 45.0044 59.2207 180.5412 340.5617 245.8147 616.7593;
	23.1494 16.384 13.7008 7.3161 8.1896 353.2353 44.1544 60.4943 199.187 334.9335 217.1328 606.5665;
	18.7233 13.477 11.6124 4.8665 8.3043 321.54 40.1925 57.1197 208.9222 276.3937 171.021 500.5507;
	8.3226 6.779 5.9631 5.7867 12.6275 288.2108 36.0264 45.2951 227.8937 201.9574 164.473 365.746;
	0.8962 0.7618 0.5405 2.3412 4.46 69.5333 8.6917 12.9653 47.8626 65.5477 46.4197 118.7073;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
