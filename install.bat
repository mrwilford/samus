@ECHO OFF
SETLOCAL ENABLEEXTENSIONS
SET this.name=%~n0
SET this.path=%~dp0
FOR %%I IN ("%CD%") DO SET this.dir=%%~nxI
ECHO .git > "%TMP%\_xcopy_exclude.temp"
ECHO *.vsix >> "%TMP%\_xcopy_exclude.temp"
ECHO install.bat >> "%TMP%\_xcopy_exclude.temp"
::ECHO "%HOMEPATH%\.vscode\extensions\%this.dir%\"
XCOPY "*.*" "%HOMEPATH%\.vscode\extensions\%this.dir%\" /S /E /H /Y /I /D /R /EXCLUDE:%TMP%\_xcopy_exclude.temp
DEL "%TMP%\_xcopy_exclude.temp"
