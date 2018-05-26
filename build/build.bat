@echo off
REM #######################################################
REM #                                                     #
REM #   Google+ Badge - Particle for Gantry               #
REM #                                                     #
REM #   Purpose: This project adds the Google             #
REM #            Plus Profile, Page or Community          #
REM #            Badge to the Gantry templating           #
REM #            framework.                               #
REM #                                                     #
REM #   Author: Marian Tanase <marian@tanase.it>          #
REM #           Andreas Kar (thex) <andreas.kar@gmx.at>   #
REM #                                                     #
REM #######################################################

REM --- Script Variables ---
set remove_folders=1
set log_files=0
set title_hr=--------------------------------

REM --- Packaging Variables ---
set langs_upper=EN, IT, DE
set default_lang=EN

set prj_id=gpb
set prj_rev=v1.2.8
set prj_name=gplus-badge
set prj_fullname=Google Plus Badge - Particle

set pkg_part_only=particle.only
set pkg_def_enable=1
set pkg_leg_enable=1
set pkg_helium_enable=1
set pkg_hydro_enable=1

REM --- File Variables ---
set comp_files=
set part_def_files=LICENSE, README.md
set plugin_def_files=LICENSE.pdf
set file_ext=yaml, html.twig
set lang_ext=yaml

"base-build.bat"