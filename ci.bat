@echo off
setlocal

git rev-parse --show-toplevel >NUL
if errorlevel 1 exit /b %errorlevel%

cmake -S . -B build
if errorlevel 1 exit /b %errorlevel%

cmake --build build --config Release
if errorlevel 1 exit /b %errorlevel%

ctest --test-dir build -C Release --output-on-failure
exit /b %errorlevel%
