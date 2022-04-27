<!------------------------------------------------------------------------------
--
-- Copyright (C) 2022 Kevin Matthes
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 2 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License along
-- with this program; if not, write to the Free Software Foundation, Inc.,
-- 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
--
----
--
--  FILE
--      README.md
--
--  BRIEF
--      Important information regarding this project.
--
--  AUTHOR
--      Kevin Matthes
--
--  COPYRIGHT
--      (C) 2022 Kevin Matthes.
--      This file is licensed GPL 2 as of June 1991.
--
--  DATE
--      2022
--
--  NOTE
--      See `LICENSE' for full license.
--
------------------------------------------------------------------------------->

# routines

## Summary

A set of common build routines and steps.

## License

This project's license is **GPL 2** (as of June 1991).  The whole license text
can be found in `LICENSE` in the main directory of this repository.  The brief
version is as follows:

> Copyright (C) 2022 Kevin Matthes
>
> This program is free software; you can redistribute it and/or modify
> it under the terms of the GNU General Public License as published by
> the Free Software Foundation; either version 2 of the License, or
> (at your option) any later version.
>
> This program is distributed in the hope that it will be useful,
> but WITHOUT ANY WARRANTY; without even the implied warranty of
> MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> GNU General Public License for more details.
>
> You should have received a copy of the GNU General Public License along
> with this program; if not, write to the Free Software Foundation, Inc.,
> 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

When compiling a printable version of this documentation using Pandoc, the full
license will be attached automatically to the resulting document.  This can be
invoked by calling `repository-manual.m`.

## Software Requirements

| Requirement       | Type          | Role                                  |
|:------------------|:-------------:|:--------------------------------------|
| `ar`              | application   | create and update static libraries    |
| `docs-snippets`   | repository    | documentation constants               |
| GNU Octave        | application   | execution of the provided scripts     |
| Pandoc            | application   | compilation of repository manual      |
| `texlive-full`    | package       | compilation of repository manual      |

The compilation of such an **optional** repository manual can be invoked by just
calling one of the following lines in a terminal.

```
octave repository-manual.m
octave-cli repository-manual.m
```

Both will redirect to the same application, GNU Octave, which will then create
the manual for this repository and attach the entire license to it.  The
resulting file, `repository.pdf`, will be saved in the main directory of this
repository.

## Description

Many projects require similiar build instructions which only differ regarding
certain parameters specific to their repository, such as the name of the
compilation target.  Writing them from scratch over and over again for each new
repository is not efficient and leaves the build routines in an unsynchronised
state.  In case a critical bug should be found in one of them, all would need
to be edited by hand in order to fix it.

This repository's aim is it therefore to introduce some templates for default
instructions which are frequently required for setting up a new repository and
making it compile.  These build routines are written as scripts for *GNU Octave*
which is available for free and as an open source application for Linux, macOS
and Windows.

Octave was chosen since it not only is available as described but also offers
the possibility to run terminal instructions on the host OS.  These instructions
may be altered depending on *which* OS actually executes Octave at the moment
such that build routines may be defined with respect to the requirements of the
target operating systems.  This aspect benefits the portability of build
instructions defined this way since, in constrast to `make`, for instance, the
interpreting software is available not only for UNIX based systems and
furthermore supports OS-sensitive commands.  Finally, some of the common tasks,
such as copying, renaming and removing a file from the file system, are already
handled by Octave itself since it provides dedicated functions therefore.

All scripts are created for and tested with Octave.  Although they might work
with MATLAB, as well, a real support is for MATLAB compatibility is not
provided, at the moment.  Each build script contains the instructions in order
to perform exactly one common task of a build routine.  These tasks are, for
instance, compiling an application, creating a library, writing the
documentation or cleaning up at the end.  In order to call a build instruction,
it must be given as command line parameter to GNU Octave:

```
octave repository-manual.m
```

Just as with the standard-`make`, the scripts can be nested regarding their call
hierarchy such that single scripts can be stored in one directory, say the main
source code directory of a repository, and invoked by other scripts in another
directory, such as the project's root directory.  Within the invocation script,
one should make sure that the working directory of Octave is set accordingly
*before* another script is called.  Otherwise, the called script would look for
the given files in the wrong directory.

In general, a common `makefile` can be replaced by Octave scripts by
substituting each build command by a dedicated script.  That way, the build
routine does not need to be replaced all at once but instruction by instruction
what offers furthermore the possibility to identify obsolete build steps.

Each file provided by this repository is a template for the designated task
whose variables need to be adjusted before an initial invocation in the binding
repository.  This requires the users only to know about variable definitions as
well as string concatenation in Octave.

<!----------------------------------------------------------------------------->
