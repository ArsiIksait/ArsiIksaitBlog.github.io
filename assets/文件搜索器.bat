@echo off&title �ļ�������
:start
set /p FileName=�������ļ���(�ɲ�ȫд):
set /p FileType=�������ļ���չ��(�ӵ�):
echo:����ģʽ:  �ַ�ƥ��[1]    ��ȫƥ��[2]
choice /C "12" /M "��ѡ������ģʽ:"
for %%i in (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) do (
title �������� %FileName%%FileType% - ��ǰ�̷�: "%%i:\"
if %ERRORLEVEL%==1 (if exist "%%i:\" (dir /s /b %%i:\*%FileType% 2>nul|findstr "%FileName%")) else if %ERRORLEVEL%==2 (if exist "%%i:\" (dir /s /b %%i:\%FileName%%FileType% 2>nul|findstr "%FileName%")) else (cls&echo:���ִ���,����������!&goto :start)
)
echo.�������
pause