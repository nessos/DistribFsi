@echo off

.paket\paket.bootstrapper.exe
if errorlevel 1 (
  exit /b %errorlevel%
)

.paket\paket.exe restore -v
if errorlevel 1 (
  exit /b %errorlevel%
)

packages\build\FAKE\tools\FAKE.exe build.fsx %*
