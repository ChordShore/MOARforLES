#MaxThreadsPerHotkey 2

CoordMode, Menu, Screen
CoordMode, Mouse, Screen
CoordMode, Pixel, Screen
SetTitleMatchMode, Regex
SetWorkingDir %A_ScriptDir%
SetDefaultMouseSpeed, 0
#InstallKeybdHook
#KeyHistory 100
#SingleInstance Force
setmousedelay, -1 
setbatchlines, -1
#UseHook
#MaxHotkeysPerInterval 400

OnExit, exitfunc