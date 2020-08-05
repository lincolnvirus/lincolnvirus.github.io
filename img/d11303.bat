@echo off
:begin

if exist burnin.dat goto test
copy burnin.bak burnin.ini /y
msid /ini:burnin.ini /cnf_ini:burnin.ini
echo burnin > burnin.dat
:test
msid /ini:burnin.ini /scr:burnin.scr /ted:1  -pcv
if errorlevel 1 goto end
goto begin

:end
