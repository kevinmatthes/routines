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
%%      git-alias.m
%%
%%  BRIEF
%%      Configure some useful alias commands for Git.
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
git.config.mode     = ' --global ';
git.config.self     = ' config ';
git.config.target   = ' alias.';
git.config.call     = [git.config.self git.config.mode git.config.target];
git.self            = ' git ';
git.call            = [git.self git.config.call];

repotool.args   = ' --all ';
repotool.self   = ' gitk ';
repotool.call   = [repotool.self repotool.args];



% Files.
files.self  = 'git-alias.m';



% Control flow.
banner  = ['[ ' files.self ' ] '];



%%%%
%%
%% Build steps.
%%
%%%%

% Begin build instruction.
disp ([banner 'Begin build instruction.']);



% Set the Git commands.
name        = 'backup';
definition  = '"push --all"';
disp ([banner '[ ' name ' ] Backup all commits.']);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'bone';
definition  = '"clone --bare"';
disp ([banner '[ ' name ' ] Clone a bare repository.']);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'bugfix';
definition  = '"!git commit -m Bugfix && git store"';
disp ([banner '[ ' name ' ] Write and backup a bugfix.']);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'checkin';
definition  = '"!git add . && git commit"';
disp ([banner '[ ' name ' ] Immediately create a new commit.']);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'create';
definition  = ['"!git init && git add . && git commit -m ' "'" ];
definition  = [definition 'This is the initial commit.' "'" '"'];
disp ([banner '[ ' name ' ] Immediately create a new Git repository.']);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'ff';
definition  = '"merge --ff"';
disp ([banner '[ ' name ' ] Update a branch without a new commit.']);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'goto';
definition  = '"checkout"';
disp ([banner '[ ' name ' ] Switch to a certain branch.']);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'graph';
definition  = ['"!' repotool.call '&"'];
disp ([banner '[ ' name ' ] Invoke the GUI repository inspection tool.']);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'newbranch';
definition  = '"checkout -b"';
disp ([banner '[ ' name ' ] Create and switch to a new branch.']);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'noff';
definition  = '"merge --no-ff"';
disp ([banner '[ ' name ' ] Update a branch with a new commit.']);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'savetags';
definition  = '"push --tags -f"';
disp ([banner '[ ' name ' ] Backup all tags.']);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'verbose';
definition  = '"log --graph --stat --pretty=fuller --decorate --all -p"';
disp ([banner '[ ' name ' ] Write the whole history to the terminal.']);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'view';
definition  = '"log --graph --pretty=oneline --decorate --all"';
disp ([banner '[ ' name ' ] Write the a history summary to the terminal.']);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'whereami';
definition  = '"branch -vv"';
disp ([banner '[ ' name ' ] Give information about the current branch.']);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);



% End build instruction.
disp ([banner 'End build instruction.']);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
