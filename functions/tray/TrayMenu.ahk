Menu, Tray, NoStandard
Menu, Tray, Add, Configure Settings, settingsini
Menu, Tray, Add, Configure Menu, menuini
Menu, Tray, Add,
Menu, Tray, Add, Donate 💲, monatpls
Menu, Tray, Add,
Menu, Tray, Add, Strict Time, stricttime
Menu, Tray, Add, Check Project Time 🕒, requesttime
Menu, Tray, Add,
Menu, Tray, Add,
Menu, Tray, Add, Install InsertWhere, InsertWhere
Menu, Tray, Add, Manual 📖, Manual
Menu, Tray, Add, Exit ❌, quitnow
Menu, Tray, Default, Exit ❌
Menu, Tray, insert, 9&, Reload ⟳️, doreload
Menu, Tray, insert, 10&, Pause && Suspend, freeze

Random, randomgen, 1, 13 ;these are the random hover quotes
if (randomgen = 1){
Menu, Tray, Tip, Ableton Live 2: Electric Boogaloo
}
if (randomgen = 2){
Menu, Tray, Tip, Super Live Bros: Lost Levels
}
if (randomgen = 3){
Menu, Tray, Tip, LES is more
}
if (randomgen = 4){
Menu, Tray, Tip, Live HD Audio Manager
}
if (randomgen = 5){
Menu, Tray, Tip, Vitableton Enhancement 100mg [Now with extra vitamin C!]
}
if (randomgen = 6){
Menu, Tray, Tip, hey`, pshh!! hit both shift keys with debug on
}
if (randomgen = 7){
Menu, Tray, Tip, Do more with LES
}
if (randomgen = 8){
Menu, Tray, Tip, *Cowbell*
}
if (randomgen = 9){
Menu, Tray, Tip, OTT.exe
}
if (randomgen = 10){
Menu, Tray, Tip, Live Sweet
}
if (randomgen = 11){
Menu, Tray, Tip, Ableton Gratis Saus
}
if (randomgen = 12){
Menu, Tray, Tip, The biggest thing since sliced bread
}
randomgen := ;

FileRead, stricttxt, %A_ScriptDir%\resources\strict.txt
if(ErrorLevel = 1){
	stricton := 1
}
else{
	stricton := stricttxt
}
if(stricttxt = 1){
Menu, Tray, Check, Strict Time
}