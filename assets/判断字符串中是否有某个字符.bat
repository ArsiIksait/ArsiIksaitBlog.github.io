@echo off
set /p str=������:
if "%str%"=="" (
 echo IsNULL
 echo Then Do Somethings...
 ) else (
  echo IsNotNULL
 echo=%str%|findstr "abc"&&(
 echo �ҵ��˲��ҵ��ַ�
 )||(
 echo û�ҵ�Ҫ���ҵ��ַ�[�����ַ�]
 )
)
pause