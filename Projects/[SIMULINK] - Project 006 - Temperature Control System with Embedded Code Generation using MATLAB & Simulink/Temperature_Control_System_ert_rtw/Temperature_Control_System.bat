
set MATLAB=D:\matlab

cd .

if "%1"=="" ("D:\matlab\bin\win64\gmake"  -f Temperature_Control_System.mk all) else ("D:\matlab\bin\win64\gmake"  -f Temperature_Control_System.mk %1)
@if errorlevel 1 goto error_exit

exit /B 0

:error_exit
echo The make command returned an error of %errorlevel%
exit /B 1