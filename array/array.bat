:: array.bat
@echo off
setlocal enabledelayedexpansion
set arr[0]=1
set arr[1]=2
set arr[2]=3
set arr[3]=4
set arr[4]=5
echo Array elements are:
for /L %%i in (0,1,4) do (
    echo !arr[%%i]!
)
