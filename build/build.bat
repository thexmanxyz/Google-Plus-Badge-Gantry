@echo off

REM --- Script Variables ---
set remove_folders=0

REM --- Packaging Variables ---
set langs_upper=EN, IT
set default_lang=EN

set prj_id=gpb
set prj_rev=v1.0
set prj_name=gplus-badge
set prj_fullname=Google Plus Badge - Particle

set part_only=particle.only
set part_leg=legacy
set part_helium=helium
set part_hydro=hydrogen
set part_j3=J3

REM --- File Variables ---
set part_file_ext=yaml, html.twig
set part_def_files=LICENSE, README.md
set plugin_def_files=LICENSE.pdf
set lang_ext=yaml

REM --- Folder Variables ---
set folder_root=..\..
set folder_src_def=src\default
set folder_src_leg=src\legacy
set folder_platform_joomla=platform\joomla
set folder_trans=translation
set folder_part=particles

set folder_temp=temp
set folder_release=release

set folder_def=default
set folder_leg=legacy
set folder_j3_helium=j3_helium
set folder_j3_hydro=j3_hydrogen

REM --- Message Variables ---
set msg_start=Start packaging process for creating release.
set msg_finished=Successful finished packaging process.
set msg_success=successfully created.

REM --- Start Script ---
echo.
echo -------------------------------
echo  %prj_fullname% #
echo -------------------------------
echo.
echo %msg_start%

IF NOT EXIST %folder_temp% (
	mkdir %folder_temp%
)
IF NOT EXIST %folder_release% (
	mkdir %folder_release%
)

echo.
cd %folder_temp%

REM --- Call Particle Default Package Creation ----
call :create_particle "%folder_def%" "" "%folder_src_def%"

REM --- Call Particle Legacy Package Creation ----
call :create_particle "%folder_leg%" "%part_leg%." "%folder_src_leg%"

REM --- Call Hydrogen Package Creation ----
call :create_j3plugin "%folder_j3_hydro%" "%part_hydro%"

REM --- Call Helium Package Creation ----
call :create_j3plugin "%folder_j3_helium%" "%part_helium%"

REM --- Stop Script and Cleanup ---
cd..
IF %remove_folders% == 1 (
	rmdir "%folder_temp%" /S /Q
	REM rmdir "%folder_release%" /S /Q
)
echo.
echo %msg_finished%
echo.

goto:EOF

REM --- Create Particle Only Package(s) for different languages ---
REM --- Parameters: %~1 = destination folder particle, %~2 = archive naming, %~3 = yaml base path
:create_particle
	setlocal EnableDelayedExpansion
	(for %%l in (%langs_upper%) do (

		set "lang=%%l"
		set folder_out=%~1_!lang!
		set package_name=%prj_id%.%part_only%.%~2!lang!.%prj_rev%
		
		IF NOT EXIST !folder_out! ( mkdir !folder_out! )
		
		(for %%f in (%part_def_files%) do ( 
			copy %folder_root%\%%f !folder_out! >Nul
		))

		(for %%e in (%part_file_ext%) do ( 
			set "ext=%%e"
			call :copy_particle_files "!ext!" "!lang!" "%~3" "!folder_out!"
		))

		set arch_dest=..\%folder_release%\!package_name!
		set zip_dest=!arch_dest!.zip
		set tar_dest=!arch_dest!.tar
		set gzip_dest=!arch_dest!.tar.gz

		IF EXIST !zip_dest! ( del !zip_dest! )
		7z a -tzip !zip_dest! .\!folder_out!\* >Nul
		7z a -ttar !tar_dest! .\!folder_out!\* >Nul
		IF EXIST !gzip_dest! ( del !gzip_dest! )
		7z a !gzip_dest! !tar_dest! >Nul
		del !tar_dest!

		IF %remove_folders% == 1 ( rmdir "!folder_out!" /S /Q )
		echo !package_name! %msg_success%
	))
	endlocal
goto :EOF

REM --- Create Joomla 3 Plugin Packages for different languages ---
REM --- Parameters: %~1 = destination folder plugin, %~2 = archive naming
:create_j3plugin
	setlocal EnableDelayedExpansion
	(for %%l in (%langs_upper%) do (

		set "lang=%%l"
		set folder_out=%~1_!lang!
		set folder_out_sub=!folder_out!\%folder_part%
		set folder_platform=%folder_root%\%folder_platform_joomla%
		set package_name=%prj_id%.%part_j3%.%~2.!lang!.%prj_rev%

		IF NOT EXIST !folder_out! ( mkdir !folder_out! )
		IF NOT EXIST !folder_out_sub! ( mkdir !folder_out_sub! )
		
		(for %%f in (%plugin_def_files%) do ( 
			copy !folder_platform!\%%f !folder_out! >Nul
		))

		(for %%e in (%part_file_ext%) do (
			set "ext=%%e"
			call :copy_particle_files "!%%e!" "!lang!" "%folder_src_def%" "!folder_out_sub!"
		))

		set cp_temp_path=!folder_platform!\%~2\%prj_name%
		set cp_temp_trans_path=!folder_platform!\%~2\%folder_trans%\!lang!\%prj_name%

		IF "!lang!" == "%default_lang%" (
			copy !cp_temp_path!.xml !folder_out! >Nul
		) ELSE (
			copy !cp_temp_trans_path!.xml !folder_out! >Nul
		)

		set zip_dest=..\%folder_release%\!package_name!.zip
		IF EXIST !zip_dest! ( del !zip_dest! )
		7z a -tzip !zip_dest! .\!folder_out!\* >Nul

		IF %remove_folders% == 1 (
			rmdir "!folder_out_sub!" /S /Q
			rmdir "!folder_out!" /S /Q
		)
		echo !package_name! %msg_success%
	))
	endlocal
goto :EOF

REM --- Copies the particle files to the current temp folder ---
REM --- Parameters: %~1 = extension, %~2 = language, %~3 = yaml base path, %~4 = output folder
:copy_particle_files 
	set prj_path=%folder_root%\%folder_src_def%\%prj_name%.!ext!
	set prj_trans_path=%folder_root%\%~3\%folder_trans%\!lang!\%prj_name%.!ext!
	
	IF "%~1" == "%lang_ext%" (
		IF "%~2" == "%default_lang%" (
			copy !prj_path! %~4 >Nul
		) ELSE (
			copy !prj_trans_path! %~4 >Nul
		)
	) ELSE (
		copy !prj_path! %~4 >Nul
	)
goto :EOF