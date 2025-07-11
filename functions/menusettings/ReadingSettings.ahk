; This next loop is the settings.ini "spell checker". As a lot of variables come from this text file.
; It's important that all of them are present in the correct way; otherwise AHK might misbehave or do stupid stuff.
; I didn't really know how to make this work as a function back then so I just copy pasted the different checks for each of the values.
; Contrary to what it looks like, these are not all the same; not every field requires a 1 or a 0
Loop, Read, %A_ScriptDir%\settings.ini
{

	line := StrReplace(A_LoopReadLine, "`r", "")
	line := StrReplace(line, "`n", "")

	;New Hotkeys
	;==========================================

	if (RegExMatch(line, "colortracks_enable\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
	if !(result[2] = 0 or result[2] = 1){
		msgbox % "Invalid parameter for " . Chr(34) "colortracks_enable" . Chr(34) . ". Valid parameters are: 1 and 0. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	colortracks_enable := result[2]
	}

	if (RegExMatch(line, "cleartracks_enable\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
	if !(result[2] = 0 or result[2] = 1){
		msgbox % "Invalid parameter for " . Chr(34) "cleartracks_enable" . Chr(34) . ". Valid parameters are: 1 and 0. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	cleartracks_enable := result[2]
	}

	if (RegExMatch(line, "buplicate_enable\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
	if !(result[2] = 0 or result[2] = 1){
		msgbox % "Invalid parameter for " . Chr(34) "buplicate_enable" . Chr(34) . ". Valid parameters are: 1 and 0. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	buplicate_enable := result[2]
	}

	if (RegExMatch(line, "directshyper_enable\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
	if !(result[2] = 0 or result[2] = 1){
		msgbox % "Invalid parameter for " . Chr(34) "directshyper_enable" . Chr(34) . ". Valid parameters are: 1 and 0. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	directshyper_enable := result[2]
	}

	if (RegExMatch(line, "debugshortcut_enable\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
	if !(result[2] = 0 or result[2] = 1){
		msgbox % "Invalid parameter for " . Chr(34) "debugshortcut_enable" . Chr(34) . ". Valid parameters are: 1 and 0. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	debugshortcut_enable := result[2]
	}

	if (RegExMatch(line, "freezetrack_enable\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
	if !(result[2] = 0 or result[2] = 1){
		msgbox % "Invalid parameter for " . Chr(34) "freezetrack_enable" . Chr(34) . ". Valid parameters are: 1 and 0. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	freezetrack_enable := result[2]
	}

	if (RegExMatch(line, "flattentrack_enable\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
	if !(result[2] = 0 or result[2] = 1){
		msgbox % "Invalid parameter for " . Chr(34) "flattentrack_enable" . Chr(34) . ". Valid parameters are: 1 and 0. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	flattentrack_enable := result[2]
	}

	if (RegExMatch(line, "bounceinplace_enable\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
	if !(result[2] = 0 or result[2] = 1){
		msgbox % "Invalid parameter for " . Chr(34) "bounceinplace_enable" . Chr(34) . ". Valid parameters are: 1 and 0. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	bounceinplace_enable := result[2]
	}

	if (RegExMatch(line, "helpview_enable\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
	if !(result[2] = 0 or result[2] = 1){
		msgbox % "Invalid parameter for " . Chr(34) "helpview_enable" . Chr(34) . ". Valid parameters are: 1 and 0. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	helpview_enable := result[2]
	}

	if (RegExMatch(line, "filemanager_enable\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
	if !(result[2] = 0 or result[2] = 1){
		msgbox % "Invalid parameter for " . Chr(34) "filemanager_enable" . Chr(34) . ". Valid parameters are: 1 and 0. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	filemanager_enable := result[2]
	}

	if (RegExMatch(line, "slicetonewmiditrack_enable\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
	if !(result[2] = 0 or result[2] = 1){
		msgbox % "Invalid parameter for " . Chr(34) "slicetonewmiditrack_enable" . Chr(34) . ". Valid parameters are: 1 and 0. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	slicetonewmiditrack_enable := result[2]
	}

	if (RegExMatch(line, "editinfotext_enable\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
	if !(result[2] = 0 or result[2] = 1){
		msgbox % "Invalid parameter for " . Chr(34) "editinfotext_enable" . Chr(34) . ". Valid parameters are: 1 and 0. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	editinfotext_enable := result[2]
	}



	;Classic Features
	;==========================================

	if (RegExMatch(line, "autoadd\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
	if !(result[2] = 0 or result[2] = 1){
		msgbox % "Invalid parameter for " . Chr(34) "autoadd" . Chr(34) . ". Valid parameters are: 1 and 0. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	autoadd := result[2]
	}
	
	if (RegExMatch(line, "resetbrowsertobookmark\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
	if !(result[2] = 0 or result[2] = 1){
		msgbox % "Invalid parameter for " . Chr(34) "resetbrowsertobookmark" . Chr(34) . ". Valid parameters are: 1 and 0. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	resetbrowsertobookmark := result[2]
	}
	
	if (RegExMatch(line, "bookmarkx\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
		if !(RegExReplace(result[2], "[0-9]") = ""){
		msgbox % "Invalid parameter for " . Chr(34) "bookmarkx" . Chr(34) . ": the specified parameter is not a number. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	bookmarkx := result[2]
	}
	
	if (RegExMatch(line, "bookmarky\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
		if !(RegExReplace(result[2], "[0-9]") = ""){
		msgbox % "Invalid parameter for " . Chr(34) "bookmarky" . Chr(34) . ": the specified parameter is not a number. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	bookmarky := result[2]
	}
	
	if (RegExMatch(line, "windowedcompensationpx\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
		if !(RegExReplace(result[2], "[0-9]") = ""){
		msgbox % "Invalid parameter for " . Chr(34) "windowedcompensationpx" . Chr(34) . ": the specified parameter is not a number. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	windowedcompensationpx := result[2]
	}
	
	if (RegExMatch(line, "disableloop\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
	if !(result[2] = 0 or result[2] = 1){
		msgbox % "Invalid parameter for " . Chr(34) "disableloop" . Chr(34) . ". Valid parameters are: 1 and 0. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	disableloop := result[2]
	}
	
	if (RegExMatch(line, "saveasnewver\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
	if !(result[2] = 0 or result[2] = 1){
		msgbox % "Invalid parameter for " . Chr(34) "saveasnewver" . Chr(34) . ". Valid parameters are: 1 and 0. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	saveasnewver := result[2]
	}
	
	if (RegExMatch(line, "usectrlaltsinstead\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
	if !(result[2] = 0 or result[2] = 1){
		msgbox % "Invalid parameter for " . Chr(34) "usectrlaltsinstead" . Chr(34) . ". Valid parameters are: 1 and 0. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	usectrlaltsinstead := result[2]
	}
	
	if (RegExMatch(line, "altgrmarker\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
	if !(result[2] = 0 or result[2] = 1){
		msgbox % "Invalid parameter for " . Chr(34) "altgrmarker" . Chr(34) . ". Valid parameters are: 1 and 0. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	altgrmarker := result[2]
	}
	
	if (RegExMatch(line, "middleclicktopan\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
	if !(result[2] = 0 or result[2] = 1){
		msgbox % "Invalid parameter for " . Chr(34) "middleclicktopan" . Chr(34) . ". Valid parameters are: 1 and 0. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	middleclicktopan := result[2]
	}
	
	if (RegExMatch(line, "scrollspeed\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
	if !(RegExReplace(result[2], "[0-9]") = ""){
		msgbox % "Invalid parameter for " . Chr(34) "scrollspeed" . Chr(34) . ". The specified parameter is not a number. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	scrollspeed := floor(result[2])
	}
	
	if (RegExMatch(line, "addctrlshiftz\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
	if !(result[2] = 0 or result[2] = 1){
		msgbox % "Invalid parameter for " . Chr(34) "addctrlshiftz" . Chr(34) . ". Valid parameters are: 1 and 0. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	addctrlshiftz := result[2]
	}
	
	if (RegExMatch(line, "0todelete\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
	if !(result[2] = 0 or result[2] = 1){
		msgbox % "Invalid parameter for " . Chr(34) "0todelete" . Chr(34) . ". Valid parameters are: 1 and 0. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	0todelete := result[2]
	}
	
	if (RegExMatch(line, "absolutereplace\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
	if !(result[2] = 0 or result[2] = 1){
		msgbox % "Invalid parameter for " . Chr(34) "absolutereplace" . Chr(34) . ". Valid parameters are: 1 and 0. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	absolutereplace := result[2]
	}
	
	if (RegExMatch(line, "enableclosewindow\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
	if !(result[2] = 0 or result[2] = 1){
		msgbox % "Invalid parameter for " . Chr(34) "enableclosewindow" . Chr(34) . ". Valid parameters are: 1 and 0. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	enableclosewindow := result[2]
	}
	
	if (RegExMatch(line, "vstshortcuts\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
	if !(result[2] = 0 or result[2] = 1){
		msgbox % "Invalid parameter for " . Chr(34) "vstshortcuts" . Chr(34) . ". Valid parameters are: 1 and 0. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	vstshortcuts := result[2]
	}

; depricated feature	

;	if (RegExMatch(line, "superspeedmode\s=\s") != 0){
;	result := StrSplit(line, "=", A_Space)
;	if !(result[2] = 0 or result[2] = 1){
;		msgbox % "Invalid parameter for " . Chr(34) "superspeedmode" . Chr(34) . ". Valid parameters are: 1 and 0. The program will shut down now."
;		run, %A_ScriptDir%\settings.ini
;		exitapp
;		}
;	superspeedmode := result[2]
;	}
	
	if (RegExMatch(line, "smarticon\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
	if !(result[2] = 0 or result[2] = 1){
		msgbox % "Invalid parameter for " . Chr(34) "smarticon" . Chr(34) . ". Valid parameters are: 1 and 0. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	smarticon := result[2]
	}
	
	if (RegExMatch(line, "dynamicreload\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
	if !(result[2] = 0 or result[2] = 1){
		msgbox % "Invalid parameter for " . Chr(34) "dynamicreload" . Chr(34) . ". Valid parameters are: 1 and 0. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	dynamicreload := result[2]
	}
	
	if (RegExMatch(line, "pianorollmacro\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
	if ((RegExMatch(line, "SC\d\d") = 0)){
		msgbox % "Invalid parameter for " . Chr(34) "pianorollmacro" . Chr(34) . ". This needs to be a keycode starting with SC. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	pianorollmacro := result[2]
	}
	
	if (RegExMatch(line, "pianosearch\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
	if !(result[2] = 0 or result[2] = 1){
		msgbox % "Invalid parameter for " . Chr(34) "pianosearch" . Chr(34) . ". Valid parameters are: 1 and 0. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	pianosearch := result[2]
	}
	
	if (RegExMatch(line, "enabledebug\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
	if !(result[2] = 0 or result[2] = 1){
		msgbox % "Invalid parameter for " . Chr(34) "enabledebug" . Chr(34) . ". Valid parameters are: 1 and 0. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	enabledebug := result[2]
	}
	
	if (RegExMatch(line, "addtostartup\s=\s") != 0){
	result := StrSplit(line, "=", A_Space)
	if !(result[2] = 0 or result[2] = 1){
		msgbox % "Invalid parameter for " . Chr(34) "addtostartup" . Chr(34) . ". Valid parameters are: 1 and 0. The program will shut down now."
		run, %A_ScriptDir%\settings.ini
		exitapp
		}
	addtostartup := result[2]
	}
	
	if (RegExMatch(line, "fliptabfunction\s=\s") != 0){
		result := StrSplit(line, "=", A_Space)
		if !(result[2] = 0 or result[2] = 1){
			msgbox % "Invalid parameter for " . Chr(34) "fliptabfunction" . Chr(34) . ". Valid parameters are: 1 and 0. The program will shut down now."
			run, %A_ScriptDir%\settings.ini
			exitapp
			}
		fliptabfunction := result[2]
	}
}

; alright, so this section asks the user to update the settings.ini with the one included in the package if some values are missing.
; these are the values I deem "nescesary"
if ((autoadd = "") or (resetbrowsertobookmark = "") or (bookmarkx = "") or (bookmarky = "") or (windowedcompensationpx = "") or (disableloop = "") or (saveasnewver = "") or (usectrlaltsinstead = "")or (usectrlaltsinstead = "") or (middleclicktopan = "") or (addctrlshiftz = "") or (0todelete = "") or (absolutereplace = "") or (smarticon = "") or (pianorollmacro = "") or (pianosearch = "") or (enabledebug = "") or (addtostartup = "")){
gosub, settingsinibad
}

; this section checks for the remaining variables; ones that were added in recent updates or betas. They aren't really nescesary for the program to function.
; In case you're wondering; missing variables default to a "false" response in AHK - so none of the features with missing settings.ini entries will work until you add them to the file.

; I never bothered to make a dynamic settings.ini file updater. Or some UI thing that would make this entire process more convoluted.
; Things like LES 1.2 and 1.3 were never supposed to happen so I didn't account for them - these are the crappy workarounds.

if ((dynamicreload = "") or (altgrmarker = "") or (enableclosewindow = "") or (vstshortcuts = "") or (scrollspeed = "") or (fliptabfunction = ""))
Msgbox, 4, Oops!, % "It seems your settings.ini file is from an older version of LES.`nYou won't be able to use some of the new features added to the settings without restoring your settings.ini file to its default state. It is recommended you make a backup before you do. This won't reset your menu. Reset settings?"
IfMsgBox Yes
	{
	FileDelete, %A_ScriptDir%\settings.ini
	FileInstall, settings.ini, %A_ScriptDir%/settings.ini
	
	MsgBox, 4,Live Enhancement Suite, Would you like to add the Live Enhancement Suite to startup?`n(This can be changed anytime)
	IfMsgBox Yes
		{
		;MsgBox You pressed Yes.
		Loop, Read, %A_ScriptDir%/settings.ini, %A_ScriptDir%/settingstemp.ini
		{
		testforstartup := Instr(A_LoopReadLine, "addtostartup")
		If(testforstartup = 1) {
			FileAppend, addtostartup = 1`n, %A_ScriptDir%/settingstemp.ini
			FileAppend, `;`	causes the script to launch on startup`n, %A_ScriptDir%/settingstemp.ini"
			}
		Else{
			FileAppend, %A_LoopReadLine%`n, %A_ScriptDir%/settingstemp.ini
			}
		}
		goto, donelalalala
		}
		
	;MsgBox You pressed No.
	Loop, Read, %A_ScriptDir%/settings.ini, %A_ScriptDir%/settingstemp.ini
		{
		testforstartup := Instr(A_LoopReadLine, "addtostartup")
		If(testforstartup = 1) {
			FileAppend, addtostartup = 0`n, %A_ScriptDir%/settingstemp.ini
			FileAppend, `;`	causes the script to launch on startup`n, %A_ScriptDir%/settingstemp.ini"
			}
		Else{
			FileAppend, %A_LoopReadLine%`n, %A_ScriptDir%/settingstemp.ini
			}
		}
	donelalalala:
	FileDelete,%A_ScriptDir%/resources/firstrun.txt
	FileAppend, 0,%A_ScriptDir%/resources/firstrun.txt
	FileDelete, %A_ScriptDir%/settings.ini
	FileMove, %A_ScriptDir%/settingstemp.ini, %A_ScriptDir%/settings.ini
	Sleep, 50
	settimer, tooltipboi, 1
	Sleep, 2
	}
	
if (scrollspeed = ""){ ;prevents error from empty variable, in case the user didn't want to reset their settings.ini file during an update
	scrollspeed := 1
}