openplugin: ;you would think consistently typing something in the ableton search bar would be easy
loop, 1{
Send,^f
Sendinput % queryname
WinWaitActive, ExcludeText - ExcludeTitle, , 0.5 ; prevents the keystrokes from desynchronizing when ableton lags during the search query.


if (pressingalt = 1){
	if (GetKeyState("Lctrl", p) = 0){
	tempautoadd := autoadd
	}
}
if (GetKeyState("Lctrl", p) = 1){
	if (autoadd = 1){
	tempautoadd := 0
	}
	Else{
	tempautoadd := 1
	}
}
Else{
tempautoadd := autoadd
}


If (tempautoadd = 1){
sleep, 112
Send,{enter}
sleep, 112
Send,{enter}
}
Else{
goto, skipautoadd
}
MouseGetPos, posX, posY
If (resetbrowsertobookmark = 1){ ;this is a feature barely anyone uses, but you can have LES click a collection or something after you hit a menu item.
	SetTitleMatchMode, 2
	WinGetPos, wx, wy, wWidth, wHeight, Ableton
	CoordMode, Pixel, Screen
	CoordMode, Mouse, Screen
	PixelGetColor, titlebarcolor, (wx + 10), (wy + 38)
			If (titlebarcolor = "0xFFFFFF") || (titlebarcolor = "0xF2F2F2") || (titlebarcolor = "0x2F2F2F") || (titlebarcolor = "0xFFFFFFFF") || (titlebarcolor = "0xF2F2F2F2") || (titlebarcolor = "0x2F2F2F2F"){
			; the colours are used to detect if live is in fullscreen or in windowed mode.

			;msgbox, titlebar found
			coolclicky := bookmarky + windowedcompensationpx + wy
			coolclickx := bookmarkx + wx
			}
			Else{
			coolclicky := bookmarky + wy
			coolclickx := bookmarkx + wx
			}
	sleep, 1
	Click, %coolclickx%, %coolclicky%, 1
	MouseMove, posX, posY, 0
}
SendInput, {Esc}
SetTitleMatchMode, RegEx

querynameclean := RegExReplace(queryname, "['""]+", "")
StringLower, querynameclean, querynameclean
;msgbox, % querynameclean
if (querynameclean = "analog" or querynameclean = "collision" or querynameclean = "drum rack" or querynameclean = "electric" or querynameclean = "external instrument" or querynameclean = "impulse" or querynameclean = "instrument rack" or querynameclean = "operator" or querynameclean = "sampler" or querynameclean = "simpler" or querynameclean = "tension" or querynameclean = "wavetable" or querynameclean = "amp" or querynameclean = "audio effect rack" or querynameclean = "auto filter" or querynameclean = "auto pan" or querynameclean = "beat repeat" or querynameclean = "cabinet" or querynameclean = "chorus" or querynameclean = "compressor" or querynameclean = "corpus" or querynameclean = "drum buss" or querynameclean = "dynamic tube" or querynameclean = "echo" or querynameclean = "eq eight" or querynameclean = "eq three" or querynameclean = "erosion" or querynameclean = "external audio effect" or querynameclean = "filter delay" or querynameclean = "flanger" or querynameclean = "frequency shifter" or querynameclean = "gate" or querynameclean = "glue compressor" or querynameclean = "grain delay" or querynameclean = "limiter" or querynameclean = "looper" or querynameclean = "multiband dynamics" or querynameclean = "overdrive" or querynameclean = "pedal" or querynameclean = "phaser" or querynameclean = "ping pong delay" or querynameclean = "redux" or querynameclean = "resonators" or querynameclean = "reverb" or querynameclean = "saturator" or querynameclean = "simple delay" or querynameclean = "delay" or querynameclean = "spectrum" or querynameclean = "tuner" or querynameclean = "utility" or querynameclean = "vinyl distortion" or querynameclean = "vocoder" or InStr(querynameclean, ".adv") or InStr(querynameclean, "hybrid reverb") or InStr(querynameclean, "spectral resonator") or InStr(querynameclean, "spectral time")  or InStr(querynameclean, "chorus ensemble") or InStr(querynameclean, "phaser-flanger") != 0){
; I could do this with an array instead but I'm too lazy and this works too so enjoy this 15km 'if' statement
WinWaitActive, ExcludeText - ExcludeTitle, , 0.5
return
}
else{
WinWaitActive, ahk_class (AbletonVstPlugClass|Vst3PlugWindow),,12
WinGetTitle, piss, ahk_class (AbletonVstPlugClass|Vst3PlugWindow)
}
if (piss != "") {
	SetTitleMatchMode, 2
	WinActivate, Ableton
	SendInput, {Esc}
	sleep, 1
	WinActivate, %piss%
	}
Else{
	SetTitleMatchMode, 2
	}
skipautoadd:
piss :=  ;
wTitle :=  ;
wWidth :=  ;
wHeight :=  ;
wx :=  ;
wy :=  ;
}
Return