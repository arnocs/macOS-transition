; #################################################################
; ### Putty
#IfWinActive, ahk_class PuTTY
; Set back to default commands
	Home::SendInput {home}
	END::SendInput {end}
#IfWinActive