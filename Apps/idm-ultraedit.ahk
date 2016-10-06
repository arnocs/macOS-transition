; #################################################################
; ### UltraEdit

; #################
; # = Windows key
; ^ = <CTRL>
; ! = <ALT>
; + = <Shift>
; <^>! = <AltGr>
; #################

#IfWinActive, ahk_class Afx:0000000140000000:8:0000000000010007:0000000000000000:000000000001077D
 	#s::Send ^s
	#n::Send ^n
#IfWinActive

#IfWinActive, ahk_class Afx:0000000140000000:8:0000000000010007:0000000000000000:0000000000620BC3
 	#s::Send ^s
	#n::Send ^n
#IfWinActive