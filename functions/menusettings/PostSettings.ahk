if (enabledebug = 1){ ;modifies the tray menu if enabledebug is enabled.
Menu, Tray, Insert, 1&, Key History, listkeys
Menu, Tray, Insert, 2&,
Menu, Tray, Insert, 1&, Log, logstuff
Menu, Tray, Default, Log
}

; speeeeeeeeeeeeeeeeeeeeeeeed
; This used to have a variable setting "superspeedmode", but it was depricated.
; I'm not sure why I haven't moved this to the start of the script.
setmousedelay -1 
setbatchlines -1

loop, 1{ ;adding to startup (or not)
if (addtostartup = 1){
RegWrite, REG_SZ, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run, Live Enhancement Suite, %A_ScriptDir%\%A_ScriptName%
}
if (addtostartup = 0){
RegDelete, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run, Live Enhancement Suite
}
}

SetTimer, watchforopen, 1000
goto hotkeysmain

~$MButton Up::
Critical
	if (activenaw = 1){
		if (middleclicktopan = 1){
			Send {LControl up}{LAlt up}{LButton up}
		}
	}
	else {
		sendinput {blind}{mbutton up}
	}
Return

hotkeysmain:
#IfWinActive ahk_exe Ableton Live.+