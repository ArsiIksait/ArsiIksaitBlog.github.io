@echo off&title ��־������
set A_Folder_Path=C:\Users\Administrator\Desktop\A
::�������µ���־�ļ������ļ��е�·��
set B_Folder_Path=C:\Users\Administrator\Desktop\B
::������־���������·��
set Chack_Logs_Ever_Hours=0
set Chack_Logs_Ever_Minutes=3
set Chack_Logs_Ever_Seconds=0
::ÿNСʱ+N����+N����һ��log
set Recovery_Chack_Hours=%Chack_Logs_Ever_Hours%
set Recovery_Chack_Minutes=%Chack_Logs_Ever_Minutes%
set Recovery_Chack_Seconds=%Chack_Logs_Ever_Seconds%
::���ݼ�ʱ��ʱ��,���ڻָ���ʱ��
echo.��־����������������...
:loop
timeout 1
::MsHta JavaScript:document.write();setTimeout('close()',1000);
if "%Chack_Logs_Ever_Seconds%"=="0" (
if not "%Chack_Logs_Ever_Minutes%"=="0" (
 set /a Chack_Logs_Ever_Minutes-=1
 set Chack_Logs_Ever_Seconds=60
 )
 if "%Chack_Logs_Ever_Minutes%"=="0" (
 if not "%Chack_Logs_Ever_Hours%"=="0" (
 set /a Chack_Logs_Ever_Hours-=1
 set Chack_Logs_Ever_Minutes=60
 )
 if "%Chack_Logs_Ever_Hours%"=="0" (
 goto :Chack
 )
 )
)
if  not "%Chack_Logs_Ever_Seconds%"=="0" (
set /a Chack_Logs_Ever_Seconds-=1
)
title ��־������-����%Chack_Logs_Ever_Hours%Сʱ,%Chack_Logs_Ever_Minutes%����,%Chack_Logs_Ever_Seconds%�����һ����־�ļ�
goto :loop
:Chack
set /a Yesterday=(%Date:~0,4%%Date:~5,2%%Date:~8,2%)-1
set Back_Work_Path=%CD%
cd %A_Folder_Path%
title ���ڼ����־�ļ�-��ǰ����Ŀ¼:%CD%
echo.%Date:~0,4%/%Date:~5,2%/%Date:~8,2% %Time% INFO:���ڳ��Ը���%B_Folder_Path%Ŀ¼�µ�log.bak��logs.bak
if exist "log.%Yesterday%.bak" (copy /y "log.%Yesterday%.bak" "%B_Folder_Path%\log.bak"||echo.%Date:~0,4%/%Date:~5,2%/%Date:~8,2% %Time% ERROR:�ڳ��Ը���%B_Folder_Path%Ŀ¼�µ�log.bakʱ����!)
if not exist "log.%Yesterday%.bak" (echo.%Date:~0,4%/%Date:~5,2%/%Date:~8,2% %Time% WARNING:��%A_Folder_Path%Ŀ¼��û���ҵ�log.%Yesterday%.bak�ļ�)
if exist "logs%Yesterday%.bak" (copy /y "logs%Yesterday%.bak" "%B_Folder_Path%\logs.bak"||echo.%Date:~0,4%/%Date:~5,2%/%Date:~8,2% %Time% ERROR:�ڳ��Ը���%B_Folder_Path%Ŀ¼�µ�logs.bakʱ����!)
if not exist "logs%Yesterday%.bak" (echo.%Date:~0,4%/%Date:~5,2%/%Date:~8,2% %Time% WARNING:��%A_Folder_Path%Ŀ¼��û���ҵ�logs%Yesterday%.bak�ļ�)
cd %Back_Work_Path%
title ���������־�ļ�-��ǰ����Ŀ¼:%CD%
set Chack_Logs_Ever_Hours=%Recovery_Chack_Hours%
set Chack_Logs_Ever_Minutes=%Recovery_Chack_Minutes%
set Chack_Logs_Ever_Seconds=%Recovery_Chack_Seconds%
::�ָ���ʱ��ʱ��
goto :loop