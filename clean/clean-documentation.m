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
%%      clean-documentation.m
%%
%%  BRIEF
%%      Remove the automatically compiled documentation.
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
software.check.self     = ' test ';
software.check.flags    = ' -d ';
software.check.call     = [software.check.self software.check.flags];



% Directories.
directories.delete.dir1 = '';
% directories.delete.dir2 = '';
% directories.delete.dir3 = '';
% ...



% Files.
files.self              = ' clean-documentation.m ';



% Control flow.
banner  = ['[' files.self '] '];



%%%%
%%
%% Build steps.
%%
%%%%

% Begin build instruction.
disp ([banner 'Begin build instruction.']);



% Check for and remove documentation.
fprintf ([banner 'Check for and remove documentation directories... ']);

[check.dir1 ~]  = system (software.check.call directories.delete.dir1);
% [check.dir2 ~]  = system (software.check.call directories.delete.dir2);
% [check.dir3 ~]  = system (software.check.call directories.delete.dir3);
% ...

if ~ check.dir1;
    delete ([directories.delete.dir1 '/*']);
    rmdir (directories.delete.dir1);
end;

% if ~ check.dir2;
%     delete ([directories.delete.dir2 '/*']);
%     rmdir (directories.delete.dir2);
% end;

% if ~ check.dir3;
%     delete ([directories.delete.dir3 '/*']);
%     rmdir (directories.delete.dir3);
% end;

% ...

disp ('Done.');



% End build instruction.
disp ([banner 'End build instruction.']);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
