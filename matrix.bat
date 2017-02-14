@echo off
cls
title Enter The Matrix
color 02

set string=Wake up Neo...
set /a len=18
call :DisplayText

ping localhost -n 4 >nul
set string=The Matrix has you...
set /a len=25
call :DisplayText

ping localhost -n 4 >nul
set string=Follow the white rabbit.
set /a len=28
call :DisplayText

ping localhost -n 4 >nul
set string=Knock, knock, Neo...
set /a len=24
call :DisplayText

ping localhost -n 4 >nul


goto matrix


:DisplayText

set /a dispvar =1
set /a len +=1

:DisplayLoop

CALL SET str=%%string:~0,%dispvar%%%

cls
echo %str%
ping localhost -n 1 >nul

set /a dispvar +=1

if '%dispvar%'=='%len%' goto enddisplay

goto DisplayLoop

:enddisplay
exit /b

:matrix
setlocal enabledelayedexpansion
for /l %%A in (1,1,39) do (
set /a rnd=!random!%%5+1
if !rnd!==1 (
set /a rnd2=!random!%%26+1
set num=1
for %%A in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
if !rnd2!==!num! (
set add=%%A
)
set /a num+=1
)
) else set /a add=!rnd!%%2
set var=!var! !add!
)
echo !var!
call :matrix