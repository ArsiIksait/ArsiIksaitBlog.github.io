@echo off&color 20&mode con cols=80 lines=32&setlocal EnableDelayedExpansion&set "+=%1"
set "ToolKitHelper=%2"
:RemoveMenu
if exist "Mount\Windows\SysWOW64" (set "Bit=64") else (set "Bit=86")
for /f "tokens=4 delims= " %%i in ('reg query "HKLM\ZTM\Microsoft\Windows NT\CurrentVersion" /v "ProductName" 2^>nul') do set "Version=%%i"
for /f "tokens=3 delims= " %%i in ('reg query "HKLM\ZTM\Microsoft\Windows NT\CurrentVersion" /v "CurrentBuild" 2^>nul') do set "ImageBuild=%%i"
for /f "tokens=3 delims= " %%i in ('reg query "HKLM\ZTM\Microsoft\Windows NT\CurrentVersion" /v "EditionID" 2^>nul') do set "ImageFlag=%%i"
for /f "tokens=3 delims= " %%i in ('reg query "HKLM\ZTM\Microsoft\Windows NT\CurrentVersion" /v "ReleaseId" 2^>nul') do set "ReleaseId=%%i"
echo !ReleaseId!|Findstr /i "1809 1903 1909 2004" >nul 2>nul||(cls&echo.&echo.������Ŀǰ��������Windows10 1809/1903/1909/2004����ǰ���ص���Windows !Version!,!ReleaseId!...&echo.&echo.�밴���������...&pause>nul&goto :menu2)
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
	echo.   ^|   [X] �˳�                                                             ^|
	echo.   ^|                                                                        ^|
	echo.    ________________________________________________________________________
	echo.
	choice /c:123456X /n /m ">>>>>>>������ѡ��:" 
	if !errorlevel!==7 Exit
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
	echo.   ^|   [X] �˳�                                                             ^|
	echo.   ^|                                                                        ^|
	echo.    ________________________________________________________________________
	echo.
	choice /c:123456X /n /m ">>>>>>>������ѡ��:" 
	if !errorlevel!==7 Exit
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
	echo.   ^|   [X] �˳�                                                             ^|
	echo.   ^|                                                                        ^|
	echo.    ________________________________________________________________________
	echo.
	choice /c:123456X /n /m ">>>>>>>������ѡ��:" 
	if !errorlevel!==7 Exit
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
	echo.   ^|   [X] �˳�                                                             ^|
	echo.   ^|                                                                        ^|
	echo.    ________________________________________________________________________
	echo.
	choice /c:1234X /n /m ">>>>>>>������ѡ��:" 
	if !errorlevel!==5 Exit
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
echo.  ^|                                                                          ^|
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
echo.  ^|                                                                          ^|
echo.    ________________________________________________________________________
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
echo.  ^|                                                                          ^|
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
echo.  ^|                                                                          ^|
echo.    ________________________________________________________________________
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
echo.  ^|                                                                          ^|
echo.   ^|   [1] ��ͥ��                                                           ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] MultiPoint Connector                                             ^|
echo.   ^|                                                                        ^|
echo.   ^|   [3] Զ��Э��                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [4] �Ƴ�����ȫ�����                                                 ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.  ^|                                                                          ^|
echo.    ________________________________________________________________________
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
echo.   ^|   [A] �豸���� ^(Ƕ��ʽ����^)                                          ^|
echo.   ^|                                                                        ^|
echo.   ^|   [B] ���ɷ�������                                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   [C] ���ɴ���                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [D] �ļ���ʷ��¼                                                     ^|
echo.   ^|                                                                        ^|
echo.   ^|   [E] �ֶ���װ���� ^(�͵�����^)                                        ^|
echo.   ^|                                                                        ^|
echo.   ^|   [F] ��ͼ����                                                         ^|
echo.   ^|                                                                        ^|
echo.   ^|   [G] ��ȫ���� ^| �����ڣ�Windows Defender                             ^|
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
echo.  ^|                                                                         ^|
echo.    ________________________________________________________________________
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
echo.  ^|                                                                          ^|
echo.   ^|   [1] ϵͳӦ��һ                                                       ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] ϵͳӦ�ö�                                                       ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.  ^|                                                                          ^|
echo.    ________________________________________________________________________
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
	echo.    ________________________________________________________________________
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
	echo.    ________________________________________________________________________
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
	echo.    ________________________________________________________________________
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
	echo.    ________________________________________________________________________
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
	echo.    ________________________________________________________________________
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
	echo.    ________________________________________________________________________
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
	echo.    ________________________________________________________________________
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
	echo.    ________________________________________________________________________
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
echo.  ^|                                                                          ^|
echo.   ^|   [1] WindowsӦ��һ                                                    ^|
echo.   ^|                                                                        ^|
echo.   ^|   [2] WindowsӦ�ö�                                                    ^|
echo.   ^|                                                                        ^|
echo.   ^|   [3] WindowsӦ����                                                    ^|
echo.   ^|                                                                        ^|
echo.   ^|   [X] ����                                                             ^|
echo.  ^|                                                                          ^|
echo.    ________________________________________________________________________
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
	echo.    ________________________________________________________________________
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
	echo.    ________________________________________________________________________
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
	echo.    ________________________________________________________________________
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
	echo.    ________________________________________________________________________
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
	echo.    ________________________________________________________________________
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
	echo.    ________________________________________________________________________
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
	echo.    ________________________________________________________________________
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
	echo.    ________________________________________________________________________
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
	echo.    ________________________________________________________________________
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
	echo.    ________________________________________________________________________
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
	echo.    ________________________________________________________________________
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
title �����Ƴ� %2
mode con cols=80 lines=22
cls&echo.&echo.�����Ƴ� %2 ���Ե�...
set "Item=�Ƴ� %2"
"!ToolsPath!\ToolKitHelper.exe" %1 %3
call :Log
goto :eof

:Log
echo �������ڣ�!date:~0,-3!������ʱ�䣺!Time:~0,-3!����Ŀ���ƣ�!Item!����Ŀ״̬���ɹ� >> "������־.Log"
goto :eof