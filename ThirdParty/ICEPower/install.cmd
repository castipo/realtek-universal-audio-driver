@ECHO OFF
SET version=2.9.191202

SET my_data=0
SET ext_inf_error=0

for /f "tokens=3" %%v in ('reg query "HKLM\Software\ASUS\ICEpower_APO" /V DisplayVersion  ^|findstr /ri "REG_SZ"') do (SET my_data=%%v)
REM ECHO REG QUERY status:%ERRORLEVEL%, my_data=%my_data%
IF %my_data% EQU 0 (CALL :param_function_1) ELSE (
IF %my_data% LSS %version% (CALL :param_function_2)
IF %my_data% GTR %version% (CALL :param_function_3)
IF %my_data% EQU %version% (CALL :param_function_4)
)
REM PAUSE
EXIT /B 0

:param_function_1
ECHO ICEsound APO never installed, install %version% now!
CALL :param_function_5
REM PAUSE
EXIT /B 0

:param_function_2
ECHO Remove older APO %my_data% and install APO %version%!
REG DELETE HKLM\Software\ASUS\ICEpower_APO /v "DisplayVersion" /f
REM ECHO REG DELETE status:%ERRORLEVEL%, my_data=%my_data%
IF %ERRORLEVEL% EQU 0 ( ECHO APO %my_data% removed! ) ELSE (EXIT /B 0)
CALL :param_function_5
REM PAUSE
EXIT /B 0

:param_function_3
ECHO APO %my_data% installed, version is greater than this one version %version%, install stop!
REM PAUSE
EXIT /B 0

:param_function_4
ECHO APO %version% had installed in system, reinstall!
CALL :param_function_5
REM PAUSE
EXIT /B 0

:param_function_5
ECHO Installing extension inf.
pnputil /add-driver ./OemXAudioExtICEsoundAPO/OemXAudioExtICEsoundAPO.inf /install
SET ext_inf_error=%ERRORLEVEL%
REM ECHO Installing extension inf status:%ERRORLEVEL%
ECHO errorcode %ERRORLEVEL% 
IF %ERRORLEVEL% EQU 0 ( ECHO Extension INF %version% installed!) ELSE (
	IF %ERRORLEVEL% EQU 3010 ( ECHO Extension INF %version% installed, need reboot now!) ELSE (
		ECHO Extension INF %version% install failed, %ERRORLEVEL%!
		EXIT /B %ERRORLEVEL%
		)
	)

ECHO Installing APO component inf.
pnputil /add-driver ./ICEsoundAPO64/ICEsoundAPO64.inf /install
IF %ERRORLEVEL% EQU 0 ( ECHO Component INF %version% installed!) ELSE (
	ECHO error: %ERRORLEVEL%
	ECHO Component INF %version% install failed!
	)
IF %ERRORLEVEL% NEQ 0 (EXIT /B %ERRORLEVEL%)

rem Check if service is present
IF %ext_inf_error% EQU 0 (SC query ICEsoundService 1>nul)
REM ECHO SC query result: %ERRORLEVEL%
IF %ERRORLEVEL% EQU 0 ( ECHO ICEsoundService registered in system, APO %version% install success!) ELSE (
	ECHO ICEsoundService did not register in system!, APO %version% install failed!
	)
IF %ERRORLEVEL% NEQ 0 (EXIT /B %ERRORLEVEL%)

REG ADD HKLM\Software\ASUS\ICEpower_APO /v "DisplayVersion" /t REG_SZ /d %version% /f
REM ECHO Add DisplayVersion value result: %ERRORLEVEL%
IF %ERRORLEVEL% EQU 0 ( ECHO APO %version% installed!) ELSE (ECHO Registry key can't add into system, APO %version% install failed!)
EXIT /B %ERRORLEVEL%