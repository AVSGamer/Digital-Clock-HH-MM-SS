:: unsure what is the error with this code that is causing CLI to close right away
:: compared to what the Google AI made.
:: My goal here is to try and recreate a Clock-like timer that doesn't rely on external
:: data...
@echo off
title Digital Clock
SET /A HH = 0 
SET /A MM = 0
SET /A SS = 0
Set /A ctr = 0
:loop
SET /A ctr = %ctr% + 1
if %ctr%<60 (SET /A SS = %SS% + 1)
else if %ctr%==60 && %MM%<60 (SET /A SS = 0,SET /A MM = %MM% + 1,SET /A ctr=0)
else if %MM%==60 && %HH%<24 (SET /A HH = %HH% + 1,SET /A MM=0)
else if %HH%==24 (SET /A HH=0,SET /A MM=0,SET /A SS=0)
echo ========================
echo    %HH%:%MM%:%SS%     
echo ========================
ping -n 1 127.0.0.1 > nul
cls
goto loop