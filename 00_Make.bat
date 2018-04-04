
@echo OFF

cls
set CUR_MPATH=%~dp0
set MAIN_TRUNK=%CUR_MPATH%
set IsSecret=0

:START
cls

(
	color A

	echo.
	echo          ================
	echo           ==   MENU   ==
	echo          ================
	echo.
	echo   * WORKING ON: %MAIN_TRUNK%
	echo.
	echo         1. Clean UP
	echo.
	echo         2. Update
	echo.
	echo         3. Buid Win32
	echo.        
	echo         4. Run Win32
	echo.
	echo         5. Build SO
	echo.
	echo         6. Build Apk
	echo.
)

set /P DO_JOB=.           Enter your choose:

cls
color 7
echo %DO_JOB%
if %DO_JOB%==1 (
	  echo.
	  echo  ************************ 1. CLEAN UP ************************
	  echo.
  pause
  goto END
) else if %DO_JOB%==2 (
	  echo.
	  echo  ************************ 2. UPDATE ************************
	  echo.
  pause
  goto END
) else if %DO_JOB%==3 (
	  echo.
	  echo  ************************ 3. Buid Win32  ************************
	  echo.

	  pushd %CUR_MPATH%\Tools\FastBuild\
		call FBuild.exe -config ..\BuildWin32\fbuild.bff
		popd
  pause
	pause 
  goto END
) else if %DO_JOB%==4 (
	  echo.
	  echo  ************************ 4. Run Win32  ************************
	  echo.

		pushd %CUR_MPATH%
	  if exist Build\Win32\3DEngine.exe (
			call Build\Win32\3DEngine.exe
		) else (
			echo  NOT FOUND execute file.
		)
		popd
  pause

  goto END
) else if %DO_JOB%==5 (
		echo.
		echo ************************ 5. Build SO  ************************
		
		pushd %CUR_MPATH%\Tools\FastBuild\
		call FBuild.exe -config ..\BuildAndroid\fbuildAndroid.bff
		popd
		pause
) else if %DO_JOB%==6 (
		echo.
		echo ************************ 6. Build Apk  ************************
		
)

:END
echo ====================== FINISHED ======================
echo CUR PATH %CUR_MPATH%
cd %CUR_MPATH%
goto START