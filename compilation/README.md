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

# `./compilation/`

## Description

This directory provides different default build instructions in order to compile
some sources with respect to certain settings.

Since there is a huge variety regarding languages and compilers, the scripts are
named according to the software they utilise as well as the action it
performs.  Which applications are supported in particular and which of their
functionalities are used will be explained in detail in the following sections.

## Software Requirements

| Requirement       | Type          | Role                                  |
|:------------------|:-------------:|:--------------------------------------|
| `g++`             | application   | C++ compiler                          |
| `gcc`             | application   | C compiler                            |
| `gfortran`        | application   | Fortran compiler                      |
| GNU Octave        | application   | execution of the provided scripts     |

## Supported Actions

| Script                      | Action                              |
|:----------------------------|:------------------------------------|
| `g++-application.m`         | compilation of a target application |
| `g++-objects.m`             | compilation of object files         |
| `gcc-application.m`         | compilation of a target application |
| `gcc-objects.m`             | compilation of object files         |
| `gfortran-95-application.m` | compilation of a target application |
| `gfortran-95-objects.m`     | compilation of object files         |
| `gfortran-95-tests.m`       | compilation and call of test suites |

<!----------------------------------------------------------------------------->
