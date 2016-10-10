; #################################################################
; ### UltraEdit

; #################
; # = Windows key
; ^ = <CTRL>
; ! = <ALT>
; + = <Shift>
; <^>! = <AltGr>
; #################

SetTitleMatchMode, RegEx
#IFWinActive, ahk_class 0000000140000000
	#s::Send ^s
	#n::Send ^n
#IfWinActive
		
GroupAdd, Editors, "UltraEdit 64-bit"
GroupAdd, Editors, ahk_class SunAwtFrame 
#IfWinActive ahk_group Editors
	#k::Send ^o
#IfWinActive

#IfWinActive, ahk_class Afx:0000000140000000:8:0000000000010007:0000000000000000:000000000001077D
 	#s::Send ^s
	#n::Send ^n
#IfWinActive

#IfWinActive, ahk_class Afx:0000000140000000:8:0000000000010007:0000000000000000:00000000000605B3
 	#s::Send ^s
	#n::Send ^n
#IfWinActive
