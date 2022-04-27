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
git.config.mode     = '--global';
git.config.self     = 'config';
git.config.target   = 'alias.';
git.config.call     = [ git.config.self ' ' git.config.mode ' '              ...
                        git.config.target                                    ...
                      ];
git.self            = 'git';
git.call            = [git.self ' ' git.config.call];

lister.args = '-ails --color=always';
lister.self = 'ls';
lister.call = [lister.self ' ' lister.args];

repotool.args   = ' --all ';
repotool.self   = 'gitk';
repotool.call   = [repotool.self repotool.args];



% Miscellaneous.
misc.self   = 'git-alias.m';
misc.banner = ['[ ' misc.self ' ] '];



%%%%
%%
%% Build steps.
%%
%%%%

% Begin build instruction.
disp ([misc.banner 'Begin build instruction.']);



% Set the Git commands.
name        = 'backup';
definition  = '"push --all"';
fprintf ([misc.banner '[ ' name ' ] Backup all commits:  ']);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'backupdestination';
definition  = '"remote add backup-drive"';
fprintf ([ misc.banner '[ ' name ' ] Set up a mounted drive as backup '      ...
           'destination:  '                                                  ...
         ]);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'bone';
definition  = '"clone --bare"';
fprintf ([misc.banner '[ ' name ' ] Clone a bare repository:  ']);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'bugfix';
definition  = '"!git commit -m Bugfix && git store"';
fprintf ([misc.banner '[ ' name ' ] Write and backup a bugfix:  ']);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'changelog';
definition  = [ '"!git add CHANGELOG.md && git commit -m ' "'"               ...
                'Log changes' "'" ' && git store"'                           ...
              ];
fprintf ([misc.banner '[ ' name ' ] Add items to the changelog:  ']);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'checkin';
definition  = '"!git add . && git commit"';
fprintf ([misc.banner '[ ' name ' ] Immediately create a new commit:  ']);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'create';
definition  = [ '"!git init && git add . && git commit -m ' "'"              ...
                'This is the initial commit.' "'" '"'                        ...
              ];
fprintf ([ misc.banner '[ ' name ' ] Immediately create a new Git repository'...
           ':  '                                                             ...
         ]);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'delbranch';
definition  = '"branch -d"';
fprintf ([misc.banner '[ ' name ' ] Remove an obsolete branch:  ']);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'ff';
definition  = '"merge --ff"';
fprintf ([misc.banner '[ ' name ' ] Update a branch without a new commit:  ']);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'goto';
definition  = '"checkout"';
fprintf ([misc.banner '[ ' name ' ] Switch to a certain branch:  ']);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'grab';
definition  = '"!git pull --all && git store"';
fprintf ([ misc.banner '[ ' name ' ] Fetch, merge and backup all new commits'...
           ':  '                                                             ...
         ]);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'grab-docs-snippets';
definition  = [ '"!cd ./docs-snippets/ && git pull --all && cd ../ && git '  ...
                'checkin -m ' "'Update submodule docs-snippets'"             ...
                ' && git store"'                                             ...
              ];
fprintf ([ misc.banner '[ ' name ' ] Fetch, merge and backup all new commits'...
           "of the common submodule 'docs-snippets':  "                      ...
         ]);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'graph';
definition  = ['"!' repotool.call '&"'];
fprintf ([ misc.banner '[ ' name ' ] Invoke the GUI repository inspection '  ...
           'tool:  '                                                         ...
         ]);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'ls';
definition  = ['"!' lister.call '"'];
fprintf ([ misc.banner '[ ' name ' ] List the content of the working '       ...
           'directory:  '                                                    ...
         ]);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'newbranch';
definition  = '"checkout -b"';
fprintf ([misc.banner '[ ' name ' ] Create a and switch to the new branch:  ']);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'noff';
definition  = '"merge --no-ff"';
fprintf ([misc.banner '[ ' name ' ] Update a branch with a new commit:  ']);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'rewind';
definition  = '"reset --hard"';
fprintf ([ misc.banner '[ ' name ' ] Reset the current branch to the given ' ...
           'point:  '                                                        ...
        ]);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'savetags';
definition  = '"push --tags -f"';
fprintf ([misc.banner '[ ' name ' ] Backup all tags:  ']);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'store';
definition  = '"!git backup backup-drive && git savetags backup-drive"';
fprintf ([misc.banner '[ ' name ' ] Backup all commits and tags:  ']);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'tidy';
definition  = '"clean -dfx"';
fprintf ([misc.banner '[ ' name ' ] Remove all build artifacts:  ']);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'verbose';
definition  = '"log --graph --stat --pretty=fuller --decorate --all -p"';
fprintf ([ misc.banner '[ ' name ' ] Write the whole history to the '        ...
           'terminal:  '                                                     ...
         ]);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'view';
definition  = '"log --graph --pretty=oneline --decorate --all"';
fprintf ([ misc.banner '[ ' name ' ] Write a summary of the history to the ' ...
           'terminal:  '                                                     ...
         ]);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'whereami';
definition  = '"branch -vv"';
fprintf ([ misc.banner '[ ' name ' ] Give information about the current '    ...
           'branch:  '                                                       ...
         ]);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'whichremotes';
definition  = '"remote -v"';
fprintf ([ misc.banner '[ ' name ' ] Give information about the remote '     ...
           'repositories:  '                                                 ...
         ]);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);

name        = 'withdraw';
definition  = '"reset HEAD --"';
fprintf ([misc.banner '[ ' name ' ] Remove a file from the staging area:  ']);
disp ([git.call name ' ' definition]);
system ([git.call name ' ' definition]);



% End build instruction.
disp ([misc.banner 'End build instruction.']);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
