@echo off&Setlocal Enabledelayedexpansion
if exist "temp.bat" (del /q temp.bat)
cls
:start
if exist "%1" (set inputfile=%~nx1) else (echo.�ļ�������&pause&goto :eof)
if exist "C:\Users\%Username%\AppData\Local\Temp\ConfigEdit\runTemp_1.log" (del /q C:\Users\%Username%\AppData\Local\Temp\ConfigEdit\*.*)
if not exist "C:\Users\%Username%\AppData\Local\Temp\ConfigEdit" (md C:\Users\%Username%\AppData\Local\Temp\ConfigEdit)
echo.�ڸ������ļ����ҵ���������Ŀ:
for /f "eol=# tokens=1,2* delims==" %%i in (%1) do (
set /a ChoiceNumber+=1
echo.!ChoiceNumber!. ������:%%i	ֵ:%%j
echo.%%i,%%j>C:\Users\%Username%\AppData\Local\Temp\ConfigEdit\runTemp_!ChoiceNumber!.log
)
:ChoiceEdit
set /p choice=������Ҫ�޸ĵ�����������(����0�˳�):
if "%choice%"=="" (echo.����Ϊ��,����������&call :ChoiceEdit)
if "%choice%"=="0" (call :end)
if exist "C:\Users\%Username%\AppData\Local\Temp\ConfigEdit\runTemp_%choice%.log" (
for /f "tokens=1,2* delims=," %%i in (C:\Users\%Username%\AppData\Local\Temp\ConfigEdit\runTemp_%choice%.log) do (
set /p Edit=�� %%i ��ֵ��Ϊ:
set SaveTempChoice=%%i
set SaveTempValue=%%j
)
)
:Modifying
for /f "delims=" %%i in (%1) do (
if "%%i"=="%SaveTempChoice%=%SaveTempValue%" (echo.%SaveTempChoice%=%Edit%>>C:\Users\%Username%\AppData\Local\Temp\ConfigEdit\%inputfile%)

if not "%%i"=="%SaveTempChoice%=%SaveTempValue%" (echo.%%i>>C:\Users\%Username%\AppData\Local\Temp\ConfigEdit\%inputfile%)
)
copy /y "C:\Users\%Username%\AppData\Local\Temp\ConfigEdit\%inputfile%" "%cd%"
echo.�����޸����
pause
echo.call %0 %1>temp.bat
set SaveTempChoice=<nul
set SaveTempValue=<nul
set choice=<nul
set ChoiceNumber=0
start temp.bat&exit
:end
Endlocal Enabledelayedexpansion
del /q C:\Users\%Username%\AppData\Local\Temp\ConfigEdit\*.*
rd /q C:\Users\%Username%\AppData\Local\Temp\ConfigEdit
echo.�޸Ľ���,��������˳�
pause
exit