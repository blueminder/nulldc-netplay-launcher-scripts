@echo off
findstr /m "player1=keyboard" nulldc-1-0-4-en-win\nullDC.cfg >Nul
if %errorlevel%==0 (
sed\sed.exe "s/player1=keyboard/player1=joy1/; s/backup=joy1/backup=keyboard/" nulldc-1-0-4-en-win\nullDC.cfg > nulldc-1-0-4-en-win\nullDC2.cfg

del nulldc-1-0-4-en-win\nullDC.cfg
ren nulldc-1-0-4-en-win\nullDC2.cfg nullDC.cfg
)

findstr /m "launch_antimicro=1" nullDCNetplayLauncher\launcher.cfg >Nul
if %errorlevel%==0 (
sed\sed.exe "s/launch_antimicro=1/launch_antimicro=0/" nullDCNetplayLauncher\launcher.cfg > nullDCNetplayLauncher\launcher2.cfg

del nullDCNetplayLauncher\launcher.cfg
ren nullDCNetplayLauncher\launcher2.cfg launcher.cfg
)

echo Gamepad Mapper Disabled

pause