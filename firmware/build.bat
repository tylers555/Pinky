@echo off
setlocal

set COMPILE_OPTIONS= 
set INCLUDE_PATHS=
set LIBRARY_PATHS=
set LIBRARIES= 

pushd "build"

REM set BUILD_MODE="release"
REM set PROCESS_ASSETS="true"

:build_game

pushd "bootloader"
xc8-cc -mcpu=16F15243 -O2 -c ..\..\source\bootloader.c
xc8-cc -mcpu=16F15243 -O2 -c ..\..\source\bootloader_stubs.c
xc8-cc -mcpu=16f15243 bootloader.p1 bootloader_stubs.p1
python3 -m PIC_Programmer -cCOM3 bootloader.hex 
popd

pushd "application"
xc8-cc -mcpu=16F15243 -c ..\..\source\main.c
xc8-cc -mcpu=16f15243 main.p1 ..\bootloader\bootloader.p1
REM python3 -m Pinky_Programmer main.hex -cCOM3
popd

popd
    
endlocal