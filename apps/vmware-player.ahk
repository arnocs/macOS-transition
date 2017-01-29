; #################################################################
; ### VMware MacVM

; #################
; # = Windows key
; ^ = <CTRL>
; ! = <ALT>
; + = <Shift>
; <^>! = <AltGr>
; #################

#IfWinActive, ahk_class VMUIFrame
; Set back to default commands
	Home::SendInput {home}
	END::SendInput {end}
#IfWinActive