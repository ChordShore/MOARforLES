loop, 1 { ; (again, loop, 1 does nothing)

listkeys: ;these are built in AHK GUIs, so this simple command needed to be added to the tray menu as well.
KeyHistory
Return

logstuff:
listlines
Return

settingsini:
run, %A_ScriptDir%\settings.ini
Return

menuini:
run, %A_ScriptDir%\menuconfig.ini
Return

doreload:
FileDelete,%A_ScriptDir%\resources\activecheat.txt
gosub coolfunc
Reload
Return

stricttime: ;this is what happens when you click "strict time"
if (stricton = 0){
stricton := 1
Menu, Tray, Check, Strict Time
FileDelete,%A_ScriptDir%/resources/strict.txt
FileAppend, 1,%A_ScriptDir%/resources/strict.txt


settitlematchmode, regex
if !(WinActive("ahk_exe Ableton Live")){
	SetTimer, Clock, Delete ; deleting a clock that increases the timer when ableton is unfocussed.
}
settitlematchmode, 2

}
Else if (stricton = 1){
stricton := 0
FileDelete,%A_ScriptDir%/resources/strict.txt
FileAppend, 0,%A_ScriptDir%/resources/strict.txt
Menu, Tray, Uncheck, Strict Time
if (WinExist("ahk_exe Ableton Live ") != 0) and (trackname != ""){
	SetTimer, Clock, 1000 ; creating a clock that increases the timer.
}
}
Return

freeze:
if (A_IsPaused = 1){
Menu, Tray, Rename, Unpause && Unsuspend, Pause && Suspend
}
Else{
Menu, Tray, Rename, Pause && Suspend, Unpause && Unsuspend
}

Suspend, Toggle
Pause
Return

InsertWhere:
Msgbox, 4, Live Enhancement Suite, % "InsertWhere is a Max For Live companion device developed by Mat Zo.`nInsertWhere allows you to change the position where plugins are autoinserted after using the LES plugin menu.`nOnce loaded, it will allow you to switch between these settings:`n`n - Autoadd plugins before the one you have selected`n - Autoadd plugins after the the one you have selected`n - Always autoadd plugins at the end of the chain like normal.`n`nTo activate InsertWhere, place a single instance of the device on the master channel in your project and choose your desired setting.`n`nDo you want to install the InsertWhere M4L plugin?"
IfMsgBox Yes
{
	Msgbox, 64, Live Enhancement Suite, % "Please select the location where you want LES to extract the InsertWhere companion plugin.`n`nRecommended: Ableton User Library"
	FileSelectFile, userlibrary, S, C:\Users\%A_UserName%\Documents\Ableton\User Library\InsertWhere.amxd
	if (userlibrary = ""){
		return
	}
	fileinstall, resources\InsertWhere.amxd, %userlibrary%
	Msgbox, 64, Live Enhancement Suite, % "Succes!!`nFor extra ease of use, include InsertWhere in your default template.`n`nFor more information on InsertWhere, visit the documentation website linked under the ""Manual 📖"" button in the tray.`n`nThank you Mat Zo for making this amazing device!"
}

return

manual:
run, https://docs.enhancementsuite.me/
Return

monatpls: ;please gib monat
run, https://paypal.me/enhancementsuite
Return

quitnow:
exitapp
Return
}

; the readme technically isn't a tray menu action, since it's no longer located there. It's now included in the plugin menu to attract more attention.
; the marker is still here though because idk where else to put it.

readme:
SoundPlay, %A_ScriptDir%\resources\readmejingle.wav
MsgBox, 0, Readme, % "Welcome to the Live Enhancement Suite created by @InvertedSilence & @DylanTallchief 🐦`nDouble right click to open up the custom plug-in menu.`nClick on the LES logo in the menu bar to add your own plug-ins, change settings, and read our manual if you're confused.`nHappy producing : )"
Return