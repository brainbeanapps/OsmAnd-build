@echo off
set ORIGINAL_DIR=%CD%
set BAKED_DIR=%~dp0..\baked\%~n0.msvs2012
rmdir /S /Q "%BAKED_DIR%"
mkdir "%BAKED_DIR%"
chdir "%BAKED_DIR%"
"%WINDOWS_CMAKE%\bin\cmake.exe" -G "Visual Studio 11 Win64" -DCMAKE_TARGET_OS:STRING=windows -DCMAKE_TARGET_CPU_ARCH:STRING=amd64 "%~dp0"
chdir %ORIGINAL_DIR%