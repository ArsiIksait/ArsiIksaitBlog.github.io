@echo off
:input
set /p input=������Ҫ�����������:
if "%input%"=="I" (goto I)
if "%input%"=="U" (goto U)
if "%input%"=="R" (goto R)
echo.�������,ֻ֧��I U R(���� ��ѹ ����)
goto input
:I
set /p V=�������ѹ(V):
set /p ��=���������(��):
set /a A=%V%/%��%
echo.����I=%A%A
set V=<nul&set ��=<nul&set A=<nul
pause
cls
goto input
:U
set /p A=���������(I):
set /p ��=���������(��):
set /a V=%A%*%��%
echo.��ѹU=%V%V
set V=<nul&set ��=<nul&set A=<nul
pause
cls
goto input
:R
set /p V=�������ѹ(U):
set /p A=���������(I):
set /a ��=%V%/%A%
echo.����R=%��%��
set V=<nul&set ��=<nul&set A=<nul
pause
cls
goto input