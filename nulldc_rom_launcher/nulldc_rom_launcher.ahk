; nullDC NAOMI ROM Launcher
; by blueminder (May 7, 2020)
;
; Command line invocation of ROMS on nullDC does not support NAOMI .lst files for some reason
; This AHK script is here to fill the gap, while hiding away extraneous windows for focused gaming sessions
; Written for the FGC ARCADIA nullDC Netplay Distribution, to be called with the provided AutoHotkeyU32.exe
;
#SingleInstance, Force
Path = %A_ScriptDir%
DistroRoot := SubStr(Path, 1, InStr(SubStr(Path,1,-1), "\", 0, 0)-1)
rom = %1%
is_host = %2%
if rom is not space
{
    Run, "FPS_Limiter.exe"  /r:D3D9 /f:60 /x:OFF /l:OFF "%DistroRoot%\nulldc-1-0-4-en-win\nullDC_Win32_Release-NoTrace.exe", %DistroRoot%\FPS_Limiter_0.2_Remake_GUI
    WinWait, nullDC-Naomi v1.0.4 (built Jan  4 2011@23:39:56)
    Sleep, 1000
    WinMove, nullDC ahk_class ndc_main_window,, X, Y
    WinMenuSelectItem, nullDC ahk_class ndc_main_window,,File,Normal Boot
    WinWait, Open ahk_class #32770
    WinWaitActive, Open ahk_class #32770

    ControlSetText, Edit1, %rom%, Open ahk_class #32770
    ControlSend, Edit1, {Enter}, Open ahk_class #32770

    if is_host is space
        WinMinimize, ahk_class ConsoleWindowClass ahk_exe nullDC_Win32_Release-NoTrace.exe
    WinMinimize, ahk_class ConsoleWindowClass ahk_exe FPS_Limiter.exe

    WinWaitClose, ahk_class ndc_main_window ahk_exe nullDC_Win32_Release-NoTrace.exe
    WinActivate, ahk_exe FPS_Limiter.exe
    ControlSend,, a, ahk_exe FPS_Limiter.exe

    #IfWinActive, ahk_class ndc_main_window ahk_exe nullDC_Win32_Release-NoTrace.exe
    $ESC::
    {
        WinClose, ahk_class ndc_main_window ahk_exe nullDC_Win32_Release-NoTrace.exe
        WinClose, ahk_class ConsoleWindowClass ahk_exe nullDC_Win32_Release-NoTrace.exe
    }
    return
    #If

    ExitApp
}