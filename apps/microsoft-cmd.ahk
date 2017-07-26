; #################################################################
; ### Microsoft - command prompt

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
	^v::Send {Click 100, 200, right}
	#v::Send {Click 100, 200, right}
#IfWinActive