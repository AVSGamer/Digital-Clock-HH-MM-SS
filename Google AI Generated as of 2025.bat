@echo off
title Clock
:loop
echo %date%
echo %time%
ping -n 1 127.0.0.1 > nul
cls
goto loop