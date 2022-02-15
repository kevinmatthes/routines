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

# `./documentation/`

## Description

This directory provides different default build instructions in order to write
documentations automatically.

Since there are various documentation creation tools, the scripts are named
according to the software they utilise as well as the action it performs.  Which
applications are supported in particular and which of their functionalities are
called by the scripts will be explained in detail in the following sections.

## Software Requirements

| Requirement       | Type          | Role                                  |
|:------------------|:-------------:|:--------------------------------------|
| Doxygen           | application   | creation of source code documentation |
| GNU Octave        | application   | execution of the provided scripts     |
| `make`            | application   | finalisation of Doxygen documentation |
| Pandoc            | application   | compilation of repository manual      |
| `texlive-full`    | package       | compilation of repository manual      |

### `make`

Doxygen might create, depending on its settings, a \LaTeX\ manual, as well.  In
order to compile it, Doxygen provides a makefile therefore.

## Supported Actions

| Action                | Doxygen   | Pandoc    |
|:----------------------|:---------:|:---------:|
| HTML creation         | yes       | no        |
| \LaTeX\ creation      | yes       | yes       |
| \LaTeX\ compilation   | yes       | yes       |
| repository manual     | no        | yes       |

### Repository Manuals

The build instruction provided by `pandoc-repository.m` requires not only Pandoc
for the final compilation but relies furthermore on `docs-snippets` which is
bound by this repository, as well.

`docs-snippets`, see https://github.com/kevinmatthes/docs-snippets, stores
default configuration instructions for documentations, such as common Pandoc
meta data.  Since it is not a software but a collection of static files, it is
not named in the "Software Requirements" section.  Due to all paths being
adjustable as desired, substituting this submodule is no problem.

<!----------------------------------------------------------------------------->
