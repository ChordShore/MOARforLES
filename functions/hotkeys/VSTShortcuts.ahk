if(vstshortcuts = 1){
	scaling = 1

	; depricated phaseplant VST specific shortcuts - the alt key would stick sometimes and that's really annoying.
	; was mostly a proof of concept anyway
	FileRead, cheatread, %A_ScriptDir%\resources\activecheat.txt
	if(cheatread = "kilohearts"){ ; you can still enable it with a cheat though; for the people who wanna mess around with it.
		Hotkey, ~!a, phaseplanta
		Hotkey, ~!n, phaseplantn
		Hotkey, ~!s, phaseplants
		Hotkey, ~!w, phaseplantw
		Hotkey, ~!d, phaseplantd
		Hotkey, ~!f, phaseplantf
		Hotkey, ~!o, phaseplanto
		Hotkey, ~!l, phaseplantl
	}

	Hotkey, ^z, VSTundo
	Hotkey, ^y, VSTredo
}