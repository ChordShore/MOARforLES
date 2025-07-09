Loop, 1 {
*~RButton::
tildestate := GetKeyState(pianorollmacro)
if (A_PriorHotkey <> "*~RButton" or A_TimeSincePriorHotkey > 400)
{
    KeyWait, RButton
    return
}

Show()
WinKill, menu launcher
return  ;end of script's auto-execute section.

return  ;end of double right click loop

; the menu show routine; which includes the part of the code that uses imagesearch to detect the piano roll on a certain portion of the screen.
; I singled out just one area on the screen in order to improve performance. 
; Image search is actually faster than pixel search, which is why I use 2x2 pixel .pngs to achieve the same goal.
Show() {
Global pianosearch
Global dynamicreload
Global tildestate
SetTitleMatchMode, 2
WinGetPos, wx, wy, wWidth, wHeight, Ableton Live
coolvar := ((wHeight/3.5) + wy)
coolvar2 := (wHeight - 100 + wy)
coolvar3 := ((wWidth/3.4) + wx)
if (!MX && !MY)
MouseGetPos, MX, MY
if (pianosearch = 1){
	ImageSearch, x1, y1, (wx + 8), coolvar, coolvar3, coolvar2, %A_ScriptDir%\resources\piano.png
	;msgbox,0,ha, % "Top left x[" (wx + 8) "] y[" coolvar "] and then bottom right x[" coolvar3 "] y[" coolvar2 "]"
	if (Errorlevel = 0){
		Imagesearch, a1, b1, x1, (y1 + 5), x1, (y1 + 105), %A_ScriptDir%\resources\pianoblack.png
		if (Errorlevel = 0){
			;mousemove, coolvar3, 500
			Menu, pianomenu, Show, % MX, % MY
			Return
			}
		if (dynamicreload = 1){
			gosub, createpluginmenu
		}
		Menu, ALmenu, Show, % MX, % MY
		Return
	}
	ImageSearch, x1, y1, (wx + 8), coolvar, coolvar3, coolvar2, %A_ScriptDir%\resources\piano2.png
	if (Errorlevel = 0){
		Imagesearch, a1, b1, x1, (y1 + 5), x1, (y1 + 105), %A_ScriptDir%\resources\pianoblack.png
		if (Errorlevel = 0){
			;mousemove, coolvar3, 500
			Menu, pianomenu, Show, % MX, % MY
			Return
			}
		if (dynamicreload = 1){
			gosub, createpluginmenu
		}
		Menu, ALmenu, Show, % MX, % MY
		Return
	}
	Else{
	if (dynamicreload = 1){
		gosub, createpluginmenu
	}
	Menu, ALmenu, Show, % MX, % MY
	}
}

if (pianosearch = 0){
if GetKeyState("LShift") = 0{
		gosub, createpluginmenu
		Menu, ALmenu, Show, % MX, % MY
		}
if GetKeyState("LShift") = 1{
		Menu, pianomenu, show, % MX, % MY
		}
}
}

} ;ends whole loop

Return