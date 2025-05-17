# What do you think your computer's clock is based on?
# Clock Issues? could be CMOS Battery.

@echo on
title Digital Clock
mode con: cols=30 lines=5

SET /A HH = 0 
SET /A MM = 0
SET /A SS = 0
Set /A ctr = 0

:loop
ctr + 1
if(%ctr%<60) SS+1
elseif(%ctr%=60&&%MM%<60) %SS%=0, %MM%+1, %ctr%=0
elseif(%MM%=60&&%HH%<24) %HH%+1,%MM%=0
elseif(%HH%=24) %HH%=0,%MM%=0,%SS%=0

cls
echo ========================
echo    %HH%:%MM%:%SS%     
echo ========================
timeout /t 1 >nul
pause
cmd /k
##Trouble keeping the CLI open.
goto loop