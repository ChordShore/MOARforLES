loop, 1{ ;creating hotkeys
If (disableloop = 1){

HotKey, ^+m, midiclip
}

HotKey, %pianorollmacro% & ~Lbutton, doubleclick
if (usectrlaltsinstead = 0){
	Hotkey, ^+s, savenewver
	}
Else{
	Hotkey, ^!s, savenewver
	}
Hotkey, !e, envelopemode

if (addctrlshiftz = 1){
Hotkey, ^+z, redo
}

if (0todelete = 1){
Hotkey, ~0, double0delet
}

if (altgrmarker = 0){
Hotkey, RShift & L, quickmarker
}
else{
Hotkey, <^>!L, quickmarker
Hotkey, Ralt & L, quickmarker
}

if (enabledebug = 1){
Hotkey, ~RShift & LShift, cheats
}

if (absolutereplace = 1){
Hotkey, ^!v, absolutev
Hotkey, ^!d, absoluted
}

if (enableclosewindow = 1){
Hotkey, ^w, closewindow
Hotkey, ^!w, closeall
}



if (colortracks_enable = 1){
Hotkey, %colortracks_hotkey%, colortracks
}

if (cleartracks_enable = 1){
Hotkey, %cleartracks_hotkey%, cleartracks
}

if (buplicate_enable = 1){
Hotkey, %buplicate_hotkey%, buplicate
}

if (directshyper_enable = 1){
Hotkey, %directshyper_hotkey%, directshyper
}

if (debugshortcut_enable = 1){
;Hotkey, %debugshortcut_hotkey%, debugshortcut
}

if (freezetrack_enable = 1){
Hotkey, %freezetrack_hotkey%, freezetrack
}

if (flattentrack_enable = 1){
Hotkey, %flattentrack_hotkey%, flattentrack
}

if (bounceinplace_enable = 1){
Hotkey, %bounceinplace_hotkey%, bounceinplace
}

if (helpview_enable = 1){
Hotkey, %helpview_hotkey%, helpview
}

if (filemanager_enable = 1){
Hotkey, %filemanager_hotkey%, filemanager
}

if (slicetonewmiditrack_enable = 1){
Hotkey, %slicetonewmiditrack_hotkey%, slicetonewmiditrack
}

if (editinfotext_enable = 1){
Hotkey, %editinfotext_hotkey%, editinfotext
}



if (fliptabfunction = 1) {
	Hotkey, Tab, PianoRoll
	Hotkey, LShift & Tab, SessionView
}

#include %A_ScriptDir%\functions\hotkeys\VSTShortcuts.ahk

}

gosub, createpluginmenu