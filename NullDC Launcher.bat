@echo off
findstr /m "launch_antimicro=1" nullDCNetplayLauncher\launcher.cfg >Nul
if %errorlevel%==0 (
echo Loading Gamepad Mapper...
start /b .\antimicro\antimicro.exe --hidden --profile .\antimicro\profiles\nulldc.gamecontroller.amgp
)
echo Finished
start /high nullDCNetplayLauncher/nullDCNetplayLauncher.exe -Force
