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
set scr_remove_folders=1
set scr_log_files=0

REM --- Project Variables ---
set prj_id=gpb
set prj_rev=v1.2.8
set prj_name=gplus-badge
set prj_fullname=Google Plus Badge - Particle
set prj_title_hr=--------------------------------
set prj_def_lang=EN
set prj_sup_langs=EN, IT, DE

REM --- Packaging Variables ---
set pkg_part_only=particle.only
set pkg_def_files=LICENSE, README.md
set pkg_j3_def_files=LICENSE.pdf
set pkg_expl_files=
set pkg_lang_id=yaml
set pkg_part_file_ext=yaml, html.twig

set pkg_def_enable=1
set pkg_leg_enable=1
set pkg_helium_enable=1
set pkg_hydro_enable=1
set pkg_global_enable=1

"base-build.bat"