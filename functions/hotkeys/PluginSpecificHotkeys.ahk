VSTundo:
if(WinActive("ahk_class AbletonVstPlugClass") or WinActive("ahk_class Vst3PlugWindow")){
	WinGetTitle, wintitleoutput, A
	RegExMatch(wintitleoutput, "FabFilter\sPro-Q\s3|(?=(\/))", piss)
	if (piss = "FabFilter Pro-Q 3") and (scaling = 1){
		MouseGetPos, posX, posY
		WinGetPos, wx, wy, wWidth, wHeight
		quotient := wWidth/wHeight
		if (quotient = "1.967914"){ ;mini
			fraction := 13/30
		}
		if (quotient = "1.569444"){ ;small
			fraction := 12/30
		}
		if (quotient = "1.582038"){ ;medium
			fraction := 12/31
		}
		if (quotient = "1.592760"){ ;large
			fraction := 12/30
		}
		if (quotient = "1.602108"){ ;extra large
			fraction := 12/29
		}
		if (fraction = ""){
			msgbox, % "If you're seeing this, it means that Midas didn't properly think about the way VST plugins deal with scaling at your current display resolution.`nPerhaps you have the plugin (or your OS) set to a custom scaling amount?`nIt is recommended to disable the VST specific shortcuts in the settings.ini if you want to continue to use custom scaling, since they probably won't work right anyway..`n`n this shortcut will temporarily be disabled."
			scaling := 0
			Return
		}
		yea1 := (wx + (wWidth * fraction))
		yea2 := (wy + (windowedcompensationpx*(31/48) + 20))
		Click, %yea1%, %yea2%
		fraction := ""
		yea1 := ""
		yea2 := ""
		mousemove, posX, posY
	}
	
	RegExMatch(wintitleoutput, "Kick\s2|(?=(\/))", piss)
	if (piss = "Kick 2") and (scaling = 1){
		MouseGetPos, posX, posY
		WinGetPos, wx, wy, wWidth, wHeight
		yea1 := (wx + (wWidth / 3.40))
		yea2 := (wy + (windowedcompensationpx*(31/48) + 85))
		Click, %yea1%, %yea2%
		yea1 := ""
		yea2 := ""
		mousemove, posX, posY
		Return
	}
}
sendinput {ctrl down}{z}{ctrl up}
; my own dimension quotients (can be added to later!)
; mini 1.967914
; small 1.569444
; medium 1.582038
; large 1.592760
; extra large 1.602108
Return

VSTredo:
if(WinActive("ahk_class AbletonVstPlugClass") or WinActive("ahk_class Vst3PlugWindow")){
	WinGetTitle, wintitleoutput, A
	RegExMatch(wintitleoutput, "FabFilter\sPro-Q\s3|(?=(\/))", piss)
	if (piss = "FabFilter Pro-Q 3") and (scaling = 1){
		MouseGetPos, posX, posY
		WinGetPos, wx, wy, wWidth, wHeight
		quotient := wWidth/wHeight
		; MsgBox, % quotient
		if (quotient = "1.967914"){ ;mini
			fraction := 14/30
		}
		if (quotient = "1.569444"){ ;small
			fraction := 13/30
		}
		if (quotient = "1.582038"){ ;medium
			fraction := 13/31
		}
		if (quotient = "1.592760"){ ;large
			fraction := 12/28
		}
		if (quotient = "1.602108"){ ;extra large
			fraction := 13/30
		}
		if (fraction = ""){
			msgbox, % "If you're seeing this, it means that Midas didn't properly think about the way Pro-Q deals with scaling at your current display resolution.`nThe command has been disabled to prevent misfired keystrokes.`nPlease contact me on twitter so I can fix the bug!"
			Hotkey, ~^y, VSTredo, Off
			Return
		}
		yea1 := (wx + (wWidth * fraction))
		yea2 := (wy + (windowedcompensationpx*(31/48) + 20))
		Click, %yea1%, %yea2%
		fraction := ""
		yea1 := ""
		yea2 := ""
		mousemove, posX, posY
	}
	
	RegExMatch(wintitleoutput, "Kick\s2|(?=(\/))", piss)
	if (piss = "Kick 2") and (scaling = 1){
		MouseGetPos, posX, posY
		WinGetPos, wx, wy, wWidth, wHeight
		yea1 := (wx + (wWidth / 3.19))
		yea2 := (wy + (windowedcompensationpx*(31/48) + 85))
		Click, %yea1%, %yea2%
		yea1 := ""
		yea2 := ""
		mousemove, posX, posY
		Return
	}
}
sendinput {ctrl down}{y}{ctrl up}
Return