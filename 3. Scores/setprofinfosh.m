function setprofinfosh(dp, datei, namefile, startj, hourb, typt, nzs, col, chgtype, table, namefilepath)
% Auxiliary function to transform wind profiles
% Inputs:
%     DP        :     Data Profile [nt x nj x nzs]
%     DATEI     :     date stamp on file
%     NAMEFILE  :     name to save file ouput
%     STARTJ    :     (1) Column where information starts from
%     HOURB     :     (0) First hour of the period
%     TYPT      :     ('w'), values 'w'/'l'/'c', for wind/load/cost profiles. 
%                     If a different profile is required, choose 'c' and specify the table
%     NZS       :     (1) number of selected zones for simulation
%     COL       :     Column where change will be added
%     CHGTYPE   :     Kind of change applied
%     TABLE     :     Table to apply change
% 
% Assumptions
%  DP has dimensions (nt x nj x nz), where nz is the number of sites (e.g., wind sites)
% - based on setprofinfo, generalized to deal with load as well
%
% 2025.04.25
% Alberto J. Lamadrid L.

if nargin<11
	namefilepath = [];
	if nargin<10
		table = [];
		if nargin<9
			chgtype = [];
			if nargin<8
				col = [];
				if nargin <7
					nzs = 1;
					if nargin<6
						typt = 'w';
						if nargin<5
							hourb = 0;
								if nargin <4
									startj = 1;
								end
						end
					end
				end
			end
		end
	end
end

fid = fopen(sprintf('%s%s.m', namefilepath, namefile), 'w');
fprintf(fid, 'function profiles = %s\n', namefile);
fprintf(fid, '%% First hour of data is %d\n', hourb);
fprintf(fid, '%% %s\n', datei);
fprintf(fid, '%% Arnab Sur\n');
fprintf(fid, 'define_constants;\n');
fprintf(fid, '[CT_LABEL, CT_PROB, CT_TABLE, CT_TBUS, CT_TGEN, CT_TBRCH, CT_TAREABUS, ...\n');
fprintf(fid, '    CT_TAREAGEN, CT_TAREABRCH, CT_ROW, CT_COL, CT_CHGTYPE, CT_REP, ...\n');
fprintf(fid, '    CT_REL, CT_ADD, CT_NEWVAL, CT_TLOAD, CT_TAREALOAD, CT_LOAD_ALL_PQ, ...\n');
fprintf(fid, '    CT_LOAD_FIX_PQ, CT_LOAD_DIS_PQ, CT_LOAD_ALL_P, CT_LOAD_FIX_P, ...\n');
fprintf(fid, '    CT_LOAD_DIS_P, CT_TGENCOST, CT_TAREAGENCOST, CT_MODCOST_F, ...\n');
fprintf(fid, '    CT_MODCOST_X] = idx_ct;\n');
fprintf(fid, '\n');
fprintf(fid, 'profiles = struct( ...\n');
fprintf(fid, '    ''type'', ''mpcData'', ...\n');
fprintf(fid, '    ''rows'', [], ...\n');
if strcmp(typt, 'w')
  fprintf(fid, '    ''table'', CT_TGEN, ...\n');
  if isempty(col)
    fprintf(fid, '    ''col'', PMAX, ...\n');
  else
    fprintf(fid, '    ''col'', %d, ...\n', col);
  end
  if isempty(chgtype)
    fprintf(fid, '    ''chgtype'', 1, ...\n');
  else
    fprintf(fid, '    ''chgtype'', %d, ...\n', chgtype);
  end
elseif strcmp(typt, 'l')
	if isempty(table)
		fprintf(fid, '    ''table'', CT_TLOAD, ...\n');
	else
		fprintf(fid, '    ''table'', %d, ...\n', table);
	end
  if isempty(col)
    fprintf(fid, '    ''col'', CT_LOAD_ALL_P, ...\n');
  else
    fprintf(fid, '    ''col'', %d, ...\n', col);
  end
  if isempty(chgtype)
    fprintf(fid, '    ''chgtype'', CT_REL, ...\n');
  else
    fprintf(fid, '    ''chgtype'', %d, ...\n', chgtype);
  end
else
  if isempty(table)
    fprintf(fid, '    ''table'', CT_TGENCOST, ...\n');
  else
    fprintf(fid, '    ''table'', %d, ...\n', table);
  end
  if isempty(col)
    fprintf(fid, '    ''col'', COST, ...\n');
  else
    fprintf(fid, '    ''col'', %d, ...\n', col);
  end
  if isempty(chgtype)
    fprintf(fid, '    ''chgtype'', CT_ADD, ...\n');
  else
    fprintf(fid, '    ''chgtype'', %d, ...\n', chgtype);
  end
end
fprintf(fid, '    ''values'', [] );\n');

fprintf(fid, 'profiles.rows(:, 1) = [\n');
if strcmp(typt, 'w')
  fprintf(fid, '1:%4.0d', nzs);
elseif strcmp(typt, 'l')
	if nzs>1
		fprintf(fid, '1:%4.0d', nzs);
	else
  	fprintf(fid, '0');
  end
else
  fprintf(fid, '%4.0f', nzs);
end
fprintf(fid, '\n];\n');

dp = circshift(dp, hourb);          % shift hours for receding horizon

if strcmp(typt, 'c')                % information for cost function
  fprintf(fid, 'for ct = 1:size(profiles.rows, 1)\n');
  fprintf(fid, 'profiles.values(:, :, ct) = [\n');
    for it = 1:size(dp, 1)
      fprintf(fid, '%15.4f', dp(it, :));
      fprintf(fid, '\n');
    end
  fprintf(fid, '];\n');
  fprintf(fid, 'end\n');
else
  for zct = startj: nzs
    fprintf(fid, 'profiles.values(:, :, %d) = [\n', zct);
    for it = 1:size(dp, 1)
      fprintf(fid, '%12.4f', dp(it, :, zct));
      fprintf(fid, '\n');
    end
    fprintf(fid, '];\n');
  end
end

fclose(fid);