; #################################################################
; ### Microsoft CMD

; #################
; # = Windows key
; ^ = <CTRL>
; ! = <ALT>
; + = <Shift>
; <^>! = <AltGr>
; #################
;

#IfWinActive, ahk_class ConsoleWindowClass
	^d::Send exit {enter}
	#d::Send exit {enter}
#IfWinActive