@echo off&set ThemeCode=0a
color %ThemeCode%
:: ThemeCode ������color�����ϵ�,��Ч��Χ��:00~ff
if "%~s1"=="" (echo:��δ�����ļ�!&pause&exit)
set P_Num=20
:: P_Num ������ʱ�Ĵ�������(�Ͷ��̲߳��,��ֵԽ��,ת����Խ��,��Ҳ����Խ��Խ��)
set L_Num=5000
:: L_Num ���ͷ����ͷ�ʱһ��д���ļ�������,��ֵԽ��,�ļ����ɵ��ٶ�Խ��,�������õ�0~9000��1000(0��������[������ʹ��])
set HideWindows=true
if "%HideWindows%"=="true" (set Command1=/min)
:: HideWindows �������ű��Ƿ��ں�̨ ֵΪfalse/true Ĭ��Ϊtrue
PUSHD %CD%
MD FILES_SCRIPTS
CD FILES_SCRIPTS
certutil -encode "%~s1" "%~n1.b64"
echo:��ʼ�������ɽű�...
:CreateScpirts
if "%NowNum%"=="%P_Num%" (echo:�������,��ʼ����&goto :Run)
set /a NowNum+=1
if "%NowNum%"=="1" (echo:@echo off^&color %ThemeCode%>"%~nx1.bat"&echo:^(>>"%~nx1.bat"&echo:echo:-----BEGIN CERTIFICATE----->>"%~nx1.bat")
(
echo:@echo off^&color %ThemeCode%
echo:set Len=%NowNum%
echo:set P_Num=%P_Num%
echo::Update
echo:for /f "skip=%%Len%% usebackq delims=" %%%%L in ^("%~n1.b64"^) do ^(
echo:	echo:%%%%L^&title Len:%%Len%%
echo:	echo:echo:%%%%L^>"%~sn1_%%Len%%.bak"
echo:	set /a Len+=%%P_Num%%
echo:	goto :Update
echo:^)
if "%NowNum%"=="%P_Num%" (echo:cd.^>DONE.txt)
echo:exit
)>script_%NowNum%.bat
goto :CreateScpirts
:Run
if "%R_Num%"=="%NowNum%" (echo:���нű�ȫ���Ѿ���ʼ����,�ȴ���...&goto :Check_P)
set /a R_Num+=1
if exist "script_%R_Num%.bat" (start %Command1% script_%R_Num%.bat) else (echo:WARNING:ȱʧ "script_%R_Num%.bat"!)
goto :Run
:Check_P
if exist "DONE.txt" (echo:�ű��������,��ʼ�����ļ�...&set C_Num=0&goto :CopyTogether) else (goto :Check_P)
:CopyTogether
set /a C_Num+=1
if not exist "%~sn1_%C_Num%.bak" (echo:�������!&echo:^)^>^>"%~nx1.b64">>"%~nx1.bat"&goto :End)
if "%NowLen%"=="%L_Num%" (echo:^)^>^>"%~nx1.b64">>"%~nx1.bat"&echo:^(>>"%~nx1.bat"&set NowLen=0)
set /a NowLen+=1
type %~sn1_%C_Num%.bak>>%~nx1.bat
goto :CopyTogether
:End
POPD
move "FILES_SCRIPTS\%~nx1.bat" "%CD%"
(
echo:certutil -decode "%~nx1.b64" "%~nx1"
echo:del /f /q "%~nx1.b64"
echo:echo:Base64���ļ�ת�����!
echo:pause^&del %%0
)>>"%~nx1.bat"
rd /s /q FILES_SCRIPTS
echo:ת�����!
pause&exit
::Base64����ȫ�Զ������ļ��ű�������v3.8.0 - MADE BY ArsiIksait
::CopyRight (c) 2021 ArsiIksait. All Rights Reserved.