; msgbox, % A_ScriptDir

FileReadLine, OutputVar, %A_ScriptDir%/resources/firstrun.txt, 1
;Checks if the first run file exists
;If it doesn't exist; this is the first run, so then do a bunch of initialization stuff.
if (ErrorLevel = 1 or !(OutputVar = 0)){

If !(InStr(FileExist("resources"), "D")){ ;if the resources folder doesn't exist, check if there's other stuff in the current folder, otherwise spawn the text box.
Loop, %A_ScriptDir%\*.*,1,1
If (A_Index > 3)
{
MsgBox,48,Live Enhancement Suite, % "You have placed LES in a directory that contains other files.`n LES will create new files when used for the first time.`n Please move the program to a dedicated directory."
exitapp
}
}

if InStr(splitPath A_ScriptDir, "Windows\Temp") or InStr(splitPath A_ScriptDir, "\AppData\Local\Temp"){
MsgBox,48,Live Enhancement Suite, % "You executed LES from within your file extraction software.`nThis placed it inside of a temporary cache folder, which will cause it to be deleted by Windows' cleanup routine.`nPlease extract LES into its own folder before proceeding."
exitapp
}

if (instr(A_ScriptDir, "C:\Program Files") != 0) or (instr(A_ScriptDir, "C:\Program Files (x86)") != 0){
	MsgBox,4,Live Enhancement Suite, % "You may have executed LES from within a system folder.`nThis may cause LES to not function properly, as it will not have enough permissions to self-extract in this location.`nAre you sure you want to install LES in this location?`nPlease move this foder to another location to remove this warning."
	IfMsgBox No
		{
		exitapp
		}
}

;this part of the code extracts a bunch of resources from the .exe and puts them in the right spot
FileCreateDir, resources

FileInstall, resources/readmejingle.wav, %A_ScriptDir%/resources/readmejingle.wav
FileInstall, resources/piano.png, %A_ScriptDir%/resources/piano.png
FileInstall, resources/piano2.png, %A_ScriptDir%/resources/piano2.png
FileInstall, resources/pianoblack.png, %A_ScriptDir%/resources/pianoblack.png
FileInstall, menuconfig.ini, %A_ScriptDir%/menuconfig.ini
FileInstall, settings.ini, %A_ScriptDir%/settings.ini
FileInstall, CHANGELOG.md, %A_ScriptDir%/CHANGELOG.md

	MsgBox, 4, Live Enhancement Suite, Welcome to the Live Enhancement Suite!`nWould you like to add the Live Enhancement Suite to startup?`nIt won't do anything when you're not using Ableton Live.`n(This can be changed anytime)
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
		goto, donewithintro
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
	donewithintro: ;this is the goto thats being used when the "intro" is done
	FileDelete,%A_ScriptDir%/resources/firstrun.txt
	FileAppend, 0,%A_ScriptDir%/resources/firstrun.txt
	FileDelete, %A_ScriptDir%/settings.ini
	FileMove, %A_ScriptDir%/settingstemp.ini, %A_ScriptDir%/settings.ini
	Sleep, 50
	settimer, tooltipboi, 1
	Sleep, 2
}
	
FileReadLine, OutputVar, %A_ScriptDir%\resources\firstrun.txt, 2
;msgbox % OutputVar
coolpath := A_ScriptFullPath
if (ErrorLevel = 1 or !(OutputVar = coolpath)){
	;msgbox, adding reg
	FileReadLine, line1, %A_ScriptDir%\resources\firstrun.txt, 1
	;msgbox % line1
	FileReadLine, line2, %A_ScriptDir%\resources\firstrun.txt, 2
	if (Errorlevel = 0)
		{
		RegDelete, HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers, %line2%
		}
	FileDelete, %A_ScriptDir%/resources/firstrun.txt
	FileAppend, %line1%, %A_ScriptDir%/resources/firstrun.txt
	FileAppend, `n%A_ScriptFullPath%,%A_ScriptDir%/resources/firstrun.txt
	RegWrite, REG_SZ, HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers, %A_ScriptFullPath%, ~ HIGHDPIAWARE
}

loop, 1 { ;test if configuration files are present
FileReadLine, OutputVar, settings.ini, 1
if (ErrorLevel = 1){
Msgbox, 4, Oops!, % "the settings.ini file is missing and is required for operation. Create new?"
IfMsgBox Yes
	{
	FileInstall, settings.ini, %A_ScriptDir%/settings.ini
	}
Else{
	exitapp
	}
}
FileReadLine, OutputVar, menuconfig.ini, 1
if (ErrorLevel = 1){
Msgbox, 4, Oops!, % "the menuconfig.ini file is missing and is required for operation. Create new?"
IfMsgBox Yes
	{
	FileInstall, menuconfig.ini, %A_ScriptDir%/menuconfig.ini
	}
Else{
	exitapp
	}
}
Outputvar :=  ;
}

sleep, 10

; updating the changelog.txt file with the one included in the current package
FileDelete, %A_ScriptDir%\CHANGELOG.md
FileDelete, %A_ScriptDir%\changelog.txt
FileInstall, CHANGELOG.md, %A_ScriptDir%\CHANGELOG.md