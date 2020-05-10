# nulldc-netplay-launcher-scripts
Supporting scripts for the [nullDC Netplay Launcher](https://github.com/blueminder/nullDCNetplayLauncher)

This repository contains all the scripts/configurations made to interact with the various components of the nullDC Netplay Distribution.

## nullDC NAOMI ROM Launcher
*[AutoHotkey](https://www.autohotkey.com/)* script that loads NAOMI ROMs into the excavated nullDC build. Also hides windows during gameplay and allows you to quickly end your games by pressing Esc. Useful when you need to bail in anticipation of a Desync.

## Gamepad Mapper Scripts
*[antimicro](https://github.com/AntiMicro/antimicro)* is used to map joystick buttons to keyboard controls. Since the excavated nullDC/qkoJAMMA build used in this distribution has trouble with joysticks that assign buttons to the Z axis, we use this as a workaround.

* Enable Gamepad Mapper
* Disable Gamepad Mapper
* nulldc.gamecontroller.amgp antimicro profile

## Assign NullDC Joystick Buttons
A script to interact with MarioBrotha's nullDCControlSetup tool for button assignment. After the controller's QJC file is generated, it is automatically copied into the active qkoJAMMA directory of available joystick inputs.

## Swap Joystick And Keyboard Controls
Disables gamepad mapper and toggles between native joystick or keyboard controls.

## launcher.cfg
Configuration file to establish user defaults outside of the launcher application itself.

