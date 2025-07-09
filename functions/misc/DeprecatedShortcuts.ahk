Sylenth:
	MouseGetPos, posX, posY
	WinGetPos, wx, wy, wWidth, wHeight
	yea1 := (wx + (wWidth*10/19))
	yea2 := (wy + (windowedcompensationpx*(31/48) + 20))
	Click, %yea1%, %yea2%, 1
	MouseMove, posX, posY
	yea1 := ""
	yea2 := ""
Return

vst1:
if(WinActive("ahk_class AbletonVstPlugClass") or WinActive("ahk_class Vst3PlugWindow")){
	WinGetTitle, wintitleoutput, A
	RegExMatch(wintitleoutput, "^Serum|(?=(\/))", piss)
	if (piss = "Serum"){
		MouseGetPos, posX, posY
		WinGetPos, wx, wy, wWidth, wHeight
		yea1 := (wx + (wWidth*2/9))
		yea2 := (wy + (windowedcompensationpx*(31/48) + 20))
		Click, %yea1%, %yea2%, 1
		; sleep, 200
		MouseMove, posX, posY
		yea1 := ""
		yea2 := ""
		Return
	}
	RegExMatch(wintitleoutput, "^Sylenth1|(?=(\/))", piss)
	if (piss = "Sylenth1"){
		gosub, Sylenth
		Return
	}
	RegExMatch(wintitleoutput, "^Massive|(?=(\/))", piss)
	if (piss = "Massive"){
		MouseGetPos, posX, posY
		WinGetPos, wx, wy, wWidth, wHeight
		yea1 := (wx + (wWidth*20/958))
		yea2 := (wy + (windowedcompensationpx*(31/48) + (wHeight*72/680)))
		Click, %yea1%, %yea2%, 1
		MouseMove, posX, posY
		yea1 := ""
		yea2 := ""
	}
}
else{
sendinput, {Blind}{1}
}
Return

vst2:
if(WinActive("ahk_class AbletonVstPlugClass") or WinActive("ahk_class Vst3PlugWindow")){
	WinGetTitle, wintitleoutput, A
	RegExMatch(wintitleoutput, "^Serum|(?=(\/))", piss)
	if (piss = "Serum"){
		MouseGetPos, posX, posY
		WinGetPos, wx, wy, wWidth, wHeight
		yea1 := (wx + (wWidth*25/90))
		yea2 := (wy + (windowedcompensationpx*(31/48) + 20))
		Click, %yea1%, %yea2%, 1
		; sleep, 200
		MouseMove, posX, posY
		yea1 := ""
		yea2 := ""
		Return
	}
	RegExMatch(wintitleoutput, "^Sylenth1|(?=(\/))", piss)
	if (piss = "Sylenth1"){
		gosub, Sylenth
		Return
	}
	RegExMatch(wintitleoutput, "^Massive|(?=(\/))", piss)
	if (piss = "Massive"){
		MouseGetPos, posX, posY
		WinGetPos, wx, wy, wWidth, wHeight
		yea1 := (wx + (wWidth*20/958))
		yea2 := (wy + (windowedcompensationpx*(31/48) + (wHeight*186/680)))
		Click, %yea1%, %yea2%, 1
		MouseMove, posX, posY
		yea1 := ""
		yea2 := ""
	}
}
else{
sendinput, {Blind}{2}
}
Return

vst3:
if(WinActive("ahk_class AbletonVstPlugClass") or WinActive("ahk_class Vst3PlugWindow")){
	WinGetTitle, wintitleoutput, A
	RegExMatch(wintitleoutput, "^Serum|(?=(\/))", piss)
	if (piss = "Serum"){
		MouseGetPos, posX, posY
		WinGetPos, wx, wy, wWidth, wHeight
		yea1 := (wx + (wWidth*325/900))
		yea2 := (wy + (windowedcompensationpx*(31/48) + 20))
		Click, %yea1%, %yea2%, 1
		; sleep, 200
		MouseMove, posX, posY
		yea1 := ""
		yea2 := ""
	}
	RegExMatch(wintitleoutput, "^Massive|(?=(\/))", piss)
	if (piss = "Massive"){
		MouseGetPos, posX, posY
		WinGetPos, wx, wy, wWidth, wHeight
		yea1 := (wx + (wWidth*20/958))
		yea2 := (wy + (windowedcompensationpx*(31/48) + (wHeight*300/680)))
		Click, %yea1%, %yea2%, 1
		MouseMove, posX, posY
		yea1 := ""
		yea2 := ""
	}
}
else{
sendinput, {Blind}{3}
}
Return

