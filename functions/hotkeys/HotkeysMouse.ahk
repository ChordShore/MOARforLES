; I'm using this syntax here; rather than "Hotkey", because for some reason this works on MX master mice and the "Hotkey" approach does not.
; I'm not sure if I'm doing something wrong but this is probably a bug; AHK pease fix?
; these are after the double right click routine because it ends the auto execute section of the script.
; If they were higher up, the nescesary "Return" would end the auto-execute section of the script early.


; I moved $Mbutton up:: hotkey to the top of the script to be set before the global #ifwinactive marker
; this way you will be able to release the mbutton hotkey even when ableton live is not in focus
; I think this is the cause of the hotkey getting stuck bug (requires some testing)
$MButton::
Critical
	if (middleclicktopan = 1){
		Send {LControl down}{LAlt down}{LButton down}
		keywait, Mbutton
		Send {LControl up}{LAlt up}{LButton up}
	}
Return

$WheelDown::
	MouseGetPos,,,guideUnderCursor
	WinGetTitle, WinTitle, ahk_id %guideUnderCursor%
	if(InStr(WinTitle, "Ableton") != 0){
		SendInput, {WheelDown %scrollspeed%}
	}
	else{
		SendInput, {WheelDown 1}
	}
Return

$WheelUp:: ;selecta
	MouseGetPos,,,guideUnderCursor
	WinGetTitle, WinTitle, ahk_id %guideUnderCursor%
	if(InStr(WinTitle, "Ableton") != 0){
		SendInput, {WheelUp %scrollspeed%}
	}
	Else{
		SendInput, {WheelUp 1}
	}
Return

pause::
^F1::
    Suspend, Permit
	if (A_IsPaused = 1){
		;traytip, "Live Enhancement Suite", "LES is unpaused", 0.1, 16
		Menu, Tray, Rename, Unpause && Unsuspend, Pause && Suspend
	}
	Else{
		;traytip, "Live Enhancement Suite", "LES is paused", 0.1, 16
		Menu, Tray, Rename, Pause && Suspend, Unpause && Unsuspend
	}
    Pause, Toggle, 1
    Suspend, Toggle
Return