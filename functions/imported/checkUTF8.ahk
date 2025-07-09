checkUTF8(string) { ; this looks super cursed, but this string tests if a menu item contains an emoji
	global skipemojicheck
	if (skipemojicheck = true){
		return
	}
		for each, keyword in ["ðŸ", "â˜º", "â˜¹", "â˜ ", "â£", "â¤", "âœ‹", "âœŒ", "â˜", "âœŠ", "âœ", "â›·", "â›¹", "â˜˜", "â˜•", "â›°", "â›ª", "â›©", "â›²", "â›º", "â™¨¨", "â›½", "âš““", "â›µ", "â›´", "âœˆ", "âŒ›", "â³", "âŒš", "â°", "â±", "â²", "â˜€", "â­", "â˜", "â›…", "â›ˆ", "â˜‚", "â˜””", "â›±", "âš¡", "â„", "â˜ƒ", "â›„", "â˜„", "âœ¨¨", "âš½", "âš¾", "â›³", "â›¸", "â™ ", "â™¥", "â™¦", "â™£", "â™Ÿ", "â›‘‘", "â˜Ž", "âŒ¨¨", "âœ‰", "âœ", "âœ’’", "âœ‚", "â›", "âš’’", "âš””", "âš™", "âš–", "â›““", "âš—", "âš°", "âš±", "â™¿", "âš ", "â›””", "â˜¢", "â˜£", "â¬†", "â†—", "âž¡", "â†˜", "â¬‡", "â†™", "â¬…", "â†–", "â†•", "â†””", "â†©", "â†ª", "â¤´", "â¤µ", "âš›", "âœ¡", "â˜¸", "â˜¯", "âœ", "â˜¦", "â˜ª", "â˜®", "â™ˆ", "â™‰", "â™Š", "â™‹", "â™Œ", "â™", "â™Ž", "â™", "â™", "â™‘‘", "â™’’", "â™““", "â›Ž", "â–¶", "â©", "â­", "â¯", "â—€", "âª", "â®", "â«", "â¬", "â¸", "â¹", "âº", "â", "â™€", "â™‚", "âš§", "âœ–", "âž•", "âž–", "âž—", "â™¾", "â€¼", "â‰", "â““", "â””", "â•", "â—", "ã€°", "âš•", "â™»", "âšœ", "â­•", "âœ…", "â˜‘‘", "âœ””", "âŒ", "âŽ", "âž°", "âž¿", "ã€½", "âœ³", "âœ´", "â‡", "Â©", "Â®", "â„¢", "â„¹", "â““‚", "ãŠ—", "ãŠ™", "âš«", "âšª", "â¬›", "â¬œ", "â—¼", "â—»", "â—¾", "â—½", "â–ª", "â–«"] {
			if (Pos := InStr(string, keyword)) {
				MsgBox, 68, Live Enhancement Suite, % "Hey There! It seems you are trying to add a menu item`nthat has an Emoji symbol in it.`n`nBy default win32 does not support UTF-8 (worldwide language & emoji support) in UI elements. This can be enabled by changing a registry setting on your system.`n`nEven though it has been tested for decades and confirmed to be fine for most people, Microsoft still considers it to be an expirimental feature as it can mess up some ancient ANSI only software (think windows XP and prior)... So I still think it's good courtesy to ask people first.`n`nWould you like to enable Emoji support on your system?`nYou will get a prompt asking for permission.`n`nThis setting will be easily reversible later."
				IfMsgBox, Yes
				{	
					RegRead, ACP, HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Nls\CodePage, ACP
					RegRead, OEMCP, HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Nls\CodePage, OEMCP
					RegRead, MACCP, HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Nls\CodePage, MACCP
					
					if (ACP = 65001){
						return false
					}
					
					;Msgbox, % ACP . "`n" . OEMCP . "`n" . MACCP
					
					regdir := A_ScriptDir . "\disable UTF-8 (win32 emoji support).reg"
					FileDelete, %regdir%
					FileAppend, 
					(
Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Nls\CodePage]
"ACP"="%ACP%"
"OEMCP"="%OEMCP%"
"MACCP"="%MACCP%"
					), %regdir%
					regdir2 := A_ScriptDir . "\enable UTF-8 (win32 emoji support).reg"
					FileDelete, %regdir2%
					FileAppend, 
					(
Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Nls\CodePage]
"ACP"="65001"
"OEMCP"="65001"
"MACCP"="65001"
					), %regdir2%
					Run, %regdir2%
					global skipemojicheck := true
					sleep 3000
					winwaitclose, Registry Editor, &Yes
					sleep, 1500
					winwaitclose, Registry Editor, OK
					msgbox, 0, Live Enhancement Suite, % "UTF-8 Support applied!`nThe setting can be reversed by opening the ""disable UTF-8.reg"" file in the folder where the Live Enhancement Suite is installed.`n`nThis is:`n" . A_ScriptDir
				}
				IfMsgBox, No
				{
					global skipemojicheck := true
					msgbox, (to prevent this message from popping up in the future, please remove the emoji symbol from your menu config)
				}
			}
		}
	}
