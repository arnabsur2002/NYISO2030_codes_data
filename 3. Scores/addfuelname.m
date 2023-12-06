function mpcaseout = addfuelname(mpcasein, fname)

%   mpcasein - File name or struct with initial MATPOWER case.
%
%   FNAME (optional) - Name to use to save resulting MATPOWER case. If empty,
%       the case will not be saved to a file. (future use)
%

% Default power fuel for all is wind

% 2020.11.07
% Alberto J. Lamadrid

% check if there is a genfuel field
if ~isfield(mpcasein, 'genfuel')
	mpcasein.genfuel = cell(size(mpcasein.gen, 1), 1);
	for ct =1:size(mpcasein.genfuel, 1)
		mpcasein.genfuel{ct} = 'wind';
	end
end

% coerce creation of fuel types
icoal = [];
ioil = [];
ing = [];
ihydro = [];
inuke = [];
iwind = [];
isolar = [];
iess = [];
isyncgen = [];
ilo = [];
imagic = [];
ireu = [];
irfo = [];													% refined fuel oil
iwod = [];
igeo = [];
ioth = [];
idfo = [];													% distillate fuel oil
for i = 1:length(mpcasein.genfuel)
  if strcmp('coal', strtrim(mpcasein.genfuel{i}))
    icoal = [ icoal; i];
  elseif strcmp('oil', strtrim(mpcasein.genfuel{i}))
    ioil = [ ioil; i];
  elseif strcmp('hydro', strtrim(mpcasein.genfuel{i}))
    ihydro = [ ihydro; i];
  elseif strcmp('ng', strtrim(mpcasein.genfuel{i}))
    ing = [ ing; i];
  elseif strcmp('nuclear', strtrim(mpcasein.genfuel{i}))
    inuke = [ inuke; i];
  elseif strcmp('wind', strtrim(mpcasein.genfuel{i}))
    iwind = [ iwind; i];
  elseif strcmp('solar', strtrim(mpcasein.genfuel{i}))
    isolar = [ isolar; i];
  elseif strcmp('ess', strtrim(mpcasein.genfuel{i}))
    iess = [ iess; i];
  elseif strcmp('syncgen', strtrim(mpcasein.genfuel{i}))
    isyncgen = [ isyncgen; i];
  elseif strcmp('na', strtrim(mpcasein.genfuel{i}))
    ilo = [ilo; i];
  elseif strcmp('magic', strtrim(mpcasein.genfuel{i}))
    imagic = [imagic; i];
  elseif strcmp('refuse', strtrim(mpcasein.genfuel{i}))
    ireu = [ireu; i];
  elseif strcmp('rfo', strtrim(mpcasein.genfuel{i}))
    irfo = [irfo; i];
  elseif strcmp('wood', strtrim(mpcasein.genfuel{i}))
    iwod = [iwod; i];
  elseif strcmp('geothermal', strtrim(mpcasein.genfuel{i}))
    igeo = [igeo; i];   
  elseif strcmp('dfo', strtrim(mpcasein.genfuel{i}))
    idfo = [idfo; i];   
  else
    ioth = [ioth; i];   
%    error('unrecognized fuel type')
  end
end
mpcasein.icoal = icoal;
mpcasein.ioil = ioil;
mpcasein.ing = ing;
mpcasein.ihydro = ihydro;
mpcasein.inuke = inuke;
mpcasein.iwind = iwind;
mpcasein.isolar = isolar;
mpcasein.iess = iess;
mpcasein.isyncgen = isyncgen;
mpcasein.ilo = ilo;
mpcasein.imagic = imagic;
mpcasein.ireu = ireu;
mpcasein.irfo = irfo;
mpcasein.iwod = iwod;
mpcasein.igeo = igeo;
mpcasein.idfo = idfo;
mpcasein.ioth = ioth;

%% save case, if filename is given
if nargin > 1 && ~isempty(fname)
    savecase(fname, mpc, '2');
end
if nargout > 0
    mpcaseout = mpcasein;
end