vst4:
if(WinActive("ahk_class AbletonVstPlugClass") or WinActive("ahk_class Vst3PlugWindow")){
	WinGetTitle, wintitleoutput, A
	RegExMatch(wintitleoutput, "^Serum|(?=(\/))", piss)
	if (piss = "Serum"){
		MouseGetPos, posX, posY
		WinGetPos, wx, wy, wWidth, wHeight
		yea1 := (wx + (wWidth*4/9))
		yea2 := (wy + (windowedcompensationpx*(31/48) + 20))
		Click, %yea1%, %yea2%, 1
		; sleep, 200
		MouseMove, posX, posY
		yea1 := ""
		yea2 := ""
	}
	RegExMatch(wintitleoutput, "^Massive|(?=(\/))", piss)
	if (piss = "Massive"){
		MouseGetPos, posX, posY
		WinGetPos, wx, wy, wWidth, wHeight
		yea1 := (wx + (wWidth*20/958))
		yea2 := (wy + (windowedcompensationpx*(31/48) + (wHeight*420/680)))
		Click, %yea1%, %yea2%, 1
		MouseMove, posX, posY
		yea1 := ""
		yea2 := ""
	}
}
else{
sendinput, {Blind}{4}
}
Return

vst5:
if(WinActive("ahk_class AbletonVstPlugClass") or WinActive("ahk_class Vst3PlugWindow")){
	WinGetTitle, wintitleoutput, A
	RegExMatch(wintitleoutput, "^Massive|(?=(\/))", piss)
	if (piss = "Massive"){
		MouseGetPos, posX, posY
		WinGetPos, wx, wy, wWidth, wHeight
		yea1 := (wx + (wWidth*20/958))
		yea2 := (wy + (windowedcompensationpx*(31/48) + (wHeight*530/680)))
		Click, %yea1%, %yea2%, 1
		MouseMove, posX, posY
		yea1 := ""
		yea2 := ""
	}
}
else{
sendinput, {Blind}{5}
}
Return

phaseplantloadosc:
	MouseGetPos, posX, posY
	WinGetPos, wx, wy, wWidth, wHeight
	if(clickcountmodifier = ""){
		clickcountmodifier = 0
	}
	
	quotient := wWidth/wHeight
	clickcount := Floor((-9 * quotient) + 21)
	
	clickcount := clickcount + clickcountmodifier
	if (clickcount < 5){
		clickcount := 5
	}
	if (noisefix = true){
		clickcount := clickcount + 1
	}
	;msgbox, % "quotient: " quotient "`nclickcount: " clickcount
	
	sweetspot := (wx + (wWidth/2.402))
	topbar := (wy + (wWidth/12.37) + (windowedcompensationpx*(31/48)))
	bottombar := (wy - 5 + (wHeight) - (wWidth/5.43))
	genclickspacing := (bottombar - topbar)/clickcount
	
	MouseMove, sweetspot, (topbar + 30)
	Sendinput {Blind}{WheelDown 600}
	sleep, 3
	Sendinput {Blind}{WheelDown 600}
	sleep, 25
	
	loop, % clickcount {
		if (noisefix = true){
			yea2 := (bottombar + 15 - (A_Index * genclickspacing))
		}
		Else{
			yea2 := (bottombar - (A_Index * genclickspacing))
		}
		Click, %sweetspot%, %yea2%
		sendinput, {right %rightamt%}
		sendinput, {down %downamt%}
		sendinput, {up %upamt%}
		sendinput, {%ppletter%}
		; sleep, 200
		sendinput, {return}
		Sendinput {WheelDown 30}
	}
	
	noisefix := false
	ppletter:= ""
	clickcountmodifier := 0
	MouseMove, posX, posY
Return

phaseplanta:
if(WinActive("ahk_class AbletonVstPlugClass") or WinActive("ahk_class Vst3PlugWindow")){
	WinGetTitle, wintitleoutput, A
	RegExMatch(wintitleoutput, "Phase\sPlant|(?=(\/))", piss)
	if (piss = "Phase Plant"){
		rightamt := 0
		downamt := 1
		upampt := 1
		gosub, phaseplantloadosc
	}
}
Return

