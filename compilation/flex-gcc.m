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
%%      flex-gcc.m
%%
%%  BRIEF
%%      Create a new lexer using Flex and GCC.
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
compiler.flags  = [ ' -Wall -Werror -Wextra -Wpedantic '                     ...
                    ' -DYY_NO_INPUT '                                        ...
                    ' -DYY_NO_UNPUT '                                        ...
                  ];
compiler.in     = '*.c';
compiler.link   = ' -lfl ';
compiler.out    = 'italiano';
compiler.self   = ' gcc ';
compiler.call   = [ compiler.self ' ' compiler.flags ' ' compiler.in ' '     ...
                    compiler.link ' -o ' compiler.out                        ...
                  ];

scangen.in      = 'italiano.l';
scangen.out     = 'lex.yy.c';
scangen.self    = ' flex ';
scangen.call    = [scangen.self ' ' scangen.in];



% Files.
files.self  = 'flex-gcc.m';



% Miscellaneous.
banner  = ['[ ' files.self ' ] '];



%%%%
%%
%% Build steps.
%%
%%%%

% Begin build instruction.
disp ([banner 'Begin build instruction.']);



% Call Flex.
disp ([banner 'Compile scanner definition with Flex ...']);

disp (scangen.call);
system (scangen.call);

disp ([banner 'Done.']);



% Call GCC.
disp ([banner 'Compile C source code with GCC ...']);

disp (compiler.call);
system (compiler.call);

disp ([banner 'Done.']);



% Clean build artifacts.
fprintf ([banner 'Remove build artifacts ... ']);

if length (glob (scangen.out));
    delete (scangen.out);
end;

disp ('Done.');



% End build instruction.
disp ([banner 'End build instruction.']);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
