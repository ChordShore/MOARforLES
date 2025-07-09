; Ok so, just to mentally prepare you: this source code is a complete mess. 
; I only really got into programming while writing this, so there's just dumb stuff happening all over.
; Live Enhancement Suite for windows was my first programming project, and you'll especially be able to see that in the sections I wrote first. 
; They are the absolute worst to read.
; My apologies in advance.

; If you want to see organized code, look at the mac rewrite... But this?? nahhhhhhhhhhhhh
; Yet, I still use this version every day- since I'm a Windows user myself.
; That is to say, we're in this together >:-D

;-----------------------------------;
;		   AHK Compile stuff		;
;-----------------------------------;

#include %A_ScriptDir%\functions\setup\Compile.ahk

;-----------------------------------;
;		   AHK Setup stuff			;
;-----------------------------------;

#include %A_ScriptDir%\functions\setup\Setup.ahk

;-----------------------------------;
;		  Tray menu contents		;
;-----------------------------------;

#include %A_ScriptDir%\functions\tray\TrayMenu.ahk

;-----------------------------------;
;		  Installation				;
;-----------------------------------;

#include %A_ScriptDir%\functions\setup\Installation.ahk

;-----------------------------------;
;		  reading Settings.ini		;
;-----------------------------------;

#include %A_ScriptDir%\functions\menusettings\ReadingSettings.ahk

;-----------------------------------;
;		Post-settings.ini stuff		;
;-----------------------------------;

#include %A_ScriptDir%\functions\menusettings\PostSettings.ahk

;-----------------------------------;
;		  Hotkeys main				;
;-----------------------------------;

#include %A_ScriptDir%\functions\hotkeys\Hotkeys.ahk

;-----------------------------------;
;		  Piano menu contents		;
;-----------------------------------;

#include %A_ScriptDir%\functions\corefeatures\PianoMenuContents.ahk

;-----------------------------------;
;	  Double right click routine	;
;-----------------------------------;

#include %A_ScriptDir%\functions\corefeatures\DoubleRightClickRoutine.ahk

;-----------------------------------;
;		  	Hotkeys Mouse			;
;-----------------------------------;

#include %A_ScriptDir%\functions\hotkeys\HotkeysMouse.ahk

;-----------------------------------;
;		 reading menuconfig.ini		;
;-----------------------------------;

#include %A_ScriptDir%\functions\menusettings\ReadingMenuConfig.ahk

;-----------------------------------;
;		  Opening a plugin			;
;-----------------------------------;

#include %A_ScriptDir%\functions\corefeatures\OpenPlugin.ahk

;-----------------------------------;
;	Tray menu actions & Readme  	;
;-----------------------------------;

#include %A_ScriptDir%\functions\tray\TrayMenuActions.ahk

;-----------------------------------;
;		  Hotkey actions			;
;-----------------------------------;

#include %A_ScriptDir%\functions\hotkeys\HotkeyActions.ahk

;-----------------------------------;
;		  Plugin specific hotkeys	;
;-----------------------------------;

#include %A_ScriptDir%\functions\hotkeys\PluginSpecificHotkeys.ahk

;-----------------------------------;
;	   depricated vst shortcuts		;
;-----------------------------------;

#include %A_ScriptDir%\functions\misc\DeprecatedShortcuts.ahk

;-----------------------------------;
;		  Cheats/Jokes		;
;-----------------------------------;

#include %A_ScriptDir%\functions\misc\Cheats.ahk

;-----------------------------------;
;		  	Timers/Clocks			;
;-----------------------------------;

#include %A_ScriptDir%\functions\misc\Timers.ahk

;-----------------------------------;
;		  		Scales				;
;-----------------------------------;

#include %A_ScriptDir%\functions\corefeatures\Scales.ahk

;==========================
;=	 imported functions   =
;==========================

#include %A_ScriptDir%\functions\imported\trimArray.ahk

#include %A_ScriptDir%\functions\imported\checkUTF8.ahk
