midiclip:
Sendinput, {ctrl down}{ShiftDown}{m}{ShiftUp}{ctrl up}
sleep, 1
Sendinput, {ctrl down}{j}{ctrl up}
return

doubleclick:
Click Down
KeyWait, Lbutton
Click Up
if (pressingshit = 1){
	if (GetKeyState("LShift", p) = 0){
	stampselect := ""
	}
}
if (GetKeyState("LShift", p) = 1){
pressingshit := 1
}
Else{
pressingshit := 0
}
if (stampselect != ""){
	gosub, % stampselect
	}
return

saveacopy_classic: 
; this section does the ctrl+alt+s command and also includes the section that tries to parse the filename in a way that makes sense.
; I'm not very good at these, but this spaghetti approach works 99% of the time, so it would be ok.
; Ever since LES 1.0, it's gone through many different iterations.
Errorlevel := ""
Sendinput, ^+s
SetTitleMatchMode, 2
WinWaitActive, ahk_class #32770,,2 ;this waits for the save dialog thing to show up.
if (ErrorLevel = 1){
	Return
}
If (saveacopy_classic_enable = 1){
ClipSaved := ClipboardAll
clipboard =  ;
SendInput, {Ctrl down}{a}{Ctrl up}
SendInput, {Ctrl down}{c}{Ctrl up}
ClipWait  ;
stuff := Clipboard
Clipboard := ClipSaved

if (InStr(Stuff, ".als")){
	Sendinput, {right}
	sendinput, {Backspace 4}
	alsfound := 1
	StringTrimRight, Stuff, Stuff, 4
	}
else {
	alsfound := 0
	}
if (Stuff = "Untitled"){ ;safeguard for if the user is trying to do something really unnescesary
MsgBox, 4, Live Enhancement Suite, Your project name is "Untitled".`nAre you sure you want to save it as a new version?
	IfMsgBox Yes
		{
		goto enduntitledcycle
		}
	Else{
	winclose, ahk_class #32770
	Return
	}
}
enduntitledcycle:
; I don't know if this goto was nescesary or if it was a workaround to fix AHK jank - ...now I'm scared to remove it.

EndPos := InStr(Stuff, "_", 0, 0) -1
Stuff := SubStr(Stuff, (EndPos))

if (InStr(Stuff, "_"))
	{
	testforletterend := (SubStr(stuff, (0), 1))
	;Msgbox % testforletterend
	if testforletterend is alpha
			{
			;StringTrimRight, stuff, stuff, (1)
			;stuff .= "."
			alphacharatend := 1
			;numberstuff := % "_" . numberstuff
			}
	numberstuff := RegExReplace(stuff, "^.*?_")
	numberstuff := RegExReplace(numberstuff, "[^0-9, .]")
	}

else
	{
	Numberstuff =   ;
	goto nounderscore
	}
	
if (extentioncompensation = 0){
StringTrimRight, numberstuff, numberstuff, 1
}
Versionlength := StrLen(numberstuff)
if (alphacharatend = 1)
	{
	Versionlength := Versionlength + 1
	}

nounderscore:
if (numberstuff = "") ; if the string is empty make it 1 and then tell it to skip deletion
	{
	numberstuff := "1"
	skipflag := 1
	}
numberstuff := numberstuff + 1 ; add 1 to the version number
if (RegExMatch(numberstuff, "[., 0{5}]")) ; if theres a dot delete everything until after and including the dot
	{
	SplitPath, numberstuff,,,,numberstuff
	}

if !(InStr(Stuff, "_"))
	{
	;msgbox, yatta
	numberstuff := % "_" . numberstuff
	;msgbox % numberstuff
	}

;If (alsfound = 1){
;Sendinput, {Left 4}
;}
;Else{
Sendinput, {Right 1}
;}

if (skipflag = 1)
	{
	goto skipdel1
	}

sleep, 5
Sendinput, {ShiftDown}{Left %Versionlength%}{ShiftUp}
SendInput, {BackSpace}

sleep, 5
skipdel1:
Sendinput % numberstuff
Sendinput, {Enter}
skipflag := 0
alphacharatend := 0
numberstuff =   ;
stuff =   ;
Return
}
return

envelopemode:
MouseGetPos,,,guideUnderCursor
WinGetTitle, WinTitle, ahk_id %guideUnderCursor%
if(InStr(WinTitle, "Ableton") != 0){
	WinGetPos, wx, wy, wWidth, wHeight, Ableton Live
	MouseGetPos, posX, posY
	coolvar4 := wy + wHeight - 47
	coolvar5 := wx + 54
	loop, 4{
	;pixelgetcolor, coolcolor, (%coolvar5% + 50
	click, %coolvar5%, %coolvar4%
	coolvar4 := coolvar4 - 18
	coolvar5 := coolvar5 + 18
	}
	Mousemove, posX, posY
	wTitle :=  ;
	wWidth :=  ;
	wHeight :=  ;
	wx :=  ;
	wy :=  ;
}
Return

double0delet:
if (A_PriorHotkey <> "~0" or A_TimeSincePriorHotkey > 200)
{
    KeyWait, 0
    return
}
send {delete}
return

redo:
send {ctrl down}{y down}{ctrl up}{y up}
if(vstshortcuts := 1){
gosub, VSTredo
}
Return

quickmarker:
WinGetActiveTitle, wintitleoutput
if !(InStr(wintitleoutput, "Live 9", CaseSensitive := false) = 0){
WinMenuSelectItem,,, 3&, 13&
}
Else if !(InStr(wintitleoutput, "Live 10", CaseSensitive := false) = 0){
WinMenuSelectItem,,, 3&, 14&
}
Else if !(InStr(wintitleoutput, "Live 11", CaseSensitive := false) = 0){
WinMenuSelectItem,,, 3&, 20&
; WinMenuSelectItem,,, 3&, 15& (this actually crashes live)
}
Else {
WinmenuSelectItem,,, Create, Add Locator
}
return

return

saveacopy_native:
if !(InStr(wintitleoutput, "Live 11", CaseSensitive := false) = 0){
	WinmenuSelectItem,,, 2&, 28&
}
else {
	WinmenuSelectItem,,, File, Save a Copy...
}
return

collectallandsave:
if !(InStr(wintitleoutput, "Live 11", CaseSensitive := false) = 0){
	WinmenuSelectItem,,, 2&, 28&
}
else {
	WinmenuSelectItem,,, File, Collect All and Save
}
return

freezetrack:
if !(InStr(wintitleoutput, "Live 11", CaseSensitive := false) = 0){
	WinmenuSelectItem,,, 2&, 28&
}
else {
	WinmenuSelectItem,,, Edit, Freeze Track
}
return

flattentrack:
if !(InStr(wintitleoutput, "Live 11", CaseSensitive := false) = 0){
	WinmenuSelectItem,,, 2&, 29&
}
else {
	WinmenuSelectItem,,, Edit, Flatten Track
}
return

bounceinplace:
if !(InStr(wintitleoutput, "Live 11", CaseSensitive := false) = 0){
	;WinmenuSelectItem,,, 2&, 28&
	return
}
else {
	WinmenuSelectItem,,, Edit, Bounce Track in Place
}
return

helpview:
if !(InStr(wintitleoutput, "Live 11", CaseSensitive := false) = 0){
	;WinmenuSelectItem,,, 2&, 28&
	return
}
else {
	WinmenuSelectItem,,, View, Help View
}
return

filemanager:
if !(InStr(wintitleoutput, "Live 11", CaseSensitive := false) = 0){
	;WinmenuSelectItem,,, 2&, 28&
	return
}
else {
	WinmenuSelectItem,,, File, Manage Files
}
return

slicetonewmiditrack:
if !(InStr(wintitleoutput, "Live 11", CaseSensitive := false) = 0){
	;WinmenuSelectItem,,, 2&, 28&
	return
}
else {
	WinmenuSelectItem,,, Create, Slice to New MIDI Track
}
return

editinfotext:
if !(InStr(wintitleoutput, "Live 11", CaseSensitive := false) = 0){
	;WinmenuSelectItem,,, 2&, 28&
	return
}
else {
	WinmenuSelectItem,,, Edit, Edit Info Text
}
return

colortracks:
MouseGetPos,,,guideUnderCursor
WinGetTitle, WinTitle, ahk_id %guideUnderCursor%
if(InStr(WinTitle, "Ableton") != 0){
	Click, Right
	sleep, 20
	SendInput {up 2}
	SendInput {Enter}
}
Return

cleartracks:
MouseGetPos,,,guideUnderCursor
WinGetTitle, WinTitle, ahk_id %guideUnderCursor%
if(InStr(WinTitle, "Ableton Live 11") != 0){
	Click, Right
	sleep, 20
	SendInput {down 12}
	sleep, 500
	Sendinput {enter}
	sleep, 5
	sendinput {delete}
}
else if(InStr(WinTitle, "Ableton")){
	Click, Right
	sleep, 20
	SendInput {down 12}{enter}{delete}
}
Return

absolutev:
MouseGetPos,,,guideUnderCursor
WinGetTitle, WinTitle, ahk_id %guideUnderCursor%
if(InStr(WinTitle, "Ableton") != 0){
	BlockInput, On
	sendinput, {ctrl down}{v}{ctrl up}
	sendinput, {backspace}
	sendinput, {ctrl down}{v}{ctrl up}
	Blockinput, Off
}
Return

absoluted:
MouseGetPos,,,guideUnderCursor
WinGetTitle, WinTitle, ahk_id %guideUnderCursor%
if(InStr(WinTitle, "Ableton") != 0){
	BlockInput, On
	ClipSaved := ClipboardAll
	clipboard =  ;
	send {ctrl down}{c}{ctrl up}
	send {ctrl down}{d}{ctrl up}
	send {backspace}
	send {ctrl down}{v}{ctrl up}
	Clipboard := ClipSaved ; restore clipboard
	Blockinput, Off
}
Return

closewindow:
Winget processnameoutput, ProcessName
WinGetClass classnameoutput
WinGetTitle, wintitleoutput
SetTitleMatchMode, 3
if (RegExMatch(processnameoutput, "Ableton")){
	if (RegExMatch(classnameoutput, "AbletonVstPlugClass") or RegExMatch(classnameoutput, "Vst3PlugWindow") or RegExMatch(classnameoutput, "JUCE_")){
		Winclose, %wintitleoutput%
		SetTitleMatchMode, 2
	}
}
return

closeall:
DetectHiddenWindows, Off
WinGet windows, List
SetTitleMatchMode, 3
Loop %windows%
{
	id := windows%A_Index%
	Winget processnameoutput, ProcessName, ahk_id %id%
	WinGetClass classnameoutput, ahk_id %id%
	if (RegExMatch(processnameoutput, "Ableton")){ 
		If (RegExMatch(classnameoutput, "AbletonVstPlugClass") or RegExMatch(classnameoutput, "Vst3PlugWindow")){
		Winclose, ahk_id %id%
		;windowlist .= wt . "`n"
		}
	}
}
;if (enabledebug = 1){
;MsgBox %windowlist%
;}
SetTitleMatchMode, 2
Return

