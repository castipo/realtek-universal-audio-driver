if "%~1"=="" (
goto blank
)
if not "%~1"=="" (
set "FileToSign=%~1"
)

powershell.exe -NoProfile -NonInteractive -InputFormat None -ExecutionPolicy Bypass -Command "Get-CatalogFile -Path "%~1" | Export-Clixml "%~1.xml"
exit
:blank
echo Drag and drop file 
pause