phaseplantn:
if(WinActive("ahk_class AbletonVstPlugClass") or WinActive("ahk_class Vst3PlugWindow")){
	WinGetTitle, wintitleoutput, A
	RegExMatch(wintitleoutput, "Phase\sPlant|(?=(\/))", piss)
	if (piss = "Phase Plant"){
		rightamt := 0
		downamt := 2
		upampt := 0
		clickcountmodifier := -2
		
		noisefix := true
		gosub, phaseplantloadosc
	}
}
Return
phaseplants:
if(WinActive("ahk_class AbletonVstPlugClass") or WinActive("ahk_class Vst3PlugWindow")){
	WinGetTitle, wintitleoutput, A
	RegExMatch(wintitleoutput, "Phase\sPlant|(?=(\/))", piss)
	if (piss = "Phase Plant"){
		rightamt := 0
		downamt := 3
		upampt := 0
		gosub, phaseplantloadosc
	}
}
Return
phaseplantw:
if(WinActive("ahk_class AbletonVstPlugClass") or WinActive("ahk_class Vst3PlugWindow")){
	WinGetTitle, wintitleoutput, A
	RegExMatch(wintitleoutput, "Phase\sPlant|(?=(\/))", piss)
	if (piss = "Phase Plant"){
		rightamt := 0
		downamt := 4
		upampt := 0
		gosub, phaseplantloadosc
	}
}
Return
phaseplantd:
if(WinActive("ahk_class AbletonVstPlugClass") or WinActive("ahk_class Vst3PlugWindow")){
	WinGetTitle, wintitleoutput, A
	RegExMatch(wintitleoutput, "Phase\sPlant|(?=(\/))", piss)
	if (piss = "Phase Plant"){
		rightamt := 1
		downamt := 1
		upampt := 0
		gosub, phaseplantloadosc
	}
}
sendinput, {alt up}
Return
phaseplantf:
if(WinActive("ahk_class AbletonVstPlugClass") or WinActive("ahk_class Vst3PlugWindow")){
	WinGetTitle, wintitleoutput, A
	RegExMatch(wintitleoutput, "Phase\sPlant|(?=(\/))", piss)
	if (piss = "Phase Plant"){
		rightamt := 1
		downamt := 2
		upampt := 0
		gosub, phaseplantloadosc
	}
}
Return
phaseplanto:
if(WinActive("ahk_class AbletonVstPlugClass") or WinActive("ahk_class Vst3PlugWindow")){
	WinGetTitle, wintitleoutput, A
	RegExMatch(wintitleoutput, "Phase\sPlant|(?=(\/))", piss)
	if (piss = "Phase Plant"){
		rightamt := 3
		downamt := 10
		upampt := 0
		ppletter:= "o"
		gosub, phaseplantloadosc
	}
}
Return

phaseplantloadmod:
	MouseGetPos, posX, posY
	WinGetPos, wx, wy, wWidth, wHeight
	clickcount := 6
	sweetspot := (wx + wWidth - (wWidth/19))
	bottombar := (wy - 5 + (wHeight) - (wWidth/7.79))
	modclickspacing := (sweetspot - wx - 30)/clickcount
	
	MouseMove, sweetspot, bottombar
	Sendinput {WheelDown 600}
	sleep, 3
	Sendinput {WheelDown 600}
	sleep, 25
	
	loop, % clickcount {
		yea2 := (sweetspot - (A_Index * modclickspacing))
		Click, %yea2%, %bottombar%
		mousemove, 1, 3, 0, R
		; sleep, 100
		; msgbox, % downamt
		sendinput, {down %downamt%}
		sendinput, {right %rightamt%}
		sendinput, {down %downamt2%}
		Sendinput {Return}
		Sendinput {WheelDown 10}
		; sleep, 200
	}
	mousemove, posX, posY
Return

phaseplantl:
if(WinActive("ahk_class AbletonVstPlugClass") or WinActive("ahk_class Vst3PlugWindow")){
	WinGetTitle, wintitleoutput, A
	RegExMatch(wintitleoutput, "Phase\sPlant|(?=(\/))", piss)
	if (piss = "Phase Plant"){
		downamt := 1
		rightamt := 0
		downamt2 := 0
		gosub, phaseplantloadmod
	}
}
Return