PianoRoll:
MouseGetPos,,,guideUnderCursor
WinGetTitle, WinTitle, ahk_id %guideUnderCursor%
if(InStr(WinTitle, "Ableton") != 0){
	send {LShift down}{Tab}{LShift up}
}
return

SessionView:
MouseGetPos,,,guideUnderCursor
WinGetTitle, WinTitle, ahk_id %guideUnderCursor%
if(InStr(WinTitle, "Ableton") != 0){
	send {Tab}
}
return

;safeautomationopen: ;depricated feature
;if (pressingshit = 1){
;	if (GetKeyState("LShift", p) = 0){
;	}
;}
;if (GetKeyState("LShift", p) = 1){
;pressingshit := 1
;}
;Else{
;pressingshit := 0
;}
;if (pressingshit = 0){
;sendinput, {down}{enter}
;}
;Else{
;sendinput, {down}{down}{enter}
;}
;Return

buplicate: ;brought to you by dylan tallchief
if (A_PriorHotkey != "!b" or A_TimeSincePriorHotkey > 1800 or A_PriorKey = Lbutton)
{
    ; Too much time between presses, so this isn't a double-press.
send {ctrl down}{d 7}{ctrl up}
return
}
send {ctrl down}{d 8}{ctrl up}
return

absolutelynothing:
return

directshyper: ;backup shortcut in case the double right click routine fails someone
Show()
Return