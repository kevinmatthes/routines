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

# `./clean/`

## Description

This directory provides different default build instructions in order to remove
build artifacts.

## Supported Actions

Just by utilising the GNU Octave core functionalities, these build instructions
can

* clean whole documentations by removing the documentation directories and their
  build artifacts.
* clean libraries.
* clean manuals (static documents).
* clean object files.
* clean specific files.

### Clean Whole Documentation

This build routine, provided by `clean-documentation.m`, will clean the output
directories of automatic documentation systems, such as Doxygen.

Additional documentation systems and directories can be added upon request.

<!----------------------------------------------------------------------------->
