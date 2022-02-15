%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Copyright (C) 2022 Kevin Matthes
%%
%% This program is free software; you can redistribute it and/or modify
%% it under the terms of the GNU General Public License as published by
%% the Free Software Foundation; either version 2 of the License, or
%% (at your option) any later version.
%%
%% This program is distributed in the hope that it will be useful,
%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%% GNU General Public License for more details.
%%
%% You should have received a copy of the GNU General Public License along
%% with this program; if not, write to the Free Software Foundation, Inc.,
%% 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
%%
%%%%
%%
%%  FILE
%%      gfortran-95-application.m
%%
%%  BRIEF
%%      Create a target application from sources using `gfortran`.
%%
%%  AUTHOR
%%      Kevin Matthes
%%
%%  COPYRIGHT
%%      (C) 2022 Kevin Matthes.
%%      This file is licensed GPL 2 as of June 1991.
%%
%%  DATE
%%      2022
%%
%%  NOTE
%%      See `LICENSE' for full license.
%%      See `README.md' for project details.
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%
%%
%% Variables.
%%
%%%%

% Software.
software.compiler.self  = ' gfortran ';
software.compiler.link  = '';
software.compiler.flags = ' -Wall -Werror -Wextra -Wpedantic -std=f95 ';
software.compiler.call  = [software.compiler.self software.compiler.flags];



% Files.
files.self      = ' gfortran-95-application.m ';
files.source    = ' *.f95 ';
files.target    = '';



% Control flow.
banner  = ['[' files.self '] '];



% Call adjustment.
software.compiler.call  = [software.compiler.call files.source];
software.compiler.call  = [software.compiler.call software.compiler.link];
software.compiler.call  = [software.compiler.call ' -o ' files.target];



%%%%
%%
%% Build steps.
%%
%%%%

% Begin build instruction.
disp ([banner 'Begin build instruction.']);



% Call Fortran compiler.
disp ([banner 'Compile application ' files.target ' ...']);

disp (software.compiler.call);
system (software.compiler.call);

disp ([banner 'Done.']);



% End build instruction.
disp ([banner 'End build instruction.']);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
