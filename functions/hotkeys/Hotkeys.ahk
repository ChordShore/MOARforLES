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

Hotkey, !c, colortracks
Hotkey, !x, cleartracks
Hotkey, !b, buplicate
Hotkey, ^+h, directshyper
;Hotkey, !g, debugshortcut
Hotkey, ^+f, freezetrack
Hotkey, !+f, flattentrack
Hotkey, ^+b, bounceinplace
Hotkey, ^h, helpview
Hotkey, ^+h, filemanager
Hotkey, ^+e, slicetonewmiditrack
Hotkey, !r, editinfotext

if (fliptabfunction = 1) {
	Hotkey, Tab, PianoRoll
	Hotkey, LShift & Tab, SessionView
}

#include %A_ScriptDir%\functions\hotkeys\VSTShortcuts.ahk

}

gosub, createpluginmenu