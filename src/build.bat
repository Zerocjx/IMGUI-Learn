@echo off

mkdir ..\build
copy ..\third_party\SDL2\lib\x64\SDL2.dll ..\build
pushd ..\build
cl ..\src\main.cpp -I ..\third_party\SDL2\include\ SDL2.lib SDL2main.lib SDL2test.lib^
    /link /ENTRY:WinMainCRTStartup /SUBSYSTEM:WINDOWS /LIBPATH:..\third_party\SDL2\lib\x64\
popd

start ..\build\main.exe