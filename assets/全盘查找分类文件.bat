@echo off
for /f "delims=" %%n in (Extension.txt) do (
 for %%p in (A,B,C,D,E,F,J,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) do (
  title ���ڷ��� %%n �ļ� ���ڴ���:%%p:\ - dir /s /b %%p:\*%%n
  if exist "%%p:\" (dir /s /b %%p:\*%%n 2>nul>>ALL_%%n_FILES.log)
 )
)
pause