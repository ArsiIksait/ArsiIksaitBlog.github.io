@echo off&title ��½ϵͳ&set "LoginName=Hello World"
echo:��ӭ����%LoginName%��½ϵͳ!
:Start
echo:Login ��½ [L]    Register ע�� [R]    Exit �˳� [E]
choice /C "LRE" /D E /T 10 /M "����10��������ѡ��:"
if %ERRORLEVEL%==1 (cls&goto :Login)
if %ERRORLEVEL%==2 (cls&goto :Register)
if %ERRORLEVEL%==3 (cls&set EXIT_RETURN_TEXT=�˳���½ϵͳ...&goto :End)
cls&echo:���ִ���,������ѡ��!&goto :Start
:Login
echo:��½��%LoginName%:
set /p UserName=�������û���:
set /p Passworld=����������:
set FROM_ID=Login
goto :CheckAccount
:Register
echo:��%LoginName%��ע��:
echo:Admin ����Ա [A]    User �û� [U]    Cancel ȡ�� [C]
choice /C "AUC" /M "��ѡ���˻�����:"
if %ERRORLEVEL%==1 (set UserRights=Admin) else if %ERRORLEVEL%==2 (set UserRights=User) else if %ERRORLEVEL%==3 (cls&echo:ȡ�������˻�&goto :Start) else (cls&echo:���ִ���,������ע��!&goto :Register)
set /p UserName=�������û���:
set /p Passworld=����������:
echo:����ȷ��:������%LoginName%��ע��һ�����˻�:
echo:ӵ��Ȩ��:%UserRights%
echo:�û���:%UserName%
echo:����:%Passworld%
choice /C "YN" /M "���Ƿ������������˻�?"
if %ERRORLEVEL%==1 (set FROM_ID=Register&cls&goto :CheckAccount) else if %ERRORLEVEL%==2 (cls&echo:ȡ�������˻�&cls&goto :Start) else (cls&echo:���ִ���,������ע��!&cls&goto :Register)
:CheckAccount
Setlocal Enabledelayedexpansion
if "%FROM_ID%"=="Login" (
::����û���������
if "%UserName%"=="" (cls&echo:�û�������Ϊ��!&goto :Login)
if "%Passworld%"=="" (cls&echo:���벻��Ϊ��!&goto :Login)
type "%~f0"|find /i "$%UserName%@%Passworld%#">QueryResults.sid
set /p UserInformation=<QueryResults.sid
if "!UserInformation!"=="" (del /q QueryResults.sid&cls&echo:�û������������,����������!&goto :Login) else (for /f "tokens=1,2,3 delims=~$@#" %%i in (QueryResults.sid) do (echo:��ӭ%%i %%j ���� %LoginName%))
del /q QueryResults.sid
)
if "%FROM_ID%"=="Register" (
::д���˻���Ϣ
if "%UserRights%"=="" (cls&echo:Ȩ�޲���Ϊ��!&goto :Register)
if "%UserName%"=="" (cls&echo:�û�������Ϊ��!&goto :Register)
if "%Passworld%"=="" (cls&echo:���벻��Ϊ��!&goto :Register)
echo.~%UserRights%$%UserName%@%Passworld%#>>"%~f0"
set EXIT_RETURN_TEXT=�����˻�: %UserName%@%Passworld% ��ע��ɹ�!
)
goto :End
:End
echo:%EXIT_RETURN_TEXT%
pause&exit
:UserTab
~Admin$Administrator@123456#
~User$ArsiIksait@6669998800#
~User$hello@656@335#
~Admin$3@65#
