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
Hotkey, !c, colortracks
}

if (cleartracks_enable = 1){
Hotkey, !x, cleartracks
}

if (buplicate_enable = 1){
Hotkey, !b, buplicate
}

if (directshyper_enable = 1){
Hotkey, ^+h, directshyper
}

if (debugshortcut_enable = 1){
;Hotkey, !g, debugshortcut
}

if (freezetrack_enable = 1){
Hotkey, ^+f, freezetrack
}

if (flattentrack_enable = 1){
Hotkey, !+f, flattentrack
}

if (bounceinplace_enable = 1){
Hotkey, ^+b, bounceinplace
}

if (helpview_enable = 1){
Hotkey, ^h, helpview
}

if (filemanager_enable = 1){
Hotkey, ^+h, filemanager
}

if (slicetonewmiditrack_enable = 1){
Hotkey, ^+e, slicetonewmiditrack
}

if (editinfotext_enable = 1){
Hotkey, !r, editinfotext
}



if (fliptabfunction = 1) {
	Hotkey, Tab, PianoRoll
	Hotkey, LShift & Tab, SessionView
}

#include %A_ScriptDir%\functions\hotkeys\VSTShortcuts.ahk

}

gosub, createpluginmenu