::<-->::
@echo off&Setlocal Enabledelayedexpansion&title �ļ��鿴��&color 0a
::<-->::
if "%1"=="" (echo.���������ļ�!&pause>nul&exit)
call :getSize %1
call :getLen %1
call :getMD5 %1
call :getEditTime %1
cls
echo.�ļ�ȫ��: %~nx1
echo.�ļ�·��: %1
echo.�ļ���С: %Size% ����
echo.�޸�ʱ��: %EditTime%
echo.MD5: %MD5%
echo.�ļ�����: %Len% ��
pause>nul&exit
::<-->::
::<- FUNCTIONS ->::
:getLen
findstr /v "^$" %~s1 2>nul| find /c /v "" > temp.txt
set /P Len=<temp.txt&del temp.txt
if "%Len%"=="" (set Len=N\A)
exit /b %Len%
:getMD5
set para1=%~1
certutil -hashfile %~s1 MD5 2>nul| find /v ":" > %para1%.md5
set /p MD5=<%para1%.md5&del %para1%.md5
set MD5=%MD5: =%
set "MD5=%MD5: ==��ȡ���ļ�MD5ʱ����%"
if "%MD5%"=="" (set MD5=N\A)
exit /b %MD5%
:getSize
forfiles /p %CD% /m %~snx1 /c "cmd /c echo.@fsize>temp.txt" 2>nul
set /p Size=<temp.txt&del temp.txt
if "%Size%"=="" (set Size=N\A)
exit /b %Size%
:getEditTime
forfiles /p %CD% /m %~snx1 /c "cmd /c echo.@fdate @ftime>temp.txt" 2>nul
set /p EditTime=<temp.txt&del temp.txt
if "%EditTime%"=="" (set EditTime=N\A)
exit /b %EditTime%
::<- FUNCTIONS ->::